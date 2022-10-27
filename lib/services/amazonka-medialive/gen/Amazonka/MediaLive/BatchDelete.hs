{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.BatchDelete
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts delete of resources.
module Amazonka.MediaLive.BatchDelete
  ( -- * Creating a Request
    BatchDelete' (..),
    newBatchDelete',

    -- * Request Lenses
    batchDelete'_multiplexIds,
    batchDelete'_inputSecurityGroupIds,
    batchDelete'_channelIds,
    batchDelete'_inputIds,

    -- * Destructuring the Response
    BatchDeleteResponse (..),
    newBatchDeleteResponse,

    -- * Response Lenses
    batchDeleteResponse_failed,
    batchDeleteResponse_successful,
    batchDeleteResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to delete resources
--
-- /See:/ 'newBatchDelete'' smart constructor.
data BatchDelete' = BatchDelete''
  { -- | List of multiplex IDs
    multiplexIds :: Prelude.Maybe [Prelude.Text],
    -- | List of input security group IDs
    inputSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | List of channel IDs
    channelIds :: Prelude.Maybe [Prelude.Text],
    -- | List of input IDs
    inputIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDelete'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiplexIds', 'batchDelete'_multiplexIds' - List of multiplex IDs
--
-- 'inputSecurityGroupIds', 'batchDelete'_inputSecurityGroupIds' - List of input security group IDs
--
-- 'channelIds', 'batchDelete'_channelIds' - List of channel IDs
--
-- 'inputIds', 'batchDelete'_inputIds' - List of input IDs
newBatchDelete' ::
  BatchDelete'
newBatchDelete' =
  BatchDelete''
    { multiplexIds = Prelude.Nothing,
      inputSecurityGroupIds = Prelude.Nothing,
      channelIds = Prelude.Nothing,
      inputIds = Prelude.Nothing
    }

-- | List of multiplex IDs
batchDelete'_multiplexIds :: Lens.Lens' BatchDelete' (Prelude.Maybe [Prelude.Text])
batchDelete'_multiplexIds = Lens.lens (\BatchDelete'' {multiplexIds} -> multiplexIds) (\s@BatchDelete'' {} a -> s {multiplexIds = a} :: BatchDelete') Prelude.. Lens.mapping Lens.coerced

-- | List of input security group IDs
batchDelete'_inputSecurityGroupIds :: Lens.Lens' BatchDelete' (Prelude.Maybe [Prelude.Text])
batchDelete'_inputSecurityGroupIds = Lens.lens (\BatchDelete'' {inputSecurityGroupIds} -> inputSecurityGroupIds) (\s@BatchDelete'' {} a -> s {inputSecurityGroupIds = a} :: BatchDelete') Prelude.. Lens.mapping Lens.coerced

-- | List of channel IDs
batchDelete'_channelIds :: Lens.Lens' BatchDelete' (Prelude.Maybe [Prelude.Text])
batchDelete'_channelIds = Lens.lens (\BatchDelete'' {channelIds} -> channelIds) (\s@BatchDelete'' {} a -> s {channelIds = a} :: BatchDelete') Prelude.. Lens.mapping Lens.coerced

-- | List of input IDs
batchDelete'_inputIds :: Lens.Lens' BatchDelete' (Prelude.Maybe [Prelude.Text])
batchDelete'_inputIds = Lens.lens (\BatchDelete'' {inputIds} -> inputIds) (\s@BatchDelete'' {} a -> s {inputIds = a} :: BatchDelete') Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest BatchDelete' where
  type AWSResponse BatchDelete' = BatchDeleteResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteResponse'
            Prelude.<$> (x Core..?> "failed" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "successful" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchDelete' where
  hashWithSalt _salt BatchDelete'' {..} =
    _salt `Prelude.hashWithSalt` multiplexIds
      `Prelude.hashWithSalt` inputSecurityGroupIds
      `Prelude.hashWithSalt` channelIds
      `Prelude.hashWithSalt` inputIds

instance Prelude.NFData BatchDelete' where
  rnf BatchDelete'' {..} =
    Prelude.rnf multiplexIds
      `Prelude.seq` Prelude.rnf inputSecurityGroupIds
      `Prelude.seq` Prelude.rnf channelIds
      `Prelude.seq` Prelude.rnf inputIds

instance Core.ToHeaders BatchDelete' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDelete' where
  toJSON BatchDelete'' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("multiplexIds" Core..=) Prelude.<$> multiplexIds,
            ("inputSecurityGroupIds" Core..=)
              Prelude.<$> inputSecurityGroupIds,
            ("channelIds" Core..=) Prelude.<$> channelIds,
            ("inputIds" Core..=) Prelude.<$> inputIds
          ]
      )

instance Core.ToPath BatchDelete' where
  toPath = Prelude.const "/prod/batch/delete"

instance Core.ToQuery BatchDelete' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for BatchDeleteResponse
--
-- /See:/ 'newBatchDeleteResponse' smart constructor.
data BatchDeleteResponse = BatchDeleteResponse'
  { -- | List of failed operations
    failed :: Prelude.Maybe [BatchFailedResultModel],
    -- | List of successful operations
    successful :: Prelude.Maybe [BatchSuccessfulResultModel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failed', 'batchDeleteResponse_failed' - List of failed operations
--
-- 'successful', 'batchDeleteResponse_successful' - List of successful operations
--
-- 'httpStatus', 'batchDeleteResponse_httpStatus' - The response's http status code.
newBatchDeleteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDeleteResponse
newBatchDeleteResponse pHttpStatus_ =
  BatchDeleteResponse'
    { failed = Prelude.Nothing,
      successful = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of failed operations
batchDeleteResponse_failed :: Lens.Lens' BatchDeleteResponse (Prelude.Maybe [BatchFailedResultModel])
batchDeleteResponse_failed = Lens.lens (\BatchDeleteResponse' {failed} -> failed) (\s@BatchDeleteResponse' {} a -> s {failed = a} :: BatchDeleteResponse) Prelude.. Lens.mapping Lens.coerced

-- | List of successful operations
batchDeleteResponse_successful :: Lens.Lens' BatchDeleteResponse (Prelude.Maybe [BatchSuccessfulResultModel])
batchDeleteResponse_successful = Lens.lens (\BatchDeleteResponse' {successful} -> successful) (\s@BatchDeleteResponse' {} a -> s {successful = a} :: BatchDeleteResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDeleteResponse_httpStatus :: Lens.Lens' BatchDeleteResponse Prelude.Int
batchDeleteResponse_httpStatus = Lens.lens (\BatchDeleteResponse' {httpStatus} -> httpStatus) (\s@BatchDeleteResponse' {} a -> s {httpStatus = a} :: BatchDeleteResponse)

instance Prelude.NFData BatchDeleteResponse where
  rnf BatchDeleteResponse' {..} =
    Prelude.rnf failed
      `Prelude.seq` Prelude.rnf successful
      `Prelude.seq` Prelude.rnf httpStatus

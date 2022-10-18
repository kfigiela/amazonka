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
-- Module      : Amazonka.Glue.BatchDeleteConnection
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a list of connection definitions from the Data Catalog.
module Amazonka.Glue.BatchDeleteConnection
  ( -- * Creating a Request
    BatchDeleteConnection (..),
    newBatchDeleteConnection,

    -- * Request Lenses
    batchDeleteConnection_catalogId,
    batchDeleteConnection_connectionNameList,

    -- * Destructuring the Response
    BatchDeleteConnectionResponse (..),
    newBatchDeleteConnectionResponse,

    -- * Response Lenses
    batchDeleteConnectionResponse_succeeded,
    batchDeleteConnectionResponse_errors,
    batchDeleteConnectionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchDeleteConnection' smart constructor.
data BatchDeleteConnection = BatchDeleteConnection'
  { -- | The ID of the Data Catalog in which the connections reside. If none is
    -- provided, the Amazon Web Services account ID is used by default.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | A list of names of the connections to delete.
    connectionNameList :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'batchDeleteConnection_catalogId' - The ID of the Data Catalog in which the connections reside. If none is
-- provided, the Amazon Web Services account ID is used by default.
--
-- 'connectionNameList', 'batchDeleteConnection_connectionNameList' - A list of names of the connections to delete.
newBatchDeleteConnection ::
  BatchDeleteConnection
newBatchDeleteConnection =
  BatchDeleteConnection'
    { catalogId = Prelude.Nothing,
      connectionNameList = Prelude.mempty
    }

-- | The ID of the Data Catalog in which the connections reside. If none is
-- provided, the Amazon Web Services account ID is used by default.
batchDeleteConnection_catalogId :: Lens.Lens' BatchDeleteConnection (Prelude.Maybe Prelude.Text)
batchDeleteConnection_catalogId = Lens.lens (\BatchDeleteConnection' {catalogId} -> catalogId) (\s@BatchDeleteConnection' {} a -> s {catalogId = a} :: BatchDeleteConnection)

-- | A list of names of the connections to delete.
batchDeleteConnection_connectionNameList :: Lens.Lens' BatchDeleteConnection [Prelude.Text]
batchDeleteConnection_connectionNameList = Lens.lens (\BatchDeleteConnection' {connectionNameList} -> connectionNameList) (\s@BatchDeleteConnection' {} a -> s {connectionNameList = a} :: BatchDeleteConnection) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDeleteConnection where
  type
    AWSResponse BatchDeleteConnection =
      BatchDeleteConnectionResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteConnectionResponse'
            Prelude.<$> (x Core..?> "Succeeded" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService BatchDeleteConnection where
  service _proxy = defaultService

instance Prelude.Hashable BatchDeleteConnection where
  hashWithSalt _salt BatchDeleteConnection' {..} =
    _salt `Prelude.hashWithSalt` catalogId
      `Prelude.hashWithSalt` connectionNameList

instance Prelude.NFData BatchDeleteConnection where
  rnf BatchDeleteConnection' {..} =
    Prelude.rnf catalogId
      `Prelude.seq` Prelude.rnf connectionNameList

instance Core.ToHeaders BatchDeleteConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSGlue.BatchDeleteConnection" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDeleteConnection where
  toJSON BatchDeleteConnection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CatalogId" Core..=) Prelude.<$> catalogId,
            Prelude.Just
              ("ConnectionNameList" Core..= connectionNameList)
          ]
      )

instance Core.ToPath BatchDeleteConnection where
  toPath = Prelude.const "/"

instance Core.ToQuery BatchDeleteConnection where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDeleteConnectionResponse' smart constructor.
data BatchDeleteConnectionResponse = BatchDeleteConnectionResponse'
  { -- | A list of names of the connection definitions that were successfully
    -- deleted.
    succeeded :: Prelude.Maybe [Prelude.Text],
    -- | A map of the names of connections that were not successfully deleted to
    -- error details.
    errors :: Prelude.Maybe (Prelude.HashMap Prelude.Text ErrorDetail),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'succeeded', 'batchDeleteConnectionResponse_succeeded' - A list of names of the connection definitions that were successfully
-- deleted.
--
-- 'errors', 'batchDeleteConnectionResponse_errors' - A map of the names of connections that were not successfully deleted to
-- error details.
--
-- 'httpStatus', 'batchDeleteConnectionResponse_httpStatus' - The response's http status code.
newBatchDeleteConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDeleteConnectionResponse
newBatchDeleteConnectionResponse pHttpStatus_ =
  BatchDeleteConnectionResponse'
    { succeeded =
        Prelude.Nothing,
      errors = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of names of the connection definitions that were successfully
-- deleted.
batchDeleteConnectionResponse_succeeded :: Lens.Lens' BatchDeleteConnectionResponse (Prelude.Maybe [Prelude.Text])
batchDeleteConnectionResponse_succeeded = Lens.lens (\BatchDeleteConnectionResponse' {succeeded} -> succeeded) (\s@BatchDeleteConnectionResponse' {} a -> s {succeeded = a} :: BatchDeleteConnectionResponse) Prelude.. Lens.mapping Lens.coerced

-- | A map of the names of connections that were not successfully deleted to
-- error details.
batchDeleteConnectionResponse_errors :: Lens.Lens' BatchDeleteConnectionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text ErrorDetail))
batchDeleteConnectionResponse_errors = Lens.lens (\BatchDeleteConnectionResponse' {errors} -> errors) (\s@BatchDeleteConnectionResponse' {} a -> s {errors = a} :: BatchDeleteConnectionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDeleteConnectionResponse_httpStatus :: Lens.Lens' BatchDeleteConnectionResponse Prelude.Int
batchDeleteConnectionResponse_httpStatus = Lens.lens (\BatchDeleteConnectionResponse' {httpStatus} -> httpStatus) (\s@BatchDeleteConnectionResponse' {} a -> s {httpStatus = a} :: BatchDeleteConnectionResponse)

instance Prelude.NFData BatchDeleteConnectionResponse where
  rnf BatchDeleteConnectionResponse' {..} =
    Prelude.rnf succeeded
      `Prelude.seq` Prelude.rnf errors
      `Prelude.seq` Prelude.rnf httpStatus

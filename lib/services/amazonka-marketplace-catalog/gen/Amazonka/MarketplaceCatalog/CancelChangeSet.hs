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
-- Module      : Amazonka.MarketplaceCatalog.CancelChangeSet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to cancel an open change request. Must be sent before the status of
-- the request changes to @APPLYING@, the final stage of completing your
-- change request. You can describe a change during the 60-day request
-- history retention period for API calls.
module Amazonka.MarketplaceCatalog.CancelChangeSet
  ( -- * Creating a Request
    CancelChangeSet (..),
    newCancelChangeSet,

    -- * Request Lenses
    cancelChangeSet_catalog,
    cancelChangeSet_changeSetId,

    -- * Destructuring the Response
    CancelChangeSetResponse (..),
    newCancelChangeSetResponse,

    -- * Response Lenses
    cancelChangeSetResponse_changeSetId,
    cancelChangeSetResponse_changeSetArn,
    cancelChangeSetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MarketplaceCatalog.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCancelChangeSet' smart constructor.
data CancelChangeSet = CancelChangeSet'
  { -- | Required. The catalog related to the request. Fixed value:
    -- @AWSMarketplace@.
    catalog :: Prelude.Text,
    -- | Required. The unique identifier of the @StartChangeSet@ request that you
    -- want to cancel.
    changeSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelChangeSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalog', 'cancelChangeSet_catalog' - Required. The catalog related to the request. Fixed value:
-- @AWSMarketplace@.
--
-- 'changeSetId', 'cancelChangeSet_changeSetId' - Required. The unique identifier of the @StartChangeSet@ request that you
-- want to cancel.
newCancelChangeSet ::
  -- | 'catalog'
  Prelude.Text ->
  -- | 'changeSetId'
  Prelude.Text ->
  CancelChangeSet
newCancelChangeSet pCatalog_ pChangeSetId_ =
  CancelChangeSet'
    { catalog = pCatalog_,
      changeSetId = pChangeSetId_
    }

-- | Required. The catalog related to the request. Fixed value:
-- @AWSMarketplace@.
cancelChangeSet_catalog :: Lens.Lens' CancelChangeSet Prelude.Text
cancelChangeSet_catalog = Lens.lens (\CancelChangeSet' {catalog} -> catalog) (\s@CancelChangeSet' {} a -> s {catalog = a} :: CancelChangeSet)

-- | Required. The unique identifier of the @StartChangeSet@ request that you
-- want to cancel.
cancelChangeSet_changeSetId :: Lens.Lens' CancelChangeSet Prelude.Text
cancelChangeSet_changeSetId = Lens.lens (\CancelChangeSet' {changeSetId} -> changeSetId) (\s@CancelChangeSet' {} a -> s {changeSetId = a} :: CancelChangeSet)

instance Core.AWSRequest CancelChangeSet where
  type
    AWSResponse CancelChangeSet =
      CancelChangeSetResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelChangeSetResponse'
            Prelude.<$> (x Core..?> "ChangeSetId")
            Prelude.<*> (x Core..?> "ChangeSetArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelChangeSet where
  hashWithSalt _salt CancelChangeSet' {..} =
    _salt `Prelude.hashWithSalt` catalog
      `Prelude.hashWithSalt` changeSetId

instance Prelude.NFData CancelChangeSet where
  rnf CancelChangeSet' {..} =
    Prelude.rnf catalog
      `Prelude.seq` Prelude.rnf changeSetId

instance Core.ToHeaders CancelChangeSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelChangeSet where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath CancelChangeSet where
  toPath = Prelude.const "/CancelChangeSet"

instance Core.ToQuery CancelChangeSet where
  toQuery CancelChangeSet' {..} =
    Prelude.mconcat
      [ "catalog" Core.=: catalog,
        "changeSetId" Core.=: changeSetId
      ]

-- | /See:/ 'newCancelChangeSetResponse' smart constructor.
data CancelChangeSetResponse = CancelChangeSetResponse'
  { -- | The unique identifier for the change set referenced in this request.
    changeSetId :: Prelude.Maybe Prelude.Text,
    -- | The ARN associated with the change set referenced in this request.
    changeSetArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelChangeSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'changeSetId', 'cancelChangeSetResponse_changeSetId' - The unique identifier for the change set referenced in this request.
--
-- 'changeSetArn', 'cancelChangeSetResponse_changeSetArn' - The ARN associated with the change set referenced in this request.
--
-- 'httpStatus', 'cancelChangeSetResponse_httpStatus' - The response's http status code.
newCancelChangeSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelChangeSetResponse
newCancelChangeSetResponse pHttpStatus_ =
  CancelChangeSetResponse'
    { changeSetId =
        Prelude.Nothing,
      changeSetArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier for the change set referenced in this request.
cancelChangeSetResponse_changeSetId :: Lens.Lens' CancelChangeSetResponse (Prelude.Maybe Prelude.Text)
cancelChangeSetResponse_changeSetId = Lens.lens (\CancelChangeSetResponse' {changeSetId} -> changeSetId) (\s@CancelChangeSetResponse' {} a -> s {changeSetId = a} :: CancelChangeSetResponse)

-- | The ARN associated with the change set referenced in this request.
cancelChangeSetResponse_changeSetArn :: Lens.Lens' CancelChangeSetResponse (Prelude.Maybe Prelude.Text)
cancelChangeSetResponse_changeSetArn = Lens.lens (\CancelChangeSetResponse' {changeSetArn} -> changeSetArn) (\s@CancelChangeSetResponse' {} a -> s {changeSetArn = a} :: CancelChangeSetResponse)

-- | The response's http status code.
cancelChangeSetResponse_httpStatus :: Lens.Lens' CancelChangeSetResponse Prelude.Int
cancelChangeSetResponse_httpStatus = Lens.lens (\CancelChangeSetResponse' {httpStatus} -> httpStatus) (\s@CancelChangeSetResponse' {} a -> s {httpStatus = a} :: CancelChangeSetResponse)

instance Prelude.NFData CancelChangeSetResponse where
  rnf CancelChangeSetResponse' {..} =
    Prelude.rnf changeSetId
      `Prelude.seq` Prelude.rnf changeSetArn
      `Prelude.seq` Prelude.rnf httpStatus

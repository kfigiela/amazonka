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
-- Module      : Amazonka.DirectoryService.UpdateTrust
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the trust that has been set up between your Managed Microsoft AD
-- directory and an self-managed Active Directory.
module Amazonka.DirectoryService.UpdateTrust
  ( -- * Creating a Request
    UpdateTrust (..),
    newUpdateTrust,

    -- * Request Lenses
    updateTrust_selectiveAuth,
    updateTrust_trustId,

    -- * Destructuring the Response
    UpdateTrustResponse (..),
    newUpdateTrustResponse,

    -- * Response Lenses
    updateTrustResponse_trustId,
    updateTrustResponse_requestId,
    updateTrustResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectoryService.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateTrust' smart constructor.
data UpdateTrust = UpdateTrust'
  { -- | Updates selective authentication for the trust.
    selectiveAuth :: Prelude.Maybe SelectiveAuth,
    -- | Identifier of the trust relationship.
    trustId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrust' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'selectiveAuth', 'updateTrust_selectiveAuth' - Updates selective authentication for the trust.
--
-- 'trustId', 'updateTrust_trustId' - Identifier of the trust relationship.
newUpdateTrust ::
  -- | 'trustId'
  Prelude.Text ->
  UpdateTrust
newUpdateTrust pTrustId_ =
  UpdateTrust'
    { selectiveAuth = Prelude.Nothing,
      trustId = pTrustId_
    }

-- | Updates selective authentication for the trust.
updateTrust_selectiveAuth :: Lens.Lens' UpdateTrust (Prelude.Maybe SelectiveAuth)
updateTrust_selectiveAuth = Lens.lens (\UpdateTrust' {selectiveAuth} -> selectiveAuth) (\s@UpdateTrust' {} a -> s {selectiveAuth = a} :: UpdateTrust)

-- | Identifier of the trust relationship.
updateTrust_trustId :: Lens.Lens' UpdateTrust Prelude.Text
updateTrust_trustId = Lens.lens (\UpdateTrust' {trustId} -> trustId) (\s@UpdateTrust' {} a -> s {trustId = a} :: UpdateTrust)

instance Core.AWSRequest UpdateTrust where
  type AWSResponse UpdateTrust = UpdateTrustResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrustResponse'
            Prelude.<$> (x Core..?> "TrustId")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTrust where
  hashWithSalt _salt UpdateTrust' {..} =
    _salt `Prelude.hashWithSalt` selectiveAuth
      `Prelude.hashWithSalt` trustId

instance Prelude.NFData UpdateTrust where
  rnf UpdateTrust' {..} =
    Prelude.rnf selectiveAuth
      `Prelude.seq` Prelude.rnf trustId

instance Core.ToHeaders UpdateTrust where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.UpdateTrust" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTrust where
  toJSON UpdateTrust' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SelectiveAuth" Core..=) Prelude.<$> selectiveAuth,
            Prelude.Just ("TrustId" Core..= trustId)
          ]
      )

instance Core.ToPath UpdateTrust where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateTrust where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTrustResponse' smart constructor.
data UpdateTrustResponse = UpdateTrustResponse'
  { -- | Identifier of the trust relationship.
    trustId :: Prelude.Maybe Prelude.Text,
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrustResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trustId', 'updateTrustResponse_trustId' - Identifier of the trust relationship.
--
-- 'requestId', 'updateTrustResponse_requestId' - Undocumented member.
--
-- 'httpStatus', 'updateTrustResponse_httpStatus' - The response's http status code.
newUpdateTrustResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTrustResponse
newUpdateTrustResponse pHttpStatus_ =
  UpdateTrustResponse'
    { trustId = Prelude.Nothing,
      requestId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Identifier of the trust relationship.
updateTrustResponse_trustId :: Lens.Lens' UpdateTrustResponse (Prelude.Maybe Prelude.Text)
updateTrustResponse_trustId = Lens.lens (\UpdateTrustResponse' {trustId} -> trustId) (\s@UpdateTrustResponse' {} a -> s {trustId = a} :: UpdateTrustResponse)

-- | Undocumented member.
updateTrustResponse_requestId :: Lens.Lens' UpdateTrustResponse (Prelude.Maybe Prelude.Text)
updateTrustResponse_requestId = Lens.lens (\UpdateTrustResponse' {requestId} -> requestId) (\s@UpdateTrustResponse' {} a -> s {requestId = a} :: UpdateTrustResponse)

-- | The response's http status code.
updateTrustResponse_httpStatus :: Lens.Lens' UpdateTrustResponse Prelude.Int
updateTrustResponse_httpStatus = Lens.lens (\UpdateTrustResponse' {httpStatus} -> httpStatus) (\s@UpdateTrustResponse' {} a -> s {httpStatus = a} :: UpdateTrustResponse)

instance Prelude.NFData UpdateTrustResponse where
  rnf UpdateTrustResponse' {..} =
    Prelude.rnf trustId
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf httpStatus

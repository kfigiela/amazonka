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
-- Module      : Amazonka.ServiceQuotas.GetRequestedServiceQuotaChange
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified quota increase request.
module Amazonka.ServiceQuotas.GetRequestedServiceQuotaChange
  ( -- * Creating a Request
    GetRequestedServiceQuotaChange (..),
    newGetRequestedServiceQuotaChange,

    -- * Request Lenses
    getRequestedServiceQuotaChange_requestId,

    -- * Destructuring the Response
    GetRequestedServiceQuotaChangeResponse (..),
    newGetRequestedServiceQuotaChangeResponse,

    -- * Response Lenses
    getRequestedServiceQuotaChangeResponse_requestedQuota,
    getRequestedServiceQuotaChangeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceQuotas.Types

-- | /See:/ 'newGetRequestedServiceQuotaChange' smart constructor.
data GetRequestedServiceQuotaChange = GetRequestedServiceQuotaChange'
  { -- | The ID of the quota increase request.
    requestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRequestedServiceQuotaChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'getRequestedServiceQuotaChange_requestId' - The ID of the quota increase request.
newGetRequestedServiceQuotaChange ::
  -- | 'requestId'
  Prelude.Text ->
  GetRequestedServiceQuotaChange
newGetRequestedServiceQuotaChange pRequestId_ =
  GetRequestedServiceQuotaChange'
    { requestId =
        pRequestId_
    }

-- | The ID of the quota increase request.
getRequestedServiceQuotaChange_requestId :: Lens.Lens' GetRequestedServiceQuotaChange Prelude.Text
getRequestedServiceQuotaChange_requestId = Lens.lens (\GetRequestedServiceQuotaChange' {requestId} -> requestId) (\s@GetRequestedServiceQuotaChange' {} a -> s {requestId = a} :: GetRequestedServiceQuotaChange)

instance
  Core.AWSRequest
    GetRequestedServiceQuotaChange
  where
  type
    AWSResponse GetRequestedServiceQuotaChange =
      GetRequestedServiceQuotaChangeResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRequestedServiceQuotaChangeResponse'
            Prelude.<$> (x Core..?> "RequestedQuota")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetRequestedServiceQuotaChange
  where
  hashWithSalt
    _salt
    GetRequestedServiceQuotaChange' {..} =
      _salt `Prelude.hashWithSalt` requestId

instance
  Prelude.NFData
    GetRequestedServiceQuotaChange
  where
  rnf GetRequestedServiceQuotaChange' {..} =
    Prelude.rnf requestId

instance
  Core.ToHeaders
    GetRequestedServiceQuotaChange
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.GetRequestedServiceQuotaChange" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRequestedServiceQuotaChange where
  toJSON GetRequestedServiceQuotaChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("RequestId" Core..= requestId)]
      )

instance Core.ToPath GetRequestedServiceQuotaChange where
  toPath = Prelude.const "/"

instance Core.ToQuery GetRequestedServiceQuotaChange where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRequestedServiceQuotaChangeResponse' smart constructor.
data GetRequestedServiceQuotaChangeResponse = GetRequestedServiceQuotaChangeResponse'
  { -- | Information about the quota increase request.
    requestedQuota :: Prelude.Maybe RequestedServiceQuotaChange,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRequestedServiceQuotaChangeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestedQuota', 'getRequestedServiceQuotaChangeResponse_requestedQuota' - Information about the quota increase request.
--
-- 'httpStatus', 'getRequestedServiceQuotaChangeResponse_httpStatus' - The response's http status code.
newGetRequestedServiceQuotaChangeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRequestedServiceQuotaChangeResponse
newGetRequestedServiceQuotaChangeResponse
  pHttpStatus_ =
    GetRequestedServiceQuotaChangeResponse'
      { requestedQuota =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the quota increase request.
getRequestedServiceQuotaChangeResponse_requestedQuota :: Lens.Lens' GetRequestedServiceQuotaChangeResponse (Prelude.Maybe RequestedServiceQuotaChange)
getRequestedServiceQuotaChangeResponse_requestedQuota = Lens.lens (\GetRequestedServiceQuotaChangeResponse' {requestedQuota} -> requestedQuota) (\s@GetRequestedServiceQuotaChangeResponse' {} a -> s {requestedQuota = a} :: GetRequestedServiceQuotaChangeResponse)

-- | The response's http status code.
getRequestedServiceQuotaChangeResponse_httpStatus :: Lens.Lens' GetRequestedServiceQuotaChangeResponse Prelude.Int
getRequestedServiceQuotaChangeResponse_httpStatus = Lens.lens (\GetRequestedServiceQuotaChangeResponse' {httpStatus} -> httpStatus) (\s@GetRequestedServiceQuotaChangeResponse' {} a -> s {httpStatus = a} :: GetRequestedServiceQuotaChangeResponse)

instance
  Prelude.NFData
    GetRequestedServiceQuotaChangeResponse
  where
  rnf GetRequestedServiceQuotaChangeResponse' {..} =
    Prelude.rnf requestedQuota
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Transfer.UpdateCertificate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the active and inactive dates for a certificate.
module Amazonka.Transfer.UpdateCertificate
  ( -- * Creating a Request
    UpdateCertificate (..),
    newUpdateCertificate,

    -- * Request Lenses
    updateCertificate_description,
    updateCertificate_activeDate,
    updateCertificate_inactiveDate,
    updateCertificate_certificateId,

    -- * Destructuring the Response
    UpdateCertificateResponse (..),
    newUpdateCertificateResponse,

    -- * Response Lenses
    updateCertificateResponse_httpStatus,
    updateCertificateResponse_certificateId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transfer.Types

-- | /See:/ 'newUpdateCertificate' smart constructor.
data UpdateCertificate = UpdateCertificate'
  { -- | A short description to help identify the certificate.
    description :: Prelude.Maybe Prelude.Text,
    -- | An optional date that specifies when the certificate becomes active.
    activeDate :: Prelude.Maybe Core.POSIX,
    -- | An optional date that specifies when the certificate becomes inactive.
    inactiveDate :: Prelude.Maybe Core.POSIX,
    -- | The identifier of the certificate object that you are updating.
    certificateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateCertificate_description' - A short description to help identify the certificate.
--
-- 'activeDate', 'updateCertificate_activeDate' - An optional date that specifies when the certificate becomes active.
--
-- 'inactiveDate', 'updateCertificate_inactiveDate' - An optional date that specifies when the certificate becomes inactive.
--
-- 'certificateId', 'updateCertificate_certificateId' - The identifier of the certificate object that you are updating.
newUpdateCertificate ::
  -- | 'certificateId'
  Prelude.Text ->
  UpdateCertificate
newUpdateCertificate pCertificateId_ =
  UpdateCertificate'
    { description = Prelude.Nothing,
      activeDate = Prelude.Nothing,
      inactiveDate = Prelude.Nothing,
      certificateId = pCertificateId_
    }

-- | A short description to help identify the certificate.
updateCertificate_description :: Lens.Lens' UpdateCertificate (Prelude.Maybe Prelude.Text)
updateCertificate_description = Lens.lens (\UpdateCertificate' {description} -> description) (\s@UpdateCertificate' {} a -> s {description = a} :: UpdateCertificate)

-- | An optional date that specifies when the certificate becomes active.
updateCertificate_activeDate :: Lens.Lens' UpdateCertificate (Prelude.Maybe Prelude.UTCTime)
updateCertificate_activeDate = Lens.lens (\UpdateCertificate' {activeDate} -> activeDate) (\s@UpdateCertificate' {} a -> s {activeDate = a} :: UpdateCertificate) Prelude.. Lens.mapping Core._Time

-- | An optional date that specifies when the certificate becomes inactive.
updateCertificate_inactiveDate :: Lens.Lens' UpdateCertificate (Prelude.Maybe Prelude.UTCTime)
updateCertificate_inactiveDate = Lens.lens (\UpdateCertificate' {inactiveDate} -> inactiveDate) (\s@UpdateCertificate' {} a -> s {inactiveDate = a} :: UpdateCertificate) Prelude.. Lens.mapping Core._Time

-- | The identifier of the certificate object that you are updating.
updateCertificate_certificateId :: Lens.Lens' UpdateCertificate Prelude.Text
updateCertificate_certificateId = Lens.lens (\UpdateCertificate' {certificateId} -> certificateId) (\s@UpdateCertificate' {} a -> s {certificateId = a} :: UpdateCertificate)

instance Core.AWSRequest UpdateCertificate where
  type
    AWSResponse UpdateCertificate =
      UpdateCertificateResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateCertificateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "CertificateId")
      )

instance Prelude.Hashable UpdateCertificate where
  hashWithSalt _salt UpdateCertificate' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` activeDate
      `Prelude.hashWithSalt` inactiveDate
      `Prelude.hashWithSalt` certificateId

instance Prelude.NFData UpdateCertificate where
  rnf UpdateCertificate' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf activeDate
      `Prelude.seq` Prelude.rnf inactiveDate
      `Prelude.seq` Prelude.rnf certificateId

instance Core.ToHeaders UpdateCertificate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.UpdateCertificate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCertificate where
  toJSON UpdateCertificate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            ("ActiveDate" Core..=) Prelude.<$> activeDate,
            ("InactiveDate" Core..=) Prelude.<$> inactiveDate,
            Prelude.Just
              ("CertificateId" Core..= certificateId)
          ]
      )

instance Core.ToPath UpdateCertificate where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateCertificate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateCertificateResponse' smart constructor.
data UpdateCertificateResponse = UpdateCertificateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Returns the identifier of the certificate object that you are updating.
    certificateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateCertificateResponse_httpStatus' - The response's http status code.
--
-- 'certificateId', 'updateCertificateResponse_certificateId' - Returns the identifier of the certificate object that you are updating.
newUpdateCertificateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'certificateId'
  Prelude.Text ->
  UpdateCertificateResponse
newUpdateCertificateResponse
  pHttpStatus_
  pCertificateId_ =
    UpdateCertificateResponse'
      { httpStatus =
          pHttpStatus_,
        certificateId = pCertificateId_
      }

-- | The response's http status code.
updateCertificateResponse_httpStatus :: Lens.Lens' UpdateCertificateResponse Prelude.Int
updateCertificateResponse_httpStatus = Lens.lens (\UpdateCertificateResponse' {httpStatus} -> httpStatus) (\s@UpdateCertificateResponse' {} a -> s {httpStatus = a} :: UpdateCertificateResponse)

-- | Returns the identifier of the certificate object that you are updating.
updateCertificateResponse_certificateId :: Lens.Lens' UpdateCertificateResponse Prelude.Text
updateCertificateResponse_certificateId = Lens.lens (\UpdateCertificateResponse' {certificateId} -> certificateId) (\s@UpdateCertificateResponse' {} a -> s {certificateId = a} :: UpdateCertificateResponse)

instance Prelude.NFData UpdateCertificateResponse where
  rnf UpdateCertificateResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf certificateId

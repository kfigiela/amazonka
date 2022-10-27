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
-- Module      : Amazonka.DirectoryService.RegisterCertificate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a certificate for a secure LDAP or client certificate
-- authentication.
module Amazonka.DirectoryService.RegisterCertificate
  ( -- * Creating a Request
    RegisterCertificate (..),
    newRegisterCertificate,

    -- * Request Lenses
    registerCertificate_type,
    registerCertificate_clientCertAuthSettings,
    registerCertificate_directoryId,
    registerCertificate_certificateData,

    -- * Destructuring the Response
    RegisterCertificateResponse (..),
    newRegisterCertificateResponse,

    -- * Response Lenses
    registerCertificateResponse_certificateId,
    registerCertificateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectoryService.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRegisterCertificate' smart constructor.
data RegisterCertificate = RegisterCertificate'
  { -- | The function that the registered certificate performs. Valid values
    -- include @ClientLDAPS@ or @ClientCertAuth@. The default value is
    -- @ClientLDAPS@.
    type' :: Prelude.Maybe CertificateType,
    -- | A @ClientCertAuthSettings@ object that contains client certificate
    -- authentication settings.
    clientCertAuthSettings :: Prelude.Maybe ClientCertAuthSettings,
    -- | The identifier of the directory.
    directoryId :: Prelude.Text,
    -- | The certificate PEM string that needs to be registered.
    certificateData :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'registerCertificate_type' - The function that the registered certificate performs. Valid values
-- include @ClientLDAPS@ or @ClientCertAuth@. The default value is
-- @ClientLDAPS@.
--
-- 'clientCertAuthSettings', 'registerCertificate_clientCertAuthSettings' - A @ClientCertAuthSettings@ object that contains client certificate
-- authentication settings.
--
-- 'directoryId', 'registerCertificate_directoryId' - The identifier of the directory.
--
-- 'certificateData', 'registerCertificate_certificateData' - The certificate PEM string that needs to be registered.
newRegisterCertificate ::
  -- | 'directoryId'
  Prelude.Text ->
  -- | 'certificateData'
  Prelude.Text ->
  RegisterCertificate
newRegisterCertificate
  pDirectoryId_
  pCertificateData_ =
    RegisterCertificate'
      { type' = Prelude.Nothing,
        clientCertAuthSettings = Prelude.Nothing,
        directoryId = pDirectoryId_,
        certificateData = pCertificateData_
      }

-- | The function that the registered certificate performs. Valid values
-- include @ClientLDAPS@ or @ClientCertAuth@. The default value is
-- @ClientLDAPS@.
registerCertificate_type :: Lens.Lens' RegisterCertificate (Prelude.Maybe CertificateType)
registerCertificate_type = Lens.lens (\RegisterCertificate' {type'} -> type') (\s@RegisterCertificate' {} a -> s {type' = a} :: RegisterCertificate)

-- | A @ClientCertAuthSettings@ object that contains client certificate
-- authentication settings.
registerCertificate_clientCertAuthSettings :: Lens.Lens' RegisterCertificate (Prelude.Maybe ClientCertAuthSettings)
registerCertificate_clientCertAuthSettings = Lens.lens (\RegisterCertificate' {clientCertAuthSettings} -> clientCertAuthSettings) (\s@RegisterCertificate' {} a -> s {clientCertAuthSettings = a} :: RegisterCertificate)

-- | The identifier of the directory.
registerCertificate_directoryId :: Lens.Lens' RegisterCertificate Prelude.Text
registerCertificate_directoryId = Lens.lens (\RegisterCertificate' {directoryId} -> directoryId) (\s@RegisterCertificate' {} a -> s {directoryId = a} :: RegisterCertificate)

-- | The certificate PEM string that needs to be registered.
registerCertificate_certificateData :: Lens.Lens' RegisterCertificate Prelude.Text
registerCertificate_certificateData = Lens.lens (\RegisterCertificate' {certificateData} -> certificateData) (\s@RegisterCertificate' {} a -> s {certificateData = a} :: RegisterCertificate)

instance Core.AWSRequest RegisterCertificate where
  type
    AWSResponse RegisterCertificate =
      RegisterCertificateResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterCertificateResponse'
            Prelude.<$> (x Core..?> "CertificateId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RegisterCertificate where
  hashWithSalt _salt RegisterCertificate' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` clientCertAuthSettings
      `Prelude.hashWithSalt` directoryId
      `Prelude.hashWithSalt` certificateData

instance Prelude.NFData RegisterCertificate where
  rnf RegisterCertificate' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf clientCertAuthSettings
      `Prelude.seq` Prelude.rnf directoryId
      `Prelude.seq` Prelude.rnf certificateData

instance Core.ToHeaders RegisterCertificate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.RegisterCertificate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RegisterCertificate where
  toJSON RegisterCertificate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("ClientCertAuthSettings" Core..=)
              Prelude.<$> clientCertAuthSettings,
            Prelude.Just ("DirectoryId" Core..= directoryId),
            Prelude.Just
              ("CertificateData" Core..= certificateData)
          ]
      )

instance Core.ToPath RegisterCertificate where
  toPath = Prelude.const "/"

instance Core.ToQuery RegisterCertificate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRegisterCertificateResponse' smart constructor.
data RegisterCertificateResponse = RegisterCertificateResponse'
  { -- | The identifier of the certificate.
    certificateId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateId', 'registerCertificateResponse_certificateId' - The identifier of the certificate.
--
-- 'httpStatus', 'registerCertificateResponse_httpStatus' - The response's http status code.
newRegisterCertificateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RegisterCertificateResponse
newRegisterCertificateResponse pHttpStatus_ =
  RegisterCertificateResponse'
    { certificateId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier of the certificate.
registerCertificateResponse_certificateId :: Lens.Lens' RegisterCertificateResponse (Prelude.Maybe Prelude.Text)
registerCertificateResponse_certificateId = Lens.lens (\RegisterCertificateResponse' {certificateId} -> certificateId) (\s@RegisterCertificateResponse' {} a -> s {certificateId = a} :: RegisterCertificateResponse)

-- | The response's http status code.
registerCertificateResponse_httpStatus :: Lens.Lens' RegisterCertificateResponse Prelude.Int
registerCertificateResponse_httpStatus = Lens.lens (\RegisterCertificateResponse' {httpStatus} -> httpStatus) (\s@RegisterCertificateResponse' {} a -> s {httpStatus = a} :: RegisterCertificateResponse)

instance Prelude.NFData RegisterCertificateResponse where
  rnf RegisterCertificateResponse' {..} =
    Prelude.rnf certificateId
      `Prelude.seq` Prelude.rnf httpStatus

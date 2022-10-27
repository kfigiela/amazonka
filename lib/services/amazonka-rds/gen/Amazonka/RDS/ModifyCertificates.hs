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
-- Module      : Amazonka.RDS.ModifyCertificates
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Override the system-default Secure Sockets Layer\/Transport Layer
-- Security (SSL\/TLS) certificate for Amazon RDS for new DB instances, or
-- remove the override.
--
-- By using this operation, you can specify an RDS-approved SSL\/TLS
-- certificate for new DB instances that is different from the default
-- certificate provided by RDS. You can also use this operation to remove
-- the override, so that new DB instances use the default certificate
-- provided by RDS.
--
-- You might need to override the default certificate in the following
-- situations:
--
-- -   You already migrated your applications to support the latest
--     certificate authority (CA) certificate, but the new CA certificate
--     is not yet the RDS default CA certificate for the specified Amazon
--     Web Services Region.
--
-- -   RDS has already moved to a new default CA certificate for the
--     specified Amazon Web Services Region, but you are still in the
--     process of supporting the new CA certificate. In this case, you
--     temporarily need additional time to finish your application changes.
--
-- For more information about rotating your SSL\/TLS certificate for RDS DB
-- engines, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html Rotating Your SSL\/TLS Certificate>
-- in the /Amazon RDS User Guide/.
--
-- For more information about rotating your SSL\/TLS certificate for Aurora
-- DB engines, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html Rotating Your SSL\/TLS Certificate>
-- in the /Amazon Aurora User Guide/.
module Amazonka.RDS.ModifyCertificates
  ( -- * Creating a Request
    ModifyCertificates (..),
    newModifyCertificates,

    -- * Request Lenses
    modifyCertificates_removeCustomerOverride,
    modifyCertificates_certificateIdentifier,

    -- * Destructuring the Response
    ModifyCertificatesResponse (..),
    newModifyCertificatesResponse,

    -- * Response Lenses
    modifyCertificatesResponse_certificate,
    modifyCertificatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newModifyCertificates' smart constructor.
data ModifyCertificates = ModifyCertificates'
  { -- | A value that indicates whether to remove the override for the default
    -- certificate. If the override is removed, the default certificate is the
    -- system default.
    removeCustomerOverride :: Prelude.Maybe Prelude.Bool,
    -- | The new default certificate identifier to override the current one with.
    --
    -- To determine the valid values, use the @describe-certificates@ CLI
    -- command or the @DescribeCertificates@ API operation.
    certificateIdentifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyCertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'removeCustomerOverride', 'modifyCertificates_removeCustomerOverride' - A value that indicates whether to remove the override for the default
-- certificate. If the override is removed, the default certificate is the
-- system default.
--
-- 'certificateIdentifier', 'modifyCertificates_certificateIdentifier' - The new default certificate identifier to override the current one with.
--
-- To determine the valid values, use the @describe-certificates@ CLI
-- command or the @DescribeCertificates@ API operation.
newModifyCertificates ::
  ModifyCertificates
newModifyCertificates =
  ModifyCertificates'
    { removeCustomerOverride =
        Prelude.Nothing,
      certificateIdentifier = Prelude.Nothing
    }

-- | A value that indicates whether to remove the override for the default
-- certificate. If the override is removed, the default certificate is the
-- system default.
modifyCertificates_removeCustomerOverride :: Lens.Lens' ModifyCertificates (Prelude.Maybe Prelude.Bool)
modifyCertificates_removeCustomerOverride = Lens.lens (\ModifyCertificates' {removeCustomerOverride} -> removeCustomerOverride) (\s@ModifyCertificates' {} a -> s {removeCustomerOverride = a} :: ModifyCertificates)

-- | The new default certificate identifier to override the current one with.
--
-- To determine the valid values, use the @describe-certificates@ CLI
-- command or the @DescribeCertificates@ API operation.
modifyCertificates_certificateIdentifier :: Lens.Lens' ModifyCertificates (Prelude.Maybe Prelude.Text)
modifyCertificates_certificateIdentifier = Lens.lens (\ModifyCertificates' {certificateIdentifier} -> certificateIdentifier) (\s@ModifyCertificates' {} a -> s {certificateIdentifier = a} :: ModifyCertificates)

instance Core.AWSRequest ModifyCertificates where
  type
    AWSResponse ModifyCertificates =
      ModifyCertificatesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ModifyCertificatesResult"
      ( \s h x ->
          ModifyCertificatesResponse'
            Prelude.<$> (x Core..@? "Certificate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyCertificates where
  hashWithSalt _salt ModifyCertificates' {..} =
    _salt `Prelude.hashWithSalt` removeCustomerOverride
      `Prelude.hashWithSalt` certificateIdentifier

instance Prelude.NFData ModifyCertificates where
  rnf ModifyCertificates' {..} =
    Prelude.rnf removeCustomerOverride
      `Prelude.seq` Prelude.rnf certificateIdentifier

instance Core.ToHeaders ModifyCertificates where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyCertificates where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyCertificates where
  toQuery ModifyCertificates' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyCertificates" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "RemoveCustomerOverride"
          Core.=: removeCustomerOverride,
        "CertificateIdentifier"
          Core.=: certificateIdentifier
      ]

-- | /See:/ 'newModifyCertificatesResponse' smart constructor.
data ModifyCertificatesResponse = ModifyCertificatesResponse'
  { certificate :: Prelude.Maybe Certificate,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyCertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificate', 'modifyCertificatesResponse_certificate' - Undocumented member.
--
-- 'httpStatus', 'modifyCertificatesResponse_httpStatus' - The response's http status code.
newModifyCertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyCertificatesResponse
newModifyCertificatesResponse pHttpStatus_ =
  ModifyCertificatesResponse'
    { certificate =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
modifyCertificatesResponse_certificate :: Lens.Lens' ModifyCertificatesResponse (Prelude.Maybe Certificate)
modifyCertificatesResponse_certificate = Lens.lens (\ModifyCertificatesResponse' {certificate} -> certificate) (\s@ModifyCertificatesResponse' {} a -> s {certificate = a} :: ModifyCertificatesResponse)

-- | The response's http status code.
modifyCertificatesResponse_httpStatus :: Lens.Lens' ModifyCertificatesResponse Prelude.Int
modifyCertificatesResponse_httpStatus = Lens.lens (\ModifyCertificatesResponse' {httpStatus} -> httpStatus) (\s@ModifyCertificatesResponse' {} a -> s {httpStatus = a} :: ModifyCertificatesResponse)

instance Prelude.NFData ModifyCertificatesResponse where
  rnf ModifyCertificatesResponse' {..} =
    Prelude.rnf certificate
      `Prelude.seq` Prelude.rnf httpStatus

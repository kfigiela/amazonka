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
-- Module      : Amazonka.Redshift.DeleteHsmClientCertificate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HSM client certificate.
module Amazonka.Redshift.DeleteHsmClientCertificate
  ( -- * Creating a Request
    DeleteHsmClientCertificate (..),
    newDeleteHsmClientCertificate,

    -- * Request Lenses
    deleteHsmClientCertificate_hsmClientCertificateIdentifier,

    -- * Destructuring the Response
    DeleteHsmClientCertificateResponse (..),
    newDeleteHsmClientCertificateResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDeleteHsmClientCertificate' smart constructor.
data DeleteHsmClientCertificate = DeleteHsmClientCertificate'
  { -- | The identifier of the HSM client certificate to be deleted.
    hsmClientCertificateIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteHsmClientCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hsmClientCertificateIdentifier', 'deleteHsmClientCertificate_hsmClientCertificateIdentifier' - The identifier of the HSM client certificate to be deleted.
newDeleteHsmClientCertificate ::
  -- | 'hsmClientCertificateIdentifier'
  Prelude.Text ->
  DeleteHsmClientCertificate
newDeleteHsmClientCertificate
  pHsmClientCertificateIdentifier_ =
    DeleteHsmClientCertificate'
      { hsmClientCertificateIdentifier =
          pHsmClientCertificateIdentifier_
      }

-- | The identifier of the HSM client certificate to be deleted.
deleteHsmClientCertificate_hsmClientCertificateIdentifier :: Lens.Lens' DeleteHsmClientCertificate Prelude.Text
deleteHsmClientCertificate_hsmClientCertificateIdentifier = Lens.lens (\DeleteHsmClientCertificate' {hsmClientCertificateIdentifier} -> hsmClientCertificateIdentifier) (\s@DeleteHsmClientCertificate' {} a -> s {hsmClientCertificateIdentifier = a} :: DeleteHsmClientCertificate)

instance Core.AWSRequest DeleteHsmClientCertificate where
  type
    AWSResponse DeleteHsmClientCertificate =
      DeleteHsmClientCertificateResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveNull
      DeleteHsmClientCertificateResponse'

instance Prelude.Hashable DeleteHsmClientCertificate where
  hashWithSalt _salt DeleteHsmClientCertificate' {..} =
    _salt
      `Prelude.hashWithSalt` hsmClientCertificateIdentifier

instance Prelude.NFData DeleteHsmClientCertificate where
  rnf DeleteHsmClientCertificate' {..} =
    Prelude.rnf hsmClientCertificateIdentifier

instance Core.ToHeaders DeleteHsmClientCertificate where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteHsmClientCertificate where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteHsmClientCertificate where
  toQuery DeleteHsmClientCertificate' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteHsmClientCertificate" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "HsmClientCertificateIdentifier"
          Core.=: hsmClientCertificateIdentifier
      ]

-- | /See:/ 'newDeleteHsmClientCertificateResponse' smart constructor.
data DeleteHsmClientCertificateResponse = DeleteHsmClientCertificateResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteHsmClientCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteHsmClientCertificateResponse ::
  DeleteHsmClientCertificateResponse
newDeleteHsmClientCertificateResponse =
  DeleteHsmClientCertificateResponse'

instance
  Prelude.NFData
    DeleteHsmClientCertificateResponse
  where
  rnf _ = ()

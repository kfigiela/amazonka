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
-- Module      : Amazonka.RolesAnywhere.UpdateCrl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the certificate revocation list (CRL). CRl is a list of
-- certificates that have been revoked by the issuing certificate Authority
-- (CA). IAM Roles Anywhere validates against the crl list before issuing
-- credentials.
--
-- __Required permissions:__ @rolesanywhere:UpdateCrl@.
module Amazonka.RolesAnywhere.UpdateCrl
  ( -- * Creating a Request
    UpdateCrl (..),
    newUpdateCrl,

    -- * Request Lenses
    updateCrl_name,
    updateCrl_crlData,
    updateCrl_crlId,

    -- * Destructuring the Response
    CrlDetailResponse (..),
    newCrlDetailResponse,

    -- * Response Lenses
    crlDetailResponse_crl,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RolesAnywhere.Types

-- | /See:/ 'newUpdateCrl' smart constructor.
data UpdateCrl = UpdateCrl'
  { -- | The name of the Crl.
    name :: Prelude.Maybe Prelude.Text,
    -- | The x509 v3 specified certificate revocation list
    crlData :: Prelude.Maybe Core.Base64,
    -- | The unique identifier of the certificate revocation list (CRL).
    crlId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCrl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateCrl_name' - The name of the Crl.
--
-- 'crlData', 'updateCrl_crlData' - The x509 v3 specified certificate revocation list--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'crlId', 'updateCrl_crlId' - The unique identifier of the certificate revocation list (CRL).
newUpdateCrl ::
  -- | 'crlId'
  Prelude.Text ->
  UpdateCrl
newUpdateCrl pCrlId_ =
  UpdateCrl'
    { name = Prelude.Nothing,
      crlData = Prelude.Nothing,
      crlId = pCrlId_
    }

-- | The name of the Crl.
updateCrl_name :: Lens.Lens' UpdateCrl (Prelude.Maybe Prelude.Text)
updateCrl_name = Lens.lens (\UpdateCrl' {name} -> name) (\s@UpdateCrl' {} a -> s {name = a} :: UpdateCrl)

-- | The x509 v3 specified certificate revocation list--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
updateCrl_crlData :: Lens.Lens' UpdateCrl (Prelude.Maybe Prelude.ByteString)
updateCrl_crlData = Lens.lens (\UpdateCrl' {crlData} -> crlData) (\s@UpdateCrl' {} a -> s {crlData = a} :: UpdateCrl) Prelude.. Lens.mapping Core._Base64

-- | The unique identifier of the certificate revocation list (CRL).
updateCrl_crlId :: Lens.Lens' UpdateCrl Prelude.Text
updateCrl_crlId = Lens.lens (\UpdateCrl' {crlId} -> crlId) (\s@UpdateCrl' {} a -> s {crlId = a} :: UpdateCrl)

instance Core.AWSRequest UpdateCrl where
  type AWSResponse UpdateCrl = CrlDetailResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateCrl where
  hashWithSalt _salt UpdateCrl' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` crlData
      `Prelude.hashWithSalt` crlId

instance Prelude.NFData UpdateCrl where
  rnf UpdateCrl' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf crlData
      `Prelude.seq` Prelude.rnf crlId

instance Core.ToHeaders UpdateCrl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCrl where
  toJSON UpdateCrl' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("crlData" Core..=) Prelude.<$> crlData
          ]
      )

instance Core.ToPath UpdateCrl where
  toPath UpdateCrl' {..} =
    Prelude.mconcat ["/crl/", Core.toBS crlId]

instance Core.ToQuery UpdateCrl where
  toQuery = Prelude.const Prelude.mempty

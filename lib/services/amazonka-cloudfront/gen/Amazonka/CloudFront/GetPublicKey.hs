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
-- Module      : Amazonka.CloudFront.GetPublicKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a public key.
module Amazonka.CloudFront.GetPublicKey
  ( -- * Creating a Request
    GetPublicKey (..),
    newGetPublicKey,

    -- * Request Lenses
    getPublicKey_id,

    -- * Destructuring the Response
    GetPublicKeyResponse (..),
    newGetPublicKeyResponse,

    -- * Response Lenses
    getPublicKeyResponse_publicKey,
    getPublicKeyResponse_eTag,
    getPublicKeyResponse_httpStatus,
  )
where

import Amazonka.CloudFront.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetPublicKey' smart constructor.
data GetPublicKey = GetPublicKey'
  { -- | The identifier of the public key you are getting.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPublicKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getPublicKey_id' - The identifier of the public key you are getting.
newGetPublicKey ::
  -- | 'id'
  Prelude.Text ->
  GetPublicKey
newGetPublicKey pId_ = GetPublicKey' {id = pId_}

-- | The identifier of the public key you are getting.
getPublicKey_id :: Lens.Lens' GetPublicKey Prelude.Text
getPublicKey_id = Lens.lens (\GetPublicKey' {id} -> id) (\s@GetPublicKey' {} a -> s {id = a} :: GetPublicKey)

instance Core.AWSRequest GetPublicKey where
  type AWSResponse GetPublicKey = GetPublicKeyResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveXML
      ( \s h x ->
          GetPublicKeyResponse'
            Prelude.<$> (Core.parseXML x)
            Prelude.<*> (h Core..#? "ETag")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPublicKey where
  hashWithSalt _salt GetPublicKey' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData GetPublicKey where
  rnf GetPublicKey' {..} = Prelude.rnf id

instance Core.ToHeaders GetPublicKey where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetPublicKey where
  toPath GetPublicKey' {..} =
    Prelude.mconcat
      ["/2020-05-31/public-key/", Core.toBS id]

instance Core.ToQuery GetPublicKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPublicKeyResponse' smart constructor.
data GetPublicKeyResponse = GetPublicKeyResponse'
  { -- | The public key.
    publicKey :: Prelude.Maybe PublicKey,
    -- | The identifier for this version of the public key.
    eTag :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPublicKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicKey', 'getPublicKeyResponse_publicKey' - The public key.
--
-- 'eTag', 'getPublicKeyResponse_eTag' - The identifier for this version of the public key.
--
-- 'httpStatus', 'getPublicKeyResponse_httpStatus' - The response's http status code.
newGetPublicKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPublicKeyResponse
newGetPublicKeyResponse pHttpStatus_ =
  GetPublicKeyResponse'
    { publicKey = Prelude.Nothing,
      eTag = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The public key.
getPublicKeyResponse_publicKey :: Lens.Lens' GetPublicKeyResponse (Prelude.Maybe PublicKey)
getPublicKeyResponse_publicKey = Lens.lens (\GetPublicKeyResponse' {publicKey} -> publicKey) (\s@GetPublicKeyResponse' {} a -> s {publicKey = a} :: GetPublicKeyResponse)

-- | The identifier for this version of the public key.
getPublicKeyResponse_eTag :: Lens.Lens' GetPublicKeyResponse (Prelude.Maybe Prelude.Text)
getPublicKeyResponse_eTag = Lens.lens (\GetPublicKeyResponse' {eTag} -> eTag) (\s@GetPublicKeyResponse' {} a -> s {eTag = a} :: GetPublicKeyResponse)

-- | The response's http status code.
getPublicKeyResponse_httpStatus :: Lens.Lens' GetPublicKeyResponse Prelude.Int
getPublicKeyResponse_httpStatus = Lens.lens (\GetPublicKeyResponse' {httpStatus} -> httpStatus) (\s@GetPublicKeyResponse' {} a -> s {httpStatus = a} :: GetPublicKeyResponse)

instance Prelude.NFData GetPublicKeyResponse where
  rnf GetPublicKeyResponse' {..} =
    Prelude.rnf publicKey
      `Prelude.seq` Prelude.rnf eTag
      `Prelude.seq` Prelude.rnf httpStatus

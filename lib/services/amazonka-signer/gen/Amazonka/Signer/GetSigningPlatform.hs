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
-- Module      : Amazonka.Signer.GetSigningPlatform
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information on a specific signing platform.
module Amazonka.Signer.GetSigningPlatform
  ( -- * Creating a Request
    GetSigningPlatform (..),
    newGetSigningPlatform,

    -- * Request Lenses
    getSigningPlatform_platformId,

    -- * Destructuring the Response
    GetSigningPlatformResponse (..),
    newGetSigningPlatformResponse,

    -- * Response Lenses
    getSigningPlatformResponse_signingImageFormat,
    getSigningPlatformResponse_partner,
    getSigningPlatformResponse_signingConfiguration,
    getSigningPlatformResponse_displayName,
    getSigningPlatformResponse_target,
    getSigningPlatformResponse_category,
    getSigningPlatformResponse_revocationSupported,
    getSigningPlatformResponse_platformId,
    getSigningPlatformResponse_maxSizeInMB,
    getSigningPlatformResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Signer.Types

-- | /See:/ 'newGetSigningPlatform' smart constructor.
data GetSigningPlatform = GetSigningPlatform'
  { -- | The ID of the target signing platform.
    platformId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSigningPlatform' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'platformId', 'getSigningPlatform_platformId' - The ID of the target signing platform.
newGetSigningPlatform ::
  -- | 'platformId'
  Prelude.Text ->
  GetSigningPlatform
newGetSigningPlatform pPlatformId_ =
  GetSigningPlatform' {platformId = pPlatformId_}

-- | The ID of the target signing platform.
getSigningPlatform_platformId :: Lens.Lens' GetSigningPlatform Prelude.Text
getSigningPlatform_platformId = Lens.lens (\GetSigningPlatform' {platformId} -> platformId) (\s@GetSigningPlatform' {} a -> s {platformId = a} :: GetSigningPlatform)

instance Core.AWSRequest GetSigningPlatform where
  type
    AWSResponse GetSigningPlatform =
      GetSigningPlatformResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSigningPlatformResponse'
            Prelude.<$> (x Core..?> "signingImageFormat")
            Prelude.<*> (x Core..?> "partner")
            Prelude.<*> (x Core..?> "signingConfiguration")
            Prelude.<*> (x Core..?> "displayName")
            Prelude.<*> (x Core..?> "target")
            Prelude.<*> (x Core..?> "category")
            Prelude.<*> (x Core..?> "revocationSupported")
            Prelude.<*> (x Core..?> "platformId")
            Prelude.<*> (x Core..?> "maxSizeInMB")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSigningPlatform where
  hashWithSalt _salt GetSigningPlatform' {..} =
    _salt `Prelude.hashWithSalt` platformId

instance Prelude.NFData GetSigningPlatform where
  rnf GetSigningPlatform' {..} = Prelude.rnf platformId

instance Core.ToHeaders GetSigningPlatform where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSigningPlatform where
  toPath GetSigningPlatform' {..} =
    Prelude.mconcat
      ["/signing-platforms/", Core.toBS platformId]

instance Core.ToQuery GetSigningPlatform where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSigningPlatformResponse' smart constructor.
data GetSigningPlatformResponse = GetSigningPlatformResponse'
  { -- | The format of the target platform\'s signing image.
    signingImageFormat :: Prelude.Maybe SigningImageFormat,
    -- | A list of partner entities that use the target signing platform.
    partner :: Prelude.Maybe Prelude.Text,
    -- | A list of configurations applied to the target platform at signing.
    signingConfiguration :: Prelude.Maybe SigningConfiguration,
    -- | The display name of the target signing platform.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The validation template that is used by the target signing platform.
    target :: Prelude.Maybe Prelude.Text,
    -- | The category type of the target signing platform.
    category :: Prelude.Maybe Category,
    -- | A flag indicating whether signatures generated for the signing platform
    -- can be revoked.
    revocationSupported :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the target signing platform.
    platformId :: Prelude.Maybe Prelude.Text,
    -- | The maximum size (in MB) of the payload that can be signed by the target
    -- platform.
    maxSizeInMB :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSigningPlatformResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signingImageFormat', 'getSigningPlatformResponse_signingImageFormat' - The format of the target platform\'s signing image.
--
-- 'partner', 'getSigningPlatformResponse_partner' - A list of partner entities that use the target signing platform.
--
-- 'signingConfiguration', 'getSigningPlatformResponse_signingConfiguration' - A list of configurations applied to the target platform at signing.
--
-- 'displayName', 'getSigningPlatformResponse_displayName' - The display name of the target signing platform.
--
-- 'target', 'getSigningPlatformResponse_target' - The validation template that is used by the target signing platform.
--
-- 'category', 'getSigningPlatformResponse_category' - The category type of the target signing platform.
--
-- 'revocationSupported', 'getSigningPlatformResponse_revocationSupported' - A flag indicating whether signatures generated for the signing platform
-- can be revoked.
--
-- 'platformId', 'getSigningPlatformResponse_platformId' - The ID of the target signing platform.
--
-- 'maxSizeInMB', 'getSigningPlatformResponse_maxSizeInMB' - The maximum size (in MB) of the payload that can be signed by the target
-- platform.
--
-- 'httpStatus', 'getSigningPlatformResponse_httpStatus' - The response's http status code.
newGetSigningPlatformResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSigningPlatformResponse
newGetSigningPlatformResponse pHttpStatus_ =
  GetSigningPlatformResponse'
    { signingImageFormat =
        Prelude.Nothing,
      partner = Prelude.Nothing,
      signingConfiguration = Prelude.Nothing,
      displayName = Prelude.Nothing,
      target = Prelude.Nothing,
      category = Prelude.Nothing,
      revocationSupported = Prelude.Nothing,
      platformId = Prelude.Nothing,
      maxSizeInMB = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The format of the target platform\'s signing image.
getSigningPlatformResponse_signingImageFormat :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe SigningImageFormat)
getSigningPlatformResponse_signingImageFormat = Lens.lens (\GetSigningPlatformResponse' {signingImageFormat} -> signingImageFormat) (\s@GetSigningPlatformResponse' {} a -> s {signingImageFormat = a} :: GetSigningPlatformResponse)

-- | A list of partner entities that use the target signing platform.
getSigningPlatformResponse_partner :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Text)
getSigningPlatformResponse_partner = Lens.lens (\GetSigningPlatformResponse' {partner} -> partner) (\s@GetSigningPlatformResponse' {} a -> s {partner = a} :: GetSigningPlatformResponse)

-- | A list of configurations applied to the target platform at signing.
getSigningPlatformResponse_signingConfiguration :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe SigningConfiguration)
getSigningPlatformResponse_signingConfiguration = Lens.lens (\GetSigningPlatformResponse' {signingConfiguration} -> signingConfiguration) (\s@GetSigningPlatformResponse' {} a -> s {signingConfiguration = a} :: GetSigningPlatformResponse)

-- | The display name of the target signing platform.
getSigningPlatformResponse_displayName :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Text)
getSigningPlatformResponse_displayName = Lens.lens (\GetSigningPlatformResponse' {displayName} -> displayName) (\s@GetSigningPlatformResponse' {} a -> s {displayName = a} :: GetSigningPlatformResponse)

-- | The validation template that is used by the target signing platform.
getSigningPlatformResponse_target :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Text)
getSigningPlatformResponse_target = Lens.lens (\GetSigningPlatformResponse' {target} -> target) (\s@GetSigningPlatformResponse' {} a -> s {target = a} :: GetSigningPlatformResponse)

-- | The category type of the target signing platform.
getSigningPlatformResponse_category :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Category)
getSigningPlatformResponse_category = Lens.lens (\GetSigningPlatformResponse' {category} -> category) (\s@GetSigningPlatformResponse' {} a -> s {category = a} :: GetSigningPlatformResponse)

-- | A flag indicating whether signatures generated for the signing platform
-- can be revoked.
getSigningPlatformResponse_revocationSupported :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Bool)
getSigningPlatformResponse_revocationSupported = Lens.lens (\GetSigningPlatformResponse' {revocationSupported} -> revocationSupported) (\s@GetSigningPlatformResponse' {} a -> s {revocationSupported = a} :: GetSigningPlatformResponse)

-- | The ID of the target signing platform.
getSigningPlatformResponse_platformId :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Text)
getSigningPlatformResponse_platformId = Lens.lens (\GetSigningPlatformResponse' {platformId} -> platformId) (\s@GetSigningPlatformResponse' {} a -> s {platformId = a} :: GetSigningPlatformResponse)

-- | The maximum size (in MB) of the payload that can be signed by the target
-- platform.
getSigningPlatformResponse_maxSizeInMB :: Lens.Lens' GetSigningPlatformResponse (Prelude.Maybe Prelude.Int)
getSigningPlatformResponse_maxSizeInMB = Lens.lens (\GetSigningPlatformResponse' {maxSizeInMB} -> maxSizeInMB) (\s@GetSigningPlatformResponse' {} a -> s {maxSizeInMB = a} :: GetSigningPlatformResponse)

-- | The response's http status code.
getSigningPlatformResponse_httpStatus :: Lens.Lens' GetSigningPlatformResponse Prelude.Int
getSigningPlatformResponse_httpStatus = Lens.lens (\GetSigningPlatformResponse' {httpStatus} -> httpStatus) (\s@GetSigningPlatformResponse' {} a -> s {httpStatus = a} :: GetSigningPlatformResponse)

instance Prelude.NFData GetSigningPlatformResponse where
  rnf GetSigningPlatformResponse' {..} =
    Prelude.rnf signingImageFormat
      `Prelude.seq` Prelude.rnf partner
      `Prelude.seq` Prelude.rnf signingConfiguration
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf revocationSupported
      `Prelude.seq` Prelude.rnf platformId
      `Prelude.seq` Prelude.rnf maxSizeInMB
      `Prelude.seq` Prelude.rnf httpStatus

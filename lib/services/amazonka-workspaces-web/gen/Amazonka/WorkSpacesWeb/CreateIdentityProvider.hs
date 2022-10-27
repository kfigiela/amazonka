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
-- Module      : Amazonka.WorkSpacesWeb.CreateIdentityProvider
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an identity provider resource that is then associated with a web
-- portal.
module Amazonka.WorkSpacesWeb.CreateIdentityProvider
  ( -- * Creating a Request
    CreateIdentityProvider (..),
    newCreateIdentityProvider,

    -- * Request Lenses
    createIdentityProvider_clientToken,
    createIdentityProvider_identityProviderDetails,
    createIdentityProvider_identityProviderName,
    createIdentityProvider_identityProviderType,
    createIdentityProvider_portalArn,

    -- * Destructuring the Response
    CreateIdentityProviderResponse (..),
    newCreateIdentityProviderResponse,

    -- * Response Lenses
    createIdentityProviderResponse_httpStatus,
    createIdentityProviderResponse_identityProviderArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newCreateIdentityProvider' smart constructor.
data CreateIdentityProvider = CreateIdentityProvider'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Idempotency ensures that an API request
    -- completes only once. With an idempotent request, if the original request
    -- completes successfully, subsequent retries with the same client token
    -- returns the result from the original successful request.
    --
    -- If you do not specify a client token, one is automatically generated by
    -- the AWS SDK.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The identity provider details. The following list describes the provider
    -- detail keys for each identity provider type.
    --
    -- -   For Google and Login with Amazon:
    --
    --     -   @client_id@
    --
    --     -   @client_secret@
    --
    --     -   @authorize_scopes@
    --
    -- -   For Facebook:
    --
    --     -   @client_id@
    --
    --     -   @client_secret@
    --
    --     -   @authorize_scopes@
    --
    --     -   @api_version@
    --
    -- -   For Sign in with Apple:
    --
    --     -   @client_id@
    --
    --     -   @team_id@
    --
    --     -   @key_id@
    --
    --     -   @private_key@
    --
    --     -   @authorize_scopes@
    --
    -- -   For OIDC providers:
    --
    --     -   @client_id@
    --
    --     -   @client_secret@
    --
    --     -   @attributes_request_method@
    --
    --     -   @oidc_issuer@
    --
    --     -   @authorize_scopes@
    --
    --     -   @authorize_url@ /if not available from discovery URL specified
    --         by @oidc_issuer@ key/
    --
    --     -   @token_url@ /if not available from discovery URL specified by
    --         @oidc_issuer@ key/
    --
    --     -   @attributes_url@ /if not available from discovery URL specified
    --         by @oidc_issuer@ key/
    --
    --     -   @jwks_uri@ /if not available from discovery URL specified by
    --         @oidc_issuer@ key/
    --
    -- -   For SAML providers:
    --
    --     -   @MetadataFile@ OR @MetadataURL@
    --
    --     -   @IDPSignout@ (boolean) /optional/
    identityProviderDetails :: Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The identity provider name.
    identityProviderName :: Core.Sensitive Prelude.Text,
    -- | The identity provider type.
    identityProviderType :: IdentityProviderType,
    -- | The ARN of the web portal.
    portalArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIdentityProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createIdentityProvider_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
--
-- 'identityProviderDetails', 'createIdentityProvider_identityProviderDetails' - The identity provider details. The following list describes the provider
-- detail keys for each identity provider type.
--
-- -   For Google and Login with Amazon:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @authorize_scopes@
--
-- -   For Facebook:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @authorize_scopes@
--
--     -   @api_version@
--
-- -   For Sign in with Apple:
--
--     -   @client_id@
--
--     -   @team_id@
--
--     -   @key_id@
--
--     -   @private_key@
--
--     -   @authorize_scopes@
--
-- -   For OIDC providers:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @attributes_request_method@
--
--     -   @oidc_issuer@
--
--     -   @authorize_scopes@
--
--     -   @authorize_url@ /if not available from discovery URL specified
--         by @oidc_issuer@ key/
--
--     -   @token_url@ /if not available from discovery URL specified by
--         @oidc_issuer@ key/
--
--     -   @attributes_url@ /if not available from discovery URL specified
--         by @oidc_issuer@ key/
--
--     -   @jwks_uri@ /if not available from discovery URL specified by
--         @oidc_issuer@ key/
--
-- -   For SAML providers:
--
--     -   @MetadataFile@ OR @MetadataURL@
--
--     -   @IDPSignout@ (boolean) /optional/
--
-- 'identityProviderName', 'createIdentityProvider_identityProviderName' - The identity provider name.
--
-- 'identityProviderType', 'createIdentityProvider_identityProviderType' - The identity provider type.
--
-- 'portalArn', 'createIdentityProvider_portalArn' - The ARN of the web portal.
newCreateIdentityProvider ::
  -- | 'identityProviderName'
  Prelude.Text ->
  -- | 'identityProviderType'
  IdentityProviderType ->
  -- | 'portalArn'
  Prelude.Text ->
  CreateIdentityProvider
newCreateIdentityProvider
  pIdentityProviderName_
  pIdentityProviderType_
  pPortalArn_ =
    CreateIdentityProvider'
      { clientToken =
          Prelude.Nothing,
        identityProviderDetails = Prelude.mempty,
        identityProviderName =
          Core._Sensitive Lens.# pIdentityProviderName_,
        identityProviderType = pIdentityProviderType_,
        portalArn = pPortalArn_
      }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
createIdentityProvider_clientToken :: Lens.Lens' CreateIdentityProvider (Prelude.Maybe Prelude.Text)
createIdentityProvider_clientToken = Lens.lens (\CreateIdentityProvider' {clientToken} -> clientToken) (\s@CreateIdentityProvider' {} a -> s {clientToken = a} :: CreateIdentityProvider)

-- | The identity provider details. The following list describes the provider
-- detail keys for each identity provider type.
--
-- -   For Google and Login with Amazon:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @authorize_scopes@
--
-- -   For Facebook:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @authorize_scopes@
--
--     -   @api_version@
--
-- -   For Sign in with Apple:
--
--     -   @client_id@
--
--     -   @team_id@
--
--     -   @key_id@
--
--     -   @private_key@
--
--     -   @authorize_scopes@
--
-- -   For OIDC providers:
--
--     -   @client_id@
--
--     -   @client_secret@
--
--     -   @attributes_request_method@
--
--     -   @oidc_issuer@
--
--     -   @authorize_scopes@
--
--     -   @authorize_url@ /if not available from discovery URL specified
--         by @oidc_issuer@ key/
--
--     -   @token_url@ /if not available from discovery URL specified by
--         @oidc_issuer@ key/
--
--     -   @attributes_url@ /if not available from discovery URL specified
--         by @oidc_issuer@ key/
--
--     -   @jwks_uri@ /if not available from discovery URL specified by
--         @oidc_issuer@ key/
--
-- -   For SAML providers:
--
--     -   @MetadataFile@ OR @MetadataURL@
--
--     -   @IDPSignout@ (boolean) /optional/
createIdentityProvider_identityProviderDetails :: Lens.Lens' CreateIdentityProvider (Prelude.HashMap Prelude.Text Prelude.Text)
createIdentityProvider_identityProviderDetails = Lens.lens (\CreateIdentityProvider' {identityProviderDetails} -> identityProviderDetails) (\s@CreateIdentityProvider' {} a -> s {identityProviderDetails = a} :: CreateIdentityProvider) Prelude.. Core._Sensitive Prelude.. Lens.coerced

-- | The identity provider name.
createIdentityProvider_identityProviderName :: Lens.Lens' CreateIdentityProvider Prelude.Text
createIdentityProvider_identityProviderName = Lens.lens (\CreateIdentityProvider' {identityProviderName} -> identityProviderName) (\s@CreateIdentityProvider' {} a -> s {identityProviderName = a} :: CreateIdentityProvider) Prelude.. Core._Sensitive

-- | The identity provider type.
createIdentityProvider_identityProviderType :: Lens.Lens' CreateIdentityProvider IdentityProviderType
createIdentityProvider_identityProviderType = Lens.lens (\CreateIdentityProvider' {identityProviderType} -> identityProviderType) (\s@CreateIdentityProvider' {} a -> s {identityProviderType = a} :: CreateIdentityProvider)

-- | The ARN of the web portal.
createIdentityProvider_portalArn :: Lens.Lens' CreateIdentityProvider Prelude.Text
createIdentityProvider_portalArn = Lens.lens (\CreateIdentityProvider' {portalArn} -> portalArn) (\s@CreateIdentityProvider' {} a -> s {portalArn = a} :: CreateIdentityProvider)

instance Core.AWSRequest CreateIdentityProvider where
  type
    AWSResponse CreateIdentityProvider =
      CreateIdentityProviderResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateIdentityProviderResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "identityProviderArn")
      )

instance Prelude.Hashable CreateIdentityProvider where
  hashWithSalt _salt CreateIdentityProvider' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` identityProviderDetails
      `Prelude.hashWithSalt` identityProviderName
      `Prelude.hashWithSalt` identityProviderType
      `Prelude.hashWithSalt` portalArn

instance Prelude.NFData CreateIdentityProvider where
  rnf CreateIdentityProvider' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf identityProviderDetails
      `Prelude.seq` Prelude.rnf identityProviderName
      `Prelude.seq` Prelude.rnf identityProviderType
      `Prelude.seq` Prelude.rnf portalArn

instance Core.ToHeaders CreateIdentityProvider where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateIdentityProvider where
  toJSON CreateIdentityProvider' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ( "identityProviderDetails"
                  Core..= identityProviderDetails
              ),
            Prelude.Just
              ( "identityProviderName"
                  Core..= identityProviderName
              ),
            Prelude.Just
              ( "identityProviderType"
                  Core..= identityProviderType
              ),
            Prelude.Just ("portalArn" Core..= portalArn)
          ]
      )

instance Core.ToPath CreateIdentityProvider where
  toPath = Prelude.const "/identityProviders"

instance Core.ToQuery CreateIdentityProvider where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateIdentityProviderResponse' smart constructor.
data CreateIdentityProviderResponse = CreateIdentityProviderResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the identity provider.
    identityProviderArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIdentityProviderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createIdentityProviderResponse_httpStatus' - The response's http status code.
--
-- 'identityProviderArn', 'createIdentityProviderResponse_identityProviderArn' - The ARN of the identity provider.
newCreateIdentityProviderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'identityProviderArn'
  Prelude.Text ->
  CreateIdentityProviderResponse
newCreateIdentityProviderResponse
  pHttpStatus_
  pIdentityProviderArn_ =
    CreateIdentityProviderResponse'
      { httpStatus =
          pHttpStatus_,
        identityProviderArn = pIdentityProviderArn_
      }

-- | The response's http status code.
createIdentityProviderResponse_httpStatus :: Lens.Lens' CreateIdentityProviderResponse Prelude.Int
createIdentityProviderResponse_httpStatus = Lens.lens (\CreateIdentityProviderResponse' {httpStatus} -> httpStatus) (\s@CreateIdentityProviderResponse' {} a -> s {httpStatus = a} :: CreateIdentityProviderResponse)

-- | The ARN of the identity provider.
createIdentityProviderResponse_identityProviderArn :: Lens.Lens' CreateIdentityProviderResponse Prelude.Text
createIdentityProviderResponse_identityProviderArn = Lens.lens (\CreateIdentityProviderResponse' {identityProviderArn} -> identityProviderArn) (\s@CreateIdentityProviderResponse' {} a -> s {identityProviderArn = a} :: CreateIdentityProviderResponse)

instance
  Prelude.NFData
    CreateIdentityProviderResponse
  where
  rnf CreateIdentityProviderResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf identityProviderArn

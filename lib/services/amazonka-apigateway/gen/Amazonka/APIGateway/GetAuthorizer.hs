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
-- Module      : Amazonka.APIGateway.GetAuthorizer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an existing Authorizer resource.
module Amazonka.APIGateway.GetAuthorizer
  ( -- * Creating a Request
    GetAuthorizer (..),
    newGetAuthorizer,

    -- * Request Lenses
    getAuthorizer_restApiId,
    getAuthorizer_authorizerId,

    -- * Destructuring the Response
    Authorizer (..),
    newAuthorizer,

    -- * Response Lenses
    authorizer_name,
    authorizer_type,
    authorizer_authorizerCredentials,
    authorizer_identitySource,
    authorizer_authorizerResultTtlInSeconds,
    authorizer_id,
    authorizer_identityValidationExpression,
    authorizer_authorizerUri,
    authorizer_providerARNs,
    authorizer_authType,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Request to describe an existing Authorizer resource.
--
-- /See:/ 'newGetAuthorizer' smart constructor.
data GetAuthorizer = GetAuthorizer'
  { -- | The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | The identifier of the Authorizer resource.
    authorizerId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAuthorizer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'restApiId', 'getAuthorizer_restApiId' - The string identifier of the associated RestApi.
--
-- 'authorizerId', 'getAuthorizer_authorizerId' - The identifier of the Authorizer resource.
newGetAuthorizer ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'authorizerId'
  Prelude.Text ->
  GetAuthorizer
newGetAuthorizer pRestApiId_ pAuthorizerId_ =
  GetAuthorizer'
    { restApiId = pRestApiId_,
      authorizerId = pAuthorizerId_
    }

-- | The string identifier of the associated RestApi.
getAuthorizer_restApiId :: Lens.Lens' GetAuthorizer Prelude.Text
getAuthorizer_restApiId = Lens.lens (\GetAuthorizer' {restApiId} -> restApiId) (\s@GetAuthorizer' {} a -> s {restApiId = a} :: GetAuthorizer)

-- | The identifier of the Authorizer resource.
getAuthorizer_authorizerId :: Lens.Lens' GetAuthorizer Prelude.Text
getAuthorizer_authorizerId = Lens.lens (\GetAuthorizer' {authorizerId} -> authorizerId) (\s@GetAuthorizer' {} a -> s {authorizerId = a} :: GetAuthorizer)

instance Core.AWSRequest GetAuthorizer where
  type AWSResponse GetAuthorizer = Authorizer
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetAuthorizer where
  hashWithSalt _salt GetAuthorizer' {..} =
    _salt `Prelude.hashWithSalt` restApiId
      `Prelude.hashWithSalt` authorizerId

instance Prelude.NFData GetAuthorizer where
  rnf GetAuthorizer' {..} =
    Prelude.rnf restApiId
      `Prelude.seq` Prelude.rnf authorizerId

instance Core.ToHeaders GetAuthorizer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToPath GetAuthorizer where
  toPath GetAuthorizer' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/authorizers/",
        Core.toBS authorizerId
      ]

instance Core.ToQuery GetAuthorizer where
  toQuery = Prelude.const Prelude.mempty

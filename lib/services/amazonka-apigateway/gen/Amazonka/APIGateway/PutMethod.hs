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
-- Module      : Amazonka.APIGateway.PutMethod
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a method to an existing Resource resource.
module Amazonka.APIGateway.PutMethod
  ( -- * Creating a Request
    PutMethod (..),
    newPutMethod,

    -- * Request Lenses
    putMethod_requestModels,
    putMethod_requestParameters,
    putMethod_apiKeyRequired,
    putMethod_requestValidatorId,
    putMethod_authorizationScopes,
    putMethod_operationName,
    putMethod_authorizerId,
    putMethod_restApiId,
    putMethod_resourceId,
    putMethod_httpMethod,
    putMethod_authorizationType,

    -- * Destructuring the Response
    Method (..),
    newMethod,

    -- * Response Lenses
    method_requestModels,
    method_requestParameters,
    method_methodResponses,
    method_apiKeyRequired,
    method_requestValidatorId,
    method_httpMethod,
    method_methodIntegration,
    method_authorizationScopes,
    method_authorizationType,
    method_operationName,
    method_authorizerId,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Request to add a method to an existing Resource resource.
--
-- /See:/ 'newPutMethod' smart constructor.
data PutMethod = PutMethod'
  { -- | Specifies the Model resources used for the request\'s content type.
    -- Request models are represented as a key\/value map, with a content type
    -- as the key and a Model name as the value.
    requestModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A key-value map defining required or optional method request parameters
    -- that can be accepted by API Gateway. A key defines a method request
    -- parameter name matching the pattern of
    -- @method.request.{location}.{name}@, where @location@ is @querystring@,
    -- @path@, or @header@ and @name@ is a valid and unique parameter name. The
    -- value associated with the key is a Boolean flag indicating whether the
    -- parameter is required (@true@) or optional (@false@). The method request
    -- parameter names defined here are available in Integration to be mapped
    -- to integration request parameters or body-mapping templates.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Bool),
    -- | Specifies whether the method required a valid ApiKey.
    apiKeyRequired :: Prelude.Maybe Prelude.Bool,
    -- | The identifier of a RequestValidator for validating the method request.
    requestValidatorId :: Prelude.Maybe Prelude.Text,
    -- | A list of authorization scopes configured on the method. The scopes are
    -- used with a @COGNITO_USER_POOLS@ authorizer to authorize the method
    -- invocation. The authorization works by matching the method scopes
    -- against the scopes parsed from the access token in the incoming request.
    -- The method invocation is authorized if any method scopes matches a
    -- claimed scope in the access token. Otherwise, the invocation is not
    -- authorized. When the method scope is configured, the client must provide
    -- an access token instead of an identity token for authorization purposes.
    authorizationScopes :: Prelude.Maybe [Prelude.Text],
    -- | A human-friendly operation identifier for the method. For example, you
    -- can assign the @operationName@ of @ListPets@ for the @GET \/pets@ method
    -- in the @PetStore@ example.
    operationName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the identifier of an Authorizer to use on this Method, if the
    -- type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is
    -- generated by API Gateway when you created the authorizer.
    authorizerId :: Prelude.Maybe Prelude.Text,
    -- | The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | The Resource identifier for the new Method resource.
    resourceId :: Prelude.Text,
    -- | Specifies the method request\'s HTTP method type.
    httpMethod :: Prelude.Text,
    -- | The method\'s authorization type. Valid values are @NONE@ for open
    -- access, @AWS_IAM@ for using AWS IAM permissions, @CUSTOM@ for using a
    -- custom authorizer, or @COGNITO_USER_POOLS@ for using a Cognito user
    -- pool.
    authorizationType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutMethod' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestModels', 'putMethod_requestModels' - Specifies the Model resources used for the request\'s content type.
-- Request models are represented as a key\/value map, with a content type
-- as the key and a Model name as the value.
--
-- 'requestParameters', 'putMethod_requestParameters' - A key-value map defining required or optional method request parameters
-- that can be accepted by API Gateway. A key defines a method request
-- parameter name matching the pattern of
-- @method.request.{location}.{name}@, where @location@ is @querystring@,
-- @path@, or @header@ and @name@ is a valid and unique parameter name. The
-- value associated with the key is a Boolean flag indicating whether the
-- parameter is required (@true@) or optional (@false@). The method request
-- parameter names defined here are available in Integration to be mapped
-- to integration request parameters or body-mapping templates.
--
-- 'apiKeyRequired', 'putMethod_apiKeyRequired' - Specifies whether the method required a valid ApiKey.
--
-- 'requestValidatorId', 'putMethod_requestValidatorId' - The identifier of a RequestValidator for validating the method request.
--
-- 'authorizationScopes', 'putMethod_authorizationScopes' - A list of authorization scopes configured on the method. The scopes are
-- used with a @COGNITO_USER_POOLS@ authorizer to authorize the method
-- invocation. The authorization works by matching the method scopes
-- against the scopes parsed from the access token in the incoming request.
-- The method invocation is authorized if any method scopes matches a
-- claimed scope in the access token. Otherwise, the invocation is not
-- authorized. When the method scope is configured, the client must provide
-- an access token instead of an identity token for authorization purposes.
--
-- 'operationName', 'putMethod_operationName' - A human-friendly operation identifier for the method. For example, you
-- can assign the @operationName@ of @ListPets@ for the @GET \/pets@ method
-- in the @PetStore@ example.
--
-- 'authorizerId', 'putMethod_authorizerId' - Specifies the identifier of an Authorizer to use on this Method, if the
-- type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is
-- generated by API Gateway when you created the authorizer.
--
-- 'restApiId', 'putMethod_restApiId' - The string identifier of the associated RestApi.
--
-- 'resourceId', 'putMethod_resourceId' - The Resource identifier for the new Method resource.
--
-- 'httpMethod', 'putMethod_httpMethod' - Specifies the method request\'s HTTP method type.
--
-- 'authorizationType', 'putMethod_authorizationType' - The method\'s authorization type. Valid values are @NONE@ for open
-- access, @AWS_IAM@ for using AWS IAM permissions, @CUSTOM@ for using a
-- custom authorizer, or @COGNITO_USER_POOLS@ for using a Cognito user
-- pool.
newPutMethod ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'resourceId'
  Prelude.Text ->
  -- | 'httpMethod'
  Prelude.Text ->
  -- | 'authorizationType'
  Prelude.Text ->
  PutMethod
newPutMethod
  pRestApiId_
  pResourceId_
  pHttpMethod_
  pAuthorizationType_ =
    PutMethod'
      { requestModels = Prelude.Nothing,
        requestParameters = Prelude.Nothing,
        apiKeyRequired = Prelude.Nothing,
        requestValidatorId = Prelude.Nothing,
        authorizationScopes = Prelude.Nothing,
        operationName = Prelude.Nothing,
        authorizerId = Prelude.Nothing,
        restApiId = pRestApiId_,
        resourceId = pResourceId_,
        httpMethod = pHttpMethod_,
        authorizationType = pAuthorizationType_
      }

-- | Specifies the Model resources used for the request\'s content type.
-- Request models are represented as a key\/value map, with a content type
-- as the key and a Model name as the value.
putMethod_requestModels :: Lens.Lens' PutMethod (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
putMethod_requestModels = Lens.lens (\PutMethod' {requestModels} -> requestModels) (\s@PutMethod' {} a -> s {requestModels = a} :: PutMethod) Prelude.. Lens.mapping Lens.coerced

-- | A key-value map defining required or optional method request parameters
-- that can be accepted by API Gateway. A key defines a method request
-- parameter name matching the pattern of
-- @method.request.{location}.{name}@, where @location@ is @querystring@,
-- @path@, or @header@ and @name@ is a valid and unique parameter name. The
-- value associated with the key is a Boolean flag indicating whether the
-- parameter is required (@true@) or optional (@false@). The method request
-- parameter names defined here are available in Integration to be mapped
-- to integration request parameters or body-mapping templates.
putMethod_requestParameters :: Lens.Lens' PutMethod (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Bool))
putMethod_requestParameters = Lens.lens (\PutMethod' {requestParameters} -> requestParameters) (\s@PutMethod' {} a -> s {requestParameters = a} :: PutMethod) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether the method required a valid ApiKey.
putMethod_apiKeyRequired :: Lens.Lens' PutMethod (Prelude.Maybe Prelude.Bool)
putMethod_apiKeyRequired = Lens.lens (\PutMethod' {apiKeyRequired} -> apiKeyRequired) (\s@PutMethod' {} a -> s {apiKeyRequired = a} :: PutMethod)

-- | The identifier of a RequestValidator for validating the method request.
putMethod_requestValidatorId :: Lens.Lens' PutMethod (Prelude.Maybe Prelude.Text)
putMethod_requestValidatorId = Lens.lens (\PutMethod' {requestValidatorId} -> requestValidatorId) (\s@PutMethod' {} a -> s {requestValidatorId = a} :: PutMethod)

-- | A list of authorization scopes configured on the method. The scopes are
-- used with a @COGNITO_USER_POOLS@ authorizer to authorize the method
-- invocation. The authorization works by matching the method scopes
-- against the scopes parsed from the access token in the incoming request.
-- The method invocation is authorized if any method scopes matches a
-- claimed scope in the access token. Otherwise, the invocation is not
-- authorized. When the method scope is configured, the client must provide
-- an access token instead of an identity token for authorization purposes.
putMethod_authorizationScopes :: Lens.Lens' PutMethod (Prelude.Maybe [Prelude.Text])
putMethod_authorizationScopes = Lens.lens (\PutMethod' {authorizationScopes} -> authorizationScopes) (\s@PutMethod' {} a -> s {authorizationScopes = a} :: PutMethod) Prelude.. Lens.mapping Lens.coerced

-- | A human-friendly operation identifier for the method. For example, you
-- can assign the @operationName@ of @ListPets@ for the @GET \/pets@ method
-- in the @PetStore@ example.
putMethod_operationName :: Lens.Lens' PutMethod (Prelude.Maybe Prelude.Text)
putMethod_operationName = Lens.lens (\PutMethod' {operationName} -> operationName) (\s@PutMethod' {} a -> s {operationName = a} :: PutMethod)

-- | Specifies the identifier of an Authorizer to use on this Method, if the
-- type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is
-- generated by API Gateway when you created the authorizer.
putMethod_authorizerId :: Lens.Lens' PutMethod (Prelude.Maybe Prelude.Text)
putMethod_authorizerId = Lens.lens (\PutMethod' {authorizerId} -> authorizerId) (\s@PutMethod' {} a -> s {authorizerId = a} :: PutMethod)

-- | The string identifier of the associated RestApi.
putMethod_restApiId :: Lens.Lens' PutMethod Prelude.Text
putMethod_restApiId = Lens.lens (\PutMethod' {restApiId} -> restApiId) (\s@PutMethod' {} a -> s {restApiId = a} :: PutMethod)

-- | The Resource identifier for the new Method resource.
putMethod_resourceId :: Lens.Lens' PutMethod Prelude.Text
putMethod_resourceId = Lens.lens (\PutMethod' {resourceId} -> resourceId) (\s@PutMethod' {} a -> s {resourceId = a} :: PutMethod)

-- | Specifies the method request\'s HTTP method type.
putMethod_httpMethod :: Lens.Lens' PutMethod Prelude.Text
putMethod_httpMethod = Lens.lens (\PutMethod' {httpMethod} -> httpMethod) (\s@PutMethod' {} a -> s {httpMethod = a} :: PutMethod)

-- | The method\'s authorization type. Valid values are @NONE@ for open
-- access, @AWS_IAM@ for using AWS IAM permissions, @CUSTOM@ for using a
-- custom authorizer, or @COGNITO_USER_POOLS@ for using a Cognito user
-- pool.
putMethod_authorizationType :: Lens.Lens' PutMethod Prelude.Text
putMethod_authorizationType = Lens.lens (\PutMethod' {authorizationType} -> authorizationType) (\s@PutMethod' {} a -> s {authorizationType = a} :: PutMethod)

instance Core.AWSRequest PutMethod where
  type AWSResponse PutMethod = Method
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.AWSService PutMethod where
  service _proxy = defaultService

instance Prelude.Hashable PutMethod where
  hashWithSalt _salt PutMethod' {..} =
    _salt `Prelude.hashWithSalt` requestModels
      `Prelude.hashWithSalt` requestParameters
      `Prelude.hashWithSalt` apiKeyRequired
      `Prelude.hashWithSalt` requestValidatorId
      `Prelude.hashWithSalt` authorizationScopes
      `Prelude.hashWithSalt` operationName
      `Prelude.hashWithSalt` authorizerId
      `Prelude.hashWithSalt` restApiId
      `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` httpMethod
      `Prelude.hashWithSalt` authorizationType

instance Prelude.NFData PutMethod where
  rnf PutMethod' {..} =
    Prelude.rnf requestModels
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf apiKeyRequired
      `Prelude.seq` Prelude.rnf requestValidatorId
      `Prelude.seq` Prelude.rnf authorizationScopes
      `Prelude.seq` Prelude.rnf operationName
      `Prelude.seq` Prelude.rnf authorizerId
      `Prelude.seq` Prelude.rnf restApiId
      `Prelude.seq` Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf httpMethod
      `Prelude.seq` Prelude.rnf authorizationType

instance Core.ToHeaders PutMethod where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToJSON PutMethod where
  toJSON PutMethod' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("requestModels" Core..=) Prelude.<$> requestModels,
            ("requestParameters" Core..=)
              Prelude.<$> requestParameters,
            ("apiKeyRequired" Core..=)
              Prelude.<$> apiKeyRequired,
            ("requestValidatorId" Core..=)
              Prelude.<$> requestValidatorId,
            ("authorizationScopes" Core..=)
              Prelude.<$> authorizationScopes,
            ("operationName" Core..=) Prelude.<$> operationName,
            ("authorizerId" Core..=) Prelude.<$> authorizerId,
            Prelude.Just
              ("authorizationType" Core..= authorizationType)
          ]
      )

instance Core.ToPath PutMethod where
  toPath PutMethod' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/resources/",
        Core.toBS resourceId,
        "/methods/",
        Core.toBS httpMethod
      ]

instance Core.ToQuery PutMethod where
  toQuery = Prelude.const Prelude.mempty

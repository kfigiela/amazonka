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
-- Module      : Amazonka.ApiGatewayV2.CreateAuthorizer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Authorizer for an API.
module Amazonka.ApiGatewayV2.CreateAuthorizer
  ( -- * Creating a Request
    CreateAuthorizer (..),
    newCreateAuthorizer,

    -- * Request Lenses
    createAuthorizer_authorizerCredentialsArn,
    createAuthorizer_authorizerResultTtlInSeconds,
    createAuthorizer_jwtConfiguration,
    createAuthorizer_identityValidationExpression,
    createAuthorizer_authorizerUri,
    createAuthorizer_enableSimpleResponses,
    createAuthorizer_authorizerPayloadFormatVersion,
    createAuthorizer_apiId,
    createAuthorizer_authorizerType,
    createAuthorizer_identitySource,
    createAuthorizer_name,

    -- * Destructuring the Response
    CreateAuthorizerResponse (..),
    newCreateAuthorizerResponse,

    -- * Response Lenses
    createAuthorizerResponse_name,
    createAuthorizerResponse_authorizerCredentialsArn,
    createAuthorizerResponse_identitySource,
    createAuthorizerResponse_authorizerResultTtlInSeconds,
    createAuthorizerResponse_jwtConfiguration,
    createAuthorizerResponse_identityValidationExpression,
    createAuthorizerResponse_authorizerUri,
    createAuthorizerResponse_authorizerType,
    createAuthorizerResponse_enableSimpleResponses,
    createAuthorizerResponse_authorizerId,
    createAuthorizerResponse_authorizerPayloadFormatVersion,
    createAuthorizerResponse_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Creates a new Authorizer resource to represent an authorizer.
--
-- /See:/ 'newCreateAuthorizer' smart constructor.
data CreateAuthorizer = CreateAuthorizer'
  { -- | Specifies the required credentials as an IAM role for API Gateway to
    -- invoke the authorizer. To specify an IAM role for API Gateway to assume,
    -- use the role\'s Amazon Resource Name (ARN). To use resource-based
    -- permissions on the Lambda function, don\'t specify this parameter.
    -- Supported only for REQUEST authorizers.
    authorizerCredentialsArn :: Prelude.Maybe Prelude.Text,
    -- | The time to live (TTL) for cached authorizer results, in seconds. If it
    -- equals 0, authorization caching is disabled. If it is greater than 0,
    -- API Gateway caches authorizer responses. The maximum value is 3600, or 1
    -- hour. Supported only for HTTP API Lambda authorizers.
    authorizerResultTtlInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Represents the configuration of a JWT authorizer. Required for the JWT
    -- authorizer type. Supported only for HTTP APIs.
    jwtConfiguration :: Prelude.Maybe JWTConfiguration,
    -- | This parameter is not used.
    identityValidationExpression :: Prelude.Maybe Prelude.Text,
    -- | The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
    -- authorizers, this must be a well-formed Lambda function URI, for
    -- example,
    -- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
    -- In general, the URI has this form:
    -- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
    -- is the same as the region hosting the Lambda function, path indicates
    -- that the remaining substring in the URI should be treated as the path to
    -- the resource, including the initial \/. For Lambda functions, this is
    -- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
    -- Supported only for REQUEST authorizers.
    authorizerUri :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether a Lambda authorizer returns a response in a simple
    -- format. By default, a Lambda authorizer must return an IAM policy. If
    -- enabled, the Lambda authorizer can return a boolean value instead of an
    -- IAM policy. Supported only for HTTP APIs. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
    enableSimpleResponses :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the format of the payload sent to an HTTP API Lambda
    -- authorizer. Required for HTTP API Lambda authorizers. Supported values
    -- are 1.0 and 2.0. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
    authorizerPayloadFormatVersion :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The authorizer type. Specify REQUEST for a Lambda function using
    -- incoming request parameters. Specify JWT to use JSON Web Tokens
    -- (supported only for HTTP APIs).
    authorizerType :: AuthorizerType,
    -- | The identity source for which authorization is requested.
    --
    -- For a REQUEST authorizer, this is optional. The value is a set of one or
    -- more mapping expressions of the specified request parameters. The
    -- identity source can be headers, query string parameters, stage
    -- variables, and context parameters. For example, if an Auth header and a
    -- Name query string parameter are defined as identity sources, this value
    -- is route.request.header.Auth, route.request.querystring.Name for
    -- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
    -- \$, for example, $request.header.Auth, $request.querystring.Name. These
    -- parameters are used to perform runtime validation for Lambda-based
    -- authorizers by verifying all of the identity-related request parameters
    -- are present in the request, not null, and non-empty. Only when this is
    -- true does the authorizer invoke the authorizer Lambda function.
    -- Otherwise, it returns a 401 Unauthorized response without calling the
    -- Lambda function. For HTTP APIs, identity sources are also used as the
    -- cache key when caching is enabled. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
    --
    -- For JWT, a single entry that specifies where to extract the JSON Web
    -- Token (JWT) from inbound requests. Currently only header-based and query
    -- parameter-based selections are supported, for example
    -- \$request.header.Authorization.
    identitySource :: [Prelude.Text],
    -- | The name of the authorizer.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAuthorizer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authorizerCredentialsArn', 'createAuthorizer_authorizerCredentialsArn' - Specifies the required credentials as an IAM role for API Gateway to
-- invoke the authorizer. To specify an IAM role for API Gateway to assume,
-- use the role\'s Amazon Resource Name (ARN). To use resource-based
-- permissions on the Lambda function, don\'t specify this parameter.
-- Supported only for REQUEST authorizers.
--
-- 'authorizerResultTtlInSeconds', 'createAuthorizer_authorizerResultTtlInSeconds' - The time to live (TTL) for cached authorizer results, in seconds. If it
-- equals 0, authorization caching is disabled. If it is greater than 0,
-- API Gateway caches authorizer responses. The maximum value is 3600, or 1
-- hour. Supported only for HTTP API Lambda authorizers.
--
-- 'jwtConfiguration', 'createAuthorizer_jwtConfiguration' - Represents the configuration of a JWT authorizer. Required for the JWT
-- authorizer type. Supported only for HTTP APIs.
--
-- 'identityValidationExpression', 'createAuthorizer_identityValidationExpression' - This parameter is not used.
--
-- 'authorizerUri', 'createAuthorizer_authorizerUri' - The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
-- authorizers, this must be a well-formed Lambda function URI, for
-- example,
-- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
-- In general, the URI has this form:
-- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
-- is the same as the region hosting the Lambda function, path indicates
-- that the remaining substring in the URI should be treated as the path to
-- the resource, including the initial \/. For Lambda functions, this is
-- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
-- Supported only for REQUEST authorizers.
--
-- 'enableSimpleResponses', 'createAuthorizer_enableSimpleResponses' - Specifies whether a Lambda authorizer returns a response in a simple
-- format. By default, a Lambda authorizer must return an IAM policy. If
-- enabled, the Lambda authorizer can return a boolean value instead of an
-- IAM policy. Supported only for HTTP APIs. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
--
-- 'authorizerPayloadFormatVersion', 'createAuthorizer_authorizerPayloadFormatVersion' - Specifies the format of the payload sent to an HTTP API Lambda
-- authorizer. Required for HTTP API Lambda authorizers. Supported values
-- are 1.0 and 2.0. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- 'apiId', 'createAuthorizer_apiId' - The API identifier.
--
-- 'authorizerType', 'createAuthorizer_authorizerType' - The authorizer type. Specify REQUEST for a Lambda function using
-- incoming request parameters. Specify JWT to use JSON Web Tokens
-- (supported only for HTTP APIs).
--
-- 'identitySource', 'createAuthorizer_identitySource' - The identity source for which authorization is requested.
--
-- For a REQUEST authorizer, this is optional. The value is a set of one or
-- more mapping expressions of the specified request parameters. The
-- identity source can be headers, query string parameters, stage
-- variables, and context parameters. For example, if an Auth header and a
-- Name query string parameter are defined as identity sources, this value
-- is route.request.header.Auth, route.request.querystring.Name for
-- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
-- \$, for example, $request.header.Auth, $request.querystring.Name. These
-- parameters are used to perform runtime validation for Lambda-based
-- authorizers by verifying all of the identity-related request parameters
-- are present in the request, not null, and non-empty. Only when this is
-- true does the authorizer invoke the authorizer Lambda function.
-- Otherwise, it returns a 401 Unauthorized response without calling the
-- Lambda function. For HTTP APIs, identity sources are also used as the
-- cache key when caching is enabled. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- For JWT, a single entry that specifies where to extract the JSON Web
-- Token (JWT) from inbound requests. Currently only header-based and query
-- parameter-based selections are supported, for example
-- \$request.header.Authorization.
--
-- 'name', 'createAuthorizer_name' - The name of the authorizer.
newCreateAuthorizer ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'authorizerType'
  AuthorizerType ->
  -- | 'name'
  Prelude.Text ->
  CreateAuthorizer
newCreateAuthorizer pApiId_ pAuthorizerType_ pName_ =
  CreateAuthorizer'
    { authorizerCredentialsArn =
        Prelude.Nothing,
      authorizerResultTtlInSeconds = Prelude.Nothing,
      jwtConfiguration = Prelude.Nothing,
      identityValidationExpression = Prelude.Nothing,
      authorizerUri = Prelude.Nothing,
      enableSimpleResponses = Prelude.Nothing,
      authorizerPayloadFormatVersion = Prelude.Nothing,
      apiId = pApiId_,
      authorizerType = pAuthorizerType_,
      identitySource = Prelude.mempty,
      name = pName_
    }

-- | Specifies the required credentials as an IAM role for API Gateway to
-- invoke the authorizer. To specify an IAM role for API Gateway to assume,
-- use the role\'s Amazon Resource Name (ARN). To use resource-based
-- permissions on the Lambda function, don\'t specify this parameter.
-- Supported only for REQUEST authorizers.
createAuthorizer_authorizerCredentialsArn :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Text)
createAuthorizer_authorizerCredentialsArn = Lens.lens (\CreateAuthorizer' {authorizerCredentialsArn} -> authorizerCredentialsArn) (\s@CreateAuthorizer' {} a -> s {authorizerCredentialsArn = a} :: CreateAuthorizer)

-- | The time to live (TTL) for cached authorizer results, in seconds. If it
-- equals 0, authorization caching is disabled. If it is greater than 0,
-- API Gateway caches authorizer responses. The maximum value is 3600, or 1
-- hour. Supported only for HTTP API Lambda authorizers.
createAuthorizer_authorizerResultTtlInSeconds :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Natural)
createAuthorizer_authorizerResultTtlInSeconds = Lens.lens (\CreateAuthorizer' {authorizerResultTtlInSeconds} -> authorizerResultTtlInSeconds) (\s@CreateAuthorizer' {} a -> s {authorizerResultTtlInSeconds = a} :: CreateAuthorizer)

-- | Represents the configuration of a JWT authorizer. Required for the JWT
-- authorizer type. Supported only for HTTP APIs.
createAuthorizer_jwtConfiguration :: Lens.Lens' CreateAuthorizer (Prelude.Maybe JWTConfiguration)
createAuthorizer_jwtConfiguration = Lens.lens (\CreateAuthorizer' {jwtConfiguration} -> jwtConfiguration) (\s@CreateAuthorizer' {} a -> s {jwtConfiguration = a} :: CreateAuthorizer)

-- | This parameter is not used.
createAuthorizer_identityValidationExpression :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Text)
createAuthorizer_identityValidationExpression = Lens.lens (\CreateAuthorizer' {identityValidationExpression} -> identityValidationExpression) (\s@CreateAuthorizer' {} a -> s {identityValidationExpression = a} :: CreateAuthorizer)

-- | The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
-- authorizers, this must be a well-formed Lambda function URI, for
-- example,
-- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
-- In general, the URI has this form:
-- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
-- is the same as the region hosting the Lambda function, path indicates
-- that the remaining substring in the URI should be treated as the path to
-- the resource, including the initial \/. For Lambda functions, this is
-- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
-- Supported only for REQUEST authorizers.
createAuthorizer_authorizerUri :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Text)
createAuthorizer_authorizerUri = Lens.lens (\CreateAuthorizer' {authorizerUri} -> authorizerUri) (\s@CreateAuthorizer' {} a -> s {authorizerUri = a} :: CreateAuthorizer)

-- | Specifies whether a Lambda authorizer returns a response in a simple
-- format. By default, a Lambda authorizer must return an IAM policy. If
-- enabled, the Lambda authorizer can return a boolean value instead of an
-- IAM policy. Supported only for HTTP APIs. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
createAuthorizer_enableSimpleResponses :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Bool)
createAuthorizer_enableSimpleResponses = Lens.lens (\CreateAuthorizer' {enableSimpleResponses} -> enableSimpleResponses) (\s@CreateAuthorizer' {} a -> s {enableSimpleResponses = a} :: CreateAuthorizer)

-- | Specifies the format of the payload sent to an HTTP API Lambda
-- authorizer. Required for HTTP API Lambda authorizers. Supported values
-- are 1.0 and 2.0. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
createAuthorizer_authorizerPayloadFormatVersion :: Lens.Lens' CreateAuthorizer (Prelude.Maybe Prelude.Text)
createAuthorizer_authorizerPayloadFormatVersion = Lens.lens (\CreateAuthorizer' {authorizerPayloadFormatVersion} -> authorizerPayloadFormatVersion) (\s@CreateAuthorizer' {} a -> s {authorizerPayloadFormatVersion = a} :: CreateAuthorizer)

-- | The API identifier.
createAuthorizer_apiId :: Lens.Lens' CreateAuthorizer Prelude.Text
createAuthorizer_apiId = Lens.lens (\CreateAuthorizer' {apiId} -> apiId) (\s@CreateAuthorizer' {} a -> s {apiId = a} :: CreateAuthorizer)

-- | The authorizer type. Specify REQUEST for a Lambda function using
-- incoming request parameters. Specify JWT to use JSON Web Tokens
-- (supported only for HTTP APIs).
createAuthorizer_authorizerType :: Lens.Lens' CreateAuthorizer AuthorizerType
createAuthorizer_authorizerType = Lens.lens (\CreateAuthorizer' {authorizerType} -> authorizerType) (\s@CreateAuthorizer' {} a -> s {authorizerType = a} :: CreateAuthorizer)

-- | The identity source for which authorization is requested.
--
-- For a REQUEST authorizer, this is optional. The value is a set of one or
-- more mapping expressions of the specified request parameters. The
-- identity source can be headers, query string parameters, stage
-- variables, and context parameters. For example, if an Auth header and a
-- Name query string parameter are defined as identity sources, this value
-- is route.request.header.Auth, route.request.querystring.Name for
-- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
-- \$, for example, $request.header.Auth, $request.querystring.Name. These
-- parameters are used to perform runtime validation for Lambda-based
-- authorizers by verifying all of the identity-related request parameters
-- are present in the request, not null, and non-empty. Only when this is
-- true does the authorizer invoke the authorizer Lambda function.
-- Otherwise, it returns a 401 Unauthorized response without calling the
-- Lambda function. For HTTP APIs, identity sources are also used as the
-- cache key when caching is enabled. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- For JWT, a single entry that specifies where to extract the JSON Web
-- Token (JWT) from inbound requests. Currently only header-based and query
-- parameter-based selections are supported, for example
-- \$request.header.Authorization.
createAuthorizer_identitySource :: Lens.Lens' CreateAuthorizer [Prelude.Text]
createAuthorizer_identitySource = Lens.lens (\CreateAuthorizer' {identitySource} -> identitySource) (\s@CreateAuthorizer' {} a -> s {identitySource = a} :: CreateAuthorizer) Prelude.. Lens.coerced

-- | The name of the authorizer.
createAuthorizer_name :: Lens.Lens' CreateAuthorizer Prelude.Text
createAuthorizer_name = Lens.lens (\CreateAuthorizer' {name} -> name) (\s@CreateAuthorizer' {} a -> s {name = a} :: CreateAuthorizer)

instance Core.AWSRequest CreateAuthorizer where
  type
    AWSResponse CreateAuthorizer =
      CreateAuthorizerResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAuthorizerResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "authorizerCredentialsArn")
            Prelude.<*> (x Core..?> "identitySource" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "authorizerResultTtlInSeconds")
            Prelude.<*> (x Core..?> "jwtConfiguration")
            Prelude.<*> (x Core..?> "identityValidationExpression")
            Prelude.<*> (x Core..?> "authorizerUri")
            Prelude.<*> (x Core..?> "authorizerType")
            Prelude.<*> (x Core..?> "enableSimpleResponses")
            Prelude.<*> (x Core..?> "authorizerId")
            Prelude.<*> (x Core..?> "authorizerPayloadFormatVersion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAuthorizer where
  hashWithSalt _salt CreateAuthorizer' {..} =
    _salt
      `Prelude.hashWithSalt` authorizerCredentialsArn
      `Prelude.hashWithSalt` authorizerResultTtlInSeconds
      `Prelude.hashWithSalt` jwtConfiguration
      `Prelude.hashWithSalt` identityValidationExpression
      `Prelude.hashWithSalt` authorizerUri
      `Prelude.hashWithSalt` enableSimpleResponses
      `Prelude.hashWithSalt` authorizerPayloadFormatVersion
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` authorizerType
      `Prelude.hashWithSalt` identitySource
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateAuthorizer where
  rnf CreateAuthorizer' {..} =
    Prelude.rnf authorizerCredentialsArn
      `Prelude.seq` Prelude.rnf authorizerResultTtlInSeconds
      `Prelude.seq` Prelude.rnf jwtConfiguration
      `Prelude.seq` Prelude.rnf identityValidationExpression
      `Prelude.seq` Prelude.rnf authorizerUri
      `Prelude.seq` Prelude.rnf enableSimpleResponses
      `Prelude.seq` Prelude.rnf authorizerPayloadFormatVersion
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf authorizerType
      `Prelude.seq` Prelude.rnf identitySource
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateAuthorizer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAuthorizer where
  toJSON CreateAuthorizer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("authorizerCredentialsArn" Core..=)
              Prelude.<$> authorizerCredentialsArn,
            ("authorizerResultTtlInSeconds" Core..=)
              Prelude.<$> authorizerResultTtlInSeconds,
            ("jwtConfiguration" Core..=)
              Prelude.<$> jwtConfiguration,
            ("identityValidationExpression" Core..=)
              Prelude.<$> identityValidationExpression,
            ("authorizerUri" Core..=) Prelude.<$> authorizerUri,
            ("enableSimpleResponses" Core..=)
              Prelude.<$> enableSimpleResponses,
            ("authorizerPayloadFormatVersion" Core..=)
              Prelude.<$> authorizerPayloadFormatVersion,
            Prelude.Just
              ("authorizerType" Core..= authorizerType),
            Prelude.Just
              ("identitySource" Core..= identitySource),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateAuthorizer where
  toPath CreateAuthorizer' {..} =
    Prelude.mconcat
      ["/v2/apis/", Core.toBS apiId, "/authorizers"]

instance Core.ToQuery CreateAuthorizer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAuthorizerResponse' smart constructor.
data CreateAuthorizerResponse = CreateAuthorizerResponse'
  { -- | The name of the authorizer.
    name :: Prelude.Maybe Prelude.Text,
    -- | Specifies the required credentials as an IAM role for API Gateway to
    -- invoke the authorizer. To specify an IAM role for API Gateway to assume,
    -- use the role\'s Amazon Resource Name (ARN). To use resource-based
    -- permissions on the Lambda function, don\'t specify this parameter.
    -- Supported only for REQUEST authorizers.
    authorizerCredentialsArn :: Prelude.Maybe Prelude.Text,
    -- | The identity source for which authorization is requested.
    --
    -- For a REQUEST authorizer, this is optional. The value is a set of one or
    -- more mapping expressions of the specified request parameters. The
    -- identity source can be headers, query string parameters, stage
    -- variables, and context parameters. For example, if an Auth header and a
    -- Name query string parameter are defined as identity sources, this value
    -- is route.request.header.Auth, route.request.querystring.Name for
    -- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
    -- \$, for example, $request.header.Auth, $request.querystring.Name. These
    -- parameters are used to perform runtime validation for Lambda-based
    -- authorizers by verifying all of the identity-related request parameters
    -- are present in the request, not null, and non-empty. Only when this is
    -- true does the authorizer invoke the authorizer Lambda function.
    -- Otherwise, it returns a 401 Unauthorized response without calling the
    -- Lambda function. For HTTP APIs, identity sources are also used as the
    -- cache key when caching is enabled. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
    --
    -- For JWT, a single entry that specifies where to extract the JSON Web
    -- Token (JWT) from inbound requests. Currently only header-based and query
    -- parameter-based selections are supported, for example
    -- \$request.header.Authorization.
    identitySource :: Prelude.Maybe [Prelude.Text],
    -- | The time to live (TTL) for cached authorizer results, in seconds. If it
    -- equals 0, authorization caching is disabled. If it is greater than 0,
    -- API Gateway caches authorizer responses. The maximum value is 3600, or 1
    -- hour. Supported only for HTTP API Lambda authorizers.
    authorizerResultTtlInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Represents the configuration of a JWT authorizer. Required for the JWT
    -- authorizer type. Supported only for HTTP APIs.
    jwtConfiguration :: Prelude.Maybe JWTConfiguration,
    -- | The validation expression does not apply to the REQUEST authorizer.
    identityValidationExpression :: Prelude.Maybe Prelude.Text,
    -- | The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
    -- authorizers, this must be a well-formed Lambda function URI, for
    -- example,
    -- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
    -- In general, the URI has this form:
    -- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
    -- is the same as the region hosting the Lambda function, path indicates
    -- that the remaining substring in the URI should be treated as the path to
    -- the resource, including the initial \/. For Lambda functions, this is
    -- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
    -- Supported only for REQUEST authorizers.
    authorizerUri :: Prelude.Maybe Prelude.Text,
    -- | The authorizer type. Specify REQUEST for a Lambda function using
    -- incoming request parameters. Specify JWT to use JSON Web Tokens
    -- (supported only for HTTP APIs).
    authorizerType :: Prelude.Maybe AuthorizerType,
    -- | Specifies whether a Lambda authorizer returns a response in a simple
    -- format. If enabled, the Lambda authorizer can return a boolean value
    -- instead of an IAM policy. Supported only for HTTP APIs. To learn more,
    -- see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
    enableSimpleResponses :: Prelude.Maybe Prelude.Bool,
    -- | The authorizer identifier.
    authorizerId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the format of the payload sent to an HTTP API Lambda
    -- authorizer. Required for HTTP API Lambda authorizers. Supported values
    -- are 1.0 and 2.0. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
    authorizerPayloadFormatVersion :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAuthorizerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createAuthorizerResponse_name' - The name of the authorizer.
--
-- 'authorizerCredentialsArn', 'createAuthorizerResponse_authorizerCredentialsArn' - Specifies the required credentials as an IAM role for API Gateway to
-- invoke the authorizer. To specify an IAM role for API Gateway to assume,
-- use the role\'s Amazon Resource Name (ARN). To use resource-based
-- permissions on the Lambda function, don\'t specify this parameter.
-- Supported only for REQUEST authorizers.
--
-- 'identitySource', 'createAuthorizerResponse_identitySource' - The identity source for which authorization is requested.
--
-- For a REQUEST authorizer, this is optional. The value is a set of one or
-- more mapping expressions of the specified request parameters. The
-- identity source can be headers, query string parameters, stage
-- variables, and context parameters. For example, if an Auth header and a
-- Name query string parameter are defined as identity sources, this value
-- is route.request.header.Auth, route.request.querystring.Name for
-- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
-- \$, for example, $request.header.Auth, $request.querystring.Name. These
-- parameters are used to perform runtime validation for Lambda-based
-- authorizers by verifying all of the identity-related request parameters
-- are present in the request, not null, and non-empty. Only when this is
-- true does the authorizer invoke the authorizer Lambda function.
-- Otherwise, it returns a 401 Unauthorized response without calling the
-- Lambda function. For HTTP APIs, identity sources are also used as the
-- cache key when caching is enabled. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- For JWT, a single entry that specifies where to extract the JSON Web
-- Token (JWT) from inbound requests. Currently only header-based and query
-- parameter-based selections are supported, for example
-- \$request.header.Authorization.
--
-- 'authorizerResultTtlInSeconds', 'createAuthorizerResponse_authorizerResultTtlInSeconds' - The time to live (TTL) for cached authorizer results, in seconds. If it
-- equals 0, authorization caching is disabled. If it is greater than 0,
-- API Gateway caches authorizer responses. The maximum value is 3600, or 1
-- hour. Supported only for HTTP API Lambda authorizers.
--
-- 'jwtConfiguration', 'createAuthorizerResponse_jwtConfiguration' - Represents the configuration of a JWT authorizer. Required for the JWT
-- authorizer type. Supported only for HTTP APIs.
--
-- 'identityValidationExpression', 'createAuthorizerResponse_identityValidationExpression' - The validation expression does not apply to the REQUEST authorizer.
--
-- 'authorizerUri', 'createAuthorizerResponse_authorizerUri' - The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
-- authorizers, this must be a well-formed Lambda function URI, for
-- example,
-- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
-- In general, the URI has this form:
-- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
-- is the same as the region hosting the Lambda function, path indicates
-- that the remaining substring in the URI should be treated as the path to
-- the resource, including the initial \/. For Lambda functions, this is
-- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
-- Supported only for REQUEST authorizers.
--
-- 'authorizerType', 'createAuthorizerResponse_authorizerType' - The authorizer type. Specify REQUEST for a Lambda function using
-- incoming request parameters. Specify JWT to use JSON Web Tokens
-- (supported only for HTTP APIs).
--
-- 'enableSimpleResponses', 'createAuthorizerResponse_enableSimpleResponses' - Specifies whether a Lambda authorizer returns a response in a simple
-- format. If enabled, the Lambda authorizer can return a boolean value
-- instead of an IAM policy. Supported only for HTTP APIs. To learn more,
-- see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
--
-- 'authorizerId', 'createAuthorizerResponse_authorizerId' - The authorizer identifier.
--
-- 'authorizerPayloadFormatVersion', 'createAuthorizerResponse_authorizerPayloadFormatVersion' - Specifies the format of the payload sent to an HTTP API Lambda
-- authorizer. Required for HTTP API Lambda authorizers. Supported values
-- are 1.0 and 2.0. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- 'httpStatus', 'createAuthorizerResponse_httpStatus' - The response's http status code.
newCreateAuthorizerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAuthorizerResponse
newCreateAuthorizerResponse pHttpStatus_ =
  CreateAuthorizerResponse'
    { name = Prelude.Nothing,
      authorizerCredentialsArn = Prelude.Nothing,
      identitySource = Prelude.Nothing,
      authorizerResultTtlInSeconds = Prelude.Nothing,
      jwtConfiguration = Prelude.Nothing,
      identityValidationExpression = Prelude.Nothing,
      authorizerUri = Prelude.Nothing,
      authorizerType = Prelude.Nothing,
      enableSimpleResponses = Prelude.Nothing,
      authorizerId = Prelude.Nothing,
      authorizerPayloadFormatVersion = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the authorizer.
createAuthorizerResponse_name :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_name = Lens.lens (\CreateAuthorizerResponse' {name} -> name) (\s@CreateAuthorizerResponse' {} a -> s {name = a} :: CreateAuthorizerResponse)

-- | Specifies the required credentials as an IAM role for API Gateway to
-- invoke the authorizer. To specify an IAM role for API Gateway to assume,
-- use the role\'s Amazon Resource Name (ARN). To use resource-based
-- permissions on the Lambda function, don\'t specify this parameter.
-- Supported only for REQUEST authorizers.
createAuthorizerResponse_authorizerCredentialsArn :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_authorizerCredentialsArn = Lens.lens (\CreateAuthorizerResponse' {authorizerCredentialsArn} -> authorizerCredentialsArn) (\s@CreateAuthorizerResponse' {} a -> s {authorizerCredentialsArn = a} :: CreateAuthorizerResponse)

-- | The identity source for which authorization is requested.
--
-- For a REQUEST authorizer, this is optional. The value is a set of one or
-- more mapping expressions of the specified request parameters. The
-- identity source can be headers, query string parameters, stage
-- variables, and context parameters. For example, if an Auth header and a
-- Name query string parameter are defined as identity sources, this value
-- is route.request.header.Auth, route.request.querystring.Name for
-- WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
-- \$, for example, $request.header.Auth, $request.querystring.Name. These
-- parameters are used to perform runtime validation for Lambda-based
-- authorizers by verifying all of the identity-related request parameters
-- are present in the request, not null, and non-empty. Only when this is
-- true does the authorizer invoke the authorizer Lambda function.
-- Otherwise, it returns a 401 Unauthorized response without calling the
-- Lambda function. For HTTP APIs, identity sources are also used as the
-- cache key when caching is enabled. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
--
-- For JWT, a single entry that specifies where to extract the JSON Web
-- Token (JWT) from inbound requests. Currently only header-based and query
-- parameter-based selections are supported, for example
-- \$request.header.Authorization.
createAuthorizerResponse_identitySource :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe [Prelude.Text])
createAuthorizerResponse_identitySource = Lens.lens (\CreateAuthorizerResponse' {identitySource} -> identitySource) (\s@CreateAuthorizerResponse' {} a -> s {identitySource = a} :: CreateAuthorizerResponse) Prelude.. Lens.mapping Lens.coerced

-- | The time to live (TTL) for cached authorizer results, in seconds. If it
-- equals 0, authorization caching is disabled. If it is greater than 0,
-- API Gateway caches authorizer responses. The maximum value is 3600, or 1
-- hour. Supported only for HTTP API Lambda authorizers.
createAuthorizerResponse_authorizerResultTtlInSeconds :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Natural)
createAuthorizerResponse_authorizerResultTtlInSeconds = Lens.lens (\CreateAuthorizerResponse' {authorizerResultTtlInSeconds} -> authorizerResultTtlInSeconds) (\s@CreateAuthorizerResponse' {} a -> s {authorizerResultTtlInSeconds = a} :: CreateAuthorizerResponse)

-- | Represents the configuration of a JWT authorizer. Required for the JWT
-- authorizer type. Supported only for HTTP APIs.
createAuthorizerResponse_jwtConfiguration :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe JWTConfiguration)
createAuthorizerResponse_jwtConfiguration = Lens.lens (\CreateAuthorizerResponse' {jwtConfiguration} -> jwtConfiguration) (\s@CreateAuthorizerResponse' {} a -> s {jwtConfiguration = a} :: CreateAuthorizerResponse)

-- | The validation expression does not apply to the REQUEST authorizer.
createAuthorizerResponse_identityValidationExpression :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_identityValidationExpression = Lens.lens (\CreateAuthorizerResponse' {identityValidationExpression} -> identityValidationExpression) (\s@CreateAuthorizerResponse' {} a -> s {identityValidationExpression = a} :: CreateAuthorizerResponse)

-- | The authorizer\'s Uniform Resource Identifier (URI). For REQUEST
-- authorizers, this must be a well-formed Lambda function URI, for
-- example,
-- arn:aws:apigateway:us-west-2:lambda:path\/2015-03-31\/functions\/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}\/invocations.
-- In general, the URI has this form:
-- arn:aws:apigateway:{region}:lambda:path\/{service_api} , where {region}
-- is the same as the region hosting the Lambda function, path indicates
-- that the remaining substring in the URI should be treated as the path to
-- the resource, including the initial \/. For Lambda functions, this is
-- usually of the form \/2015-03-31\/functions\/[FunctionARN]\/invocations.
-- Supported only for REQUEST authorizers.
createAuthorizerResponse_authorizerUri :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_authorizerUri = Lens.lens (\CreateAuthorizerResponse' {authorizerUri} -> authorizerUri) (\s@CreateAuthorizerResponse' {} a -> s {authorizerUri = a} :: CreateAuthorizerResponse)

-- | The authorizer type. Specify REQUEST for a Lambda function using
-- incoming request parameters. Specify JWT to use JSON Web Tokens
-- (supported only for HTTP APIs).
createAuthorizerResponse_authorizerType :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe AuthorizerType)
createAuthorizerResponse_authorizerType = Lens.lens (\CreateAuthorizerResponse' {authorizerType} -> authorizerType) (\s@CreateAuthorizerResponse' {} a -> s {authorizerType = a} :: CreateAuthorizerResponse)

-- | Specifies whether a Lambda authorizer returns a response in a simple
-- format. If enabled, the Lambda authorizer can return a boolean value
-- instead of an IAM policy. Supported only for HTTP APIs. To learn more,
-- see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>
createAuthorizerResponse_enableSimpleResponses :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Bool)
createAuthorizerResponse_enableSimpleResponses = Lens.lens (\CreateAuthorizerResponse' {enableSimpleResponses} -> enableSimpleResponses) (\s@CreateAuthorizerResponse' {} a -> s {enableSimpleResponses = a} :: CreateAuthorizerResponse)

-- | The authorizer identifier.
createAuthorizerResponse_authorizerId :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_authorizerId = Lens.lens (\CreateAuthorizerResponse' {authorizerId} -> authorizerId) (\s@CreateAuthorizerResponse' {} a -> s {authorizerId = a} :: CreateAuthorizerResponse)

-- | Specifies the format of the payload sent to an HTTP API Lambda
-- authorizer. Required for HTTP API Lambda authorizers. Supported values
-- are 1.0 and 2.0. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html Working with AWS Lambda authorizers for HTTP APIs>.
createAuthorizerResponse_authorizerPayloadFormatVersion :: Lens.Lens' CreateAuthorizerResponse (Prelude.Maybe Prelude.Text)
createAuthorizerResponse_authorizerPayloadFormatVersion = Lens.lens (\CreateAuthorizerResponse' {authorizerPayloadFormatVersion} -> authorizerPayloadFormatVersion) (\s@CreateAuthorizerResponse' {} a -> s {authorizerPayloadFormatVersion = a} :: CreateAuthorizerResponse)

-- | The response's http status code.
createAuthorizerResponse_httpStatus :: Lens.Lens' CreateAuthorizerResponse Prelude.Int
createAuthorizerResponse_httpStatus = Lens.lens (\CreateAuthorizerResponse' {httpStatus} -> httpStatus) (\s@CreateAuthorizerResponse' {} a -> s {httpStatus = a} :: CreateAuthorizerResponse)

instance Prelude.NFData CreateAuthorizerResponse where
  rnf CreateAuthorizerResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf authorizerCredentialsArn
      `Prelude.seq` Prelude.rnf identitySource
      `Prelude.seq` Prelude.rnf authorizerResultTtlInSeconds
      `Prelude.seq` Prelude.rnf jwtConfiguration
      `Prelude.seq` Prelude.rnf identityValidationExpression
      `Prelude.seq` Prelude.rnf authorizerUri
      `Prelude.seq` Prelude.rnf authorizerType
      `Prelude.seq` Prelude.rnf enableSimpleResponses
      `Prelude.seq` Prelude.rnf authorizerId
      `Prelude.seq` Prelude.rnf authorizerPayloadFormatVersion
      `Prelude.seq` Prelude.rnf httpStatus

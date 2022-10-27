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
-- Module      : Amazonka.ApiGatewayV2.CreateIntegration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Integration.
module Amazonka.ApiGatewayV2.CreateIntegration
  ( -- * Creating a Request
    CreateIntegration (..),
    newCreateIntegration,

    -- * Request Lenses
    createIntegration_credentialsArn,
    createIntegration_requestParameters,
    createIntegration_connectionType,
    createIntegration_tlsConfig,
    createIntegration_templateSelectionExpression,
    createIntegration_connectionId,
    createIntegration_description,
    createIntegration_integrationMethod,
    createIntegration_integrationUri,
    createIntegration_responseParameters,
    createIntegration_payloadFormatVersion,
    createIntegration_timeoutInMillis,
    createIntegration_contentHandlingStrategy,
    createIntegration_requestTemplates,
    createIntegration_passthroughBehavior,
    createIntegration_integrationSubtype,
    createIntegration_apiId,
    createIntegration_integrationType,

    -- * Destructuring the Response
    CreateIntegrationResponse' (..),
    newCreateIntegrationResponse',

    -- * Response Lenses
    createIntegrationResponse'_credentialsArn,
    createIntegrationResponse'_requestParameters,
    createIntegrationResponse'_connectionType,
    createIntegrationResponse'_tlsConfig,
    createIntegrationResponse'_templateSelectionExpression,
    createIntegrationResponse'_integrationResponseSelectionExpression,
    createIntegrationResponse'_connectionId,
    createIntegrationResponse'_description,
    createIntegrationResponse'_integrationMethod,
    createIntegrationResponse'_integrationUri,
    createIntegrationResponse'_integrationType,
    createIntegrationResponse'_responseParameters,
    createIntegrationResponse'_payloadFormatVersion,
    createIntegrationResponse'_timeoutInMillis,
    createIntegrationResponse'_integrationId,
    createIntegrationResponse'_contentHandlingStrategy,
    createIntegrationResponse'_requestTemplates,
    createIntegrationResponse'_apiGatewayManaged,
    createIntegrationResponse'_passthroughBehavior,
    createIntegrationResponse'_integrationSubtype,
    createIntegrationResponse'_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Creates a new Integration resource to represent an integration.
--
-- /See:/ 'newCreateIntegration' smart constructor.
data CreateIntegration = CreateIntegration'
  { -- | Specifies the credentials required for the integration, if any. For AWS
    -- integrations, three options are available. To specify an IAM Role for
    -- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
    -- require that the caller\'s identity be passed through from the request,
    -- specify the string arn:aws:iam::*:user\/*. To use resource-based
    -- permissions on supported AWS services, specify null.
    credentialsArn :: Prelude.Maybe Prelude.Text,
    -- | For WebSocket APIs, a key-value map specifying request parameters that
    -- are passed from the method request to the backend. The key is an
    -- integration request parameter name and the associated value is a method
    -- request parameter value or static value that must be enclosed within
    -- single quotes and pre-encoded as required by the backend. The method
    -- request parameter value must match the pattern of
    -- method.request.{location}.{name} , where {location} is querystring,
    -- path, or header; and {name} must be a valid and unique method request
    -- parameter name.
    --
    -- For HTTP API integrations with a specified integrationSubtype, request
    -- parameters are a key-value map specifying parameters that are passed to
    -- AWS_PROXY integrations. You can provide static values, or map request
    -- data, stage variables, or context variables that are evaluated at
    -- runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
    --
    -- For HTTP API integrations without a specified integrationSubtype request
    -- parameters are a key-value map specifying how to transform HTTP requests
    -- before sending them to the backend. The key should follow the pattern
    -- \<action>:\<header|querystring|path>.\<location> where action can be
    -- append, overwrite or remove. For values, you can provide static values,
    -- or map request data, stage variables, or context variables that are
    -- evaluated at runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The type of the network connection to the integration endpoint. Specify
    -- INTERNET for connections through the public routable internet or
    -- VPC_LINK for private connections between API Gateway and resources in a
    -- VPC. The default value is INTERNET.
    connectionType :: Prelude.Maybe ConnectionType,
    -- | The TLS configuration for a private integration. If you specify a TLS
    -- configuration, private integration traffic uses the HTTPS protocol.
    -- Supported only for HTTP APIs.
    tlsConfig :: Prelude.Maybe TlsConfigInput,
    -- | The template selection expression for the integration.
    templateSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The ID of the VPC link for a private integration. Supported only for
    -- HTTP APIs.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | The description of the integration.
    description :: Prelude.Maybe Prelude.Text,
    -- | Specifies the integration\'s HTTP method type.
    integrationMethod :: Prelude.Maybe Prelude.Text,
    -- | For a Lambda integration, specify the URI of a Lambda function.
    --
    -- For an HTTP integration, specify a fully-qualified URL.
    --
    -- For an HTTP API private integration, specify the ARN of an Application
    -- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
    -- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
    -- uses DiscoverInstances to identify resources. You can use query
    -- parameters to target specific resources. To learn more, see
    -- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
    -- For private integrations, all resources must be owned by the same AWS
    -- account.
    integrationUri :: Prelude.Maybe Prelude.Text,
    -- | Supported only for HTTP APIs. You use response parameters to transform
    -- the HTTP response from a backend integration before returning the
    -- response to clients. Specify a key-value map from a selection key to
    -- response parameters. The selection key must be a valid HTTP status code
    -- within the range of 200-599. Response parameters are a key-value map.
    -- The key must match pattern \<action>:\<header>.\<location> or
    -- overwrite.statuscode. The action can be append, overwrite or remove. The
    -- value can be a static value, or map to response data, stage variables,
    -- or context variables that are evaluated at runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
    responseParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Specifies the format of the payload sent to an integration. Required for
    -- HTTP APIs.
    payloadFormatVersion :: Prelude.Maybe Prelude.Text,
    -- | Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
    -- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
    -- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
    timeoutInMillis :: Prelude.Maybe Prelude.Natural,
    -- | Supported only for WebSocket APIs. Specifies how to handle response
    -- payload content type conversions. Supported values are CONVERT_TO_BINARY
    -- and CONVERT_TO_TEXT, with the following behaviors:
    --
    -- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
    -- string to the corresponding binary blob.
    --
    -- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
    -- Base64-encoded string.
    --
    -- If this property is not defined, the response payload will be passed
    -- through from the integration response to the route response or method
    -- response without modification.
    contentHandlingStrategy :: Prelude.Maybe ContentHandlingStrategy,
    -- | Represents a map of Velocity templates that are applied on the request
    -- payload based on the value of the Content-Type header sent by the
    -- client. The content type value is the key in this map, and the template
    -- (as a String) is the value. Supported only for WebSocket APIs.
    requestTemplates :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies the pass-through behavior for incoming requests based on the
    -- Content-Type header in the request, and the available mapping templates
    -- specified as the requestTemplates property on the Integration resource.
    -- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
    -- NEVER. Supported only for WebSocket APIs.
    --
    -- WHEN_NO_MATCH passes the request body for unmapped content types through
    -- to the integration backend without transformation.
    --
    -- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
    -- Type response.
    --
    -- WHEN_NO_TEMPLATES allows pass-through when the integration has no
    -- content types mapped to templates. However, if there is at least one
    -- content type defined, unmapped content types will be rejected with the
    -- same HTTP 415 Unsupported Media Type response.
    passthroughBehavior :: Prelude.Maybe PassthroughBehavior,
    -- | Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
    -- service action to invoke. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
    integrationSubtype :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The integration type of an integration. One of the following:
    --
    -- AWS: for integrating the route or method request with an AWS service
    -- action, including the Lambda function-invoking action. With the Lambda
    -- function-invoking action, this is referred to as the Lambda custom
    -- integration. With any other AWS service action, this is known as AWS
    -- integration. Supported only for WebSocket APIs.
    --
    -- AWS_PROXY: for integrating the route or method request with a Lambda
    -- function or other AWS service action. This integration is also referred
    -- to as a Lambda proxy integration.
    --
    -- HTTP: for integrating the route or method request with an HTTP endpoint.
    -- This integration is also referred to as the HTTP custom integration.
    -- Supported only for WebSocket APIs.
    --
    -- HTTP_PROXY: for integrating the route or method request with an HTTP
    -- endpoint, with the client request passed through as-is. This is also
    -- referred to as HTTP proxy integration. For HTTP API private
    -- integrations, use an HTTP_PROXY integration.
    --
    -- MOCK: for integrating the route or method request with API Gateway as a
    -- \"loopback\" endpoint without invoking any backend. Supported only for
    -- WebSocket APIs.
    integrationType :: IntegrationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIntegration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'credentialsArn', 'createIntegration_credentialsArn' - Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string arn:aws:iam::*:user\/*. To use resource-based
-- permissions on supported AWS services, specify null.
--
-- 'requestParameters', 'createIntegration_requestParameters' - For WebSocket APIs, a key-value map specifying request parameters that
-- are passed from the method request to the backend. The key is an
-- integration request parameter name and the associated value is a method
-- request parameter value or static value that must be enclosed within
-- single quotes and pre-encoded as required by the backend. The method
-- request parameter value must match the pattern of
-- method.request.{location}.{name} , where {location} is querystring,
-- path, or header; and {name} must be a valid and unique method request
-- parameter name.
--
-- For HTTP API integrations with a specified integrationSubtype, request
-- parameters are a key-value map specifying parameters that are passed to
-- AWS_PROXY integrations. You can provide static values, or map request
-- data, stage variables, or context variables that are evaluated at
-- runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
--
-- For HTTP API integrations without a specified integrationSubtype request
-- parameters are a key-value map specifying how to transform HTTP requests
-- before sending them to the backend. The key should follow the pattern
-- \<action>:\<header|querystring|path>.\<location> where action can be
-- append, overwrite or remove. For values, you can provide static values,
-- or map request data, stage variables, or context variables that are
-- evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
--
-- 'connectionType', 'createIntegration_connectionType' - The type of the network connection to the integration endpoint. Specify
-- INTERNET for connections through the public routable internet or
-- VPC_LINK for private connections between API Gateway and resources in a
-- VPC. The default value is INTERNET.
--
-- 'tlsConfig', 'createIntegration_tlsConfig' - The TLS configuration for a private integration. If you specify a TLS
-- configuration, private integration traffic uses the HTTPS protocol.
-- Supported only for HTTP APIs.
--
-- 'templateSelectionExpression', 'createIntegration_templateSelectionExpression' - The template selection expression for the integration.
--
-- 'connectionId', 'createIntegration_connectionId' - The ID of the VPC link for a private integration. Supported only for
-- HTTP APIs.
--
-- 'description', 'createIntegration_description' - The description of the integration.
--
-- 'integrationMethod', 'createIntegration_integrationMethod' - Specifies the integration\'s HTTP method type.
--
-- 'integrationUri', 'createIntegration_integrationUri' - For a Lambda integration, specify the URI of a Lambda function.
--
-- For an HTTP integration, specify a fully-qualified URL.
--
-- For an HTTP API private integration, specify the ARN of an Application
-- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
-- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
-- uses DiscoverInstances to identify resources. You can use query
-- parameters to target specific resources. To learn more, see
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
-- For private integrations, all resources must be owned by the same AWS
-- account.
--
-- 'responseParameters', 'createIntegration_responseParameters' - Supported only for HTTP APIs. You use response parameters to transform
-- the HTTP response from a backend integration before returning the
-- response to clients. Specify a key-value map from a selection key to
-- response parameters. The selection key must be a valid HTTP status code
-- within the range of 200-599. Response parameters are a key-value map.
-- The key must match pattern \<action>:\<header>.\<location> or
-- overwrite.statuscode. The action can be append, overwrite or remove. The
-- value can be a static value, or map to response data, stage variables,
-- or context variables that are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
--
-- 'payloadFormatVersion', 'createIntegration_payloadFormatVersion' - Specifies the format of the payload sent to an integration. Required for
-- HTTP APIs.
--
-- 'timeoutInMillis', 'createIntegration_timeoutInMillis' - Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
-- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
-- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
--
-- 'contentHandlingStrategy', 'createIntegration_contentHandlingStrategy' - Supported only for WebSocket APIs. Specifies how to handle response
-- payload content type conversions. Supported values are CONVERT_TO_BINARY
-- and CONVERT_TO_TEXT, with the following behaviors:
--
-- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
-- string to the corresponding binary blob.
--
-- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
-- Base64-encoded string.
--
-- If this property is not defined, the response payload will be passed
-- through from the integration response to the route response or method
-- response without modification.
--
-- 'requestTemplates', 'createIntegration_requestTemplates' - Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value. Supported only for WebSocket APIs.
--
-- 'passthroughBehavior', 'createIntegration_passthroughBehavior' - Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the requestTemplates property on the Integration resource.
-- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
-- NEVER. Supported only for WebSocket APIs.
--
-- WHEN_NO_MATCH passes the request body for unmapped content types through
-- to the integration backend without transformation.
--
-- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
-- Type response.
--
-- WHEN_NO_TEMPLATES allows pass-through when the integration has no
-- content types mapped to templates. However, if there is at least one
-- content type defined, unmapped content types will be rejected with the
-- same HTTP 415 Unsupported Media Type response.
--
-- 'integrationSubtype', 'createIntegration_integrationSubtype' - Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
-- service action to invoke. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
--
-- 'apiId', 'createIntegration_apiId' - The API identifier.
--
-- 'integrationType', 'createIntegration_integrationType' - The integration type of an integration. One of the following:
--
-- AWS: for integrating the route or method request with an AWS service
-- action, including the Lambda function-invoking action. With the Lambda
-- function-invoking action, this is referred to as the Lambda custom
-- integration. With any other AWS service action, this is known as AWS
-- integration. Supported only for WebSocket APIs.
--
-- AWS_PROXY: for integrating the route or method request with a Lambda
-- function or other AWS service action. This integration is also referred
-- to as a Lambda proxy integration.
--
-- HTTP: for integrating the route or method request with an HTTP endpoint.
-- This integration is also referred to as the HTTP custom integration.
-- Supported only for WebSocket APIs.
--
-- HTTP_PROXY: for integrating the route or method request with an HTTP
-- endpoint, with the client request passed through as-is. This is also
-- referred to as HTTP proxy integration. For HTTP API private
-- integrations, use an HTTP_PROXY integration.
--
-- MOCK: for integrating the route or method request with API Gateway as a
-- \"loopback\" endpoint without invoking any backend. Supported only for
-- WebSocket APIs.
newCreateIntegration ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'integrationType'
  IntegrationType ->
  CreateIntegration
newCreateIntegration pApiId_ pIntegrationType_ =
  CreateIntegration'
    { credentialsArn =
        Prelude.Nothing,
      requestParameters = Prelude.Nothing,
      connectionType = Prelude.Nothing,
      tlsConfig = Prelude.Nothing,
      templateSelectionExpression = Prelude.Nothing,
      connectionId = Prelude.Nothing,
      description = Prelude.Nothing,
      integrationMethod = Prelude.Nothing,
      integrationUri = Prelude.Nothing,
      responseParameters = Prelude.Nothing,
      payloadFormatVersion = Prelude.Nothing,
      timeoutInMillis = Prelude.Nothing,
      contentHandlingStrategy = Prelude.Nothing,
      requestTemplates = Prelude.Nothing,
      passthroughBehavior = Prelude.Nothing,
      integrationSubtype = Prelude.Nothing,
      apiId = pApiId_,
      integrationType = pIntegrationType_
    }

-- | Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string arn:aws:iam::*:user\/*. To use resource-based
-- permissions on supported AWS services, specify null.
createIntegration_credentialsArn :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_credentialsArn = Lens.lens (\CreateIntegration' {credentialsArn} -> credentialsArn) (\s@CreateIntegration' {} a -> s {credentialsArn = a} :: CreateIntegration)

-- | For WebSocket APIs, a key-value map specifying request parameters that
-- are passed from the method request to the backend. The key is an
-- integration request parameter name and the associated value is a method
-- request parameter value or static value that must be enclosed within
-- single quotes and pre-encoded as required by the backend. The method
-- request parameter value must match the pattern of
-- method.request.{location}.{name} , where {location} is querystring,
-- path, or header; and {name} must be a valid and unique method request
-- parameter name.
--
-- For HTTP API integrations with a specified integrationSubtype, request
-- parameters are a key-value map specifying parameters that are passed to
-- AWS_PROXY integrations. You can provide static values, or map request
-- data, stage variables, or context variables that are evaluated at
-- runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
--
-- For HTTP API integrations without a specified integrationSubtype request
-- parameters are a key-value map specifying how to transform HTTP requests
-- before sending them to the backend. The key should follow the pattern
-- \<action>:\<header|querystring|path>.\<location> where action can be
-- append, overwrite or remove. For values, you can provide static values,
-- or map request data, stage variables, or context variables that are
-- evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
createIntegration_requestParameters :: Lens.Lens' CreateIntegration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createIntegration_requestParameters = Lens.lens (\CreateIntegration' {requestParameters} -> requestParameters) (\s@CreateIntegration' {} a -> s {requestParameters = a} :: CreateIntegration) Prelude.. Lens.mapping Lens.coerced

-- | The type of the network connection to the integration endpoint. Specify
-- INTERNET for connections through the public routable internet or
-- VPC_LINK for private connections between API Gateway and resources in a
-- VPC. The default value is INTERNET.
createIntegration_connectionType :: Lens.Lens' CreateIntegration (Prelude.Maybe ConnectionType)
createIntegration_connectionType = Lens.lens (\CreateIntegration' {connectionType} -> connectionType) (\s@CreateIntegration' {} a -> s {connectionType = a} :: CreateIntegration)

-- | The TLS configuration for a private integration. If you specify a TLS
-- configuration, private integration traffic uses the HTTPS protocol.
-- Supported only for HTTP APIs.
createIntegration_tlsConfig :: Lens.Lens' CreateIntegration (Prelude.Maybe TlsConfigInput)
createIntegration_tlsConfig = Lens.lens (\CreateIntegration' {tlsConfig} -> tlsConfig) (\s@CreateIntegration' {} a -> s {tlsConfig = a} :: CreateIntegration)

-- | The template selection expression for the integration.
createIntegration_templateSelectionExpression :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_templateSelectionExpression = Lens.lens (\CreateIntegration' {templateSelectionExpression} -> templateSelectionExpression) (\s@CreateIntegration' {} a -> s {templateSelectionExpression = a} :: CreateIntegration)

-- | The ID of the VPC link for a private integration. Supported only for
-- HTTP APIs.
createIntegration_connectionId :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_connectionId = Lens.lens (\CreateIntegration' {connectionId} -> connectionId) (\s@CreateIntegration' {} a -> s {connectionId = a} :: CreateIntegration)

-- | The description of the integration.
createIntegration_description :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_description = Lens.lens (\CreateIntegration' {description} -> description) (\s@CreateIntegration' {} a -> s {description = a} :: CreateIntegration)

-- | Specifies the integration\'s HTTP method type.
createIntegration_integrationMethod :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_integrationMethod = Lens.lens (\CreateIntegration' {integrationMethod} -> integrationMethod) (\s@CreateIntegration' {} a -> s {integrationMethod = a} :: CreateIntegration)

-- | For a Lambda integration, specify the URI of a Lambda function.
--
-- For an HTTP integration, specify a fully-qualified URL.
--
-- For an HTTP API private integration, specify the ARN of an Application
-- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
-- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
-- uses DiscoverInstances to identify resources. You can use query
-- parameters to target specific resources. To learn more, see
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
-- For private integrations, all resources must be owned by the same AWS
-- account.
createIntegration_integrationUri :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_integrationUri = Lens.lens (\CreateIntegration' {integrationUri} -> integrationUri) (\s@CreateIntegration' {} a -> s {integrationUri = a} :: CreateIntegration)

-- | Supported only for HTTP APIs. You use response parameters to transform
-- the HTTP response from a backend integration before returning the
-- response to clients. Specify a key-value map from a selection key to
-- response parameters. The selection key must be a valid HTTP status code
-- within the range of 200-599. Response parameters are a key-value map.
-- The key must match pattern \<action>:\<header>.\<location> or
-- overwrite.statuscode. The action can be append, overwrite or remove. The
-- value can be a static value, or map to response data, stage variables,
-- or context variables that are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
createIntegration_responseParameters :: Lens.Lens' CreateIntegration (Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)))
createIntegration_responseParameters = Lens.lens (\CreateIntegration' {responseParameters} -> responseParameters) (\s@CreateIntegration' {} a -> s {responseParameters = a} :: CreateIntegration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the format of the payload sent to an integration. Required for
-- HTTP APIs.
createIntegration_payloadFormatVersion :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_payloadFormatVersion = Lens.lens (\CreateIntegration' {payloadFormatVersion} -> payloadFormatVersion) (\s@CreateIntegration' {} a -> s {payloadFormatVersion = a} :: CreateIntegration)

-- | Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
-- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
-- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
createIntegration_timeoutInMillis :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Natural)
createIntegration_timeoutInMillis = Lens.lens (\CreateIntegration' {timeoutInMillis} -> timeoutInMillis) (\s@CreateIntegration' {} a -> s {timeoutInMillis = a} :: CreateIntegration)

-- | Supported only for WebSocket APIs. Specifies how to handle response
-- payload content type conversions. Supported values are CONVERT_TO_BINARY
-- and CONVERT_TO_TEXT, with the following behaviors:
--
-- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
-- string to the corresponding binary blob.
--
-- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
-- Base64-encoded string.
--
-- If this property is not defined, the response payload will be passed
-- through from the integration response to the route response or method
-- response without modification.
createIntegration_contentHandlingStrategy :: Lens.Lens' CreateIntegration (Prelude.Maybe ContentHandlingStrategy)
createIntegration_contentHandlingStrategy = Lens.lens (\CreateIntegration' {contentHandlingStrategy} -> contentHandlingStrategy) (\s@CreateIntegration' {} a -> s {contentHandlingStrategy = a} :: CreateIntegration)

-- | Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value. Supported only for WebSocket APIs.
createIntegration_requestTemplates :: Lens.Lens' CreateIntegration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createIntegration_requestTemplates = Lens.lens (\CreateIntegration' {requestTemplates} -> requestTemplates) (\s@CreateIntegration' {} a -> s {requestTemplates = a} :: CreateIntegration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the requestTemplates property on the Integration resource.
-- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
-- NEVER. Supported only for WebSocket APIs.
--
-- WHEN_NO_MATCH passes the request body for unmapped content types through
-- to the integration backend without transformation.
--
-- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
-- Type response.
--
-- WHEN_NO_TEMPLATES allows pass-through when the integration has no
-- content types mapped to templates. However, if there is at least one
-- content type defined, unmapped content types will be rejected with the
-- same HTTP 415 Unsupported Media Type response.
createIntegration_passthroughBehavior :: Lens.Lens' CreateIntegration (Prelude.Maybe PassthroughBehavior)
createIntegration_passthroughBehavior = Lens.lens (\CreateIntegration' {passthroughBehavior} -> passthroughBehavior) (\s@CreateIntegration' {} a -> s {passthroughBehavior = a} :: CreateIntegration)

-- | Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
-- service action to invoke. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
createIntegration_integrationSubtype :: Lens.Lens' CreateIntegration (Prelude.Maybe Prelude.Text)
createIntegration_integrationSubtype = Lens.lens (\CreateIntegration' {integrationSubtype} -> integrationSubtype) (\s@CreateIntegration' {} a -> s {integrationSubtype = a} :: CreateIntegration)

-- | The API identifier.
createIntegration_apiId :: Lens.Lens' CreateIntegration Prelude.Text
createIntegration_apiId = Lens.lens (\CreateIntegration' {apiId} -> apiId) (\s@CreateIntegration' {} a -> s {apiId = a} :: CreateIntegration)

-- | The integration type of an integration. One of the following:
--
-- AWS: for integrating the route or method request with an AWS service
-- action, including the Lambda function-invoking action. With the Lambda
-- function-invoking action, this is referred to as the Lambda custom
-- integration. With any other AWS service action, this is known as AWS
-- integration. Supported only for WebSocket APIs.
--
-- AWS_PROXY: for integrating the route or method request with a Lambda
-- function or other AWS service action. This integration is also referred
-- to as a Lambda proxy integration.
--
-- HTTP: for integrating the route or method request with an HTTP endpoint.
-- This integration is also referred to as the HTTP custom integration.
-- Supported only for WebSocket APIs.
--
-- HTTP_PROXY: for integrating the route or method request with an HTTP
-- endpoint, with the client request passed through as-is. This is also
-- referred to as HTTP proxy integration. For HTTP API private
-- integrations, use an HTTP_PROXY integration.
--
-- MOCK: for integrating the route or method request with API Gateway as a
-- \"loopback\" endpoint without invoking any backend. Supported only for
-- WebSocket APIs.
createIntegration_integrationType :: Lens.Lens' CreateIntegration IntegrationType
createIntegration_integrationType = Lens.lens (\CreateIntegration' {integrationType} -> integrationType) (\s@CreateIntegration' {} a -> s {integrationType = a} :: CreateIntegration)

instance Core.AWSRequest CreateIntegration where
  type
    AWSResponse CreateIntegration =
      CreateIntegrationResponse'
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateIntegrationResponse''
            Prelude.<$> (x Core..?> "credentialsArn")
            Prelude.<*> ( x Core..?> "requestParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "connectionType")
            Prelude.<*> (x Core..?> "tlsConfig")
            Prelude.<*> (x Core..?> "templateSelectionExpression")
            Prelude.<*> (x Core..?> "integrationResponseSelectionExpression")
            Prelude.<*> (x Core..?> "connectionId")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "integrationMethod")
            Prelude.<*> (x Core..?> "integrationUri")
            Prelude.<*> (x Core..?> "integrationType")
            Prelude.<*> ( x Core..?> "responseParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "payloadFormatVersion")
            Prelude.<*> (x Core..?> "timeoutInMillis")
            Prelude.<*> (x Core..?> "integrationId")
            Prelude.<*> (x Core..?> "contentHandlingStrategy")
            Prelude.<*> ( x Core..?> "requestTemplates"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "apiGatewayManaged")
            Prelude.<*> (x Core..?> "passthroughBehavior")
            Prelude.<*> (x Core..?> "integrationSubtype")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateIntegration where
  hashWithSalt _salt CreateIntegration' {..} =
    _salt `Prelude.hashWithSalt` credentialsArn
      `Prelude.hashWithSalt` requestParameters
      `Prelude.hashWithSalt` connectionType
      `Prelude.hashWithSalt` tlsConfig
      `Prelude.hashWithSalt` templateSelectionExpression
      `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` integrationMethod
      `Prelude.hashWithSalt` integrationUri
      `Prelude.hashWithSalt` responseParameters
      `Prelude.hashWithSalt` payloadFormatVersion
      `Prelude.hashWithSalt` timeoutInMillis
      `Prelude.hashWithSalt` contentHandlingStrategy
      `Prelude.hashWithSalt` requestTemplates
      `Prelude.hashWithSalt` passthroughBehavior
      `Prelude.hashWithSalt` integrationSubtype
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` integrationType

instance Prelude.NFData CreateIntegration where
  rnf CreateIntegration' {..} =
    Prelude.rnf credentialsArn
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf connectionType
      `Prelude.seq` Prelude.rnf tlsConfig
      `Prelude.seq` Prelude.rnf templateSelectionExpression
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf integrationMethod
      `Prelude.seq` Prelude.rnf integrationUri
      `Prelude.seq` Prelude.rnf responseParameters
      `Prelude.seq` Prelude.rnf payloadFormatVersion
      `Prelude.seq` Prelude.rnf timeoutInMillis
      `Prelude.seq` Prelude.rnf contentHandlingStrategy
      `Prelude.seq` Prelude.rnf requestTemplates
      `Prelude.seq` Prelude.rnf passthroughBehavior
      `Prelude.seq` Prelude.rnf integrationSubtype
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf integrationType

instance Core.ToHeaders CreateIntegration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateIntegration where
  toJSON CreateIntegration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("credentialsArn" Core..=)
              Prelude.<$> credentialsArn,
            ("requestParameters" Core..=)
              Prelude.<$> requestParameters,
            ("connectionType" Core..=)
              Prelude.<$> connectionType,
            ("tlsConfig" Core..=) Prelude.<$> tlsConfig,
            ("templateSelectionExpression" Core..=)
              Prelude.<$> templateSelectionExpression,
            ("connectionId" Core..=) Prelude.<$> connectionId,
            ("description" Core..=) Prelude.<$> description,
            ("integrationMethod" Core..=)
              Prelude.<$> integrationMethod,
            ("integrationUri" Core..=)
              Prelude.<$> integrationUri,
            ("responseParameters" Core..=)
              Prelude.<$> responseParameters,
            ("payloadFormatVersion" Core..=)
              Prelude.<$> payloadFormatVersion,
            ("timeoutInMillis" Core..=)
              Prelude.<$> timeoutInMillis,
            ("contentHandlingStrategy" Core..=)
              Prelude.<$> contentHandlingStrategy,
            ("requestTemplates" Core..=)
              Prelude.<$> requestTemplates,
            ("passthroughBehavior" Core..=)
              Prelude.<$> passthroughBehavior,
            ("integrationSubtype" Core..=)
              Prelude.<$> integrationSubtype,
            Prelude.Just
              ("integrationType" Core..= integrationType)
          ]
      )

instance Core.ToPath CreateIntegration where
  toPath CreateIntegration' {..} =
    Prelude.mconcat
      ["/v2/apis/", Core.toBS apiId, "/integrations"]

instance Core.ToQuery CreateIntegration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateIntegrationResponse'' smart constructor.
data CreateIntegrationResponse' = CreateIntegrationResponse''
  { -- | Specifies the credentials required for the integration, if any. For AWS
    -- integrations, three options are available. To specify an IAM Role for
    -- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
    -- require that the caller\'s identity be passed through from the request,
    -- specify the string arn:aws:iam::*:user\/*. To use resource-based
    -- permissions on supported AWS services, specify null.
    credentialsArn :: Prelude.Maybe Prelude.Text,
    -- | For WebSocket APIs, a key-value map specifying request parameters that
    -- are passed from the method request to the backend. The key is an
    -- integration request parameter name and the associated value is a method
    -- request parameter value or static value that must be enclosed within
    -- single quotes and pre-encoded as required by the backend. The method
    -- request parameter value must match the pattern of
    -- method.request.{location}.{name} , where {location} is querystring,
    -- path, or header; and {name} must be a valid and unique method request
    -- parameter name.
    --
    -- For HTTP API integrations with a specified integrationSubtype, request
    -- parameters are a key-value map specifying parameters that are passed to
    -- AWS_PROXY integrations. You can provide static values, or map request
    -- data, stage variables, or context variables that are evaluated at
    -- runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
    --
    -- For HTTP API itegrations, without a specified integrationSubtype request
    -- parameters are a key-value map specifying how to transform HTTP requests
    -- before sending them to backend integrations. The key should follow the
    -- pattern \<action>:\<header|querystring|path>.\<location>. The action can
    -- be append, overwrite or remove. For values, you can provide static
    -- values, or map request data, stage variables, or context variables that
    -- are evaluated at runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The type of the network connection to the integration endpoint. Specify
    -- INTERNET for connections through the public routable internet or
    -- VPC_LINK for private connections between API Gateway and resources in a
    -- VPC. The default value is INTERNET.
    connectionType :: Prelude.Maybe ConnectionType,
    -- | The TLS configuration for a private integration. If you specify a TLS
    -- configuration, private integration traffic uses the HTTPS protocol.
    -- Supported only for HTTP APIs.
    tlsConfig :: Prelude.Maybe TlsConfig,
    -- | The template selection expression for the integration. Supported only
    -- for WebSocket APIs.
    templateSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The integration response selection expression for the integration.
    -- Supported only for WebSocket APIs. See
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions Integration Response Selection Expressions>.
    integrationResponseSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The ID of the VPC link for a private integration. Supported only for
    -- HTTP APIs.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | Represents the description of an integration.
    description :: Prelude.Maybe Prelude.Text,
    -- | Specifies the integration\'s HTTP method type.
    integrationMethod :: Prelude.Maybe Prelude.Text,
    -- | For a Lambda integration, specify the URI of a Lambda function.
    --
    -- For an HTTP integration, specify a fully-qualified URL.
    --
    -- For an HTTP API private integration, specify the ARN of an Application
    -- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
    -- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
    -- uses DiscoverInstances to identify resources. You can use query
    -- parameters to target specific resources. To learn more, see
    -- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
    -- For private integrations, all resources must be owned by the same AWS
    -- account.
    integrationUri :: Prelude.Maybe Prelude.Text,
    -- | The integration type of an integration. One of the following:
    --
    -- AWS: for integrating the route or method request with an AWS service
    -- action, including the Lambda function-invoking action. With the Lambda
    -- function-invoking action, this is referred to as the Lambda custom
    -- integration. With any other AWS service action, this is known as AWS
    -- integration. Supported only for WebSocket APIs.
    --
    -- AWS_PROXY: for integrating the route or method request with a Lambda
    -- function or other AWS service action. This integration is also referred
    -- to as a Lambda proxy integration.
    --
    -- HTTP: for integrating the route or method request with an HTTP endpoint.
    -- This integration is also referred to as the HTTP custom integration.
    -- Supported only for WebSocket APIs.
    --
    -- HTTP_PROXY: for integrating the route or method request with an HTTP
    -- endpoint, with the client request passed through as-is. This is also
    -- referred to as HTTP proxy integration.
    --
    -- MOCK: for integrating the route or method request with API Gateway as a
    -- \"loopback\" endpoint without invoking any backend. Supported only for
    -- WebSocket APIs.
    integrationType :: Prelude.Maybe IntegrationType,
    -- | Supported only for HTTP APIs. You use response parameters to transform
    -- the HTTP response from a backend integration before returning the
    -- response to clients. Specify a key-value map from a selection key to
    -- response parameters. The selection key must be a valid HTTP status code
    -- within the range of 200-599. Response parameters are a key-value map.
    -- The key must match pattern \<action>:\<header>.\<location> or
    -- overwrite.statuscode. The action can be append, overwrite or remove. The
    -- value can be a static value, or map to response data, stage variables,
    -- or context variables that are evaluated at runtime. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
    responseParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Specifies the format of the payload sent to an integration. Required for
    -- HTTP APIs.
    payloadFormatVersion :: Prelude.Maybe Prelude.Text,
    -- | Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
    -- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
    -- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
    timeoutInMillis :: Prelude.Maybe Prelude.Natural,
    -- | Represents the identifier of an integration.
    integrationId :: Prelude.Maybe Prelude.Text,
    -- | Supported only for WebSocket APIs. Specifies how to handle response
    -- payload content type conversions. Supported values are CONVERT_TO_BINARY
    -- and CONVERT_TO_TEXT, with the following behaviors:
    --
    -- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
    -- string to the corresponding binary blob.
    --
    -- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
    -- Base64-encoded string.
    --
    -- If this property is not defined, the response payload will be passed
    -- through from the integration response to the route response or method
    -- response without modification.
    contentHandlingStrategy :: Prelude.Maybe ContentHandlingStrategy,
    -- | Represents a map of Velocity templates that are applied on the request
    -- payload based on the value of the Content-Type header sent by the
    -- client. The content type value is the key in this map, and the template
    -- (as a String) is the value. Supported only for WebSocket APIs.
    requestTemplates :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies whether an integration is managed by API Gateway. If you
    -- created an API using using quick create, the resulting integration is
    -- managed by API Gateway. You can update a managed integration, but you
    -- can\'t delete it.
    apiGatewayManaged :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the pass-through behavior for incoming requests based on the
    -- Content-Type header in the request, and the available mapping templates
    -- specified as the requestTemplates property on the Integration resource.
    -- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
    -- NEVER. Supported only for WebSocket APIs.
    --
    -- WHEN_NO_MATCH passes the request body for unmapped content types through
    -- to the integration backend without transformation.
    --
    -- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
    -- Type response.
    --
    -- WHEN_NO_TEMPLATES allows pass-through when the integration has no
    -- content types mapped to templates. However, if there is at least one
    -- content type defined, unmapped content types will be rejected with the
    -- same HTTP 415 Unsupported Media Type response.
    passthroughBehavior :: Prelude.Maybe PassthroughBehavior,
    -- | Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
    -- service action to invoke. To learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
    integrationSubtype :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIntegrationResponse'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'credentialsArn', 'createIntegrationResponse'_credentialsArn' - Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string arn:aws:iam::*:user\/*. To use resource-based
-- permissions on supported AWS services, specify null.
--
-- 'requestParameters', 'createIntegrationResponse'_requestParameters' - For WebSocket APIs, a key-value map specifying request parameters that
-- are passed from the method request to the backend. The key is an
-- integration request parameter name and the associated value is a method
-- request parameter value or static value that must be enclosed within
-- single quotes and pre-encoded as required by the backend. The method
-- request parameter value must match the pattern of
-- method.request.{location}.{name} , where {location} is querystring,
-- path, or header; and {name} must be a valid and unique method request
-- parameter name.
--
-- For HTTP API integrations with a specified integrationSubtype, request
-- parameters are a key-value map specifying parameters that are passed to
-- AWS_PROXY integrations. You can provide static values, or map request
-- data, stage variables, or context variables that are evaluated at
-- runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
--
-- For HTTP API itegrations, without a specified integrationSubtype request
-- parameters are a key-value map specifying how to transform HTTP requests
-- before sending them to backend integrations. The key should follow the
-- pattern \<action>:\<header|querystring|path>.\<location>. The action can
-- be append, overwrite or remove. For values, you can provide static
-- values, or map request data, stage variables, or context variables that
-- are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
--
-- 'connectionType', 'createIntegrationResponse'_connectionType' - The type of the network connection to the integration endpoint. Specify
-- INTERNET for connections through the public routable internet or
-- VPC_LINK for private connections between API Gateway and resources in a
-- VPC. The default value is INTERNET.
--
-- 'tlsConfig', 'createIntegrationResponse'_tlsConfig' - The TLS configuration for a private integration. If you specify a TLS
-- configuration, private integration traffic uses the HTTPS protocol.
-- Supported only for HTTP APIs.
--
-- 'templateSelectionExpression', 'createIntegrationResponse'_templateSelectionExpression' - The template selection expression for the integration. Supported only
-- for WebSocket APIs.
--
-- 'integrationResponseSelectionExpression', 'createIntegrationResponse'_integrationResponseSelectionExpression' - The integration response selection expression for the integration.
-- Supported only for WebSocket APIs. See
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions Integration Response Selection Expressions>.
--
-- 'connectionId', 'createIntegrationResponse'_connectionId' - The ID of the VPC link for a private integration. Supported only for
-- HTTP APIs.
--
-- 'description', 'createIntegrationResponse'_description' - Represents the description of an integration.
--
-- 'integrationMethod', 'createIntegrationResponse'_integrationMethod' - Specifies the integration\'s HTTP method type.
--
-- 'integrationUri', 'createIntegrationResponse'_integrationUri' - For a Lambda integration, specify the URI of a Lambda function.
--
-- For an HTTP integration, specify a fully-qualified URL.
--
-- For an HTTP API private integration, specify the ARN of an Application
-- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
-- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
-- uses DiscoverInstances to identify resources. You can use query
-- parameters to target specific resources. To learn more, see
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
-- For private integrations, all resources must be owned by the same AWS
-- account.
--
-- 'integrationType', 'createIntegrationResponse'_integrationType' - The integration type of an integration. One of the following:
--
-- AWS: for integrating the route or method request with an AWS service
-- action, including the Lambda function-invoking action. With the Lambda
-- function-invoking action, this is referred to as the Lambda custom
-- integration. With any other AWS service action, this is known as AWS
-- integration. Supported only for WebSocket APIs.
--
-- AWS_PROXY: for integrating the route or method request with a Lambda
-- function or other AWS service action. This integration is also referred
-- to as a Lambda proxy integration.
--
-- HTTP: for integrating the route or method request with an HTTP endpoint.
-- This integration is also referred to as the HTTP custom integration.
-- Supported only for WebSocket APIs.
--
-- HTTP_PROXY: for integrating the route or method request with an HTTP
-- endpoint, with the client request passed through as-is. This is also
-- referred to as HTTP proxy integration.
--
-- MOCK: for integrating the route or method request with API Gateway as a
-- \"loopback\" endpoint without invoking any backend. Supported only for
-- WebSocket APIs.
--
-- 'responseParameters', 'createIntegrationResponse'_responseParameters' - Supported only for HTTP APIs. You use response parameters to transform
-- the HTTP response from a backend integration before returning the
-- response to clients. Specify a key-value map from a selection key to
-- response parameters. The selection key must be a valid HTTP status code
-- within the range of 200-599. Response parameters are a key-value map.
-- The key must match pattern \<action>:\<header>.\<location> or
-- overwrite.statuscode. The action can be append, overwrite or remove. The
-- value can be a static value, or map to response data, stage variables,
-- or context variables that are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
--
-- 'payloadFormatVersion', 'createIntegrationResponse'_payloadFormatVersion' - Specifies the format of the payload sent to an integration. Required for
-- HTTP APIs.
--
-- 'timeoutInMillis', 'createIntegrationResponse'_timeoutInMillis' - Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
-- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
-- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
--
-- 'integrationId', 'createIntegrationResponse'_integrationId' - Represents the identifier of an integration.
--
-- 'contentHandlingStrategy', 'createIntegrationResponse'_contentHandlingStrategy' - Supported only for WebSocket APIs. Specifies how to handle response
-- payload content type conversions. Supported values are CONVERT_TO_BINARY
-- and CONVERT_TO_TEXT, with the following behaviors:
--
-- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
-- string to the corresponding binary blob.
--
-- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
-- Base64-encoded string.
--
-- If this property is not defined, the response payload will be passed
-- through from the integration response to the route response or method
-- response without modification.
--
-- 'requestTemplates', 'createIntegrationResponse'_requestTemplates' - Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value. Supported only for WebSocket APIs.
--
-- 'apiGatewayManaged', 'createIntegrationResponse'_apiGatewayManaged' - Specifies whether an integration is managed by API Gateway. If you
-- created an API using using quick create, the resulting integration is
-- managed by API Gateway. You can update a managed integration, but you
-- can\'t delete it.
--
-- 'passthroughBehavior', 'createIntegrationResponse'_passthroughBehavior' - Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the requestTemplates property on the Integration resource.
-- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
-- NEVER. Supported only for WebSocket APIs.
--
-- WHEN_NO_MATCH passes the request body for unmapped content types through
-- to the integration backend without transformation.
--
-- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
-- Type response.
--
-- WHEN_NO_TEMPLATES allows pass-through when the integration has no
-- content types mapped to templates. However, if there is at least one
-- content type defined, unmapped content types will be rejected with the
-- same HTTP 415 Unsupported Media Type response.
--
-- 'integrationSubtype', 'createIntegrationResponse'_integrationSubtype' - Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
-- service action to invoke. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
--
-- 'httpStatus', 'createIntegrationResponse'_httpStatus' - The response's http status code.
newCreateIntegrationResponse' ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateIntegrationResponse'
newCreateIntegrationResponse' pHttpStatus_ =
  CreateIntegrationResponse''
    { credentialsArn =
        Prelude.Nothing,
      requestParameters = Prelude.Nothing,
      connectionType = Prelude.Nothing,
      tlsConfig = Prelude.Nothing,
      templateSelectionExpression = Prelude.Nothing,
      integrationResponseSelectionExpression =
        Prelude.Nothing,
      connectionId = Prelude.Nothing,
      description = Prelude.Nothing,
      integrationMethod = Prelude.Nothing,
      integrationUri = Prelude.Nothing,
      integrationType = Prelude.Nothing,
      responseParameters = Prelude.Nothing,
      payloadFormatVersion = Prelude.Nothing,
      timeoutInMillis = Prelude.Nothing,
      integrationId = Prelude.Nothing,
      contentHandlingStrategy = Prelude.Nothing,
      requestTemplates = Prelude.Nothing,
      apiGatewayManaged = Prelude.Nothing,
      passthroughBehavior = Prelude.Nothing,
      integrationSubtype = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string arn:aws:iam::*:user\/*. To use resource-based
-- permissions on supported AWS services, specify null.
createIntegrationResponse'_credentialsArn :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_credentialsArn = Lens.lens (\CreateIntegrationResponse'' {credentialsArn} -> credentialsArn) (\s@CreateIntegrationResponse'' {} a -> s {credentialsArn = a} :: CreateIntegrationResponse')

-- | For WebSocket APIs, a key-value map specifying request parameters that
-- are passed from the method request to the backend. The key is an
-- integration request parameter name and the associated value is a method
-- request parameter value or static value that must be enclosed within
-- single quotes and pre-encoded as required by the backend. The method
-- request parameter value must match the pattern of
-- method.request.{location}.{name} , where {location} is querystring,
-- path, or header; and {name} must be a valid and unique method request
-- parameter name.
--
-- For HTTP API integrations with a specified integrationSubtype, request
-- parameters are a key-value map specifying parameters that are passed to
-- AWS_PROXY integrations. You can provide static values, or map request
-- data, stage variables, or context variables that are evaluated at
-- runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html Working with AWS service integrations for HTTP APIs>.
--
-- For HTTP API itegrations, without a specified integrationSubtype request
-- parameters are a key-value map specifying how to transform HTTP requests
-- before sending them to backend integrations. The key should follow the
-- pattern \<action>:\<header|querystring|path>.\<location>. The action can
-- be append, overwrite or remove. For values, you can provide static
-- values, or map request data, stage variables, or context variables that
-- are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
createIntegrationResponse'_requestParameters :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createIntegrationResponse'_requestParameters = Lens.lens (\CreateIntegrationResponse'' {requestParameters} -> requestParameters) (\s@CreateIntegrationResponse'' {} a -> s {requestParameters = a} :: CreateIntegrationResponse') Prelude.. Lens.mapping Lens.coerced

-- | The type of the network connection to the integration endpoint. Specify
-- INTERNET for connections through the public routable internet or
-- VPC_LINK for private connections between API Gateway and resources in a
-- VPC. The default value is INTERNET.
createIntegrationResponse'_connectionType :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe ConnectionType)
createIntegrationResponse'_connectionType = Lens.lens (\CreateIntegrationResponse'' {connectionType} -> connectionType) (\s@CreateIntegrationResponse'' {} a -> s {connectionType = a} :: CreateIntegrationResponse')

-- | The TLS configuration for a private integration. If you specify a TLS
-- configuration, private integration traffic uses the HTTPS protocol.
-- Supported only for HTTP APIs.
createIntegrationResponse'_tlsConfig :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe TlsConfig)
createIntegrationResponse'_tlsConfig = Lens.lens (\CreateIntegrationResponse'' {tlsConfig} -> tlsConfig) (\s@CreateIntegrationResponse'' {} a -> s {tlsConfig = a} :: CreateIntegrationResponse')

-- | The template selection expression for the integration. Supported only
-- for WebSocket APIs.
createIntegrationResponse'_templateSelectionExpression :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_templateSelectionExpression = Lens.lens (\CreateIntegrationResponse'' {templateSelectionExpression} -> templateSelectionExpression) (\s@CreateIntegrationResponse'' {} a -> s {templateSelectionExpression = a} :: CreateIntegrationResponse')

-- | The integration response selection expression for the integration.
-- Supported only for WebSocket APIs. See
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions Integration Response Selection Expressions>.
createIntegrationResponse'_integrationResponseSelectionExpression :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_integrationResponseSelectionExpression = Lens.lens (\CreateIntegrationResponse'' {integrationResponseSelectionExpression} -> integrationResponseSelectionExpression) (\s@CreateIntegrationResponse'' {} a -> s {integrationResponseSelectionExpression = a} :: CreateIntegrationResponse')

-- | The ID of the VPC link for a private integration. Supported only for
-- HTTP APIs.
createIntegrationResponse'_connectionId :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_connectionId = Lens.lens (\CreateIntegrationResponse'' {connectionId} -> connectionId) (\s@CreateIntegrationResponse'' {} a -> s {connectionId = a} :: CreateIntegrationResponse')

-- | Represents the description of an integration.
createIntegrationResponse'_description :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_description = Lens.lens (\CreateIntegrationResponse'' {description} -> description) (\s@CreateIntegrationResponse'' {} a -> s {description = a} :: CreateIntegrationResponse')

-- | Specifies the integration\'s HTTP method type.
createIntegrationResponse'_integrationMethod :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_integrationMethod = Lens.lens (\CreateIntegrationResponse'' {integrationMethod} -> integrationMethod) (\s@CreateIntegrationResponse'' {} a -> s {integrationMethod = a} :: CreateIntegrationResponse')

-- | For a Lambda integration, specify the URI of a Lambda function.
--
-- For an HTTP integration, specify a fully-qualified URL.
--
-- For an HTTP API private integration, specify the ARN of an Application
-- Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map
-- service. If you specify the ARN of an AWS Cloud Map service, API Gateway
-- uses DiscoverInstances to identify resources. You can use query
-- parameters to target specific resources. To learn more, see
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>.
-- For private integrations, all resources must be owned by the same AWS
-- account.
createIntegrationResponse'_integrationUri :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_integrationUri = Lens.lens (\CreateIntegrationResponse'' {integrationUri} -> integrationUri) (\s@CreateIntegrationResponse'' {} a -> s {integrationUri = a} :: CreateIntegrationResponse')

-- | The integration type of an integration. One of the following:
--
-- AWS: for integrating the route or method request with an AWS service
-- action, including the Lambda function-invoking action. With the Lambda
-- function-invoking action, this is referred to as the Lambda custom
-- integration. With any other AWS service action, this is known as AWS
-- integration. Supported only for WebSocket APIs.
--
-- AWS_PROXY: for integrating the route or method request with a Lambda
-- function or other AWS service action. This integration is also referred
-- to as a Lambda proxy integration.
--
-- HTTP: for integrating the route or method request with an HTTP endpoint.
-- This integration is also referred to as the HTTP custom integration.
-- Supported only for WebSocket APIs.
--
-- HTTP_PROXY: for integrating the route or method request with an HTTP
-- endpoint, with the client request passed through as-is. This is also
-- referred to as HTTP proxy integration.
--
-- MOCK: for integrating the route or method request with API Gateway as a
-- \"loopback\" endpoint without invoking any backend. Supported only for
-- WebSocket APIs.
createIntegrationResponse'_integrationType :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe IntegrationType)
createIntegrationResponse'_integrationType = Lens.lens (\CreateIntegrationResponse'' {integrationType} -> integrationType) (\s@CreateIntegrationResponse'' {} a -> s {integrationType = a} :: CreateIntegrationResponse')

-- | Supported only for HTTP APIs. You use response parameters to transform
-- the HTTP response from a backend integration before returning the
-- response to clients. Specify a key-value map from a selection key to
-- response parameters. The selection key must be a valid HTTP status code
-- within the range of 200-599. Response parameters are a key-value map.
-- The key must match pattern \<action>:\<header>.\<location> or
-- overwrite.statuscode. The action can be append, overwrite or remove. The
-- value can be a static value, or map to response data, stage variables,
-- or context variables that are evaluated at runtime. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html Transforming API requests and responses>.
createIntegrationResponse'_responseParameters :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)))
createIntegrationResponse'_responseParameters = Lens.lens (\CreateIntegrationResponse'' {responseParameters} -> responseParameters) (\s@CreateIntegrationResponse'' {} a -> s {responseParameters = a} :: CreateIntegrationResponse') Prelude.. Lens.mapping Lens.coerced

-- | Specifies the format of the payload sent to an integration. Required for
-- HTTP APIs.
createIntegrationResponse'_payloadFormatVersion :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_payloadFormatVersion = Lens.lens (\CreateIntegrationResponse'' {payloadFormatVersion} -> payloadFormatVersion) (\s@CreateIntegrationResponse'' {} a -> s {payloadFormatVersion = a} :: CreateIntegrationResponse')

-- | Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and
-- between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is
-- 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
createIntegrationResponse'_timeoutInMillis :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Natural)
createIntegrationResponse'_timeoutInMillis = Lens.lens (\CreateIntegrationResponse'' {timeoutInMillis} -> timeoutInMillis) (\s@CreateIntegrationResponse'' {} a -> s {timeoutInMillis = a} :: CreateIntegrationResponse')

-- | Represents the identifier of an integration.
createIntegrationResponse'_integrationId :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_integrationId = Lens.lens (\CreateIntegrationResponse'' {integrationId} -> integrationId) (\s@CreateIntegrationResponse'' {} a -> s {integrationId = a} :: CreateIntegrationResponse')

-- | Supported only for WebSocket APIs. Specifies how to handle response
-- payload content type conversions. Supported values are CONVERT_TO_BINARY
-- and CONVERT_TO_TEXT, with the following behaviors:
--
-- CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
-- string to the corresponding binary blob.
--
-- CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
-- Base64-encoded string.
--
-- If this property is not defined, the response payload will be passed
-- through from the integration response to the route response or method
-- response without modification.
createIntegrationResponse'_contentHandlingStrategy :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe ContentHandlingStrategy)
createIntegrationResponse'_contentHandlingStrategy = Lens.lens (\CreateIntegrationResponse'' {contentHandlingStrategy} -> contentHandlingStrategy) (\s@CreateIntegrationResponse'' {} a -> s {contentHandlingStrategy = a} :: CreateIntegrationResponse')

-- | Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value. Supported only for WebSocket APIs.
createIntegrationResponse'_requestTemplates :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createIntegrationResponse'_requestTemplates = Lens.lens (\CreateIntegrationResponse'' {requestTemplates} -> requestTemplates) (\s@CreateIntegrationResponse'' {} a -> s {requestTemplates = a} :: CreateIntegrationResponse') Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether an integration is managed by API Gateway. If you
-- created an API using using quick create, the resulting integration is
-- managed by API Gateway. You can update a managed integration, but you
-- can\'t delete it.
createIntegrationResponse'_apiGatewayManaged :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Bool)
createIntegrationResponse'_apiGatewayManaged = Lens.lens (\CreateIntegrationResponse'' {apiGatewayManaged} -> apiGatewayManaged) (\s@CreateIntegrationResponse'' {} a -> s {apiGatewayManaged = a} :: CreateIntegrationResponse')

-- | Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the requestTemplates property on the Integration resource.
-- There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
-- NEVER. Supported only for WebSocket APIs.
--
-- WHEN_NO_MATCH passes the request body for unmapped content types through
-- to the integration backend without transformation.
--
-- NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
-- Type response.
--
-- WHEN_NO_TEMPLATES allows pass-through when the integration has no
-- content types mapped to templates. However, if there is at least one
-- content type defined, unmapped content types will be rejected with the
-- same HTTP 415 Unsupported Media Type response.
createIntegrationResponse'_passthroughBehavior :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe PassthroughBehavior)
createIntegrationResponse'_passthroughBehavior = Lens.lens (\CreateIntegrationResponse'' {passthroughBehavior} -> passthroughBehavior) (\s@CreateIntegrationResponse'' {} a -> s {passthroughBehavior = a} :: CreateIntegrationResponse')

-- | Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
-- service action to invoke. To learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html Integration subtype reference>.
createIntegrationResponse'_integrationSubtype :: Lens.Lens' CreateIntegrationResponse' (Prelude.Maybe Prelude.Text)
createIntegrationResponse'_integrationSubtype = Lens.lens (\CreateIntegrationResponse'' {integrationSubtype} -> integrationSubtype) (\s@CreateIntegrationResponse'' {} a -> s {integrationSubtype = a} :: CreateIntegrationResponse')

-- | The response's http status code.
createIntegrationResponse'_httpStatus :: Lens.Lens' CreateIntegrationResponse' Prelude.Int
createIntegrationResponse'_httpStatus = Lens.lens (\CreateIntegrationResponse'' {httpStatus} -> httpStatus) (\s@CreateIntegrationResponse'' {} a -> s {httpStatus = a} :: CreateIntegrationResponse')

instance Prelude.NFData CreateIntegrationResponse' where
  rnf CreateIntegrationResponse'' {..} =
    Prelude.rnf credentialsArn
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf connectionType
      `Prelude.seq` Prelude.rnf tlsConfig
      `Prelude.seq` Prelude.rnf templateSelectionExpression
      `Prelude.seq` Prelude.rnf integrationResponseSelectionExpression
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf integrationMethod
      `Prelude.seq` Prelude.rnf integrationUri
      `Prelude.seq` Prelude.rnf integrationType
      `Prelude.seq` Prelude.rnf responseParameters
      `Prelude.seq` Prelude.rnf payloadFormatVersion
      `Prelude.seq` Prelude.rnf timeoutInMillis
      `Prelude.seq` Prelude.rnf integrationId
      `Prelude.seq` Prelude.rnf contentHandlingStrategy
      `Prelude.seq` Prelude.rnf requestTemplates
      `Prelude.seq` Prelude.rnf apiGatewayManaged
      `Prelude.seq` Prelude.rnf passthroughBehavior
      `Prelude.seq` Prelude.rnf integrationSubtype
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.ApiGatewayV2.ReimportApi
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Puts an Api resource.
module Amazonka.ApiGatewayV2.ReimportApi
  ( -- * Creating a Request
    ReimportApi (..),
    newReimportApi,

    -- * Request Lenses
    reimportApi_failOnWarnings,
    reimportApi_basepath,
    reimportApi_apiId,
    reimportApi_body,

    -- * Destructuring the Response
    ReimportApiResponse (..),
    newReimportApiResponse,

    -- * Response Lenses
    reimportApiResponse_tags,
    reimportApiResponse_name,
    reimportApiResponse_apiEndpoint,
    reimportApiResponse_apiId,
    reimportApiResponse_routeSelectionExpression,
    reimportApiResponse_description,
    reimportApiResponse_warnings,
    reimportApiResponse_apiKeySelectionExpression,
    reimportApiResponse_protocolType,
    reimportApiResponse_disableExecuteApiEndpoint,
    reimportApiResponse_createdDate,
    reimportApiResponse_disableSchemaValidation,
    reimportApiResponse_importInfo,
    reimportApiResponse_corsConfiguration,
    reimportApiResponse_apiGatewayManaged,
    reimportApiResponse_version,
    reimportApiResponse_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newReimportApi' smart constructor.
data ReimportApi = ReimportApi'
  { -- | Specifies whether to rollback the API creation when a warning is
    -- encountered. By default, API creation continues if a warning is
    -- encountered.
    failOnWarnings :: Prelude.Maybe Prelude.Bool,
    -- | Specifies how to interpret the base path of the API during import. Valid
    -- values are ignore, prepend, and split. The default value is ignore. To
    -- learn more, see
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html Set the OpenAPI basePath Property>.
    -- Supported only for HTTP APIs.
    basepath :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The OpenAPI definition. Supported only for HTTP APIs.
    body :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReimportApi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failOnWarnings', 'reimportApi_failOnWarnings' - Specifies whether to rollback the API creation when a warning is
-- encountered. By default, API creation continues if a warning is
-- encountered.
--
-- 'basepath', 'reimportApi_basepath' - Specifies how to interpret the base path of the API during import. Valid
-- values are ignore, prepend, and split. The default value is ignore. To
-- learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html Set the OpenAPI basePath Property>.
-- Supported only for HTTP APIs.
--
-- 'apiId', 'reimportApi_apiId' - The API identifier.
--
-- 'body', 'reimportApi_body' - The OpenAPI definition. Supported only for HTTP APIs.
newReimportApi ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'body'
  Prelude.Text ->
  ReimportApi
newReimportApi pApiId_ pBody_ =
  ReimportApi'
    { failOnWarnings = Prelude.Nothing,
      basepath = Prelude.Nothing,
      apiId = pApiId_,
      body = pBody_
    }

-- | Specifies whether to rollback the API creation when a warning is
-- encountered. By default, API creation continues if a warning is
-- encountered.
reimportApi_failOnWarnings :: Lens.Lens' ReimportApi (Prelude.Maybe Prelude.Bool)
reimportApi_failOnWarnings = Lens.lens (\ReimportApi' {failOnWarnings} -> failOnWarnings) (\s@ReimportApi' {} a -> s {failOnWarnings = a} :: ReimportApi)

-- | Specifies how to interpret the base path of the API during import. Valid
-- values are ignore, prepend, and split. The default value is ignore. To
-- learn more, see
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html Set the OpenAPI basePath Property>.
-- Supported only for HTTP APIs.
reimportApi_basepath :: Lens.Lens' ReimportApi (Prelude.Maybe Prelude.Text)
reimportApi_basepath = Lens.lens (\ReimportApi' {basepath} -> basepath) (\s@ReimportApi' {} a -> s {basepath = a} :: ReimportApi)

-- | The API identifier.
reimportApi_apiId :: Lens.Lens' ReimportApi Prelude.Text
reimportApi_apiId = Lens.lens (\ReimportApi' {apiId} -> apiId) (\s@ReimportApi' {} a -> s {apiId = a} :: ReimportApi)

-- | The OpenAPI definition. Supported only for HTTP APIs.
reimportApi_body :: Lens.Lens' ReimportApi Prelude.Text
reimportApi_body = Lens.lens (\ReimportApi' {body} -> body) (\s@ReimportApi' {} a -> s {body = a} :: ReimportApi)

instance Core.AWSRequest ReimportApi where
  type AWSResponse ReimportApi = ReimportApiResponse
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ReimportApiResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "apiEndpoint")
            Prelude.<*> (x Core..?> "apiId")
            Prelude.<*> (x Core..?> "routeSelectionExpression")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "warnings" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "apiKeySelectionExpression")
            Prelude.<*> (x Core..?> "protocolType")
            Prelude.<*> (x Core..?> "disableExecuteApiEndpoint")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (x Core..?> "disableSchemaValidation")
            Prelude.<*> (x Core..?> "importInfo" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "corsConfiguration")
            Prelude.<*> (x Core..?> "apiGatewayManaged")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService ReimportApi where
  service _proxy = defaultService

instance Prelude.Hashable ReimportApi where
  hashWithSalt _salt ReimportApi' {..} =
    _salt `Prelude.hashWithSalt` failOnWarnings
      `Prelude.hashWithSalt` basepath
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` body

instance Prelude.NFData ReimportApi where
  rnf ReimportApi' {..} =
    Prelude.rnf failOnWarnings
      `Prelude.seq` Prelude.rnf basepath
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf body

instance Core.ToHeaders ReimportApi where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ReimportApi where
  toJSON ReimportApi' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("body" Core..= body)]
      )

instance Core.ToPath ReimportApi where
  toPath ReimportApi' {..} =
    Prelude.mconcat ["/v2/apis/", Core.toBS apiId]

instance Core.ToQuery ReimportApi where
  toQuery ReimportApi' {..} =
    Prelude.mconcat
      [ "failOnWarnings" Core.=: failOnWarnings,
        "basepath" Core.=: basepath
      ]

-- | /See:/ 'newReimportApiResponse' smart constructor.
data ReimportApiResponse = ReimportApiResponse'
  { -- | A collection of tags associated with the API.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the API.
    name :: Prelude.Maybe Prelude.Text,
    -- | The URI of the API, of the form
    -- {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically
    -- appended to this URI to form a complete path to a deployed API stage.
    apiEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The API ID.
    apiId :: Prelude.Maybe Prelude.Text,
    -- | The route selection expression for the API. For HTTP APIs, the
    -- routeSelectionExpression must be ${request.method} ${request.path}. If
    -- not provided, this will be the default for HTTP APIs. This property is
    -- required for WebSocket APIs.
    routeSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The description of the API.
    description :: Prelude.Maybe Prelude.Text,
    -- | The warning messages reported when failonwarnings is turned on during
    -- API import.
    warnings :: Prelude.Maybe [Prelude.Text],
    -- | An API key selection expression. Supported only for WebSocket APIs. See
    -- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions API Key Selection Expressions>.
    apiKeySelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The API protocol.
    protocolType :: Prelude.Maybe ProtocolType,
    -- | Specifies whether clients can invoke your API by using the default
    -- execute-api endpoint. By default, clients can invoke your API with the
    -- default https:\/\/{api_id}.execute-api.{region}.amazonaws.com endpoint.
    -- To require that clients use a custom domain name to invoke your API,
    -- disable the default endpoint.
    disableExecuteApiEndpoint :: Prelude.Maybe Prelude.Bool,
    -- | The timestamp when the API was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | Avoid validating models when creating a deployment. Supported only for
    -- WebSocket APIs.
    disableSchemaValidation :: Prelude.Maybe Prelude.Bool,
    -- | The validation information during API import. This may include
    -- particular properties of your OpenAPI definition which are ignored
    -- during import. Supported only for HTTP APIs.
    importInfo :: Prelude.Maybe [Prelude.Text],
    -- | A CORS configuration. Supported only for HTTP APIs.
    corsConfiguration :: Prelude.Maybe Cors,
    -- | Specifies whether an API is managed by API Gateway. You can\'t update or
    -- delete a managed API by using API Gateway. A managed API can be deleted
    -- only through the tooling or service that created it.
    apiGatewayManaged :: Prelude.Maybe Prelude.Bool,
    -- | A version identifier for the API.
    version :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReimportApiResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'reimportApiResponse_tags' - A collection of tags associated with the API.
--
-- 'name', 'reimportApiResponse_name' - The name of the API.
--
-- 'apiEndpoint', 'reimportApiResponse_apiEndpoint' - The URI of the API, of the form
-- {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically
-- appended to this URI to form a complete path to a deployed API stage.
--
-- 'apiId', 'reimportApiResponse_apiId' - The API ID.
--
-- 'routeSelectionExpression', 'reimportApiResponse_routeSelectionExpression' - The route selection expression for the API. For HTTP APIs, the
-- routeSelectionExpression must be ${request.method} ${request.path}. If
-- not provided, this will be the default for HTTP APIs. This property is
-- required for WebSocket APIs.
--
-- 'description', 'reimportApiResponse_description' - The description of the API.
--
-- 'warnings', 'reimportApiResponse_warnings' - The warning messages reported when failonwarnings is turned on during
-- API import.
--
-- 'apiKeySelectionExpression', 'reimportApiResponse_apiKeySelectionExpression' - An API key selection expression. Supported only for WebSocket APIs. See
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions API Key Selection Expressions>.
--
-- 'protocolType', 'reimportApiResponse_protocolType' - The API protocol.
--
-- 'disableExecuteApiEndpoint', 'reimportApiResponse_disableExecuteApiEndpoint' - Specifies whether clients can invoke your API by using the default
-- execute-api endpoint. By default, clients can invoke your API with the
-- default https:\/\/{api_id}.execute-api.{region}.amazonaws.com endpoint.
-- To require that clients use a custom domain name to invoke your API,
-- disable the default endpoint.
--
-- 'createdDate', 'reimportApiResponse_createdDate' - The timestamp when the API was created.
--
-- 'disableSchemaValidation', 'reimportApiResponse_disableSchemaValidation' - Avoid validating models when creating a deployment. Supported only for
-- WebSocket APIs.
--
-- 'importInfo', 'reimportApiResponse_importInfo' - The validation information during API import. This may include
-- particular properties of your OpenAPI definition which are ignored
-- during import. Supported only for HTTP APIs.
--
-- 'corsConfiguration', 'reimportApiResponse_corsConfiguration' - A CORS configuration. Supported only for HTTP APIs.
--
-- 'apiGatewayManaged', 'reimportApiResponse_apiGatewayManaged' - Specifies whether an API is managed by API Gateway. You can\'t update or
-- delete a managed API by using API Gateway. A managed API can be deleted
-- only through the tooling or service that created it.
--
-- 'version', 'reimportApiResponse_version' - A version identifier for the API.
--
-- 'httpStatus', 'reimportApiResponse_httpStatus' - The response's http status code.
newReimportApiResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ReimportApiResponse
newReimportApiResponse pHttpStatus_ =
  ReimportApiResponse'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      apiEndpoint = Prelude.Nothing,
      apiId = Prelude.Nothing,
      routeSelectionExpression = Prelude.Nothing,
      description = Prelude.Nothing,
      warnings = Prelude.Nothing,
      apiKeySelectionExpression = Prelude.Nothing,
      protocolType = Prelude.Nothing,
      disableExecuteApiEndpoint = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      disableSchemaValidation = Prelude.Nothing,
      importInfo = Prelude.Nothing,
      corsConfiguration = Prelude.Nothing,
      apiGatewayManaged = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of tags associated with the API.
reimportApiResponse_tags :: Lens.Lens' ReimportApiResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
reimportApiResponse_tags = Lens.lens (\ReimportApiResponse' {tags} -> tags) (\s@ReimportApiResponse' {} a -> s {tags = a} :: ReimportApiResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the API.
reimportApiResponse_name :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_name = Lens.lens (\ReimportApiResponse' {name} -> name) (\s@ReimportApiResponse' {} a -> s {name = a} :: ReimportApiResponse)

-- | The URI of the API, of the form
-- {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically
-- appended to this URI to form a complete path to a deployed API stage.
reimportApiResponse_apiEndpoint :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_apiEndpoint = Lens.lens (\ReimportApiResponse' {apiEndpoint} -> apiEndpoint) (\s@ReimportApiResponse' {} a -> s {apiEndpoint = a} :: ReimportApiResponse)

-- | The API ID.
reimportApiResponse_apiId :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_apiId = Lens.lens (\ReimportApiResponse' {apiId} -> apiId) (\s@ReimportApiResponse' {} a -> s {apiId = a} :: ReimportApiResponse)

-- | The route selection expression for the API. For HTTP APIs, the
-- routeSelectionExpression must be ${request.method} ${request.path}. If
-- not provided, this will be the default for HTTP APIs. This property is
-- required for WebSocket APIs.
reimportApiResponse_routeSelectionExpression :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_routeSelectionExpression = Lens.lens (\ReimportApiResponse' {routeSelectionExpression} -> routeSelectionExpression) (\s@ReimportApiResponse' {} a -> s {routeSelectionExpression = a} :: ReimportApiResponse)

-- | The description of the API.
reimportApiResponse_description :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_description = Lens.lens (\ReimportApiResponse' {description} -> description) (\s@ReimportApiResponse' {} a -> s {description = a} :: ReimportApiResponse)

-- | The warning messages reported when failonwarnings is turned on during
-- API import.
reimportApiResponse_warnings :: Lens.Lens' ReimportApiResponse (Prelude.Maybe [Prelude.Text])
reimportApiResponse_warnings = Lens.lens (\ReimportApiResponse' {warnings} -> warnings) (\s@ReimportApiResponse' {} a -> s {warnings = a} :: ReimportApiResponse) Prelude.. Lens.mapping Lens.coerced

-- | An API key selection expression. Supported only for WebSocket APIs. See
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions API Key Selection Expressions>.
reimportApiResponse_apiKeySelectionExpression :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_apiKeySelectionExpression = Lens.lens (\ReimportApiResponse' {apiKeySelectionExpression} -> apiKeySelectionExpression) (\s@ReimportApiResponse' {} a -> s {apiKeySelectionExpression = a} :: ReimportApiResponse)

-- | The API protocol.
reimportApiResponse_protocolType :: Lens.Lens' ReimportApiResponse (Prelude.Maybe ProtocolType)
reimportApiResponse_protocolType = Lens.lens (\ReimportApiResponse' {protocolType} -> protocolType) (\s@ReimportApiResponse' {} a -> s {protocolType = a} :: ReimportApiResponse)

-- | Specifies whether clients can invoke your API by using the default
-- execute-api endpoint. By default, clients can invoke your API with the
-- default https:\/\/{api_id}.execute-api.{region}.amazonaws.com endpoint.
-- To require that clients use a custom domain name to invoke your API,
-- disable the default endpoint.
reimportApiResponse_disableExecuteApiEndpoint :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Bool)
reimportApiResponse_disableExecuteApiEndpoint = Lens.lens (\ReimportApiResponse' {disableExecuteApiEndpoint} -> disableExecuteApiEndpoint) (\s@ReimportApiResponse' {} a -> s {disableExecuteApiEndpoint = a} :: ReimportApiResponse)

-- | The timestamp when the API was created.
reimportApiResponse_createdDate :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.UTCTime)
reimportApiResponse_createdDate = Lens.lens (\ReimportApiResponse' {createdDate} -> createdDate) (\s@ReimportApiResponse' {} a -> s {createdDate = a} :: ReimportApiResponse) Prelude.. Lens.mapping Core._Time

-- | Avoid validating models when creating a deployment. Supported only for
-- WebSocket APIs.
reimportApiResponse_disableSchemaValidation :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Bool)
reimportApiResponse_disableSchemaValidation = Lens.lens (\ReimportApiResponse' {disableSchemaValidation} -> disableSchemaValidation) (\s@ReimportApiResponse' {} a -> s {disableSchemaValidation = a} :: ReimportApiResponse)

-- | The validation information during API import. This may include
-- particular properties of your OpenAPI definition which are ignored
-- during import. Supported only for HTTP APIs.
reimportApiResponse_importInfo :: Lens.Lens' ReimportApiResponse (Prelude.Maybe [Prelude.Text])
reimportApiResponse_importInfo = Lens.lens (\ReimportApiResponse' {importInfo} -> importInfo) (\s@ReimportApiResponse' {} a -> s {importInfo = a} :: ReimportApiResponse) Prelude.. Lens.mapping Lens.coerced

-- | A CORS configuration. Supported only for HTTP APIs.
reimportApiResponse_corsConfiguration :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Cors)
reimportApiResponse_corsConfiguration = Lens.lens (\ReimportApiResponse' {corsConfiguration} -> corsConfiguration) (\s@ReimportApiResponse' {} a -> s {corsConfiguration = a} :: ReimportApiResponse)

-- | Specifies whether an API is managed by API Gateway. You can\'t update or
-- delete a managed API by using API Gateway. A managed API can be deleted
-- only through the tooling or service that created it.
reimportApiResponse_apiGatewayManaged :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Bool)
reimportApiResponse_apiGatewayManaged = Lens.lens (\ReimportApiResponse' {apiGatewayManaged} -> apiGatewayManaged) (\s@ReimportApiResponse' {} a -> s {apiGatewayManaged = a} :: ReimportApiResponse)

-- | A version identifier for the API.
reimportApiResponse_version :: Lens.Lens' ReimportApiResponse (Prelude.Maybe Prelude.Text)
reimportApiResponse_version = Lens.lens (\ReimportApiResponse' {version} -> version) (\s@ReimportApiResponse' {} a -> s {version = a} :: ReimportApiResponse)

-- | The response's http status code.
reimportApiResponse_httpStatus :: Lens.Lens' ReimportApiResponse Prelude.Int
reimportApiResponse_httpStatus = Lens.lens (\ReimportApiResponse' {httpStatus} -> httpStatus) (\s@ReimportApiResponse' {} a -> s {httpStatus = a} :: ReimportApiResponse)

instance Prelude.NFData ReimportApiResponse where
  rnf ReimportApiResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf apiEndpoint
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf routeSelectionExpression
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf warnings
      `Prelude.seq` Prelude.rnf apiKeySelectionExpression
      `Prelude.seq` Prelude.rnf protocolType
      `Prelude.seq` Prelude.rnf disableExecuteApiEndpoint
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf disableSchemaValidation
      `Prelude.seq` Prelude.rnf importInfo
      `Prelude.seq` Prelude.rnf corsConfiguration
      `Prelude.seq` Prelude.rnf apiGatewayManaged
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus

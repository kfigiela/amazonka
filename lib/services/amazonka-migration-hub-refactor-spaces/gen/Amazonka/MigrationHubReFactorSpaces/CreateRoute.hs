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
-- Module      : Amazonka.MigrationHubReFactorSpaces.CreateRoute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Web Services Migration Hub Refactor Spaces route. The
-- account owner of the service resource is always the environment owner,
-- regardless of which account creates the route. Routes target a service
-- in the application. If an application does not have any routes, then the
-- first route must be created as a @DEFAULT@ @RouteType@.
--
-- When created, the default route defaults to an active state so state is
-- not a required input. However, like all other state values the state of
-- the default route can be updated after creation, but only when all other
-- routes are also inactive. Conversely, no route can be active without the
-- default route also being active.
--
-- When you create a route, Refactor Spaces configures the Amazon API
-- Gateway to send traffic to the target service as follows:
--
-- -   If the service has a URL endpoint, and the endpoint resolves to a
--     private IP address, Refactor Spaces routes traffic using the API
--     Gateway VPC link.
--
-- -   If the service has a URL endpoint, and the endpoint resolves to a
--     public IP address, Refactor Spaces routes traffic over the public
--     internet.
--
-- -   If the service has an Lambda function endpoint, then Refactor Spaces
--     configures the Lambda function\'s resource policy to allow the
--     application\'s API Gateway to invoke the function.
--
-- A one-time health check is performed on the service when either the
-- route is updated from inactive to active, or when it is created with an
-- active state. If the health check fails, the route transitions the route
-- state to @FAILED@, an error code of
-- @SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE@ is provided, and no traffic is
-- sent to the service.
--
-- For Lambda functions, the Lambda function state is checked. If the
-- function is not active, the function configuration is updated so that
-- Lambda resources are provisioned. If the Lambda state is @Failed@, then
-- the route creation fails. For more information, see the
-- <https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State GetFunctionConfiguration\'s State response parameter>
-- in the /Lambda Developer Guide/.
--
-- For Lambda endpoints, a check is performed to determine that a Lambda
-- function with the specified ARN exists. If it does not exist, the health
-- check fails. For public URLs, a connection is opened to the public
-- endpoint. If the URL is not reachable, the health check fails.
--
-- For private URLS, a target group is created on the Elastic Load
-- Balancing and the target group health check is run. The
-- @HealthCheckProtocol@, @HealthCheckPort@, and @HealthCheckPath@ are the
-- same protocol, port, and path specified in the URL or health URL, if
-- used. All other settings use the default values, as described in
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html Health checks for your target groups>.
-- The health check is considered successful if at least one target within
-- the target group transitions to a healthy state.
--
-- Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs,
-- publicly-signed certificates are supported. Private Certificate
-- Authorities (CAs) are permitted only if the CA\'s domain is also
-- publicly resolvable.
module Amazonka.MigrationHubReFactorSpaces.CreateRoute
  ( -- * Creating a Request
    CreateRoute (..),
    newCreateRoute,

    -- * Request Lenses
    createRoute_tags,
    createRoute_uriPathRoute,
    createRoute_clientToken,
    createRoute_defaultRoute,
    createRoute_applicationIdentifier,
    createRoute_environmentIdentifier,
    createRoute_routeType,
    createRoute_serviceIdentifier,

    -- * Destructuring the Response
    CreateRouteResponse (..),
    newCreateRouteResponse,

    -- * Response Lenses
    createRouteResponse_tags,
    createRouteResponse_routeType,
    createRouteResponse_uriPathRoute,
    createRouteResponse_createdTime,
    createRouteResponse_createdByAccountId,
    createRouteResponse_arn,
    createRouteResponse_state,
    createRouteResponse_lastUpdatedTime,
    createRouteResponse_ownerAccountId,
    createRouteResponse_routeId,
    createRouteResponse_applicationId,
    createRouteResponse_serviceId,
    createRouteResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubReFactorSpaces.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRoute' smart constructor.
data CreateRoute = CreateRoute'
  { -- | The tags to assign to the route. A tag is a label that you assign to an
    -- Amazon Web Services resource. Each tag consists of a key-value pair..
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The configuration for the URI path route type.
    uriPathRoute :: Prelude.Maybe UriPathRouteInput,
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | Configuration for the default route type.
    defaultRoute :: Prelude.Maybe DefaultRouteInput,
    -- | The ID of the application within which the route is being created.
    applicationIdentifier :: Prelude.Text,
    -- | The ID of the environment in which the route is created.
    environmentIdentifier :: Prelude.Text,
    -- | The route type of the route. @DEFAULT@ indicates that all traffic that
    -- does not match another route is forwarded to the default route.
    -- Applications must have a default route before any other routes can be
    -- created. @URI_PATH@ indicates a route that is based on a URI path.
    routeType :: RouteType,
    -- | The ID of the service in which the route is created. Traffic that
    -- matches this route is forwarded to this service.
    serviceIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRoute_tags' - The tags to assign to the route. A tag is a label that you assign to an
-- Amazon Web Services resource. Each tag consists of a key-value pair..
--
-- 'uriPathRoute', 'createRoute_uriPathRoute' - The configuration for the URI path route type.
--
-- 'clientToken', 'createRoute_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'defaultRoute', 'createRoute_defaultRoute' - Configuration for the default route type.
--
-- 'applicationIdentifier', 'createRoute_applicationIdentifier' - The ID of the application within which the route is being created.
--
-- 'environmentIdentifier', 'createRoute_environmentIdentifier' - The ID of the environment in which the route is created.
--
-- 'routeType', 'createRoute_routeType' - The route type of the route. @DEFAULT@ indicates that all traffic that
-- does not match another route is forwarded to the default route.
-- Applications must have a default route before any other routes can be
-- created. @URI_PATH@ indicates a route that is based on a URI path.
--
-- 'serviceIdentifier', 'createRoute_serviceIdentifier' - The ID of the service in which the route is created. Traffic that
-- matches this route is forwarded to this service.
newCreateRoute ::
  -- | 'applicationIdentifier'
  Prelude.Text ->
  -- | 'environmentIdentifier'
  Prelude.Text ->
  -- | 'routeType'
  RouteType ->
  -- | 'serviceIdentifier'
  Prelude.Text ->
  CreateRoute
newCreateRoute
  pApplicationIdentifier_
  pEnvironmentIdentifier_
  pRouteType_
  pServiceIdentifier_ =
    CreateRoute'
      { tags = Prelude.Nothing,
        uriPathRoute = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        defaultRoute = Prelude.Nothing,
        applicationIdentifier = pApplicationIdentifier_,
        environmentIdentifier = pEnvironmentIdentifier_,
        routeType = pRouteType_,
        serviceIdentifier = pServiceIdentifier_
      }

-- | The tags to assign to the route. A tag is a label that you assign to an
-- Amazon Web Services resource. Each tag consists of a key-value pair..
createRoute_tags :: Lens.Lens' CreateRoute (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRoute_tags = Lens.lens (\CreateRoute' {tags} -> tags) (\s@CreateRoute' {} a -> s {tags = a} :: CreateRoute) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The configuration for the URI path route type.
createRoute_uriPathRoute :: Lens.Lens' CreateRoute (Prelude.Maybe UriPathRouteInput)
createRoute_uriPathRoute = Lens.lens (\CreateRoute' {uriPathRoute} -> uriPathRoute) (\s@CreateRoute' {} a -> s {uriPathRoute = a} :: CreateRoute)

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createRoute_clientToken :: Lens.Lens' CreateRoute (Prelude.Maybe Prelude.Text)
createRoute_clientToken = Lens.lens (\CreateRoute' {clientToken} -> clientToken) (\s@CreateRoute' {} a -> s {clientToken = a} :: CreateRoute)

-- | Configuration for the default route type.
createRoute_defaultRoute :: Lens.Lens' CreateRoute (Prelude.Maybe DefaultRouteInput)
createRoute_defaultRoute = Lens.lens (\CreateRoute' {defaultRoute} -> defaultRoute) (\s@CreateRoute' {} a -> s {defaultRoute = a} :: CreateRoute)

-- | The ID of the application within which the route is being created.
createRoute_applicationIdentifier :: Lens.Lens' CreateRoute Prelude.Text
createRoute_applicationIdentifier = Lens.lens (\CreateRoute' {applicationIdentifier} -> applicationIdentifier) (\s@CreateRoute' {} a -> s {applicationIdentifier = a} :: CreateRoute)

-- | The ID of the environment in which the route is created.
createRoute_environmentIdentifier :: Lens.Lens' CreateRoute Prelude.Text
createRoute_environmentIdentifier = Lens.lens (\CreateRoute' {environmentIdentifier} -> environmentIdentifier) (\s@CreateRoute' {} a -> s {environmentIdentifier = a} :: CreateRoute)

-- | The route type of the route. @DEFAULT@ indicates that all traffic that
-- does not match another route is forwarded to the default route.
-- Applications must have a default route before any other routes can be
-- created. @URI_PATH@ indicates a route that is based on a URI path.
createRoute_routeType :: Lens.Lens' CreateRoute RouteType
createRoute_routeType = Lens.lens (\CreateRoute' {routeType} -> routeType) (\s@CreateRoute' {} a -> s {routeType = a} :: CreateRoute)

-- | The ID of the service in which the route is created. Traffic that
-- matches this route is forwarded to this service.
createRoute_serviceIdentifier :: Lens.Lens' CreateRoute Prelude.Text
createRoute_serviceIdentifier = Lens.lens (\CreateRoute' {serviceIdentifier} -> serviceIdentifier) (\s@CreateRoute' {} a -> s {serviceIdentifier = a} :: CreateRoute)

instance Core.AWSRequest CreateRoute where
  type AWSResponse CreateRoute = CreateRouteResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRouteResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "RouteType")
            Prelude.<*> (x Core..?> "UriPathRoute")
            Prelude.<*> (x Core..?> "CreatedTime")
            Prelude.<*> (x Core..?> "CreatedByAccountId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (x Core..?> "LastUpdatedTime")
            Prelude.<*> (x Core..?> "OwnerAccountId")
            Prelude.<*> (x Core..?> "RouteId")
            Prelude.<*> (x Core..?> "ApplicationId")
            Prelude.<*> (x Core..?> "ServiceId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRoute where
  hashWithSalt _salt CreateRoute' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` uriPathRoute
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` defaultRoute
      `Prelude.hashWithSalt` applicationIdentifier
      `Prelude.hashWithSalt` environmentIdentifier
      `Prelude.hashWithSalt` routeType
      `Prelude.hashWithSalt` serviceIdentifier

instance Prelude.NFData CreateRoute where
  rnf CreateRoute' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf uriPathRoute
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf defaultRoute
      `Prelude.seq` Prelude.rnf applicationIdentifier
      `Prelude.seq` Prelude.rnf environmentIdentifier
      `Prelude.seq` Prelude.rnf routeType
      `Prelude.seq` Prelude.rnf serviceIdentifier

instance Core.ToHeaders CreateRoute where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRoute where
  toJSON CreateRoute' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("UriPathRoute" Core..=) Prelude.<$> uriPathRoute,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("DefaultRoute" Core..=) Prelude.<$> defaultRoute,
            Prelude.Just ("RouteType" Core..= routeType),
            Prelude.Just
              ("ServiceIdentifier" Core..= serviceIdentifier)
          ]
      )

instance Core.ToPath CreateRoute where
  toPath CreateRoute' {..} =
    Prelude.mconcat
      [ "/environments/",
        Core.toBS environmentIdentifier,
        "/applications/",
        Core.toBS applicationIdentifier,
        "/routes"
      ]

instance Core.ToQuery CreateRoute where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRouteResponse' smart constructor.
data CreateRouteResponse = CreateRouteResponse'
  { -- | The tags assigned to the created route. A tag is a label that you assign
    -- to an Amazon Web Services resource. Each tag consists of a key-value
    -- pair.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The route type of the route.
    routeType :: Prelude.Maybe RouteType,
    -- | Configuration for the URI path route type.
    uriPathRoute :: Prelude.Maybe UriPathRouteInput,
    -- | A timestamp that indicates when the route is created.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID of the route creator.
    createdByAccountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the route. The format for this ARN is
    -- @arn:aws:refactor-spaces:region:account-id:resource-type\/resource-id @.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /Amazon Web Services General Reference/.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the route. Activation state only allows @ACTIVE@ or
    -- @INACTIVE@ as user inputs. @FAILED@ is a route state that is system
    -- generated.
    state :: Prelude.Maybe RouteState,
    -- | A timestamp that indicates when the route was last updated.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID of the route owner.
    ownerAccountId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the route.
    routeId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the application in which the route is created.
    applicationId :: Prelude.Maybe Prelude.Text,
    -- | The ID of service in which the route is created. Traffic that matches
    -- this route is forwarded to this service.
    serviceId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRouteResponse_tags' - The tags assigned to the created route. A tag is a label that you assign
-- to an Amazon Web Services resource. Each tag consists of a key-value
-- pair.
--
-- 'routeType', 'createRouteResponse_routeType' - The route type of the route.
--
-- 'uriPathRoute', 'createRouteResponse_uriPathRoute' - Configuration for the URI path route type.
--
-- 'createdTime', 'createRouteResponse_createdTime' - A timestamp that indicates when the route is created.
--
-- 'createdByAccountId', 'createRouteResponse_createdByAccountId' - The Amazon Web Services account ID of the route creator.
--
-- 'arn', 'createRouteResponse_arn' - The Amazon Resource Name (ARN) of the route. The format for this ARN is
-- @arn:aws:refactor-spaces:region:account-id:resource-type\/resource-id @.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /Amazon Web Services General Reference/.
--
-- 'state', 'createRouteResponse_state' - The current state of the route. Activation state only allows @ACTIVE@ or
-- @INACTIVE@ as user inputs. @FAILED@ is a route state that is system
-- generated.
--
-- 'lastUpdatedTime', 'createRouteResponse_lastUpdatedTime' - A timestamp that indicates when the route was last updated.
--
-- 'ownerAccountId', 'createRouteResponse_ownerAccountId' - The Amazon Web Services account ID of the route owner.
--
-- 'routeId', 'createRouteResponse_routeId' - The unique identifier of the route.
--
-- 'applicationId', 'createRouteResponse_applicationId' - The ID of the application in which the route is created.
--
-- 'serviceId', 'createRouteResponse_serviceId' - The ID of service in which the route is created. Traffic that matches
-- this route is forwarded to this service.
--
-- 'httpStatus', 'createRouteResponse_httpStatus' - The response's http status code.
newCreateRouteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRouteResponse
newCreateRouteResponse pHttpStatus_ =
  CreateRouteResponse'
    { tags = Prelude.Nothing,
      routeType = Prelude.Nothing,
      uriPathRoute = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      createdByAccountId = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      ownerAccountId = Prelude.Nothing,
      routeId = Prelude.Nothing,
      applicationId = Prelude.Nothing,
      serviceId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the created route. A tag is a label that you assign
-- to an Amazon Web Services resource. Each tag consists of a key-value
-- pair.
createRouteResponse_tags :: Lens.Lens' CreateRouteResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRouteResponse_tags = Lens.lens (\CreateRouteResponse' {tags} -> tags) (\s@CreateRouteResponse' {} a -> s {tags = a} :: CreateRouteResponse) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The route type of the route.
createRouteResponse_routeType :: Lens.Lens' CreateRouteResponse (Prelude.Maybe RouteType)
createRouteResponse_routeType = Lens.lens (\CreateRouteResponse' {routeType} -> routeType) (\s@CreateRouteResponse' {} a -> s {routeType = a} :: CreateRouteResponse)

-- | Configuration for the URI path route type.
createRouteResponse_uriPathRoute :: Lens.Lens' CreateRouteResponse (Prelude.Maybe UriPathRouteInput)
createRouteResponse_uriPathRoute = Lens.lens (\CreateRouteResponse' {uriPathRoute} -> uriPathRoute) (\s@CreateRouteResponse' {} a -> s {uriPathRoute = a} :: CreateRouteResponse)

-- | A timestamp that indicates when the route is created.
createRouteResponse_createdTime :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.UTCTime)
createRouteResponse_createdTime = Lens.lens (\CreateRouteResponse' {createdTime} -> createdTime) (\s@CreateRouteResponse' {} a -> s {createdTime = a} :: CreateRouteResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID of the route creator.
createRouteResponse_createdByAccountId :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_createdByAccountId = Lens.lens (\CreateRouteResponse' {createdByAccountId} -> createdByAccountId) (\s@CreateRouteResponse' {} a -> s {createdByAccountId = a} :: CreateRouteResponse)

-- | The Amazon Resource Name (ARN) of the route. The format for this ARN is
-- @arn:aws:refactor-spaces:region:account-id:resource-type\/resource-id @.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /Amazon Web Services General Reference/.
createRouteResponse_arn :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_arn = Lens.lens (\CreateRouteResponse' {arn} -> arn) (\s@CreateRouteResponse' {} a -> s {arn = a} :: CreateRouteResponse)

-- | The current state of the route. Activation state only allows @ACTIVE@ or
-- @INACTIVE@ as user inputs. @FAILED@ is a route state that is system
-- generated.
createRouteResponse_state :: Lens.Lens' CreateRouteResponse (Prelude.Maybe RouteState)
createRouteResponse_state = Lens.lens (\CreateRouteResponse' {state} -> state) (\s@CreateRouteResponse' {} a -> s {state = a} :: CreateRouteResponse)

-- | A timestamp that indicates when the route was last updated.
createRouteResponse_lastUpdatedTime :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.UTCTime)
createRouteResponse_lastUpdatedTime = Lens.lens (\CreateRouteResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@CreateRouteResponse' {} a -> s {lastUpdatedTime = a} :: CreateRouteResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID of the route owner.
createRouteResponse_ownerAccountId :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_ownerAccountId = Lens.lens (\CreateRouteResponse' {ownerAccountId} -> ownerAccountId) (\s@CreateRouteResponse' {} a -> s {ownerAccountId = a} :: CreateRouteResponse)

-- | The unique identifier of the route.
createRouteResponse_routeId :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_routeId = Lens.lens (\CreateRouteResponse' {routeId} -> routeId) (\s@CreateRouteResponse' {} a -> s {routeId = a} :: CreateRouteResponse)

-- | The ID of the application in which the route is created.
createRouteResponse_applicationId :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_applicationId = Lens.lens (\CreateRouteResponse' {applicationId} -> applicationId) (\s@CreateRouteResponse' {} a -> s {applicationId = a} :: CreateRouteResponse)

-- | The ID of service in which the route is created. Traffic that matches
-- this route is forwarded to this service.
createRouteResponse_serviceId :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_serviceId = Lens.lens (\CreateRouteResponse' {serviceId} -> serviceId) (\s@CreateRouteResponse' {} a -> s {serviceId = a} :: CreateRouteResponse)

-- | The response's http status code.
createRouteResponse_httpStatus :: Lens.Lens' CreateRouteResponse Prelude.Int
createRouteResponse_httpStatus = Lens.lens (\CreateRouteResponse' {httpStatus} -> httpStatus) (\s@CreateRouteResponse' {} a -> s {httpStatus = a} :: CreateRouteResponse)

instance Prelude.NFData CreateRouteResponse where
  rnf CreateRouteResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf routeType
      `Prelude.seq` Prelude.rnf uriPathRoute
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf createdByAccountId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf ownerAccountId
      `Prelude.seq` Prelude.rnf routeId
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf serviceId
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.MigrationHubReFactorSpaces.GetRoute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an Amazon Web Services Migration Hub Refactor Spaces route.
module Amazonka.MigrationHubReFactorSpaces.GetRoute
  ( -- * Creating a Request
    GetRoute (..),
    newGetRoute,

    -- * Request Lenses
    getRoute_applicationIdentifier,
    getRoute_environmentIdentifier,
    getRoute_routeIdentifier,

    -- * Destructuring the Response
    GetRouteResponse (..),
    newGetRouteResponse,

    -- * Response Lenses
    getRouteResponse_tags,
    getRouteResponse_routeType,
    getRouteResponse_createdTime,
    getRouteResponse_createdByAccountId,
    getRouteResponse_arn,
    getRouteResponse_state,
    getRouteResponse_pathResourceToId,
    getRouteResponse_lastUpdatedTime,
    getRouteResponse_ownerAccountId,
    getRouteResponse_routeId,
    getRouteResponse_methods,
    getRouteResponse_environmentId,
    getRouteResponse_error,
    getRouteResponse_applicationId,
    getRouteResponse_sourcePath,
    getRouteResponse_includeChildPaths,
    getRouteResponse_serviceId,
    getRouteResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubReFactorSpaces.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRoute' smart constructor.
data GetRoute = GetRoute'
  { -- | The ID of the application.
    applicationIdentifier :: Prelude.Text,
    -- | The ID of the environment.
    environmentIdentifier :: Prelude.Text,
    -- | The ID of the route.
    routeIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationIdentifier', 'getRoute_applicationIdentifier' - The ID of the application.
--
-- 'environmentIdentifier', 'getRoute_environmentIdentifier' - The ID of the environment.
--
-- 'routeIdentifier', 'getRoute_routeIdentifier' - The ID of the route.
newGetRoute ::
  -- | 'applicationIdentifier'
  Prelude.Text ->
  -- | 'environmentIdentifier'
  Prelude.Text ->
  -- | 'routeIdentifier'
  Prelude.Text ->
  GetRoute
newGetRoute
  pApplicationIdentifier_
  pEnvironmentIdentifier_
  pRouteIdentifier_ =
    GetRoute'
      { applicationIdentifier =
          pApplicationIdentifier_,
        environmentIdentifier = pEnvironmentIdentifier_,
        routeIdentifier = pRouteIdentifier_
      }

-- | The ID of the application.
getRoute_applicationIdentifier :: Lens.Lens' GetRoute Prelude.Text
getRoute_applicationIdentifier = Lens.lens (\GetRoute' {applicationIdentifier} -> applicationIdentifier) (\s@GetRoute' {} a -> s {applicationIdentifier = a} :: GetRoute)

-- | The ID of the environment.
getRoute_environmentIdentifier :: Lens.Lens' GetRoute Prelude.Text
getRoute_environmentIdentifier = Lens.lens (\GetRoute' {environmentIdentifier} -> environmentIdentifier) (\s@GetRoute' {} a -> s {environmentIdentifier = a} :: GetRoute)

-- | The ID of the route.
getRoute_routeIdentifier :: Lens.Lens' GetRoute Prelude.Text
getRoute_routeIdentifier = Lens.lens (\GetRoute' {routeIdentifier} -> routeIdentifier) (\s@GetRoute' {} a -> s {routeIdentifier = a} :: GetRoute)

instance Core.AWSRequest GetRoute where
  type AWSResponse GetRoute = GetRouteResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRouteResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "RouteType")
            Prelude.<*> (x Core..?> "CreatedTime")
            Prelude.<*> (x Core..?> "CreatedByAccountId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> ( x Core..?> "PathResourceToId"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "LastUpdatedTime")
            Prelude.<*> (x Core..?> "OwnerAccountId")
            Prelude.<*> (x Core..?> "RouteId")
            Prelude.<*> (x Core..?> "Methods" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "EnvironmentId")
            Prelude.<*> (x Core..?> "Error")
            Prelude.<*> (x Core..?> "ApplicationId")
            Prelude.<*> (x Core..?> "SourcePath")
            Prelude.<*> (x Core..?> "IncludeChildPaths")
            Prelude.<*> (x Core..?> "ServiceId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRoute where
  hashWithSalt _salt GetRoute' {..} =
    _salt `Prelude.hashWithSalt` applicationIdentifier
      `Prelude.hashWithSalt` environmentIdentifier
      `Prelude.hashWithSalt` routeIdentifier

instance Prelude.NFData GetRoute where
  rnf GetRoute' {..} =
    Prelude.rnf applicationIdentifier
      `Prelude.seq` Prelude.rnf environmentIdentifier
      `Prelude.seq` Prelude.rnf routeIdentifier

instance Core.ToHeaders GetRoute where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRoute where
  toPath GetRoute' {..} =
    Prelude.mconcat
      [ "/environments/",
        Core.toBS environmentIdentifier,
        "/applications/",
        Core.toBS applicationIdentifier,
        "/routes/",
        Core.toBS routeIdentifier
      ]

instance Core.ToQuery GetRoute where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRouteResponse' smart constructor.
data GetRouteResponse = GetRouteResponse'
  { -- | The tags assigned to the route. A tag is a label that you assign to an
    -- Amazon Web Services resource. Each tag consists of a key-value pair.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The type of route.
    routeType :: Prelude.Maybe RouteType,
    -- | The timestamp of when the route is created.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID of the route creator.
    createdByAccountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the route.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the route.
    state :: Prelude.Maybe RouteState,
    -- | A mapping of Amazon API Gateway path resources to resource IDs.
    pathResourceToId :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A timestamp that indicates when the route was last updated.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID of the route owner.
    ownerAccountId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the route.
    --
    -- __DEFAULT__: All traffic that does not match another route is forwarded
    -- to the default route. Applications must have a default route before any
    -- other routes can be created.
    --
    -- __URI_PATH__: A route that is based on a URI path.
    routeId :: Prelude.Maybe Prelude.Text,
    -- | A list of HTTP methods to match. An empty list matches all values. If a
    -- method is present, only HTTP requests using that method are forwarded to
    -- this route’s service.
    methods :: Prelude.Maybe [HttpMethod],
    -- | Unique identifier of the environment.
    environmentId :: Prelude.Maybe Prelude.Text,
    -- | Any error associated with the route resource.
    error :: Prelude.Maybe ErrorResponse,
    -- | The ID of the application that the route belongs to.
    applicationId :: Prelude.Maybe Prelude.Text,
    -- | The path to use to match traffic. Paths must start with @\/@ and are
    -- relative to the base of the application.
    sourcePath :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether to match all subpaths of the given source path. If
    -- this value is @false@, requests must match the source path exactly
    -- before they are forwarded to this route\'s service.
    includeChildPaths :: Prelude.Maybe Prelude.Bool,
    -- | The unique identifier of the service.
    serviceId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getRouteResponse_tags' - The tags assigned to the route. A tag is a label that you assign to an
-- Amazon Web Services resource. Each tag consists of a key-value pair.
--
-- 'routeType', 'getRouteResponse_routeType' - The type of route.
--
-- 'createdTime', 'getRouteResponse_createdTime' - The timestamp of when the route is created.
--
-- 'createdByAccountId', 'getRouteResponse_createdByAccountId' - The Amazon Web Services account ID of the route creator.
--
-- 'arn', 'getRouteResponse_arn' - The Amazon Resource Name (ARN) of the route.
--
-- 'state', 'getRouteResponse_state' - The current state of the route.
--
-- 'pathResourceToId', 'getRouteResponse_pathResourceToId' - A mapping of Amazon API Gateway path resources to resource IDs.
--
-- 'lastUpdatedTime', 'getRouteResponse_lastUpdatedTime' - A timestamp that indicates when the route was last updated.
--
-- 'ownerAccountId', 'getRouteResponse_ownerAccountId' - The Amazon Web Services account ID of the route owner.
--
-- 'routeId', 'getRouteResponse_routeId' - The unique identifier of the route.
--
-- __DEFAULT__: All traffic that does not match another route is forwarded
-- to the default route. Applications must have a default route before any
-- other routes can be created.
--
-- __URI_PATH__: A route that is based on a URI path.
--
-- 'methods', 'getRouteResponse_methods' - A list of HTTP methods to match. An empty list matches all values. If a
-- method is present, only HTTP requests using that method are forwarded to
-- this route’s service.
--
-- 'environmentId', 'getRouteResponse_environmentId' - Unique identifier of the environment.
--
-- 'error', 'getRouteResponse_error' - Any error associated with the route resource.
--
-- 'applicationId', 'getRouteResponse_applicationId' - The ID of the application that the route belongs to.
--
-- 'sourcePath', 'getRouteResponse_sourcePath' - The path to use to match traffic. Paths must start with @\/@ and are
-- relative to the base of the application.
--
-- 'includeChildPaths', 'getRouteResponse_includeChildPaths' - Indicates whether to match all subpaths of the given source path. If
-- this value is @false@, requests must match the source path exactly
-- before they are forwarded to this route\'s service.
--
-- 'serviceId', 'getRouteResponse_serviceId' - The unique identifier of the service.
--
-- 'httpStatus', 'getRouteResponse_httpStatus' - The response's http status code.
newGetRouteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRouteResponse
newGetRouteResponse pHttpStatus_ =
  GetRouteResponse'
    { tags = Prelude.Nothing,
      routeType = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      createdByAccountId = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      pathResourceToId = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      ownerAccountId = Prelude.Nothing,
      routeId = Prelude.Nothing,
      methods = Prelude.Nothing,
      environmentId = Prelude.Nothing,
      error = Prelude.Nothing,
      applicationId = Prelude.Nothing,
      sourcePath = Prelude.Nothing,
      includeChildPaths = Prelude.Nothing,
      serviceId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the route. A tag is a label that you assign to an
-- Amazon Web Services resource. Each tag consists of a key-value pair.
getRouteResponse_tags :: Lens.Lens' GetRouteResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRouteResponse_tags = Lens.lens (\GetRouteResponse' {tags} -> tags) (\s@GetRouteResponse' {} a -> s {tags = a} :: GetRouteResponse) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The type of route.
getRouteResponse_routeType :: Lens.Lens' GetRouteResponse (Prelude.Maybe RouteType)
getRouteResponse_routeType = Lens.lens (\GetRouteResponse' {routeType} -> routeType) (\s@GetRouteResponse' {} a -> s {routeType = a} :: GetRouteResponse)

-- | The timestamp of when the route is created.
getRouteResponse_createdTime :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.UTCTime)
getRouteResponse_createdTime = Lens.lens (\GetRouteResponse' {createdTime} -> createdTime) (\s@GetRouteResponse' {} a -> s {createdTime = a} :: GetRouteResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID of the route creator.
getRouteResponse_createdByAccountId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_createdByAccountId = Lens.lens (\GetRouteResponse' {createdByAccountId} -> createdByAccountId) (\s@GetRouteResponse' {} a -> s {createdByAccountId = a} :: GetRouteResponse)

-- | The Amazon Resource Name (ARN) of the route.
getRouteResponse_arn :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_arn = Lens.lens (\GetRouteResponse' {arn} -> arn) (\s@GetRouteResponse' {} a -> s {arn = a} :: GetRouteResponse)

-- | The current state of the route.
getRouteResponse_state :: Lens.Lens' GetRouteResponse (Prelude.Maybe RouteState)
getRouteResponse_state = Lens.lens (\GetRouteResponse' {state} -> state) (\s@GetRouteResponse' {} a -> s {state = a} :: GetRouteResponse)

-- | A mapping of Amazon API Gateway path resources to resource IDs.
getRouteResponse_pathResourceToId :: Lens.Lens' GetRouteResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRouteResponse_pathResourceToId = Lens.lens (\GetRouteResponse' {pathResourceToId} -> pathResourceToId) (\s@GetRouteResponse' {} a -> s {pathResourceToId = a} :: GetRouteResponse) Prelude.. Lens.mapping Lens.coerced

-- | A timestamp that indicates when the route was last updated.
getRouteResponse_lastUpdatedTime :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.UTCTime)
getRouteResponse_lastUpdatedTime = Lens.lens (\GetRouteResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@GetRouteResponse' {} a -> s {lastUpdatedTime = a} :: GetRouteResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID of the route owner.
getRouteResponse_ownerAccountId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_ownerAccountId = Lens.lens (\GetRouteResponse' {ownerAccountId} -> ownerAccountId) (\s@GetRouteResponse' {} a -> s {ownerAccountId = a} :: GetRouteResponse)

-- | The unique identifier of the route.
--
-- __DEFAULT__: All traffic that does not match another route is forwarded
-- to the default route. Applications must have a default route before any
-- other routes can be created.
--
-- __URI_PATH__: A route that is based on a URI path.
getRouteResponse_routeId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_routeId = Lens.lens (\GetRouteResponse' {routeId} -> routeId) (\s@GetRouteResponse' {} a -> s {routeId = a} :: GetRouteResponse)

-- | A list of HTTP methods to match. An empty list matches all values. If a
-- method is present, only HTTP requests using that method are forwarded to
-- this route’s service.
getRouteResponse_methods :: Lens.Lens' GetRouteResponse (Prelude.Maybe [HttpMethod])
getRouteResponse_methods = Lens.lens (\GetRouteResponse' {methods} -> methods) (\s@GetRouteResponse' {} a -> s {methods = a} :: GetRouteResponse) Prelude.. Lens.mapping Lens.coerced

-- | Unique identifier of the environment.
getRouteResponse_environmentId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_environmentId = Lens.lens (\GetRouteResponse' {environmentId} -> environmentId) (\s@GetRouteResponse' {} a -> s {environmentId = a} :: GetRouteResponse)

-- | Any error associated with the route resource.
getRouteResponse_error :: Lens.Lens' GetRouteResponse (Prelude.Maybe ErrorResponse)
getRouteResponse_error = Lens.lens (\GetRouteResponse' {error} -> error) (\s@GetRouteResponse' {} a -> s {error = a} :: GetRouteResponse)

-- | The ID of the application that the route belongs to.
getRouteResponse_applicationId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_applicationId = Lens.lens (\GetRouteResponse' {applicationId} -> applicationId) (\s@GetRouteResponse' {} a -> s {applicationId = a} :: GetRouteResponse)

-- | The path to use to match traffic. Paths must start with @\/@ and are
-- relative to the base of the application.
getRouteResponse_sourcePath :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_sourcePath = Lens.lens (\GetRouteResponse' {sourcePath} -> sourcePath) (\s@GetRouteResponse' {} a -> s {sourcePath = a} :: GetRouteResponse)

-- | Indicates whether to match all subpaths of the given source path. If
-- this value is @false@, requests must match the source path exactly
-- before they are forwarded to this route\'s service.
getRouteResponse_includeChildPaths :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Bool)
getRouteResponse_includeChildPaths = Lens.lens (\GetRouteResponse' {includeChildPaths} -> includeChildPaths) (\s@GetRouteResponse' {} a -> s {includeChildPaths = a} :: GetRouteResponse)

-- | The unique identifier of the service.
getRouteResponse_serviceId :: Lens.Lens' GetRouteResponse (Prelude.Maybe Prelude.Text)
getRouteResponse_serviceId = Lens.lens (\GetRouteResponse' {serviceId} -> serviceId) (\s@GetRouteResponse' {} a -> s {serviceId = a} :: GetRouteResponse)

-- | The response's http status code.
getRouteResponse_httpStatus :: Lens.Lens' GetRouteResponse Prelude.Int
getRouteResponse_httpStatus = Lens.lens (\GetRouteResponse' {httpStatus} -> httpStatus) (\s@GetRouteResponse' {} a -> s {httpStatus = a} :: GetRouteResponse)

instance Prelude.NFData GetRouteResponse where
  rnf GetRouteResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf routeType
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf createdByAccountId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf pathResourceToId
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf ownerAccountId
      `Prelude.seq` Prelude.rnf routeId
      `Prelude.seq` Prelude.rnf methods
      `Prelude.seq` Prelude.rnf environmentId
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf sourcePath
      `Prelude.seq` Prelude.rnf includeChildPaths
      `Prelude.seq` Prelude.rnf serviceId
      `Prelude.seq` Prelude.rnf httpStatus

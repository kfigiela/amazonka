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
-- Module      : Amazonka.AppMesh.CreateGatewayRoute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a gateway route.
--
-- A gateway route is attached to a virtual gateway and routes traffic to
-- an existing virtual service. If a route matches a request, it can
-- distribute traffic to a target virtual service.
--
-- For more information about gateway routes, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html Gateway routes>.
module Amazonka.AppMesh.CreateGatewayRoute
  ( -- * Creating a Request
    CreateGatewayRoute (..),
    newCreateGatewayRoute,

    -- * Request Lenses
    createGatewayRoute_tags,
    createGatewayRoute_clientToken,
    createGatewayRoute_meshOwner,
    createGatewayRoute_gatewayRouteName,
    createGatewayRoute_meshName,
    createGatewayRoute_spec,
    createGatewayRoute_virtualGatewayName,

    -- * Destructuring the Response
    CreateGatewayRouteResponse (..),
    newCreateGatewayRouteResponse,

    -- * Response Lenses
    createGatewayRouteResponse_httpStatus,
    createGatewayRouteResponse_gatewayRoute,
  )
where

import Amazonka.AppMesh.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateGatewayRoute' smart constructor.
data CreateGatewayRoute = CreateGatewayRoute'
  { -- | Optional metadata that you can apply to the gateway route to assist with
    -- categorization and organization. Each tag consists of a key and an
    -- optional value, both of which you define. Tag keys can have a maximum
    -- character length of 128 characters, and tag values can have a maximum
    -- length of 256 characters.
    tags :: Prelude.Maybe [TagRef],
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Up to 36 letters, numbers, hyphens, and
    -- underscores are allowed.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services IAM account ID of the service mesh owner. If the
    -- account ID is not your own, then the account that you specify must share
    -- the mesh with your account before you can create the resource in the
    -- service mesh. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The name to use for the gateway route.
    gatewayRouteName :: Prelude.Text,
    -- | The name of the service mesh to create the gateway route in.
    meshName :: Prelude.Text,
    -- | The gateway route specification to apply.
    spec :: GatewayRouteSpec,
    -- | The name of the virtual gateway to associate the gateway route with. If
    -- the virtual gateway is in a shared mesh, then you must be the owner of
    -- the virtual gateway resource.
    virtualGatewayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGatewayRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createGatewayRoute_tags' - Optional metadata that you can apply to the gateway route to assist with
-- categorization and organization. Each tag consists of a key and an
-- optional value, both of which you define. Tag keys can have a maximum
-- character length of 128 characters, and tag values can have a maximum
-- length of 256 characters.
--
-- 'clientToken', 'createGatewayRoute_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Up to 36 letters, numbers, hyphens, and
-- underscores are allowed.
--
-- 'meshOwner', 'createGatewayRoute_meshOwner' - The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then the account that you specify must share
-- the mesh with your account before you can create the resource in the
-- service mesh. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'gatewayRouteName', 'createGatewayRoute_gatewayRouteName' - The name to use for the gateway route.
--
-- 'meshName', 'createGatewayRoute_meshName' - The name of the service mesh to create the gateway route in.
--
-- 'spec', 'createGatewayRoute_spec' - The gateway route specification to apply.
--
-- 'virtualGatewayName', 'createGatewayRoute_virtualGatewayName' - The name of the virtual gateway to associate the gateway route with. If
-- the virtual gateway is in a shared mesh, then you must be the owner of
-- the virtual gateway resource.
newCreateGatewayRoute ::
  -- | 'gatewayRouteName'
  Prelude.Text ->
  -- | 'meshName'
  Prelude.Text ->
  -- | 'spec'
  GatewayRouteSpec ->
  -- | 'virtualGatewayName'
  Prelude.Text ->
  CreateGatewayRoute
newCreateGatewayRoute
  pGatewayRouteName_
  pMeshName_
  pSpec_
  pVirtualGatewayName_ =
    CreateGatewayRoute'
      { tags = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        meshOwner = Prelude.Nothing,
        gatewayRouteName = pGatewayRouteName_,
        meshName = pMeshName_,
        spec = pSpec_,
        virtualGatewayName = pVirtualGatewayName_
      }

-- | Optional metadata that you can apply to the gateway route to assist with
-- categorization and organization. Each tag consists of a key and an
-- optional value, both of which you define. Tag keys can have a maximum
-- character length of 128 characters, and tag values can have a maximum
-- length of 256 characters.
createGatewayRoute_tags :: Lens.Lens' CreateGatewayRoute (Prelude.Maybe [TagRef])
createGatewayRoute_tags = Lens.lens (\CreateGatewayRoute' {tags} -> tags) (\s@CreateGatewayRoute' {} a -> s {tags = a} :: CreateGatewayRoute) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Up to 36 letters, numbers, hyphens, and
-- underscores are allowed.
createGatewayRoute_clientToken :: Lens.Lens' CreateGatewayRoute (Prelude.Maybe Prelude.Text)
createGatewayRoute_clientToken = Lens.lens (\CreateGatewayRoute' {clientToken} -> clientToken) (\s@CreateGatewayRoute' {} a -> s {clientToken = a} :: CreateGatewayRoute)

-- | The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then the account that you specify must share
-- the mesh with your account before you can create the resource in the
-- service mesh. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
createGatewayRoute_meshOwner :: Lens.Lens' CreateGatewayRoute (Prelude.Maybe Prelude.Text)
createGatewayRoute_meshOwner = Lens.lens (\CreateGatewayRoute' {meshOwner} -> meshOwner) (\s@CreateGatewayRoute' {} a -> s {meshOwner = a} :: CreateGatewayRoute)

-- | The name to use for the gateway route.
createGatewayRoute_gatewayRouteName :: Lens.Lens' CreateGatewayRoute Prelude.Text
createGatewayRoute_gatewayRouteName = Lens.lens (\CreateGatewayRoute' {gatewayRouteName} -> gatewayRouteName) (\s@CreateGatewayRoute' {} a -> s {gatewayRouteName = a} :: CreateGatewayRoute)

-- | The name of the service mesh to create the gateway route in.
createGatewayRoute_meshName :: Lens.Lens' CreateGatewayRoute Prelude.Text
createGatewayRoute_meshName = Lens.lens (\CreateGatewayRoute' {meshName} -> meshName) (\s@CreateGatewayRoute' {} a -> s {meshName = a} :: CreateGatewayRoute)

-- | The gateway route specification to apply.
createGatewayRoute_spec :: Lens.Lens' CreateGatewayRoute GatewayRouteSpec
createGatewayRoute_spec = Lens.lens (\CreateGatewayRoute' {spec} -> spec) (\s@CreateGatewayRoute' {} a -> s {spec = a} :: CreateGatewayRoute)

-- | The name of the virtual gateway to associate the gateway route with. If
-- the virtual gateway is in a shared mesh, then you must be the owner of
-- the virtual gateway resource.
createGatewayRoute_virtualGatewayName :: Lens.Lens' CreateGatewayRoute Prelude.Text
createGatewayRoute_virtualGatewayName = Lens.lens (\CreateGatewayRoute' {virtualGatewayName} -> virtualGatewayName) (\s@CreateGatewayRoute' {} a -> s {virtualGatewayName = a} :: CreateGatewayRoute)

instance Core.AWSRequest CreateGatewayRoute where
  type
    AWSResponse CreateGatewayRoute =
      CreateGatewayRouteResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGatewayRouteResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable CreateGatewayRoute where
  hashWithSalt _salt CreateGatewayRoute' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` meshOwner
      `Prelude.hashWithSalt` gatewayRouteName
      `Prelude.hashWithSalt` meshName
      `Prelude.hashWithSalt` spec
      `Prelude.hashWithSalt` virtualGatewayName

instance Prelude.NFData CreateGatewayRoute where
  rnf CreateGatewayRoute' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf meshOwner
      `Prelude.seq` Prelude.rnf gatewayRouteName
      `Prelude.seq` Prelude.rnf meshName
      `Prelude.seq` Prelude.rnf spec
      `Prelude.seq` Prelude.rnf virtualGatewayName

instance Core.ToHeaders CreateGatewayRoute where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateGatewayRoute where
  toJSON CreateGatewayRoute' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ("gatewayRouteName" Core..= gatewayRouteName),
            Prelude.Just ("spec" Core..= spec)
          ]
      )

instance Core.ToPath CreateGatewayRoute where
  toPath CreateGatewayRoute' {..} =
    Prelude.mconcat
      [ "/v20190125/meshes/",
        Core.toBS meshName,
        "/virtualGateway/",
        Core.toBS virtualGatewayName,
        "/gatewayRoutes"
      ]

instance Core.ToQuery CreateGatewayRoute where
  toQuery CreateGatewayRoute' {..} =
    Prelude.mconcat ["meshOwner" Core.=: meshOwner]

-- | /See:/ 'newCreateGatewayRouteResponse' smart constructor.
data CreateGatewayRouteResponse = CreateGatewayRouteResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The full description of your gateway route following the create call.
    gatewayRoute :: GatewayRouteData
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGatewayRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createGatewayRouteResponse_httpStatus' - The response's http status code.
--
-- 'gatewayRoute', 'createGatewayRouteResponse_gatewayRoute' - The full description of your gateway route following the create call.
newCreateGatewayRouteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'gatewayRoute'
  GatewayRouteData ->
  CreateGatewayRouteResponse
newCreateGatewayRouteResponse
  pHttpStatus_
  pGatewayRoute_ =
    CreateGatewayRouteResponse'
      { httpStatus =
          pHttpStatus_,
        gatewayRoute = pGatewayRoute_
      }

-- | The response's http status code.
createGatewayRouteResponse_httpStatus :: Lens.Lens' CreateGatewayRouteResponse Prelude.Int
createGatewayRouteResponse_httpStatus = Lens.lens (\CreateGatewayRouteResponse' {httpStatus} -> httpStatus) (\s@CreateGatewayRouteResponse' {} a -> s {httpStatus = a} :: CreateGatewayRouteResponse)

-- | The full description of your gateway route following the create call.
createGatewayRouteResponse_gatewayRoute :: Lens.Lens' CreateGatewayRouteResponse GatewayRouteData
createGatewayRouteResponse_gatewayRoute = Lens.lens (\CreateGatewayRouteResponse' {gatewayRoute} -> gatewayRoute) (\s@CreateGatewayRouteResponse' {} a -> s {gatewayRoute = a} :: CreateGatewayRouteResponse)

instance Prelude.NFData CreateGatewayRouteResponse where
  rnf CreateGatewayRouteResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf gatewayRoute

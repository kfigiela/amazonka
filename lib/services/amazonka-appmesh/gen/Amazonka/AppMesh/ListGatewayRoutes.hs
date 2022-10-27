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
-- Module      : Amazonka.AppMesh.ListGatewayRoutes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of existing gateway routes that are associated to a
-- virtual gateway.
--
-- This operation returns paginated results.
module Amazonka.AppMesh.ListGatewayRoutes
  ( -- * Creating a Request
    ListGatewayRoutes (..),
    newListGatewayRoutes,

    -- * Request Lenses
    listGatewayRoutes_nextToken,
    listGatewayRoutes_meshOwner,
    listGatewayRoutes_limit,
    listGatewayRoutes_meshName,
    listGatewayRoutes_virtualGatewayName,

    -- * Destructuring the Response
    ListGatewayRoutesResponse (..),
    newListGatewayRoutesResponse,

    -- * Response Lenses
    listGatewayRoutesResponse_nextToken,
    listGatewayRoutesResponse_httpStatus,
    listGatewayRoutesResponse_gatewayRoutes,
  )
where

import Amazonka.AppMesh.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListGatewayRoutes' smart constructor.
data ListGatewayRoutes = ListGatewayRoutes'
  { -- | The @nextToken@ value returned from a previous paginated
    -- @ListGatewayRoutes@ request where @limit@ was used and the results
    -- exceeded the value of that parameter. Pagination continues from the end
    -- of the previous results that returned the @nextToken@ value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services IAM account ID of the service mesh owner. If the
    -- account ID is not your own, then it\'s the ID of the account that shared
    -- the mesh with your account. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by @ListGatewayRoutes@ in
    -- paginated output. When you use this parameter, @ListGatewayRoutes@
    -- returns only @limit@ results in a single page along with a @nextToken@
    -- response element. You can see the remaining results of the initial
    -- request by sending another @ListGatewayRoutes@ request with the returned
    -- @nextToken@ value. This value can be between 1 and 100. If you don\'t
    -- use this parameter, @ListGatewayRoutes@ returns up to 100 results and a
    -- @nextToken@ value if applicable.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The name of the service mesh to list gateway routes in.
    meshName :: Prelude.Text,
    -- | The name of the virtual gateway to list gateway routes in.
    virtualGatewayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGatewayRoutes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGatewayRoutes_nextToken' - The @nextToken@ value returned from a previous paginated
-- @ListGatewayRoutes@ request where @limit@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
--
-- 'meshOwner', 'listGatewayRoutes_meshOwner' - The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then it\'s the ID of the account that shared
-- the mesh with your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'limit', 'listGatewayRoutes_limit' - The maximum number of results returned by @ListGatewayRoutes@ in
-- paginated output. When you use this parameter, @ListGatewayRoutes@
-- returns only @limit@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListGatewayRoutes@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListGatewayRoutes@ returns up to 100 results and a
-- @nextToken@ value if applicable.
--
-- 'meshName', 'listGatewayRoutes_meshName' - The name of the service mesh to list gateway routes in.
--
-- 'virtualGatewayName', 'listGatewayRoutes_virtualGatewayName' - The name of the virtual gateway to list gateway routes in.
newListGatewayRoutes ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'virtualGatewayName'
  Prelude.Text ->
  ListGatewayRoutes
newListGatewayRoutes pMeshName_ pVirtualGatewayName_ =
  ListGatewayRoutes'
    { nextToken = Prelude.Nothing,
      meshOwner = Prelude.Nothing,
      limit = Prelude.Nothing,
      meshName = pMeshName_,
      virtualGatewayName = pVirtualGatewayName_
    }

-- | The @nextToken@ value returned from a previous paginated
-- @ListGatewayRoutes@ request where @limit@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
listGatewayRoutes_nextToken :: Lens.Lens' ListGatewayRoutes (Prelude.Maybe Prelude.Text)
listGatewayRoutes_nextToken = Lens.lens (\ListGatewayRoutes' {nextToken} -> nextToken) (\s@ListGatewayRoutes' {} a -> s {nextToken = a} :: ListGatewayRoutes)

-- | The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then it\'s the ID of the account that shared
-- the mesh with your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
listGatewayRoutes_meshOwner :: Lens.Lens' ListGatewayRoutes (Prelude.Maybe Prelude.Text)
listGatewayRoutes_meshOwner = Lens.lens (\ListGatewayRoutes' {meshOwner} -> meshOwner) (\s@ListGatewayRoutes' {} a -> s {meshOwner = a} :: ListGatewayRoutes)

-- | The maximum number of results returned by @ListGatewayRoutes@ in
-- paginated output. When you use this parameter, @ListGatewayRoutes@
-- returns only @limit@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListGatewayRoutes@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListGatewayRoutes@ returns up to 100 results and a
-- @nextToken@ value if applicable.
listGatewayRoutes_limit :: Lens.Lens' ListGatewayRoutes (Prelude.Maybe Prelude.Natural)
listGatewayRoutes_limit = Lens.lens (\ListGatewayRoutes' {limit} -> limit) (\s@ListGatewayRoutes' {} a -> s {limit = a} :: ListGatewayRoutes)

-- | The name of the service mesh to list gateway routes in.
listGatewayRoutes_meshName :: Lens.Lens' ListGatewayRoutes Prelude.Text
listGatewayRoutes_meshName = Lens.lens (\ListGatewayRoutes' {meshName} -> meshName) (\s@ListGatewayRoutes' {} a -> s {meshName = a} :: ListGatewayRoutes)

-- | The name of the virtual gateway to list gateway routes in.
listGatewayRoutes_virtualGatewayName :: Lens.Lens' ListGatewayRoutes Prelude.Text
listGatewayRoutes_virtualGatewayName = Lens.lens (\ListGatewayRoutes' {virtualGatewayName} -> virtualGatewayName) (\s@ListGatewayRoutes' {} a -> s {virtualGatewayName = a} :: ListGatewayRoutes)

instance Core.AWSPager ListGatewayRoutes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGatewayRoutesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listGatewayRoutesResponse_gatewayRoutes) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGatewayRoutes_nextToken
          Lens..~ rs
          Lens.^? listGatewayRoutesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListGatewayRoutes where
  type
    AWSResponse ListGatewayRoutes =
      ListGatewayRoutesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGatewayRoutesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "gatewayRoutes" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListGatewayRoutes where
  hashWithSalt _salt ListGatewayRoutes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` meshOwner
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` meshName
      `Prelude.hashWithSalt` virtualGatewayName

instance Prelude.NFData ListGatewayRoutes where
  rnf ListGatewayRoutes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf meshOwner
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf meshName
      `Prelude.seq` Prelude.rnf virtualGatewayName

instance Core.ToHeaders ListGatewayRoutes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListGatewayRoutes where
  toPath ListGatewayRoutes' {..} =
    Prelude.mconcat
      [ "/v20190125/meshes/",
        Core.toBS meshName,
        "/virtualGateway/",
        Core.toBS virtualGatewayName,
        "/gatewayRoutes"
      ]

instance Core.ToQuery ListGatewayRoutes where
  toQuery ListGatewayRoutes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "meshOwner" Core.=: meshOwner,
        "limit" Core.=: limit
      ]

-- | /See:/ 'newListGatewayRoutesResponse' smart constructor.
data ListGatewayRoutesResponse = ListGatewayRoutesResponse'
  { -- | The @nextToken@ value to include in a future @ListGatewayRoutes@
    -- request. When the results of a @ListGatewayRoutes@ request exceed
    -- @limit@, you can use this value to retrieve the next page of results.
    -- This value is @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of existing gateway routes for the specified service mesh and
    -- virtual gateway.
    gatewayRoutes :: [GatewayRouteRef]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGatewayRoutesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGatewayRoutesResponse_nextToken' - The @nextToken@ value to include in a future @ListGatewayRoutes@
-- request. When the results of a @ListGatewayRoutes@ request exceed
-- @limit@, you can use this value to retrieve the next page of results.
-- This value is @null@ when there are no more results to return.
--
-- 'httpStatus', 'listGatewayRoutesResponse_httpStatus' - The response's http status code.
--
-- 'gatewayRoutes', 'listGatewayRoutesResponse_gatewayRoutes' - The list of existing gateway routes for the specified service mesh and
-- virtual gateway.
newListGatewayRoutesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGatewayRoutesResponse
newListGatewayRoutesResponse pHttpStatus_ =
  ListGatewayRoutesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      gatewayRoutes = Prelude.mempty
    }

-- | The @nextToken@ value to include in a future @ListGatewayRoutes@
-- request. When the results of a @ListGatewayRoutes@ request exceed
-- @limit@, you can use this value to retrieve the next page of results.
-- This value is @null@ when there are no more results to return.
listGatewayRoutesResponse_nextToken :: Lens.Lens' ListGatewayRoutesResponse (Prelude.Maybe Prelude.Text)
listGatewayRoutesResponse_nextToken = Lens.lens (\ListGatewayRoutesResponse' {nextToken} -> nextToken) (\s@ListGatewayRoutesResponse' {} a -> s {nextToken = a} :: ListGatewayRoutesResponse)

-- | The response's http status code.
listGatewayRoutesResponse_httpStatus :: Lens.Lens' ListGatewayRoutesResponse Prelude.Int
listGatewayRoutesResponse_httpStatus = Lens.lens (\ListGatewayRoutesResponse' {httpStatus} -> httpStatus) (\s@ListGatewayRoutesResponse' {} a -> s {httpStatus = a} :: ListGatewayRoutesResponse)

-- | The list of existing gateway routes for the specified service mesh and
-- virtual gateway.
listGatewayRoutesResponse_gatewayRoutes :: Lens.Lens' ListGatewayRoutesResponse [GatewayRouteRef]
listGatewayRoutesResponse_gatewayRoutes = Lens.lens (\ListGatewayRoutesResponse' {gatewayRoutes} -> gatewayRoutes) (\s@ListGatewayRoutesResponse' {} a -> s {gatewayRoutes = a} :: ListGatewayRoutesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListGatewayRoutesResponse where
  rnf ListGatewayRoutesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf gatewayRoutes

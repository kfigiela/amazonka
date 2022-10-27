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
-- Module      : Amazonka.AppMesh.ListVirtualNodes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of existing virtual nodes.
--
-- This operation returns paginated results.
module Amazonka.AppMesh.ListVirtualNodes
  ( -- * Creating a Request
    ListVirtualNodes (..),
    newListVirtualNodes,

    -- * Request Lenses
    listVirtualNodes_nextToken,
    listVirtualNodes_meshOwner,
    listVirtualNodes_limit,
    listVirtualNodes_meshName,

    -- * Destructuring the Response
    ListVirtualNodesResponse (..),
    newListVirtualNodesResponse,

    -- * Response Lenses
    listVirtualNodesResponse_nextToken,
    listVirtualNodesResponse_httpStatus,
    listVirtualNodesResponse_virtualNodes,
  )
where

import Amazonka.AppMesh.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newListVirtualNodes' smart constructor.
data ListVirtualNodes = ListVirtualNodes'
  { -- | The @nextToken@ value returned from a previous paginated
    -- @ListVirtualNodes@ request where @limit@ was used and the results
    -- exceeded the value of that parameter. Pagination continues from the end
    -- of the previous results that returned the @nextToken@ value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services IAM account ID of the service mesh owner. If the
    -- account ID is not your own, then it\'s the ID of the account that shared
    -- the mesh with your account. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by @ListVirtualNodes@ in
    -- paginated output. When you use this parameter, @ListVirtualNodes@
    -- returns only @limit@ results in a single page along with a @nextToken@
    -- response element. You can see the remaining results of the initial
    -- request by sending another @ListVirtualNodes@ request with the returned
    -- @nextToken@ value. This value can be between 1 and 100. If you don\'t
    -- use this parameter, @ListVirtualNodes@ returns up to 100 results and a
    -- @nextToken@ value if applicable.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The name of the service mesh to list virtual nodes in.
    meshName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVirtualNodes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVirtualNodes_nextToken' - The @nextToken@ value returned from a previous paginated
-- @ListVirtualNodes@ request where @limit@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
--
-- 'meshOwner', 'listVirtualNodes_meshOwner' - The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then it\'s the ID of the account that shared
-- the mesh with your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'limit', 'listVirtualNodes_limit' - The maximum number of results returned by @ListVirtualNodes@ in
-- paginated output. When you use this parameter, @ListVirtualNodes@
-- returns only @limit@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListVirtualNodes@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListVirtualNodes@ returns up to 100 results and a
-- @nextToken@ value if applicable.
--
-- 'meshName', 'listVirtualNodes_meshName' - The name of the service mesh to list virtual nodes in.
newListVirtualNodes ::
  -- | 'meshName'
  Prelude.Text ->
  ListVirtualNodes
newListVirtualNodes pMeshName_ =
  ListVirtualNodes'
    { nextToken = Prelude.Nothing,
      meshOwner = Prelude.Nothing,
      limit = Prelude.Nothing,
      meshName = pMeshName_
    }

-- | The @nextToken@ value returned from a previous paginated
-- @ListVirtualNodes@ request where @limit@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
listVirtualNodes_nextToken :: Lens.Lens' ListVirtualNodes (Prelude.Maybe Prelude.Text)
listVirtualNodes_nextToken = Lens.lens (\ListVirtualNodes' {nextToken} -> nextToken) (\s@ListVirtualNodes' {} a -> s {nextToken = a} :: ListVirtualNodes)

-- | The Amazon Web Services IAM account ID of the service mesh owner. If the
-- account ID is not your own, then it\'s the ID of the account that shared
-- the mesh with your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
listVirtualNodes_meshOwner :: Lens.Lens' ListVirtualNodes (Prelude.Maybe Prelude.Text)
listVirtualNodes_meshOwner = Lens.lens (\ListVirtualNodes' {meshOwner} -> meshOwner) (\s@ListVirtualNodes' {} a -> s {meshOwner = a} :: ListVirtualNodes)

-- | The maximum number of results returned by @ListVirtualNodes@ in
-- paginated output. When you use this parameter, @ListVirtualNodes@
-- returns only @limit@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListVirtualNodes@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListVirtualNodes@ returns up to 100 results and a
-- @nextToken@ value if applicable.
listVirtualNodes_limit :: Lens.Lens' ListVirtualNodes (Prelude.Maybe Prelude.Natural)
listVirtualNodes_limit = Lens.lens (\ListVirtualNodes' {limit} -> limit) (\s@ListVirtualNodes' {} a -> s {limit = a} :: ListVirtualNodes)

-- | The name of the service mesh to list virtual nodes in.
listVirtualNodes_meshName :: Lens.Lens' ListVirtualNodes Prelude.Text
listVirtualNodes_meshName = Lens.lens (\ListVirtualNodes' {meshName} -> meshName) (\s@ListVirtualNodes' {} a -> s {meshName = a} :: ListVirtualNodes)

instance Core.AWSPager ListVirtualNodes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVirtualNodesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listVirtualNodesResponse_virtualNodes) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listVirtualNodes_nextToken
          Lens..~ rs
          Lens.^? listVirtualNodesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListVirtualNodes where
  type
    AWSResponse ListVirtualNodes =
      ListVirtualNodesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVirtualNodesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "virtualNodes" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListVirtualNodes where
  hashWithSalt _salt ListVirtualNodes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` meshOwner
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` meshName

instance Prelude.NFData ListVirtualNodes where
  rnf ListVirtualNodes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf meshOwner
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf meshName

instance Core.ToHeaders ListVirtualNodes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListVirtualNodes where
  toPath ListVirtualNodes' {..} =
    Prelude.mconcat
      [ "/v20190125/meshes/",
        Core.toBS meshName,
        "/virtualNodes"
      ]

instance Core.ToQuery ListVirtualNodes where
  toQuery ListVirtualNodes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "meshOwner" Core.=: meshOwner,
        "limit" Core.=: limit
      ]

-- |
--
-- /See:/ 'newListVirtualNodesResponse' smart constructor.
data ListVirtualNodesResponse = ListVirtualNodesResponse'
  { -- | The @nextToken@ value to include in a future @ListVirtualNodes@ request.
    -- When the results of a @ListVirtualNodes@ request exceed @limit@, you can
    -- use this value to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of existing virtual nodes for the specified service mesh.
    virtualNodes :: [VirtualNodeRef]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVirtualNodesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVirtualNodesResponse_nextToken' - The @nextToken@ value to include in a future @ListVirtualNodes@ request.
-- When the results of a @ListVirtualNodes@ request exceed @limit@, you can
-- use this value to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'httpStatus', 'listVirtualNodesResponse_httpStatus' - The response's http status code.
--
-- 'virtualNodes', 'listVirtualNodesResponse_virtualNodes' - The list of existing virtual nodes for the specified service mesh.
newListVirtualNodesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVirtualNodesResponse
newListVirtualNodesResponse pHttpStatus_ =
  ListVirtualNodesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      virtualNodes = Prelude.mempty
    }

-- | The @nextToken@ value to include in a future @ListVirtualNodes@ request.
-- When the results of a @ListVirtualNodes@ request exceed @limit@, you can
-- use this value to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
listVirtualNodesResponse_nextToken :: Lens.Lens' ListVirtualNodesResponse (Prelude.Maybe Prelude.Text)
listVirtualNodesResponse_nextToken = Lens.lens (\ListVirtualNodesResponse' {nextToken} -> nextToken) (\s@ListVirtualNodesResponse' {} a -> s {nextToken = a} :: ListVirtualNodesResponse)

-- | The response's http status code.
listVirtualNodesResponse_httpStatus :: Lens.Lens' ListVirtualNodesResponse Prelude.Int
listVirtualNodesResponse_httpStatus = Lens.lens (\ListVirtualNodesResponse' {httpStatus} -> httpStatus) (\s@ListVirtualNodesResponse' {} a -> s {httpStatus = a} :: ListVirtualNodesResponse)

-- | The list of existing virtual nodes for the specified service mesh.
listVirtualNodesResponse_virtualNodes :: Lens.Lens' ListVirtualNodesResponse [VirtualNodeRef]
listVirtualNodesResponse_virtualNodes = Lens.lens (\ListVirtualNodesResponse' {virtualNodes} -> virtualNodes) (\s@ListVirtualNodesResponse' {} a -> s {virtualNodes = a} :: ListVirtualNodesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListVirtualNodesResponse where
  rnf ListVirtualNodesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf virtualNodes

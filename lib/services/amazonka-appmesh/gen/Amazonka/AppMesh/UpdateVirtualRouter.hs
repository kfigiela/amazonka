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
-- Module      : Amazonka.AppMesh.UpdateVirtualRouter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing virtual router in a specified service mesh.
module Amazonka.AppMesh.UpdateVirtualRouter
  ( -- * Creating a Request
    UpdateVirtualRouter (..),
    newUpdateVirtualRouter,

    -- * Request Lenses
    updateVirtualRouter_clientToken,
    updateVirtualRouter_meshOwner,
    updateVirtualRouter_meshName,
    updateVirtualRouter_spec,
    updateVirtualRouter_virtualRouterName,

    -- * Destructuring the Response
    UpdateVirtualRouterResponse (..),
    newUpdateVirtualRouterResponse,

    -- * Response Lenses
    updateVirtualRouterResponse_httpStatus,
    updateVirtualRouterResponse_virtualRouter,
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
-- /See:/ 'newUpdateVirtualRouter' smart constructor.
data UpdateVirtualRouter = UpdateVirtualRouter'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Up to 36 letters, numbers, hyphens, and
    -- underscores are allowed.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The AWS IAM account ID of the service mesh owner. If the account ID is
    -- not your own, then it\'s the ID of the account that shared the mesh with
    -- your account. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The name of the service mesh that the virtual router resides in.
    meshName :: Prelude.Text,
    -- | The new virtual router specification to apply. This overwrites the
    -- existing data.
    spec :: VirtualRouterSpec,
    -- | The name of the virtual router to update.
    virtualRouterName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVirtualRouter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateVirtualRouter_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Up to 36 letters, numbers, hyphens, and
-- underscores are allowed.
--
-- 'meshOwner', 'updateVirtualRouter_meshOwner' - The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'meshName', 'updateVirtualRouter_meshName' - The name of the service mesh that the virtual router resides in.
--
-- 'spec', 'updateVirtualRouter_spec' - The new virtual router specification to apply. This overwrites the
-- existing data.
--
-- 'virtualRouterName', 'updateVirtualRouter_virtualRouterName' - The name of the virtual router to update.
newUpdateVirtualRouter ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'spec'
  VirtualRouterSpec ->
  -- | 'virtualRouterName'
  Prelude.Text ->
  UpdateVirtualRouter
newUpdateVirtualRouter
  pMeshName_
  pSpec_
  pVirtualRouterName_ =
    UpdateVirtualRouter'
      { clientToken = Prelude.Nothing,
        meshOwner = Prelude.Nothing,
        meshName = pMeshName_,
        spec = pSpec_,
        virtualRouterName = pVirtualRouterName_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Up to 36 letters, numbers, hyphens, and
-- underscores are allowed.
updateVirtualRouter_clientToken :: Lens.Lens' UpdateVirtualRouter (Prelude.Maybe Prelude.Text)
updateVirtualRouter_clientToken = Lens.lens (\UpdateVirtualRouter' {clientToken} -> clientToken) (\s@UpdateVirtualRouter' {} a -> s {clientToken = a} :: UpdateVirtualRouter)

-- | The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
updateVirtualRouter_meshOwner :: Lens.Lens' UpdateVirtualRouter (Prelude.Maybe Prelude.Text)
updateVirtualRouter_meshOwner = Lens.lens (\UpdateVirtualRouter' {meshOwner} -> meshOwner) (\s@UpdateVirtualRouter' {} a -> s {meshOwner = a} :: UpdateVirtualRouter)

-- | The name of the service mesh that the virtual router resides in.
updateVirtualRouter_meshName :: Lens.Lens' UpdateVirtualRouter Prelude.Text
updateVirtualRouter_meshName = Lens.lens (\UpdateVirtualRouter' {meshName} -> meshName) (\s@UpdateVirtualRouter' {} a -> s {meshName = a} :: UpdateVirtualRouter)

-- | The new virtual router specification to apply. This overwrites the
-- existing data.
updateVirtualRouter_spec :: Lens.Lens' UpdateVirtualRouter VirtualRouterSpec
updateVirtualRouter_spec = Lens.lens (\UpdateVirtualRouter' {spec} -> spec) (\s@UpdateVirtualRouter' {} a -> s {spec = a} :: UpdateVirtualRouter)

-- | The name of the virtual router to update.
updateVirtualRouter_virtualRouterName :: Lens.Lens' UpdateVirtualRouter Prelude.Text
updateVirtualRouter_virtualRouterName = Lens.lens (\UpdateVirtualRouter' {virtualRouterName} -> virtualRouterName) (\s@UpdateVirtualRouter' {} a -> s {virtualRouterName = a} :: UpdateVirtualRouter)

instance Core.AWSRequest UpdateVirtualRouter where
  type
    AWSResponse UpdateVirtualRouter =
      UpdateVirtualRouterResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateVirtualRouterResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable UpdateVirtualRouter

instance Prelude.NFData UpdateVirtualRouter

instance Core.ToHeaders UpdateVirtualRouter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateVirtualRouter where
  toJSON UpdateVirtualRouter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("spec" Core..= spec)
          ]
      )

instance Core.ToPath UpdateVirtualRouter where
  toPath UpdateVirtualRouter' {..} =
    Prelude.mconcat
      [ "/v20190125/meshes/",
        Core.toBS meshName,
        "/virtualRouters/",
        Core.toBS virtualRouterName
      ]

instance Core.ToQuery UpdateVirtualRouter where
  toQuery UpdateVirtualRouter' {..} =
    Prelude.mconcat ["meshOwner" Core.=: meshOwner]

-- |
--
-- /See:/ 'newUpdateVirtualRouterResponse' smart constructor.
data UpdateVirtualRouterResponse = UpdateVirtualRouterResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A full description of the virtual router that was updated.
    virtualRouter :: VirtualRouterData
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVirtualRouterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateVirtualRouterResponse_httpStatus' - The response's http status code.
--
-- 'virtualRouter', 'updateVirtualRouterResponse_virtualRouter' - A full description of the virtual router that was updated.
newUpdateVirtualRouterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'virtualRouter'
  VirtualRouterData ->
  UpdateVirtualRouterResponse
newUpdateVirtualRouterResponse
  pHttpStatus_
  pVirtualRouter_ =
    UpdateVirtualRouterResponse'
      { httpStatus =
          pHttpStatus_,
        virtualRouter = pVirtualRouter_
      }

-- | The response's http status code.
updateVirtualRouterResponse_httpStatus :: Lens.Lens' UpdateVirtualRouterResponse Prelude.Int
updateVirtualRouterResponse_httpStatus = Lens.lens (\UpdateVirtualRouterResponse' {httpStatus} -> httpStatus) (\s@UpdateVirtualRouterResponse' {} a -> s {httpStatus = a} :: UpdateVirtualRouterResponse)

-- | A full description of the virtual router that was updated.
updateVirtualRouterResponse_virtualRouter :: Lens.Lens' UpdateVirtualRouterResponse VirtualRouterData
updateVirtualRouterResponse_virtualRouter = Lens.lens (\UpdateVirtualRouterResponse' {virtualRouter} -> virtualRouter) (\s@UpdateVirtualRouterResponse' {} a -> s {virtualRouter = a} :: UpdateVirtualRouterResponse)

instance Prelude.NFData UpdateVirtualRouterResponse
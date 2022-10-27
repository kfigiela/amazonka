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
-- Module      : Amazonka.CodeDeploy.GetDeploymentTarget
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a deployment target.
module Amazonka.CodeDeploy.GetDeploymentTarget
  ( -- * Creating a Request
    GetDeploymentTarget (..),
    newGetDeploymentTarget,

    -- * Request Lenses
    getDeploymentTarget_targetId,
    getDeploymentTarget_deploymentId,

    -- * Destructuring the Response
    GetDeploymentTargetResponse (..),
    newGetDeploymentTargetResponse,

    -- * Response Lenses
    getDeploymentTargetResponse_deploymentTarget,
    getDeploymentTargetResponse_httpStatus,
  )
where

import Amazonka.CodeDeploy.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetDeploymentTarget' smart constructor.
data GetDeploymentTarget = GetDeploymentTarget'
  { -- | The unique ID of a deployment target.
    targetId :: Prelude.Maybe Prelude.Text,
    -- | The unique ID of a deployment.
    deploymentId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeploymentTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetId', 'getDeploymentTarget_targetId' - The unique ID of a deployment target.
--
-- 'deploymentId', 'getDeploymentTarget_deploymentId' - The unique ID of a deployment.
newGetDeploymentTarget ::
  GetDeploymentTarget
newGetDeploymentTarget =
  GetDeploymentTarget'
    { targetId = Prelude.Nothing,
      deploymentId = Prelude.Nothing
    }

-- | The unique ID of a deployment target.
getDeploymentTarget_targetId :: Lens.Lens' GetDeploymentTarget (Prelude.Maybe Prelude.Text)
getDeploymentTarget_targetId = Lens.lens (\GetDeploymentTarget' {targetId} -> targetId) (\s@GetDeploymentTarget' {} a -> s {targetId = a} :: GetDeploymentTarget)

-- | The unique ID of a deployment.
getDeploymentTarget_deploymentId :: Lens.Lens' GetDeploymentTarget (Prelude.Maybe Prelude.Text)
getDeploymentTarget_deploymentId = Lens.lens (\GetDeploymentTarget' {deploymentId} -> deploymentId) (\s@GetDeploymentTarget' {} a -> s {deploymentId = a} :: GetDeploymentTarget)

instance Core.AWSRequest GetDeploymentTarget where
  type
    AWSResponse GetDeploymentTarget =
      GetDeploymentTargetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeploymentTargetResponse'
            Prelude.<$> (x Core..?> "deploymentTarget")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeploymentTarget where
  hashWithSalt _salt GetDeploymentTarget' {..} =
    _salt `Prelude.hashWithSalt` targetId
      `Prelude.hashWithSalt` deploymentId

instance Prelude.NFData GetDeploymentTarget where
  rnf GetDeploymentTarget' {..} =
    Prelude.rnf targetId
      `Prelude.seq` Prelude.rnf deploymentId

instance Core.ToHeaders GetDeploymentTarget where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeDeploy_20141006.GetDeploymentTarget" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDeploymentTarget where
  toJSON GetDeploymentTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("targetId" Core..=) Prelude.<$> targetId,
            ("deploymentId" Core..=) Prelude.<$> deploymentId
          ]
      )

instance Core.ToPath GetDeploymentTarget where
  toPath = Prelude.const "/"

instance Core.ToQuery GetDeploymentTarget where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeploymentTargetResponse' smart constructor.
data GetDeploymentTargetResponse = GetDeploymentTargetResponse'
  { -- | A deployment target that contains information about a deployment such as
    -- its status, lifecycle events, and when it was last updated. It also
    -- contains metadata about the deployment target. The deployment target
    -- metadata depends on the deployment target\'s type (@instanceTarget@,
    -- @lambdaTarget@, or @ecsTarget@).
    deploymentTarget :: Prelude.Maybe DeploymentTarget,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeploymentTargetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentTarget', 'getDeploymentTargetResponse_deploymentTarget' - A deployment target that contains information about a deployment such as
-- its status, lifecycle events, and when it was last updated. It also
-- contains metadata about the deployment target. The deployment target
-- metadata depends on the deployment target\'s type (@instanceTarget@,
-- @lambdaTarget@, or @ecsTarget@).
--
-- 'httpStatus', 'getDeploymentTargetResponse_httpStatus' - The response's http status code.
newGetDeploymentTargetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeploymentTargetResponse
newGetDeploymentTargetResponse pHttpStatus_ =
  GetDeploymentTargetResponse'
    { deploymentTarget =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A deployment target that contains information about a deployment such as
-- its status, lifecycle events, and when it was last updated. It also
-- contains metadata about the deployment target. The deployment target
-- metadata depends on the deployment target\'s type (@instanceTarget@,
-- @lambdaTarget@, or @ecsTarget@).
getDeploymentTargetResponse_deploymentTarget :: Lens.Lens' GetDeploymentTargetResponse (Prelude.Maybe DeploymentTarget)
getDeploymentTargetResponse_deploymentTarget = Lens.lens (\GetDeploymentTargetResponse' {deploymentTarget} -> deploymentTarget) (\s@GetDeploymentTargetResponse' {} a -> s {deploymentTarget = a} :: GetDeploymentTargetResponse)

-- | The response's http status code.
getDeploymentTargetResponse_httpStatus :: Lens.Lens' GetDeploymentTargetResponse Prelude.Int
getDeploymentTargetResponse_httpStatus = Lens.lens (\GetDeploymentTargetResponse' {httpStatus} -> httpStatus) (\s@GetDeploymentTargetResponse' {} a -> s {httpStatus = a} :: GetDeploymentTargetResponse)

instance Prelude.NFData GetDeploymentTargetResponse where
  rnf GetDeploymentTargetResponse' {..} =
    Prelude.rnf deploymentTarget
      `Prelude.seq` Prelude.rnf httpStatus

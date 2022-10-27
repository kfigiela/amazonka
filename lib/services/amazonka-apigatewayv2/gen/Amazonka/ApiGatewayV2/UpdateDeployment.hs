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
-- Module      : Amazonka.ApiGatewayV2.UpdateDeployment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Deployment.
module Amazonka.ApiGatewayV2.UpdateDeployment
  ( -- * Creating a Request
    UpdateDeployment (..),
    newUpdateDeployment,

    -- * Request Lenses
    updateDeployment_description,
    updateDeployment_apiId,
    updateDeployment_deploymentId,

    -- * Destructuring the Response
    UpdateDeploymentResponse (..),
    newUpdateDeploymentResponse,

    -- * Response Lenses
    updateDeploymentResponse_deploymentStatus,
    updateDeploymentResponse_autoDeployed,
    updateDeploymentResponse_deploymentId,
    updateDeploymentResponse_description,
    updateDeploymentResponse_deploymentStatusMessage,
    updateDeploymentResponse_createdDate,
    updateDeploymentResponse_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Updates a Deployment.
--
-- /See:/ 'newUpdateDeployment' smart constructor.
data UpdateDeployment = UpdateDeployment'
  { -- | The description for the deployment resource.
    description :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The deployment ID.
    deploymentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateDeployment_description' - The description for the deployment resource.
--
-- 'apiId', 'updateDeployment_apiId' - The API identifier.
--
-- 'deploymentId', 'updateDeployment_deploymentId' - The deployment ID.
newUpdateDeployment ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'deploymentId'
  Prelude.Text ->
  UpdateDeployment
newUpdateDeployment pApiId_ pDeploymentId_ =
  UpdateDeployment'
    { description = Prelude.Nothing,
      apiId = pApiId_,
      deploymentId = pDeploymentId_
    }

-- | The description for the deployment resource.
updateDeployment_description :: Lens.Lens' UpdateDeployment (Prelude.Maybe Prelude.Text)
updateDeployment_description = Lens.lens (\UpdateDeployment' {description} -> description) (\s@UpdateDeployment' {} a -> s {description = a} :: UpdateDeployment)

-- | The API identifier.
updateDeployment_apiId :: Lens.Lens' UpdateDeployment Prelude.Text
updateDeployment_apiId = Lens.lens (\UpdateDeployment' {apiId} -> apiId) (\s@UpdateDeployment' {} a -> s {apiId = a} :: UpdateDeployment)

-- | The deployment ID.
updateDeployment_deploymentId :: Lens.Lens' UpdateDeployment Prelude.Text
updateDeployment_deploymentId = Lens.lens (\UpdateDeployment' {deploymentId} -> deploymentId) (\s@UpdateDeployment' {} a -> s {deploymentId = a} :: UpdateDeployment)

instance Core.AWSRequest UpdateDeployment where
  type
    AWSResponse UpdateDeployment =
      UpdateDeploymentResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDeploymentResponse'
            Prelude.<$> (x Core..?> "deploymentStatus")
            Prelude.<*> (x Core..?> "autoDeployed")
            Prelude.<*> (x Core..?> "deploymentId")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "deploymentStatusMessage")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDeployment where
  hashWithSalt _salt UpdateDeployment' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` deploymentId

instance Prelude.NFData UpdateDeployment where
  rnf UpdateDeployment' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf deploymentId

instance Core.ToHeaders UpdateDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDeployment where
  toJSON UpdateDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [("description" Core..=) Prelude.<$> description]
      )

instance Core.ToPath UpdateDeployment where
  toPath UpdateDeployment' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/deployments/",
        Core.toBS deploymentId
      ]

instance Core.ToQuery UpdateDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDeploymentResponse' smart constructor.
data UpdateDeploymentResponse = UpdateDeploymentResponse'
  { -- | The status of the deployment: PENDING, FAILED, or SUCCEEDED.
    deploymentStatus :: Prelude.Maybe DeploymentStatus,
    -- | Specifies whether a deployment was automatically released.
    autoDeployed :: Prelude.Maybe Prelude.Bool,
    -- | The identifier for the deployment.
    deploymentId :: Prelude.Maybe Prelude.Text,
    -- | The description for the deployment.
    description :: Prelude.Maybe Prelude.Text,
    -- | May contain additional feedback on the status of an API deployment.
    deploymentStatusMessage :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the Deployment resource was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentStatus', 'updateDeploymentResponse_deploymentStatus' - The status of the deployment: PENDING, FAILED, or SUCCEEDED.
--
-- 'autoDeployed', 'updateDeploymentResponse_autoDeployed' - Specifies whether a deployment was automatically released.
--
-- 'deploymentId', 'updateDeploymentResponse_deploymentId' - The identifier for the deployment.
--
-- 'description', 'updateDeploymentResponse_description' - The description for the deployment.
--
-- 'deploymentStatusMessage', 'updateDeploymentResponse_deploymentStatusMessage' - May contain additional feedback on the status of an API deployment.
--
-- 'createdDate', 'updateDeploymentResponse_createdDate' - The date and time when the Deployment resource was created.
--
-- 'httpStatus', 'updateDeploymentResponse_httpStatus' - The response's http status code.
newUpdateDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDeploymentResponse
newUpdateDeploymentResponse pHttpStatus_ =
  UpdateDeploymentResponse'
    { deploymentStatus =
        Prelude.Nothing,
      autoDeployed = Prelude.Nothing,
      deploymentId = Prelude.Nothing,
      description = Prelude.Nothing,
      deploymentStatusMessage = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the deployment: PENDING, FAILED, or SUCCEEDED.
updateDeploymentResponse_deploymentStatus :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe DeploymentStatus)
updateDeploymentResponse_deploymentStatus = Lens.lens (\UpdateDeploymentResponse' {deploymentStatus} -> deploymentStatus) (\s@UpdateDeploymentResponse' {} a -> s {deploymentStatus = a} :: UpdateDeploymentResponse)

-- | Specifies whether a deployment was automatically released.
updateDeploymentResponse_autoDeployed :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe Prelude.Bool)
updateDeploymentResponse_autoDeployed = Lens.lens (\UpdateDeploymentResponse' {autoDeployed} -> autoDeployed) (\s@UpdateDeploymentResponse' {} a -> s {autoDeployed = a} :: UpdateDeploymentResponse)

-- | The identifier for the deployment.
updateDeploymentResponse_deploymentId :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe Prelude.Text)
updateDeploymentResponse_deploymentId = Lens.lens (\UpdateDeploymentResponse' {deploymentId} -> deploymentId) (\s@UpdateDeploymentResponse' {} a -> s {deploymentId = a} :: UpdateDeploymentResponse)

-- | The description for the deployment.
updateDeploymentResponse_description :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe Prelude.Text)
updateDeploymentResponse_description = Lens.lens (\UpdateDeploymentResponse' {description} -> description) (\s@UpdateDeploymentResponse' {} a -> s {description = a} :: UpdateDeploymentResponse)

-- | May contain additional feedback on the status of an API deployment.
updateDeploymentResponse_deploymentStatusMessage :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe Prelude.Text)
updateDeploymentResponse_deploymentStatusMessage = Lens.lens (\UpdateDeploymentResponse' {deploymentStatusMessage} -> deploymentStatusMessage) (\s@UpdateDeploymentResponse' {} a -> s {deploymentStatusMessage = a} :: UpdateDeploymentResponse)

-- | The date and time when the Deployment resource was created.
updateDeploymentResponse_createdDate :: Lens.Lens' UpdateDeploymentResponse (Prelude.Maybe Prelude.UTCTime)
updateDeploymentResponse_createdDate = Lens.lens (\UpdateDeploymentResponse' {createdDate} -> createdDate) (\s@UpdateDeploymentResponse' {} a -> s {createdDate = a} :: UpdateDeploymentResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
updateDeploymentResponse_httpStatus :: Lens.Lens' UpdateDeploymentResponse Prelude.Int
updateDeploymentResponse_httpStatus = Lens.lens (\UpdateDeploymentResponse' {httpStatus} -> httpStatus) (\s@UpdateDeploymentResponse' {} a -> s {httpStatus = a} :: UpdateDeploymentResponse)

instance Prelude.NFData UpdateDeploymentResponse where
  rnf UpdateDeploymentResponse' {..} =
    Prelude.rnf deploymentStatus
      `Prelude.seq` Prelude.rnf autoDeployed
      `Prelude.seq` Prelude.rnf deploymentId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf deploymentStatusMessage
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf httpStatus

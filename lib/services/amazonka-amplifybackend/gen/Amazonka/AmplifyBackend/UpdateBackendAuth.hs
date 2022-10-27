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
-- Module      : Amazonka.AmplifyBackend.UpdateBackendAuth
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing backend authentication resource.
module Amazonka.AmplifyBackend.UpdateBackendAuth
  ( -- * Creating a Request
    UpdateBackendAuth (..),
    newUpdateBackendAuth,

    -- * Request Lenses
    updateBackendAuth_appId,
    updateBackendAuth_backendEnvironmentName,
    updateBackendAuth_resourceName,
    updateBackendAuth_resourceConfig,

    -- * Destructuring the Response
    UpdateBackendAuthResponse (..),
    newUpdateBackendAuthResponse,

    -- * Response Lenses
    updateBackendAuthResponse_jobId,
    updateBackendAuthResponse_status,
    updateBackendAuthResponse_error,
    updateBackendAuthResponse_operation,
    updateBackendAuthResponse_appId,
    updateBackendAuthResponse_backendEnvironmentName,
    updateBackendAuthResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request body for UpdateBackendAuth.
--
-- /See:/ 'newUpdateBackendAuth' smart constructor.
data UpdateBackendAuth = UpdateBackendAuth'
  { -- | The app ID.
    appId :: Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Text,
    -- | The name of this resource.
    resourceName :: Prelude.Text,
    -- | The resource configuration for this request object.
    resourceConfig :: UpdateBackendAuthResourceConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendAuth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'updateBackendAuth_appId' - The app ID.
--
-- 'backendEnvironmentName', 'updateBackendAuth_backendEnvironmentName' - The name of the backend environment.
--
-- 'resourceName', 'updateBackendAuth_resourceName' - The name of this resource.
--
-- 'resourceConfig', 'updateBackendAuth_resourceConfig' - The resource configuration for this request object.
newUpdateBackendAuth ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'backendEnvironmentName'
  Prelude.Text ->
  -- | 'resourceName'
  Prelude.Text ->
  -- | 'resourceConfig'
  UpdateBackendAuthResourceConfig ->
  UpdateBackendAuth
newUpdateBackendAuth
  pAppId_
  pBackendEnvironmentName_
  pResourceName_
  pResourceConfig_ =
    UpdateBackendAuth'
      { appId = pAppId_,
        backendEnvironmentName = pBackendEnvironmentName_,
        resourceName = pResourceName_,
        resourceConfig = pResourceConfig_
      }

-- | The app ID.
updateBackendAuth_appId :: Lens.Lens' UpdateBackendAuth Prelude.Text
updateBackendAuth_appId = Lens.lens (\UpdateBackendAuth' {appId} -> appId) (\s@UpdateBackendAuth' {} a -> s {appId = a} :: UpdateBackendAuth)

-- | The name of the backend environment.
updateBackendAuth_backendEnvironmentName :: Lens.Lens' UpdateBackendAuth Prelude.Text
updateBackendAuth_backendEnvironmentName = Lens.lens (\UpdateBackendAuth' {backendEnvironmentName} -> backendEnvironmentName) (\s@UpdateBackendAuth' {} a -> s {backendEnvironmentName = a} :: UpdateBackendAuth)

-- | The name of this resource.
updateBackendAuth_resourceName :: Lens.Lens' UpdateBackendAuth Prelude.Text
updateBackendAuth_resourceName = Lens.lens (\UpdateBackendAuth' {resourceName} -> resourceName) (\s@UpdateBackendAuth' {} a -> s {resourceName = a} :: UpdateBackendAuth)

-- | The resource configuration for this request object.
updateBackendAuth_resourceConfig :: Lens.Lens' UpdateBackendAuth UpdateBackendAuthResourceConfig
updateBackendAuth_resourceConfig = Lens.lens (\UpdateBackendAuth' {resourceConfig} -> resourceConfig) (\s@UpdateBackendAuth' {} a -> s {resourceConfig = a} :: UpdateBackendAuth)

instance Core.AWSRequest UpdateBackendAuth where
  type
    AWSResponse UpdateBackendAuth =
      UpdateBackendAuthResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateBackendAuthResponse'
            Prelude.<$> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (x Core..?> "backendEnvironmentName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateBackendAuth where
  hashWithSalt _salt UpdateBackendAuth' {..} =
    _salt `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` backendEnvironmentName
      `Prelude.hashWithSalt` resourceName
      `Prelude.hashWithSalt` resourceConfig

instance Prelude.NFData UpdateBackendAuth where
  rnf UpdateBackendAuth' {..} =
    Prelude.rnf appId
      `Prelude.seq` Prelude.rnf backendEnvironmentName
      `Prelude.seq` Prelude.rnf resourceName
      `Prelude.seq` Prelude.rnf resourceConfig

instance Core.ToHeaders UpdateBackendAuth where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateBackendAuth where
  toJSON UpdateBackendAuth' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("resourceName" Core..= resourceName),
            Prelude.Just
              ("resourceConfig" Core..= resourceConfig)
          ]
      )

instance Core.ToPath UpdateBackendAuth where
  toPath UpdateBackendAuth' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/auth/",
        Core.toBS backendEnvironmentName
      ]

instance Core.ToQuery UpdateBackendAuth where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateBackendAuthResponse' smart constructor.
data UpdateBackendAuthResponse = UpdateBackendAuthResponse'
  { -- | The ID for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The current status of the request.
    status :: Prelude.Maybe Prelude.Text,
    -- | If the request fails, this error is returned.
    error :: Prelude.Maybe Prelude.Text,
    -- | The name of the operation.
    operation :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendAuthResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'updateBackendAuthResponse_jobId' - The ID for the job.
--
-- 'status', 'updateBackendAuthResponse_status' - The current status of the request.
--
-- 'error', 'updateBackendAuthResponse_error' - If the request fails, this error is returned.
--
-- 'operation', 'updateBackendAuthResponse_operation' - The name of the operation.
--
-- 'appId', 'updateBackendAuthResponse_appId' - The app ID.
--
-- 'backendEnvironmentName', 'updateBackendAuthResponse_backendEnvironmentName' - The name of the backend environment.
--
-- 'httpStatus', 'updateBackendAuthResponse_httpStatus' - The response's http status code.
newUpdateBackendAuthResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateBackendAuthResponse
newUpdateBackendAuthResponse pHttpStatus_ =
  UpdateBackendAuthResponse'
    { jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      error = Prelude.Nothing,
      operation = Prelude.Nothing,
      appId = Prelude.Nothing,
      backendEnvironmentName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID for the job.
updateBackendAuthResponse_jobId :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_jobId = Lens.lens (\UpdateBackendAuthResponse' {jobId} -> jobId) (\s@UpdateBackendAuthResponse' {} a -> s {jobId = a} :: UpdateBackendAuthResponse)

-- | The current status of the request.
updateBackendAuthResponse_status :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_status = Lens.lens (\UpdateBackendAuthResponse' {status} -> status) (\s@UpdateBackendAuthResponse' {} a -> s {status = a} :: UpdateBackendAuthResponse)

-- | If the request fails, this error is returned.
updateBackendAuthResponse_error :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_error = Lens.lens (\UpdateBackendAuthResponse' {error} -> error) (\s@UpdateBackendAuthResponse' {} a -> s {error = a} :: UpdateBackendAuthResponse)

-- | The name of the operation.
updateBackendAuthResponse_operation :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_operation = Lens.lens (\UpdateBackendAuthResponse' {operation} -> operation) (\s@UpdateBackendAuthResponse' {} a -> s {operation = a} :: UpdateBackendAuthResponse)

-- | The app ID.
updateBackendAuthResponse_appId :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_appId = Lens.lens (\UpdateBackendAuthResponse' {appId} -> appId) (\s@UpdateBackendAuthResponse' {} a -> s {appId = a} :: UpdateBackendAuthResponse)

-- | The name of the backend environment.
updateBackendAuthResponse_backendEnvironmentName :: Lens.Lens' UpdateBackendAuthResponse (Prelude.Maybe Prelude.Text)
updateBackendAuthResponse_backendEnvironmentName = Lens.lens (\UpdateBackendAuthResponse' {backendEnvironmentName} -> backendEnvironmentName) (\s@UpdateBackendAuthResponse' {} a -> s {backendEnvironmentName = a} :: UpdateBackendAuthResponse)

-- | The response's http status code.
updateBackendAuthResponse_httpStatus :: Lens.Lens' UpdateBackendAuthResponse Prelude.Int
updateBackendAuthResponse_httpStatus = Lens.lens (\UpdateBackendAuthResponse' {httpStatus} -> httpStatus) (\s@UpdateBackendAuthResponse' {} a -> s {httpStatus = a} :: UpdateBackendAuthResponse)

instance Prelude.NFData UpdateBackendAuthResponse where
  rnf UpdateBackendAuthResponse' {..} =
    Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf backendEnvironmentName
      `Prelude.seq` Prelude.rnf httpStatus

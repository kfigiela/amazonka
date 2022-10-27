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
-- Module      : Amazonka.AmplifyBackend.CreateBackendAuth
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new backend authentication resource.
module Amazonka.AmplifyBackend.CreateBackendAuth
  ( -- * Creating a Request
    CreateBackendAuth (..),
    newCreateBackendAuth,

    -- * Request Lenses
    createBackendAuth_appId,
    createBackendAuth_resourceName,
    createBackendAuth_backendEnvironmentName,
    createBackendAuth_resourceConfig,

    -- * Destructuring the Response
    CreateBackendAuthResponse (..),
    newCreateBackendAuthResponse,

    -- * Response Lenses
    createBackendAuthResponse_jobId,
    createBackendAuthResponse_status,
    createBackendAuthResponse_error,
    createBackendAuthResponse_operation,
    createBackendAuthResponse_appId,
    createBackendAuthResponse_backendEnvironmentName,
    createBackendAuthResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request body for CreateBackendAuth.
--
-- /See:/ 'newCreateBackendAuth' smart constructor.
data CreateBackendAuth = CreateBackendAuth'
  { -- | The app ID.
    appId :: Prelude.Text,
    -- | The name of this resource.
    resourceName :: Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Text,
    -- | The resource configuration for this request object.
    resourceConfig :: CreateBackendAuthResourceConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackendAuth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'createBackendAuth_appId' - The app ID.
--
-- 'resourceName', 'createBackendAuth_resourceName' - The name of this resource.
--
-- 'backendEnvironmentName', 'createBackendAuth_backendEnvironmentName' - The name of the backend environment.
--
-- 'resourceConfig', 'createBackendAuth_resourceConfig' - The resource configuration for this request object.
newCreateBackendAuth ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'resourceName'
  Prelude.Text ->
  -- | 'backendEnvironmentName'
  Prelude.Text ->
  -- | 'resourceConfig'
  CreateBackendAuthResourceConfig ->
  CreateBackendAuth
newCreateBackendAuth
  pAppId_
  pResourceName_
  pBackendEnvironmentName_
  pResourceConfig_ =
    CreateBackendAuth'
      { appId = pAppId_,
        resourceName = pResourceName_,
        backendEnvironmentName = pBackendEnvironmentName_,
        resourceConfig = pResourceConfig_
      }

-- | The app ID.
createBackendAuth_appId :: Lens.Lens' CreateBackendAuth Prelude.Text
createBackendAuth_appId = Lens.lens (\CreateBackendAuth' {appId} -> appId) (\s@CreateBackendAuth' {} a -> s {appId = a} :: CreateBackendAuth)

-- | The name of this resource.
createBackendAuth_resourceName :: Lens.Lens' CreateBackendAuth Prelude.Text
createBackendAuth_resourceName = Lens.lens (\CreateBackendAuth' {resourceName} -> resourceName) (\s@CreateBackendAuth' {} a -> s {resourceName = a} :: CreateBackendAuth)

-- | The name of the backend environment.
createBackendAuth_backendEnvironmentName :: Lens.Lens' CreateBackendAuth Prelude.Text
createBackendAuth_backendEnvironmentName = Lens.lens (\CreateBackendAuth' {backendEnvironmentName} -> backendEnvironmentName) (\s@CreateBackendAuth' {} a -> s {backendEnvironmentName = a} :: CreateBackendAuth)

-- | The resource configuration for this request object.
createBackendAuth_resourceConfig :: Lens.Lens' CreateBackendAuth CreateBackendAuthResourceConfig
createBackendAuth_resourceConfig = Lens.lens (\CreateBackendAuth' {resourceConfig} -> resourceConfig) (\s@CreateBackendAuth' {} a -> s {resourceConfig = a} :: CreateBackendAuth)

instance Core.AWSRequest CreateBackendAuth where
  type
    AWSResponse CreateBackendAuth =
      CreateBackendAuthResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBackendAuthResponse'
            Prelude.<$> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (x Core..?> "backendEnvironmentName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBackendAuth where
  hashWithSalt _salt CreateBackendAuth' {..} =
    _salt `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` resourceName
      `Prelude.hashWithSalt` backendEnvironmentName
      `Prelude.hashWithSalt` resourceConfig

instance Prelude.NFData CreateBackendAuth where
  rnf CreateBackendAuth' {..} =
    Prelude.rnf appId
      `Prelude.seq` Prelude.rnf resourceName
      `Prelude.seq` Prelude.rnf backendEnvironmentName
      `Prelude.seq` Prelude.rnf resourceConfig

instance Core.ToHeaders CreateBackendAuth where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBackendAuth where
  toJSON CreateBackendAuth' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("resourceName" Core..= resourceName),
            Prelude.Just
              ( "backendEnvironmentName"
                  Core..= backendEnvironmentName
              ),
            Prelude.Just
              ("resourceConfig" Core..= resourceConfig)
          ]
      )

instance Core.ToPath CreateBackendAuth where
  toPath CreateBackendAuth' {..} =
    Prelude.mconcat
      ["/backend/", Core.toBS appId, "/auth"]

instance Core.ToQuery CreateBackendAuth where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBackendAuthResponse' smart constructor.
data CreateBackendAuthResponse = CreateBackendAuthResponse'
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
-- Create a value of 'CreateBackendAuthResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'createBackendAuthResponse_jobId' - The ID for the job.
--
-- 'status', 'createBackendAuthResponse_status' - The current status of the request.
--
-- 'error', 'createBackendAuthResponse_error' - If the request fails, this error is returned.
--
-- 'operation', 'createBackendAuthResponse_operation' - The name of the operation.
--
-- 'appId', 'createBackendAuthResponse_appId' - The app ID.
--
-- 'backendEnvironmentName', 'createBackendAuthResponse_backendEnvironmentName' - The name of the backend environment.
--
-- 'httpStatus', 'createBackendAuthResponse_httpStatus' - The response's http status code.
newCreateBackendAuthResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBackendAuthResponse
newCreateBackendAuthResponse pHttpStatus_ =
  CreateBackendAuthResponse'
    { jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      error = Prelude.Nothing,
      operation = Prelude.Nothing,
      appId = Prelude.Nothing,
      backendEnvironmentName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID for the job.
createBackendAuthResponse_jobId :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_jobId = Lens.lens (\CreateBackendAuthResponse' {jobId} -> jobId) (\s@CreateBackendAuthResponse' {} a -> s {jobId = a} :: CreateBackendAuthResponse)

-- | The current status of the request.
createBackendAuthResponse_status :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_status = Lens.lens (\CreateBackendAuthResponse' {status} -> status) (\s@CreateBackendAuthResponse' {} a -> s {status = a} :: CreateBackendAuthResponse)

-- | If the request fails, this error is returned.
createBackendAuthResponse_error :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_error = Lens.lens (\CreateBackendAuthResponse' {error} -> error) (\s@CreateBackendAuthResponse' {} a -> s {error = a} :: CreateBackendAuthResponse)

-- | The name of the operation.
createBackendAuthResponse_operation :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_operation = Lens.lens (\CreateBackendAuthResponse' {operation} -> operation) (\s@CreateBackendAuthResponse' {} a -> s {operation = a} :: CreateBackendAuthResponse)

-- | The app ID.
createBackendAuthResponse_appId :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_appId = Lens.lens (\CreateBackendAuthResponse' {appId} -> appId) (\s@CreateBackendAuthResponse' {} a -> s {appId = a} :: CreateBackendAuthResponse)

-- | The name of the backend environment.
createBackendAuthResponse_backendEnvironmentName :: Lens.Lens' CreateBackendAuthResponse (Prelude.Maybe Prelude.Text)
createBackendAuthResponse_backendEnvironmentName = Lens.lens (\CreateBackendAuthResponse' {backendEnvironmentName} -> backendEnvironmentName) (\s@CreateBackendAuthResponse' {} a -> s {backendEnvironmentName = a} :: CreateBackendAuthResponse)

-- | The response's http status code.
createBackendAuthResponse_httpStatus :: Lens.Lens' CreateBackendAuthResponse Prelude.Int
createBackendAuthResponse_httpStatus = Lens.lens (\CreateBackendAuthResponse' {httpStatus} -> httpStatus) (\s@CreateBackendAuthResponse' {} a -> s {httpStatus = a} :: CreateBackendAuthResponse)

instance Prelude.NFData CreateBackendAuthResponse where
  rnf CreateBackendAuthResponse' {..} =
    Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf backendEnvironmentName
      `Prelude.seq` Prelude.rnf httpStatus

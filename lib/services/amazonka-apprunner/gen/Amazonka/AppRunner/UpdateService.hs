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
-- Module      : Amazonka.AppRunner.UpdateService
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an App Runner service. You can update the source configuration
-- and instance configuration of the service. You can also update the ARN
-- of the auto scaling configuration resource that\'s associated with the
-- service. However, you can\'t change the name or the encryption
-- configuration of the service. These can be set only when you create the
-- service.
--
-- To update the tags applied to your service, use the separate actions
-- TagResource and UntagResource.
--
-- This is an asynchronous operation. On a successful call, you can use the
-- returned @OperationId@ and the ListOperations call to track the
-- operation\'s progress.
module Amazonka.AppRunner.UpdateService
  ( -- * Creating a Request
    UpdateService (..),
    newUpdateService,

    -- * Request Lenses
    updateService_sourceConfiguration,
    updateService_instanceConfiguration,
    updateService_observabilityConfiguration,
    updateService_networkConfiguration,
    updateService_autoScalingConfigurationArn,
    updateService_healthCheckConfiguration,
    updateService_serviceArn,

    -- * Destructuring the Response
    UpdateServiceResponse (..),
    newUpdateServiceResponse,

    -- * Response Lenses
    updateServiceResponse_httpStatus,
    updateServiceResponse_service,
    updateServiceResponse_operationId,
  )
where

import Amazonka.AppRunner.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateService' smart constructor.
data UpdateService = UpdateService'
  { -- | The source configuration to apply to the App Runner service.
    --
    -- You can change the configuration of the code or image repository that
    -- the service uses. However, you can\'t switch from code to image or the
    -- other way around. This means that you must provide the same structure
    -- member of @SourceConfiguration@ that you originally included when you
    -- created the service. Specifically, you can include either
    -- @CodeRepository@ or @ImageRepository@. To update the source
    -- configuration, set the values to members of the structure that you
    -- include.
    sourceConfiguration :: Prelude.Maybe SourceConfiguration,
    -- | The runtime configuration to apply to instances (scaling units) of your
    -- service.
    instanceConfiguration :: Prelude.Maybe InstanceConfiguration,
    -- | The observability configuration of your service.
    observabilityConfiguration :: Prelude.Maybe ServiceObservabilityConfiguration,
    -- | Configuration settings related to network traffic of the web application
    -- that the App Runner service runs.
    networkConfiguration :: Prelude.Maybe NetworkConfiguration,
    -- | The Amazon Resource Name (ARN) of an App Runner automatic scaling
    -- configuration resource that you want to associate with the App Runner
    -- service.
    autoScalingConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The settings for the health check that App Runner performs to monitor
    -- the health of the App Runner service.
    healthCheckConfiguration :: Prelude.Maybe HealthCheckConfiguration,
    -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to update.
    serviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceConfiguration', 'updateService_sourceConfiguration' - The source configuration to apply to the App Runner service.
--
-- You can change the configuration of the code or image repository that
-- the service uses. However, you can\'t switch from code to image or the
-- other way around. This means that you must provide the same structure
-- member of @SourceConfiguration@ that you originally included when you
-- created the service. Specifically, you can include either
-- @CodeRepository@ or @ImageRepository@. To update the source
-- configuration, set the values to members of the structure that you
-- include.
--
-- 'instanceConfiguration', 'updateService_instanceConfiguration' - The runtime configuration to apply to instances (scaling units) of your
-- service.
--
-- 'observabilityConfiguration', 'updateService_observabilityConfiguration' - The observability configuration of your service.
--
-- 'networkConfiguration', 'updateService_networkConfiguration' - Configuration settings related to network traffic of the web application
-- that the App Runner service runs.
--
-- 'autoScalingConfigurationArn', 'updateService_autoScalingConfigurationArn' - The Amazon Resource Name (ARN) of an App Runner automatic scaling
-- configuration resource that you want to associate with the App Runner
-- service.
--
-- 'healthCheckConfiguration', 'updateService_healthCheckConfiguration' - The settings for the health check that App Runner performs to monitor
-- the health of the App Runner service.
--
-- 'serviceArn', 'updateService_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to update.
newUpdateService ::
  -- | 'serviceArn'
  Prelude.Text ->
  UpdateService
newUpdateService pServiceArn_ =
  UpdateService'
    { sourceConfiguration =
        Prelude.Nothing,
      instanceConfiguration = Prelude.Nothing,
      observabilityConfiguration = Prelude.Nothing,
      networkConfiguration = Prelude.Nothing,
      autoScalingConfigurationArn = Prelude.Nothing,
      healthCheckConfiguration = Prelude.Nothing,
      serviceArn = pServiceArn_
    }

-- | The source configuration to apply to the App Runner service.
--
-- You can change the configuration of the code or image repository that
-- the service uses. However, you can\'t switch from code to image or the
-- other way around. This means that you must provide the same structure
-- member of @SourceConfiguration@ that you originally included when you
-- created the service. Specifically, you can include either
-- @CodeRepository@ or @ImageRepository@. To update the source
-- configuration, set the values to members of the structure that you
-- include.
updateService_sourceConfiguration :: Lens.Lens' UpdateService (Prelude.Maybe SourceConfiguration)
updateService_sourceConfiguration = Lens.lens (\UpdateService' {sourceConfiguration} -> sourceConfiguration) (\s@UpdateService' {} a -> s {sourceConfiguration = a} :: UpdateService)

-- | The runtime configuration to apply to instances (scaling units) of your
-- service.
updateService_instanceConfiguration :: Lens.Lens' UpdateService (Prelude.Maybe InstanceConfiguration)
updateService_instanceConfiguration = Lens.lens (\UpdateService' {instanceConfiguration} -> instanceConfiguration) (\s@UpdateService' {} a -> s {instanceConfiguration = a} :: UpdateService)

-- | The observability configuration of your service.
updateService_observabilityConfiguration :: Lens.Lens' UpdateService (Prelude.Maybe ServiceObservabilityConfiguration)
updateService_observabilityConfiguration = Lens.lens (\UpdateService' {observabilityConfiguration} -> observabilityConfiguration) (\s@UpdateService' {} a -> s {observabilityConfiguration = a} :: UpdateService)

-- | Configuration settings related to network traffic of the web application
-- that the App Runner service runs.
updateService_networkConfiguration :: Lens.Lens' UpdateService (Prelude.Maybe NetworkConfiguration)
updateService_networkConfiguration = Lens.lens (\UpdateService' {networkConfiguration} -> networkConfiguration) (\s@UpdateService' {} a -> s {networkConfiguration = a} :: UpdateService)

-- | The Amazon Resource Name (ARN) of an App Runner automatic scaling
-- configuration resource that you want to associate with the App Runner
-- service.
updateService_autoScalingConfigurationArn :: Lens.Lens' UpdateService (Prelude.Maybe Prelude.Text)
updateService_autoScalingConfigurationArn = Lens.lens (\UpdateService' {autoScalingConfigurationArn} -> autoScalingConfigurationArn) (\s@UpdateService' {} a -> s {autoScalingConfigurationArn = a} :: UpdateService)

-- | The settings for the health check that App Runner performs to monitor
-- the health of the App Runner service.
updateService_healthCheckConfiguration :: Lens.Lens' UpdateService (Prelude.Maybe HealthCheckConfiguration)
updateService_healthCheckConfiguration = Lens.lens (\UpdateService' {healthCheckConfiguration} -> healthCheckConfiguration) (\s@UpdateService' {} a -> s {healthCheckConfiguration = a} :: UpdateService)

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to update.
updateService_serviceArn :: Lens.Lens' UpdateService Prelude.Text
updateService_serviceArn = Lens.lens (\UpdateService' {serviceArn} -> serviceArn) (\s@UpdateService' {} a -> s {serviceArn = a} :: UpdateService)

instance Core.AWSRequest UpdateService where
  type
    AWSResponse UpdateService =
      UpdateServiceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateServiceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Service")
            Prelude.<*> (x Core..:> "OperationId")
      )

instance Prelude.Hashable UpdateService where
  hashWithSalt _salt UpdateService' {..} =
    _salt `Prelude.hashWithSalt` sourceConfiguration
      `Prelude.hashWithSalt` instanceConfiguration
      `Prelude.hashWithSalt` observabilityConfiguration
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` autoScalingConfigurationArn
      `Prelude.hashWithSalt` healthCheckConfiguration
      `Prelude.hashWithSalt` serviceArn

instance Prelude.NFData UpdateService where
  rnf UpdateService' {..} =
    Prelude.rnf sourceConfiguration
      `Prelude.seq` Prelude.rnf instanceConfiguration
      `Prelude.seq` Prelude.rnf observabilityConfiguration
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf autoScalingConfigurationArn
      `Prelude.seq` Prelude.rnf healthCheckConfiguration
      `Prelude.seq` Prelude.rnf serviceArn

instance Core.ToHeaders UpdateService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AppRunner.UpdateService" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateService where
  toJSON UpdateService' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SourceConfiguration" Core..=)
              Prelude.<$> sourceConfiguration,
            ("InstanceConfiguration" Core..=)
              Prelude.<$> instanceConfiguration,
            ("ObservabilityConfiguration" Core..=)
              Prelude.<$> observabilityConfiguration,
            ("NetworkConfiguration" Core..=)
              Prelude.<$> networkConfiguration,
            ("AutoScalingConfigurationArn" Core..=)
              Prelude.<$> autoScalingConfigurationArn,
            ("HealthCheckConfiguration" Core..=)
              Prelude.<$> healthCheckConfiguration,
            Prelude.Just ("ServiceArn" Core..= serviceArn)
          ]
      )

instance Core.ToPath UpdateService where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateServiceResponse' smart constructor.
data UpdateServiceResponse = UpdateServiceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A description of the App Runner service updated by this request. All
    -- configuration values in the returned @Service@ structure reflect
    -- configuration changes that are being applied by this request.
    service :: Service,
    -- | The unique ID of the asynchronous operation that this request started.
    -- You can use it combined with the ListOperations call to track the
    -- operation\'s progress.
    operationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateServiceResponse_httpStatus' - The response's http status code.
--
-- 'service', 'updateServiceResponse_service' - A description of the App Runner service updated by this request. All
-- configuration values in the returned @Service@ structure reflect
-- configuration changes that are being applied by this request.
--
-- 'operationId', 'updateServiceResponse_operationId' - The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
newUpdateServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'service'
  Service ->
  -- | 'operationId'
  Prelude.Text ->
  UpdateServiceResponse
newUpdateServiceResponse
  pHttpStatus_
  pService_
  pOperationId_ =
    UpdateServiceResponse'
      { httpStatus = pHttpStatus_,
        service = pService_,
        operationId = pOperationId_
      }

-- | The response's http status code.
updateServiceResponse_httpStatus :: Lens.Lens' UpdateServiceResponse Prelude.Int
updateServiceResponse_httpStatus = Lens.lens (\UpdateServiceResponse' {httpStatus} -> httpStatus) (\s@UpdateServiceResponse' {} a -> s {httpStatus = a} :: UpdateServiceResponse)

-- | A description of the App Runner service updated by this request. All
-- configuration values in the returned @Service@ structure reflect
-- configuration changes that are being applied by this request.
updateServiceResponse_service :: Lens.Lens' UpdateServiceResponse Service
updateServiceResponse_service = Lens.lens (\UpdateServiceResponse' {service} -> service) (\s@UpdateServiceResponse' {} a -> s {service = a} :: UpdateServiceResponse)

-- | The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
updateServiceResponse_operationId :: Lens.Lens' UpdateServiceResponse Prelude.Text
updateServiceResponse_operationId = Lens.lens (\UpdateServiceResponse' {operationId} -> operationId) (\s@UpdateServiceResponse' {} a -> s {operationId = a} :: UpdateServiceResponse)

instance Prelude.NFData UpdateServiceResponse where
  rnf UpdateServiceResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf service
      `Prelude.seq` Prelude.rnf operationId

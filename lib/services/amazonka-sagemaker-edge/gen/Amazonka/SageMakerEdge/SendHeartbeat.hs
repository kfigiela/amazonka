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
-- Module      : Amazonka.SageMakerEdge.SendHeartbeat
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use to get the current status of devices registered on SageMaker Edge
-- Manager.
module Amazonka.SageMakerEdge.SendHeartbeat
  ( -- * Creating a Request
    SendHeartbeat (..),
    newSendHeartbeat,

    -- * Request Lenses
    sendHeartbeat_models,
    sendHeartbeat_deploymentResult,
    sendHeartbeat_agentMetrics,
    sendHeartbeat_agentVersion,
    sendHeartbeat_deviceName,
    sendHeartbeat_deviceFleetName,

    -- * Destructuring the Response
    SendHeartbeatResponse (..),
    newSendHeartbeatResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMakerEdge.Types

-- | /See:/ 'newSendHeartbeat' smart constructor.
data SendHeartbeat = SendHeartbeat'
  { -- | Returns a list of models deployed on the the device.
    models :: Prelude.Maybe [Model],
    -- | Returns the result of a deployment on the device.
    deploymentResult :: Prelude.Maybe DeploymentResult,
    -- | For internal use. Returns a list of SageMaker Edge Manager agent
    -- operating metrics.
    agentMetrics :: Prelude.Maybe [EdgeMetric],
    -- | Returns the version of the agent.
    agentVersion :: Prelude.Text,
    -- | The unique name of the device.
    deviceName :: Prelude.Text,
    -- | The name of the fleet that the device belongs to.
    deviceFleetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendHeartbeat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'models', 'sendHeartbeat_models' - Returns a list of models deployed on the the device.
--
-- 'deploymentResult', 'sendHeartbeat_deploymentResult' - Returns the result of a deployment on the device.
--
-- 'agentMetrics', 'sendHeartbeat_agentMetrics' - For internal use. Returns a list of SageMaker Edge Manager agent
-- operating metrics.
--
-- 'agentVersion', 'sendHeartbeat_agentVersion' - Returns the version of the agent.
--
-- 'deviceName', 'sendHeartbeat_deviceName' - The unique name of the device.
--
-- 'deviceFleetName', 'sendHeartbeat_deviceFleetName' - The name of the fleet that the device belongs to.
newSendHeartbeat ::
  -- | 'agentVersion'
  Prelude.Text ->
  -- | 'deviceName'
  Prelude.Text ->
  -- | 'deviceFleetName'
  Prelude.Text ->
  SendHeartbeat
newSendHeartbeat
  pAgentVersion_
  pDeviceName_
  pDeviceFleetName_ =
    SendHeartbeat'
      { models = Prelude.Nothing,
        deploymentResult = Prelude.Nothing,
        agentMetrics = Prelude.Nothing,
        agentVersion = pAgentVersion_,
        deviceName = pDeviceName_,
        deviceFleetName = pDeviceFleetName_
      }

-- | Returns a list of models deployed on the the device.
sendHeartbeat_models :: Lens.Lens' SendHeartbeat (Prelude.Maybe [Model])
sendHeartbeat_models = Lens.lens (\SendHeartbeat' {models} -> models) (\s@SendHeartbeat' {} a -> s {models = a} :: SendHeartbeat) Prelude.. Lens.mapping Lens.coerced

-- | Returns the result of a deployment on the device.
sendHeartbeat_deploymentResult :: Lens.Lens' SendHeartbeat (Prelude.Maybe DeploymentResult)
sendHeartbeat_deploymentResult = Lens.lens (\SendHeartbeat' {deploymentResult} -> deploymentResult) (\s@SendHeartbeat' {} a -> s {deploymentResult = a} :: SendHeartbeat)

-- | For internal use. Returns a list of SageMaker Edge Manager agent
-- operating metrics.
sendHeartbeat_agentMetrics :: Lens.Lens' SendHeartbeat (Prelude.Maybe [EdgeMetric])
sendHeartbeat_agentMetrics = Lens.lens (\SendHeartbeat' {agentMetrics} -> agentMetrics) (\s@SendHeartbeat' {} a -> s {agentMetrics = a} :: SendHeartbeat) Prelude.. Lens.mapping Lens.coerced

-- | Returns the version of the agent.
sendHeartbeat_agentVersion :: Lens.Lens' SendHeartbeat Prelude.Text
sendHeartbeat_agentVersion = Lens.lens (\SendHeartbeat' {agentVersion} -> agentVersion) (\s@SendHeartbeat' {} a -> s {agentVersion = a} :: SendHeartbeat)

-- | The unique name of the device.
sendHeartbeat_deviceName :: Lens.Lens' SendHeartbeat Prelude.Text
sendHeartbeat_deviceName = Lens.lens (\SendHeartbeat' {deviceName} -> deviceName) (\s@SendHeartbeat' {} a -> s {deviceName = a} :: SendHeartbeat)

-- | The name of the fleet that the device belongs to.
sendHeartbeat_deviceFleetName :: Lens.Lens' SendHeartbeat Prelude.Text
sendHeartbeat_deviceFleetName = Lens.lens (\SendHeartbeat' {deviceFleetName} -> deviceFleetName) (\s@SendHeartbeat' {} a -> s {deviceFleetName = a} :: SendHeartbeat)

instance Core.AWSRequest SendHeartbeat where
  type
    AWSResponse SendHeartbeat =
      SendHeartbeatResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull SendHeartbeatResponse'

instance Prelude.Hashable SendHeartbeat where
  hashWithSalt _salt SendHeartbeat' {..} =
    _salt `Prelude.hashWithSalt` models
      `Prelude.hashWithSalt` deploymentResult
      `Prelude.hashWithSalt` agentMetrics
      `Prelude.hashWithSalt` agentVersion
      `Prelude.hashWithSalt` deviceName
      `Prelude.hashWithSalt` deviceFleetName

instance Prelude.NFData SendHeartbeat where
  rnf SendHeartbeat' {..} =
    Prelude.rnf models
      `Prelude.seq` Prelude.rnf deploymentResult
      `Prelude.seq` Prelude.rnf agentMetrics
      `Prelude.seq` Prelude.rnf agentVersion
      `Prelude.seq` Prelude.rnf deviceName
      `Prelude.seq` Prelude.rnf deviceFleetName

instance Core.ToHeaders SendHeartbeat where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SendHeartbeat where
  toJSON SendHeartbeat' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Models" Core..=) Prelude.<$> models,
            ("DeploymentResult" Core..=)
              Prelude.<$> deploymentResult,
            ("AgentMetrics" Core..=) Prelude.<$> agentMetrics,
            Prelude.Just ("AgentVersion" Core..= agentVersion),
            Prelude.Just ("DeviceName" Core..= deviceName),
            Prelude.Just
              ("DeviceFleetName" Core..= deviceFleetName)
          ]
      )

instance Core.ToPath SendHeartbeat where
  toPath = Prelude.const "/SendHeartbeat"

instance Core.ToQuery SendHeartbeat where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSendHeartbeatResponse' smart constructor.
data SendHeartbeatResponse = SendHeartbeatResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendHeartbeatResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newSendHeartbeatResponse ::
  SendHeartbeatResponse
newSendHeartbeatResponse = SendHeartbeatResponse'

instance Prelude.NFData SendHeartbeatResponse where
  rnf _ = ()

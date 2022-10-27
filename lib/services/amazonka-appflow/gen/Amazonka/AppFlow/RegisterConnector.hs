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
-- Module      : Amazonka.AppFlow.RegisterConnector
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a new connector with your Amazon Web Services account. Before
-- you can register the connector, you must deploy lambda in your account.
module Amazonka.AppFlow.RegisterConnector
  ( -- * Creating a Request
    RegisterConnector (..),
    newRegisterConnector,

    -- * Request Lenses
    registerConnector_connectorProvisioningType,
    registerConnector_description,
    registerConnector_connectorProvisioningConfig,
    registerConnector_connectorLabel,

    -- * Destructuring the Response
    RegisterConnectorResponse (..),
    newRegisterConnectorResponse,

    -- * Response Lenses
    registerConnectorResponse_connectorArn,
    registerConnectorResponse_httpStatus,
  )
where

import Amazonka.AppFlow.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRegisterConnector' smart constructor.
data RegisterConnector = RegisterConnector'
  { -- | The provisioning type of the connector. Currently the only supported
    -- value is LAMBDA.
    connectorProvisioningType :: Prelude.Maybe ConnectorProvisioningType,
    -- | A description about the connector that\'s being registered.
    description :: Prelude.Maybe Prelude.Text,
    -- | The provisioning type of the connector. Currently the only supported
    -- value is LAMBDA.
    connectorProvisioningConfig :: Prelude.Maybe ConnectorProvisioningConfig,
    -- | The name of the connector. The name is unique for each
    -- @ConnectorRegistration@ in your Amazon Web Services account.
    connectorLabel :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterConnector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorProvisioningType', 'registerConnector_connectorProvisioningType' - The provisioning type of the connector. Currently the only supported
-- value is LAMBDA.
--
-- 'description', 'registerConnector_description' - A description about the connector that\'s being registered.
--
-- 'connectorProvisioningConfig', 'registerConnector_connectorProvisioningConfig' - The provisioning type of the connector. Currently the only supported
-- value is LAMBDA.
--
-- 'connectorLabel', 'registerConnector_connectorLabel' - The name of the connector. The name is unique for each
-- @ConnectorRegistration@ in your Amazon Web Services account.
newRegisterConnector ::
  RegisterConnector
newRegisterConnector =
  RegisterConnector'
    { connectorProvisioningType =
        Prelude.Nothing,
      description = Prelude.Nothing,
      connectorProvisioningConfig = Prelude.Nothing,
      connectorLabel = Prelude.Nothing
    }

-- | The provisioning type of the connector. Currently the only supported
-- value is LAMBDA.
registerConnector_connectorProvisioningType :: Lens.Lens' RegisterConnector (Prelude.Maybe ConnectorProvisioningType)
registerConnector_connectorProvisioningType = Lens.lens (\RegisterConnector' {connectorProvisioningType} -> connectorProvisioningType) (\s@RegisterConnector' {} a -> s {connectorProvisioningType = a} :: RegisterConnector)

-- | A description about the connector that\'s being registered.
registerConnector_description :: Lens.Lens' RegisterConnector (Prelude.Maybe Prelude.Text)
registerConnector_description = Lens.lens (\RegisterConnector' {description} -> description) (\s@RegisterConnector' {} a -> s {description = a} :: RegisterConnector)

-- | The provisioning type of the connector. Currently the only supported
-- value is LAMBDA.
registerConnector_connectorProvisioningConfig :: Lens.Lens' RegisterConnector (Prelude.Maybe ConnectorProvisioningConfig)
registerConnector_connectorProvisioningConfig = Lens.lens (\RegisterConnector' {connectorProvisioningConfig} -> connectorProvisioningConfig) (\s@RegisterConnector' {} a -> s {connectorProvisioningConfig = a} :: RegisterConnector)

-- | The name of the connector. The name is unique for each
-- @ConnectorRegistration@ in your Amazon Web Services account.
registerConnector_connectorLabel :: Lens.Lens' RegisterConnector (Prelude.Maybe Prelude.Text)
registerConnector_connectorLabel = Lens.lens (\RegisterConnector' {connectorLabel} -> connectorLabel) (\s@RegisterConnector' {} a -> s {connectorLabel = a} :: RegisterConnector)

instance Core.AWSRequest RegisterConnector where
  type
    AWSResponse RegisterConnector =
      RegisterConnectorResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterConnectorResponse'
            Prelude.<$> (x Core..?> "connectorArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RegisterConnector where
  hashWithSalt _salt RegisterConnector' {..} =
    _salt
      `Prelude.hashWithSalt` connectorProvisioningType
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` connectorProvisioningConfig
      `Prelude.hashWithSalt` connectorLabel

instance Prelude.NFData RegisterConnector where
  rnf RegisterConnector' {..} =
    Prelude.rnf connectorProvisioningType
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf connectorProvisioningConfig
      `Prelude.seq` Prelude.rnf connectorLabel

instance Core.ToHeaders RegisterConnector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RegisterConnector where
  toJSON RegisterConnector' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("connectorProvisioningType" Core..=)
              Prelude.<$> connectorProvisioningType,
            ("description" Core..=) Prelude.<$> description,
            ("connectorProvisioningConfig" Core..=)
              Prelude.<$> connectorProvisioningConfig,
            ("connectorLabel" Core..=)
              Prelude.<$> connectorLabel
          ]
      )

instance Core.ToPath RegisterConnector where
  toPath = Prelude.const "/register-connector"

instance Core.ToQuery RegisterConnector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRegisterConnectorResponse' smart constructor.
data RegisterConnectorResponse = RegisterConnectorResponse'
  { -- | The ARN of the connector being registered.
    connectorArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterConnectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorArn', 'registerConnectorResponse_connectorArn' - The ARN of the connector being registered.
--
-- 'httpStatus', 'registerConnectorResponse_httpStatus' - The response's http status code.
newRegisterConnectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RegisterConnectorResponse
newRegisterConnectorResponse pHttpStatus_ =
  RegisterConnectorResponse'
    { connectorArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the connector being registered.
registerConnectorResponse_connectorArn :: Lens.Lens' RegisterConnectorResponse (Prelude.Maybe Prelude.Text)
registerConnectorResponse_connectorArn = Lens.lens (\RegisterConnectorResponse' {connectorArn} -> connectorArn) (\s@RegisterConnectorResponse' {} a -> s {connectorArn = a} :: RegisterConnectorResponse)

-- | The response's http status code.
registerConnectorResponse_httpStatus :: Lens.Lens' RegisterConnectorResponse Prelude.Int
registerConnectorResponse_httpStatus = Lens.lens (\RegisterConnectorResponse' {httpStatus} -> httpStatus) (\s@RegisterConnectorResponse' {} a -> s {httpStatus = a} :: RegisterConnectorResponse)

instance Prelude.NFData RegisterConnectorResponse where
  rnf RegisterConnectorResponse' {..} =
    Prelude.rnf connectorArn
      `Prelude.seq` Prelude.rnf httpStatus

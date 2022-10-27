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
-- Module      : Amazonka.MigrationHubStrategy.UpdateApplicationComponentConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of an application component.
module Amazonka.MigrationHubStrategy.UpdateApplicationComponentConfig
  ( -- * Creating a Request
    UpdateApplicationComponentConfig (..),
    newUpdateApplicationComponentConfig,

    -- * Request Lenses
    updateApplicationComponentConfig_sourceCodeList,
    updateApplicationComponentConfig_inclusionStatus,
    updateApplicationComponentConfig_secretsManagerKey,
    updateApplicationComponentConfig_strategyOption,
    updateApplicationComponentConfig_applicationComponentId,

    -- * Destructuring the Response
    UpdateApplicationComponentConfigResponse (..),
    newUpdateApplicationComponentConfigResponse,

    -- * Response Lenses
    updateApplicationComponentConfigResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubStrategy.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateApplicationComponentConfig' smart constructor.
data UpdateApplicationComponentConfig = UpdateApplicationComponentConfig'
  { -- | The list of source code configurations to update for the application
    -- component.
    sourceCodeList :: Prelude.Maybe [SourceCode],
    -- | Indicates whether the application component has been included for server
    -- recommendation or not.
    inclusionStatus :: Prelude.Maybe InclusionStatus,
    -- | Database credentials.
    secretsManagerKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The preferred strategy options for the application component. Use values
    -- from the GetApplicationComponentStrategies response.
    strategyOption :: Prelude.Maybe StrategyOption,
    -- | The ID of the application component. The ID is unique within an AWS
    -- account.
    applicationComponentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateApplicationComponentConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceCodeList', 'updateApplicationComponentConfig_sourceCodeList' - The list of source code configurations to update for the application
-- component.
--
-- 'inclusionStatus', 'updateApplicationComponentConfig_inclusionStatus' - Indicates whether the application component has been included for server
-- recommendation or not.
--
-- 'secretsManagerKey', 'updateApplicationComponentConfig_secretsManagerKey' - Database credentials.
--
-- 'strategyOption', 'updateApplicationComponentConfig_strategyOption' - The preferred strategy options for the application component. Use values
-- from the GetApplicationComponentStrategies response.
--
-- 'applicationComponentId', 'updateApplicationComponentConfig_applicationComponentId' - The ID of the application component. The ID is unique within an AWS
-- account.
newUpdateApplicationComponentConfig ::
  -- | 'applicationComponentId'
  Prelude.Text ->
  UpdateApplicationComponentConfig
newUpdateApplicationComponentConfig
  pApplicationComponentId_ =
    UpdateApplicationComponentConfig'
      { sourceCodeList =
          Prelude.Nothing,
        inclusionStatus = Prelude.Nothing,
        secretsManagerKey = Prelude.Nothing,
        strategyOption = Prelude.Nothing,
        applicationComponentId =
          pApplicationComponentId_
      }

-- | The list of source code configurations to update for the application
-- component.
updateApplicationComponentConfig_sourceCodeList :: Lens.Lens' UpdateApplicationComponentConfig (Prelude.Maybe [SourceCode])
updateApplicationComponentConfig_sourceCodeList = Lens.lens (\UpdateApplicationComponentConfig' {sourceCodeList} -> sourceCodeList) (\s@UpdateApplicationComponentConfig' {} a -> s {sourceCodeList = a} :: UpdateApplicationComponentConfig) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the application component has been included for server
-- recommendation or not.
updateApplicationComponentConfig_inclusionStatus :: Lens.Lens' UpdateApplicationComponentConfig (Prelude.Maybe InclusionStatus)
updateApplicationComponentConfig_inclusionStatus = Lens.lens (\UpdateApplicationComponentConfig' {inclusionStatus} -> inclusionStatus) (\s@UpdateApplicationComponentConfig' {} a -> s {inclusionStatus = a} :: UpdateApplicationComponentConfig)

-- | Database credentials.
updateApplicationComponentConfig_secretsManagerKey :: Lens.Lens' UpdateApplicationComponentConfig (Prelude.Maybe Prelude.Text)
updateApplicationComponentConfig_secretsManagerKey = Lens.lens (\UpdateApplicationComponentConfig' {secretsManagerKey} -> secretsManagerKey) (\s@UpdateApplicationComponentConfig' {} a -> s {secretsManagerKey = a} :: UpdateApplicationComponentConfig) Prelude.. Lens.mapping Core._Sensitive

-- | The preferred strategy options for the application component. Use values
-- from the GetApplicationComponentStrategies response.
updateApplicationComponentConfig_strategyOption :: Lens.Lens' UpdateApplicationComponentConfig (Prelude.Maybe StrategyOption)
updateApplicationComponentConfig_strategyOption = Lens.lens (\UpdateApplicationComponentConfig' {strategyOption} -> strategyOption) (\s@UpdateApplicationComponentConfig' {} a -> s {strategyOption = a} :: UpdateApplicationComponentConfig)

-- | The ID of the application component. The ID is unique within an AWS
-- account.
updateApplicationComponentConfig_applicationComponentId :: Lens.Lens' UpdateApplicationComponentConfig Prelude.Text
updateApplicationComponentConfig_applicationComponentId = Lens.lens (\UpdateApplicationComponentConfig' {applicationComponentId} -> applicationComponentId) (\s@UpdateApplicationComponentConfig' {} a -> s {applicationComponentId = a} :: UpdateApplicationComponentConfig)

instance
  Core.AWSRequest
    UpdateApplicationComponentConfig
  where
  type
    AWSResponse UpdateApplicationComponentConfig =
      UpdateApplicationComponentConfigResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateApplicationComponentConfigResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateApplicationComponentConfig
  where
  hashWithSalt
    _salt
    UpdateApplicationComponentConfig' {..} =
      _salt `Prelude.hashWithSalt` sourceCodeList
        `Prelude.hashWithSalt` inclusionStatus
        `Prelude.hashWithSalt` secretsManagerKey
        `Prelude.hashWithSalt` strategyOption
        `Prelude.hashWithSalt` applicationComponentId

instance
  Prelude.NFData
    UpdateApplicationComponentConfig
  where
  rnf UpdateApplicationComponentConfig' {..} =
    Prelude.rnf sourceCodeList
      `Prelude.seq` Prelude.rnf inclusionStatus
      `Prelude.seq` Prelude.rnf secretsManagerKey
      `Prelude.seq` Prelude.rnf strategyOption
      `Prelude.seq` Prelude.rnf applicationComponentId

instance
  Core.ToHeaders
    UpdateApplicationComponentConfig
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateApplicationComponentConfig where
  toJSON UpdateApplicationComponentConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sourceCodeList" Core..=)
              Prelude.<$> sourceCodeList,
            ("inclusionStatus" Core..=)
              Prelude.<$> inclusionStatus,
            ("secretsManagerKey" Core..=)
              Prelude.<$> secretsManagerKey,
            ("strategyOption" Core..=)
              Prelude.<$> strategyOption,
            Prelude.Just
              ( "applicationComponentId"
                  Core..= applicationComponentId
              )
          ]
      )

instance Core.ToPath UpdateApplicationComponentConfig where
  toPath =
    Prelude.const
      "/update-applicationcomponent-config/"

instance
  Core.ToQuery
    UpdateApplicationComponentConfig
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateApplicationComponentConfigResponse' smart constructor.
data UpdateApplicationComponentConfigResponse = UpdateApplicationComponentConfigResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateApplicationComponentConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateApplicationComponentConfigResponse_httpStatus' - The response's http status code.
newUpdateApplicationComponentConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateApplicationComponentConfigResponse
newUpdateApplicationComponentConfigResponse
  pHttpStatus_ =
    UpdateApplicationComponentConfigResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateApplicationComponentConfigResponse_httpStatus :: Lens.Lens' UpdateApplicationComponentConfigResponse Prelude.Int
updateApplicationComponentConfigResponse_httpStatus = Lens.lens (\UpdateApplicationComponentConfigResponse' {httpStatus} -> httpStatus) (\s@UpdateApplicationComponentConfigResponse' {} a -> s {httpStatus = a} :: UpdateApplicationComponentConfigResponse)

instance
  Prelude.NFData
    UpdateApplicationComponentConfigResponse
  where
  rnf UpdateApplicationComponentConfigResponse' {..} =
    Prelude.rnf httpStatus

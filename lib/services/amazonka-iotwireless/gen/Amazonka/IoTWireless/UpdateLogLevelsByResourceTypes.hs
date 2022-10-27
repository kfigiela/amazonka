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
-- Module      : Amazonka.IoTWireless.UpdateLogLevelsByResourceTypes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set default log level, or log levels by resource types. This can be for
-- wireless device log options or wireless gateways log options and is used
-- to control the log messages that\'ll be displayed in CloudWatch.
module Amazonka.IoTWireless.UpdateLogLevelsByResourceTypes
  ( -- * Creating a Request
    UpdateLogLevelsByResourceTypes (..),
    newUpdateLogLevelsByResourceTypes,

    -- * Request Lenses
    updateLogLevelsByResourceTypes_wirelessGatewayLogOptions,
    updateLogLevelsByResourceTypes_wirelessDeviceLogOptions,
    updateLogLevelsByResourceTypes_defaultLogLevel,

    -- * Destructuring the Response
    UpdateLogLevelsByResourceTypesResponse (..),
    newUpdateLogLevelsByResourceTypesResponse,

    -- * Response Lenses
    updateLogLevelsByResourceTypesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLogLevelsByResourceTypes' smart constructor.
data UpdateLogLevelsByResourceTypes = UpdateLogLevelsByResourceTypes'
  { wirelessGatewayLogOptions :: Prelude.Maybe [WirelessGatewayLogOption],
    wirelessDeviceLogOptions :: Prelude.Maybe [WirelessDeviceLogOption],
    defaultLogLevel :: Prelude.Maybe LogLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLogLevelsByResourceTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'wirelessGatewayLogOptions', 'updateLogLevelsByResourceTypes_wirelessGatewayLogOptions' - Undocumented member.
--
-- 'wirelessDeviceLogOptions', 'updateLogLevelsByResourceTypes_wirelessDeviceLogOptions' - Undocumented member.
--
-- 'defaultLogLevel', 'updateLogLevelsByResourceTypes_defaultLogLevel' - Undocumented member.
newUpdateLogLevelsByResourceTypes ::
  UpdateLogLevelsByResourceTypes
newUpdateLogLevelsByResourceTypes =
  UpdateLogLevelsByResourceTypes'
    { wirelessGatewayLogOptions =
        Prelude.Nothing,
      wirelessDeviceLogOptions = Prelude.Nothing,
      defaultLogLevel = Prelude.Nothing
    }

-- | Undocumented member.
updateLogLevelsByResourceTypes_wirelessGatewayLogOptions :: Lens.Lens' UpdateLogLevelsByResourceTypes (Prelude.Maybe [WirelessGatewayLogOption])
updateLogLevelsByResourceTypes_wirelessGatewayLogOptions = Lens.lens (\UpdateLogLevelsByResourceTypes' {wirelessGatewayLogOptions} -> wirelessGatewayLogOptions) (\s@UpdateLogLevelsByResourceTypes' {} a -> s {wirelessGatewayLogOptions = a} :: UpdateLogLevelsByResourceTypes) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
updateLogLevelsByResourceTypes_wirelessDeviceLogOptions :: Lens.Lens' UpdateLogLevelsByResourceTypes (Prelude.Maybe [WirelessDeviceLogOption])
updateLogLevelsByResourceTypes_wirelessDeviceLogOptions = Lens.lens (\UpdateLogLevelsByResourceTypes' {wirelessDeviceLogOptions} -> wirelessDeviceLogOptions) (\s@UpdateLogLevelsByResourceTypes' {} a -> s {wirelessDeviceLogOptions = a} :: UpdateLogLevelsByResourceTypes) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
updateLogLevelsByResourceTypes_defaultLogLevel :: Lens.Lens' UpdateLogLevelsByResourceTypes (Prelude.Maybe LogLevel)
updateLogLevelsByResourceTypes_defaultLogLevel = Lens.lens (\UpdateLogLevelsByResourceTypes' {defaultLogLevel} -> defaultLogLevel) (\s@UpdateLogLevelsByResourceTypes' {} a -> s {defaultLogLevel = a} :: UpdateLogLevelsByResourceTypes)

instance
  Core.AWSRequest
    UpdateLogLevelsByResourceTypes
  where
  type
    AWSResponse UpdateLogLevelsByResourceTypes =
      UpdateLogLevelsByResourceTypesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLogLevelsByResourceTypesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateLogLevelsByResourceTypes
  where
  hashWithSalt
    _salt
    UpdateLogLevelsByResourceTypes' {..} =
      _salt
        `Prelude.hashWithSalt` wirelessGatewayLogOptions
        `Prelude.hashWithSalt` wirelessDeviceLogOptions
        `Prelude.hashWithSalt` defaultLogLevel

instance
  Prelude.NFData
    UpdateLogLevelsByResourceTypes
  where
  rnf UpdateLogLevelsByResourceTypes' {..} =
    Prelude.rnf wirelessGatewayLogOptions
      `Prelude.seq` Prelude.rnf wirelessDeviceLogOptions
      `Prelude.seq` Prelude.rnf defaultLogLevel

instance
  Core.ToHeaders
    UpdateLogLevelsByResourceTypes
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateLogLevelsByResourceTypes where
  toJSON UpdateLogLevelsByResourceTypes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("WirelessGatewayLogOptions" Core..=)
              Prelude.<$> wirelessGatewayLogOptions,
            ("WirelessDeviceLogOptions" Core..=)
              Prelude.<$> wirelessDeviceLogOptions,
            ("DefaultLogLevel" Core..=)
              Prelude.<$> defaultLogLevel
          ]
      )

instance Core.ToPath UpdateLogLevelsByResourceTypes where
  toPath = Prelude.const "/log-levels"

instance Core.ToQuery UpdateLogLevelsByResourceTypes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLogLevelsByResourceTypesResponse' smart constructor.
data UpdateLogLevelsByResourceTypesResponse = UpdateLogLevelsByResourceTypesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLogLevelsByResourceTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLogLevelsByResourceTypesResponse_httpStatus' - The response's http status code.
newUpdateLogLevelsByResourceTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLogLevelsByResourceTypesResponse
newUpdateLogLevelsByResourceTypesResponse
  pHttpStatus_ =
    UpdateLogLevelsByResourceTypesResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateLogLevelsByResourceTypesResponse_httpStatus :: Lens.Lens' UpdateLogLevelsByResourceTypesResponse Prelude.Int
updateLogLevelsByResourceTypesResponse_httpStatus = Lens.lens (\UpdateLogLevelsByResourceTypesResponse' {httpStatus} -> httpStatus) (\s@UpdateLogLevelsByResourceTypesResponse' {} a -> s {httpStatus = a} :: UpdateLogLevelsByResourceTypesResponse)

instance
  Prelude.NFData
    UpdateLogLevelsByResourceTypesResponse
  where
  rnf UpdateLogLevelsByResourceTypesResponse' {..} =
    Prelude.rnf httpStatus

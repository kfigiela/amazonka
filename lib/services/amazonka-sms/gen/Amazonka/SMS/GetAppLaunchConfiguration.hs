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
-- Module      : Amazonka.SMS.GetAppLaunchConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the application launch configuration associated with the
-- specified application.
module Amazonka.SMS.GetAppLaunchConfiguration
  ( -- * Creating a Request
    GetAppLaunchConfiguration (..),
    newGetAppLaunchConfiguration,

    -- * Request Lenses
    getAppLaunchConfiguration_appId,

    -- * Destructuring the Response
    GetAppLaunchConfigurationResponse (..),
    newGetAppLaunchConfigurationResponse,

    -- * Response Lenses
    getAppLaunchConfigurationResponse_roleName,
    getAppLaunchConfigurationResponse_serverGroupLaunchConfigurations,
    getAppLaunchConfigurationResponse_autoLaunch,
    getAppLaunchConfigurationResponse_appId,
    getAppLaunchConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SMS.Types

-- | /See:/ 'newGetAppLaunchConfiguration' smart constructor.
data GetAppLaunchConfiguration = GetAppLaunchConfiguration'
  { -- | The ID of the application.
    appId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppLaunchConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'getAppLaunchConfiguration_appId' - The ID of the application.
newGetAppLaunchConfiguration ::
  GetAppLaunchConfiguration
newGetAppLaunchConfiguration =
  GetAppLaunchConfiguration' {appId = Prelude.Nothing}

-- | The ID of the application.
getAppLaunchConfiguration_appId :: Lens.Lens' GetAppLaunchConfiguration (Prelude.Maybe Prelude.Text)
getAppLaunchConfiguration_appId = Lens.lens (\GetAppLaunchConfiguration' {appId} -> appId) (\s@GetAppLaunchConfiguration' {} a -> s {appId = a} :: GetAppLaunchConfiguration)

instance Core.AWSRequest GetAppLaunchConfiguration where
  type
    AWSResponse GetAppLaunchConfiguration =
      GetAppLaunchConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAppLaunchConfigurationResponse'
            Prelude.<$> (x Core..?> "roleName")
            Prelude.<*> ( x Core..?> "serverGroupLaunchConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "autoLaunch")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAppLaunchConfiguration where
  hashWithSalt _salt GetAppLaunchConfiguration' {..} =
    _salt `Prelude.hashWithSalt` appId

instance Prelude.NFData GetAppLaunchConfiguration where
  rnf GetAppLaunchConfiguration' {..} =
    Prelude.rnf appId

instance Core.ToHeaders GetAppLaunchConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSServerMigrationService_V2016_10_24.GetAppLaunchConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAppLaunchConfiguration where
  toJSON GetAppLaunchConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("appId" Core..=) Prelude.<$> appId]
      )

instance Core.ToPath GetAppLaunchConfiguration where
  toPath = Prelude.const "/"

instance Core.ToQuery GetAppLaunchConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAppLaunchConfigurationResponse' smart constructor.
data GetAppLaunchConfigurationResponse = GetAppLaunchConfigurationResponse'
  { -- | The name of the service role in the customer\'s account that
    -- CloudFormation uses to launch the application.
    roleName :: Prelude.Maybe Prelude.Text,
    -- | The launch configurations for server groups in this application.
    serverGroupLaunchConfigurations :: Prelude.Maybe [ServerGroupLaunchConfiguration],
    -- | Indicates whether the application is configured to launch automatically
    -- after replication is complete.
    autoLaunch :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the application.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppLaunchConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleName', 'getAppLaunchConfigurationResponse_roleName' - The name of the service role in the customer\'s account that
-- CloudFormation uses to launch the application.
--
-- 'serverGroupLaunchConfigurations', 'getAppLaunchConfigurationResponse_serverGroupLaunchConfigurations' - The launch configurations for server groups in this application.
--
-- 'autoLaunch', 'getAppLaunchConfigurationResponse_autoLaunch' - Indicates whether the application is configured to launch automatically
-- after replication is complete.
--
-- 'appId', 'getAppLaunchConfigurationResponse_appId' - The ID of the application.
--
-- 'httpStatus', 'getAppLaunchConfigurationResponse_httpStatus' - The response's http status code.
newGetAppLaunchConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAppLaunchConfigurationResponse
newGetAppLaunchConfigurationResponse pHttpStatus_ =
  GetAppLaunchConfigurationResponse'
    { roleName =
        Prelude.Nothing,
      serverGroupLaunchConfigurations =
        Prelude.Nothing,
      autoLaunch = Prelude.Nothing,
      appId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the service role in the customer\'s account that
-- CloudFormation uses to launch the application.
getAppLaunchConfigurationResponse_roleName :: Lens.Lens' GetAppLaunchConfigurationResponse (Prelude.Maybe Prelude.Text)
getAppLaunchConfigurationResponse_roleName = Lens.lens (\GetAppLaunchConfigurationResponse' {roleName} -> roleName) (\s@GetAppLaunchConfigurationResponse' {} a -> s {roleName = a} :: GetAppLaunchConfigurationResponse)

-- | The launch configurations for server groups in this application.
getAppLaunchConfigurationResponse_serverGroupLaunchConfigurations :: Lens.Lens' GetAppLaunchConfigurationResponse (Prelude.Maybe [ServerGroupLaunchConfiguration])
getAppLaunchConfigurationResponse_serverGroupLaunchConfigurations = Lens.lens (\GetAppLaunchConfigurationResponse' {serverGroupLaunchConfigurations} -> serverGroupLaunchConfigurations) (\s@GetAppLaunchConfigurationResponse' {} a -> s {serverGroupLaunchConfigurations = a} :: GetAppLaunchConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the application is configured to launch automatically
-- after replication is complete.
getAppLaunchConfigurationResponse_autoLaunch :: Lens.Lens' GetAppLaunchConfigurationResponse (Prelude.Maybe Prelude.Bool)
getAppLaunchConfigurationResponse_autoLaunch = Lens.lens (\GetAppLaunchConfigurationResponse' {autoLaunch} -> autoLaunch) (\s@GetAppLaunchConfigurationResponse' {} a -> s {autoLaunch = a} :: GetAppLaunchConfigurationResponse)

-- | The ID of the application.
getAppLaunchConfigurationResponse_appId :: Lens.Lens' GetAppLaunchConfigurationResponse (Prelude.Maybe Prelude.Text)
getAppLaunchConfigurationResponse_appId = Lens.lens (\GetAppLaunchConfigurationResponse' {appId} -> appId) (\s@GetAppLaunchConfigurationResponse' {} a -> s {appId = a} :: GetAppLaunchConfigurationResponse)

-- | The response's http status code.
getAppLaunchConfigurationResponse_httpStatus :: Lens.Lens' GetAppLaunchConfigurationResponse Prelude.Int
getAppLaunchConfigurationResponse_httpStatus = Lens.lens (\GetAppLaunchConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetAppLaunchConfigurationResponse' {} a -> s {httpStatus = a} :: GetAppLaunchConfigurationResponse)

instance
  Prelude.NFData
    GetAppLaunchConfigurationResponse
  where
  rnf GetAppLaunchConfigurationResponse' {..} =
    Prelude.rnf roleName
      `Prelude.seq` Prelude.rnf serverGroupLaunchConfigurations
      `Prelude.seq` Prelude.rnf autoLaunch
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf httpStatus

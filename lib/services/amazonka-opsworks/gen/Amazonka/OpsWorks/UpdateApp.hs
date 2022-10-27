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
-- Module      : Amazonka.OpsWorks.UpdateApp
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specified app.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Deploy or Manage permissions level for the stack, or an attached policy
-- that explicitly grants permissions. For more information on user
-- permissions, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
module Amazonka.OpsWorks.UpdateApp
  ( -- * Creating a Request
    UpdateApp (..),
    newUpdateApp,

    -- * Request Lenses
    updateApp_domains,
    updateApp_appSource,
    updateApp_name,
    updateApp_type,
    updateApp_environment,
    updateApp_dataSources,
    updateApp_sslConfiguration,
    updateApp_description,
    updateApp_attributes,
    updateApp_enableSsl,
    updateApp_appId,

    -- * Destructuring the Response
    UpdateAppResponse (..),
    newUpdateAppResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpsWorks.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateApp' smart constructor.
data UpdateApp = UpdateApp'
  { -- | The app\'s virtual host settings, with multiple domains separated by
    -- commas. For example: @\'www.example.com, example.com\'@
    domains :: Prelude.Maybe [Prelude.Text],
    -- | A @Source@ object that specifies the app repository.
    appSource :: Prelude.Maybe Source,
    -- | The app name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The app type.
    type' :: Prelude.Maybe AppType,
    -- | An array of @EnvironmentVariable@ objects that specify environment
    -- variables to be associated with the app. After you deploy the app, these
    -- variables are defined on the associated app server instances.For more
    -- information, see
    -- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment Environment Variables>.
    --
    -- There is no specific limit on the number of environment variables.
    -- However, the size of the associated data structure - which includes the
    -- variables\' names, values, and protected flag values - cannot exceed 20
    -- KB. This limit should accommodate most if not all use cases. Exceeding
    -- it will cause an exception with the message, \"Environment: is too large
    -- (maximum is 20 KB).\"
    --
    -- If you have specified one or more environment variables, you cannot
    -- modify the stack\'s Chef version.
    environment :: Prelude.Maybe [EnvironmentVariable],
    -- | The app\'s data sources.
    dataSources :: Prelude.Maybe [DataSource],
    -- | An @SslConfiguration@ object with the SSL configuration.
    sslConfiguration :: Prelude.Maybe SslConfiguration,
    -- | A description of the app.
    description :: Prelude.Maybe Prelude.Text,
    -- | One or more user-defined key\/value pairs to be added to the stack
    -- attributes.
    attributes :: Prelude.Maybe (Prelude.HashMap AppAttributesKeys Prelude.Text),
    -- | Whether SSL is enabled for the app.
    enableSsl :: Prelude.Maybe Prelude.Bool,
    -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateApp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domains', 'updateApp_domains' - The app\'s virtual host settings, with multiple domains separated by
-- commas. For example: @\'www.example.com, example.com\'@
--
-- 'appSource', 'updateApp_appSource' - A @Source@ object that specifies the app repository.
--
-- 'name', 'updateApp_name' - The app name.
--
-- 'type'', 'updateApp_type' - The app type.
--
-- 'environment', 'updateApp_environment' - An array of @EnvironmentVariable@ objects that specify environment
-- variables to be associated with the app. After you deploy the app, these
-- variables are defined on the associated app server instances.For more
-- information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment Environment Variables>.
--
-- There is no specific limit on the number of environment variables.
-- However, the size of the associated data structure - which includes the
-- variables\' names, values, and protected flag values - cannot exceed 20
-- KB. This limit should accommodate most if not all use cases. Exceeding
-- it will cause an exception with the message, \"Environment: is too large
-- (maximum is 20 KB).\"
--
-- If you have specified one or more environment variables, you cannot
-- modify the stack\'s Chef version.
--
-- 'dataSources', 'updateApp_dataSources' - The app\'s data sources.
--
-- 'sslConfiguration', 'updateApp_sslConfiguration' - An @SslConfiguration@ object with the SSL configuration.
--
-- 'description', 'updateApp_description' - A description of the app.
--
-- 'attributes', 'updateApp_attributes' - One or more user-defined key\/value pairs to be added to the stack
-- attributes.
--
-- 'enableSsl', 'updateApp_enableSsl' - Whether SSL is enabled for the app.
--
-- 'appId', 'updateApp_appId' - The app ID.
newUpdateApp ::
  -- | 'appId'
  Prelude.Text ->
  UpdateApp
newUpdateApp pAppId_ =
  UpdateApp'
    { domains = Prelude.Nothing,
      appSource = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      environment = Prelude.Nothing,
      dataSources = Prelude.Nothing,
      sslConfiguration = Prelude.Nothing,
      description = Prelude.Nothing,
      attributes = Prelude.Nothing,
      enableSsl = Prelude.Nothing,
      appId = pAppId_
    }

-- | The app\'s virtual host settings, with multiple domains separated by
-- commas. For example: @\'www.example.com, example.com\'@
updateApp_domains :: Lens.Lens' UpdateApp (Prelude.Maybe [Prelude.Text])
updateApp_domains = Lens.lens (\UpdateApp' {domains} -> domains) (\s@UpdateApp' {} a -> s {domains = a} :: UpdateApp) Prelude.. Lens.mapping Lens.coerced

-- | A @Source@ object that specifies the app repository.
updateApp_appSource :: Lens.Lens' UpdateApp (Prelude.Maybe Source)
updateApp_appSource = Lens.lens (\UpdateApp' {appSource} -> appSource) (\s@UpdateApp' {} a -> s {appSource = a} :: UpdateApp)

-- | The app name.
updateApp_name :: Lens.Lens' UpdateApp (Prelude.Maybe Prelude.Text)
updateApp_name = Lens.lens (\UpdateApp' {name} -> name) (\s@UpdateApp' {} a -> s {name = a} :: UpdateApp)

-- | The app type.
updateApp_type :: Lens.Lens' UpdateApp (Prelude.Maybe AppType)
updateApp_type = Lens.lens (\UpdateApp' {type'} -> type') (\s@UpdateApp' {} a -> s {type' = a} :: UpdateApp)

-- | An array of @EnvironmentVariable@ objects that specify environment
-- variables to be associated with the app. After you deploy the app, these
-- variables are defined on the associated app server instances.For more
-- information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment Environment Variables>.
--
-- There is no specific limit on the number of environment variables.
-- However, the size of the associated data structure - which includes the
-- variables\' names, values, and protected flag values - cannot exceed 20
-- KB. This limit should accommodate most if not all use cases. Exceeding
-- it will cause an exception with the message, \"Environment: is too large
-- (maximum is 20 KB).\"
--
-- If you have specified one or more environment variables, you cannot
-- modify the stack\'s Chef version.
updateApp_environment :: Lens.Lens' UpdateApp (Prelude.Maybe [EnvironmentVariable])
updateApp_environment = Lens.lens (\UpdateApp' {environment} -> environment) (\s@UpdateApp' {} a -> s {environment = a} :: UpdateApp) Prelude.. Lens.mapping Lens.coerced

-- | The app\'s data sources.
updateApp_dataSources :: Lens.Lens' UpdateApp (Prelude.Maybe [DataSource])
updateApp_dataSources = Lens.lens (\UpdateApp' {dataSources} -> dataSources) (\s@UpdateApp' {} a -> s {dataSources = a} :: UpdateApp) Prelude.. Lens.mapping Lens.coerced

-- | An @SslConfiguration@ object with the SSL configuration.
updateApp_sslConfiguration :: Lens.Lens' UpdateApp (Prelude.Maybe SslConfiguration)
updateApp_sslConfiguration = Lens.lens (\UpdateApp' {sslConfiguration} -> sslConfiguration) (\s@UpdateApp' {} a -> s {sslConfiguration = a} :: UpdateApp)

-- | A description of the app.
updateApp_description :: Lens.Lens' UpdateApp (Prelude.Maybe Prelude.Text)
updateApp_description = Lens.lens (\UpdateApp' {description} -> description) (\s@UpdateApp' {} a -> s {description = a} :: UpdateApp)

-- | One or more user-defined key\/value pairs to be added to the stack
-- attributes.
updateApp_attributes :: Lens.Lens' UpdateApp (Prelude.Maybe (Prelude.HashMap AppAttributesKeys Prelude.Text))
updateApp_attributes = Lens.lens (\UpdateApp' {attributes} -> attributes) (\s@UpdateApp' {} a -> s {attributes = a} :: UpdateApp) Prelude.. Lens.mapping Lens.coerced

-- | Whether SSL is enabled for the app.
updateApp_enableSsl :: Lens.Lens' UpdateApp (Prelude.Maybe Prelude.Bool)
updateApp_enableSsl = Lens.lens (\UpdateApp' {enableSsl} -> enableSsl) (\s@UpdateApp' {} a -> s {enableSsl = a} :: UpdateApp)

-- | The app ID.
updateApp_appId :: Lens.Lens' UpdateApp Prelude.Text
updateApp_appId = Lens.lens (\UpdateApp' {appId} -> appId) (\s@UpdateApp' {} a -> s {appId = a} :: UpdateApp)

instance Core.AWSRequest UpdateApp where
  type AWSResponse UpdateApp = UpdateAppResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response = Response.receiveNull UpdateAppResponse'

instance Prelude.Hashable UpdateApp where
  hashWithSalt _salt UpdateApp' {..} =
    _salt `Prelude.hashWithSalt` domains
      `Prelude.hashWithSalt` appSource
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` environment
      `Prelude.hashWithSalt` dataSources
      `Prelude.hashWithSalt` sslConfiguration
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` enableSsl
      `Prelude.hashWithSalt` appId

instance Prelude.NFData UpdateApp where
  rnf UpdateApp' {..} =
    Prelude.rnf domains
      `Prelude.seq` Prelude.rnf appSource
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf environment
      `Prelude.seq` Prelude.rnf dataSources
      `Prelude.seq` Prelude.rnf sslConfiguration
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf enableSsl
      `Prelude.seq` Prelude.rnf appId

instance Core.ToHeaders UpdateApp where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorks_20130218.UpdateApp" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateApp where
  toJSON UpdateApp' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Domains" Core..=) Prelude.<$> domains,
            ("AppSource" Core..=) Prelude.<$> appSource,
            ("Name" Core..=) Prelude.<$> name,
            ("Type" Core..=) Prelude.<$> type',
            ("Environment" Core..=) Prelude.<$> environment,
            ("DataSources" Core..=) Prelude.<$> dataSources,
            ("SslConfiguration" Core..=)
              Prelude.<$> sslConfiguration,
            ("Description" Core..=) Prelude.<$> description,
            ("Attributes" Core..=) Prelude.<$> attributes,
            ("EnableSsl" Core..=) Prelude.<$> enableSsl,
            Prelude.Just ("AppId" Core..= appId)
          ]
      )

instance Core.ToPath UpdateApp where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateApp where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAppResponse' smart constructor.
data UpdateAppResponse = UpdateAppResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAppResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateAppResponse ::
  UpdateAppResponse
newUpdateAppResponse = UpdateAppResponse'

instance Prelude.NFData UpdateAppResponse where
  rnf _ = ()

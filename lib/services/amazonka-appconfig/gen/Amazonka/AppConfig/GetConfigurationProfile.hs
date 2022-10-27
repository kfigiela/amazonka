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
-- Module      : Amazonka.AppConfig.GetConfigurationProfile
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a configuration profile.
module Amazonka.AppConfig.GetConfigurationProfile
  ( -- * Creating a Request
    GetConfigurationProfile (..),
    newGetConfigurationProfile,

    -- * Request Lenses
    getConfigurationProfile_applicationId,
    getConfigurationProfile_configurationProfileId,

    -- * Destructuring the Response
    ConfigurationProfile (..),
    newConfigurationProfile,

    -- * Response Lenses
    configurationProfile_name,
    configurationProfile_type,
    configurationProfile_retrievalRoleArn,
    configurationProfile_id,
    configurationProfile_description,
    configurationProfile_locationUri,
    configurationProfile_applicationId,
    configurationProfile_validators,
  )
where

import Amazonka.AppConfig.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetConfigurationProfile' smart constructor.
data GetConfigurationProfile = GetConfigurationProfile'
  { -- | The ID of the application that includes the configuration profile you
    -- want to get.
    applicationId :: Prelude.Text,
    -- | The ID of the configuration profile that you want to get.
    configurationProfileId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetConfigurationProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'getConfigurationProfile_applicationId' - The ID of the application that includes the configuration profile you
-- want to get.
--
-- 'configurationProfileId', 'getConfigurationProfile_configurationProfileId' - The ID of the configuration profile that you want to get.
newGetConfigurationProfile ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'configurationProfileId'
  Prelude.Text ->
  GetConfigurationProfile
newGetConfigurationProfile
  pApplicationId_
  pConfigurationProfileId_ =
    GetConfigurationProfile'
      { applicationId =
          pApplicationId_,
        configurationProfileId = pConfigurationProfileId_
      }

-- | The ID of the application that includes the configuration profile you
-- want to get.
getConfigurationProfile_applicationId :: Lens.Lens' GetConfigurationProfile Prelude.Text
getConfigurationProfile_applicationId = Lens.lens (\GetConfigurationProfile' {applicationId} -> applicationId) (\s@GetConfigurationProfile' {} a -> s {applicationId = a} :: GetConfigurationProfile)

-- | The ID of the configuration profile that you want to get.
getConfigurationProfile_configurationProfileId :: Lens.Lens' GetConfigurationProfile Prelude.Text
getConfigurationProfile_configurationProfileId = Lens.lens (\GetConfigurationProfile' {configurationProfileId} -> configurationProfileId) (\s@GetConfigurationProfile' {} a -> s {configurationProfileId = a} :: GetConfigurationProfile)

instance Core.AWSRequest GetConfigurationProfile where
  type
    AWSResponse GetConfigurationProfile =
      ConfigurationProfile
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetConfigurationProfile where
  hashWithSalt _salt GetConfigurationProfile' {..} =
    _salt `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` configurationProfileId

instance Prelude.NFData GetConfigurationProfile where
  rnf GetConfigurationProfile' {..} =
    Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf configurationProfileId

instance Core.ToHeaders GetConfigurationProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetConfigurationProfile where
  toPath GetConfigurationProfile' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/configurationprofiles/",
        Core.toBS configurationProfileId
      ]

instance Core.ToQuery GetConfigurationProfile where
  toQuery = Prelude.const Prelude.mempty

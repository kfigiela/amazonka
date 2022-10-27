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
-- Module      : Amazonka.MGN.GetLaunchConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all LaunchConfigurations available, filtered by Source Server IDs.
module Amazonka.MGN.GetLaunchConfiguration
  ( -- * Creating a Request
    GetLaunchConfiguration (..),
    newGetLaunchConfiguration,

    -- * Request Lenses
    getLaunchConfiguration_sourceServerID,

    -- * Destructuring the Response
    LaunchConfiguration (..),
    newLaunchConfiguration,

    -- * Response Lenses
    launchConfiguration_name,
    launchConfiguration_targetInstanceTypeRightSizingMethod,
    launchConfiguration_copyTags,
    launchConfiguration_launchDisposition,
    launchConfiguration_postLaunchActions,
    launchConfiguration_ec2LaunchTemplateID,
    launchConfiguration_bootMode,
    launchConfiguration_sourceServerID,
    launchConfiguration_licensing,
    launchConfiguration_copyPrivateIp,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetLaunchConfiguration' smart constructor.
data GetLaunchConfiguration = GetLaunchConfiguration'
  { -- | Request to get Launch Configuration information by Source Server ID.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLaunchConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'getLaunchConfiguration_sourceServerID' - Request to get Launch Configuration information by Source Server ID.
newGetLaunchConfiguration ::
  -- | 'sourceServerID'
  Prelude.Text ->
  GetLaunchConfiguration
newGetLaunchConfiguration pSourceServerID_ =
  GetLaunchConfiguration'
    { sourceServerID =
        pSourceServerID_
    }

-- | Request to get Launch Configuration information by Source Server ID.
getLaunchConfiguration_sourceServerID :: Lens.Lens' GetLaunchConfiguration Prelude.Text
getLaunchConfiguration_sourceServerID = Lens.lens (\GetLaunchConfiguration' {sourceServerID} -> sourceServerID) (\s@GetLaunchConfiguration' {} a -> s {sourceServerID = a} :: GetLaunchConfiguration)

instance Core.AWSRequest GetLaunchConfiguration where
  type
    AWSResponse GetLaunchConfiguration =
      LaunchConfiguration
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetLaunchConfiguration where
  hashWithSalt _salt GetLaunchConfiguration' {..} =
    _salt `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData GetLaunchConfiguration where
  rnf GetLaunchConfiguration' {..} =
    Prelude.rnf sourceServerID

instance Core.ToHeaders GetLaunchConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetLaunchConfiguration where
  toJSON GetLaunchConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath GetLaunchConfiguration where
  toPath = Prelude.const "/GetLaunchConfiguration"

instance Core.ToQuery GetLaunchConfiguration where
  toQuery = Prelude.const Prelude.mempty

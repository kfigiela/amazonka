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
-- Module      : Amazonka.Greengrass.CreateSoftwareUpdateJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a software update for a core or group of cores (specified as an
-- IoT thing group.) Use this to update the OTA Agent as well as the
-- Greengrass core software. It makes use of the IoT Jobs feature which
-- provides additional commands to manage a Greengrass core software update
-- job.
module Amazonka.Greengrass.CreateSoftwareUpdateJob
  ( -- * Creating a Request
    CreateSoftwareUpdateJob (..),
    newCreateSoftwareUpdateJob,

    -- * Request Lenses
    createSoftwareUpdateJob_updateAgentLogLevel,
    createSoftwareUpdateJob_amznClientToken,
    createSoftwareUpdateJob_s3UrlSignerRole,
    createSoftwareUpdateJob_updateTargetsArchitecture,
    createSoftwareUpdateJob_softwareToUpdate,
    createSoftwareUpdateJob_updateTargets,
    createSoftwareUpdateJob_updateTargetsOperatingSystem,

    -- * Destructuring the Response
    CreateSoftwareUpdateJobResponse (..),
    newCreateSoftwareUpdateJobResponse,

    -- * Response Lenses
    createSoftwareUpdateJobResponse_iotJobArn,
    createSoftwareUpdateJobResponse_platformSoftwareVersion,
    createSoftwareUpdateJobResponse_iotJobId,
    createSoftwareUpdateJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateSoftwareUpdateJob' smart constructor.
data CreateSoftwareUpdateJob = CreateSoftwareUpdateJob'
  { updateAgentLogLevel :: Prelude.Maybe UpdateAgentLogLevel,
    -- | A client token used to correlate requests and responses.
    amznClientToken :: Prelude.Maybe Prelude.Text,
    s3UrlSignerRole :: Prelude.Text,
    updateTargetsArchitecture :: UpdateTargetsArchitecture,
    softwareToUpdate :: SoftwareToUpdate,
    updateTargets :: [Prelude.Text],
    updateTargetsOperatingSystem :: UpdateTargetsOperatingSystem
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSoftwareUpdateJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateAgentLogLevel', 'createSoftwareUpdateJob_updateAgentLogLevel' - Undocumented member.
--
-- 'amznClientToken', 'createSoftwareUpdateJob_amznClientToken' - A client token used to correlate requests and responses.
--
-- 's3UrlSignerRole', 'createSoftwareUpdateJob_s3UrlSignerRole' - Undocumented member.
--
-- 'updateTargetsArchitecture', 'createSoftwareUpdateJob_updateTargetsArchitecture' - Undocumented member.
--
-- 'softwareToUpdate', 'createSoftwareUpdateJob_softwareToUpdate' - Undocumented member.
--
-- 'updateTargets', 'createSoftwareUpdateJob_updateTargets' - Undocumented member.
--
-- 'updateTargetsOperatingSystem', 'createSoftwareUpdateJob_updateTargetsOperatingSystem' - Undocumented member.
newCreateSoftwareUpdateJob ::
  -- | 's3UrlSignerRole'
  Prelude.Text ->
  -- | 'updateTargetsArchitecture'
  UpdateTargetsArchitecture ->
  -- | 'softwareToUpdate'
  SoftwareToUpdate ->
  -- | 'updateTargetsOperatingSystem'
  UpdateTargetsOperatingSystem ->
  CreateSoftwareUpdateJob
newCreateSoftwareUpdateJob
  pS3UrlSignerRole_
  pUpdateTargetsArchitecture_
  pSoftwareToUpdate_
  pUpdateTargetsOperatingSystem_ =
    CreateSoftwareUpdateJob'
      { updateAgentLogLevel =
          Prelude.Nothing,
        amznClientToken = Prelude.Nothing,
        s3UrlSignerRole = pS3UrlSignerRole_,
        updateTargetsArchitecture =
          pUpdateTargetsArchitecture_,
        softwareToUpdate = pSoftwareToUpdate_,
        updateTargets = Prelude.mempty,
        updateTargetsOperatingSystem =
          pUpdateTargetsOperatingSystem_
      }

-- | Undocumented member.
createSoftwareUpdateJob_updateAgentLogLevel :: Lens.Lens' CreateSoftwareUpdateJob (Prelude.Maybe UpdateAgentLogLevel)
createSoftwareUpdateJob_updateAgentLogLevel = Lens.lens (\CreateSoftwareUpdateJob' {updateAgentLogLevel} -> updateAgentLogLevel) (\s@CreateSoftwareUpdateJob' {} a -> s {updateAgentLogLevel = a} :: CreateSoftwareUpdateJob)

-- | A client token used to correlate requests and responses.
createSoftwareUpdateJob_amznClientToken :: Lens.Lens' CreateSoftwareUpdateJob (Prelude.Maybe Prelude.Text)
createSoftwareUpdateJob_amznClientToken = Lens.lens (\CreateSoftwareUpdateJob' {amznClientToken} -> amznClientToken) (\s@CreateSoftwareUpdateJob' {} a -> s {amznClientToken = a} :: CreateSoftwareUpdateJob)

-- | Undocumented member.
createSoftwareUpdateJob_s3UrlSignerRole :: Lens.Lens' CreateSoftwareUpdateJob Prelude.Text
createSoftwareUpdateJob_s3UrlSignerRole = Lens.lens (\CreateSoftwareUpdateJob' {s3UrlSignerRole} -> s3UrlSignerRole) (\s@CreateSoftwareUpdateJob' {} a -> s {s3UrlSignerRole = a} :: CreateSoftwareUpdateJob)

-- | Undocumented member.
createSoftwareUpdateJob_updateTargetsArchitecture :: Lens.Lens' CreateSoftwareUpdateJob UpdateTargetsArchitecture
createSoftwareUpdateJob_updateTargetsArchitecture = Lens.lens (\CreateSoftwareUpdateJob' {updateTargetsArchitecture} -> updateTargetsArchitecture) (\s@CreateSoftwareUpdateJob' {} a -> s {updateTargetsArchitecture = a} :: CreateSoftwareUpdateJob)

-- | Undocumented member.
createSoftwareUpdateJob_softwareToUpdate :: Lens.Lens' CreateSoftwareUpdateJob SoftwareToUpdate
createSoftwareUpdateJob_softwareToUpdate = Lens.lens (\CreateSoftwareUpdateJob' {softwareToUpdate} -> softwareToUpdate) (\s@CreateSoftwareUpdateJob' {} a -> s {softwareToUpdate = a} :: CreateSoftwareUpdateJob)

-- | Undocumented member.
createSoftwareUpdateJob_updateTargets :: Lens.Lens' CreateSoftwareUpdateJob [Prelude.Text]
createSoftwareUpdateJob_updateTargets = Lens.lens (\CreateSoftwareUpdateJob' {updateTargets} -> updateTargets) (\s@CreateSoftwareUpdateJob' {} a -> s {updateTargets = a} :: CreateSoftwareUpdateJob) Prelude.. Lens.coerced

-- | Undocumented member.
createSoftwareUpdateJob_updateTargetsOperatingSystem :: Lens.Lens' CreateSoftwareUpdateJob UpdateTargetsOperatingSystem
createSoftwareUpdateJob_updateTargetsOperatingSystem = Lens.lens (\CreateSoftwareUpdateJob' {updateTargetsOperatingSystem} -> updateTargetsOperatingSystem) (\s@CreateSoftwareUpdateJob' {} a -> s {updateTargetsOperatingSystem = a} :: CreateSoftwareUpdateJob)

instance Core.AWSRequest CreateSoftwareUpdateJob where
  type
    AWSResponse CreateSoftwareUpdateJob =
      CreateSoftwareUpdateJobResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSoftwareUpdateJobResponse'
            Prelude.<$> (x Core..?> "IotJobArn")
            Prelude.<*> (x Core..?> "PlatformSoftwareVersion")
            Prelude.<*> (x Core..?> "IotJobId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateSoftwareUpdateJob where
  service _proxy = defaultService

instance Prelude.Hashable CreateSoftwareUpdateJob where
  hashWithSalt _salt CreateSoftwareUpdateJob' {..} =
    _salt `Prelude.hashWithSalt` updateAgentLogLevel
      `Prelude.hashWithSalt` amznClientToken
      `Prelude.hashWithSalt` s3UrlSignerRole
      `Prelude.hashWithSalt` updateTargetsArchitecture
      `Prelude.hashWithSalt` softwareToUpdate
      `Prelude.hashWithSalt` updateTargets
      `Prelude.hashWithSalt` updateTargetsOperatingSystem

instance Prelude.NFData CreateSoftwareUpdateJob where
  rnf CreateSoftwareUpdateJob' {..} =
    Prelude.rnf updateAgentLogLevel
      `Prelude.seq` Prelude.rnf amznClientToken
      `Prelude.seq` Prelude.rnf s3UrlSignerRole
      `Prelude.seq` Prelude.rnf updateTargetsArchitecture
      `Prelude.seq` Prelude.rnf softwareToUpdate
      `Prelude.seq` Prelude.rnf updateTargets
      `Prelude.seq` Prelude.rnf updateTargetsOperatingSystem

instance Core.ToHeaders CreateSoftwareUpdateJob where
  toHeaders CreateSoftwareUpdateJob' {..} =
    Prelude.mconcat
      [ "X-Amzn-Client-Token" Core.=# amznClientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CreateSoftwareUpdateJob where
  toJSON CreateSoftwareUpdateJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UpdateAgentLogLevel" Core..=)
              Prelude.<$> updateAgentLogLevel,
            Prelude.Just
              ("S3UrlSignerRole" Core..= s3UrlSignerRole),
            Prelude.Just
              ( "UpdateTargetsArchitecture"
                  Core..= updateTargetsArchitecture
              ),
            Prelude.Just
              ("SoftwareToUpdate" Core..= softwareToUpdate),
            Prelude.Just ("UpdateTargets" Core..= updateTargets),
            Prelude.Just
              ( "UpdateTargetsOperatingSystem"
                  Core..= updateTargetsOperatingSystem
              )
          ]
      )

instance Core.ToPath CreateSoftwareUpdateJob where
  toPath = Prelude.const "/greengrass/updates"

instance Core.ToQuery CreateSoftwareUpdateJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSoftwareUpdateJobResponse' smart constructor.
data CreateSoftwareUpdateJobResponse = CreateSoftwareUpdateJobResponse'
  { -- | The IoT Job ARN corresponding to this update.
    iotJobArn :: Prelude.Maybe Prelude.Text,
    -- | The software version installed on the device or devices after the
    -- update.
    platformSoftwareVersion :: Prelude.Maybe Prelude.Text,
    -- | The IoT Job Id corresponding to this update.
    iotJobId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSoftwareUpdateJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iotJobArn', 'createSoftwareUpdateJobResponse_iotJobArn' - The IoT Job ARN corresponding to this update.
--
-- 'platformSoftwareVersion', 'createSoftwareUpdateJobResponse_platformSoftwareVersion' - The software version installed on the device or devices after the
-- update.
--
-- 'iotJobId', 'createSoftwareUpdateJobResponse_iotJobId' - The IoT Job Id corresponding to this update.
--
-- 'httpStatus', 'createSoftwareUpdateJobResponse_httpStatus' - The response's http status code.
newCreateSoftwareUpdateJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSoftwareUpdateJobResponse
newCreateSoftwareUpdateJobResponse pHttpStatus_ =
  CreateSoftwareUpdateJobResponse'
    { iotJobArn =
        Prelude.Nothing,
      platformSoftwareVersion = Prelude.Nothing,
      iotJobId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The IoT Job ARN corresponding to this update.
createSoftwareUpdateJobResponse_iotJobArn :: Lens.Lens' CreateSoftwareUpdateJobResponse (Prelude.Maybe Prelude.Text)
createSoftwareUpdateJobResponse_iotJobArn = Lens.lens (\CreateSoftwareUpdateJobResponse' {iotJobArn} -> iotJobArn) (\s@CreateSoftwareUpdateJobResponse' {} a -> s {iotJobArn = a} :: CreateSoftwareUpdateJobResponse)

-- | The software version installed on the device or devices after the
-- update.
createSoftwareUpdateJobResponse_platformSoftwareVersion :: Lens.Lens' CreateSoftwareUpdateJobResponse (Prelude.Maybe Prelude.Text)
createSoftwareUpdateJobResponse_platformSoftwareVersion = Lens.lens (\CreateSoftwareUpdateJobResponse' {platformSoftwareVersion} -> platformSoftwareVersion) (\s@CreateSoftwareUpdateJobResponse' {} a -> s {platformSoftwareVersion = a} :: CreateSoftwareUpdateJobResponse)

-- | The IoT Job Id corresponding to this update.
createSoftwareUpdateJobResponse_iotJobId :: Lens.Lens' CreateSoftwareUpdateJobResponse (Prelude.Maybe Prelude.Text)
createSoftwareUpdateJobResponse_iotJobId = Lens.lens (\CreateSoftwareUpdateJobResponse' {iotJobId} -> iotJobId) (\s@CreateSoftwareUpdateJobResponse' {} a -> s {iotJobId = a} :: CreateSoftwareUpdateJobResponse)

-- | The response's http status code.
createSoftwareUpdateJobResponse_httpStatus :: Lens.Lens' CreateSoftwareUpdateJobResponse Prelude.Int
createSoftwareUpdateJobResponse_httpStatus = Lens.lens (\CreateSoftwareUpdateJobResponse' {httpStatus} -> httpStatus) (\s@CreateSoftwareUpdateJobResponse' {} a -> s {httpStatus = a} :: CreateSoftwareUpdateJobResponse)

instance
  Prelude.NFData
    CreateSoftwareUpdateJobResponse
  where
  rnf CreateSoftwareUpdateJobResponse' {..} =
    Prelude.rnf iotJobArn
      `Prelude.seq` Prelude.rnf platformSoftwareVersion
      `Prelude.seq` Prelude.rnf iotJobId
      `Prelude.seq` Prelude.rnf httpStatus

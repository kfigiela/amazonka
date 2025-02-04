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
-- Module      : Amazonka.Panorama.CreateJobForDevices
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job to run on one or more devices.
module Amazonka.Panorama.CreateJobForDevices
  ( -- * Creating a Request
    CreateJobForDevices (..),
    newCreateJobForDevices,

    -- * Request Lenses
    createJobForDevices_deviceIds,
    createJobForDevices_deviceJobConfig,
    createJobForDevices_jobType,

    -- * Destructuring the Response
    CreateJobForDevicesResponse (..),
    newCreateJobForDevicesResponse,

    -- * Response Lenses
    createJobForDevicesResponse_httpStatus,
    createJobForDevicesResponse_jobs,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateJobForDevices' smart constructor.
data CreateJobForDevices = CreateJobForDevices'
  { -- | IDs of target devices.
    deviceIds :: Prelude.NonEmpty Prelude.Text,
    -- | Configuration settings for the job.
    deviceJobConfig :: DeviceJobConfig,
    -- | The type of job to run.
    jobType :: JobType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobForDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceIds', 'createJobForDevices_deviceIds' - IDs of target devices.
--
-- 'deviceJobConfig', 'createJobForDevices_deviceJobConfig' - Configuration settings for the job.
--
-- 'jobType', 'createJobForDevices_jobType' - The type of job to run.
newCreateJobForDevices ::
  -- | 'deviceIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'deviceJobConfig'
  DeviceJobConfig ->
  -- | 'jobType'
  JobType ->
  CreateJobForDevices
newCreateJobForDevices
  pDeviceIds_
  pDeviceJobConfig_
  pJobType_ =
    CreateJobForDevices'
      { deviceIds =
          Lens.coerced Lens.# pDeviceIds_,
        deviceJobConfig = pDeviceJobConfig_,
        jobType = pJobType_
      }

-- | IDs of target devices.
createJobForDevices_deviceIds :: Lens.Lens' CreateJobForDevices (Prelude.NonEmpty Prelude.Text)
createJobForDevices_deviceIds = Lens.lens (\CreateJobForDevices' {deviceIds} -> deviceIds) (\s@CreateJobForDevices' {} a -> s {deviceIds = a} :: CreateJobForDevices) Prelude.. Lens.coerced

-- | Configuration settings for the job.
createJobForDevices_deviceJobConfig :: Lens.Lens' CreateJobForDevices DeviceJobConfig
createJobForDevices_deviceJobConfig = Lens.lens (\CreateJobForDevices' {deviceJobConfig} -> deviceJobConfig) (\s@CreateJobForDevices' {} a -> s {deviceJobConfig = a} :: CreateJobForDevices)

-- | The type of job to run.
createJobForDevices_jobType :: Lens.Lens' CreateJobForDevices JobType
createJobForDevices_jobType = Lens.lens (\CreateJobForDevices' {jobType} -> jobType) (\s@CreateJobForDevices' {} a -> s {jobType = a} :: CreateJobForDevices)

instance Core.AWSRequest CreateJobForDevices where
  type
    AWSResponse CreateJobForDevices =
      CreateJobForDevicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateJobForDevicesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Jobs" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable CreateJobForDevices where
  hashWithSalt _salt CreateJobForDevices' {..} =
    _salt `Prelude.hashWithSalt` deviceIds
      `Prelude.hashWithSalt` deviceJobConfig
      `Prelude.hashWithSalt` jobType

instance Prelude.NFData CreateJobForDevices where
  rnf CreateJobForDevices' {..} =
    Prelude.rnf deviceIds
      `Prelude.seq` Prelude.rnf deviceJobConfig
      `Prelude.seq` Prelude.rnf jobType

instance Core.ToHeaders CreateJobForDevices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateJobForDevices where
  toJSON CreateJobForDevices' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DeviceIds" Core..= deviceIds),
            Prelude.Just
              ("DeviceJobConfig" Core..= deviceJobConfig),
            Prelude.Just ("JobType" Core..= jobType)
          ]
      )

instance Core.ToPath CreateJobForDevices where
  toPath = Prelude.const "/jobs"

instance Core.ToQuery CreateJobForDevices where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateJobForDevicesResponse' smart constructor.
data CreateJobForDevicesResponse = CreateJobForDevicesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of jobs.
    jobs :: [Job]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobForDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createJobForDevicesResponse_httpStatus' - The response's http status code.
--
-- 'jobs', 'createJobForDevicesResponse_jobs' - A list of jobs.
newCreateJobForDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateJobForDevicesResponse
newCreateJobForDevicesResponse pHttpStatus_ =
  CreateJobForDevicesResponse'
    { httpStatus =
        pHttpStatus_,
      jobs = Prelude.mempty
    }

-- | The response's http status code.
createJobForDevicesResponse_httpStatus :: Lens.Lens' CreateJobForDevicesResponse Prelude.Int
createJobForDevicesResponse_httpStatus = Lens.lens (\CreateJobForDevicesResponse' {httpStatus} -> httpStatus) (\s@CreateJobForDevicesResponse' {} a -> s {httpStatus = a} :: CreateJobForDevicesResponse)

-- | A list of jobs.
createJobForDevicesResponse_jobs :: Lens.Lens' CreateJobForDevicesResponse [Job]
createJobForDevicesResponse_jobs = Lens.lens (\CreateJobForDevicesResponse' {jobs} -> jobs) (\s@CreateJobForDevicesResponse' {} a -> s {jobs = a} :: CreateJobForDevicesResponse) Prelude.. Lens.coerced

instance Prelude.NFData CreateJobForDevicesResponse where
  rnf CreateJobForDevicesResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobs

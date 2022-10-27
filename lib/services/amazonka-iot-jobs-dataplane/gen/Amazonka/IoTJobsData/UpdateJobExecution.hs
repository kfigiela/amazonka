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
-- Module      : Amazonka.IoTJobsData.UpdateJobExecution
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status of a job execution.
module Amazonka.IoTJobsData.UpdateJobExecution
  ( -- * Creating a Request
    UpdateJobExecution (..),
    newUpdateJobExecution,

    -- * Request Lenses
    updateJobExecution_includeJobExecutionState,
    updateJobExecution_executionNumber,
    updateJobExecution_statusDetails,
    updateJobExecution_stepTimeoutInMinutes,
    updateJobExecution_includeJobDocument,
    updateJobExecution_expectedVersion,
    updateJobExecution_jobId,
    updateJobExecution_thingName,
    updateJobExecution_status,

    -- * Destructuring the Response
    UpdateJobExecutionResponse (..),
    newUpdateJobExecutionResponse,

    -- * Response Lenses
    updateJobExecutionResponse_jobDocument,
    updateJobExecutionResponse_executionState,
    updateJobExecutionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTJobsData.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateJobExecution' smart constructor.
data UpdateJobExecution = UpdateJobExecution'
  { -- | Optional. When included and set to true, the response contains the
    -- JobExecutionState data. The default is false.
    includeJobExecutionState :: Prelude.Maybe Prelude.Bool,
    -- | Optional. A number that identifies a particular job execution on a
    -- particular device.
    executionNumber :: Prelude.Maybe Prelude.Integer,
    -- | Optional. A collection of name\/value pairs that describe the status of
    -- the job execution. If not specified, the statusDetails are unchanged.
    statusDetails :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies the amount of time this device has to finish execution of this
    -- job. If the job execution status is not set to a terminal state before
    -- this timer expires, or before the timer is reset (by again calling
    -- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
    -- a new timeout value in this field) the job execution status will be
    -- automatically set to @TIMED_OUT@. Note that setting or resetting this
    -- timeout has no effect on that job execution timeout which may have been
    -- specified when the job was created (@CreateJob@ using field
    -- @timeoutConfig@).
    stepTimeoutInMinutes :: Prelude.Maybe Prelude.Integer,
    -- | Optional. When set to true, the response contains the job document. The
    -- default is false.
    includeJobDocument :: Prelude.Maybe Prelude.Bool,
    -- | Optional. The expected current version of the job execution. Each time
    -- you update the job execution, its version is incremented. If the version
    -- of the job execution stored in Jobs does not match, the update is
    -- rejected with a VersionMismatch error, and an ErrorResponse that
    -- contains the current job execution status data is returned. (This makes
    -- it unnecessary to perform a separate DescribeJobExecution request in
    -- order to obtain the job execution status data.)
    expectedVersion :: Prelude.Maybe Prelude.Integer,
    -- | The unique identifier assigned to this job when it was created.
    jobId :: Prelude.Text,
    -- | The name of the thing associated with the device.
    thingName :: Prelude.Text,
    -- | The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
    -- REJECTED). This must be specified on every update.
    status :: JobExecutionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateJobExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeJobExecutionState', 'updateJobExecution_includeJobExecutionState' - Optional. When included and set to true, the response contains the
-- JobExecutionState data. The default is false.
--
-- 'executionNumber', 'updateJobExecution_executionNumber' - Optional. A number that identifies a particular job execution on a
-- particular device.
--
-- 'statusDetails', 'updateJobExecution_statusDetails' - Optional. A collection of name\/value pairs that describe the status of
-- the job execution. If not specified, the statusDetails are unchanged.
--
-- 'stepTimeoutInMinutes', 'updateJobExecution_stepTimeoutInMinutes' - Specifies the amount of time this device has to finish execution of this
-- job. If the job execution status is not set to a terminal state before
-- this timer expires, or before the timer is reset (by again calling
-- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
-- a new timeout value in this field) the job execution status will be
-- automatically set to @TIMED_OUT@. Note that setting or resetting this
-- timeout has no effect on that job execution timeout which may have been
-- specified when the job was created (@CreateJob@ using field
-- @timeoutConfig@).
--
-- 'includeJobDocument', 'updateJobExecution_includeJobDocument' - Optional. When set to true, the response contains the job document. The
-- default is false.
--
-- 'expectedVersion', 'updateJobExecution_expectedVersion' - Optional. The expected current version of the job execution. Each time
-- you update the job execution, its version is incremented. If the version
-- of the job execution stored in Jobs does not match, the update is
-- rejected with a VersionMismatch error, and an ErrorResponse that
-- contains the current job execution status data is returned. (This makes
-- it unnecessary to perform a separate DescribeJobExecution request in
-- order to obtain the job execution status data.)
--
-- 'jobId', 'updateJobExecution_jobId' - The unique identifier assigned to this job when it was created.
--
-- 'thingName', 'updateJobExecution_thingName' - The name of the thing associated with the device.
--
-- 'status', 'updateJobExecution_status' - The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
-- REJECTED). This must be specified on every update.
newUpdateJobExecution ::
  -- | 'jobId'
  Prelude.Text ->
  -- | 'thingName'
  Prelude.Text ->
  -- | 'status'
  JobExecutionStatus ->
  UpdateJobExecution
newUpdateJobExecution pJobId_ pThingName_ pStatus_ =
  UpdateJobExecution'
    { includeJobExecutionState =
        Prelude.Nothing,
      executionNumber = Prelude.Nothing,
      statusDetails = Prelude.Nothing,
      stepTimeoutInMinutes = Prelude.Nothing,
      includeJobDocument = Prelude.Nothing,
      expectedVersion = Prelude.Nothing,
      jobId = pJobId_,
      thingName = pThingName_,
      status = pStatus_
    }

-- | Optional. When included and set to true, the response contains the
-- JobExecutionState data. The default is false.
updateJobExecution_includeJobExecutionState :: Lens.Lens' UpdateJobExecution (Prelude.Maybe Prelude.Bool)
updateJobExecution_includeJobExecutionState = Lens.lens (\UpdateJobExecution' {includeJobExecutionState} -> includeJobExecutionState) (\s@UpdateJobExecution' {} a -> s {includeJobExecutionState = a} :: UpdateJobExecution)

-- | Optional. A number that identifies a particular job execution on a
-- particular device.
updateJobExecution_executionNumber :: Lens.Lens' UpdateJobExecution (Prelude.Maybe Prelude.Integer)
updateJobExecution_executionNumber = Lens.lens (\UpdateJobExecution' {executionNumber} -> executionNumber) (\s@UpdateJobExecution' {} a -> s {executionNumber = a} :: UpdateJobExecution)

-- | Optional. A collection of name\/value pairs that describe the status of
-- the job execution. If not specified, the statusDetails are unchanged.
updateJobExecution_statusDetails :: Lens.Lens' UpdateJobExecution (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateJobExecution_statusDetails = Lens.lens (\UpdateJobExecution' {statusDetails} -> statusDetails) (\s@UpdateJobExecution' {} a -> s {statusDetails = a} :: UpdateJobExecution) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the amount of time this device has to finish execution of this
-- job. If the job execution status is not set to a terminal state before
-- this timer expires, or before the timer is reset (by again calling
-- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
-- a new timeout value in this field) the job execution status will be
-- automatically set to @TIMED_OUT@. Note that setting or resetting this
-- timeout has no effect on that job execution timeout which may have been
-- specified when the job was created (@CreateJob@ using field
-- @timeoutConfig@).
updateJobExecution_stepTimeoutInMinutes :: Lens.Lens' UpdateJobExecution (Prelude.Maybe Prelude.Integer)
updateJobExecution_stepTimeoutInMinutes = Lens.lens (\UpdateJobExecution' {stepTimeoutInMinutes} -> stepTimeoutInMinutes) (\s@UpdateJobExecution' {} a -> s {stepTimeoutInMinutes = a} :: UpdateJobExecution)

-- | Optional. When set to true, the response contains the job document. The
-- default is false.
updateJobExecution_includeJobDocument :: Lens.Lens' UpdateJobExecution (Prelude.Maybe Prelude.Bool)
updateJobExecution_includeJobDocument = Lens.lens (\UpdateJobExecution' {includeJobDocument} -> includeJobDocument) (\s@UpdateJobExecution' {} a -> s {includeJobDocument = a} :: UpdateJobExecution)

-- | Optional. The expected current version of the job execution. Each time
-- you update the job execution, its version is incremented. If the version
-- of the job execution stored in Jobs does not match, the update is
-- rejected with a VersionMismatch error, and an ErrorResponse that
-- contains the current job execution status data is returned. (This makes
-- it unnecessary to perform a separate DescribeJobExecution request in
-- order to obtain the job execution status data.)
updateJobExecution_expectedVersion :: Lens.Lens' UpdateJobExecution (Prelude.Maybe Prelude.Integer)
updateJobExecution_expectedVersion = Lens.lens (\UpdateJobExecution' {expectedVersion} -> expectedVersion) (\s@UpdateJobExecution' {} a -> s {expectedVersion = a} :: UpdateJobExecution)

-- | The unique identifier assigned to this job when it was created.
updateJobExecution_jobId :: Lens.Lens' UpdateJobExecution Prelude.Text
updateJobExecution_jobId = Lens.lens (\UpdateJobExecution' {jobId} -> jobId) (\s@UpdateJobExecution' {} a -> s {jobId = a} :: UpdateJobExecution)

-- | The name of the thing associated with the device.
updateJobExecution_thingName :: Lens.Lens' UpdateJobExecution Prelude.Text
updateJobExecution_thingName = Lens.lens (\UpdateJobExecution' {thingName} -> thingName) (\s@UpdateJobExecution' {} a -> s {thingName = a} :: UpdateJobExecution)

-- | The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
-- REJECTED). This must be specified on every update.
updateJobExecution_status :: Lens.Lens' UpdateJobExecution JobExecutionStatus
updateJobExecution_status = Lens.lens (\UpdateJobExecution' {status} -> status) (\s@UpdateJobExecution' {} a -> s {status = a} :: UpdateJobExecution)

instance Core.AWSRequest UpdateJobExecution where
  type
    AWSResponse UpdateJobExecution =
      UpdateJobExecutionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateJobExecutionResponse'
            Prelude.<$> (x Core..?> "jobDocument")
            Prelude.<*> (x Core..?> "executionState")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateJobExecution where
  hashWithSalt _salt UpdateJobExecution' {..} =
    _salt
      `Prelude.hashWithSalt` includeJobExecutionState
      `Prelude.hashWithSalt` executionNumber
      `Prelude.hashWithSalt` statusDetails
      `Prelude.hashWithSalt` stepTimeoutInMinutes
      `Prelude.hashWithSalt` includeJobDocument
      `Prelude.hashWithSalt` expectedVersion
      `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` thingName
      `Prelude.hashWithSalt` status

instance Prelude.NFData UpdateJobExecution where
  rnf UpdateJobExecution' {..} =
    Prelude.rnf includeJobExecutionState
      `Prelude.seq` Prelude.rnf executionNumber
      `Prelude.seq` Prelude.rnf statusDetails
      `Prelude.seq` Prelude.rnf stepTimeoutInMinutes
      `Prelude.seq` Prelude.rnf includeJobDocument
      `Prelude.seq` Prelude.rnf expectedVersion
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf thingName
      `Prelude.seq` Prelude.rnf status

instance Core.ToHeaders UpdateJobExecution where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateJobExecution where
  toJSON UpdateJobExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("includeJobExecutionState" Core..=)
              Prelude.<$> includeJobExecutionState,
            ("executionNumber" Core..=)
              Prelude.<$> executionNumber,
            ("statusDetails" Core..=) Prelude.<$> statusDetails,
            ("stepTimeoutInMinutes" Core..=)
              Prelude.<$> stepTimeoutInMinutes,
            ("includeJobDocument" Core..=)
              Prelude.<$> includeJobDocument,
            ("expectedVersion" Core..=)
              Prelude.<$> expectedVersion,
            Prelude.Just ("status" Core..= status)
          ]
      )

instance Core.ToPath UpdateJobExecution where
  toPath UpdateJobExecution' {..} =
    Prelude.mconcat
      [ "/things/",
        Core.toBS thingName,
        "/jobs/",
        Core.toBS jobId
      ]

instance Core.ToQuery UpdateJobExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateJobExecutionResponse' smart constructor.
data UpdateJobExecutionResponse = UpdateJobExecutionResponse'
  { -- | The contents of the Job Documents.
    jobDocument :: Prelude.Maybe Prelude.Text,
    -- | A JobExecutionState object.
    executionState :: Prelude.Maybe JobExecutionState,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateJobExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobDocument', 'updateJobExecutionResponse_jobDocument' - The contents of the Job Documents.
--
-- 'executionState', 'updateJobExecutionResponse_executionState' - A JobExecutionState object.
--
-- 'httpStatus', 'updateJobExecutionResponse_httpStatus' - The response's http status code.
newUpdateJobExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateJobExecutionResponse
newUpdateJobExecutionResponse pHttpStatus_ =
  UpdateJobExecutionResponse'
    { jobDocument =
        Prelude.Nothing,
      executionState = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The contents of the Job Documents.
updateJobExecutionResponse_jobDocument :: Lens.Lens' UpdateJobExecutionResponse (Prelude.Maybe Prelude.Text)
updateJobExecutionResponse_jobDocument = Lens.lens (\UpdateJobExecutionResponse' {jobDocument} -> jobDocument) (\s@UpdateJobExecutionResponse' {} a -> s {jobDocument = a} :: UpdateJobExecutionResponse)

-- | A JobExecutionState object.
updateJobExecutionResponse_executionState :: Lens.Lens' UpdateJobExecutionResponse (Prelude.Maybe JobExecutionState)
updateJobExecutionResponse_executionState = Lens.lens (\UpdateJobExecutionResponse' {executionState} -> executionState) (\s@UpdateJobExecutionResponse' {} a -> s {executionState = a} :: UpdateJobExecutionResponse)

-- | The response's http status code.
updateJobExecutionResponse_httpStatus :: Lens.Lens' UpdateJobExecutionResponse Prelude.Int
updateJobExecutionResponse_httpStatus = Lens.lens (\UpdateJobExecutionResponse' {httpStatus} -> httpStatus) (\s@UpdateJobExecutionResponse' {} a -> s {httpStatus = a} :: UpdateJobExecutionResponse)

instance Prelude.NFData UpdateJobExecutionResponse where
  rnf UpdateJobExecutionResponse' {..} =
    Prelude.rnf jobDocument
      `Prelude.seq` Prelude.rnf executionState
      `Prelude.seq` Prelude.rnf httpStatus

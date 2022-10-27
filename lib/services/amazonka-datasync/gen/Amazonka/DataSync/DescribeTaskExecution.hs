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
-- Module      : Amazonka.DataSync.DescribeTaskExecution
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed metadata about a task that is being executed.
module Amazonka.DataSync.DescribeTaskExecution
  ( -- * Creating a Request
    DescribeTaskExecution (..),
    newDescribeTaskExecution,

    -- * Request Lenses
    describeTaskExecution_taskExecutionArn,

    -- * Destructuring the Response
    DescribeTaskExecutionResponse (..),
    newDescribeTaskExecutionResponse,

    -- * Response Lenses
    describeTaskExecutionResponse_excludes,
    describeTaskExecutionResponse_filesTransferred,
    describeTaskExecutionResponse_status,
    describeTaskExecutionResponse_options,
    describeTaskExecutionResponse_estimatedFilesToTransfer,
    describeTaskExecutionResponse_includes,
    describeTaskExecutionResponse_result,
    describeTaskExecutionResponse_estimatedBytesToTransfer,
    describeTaskExecutionResponse_bytesCompressed,
    describeTaskExecutionResponse_bytesTransferred,
    describeTaskExecutionResponse_taskExecutionArn,
    describeTaskExecutionResponse_bytesWritten,
    describeTaskExecutionResponse_startTime,
    describeTaskExecutionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | DescribeTaskExecutionRequest
--
-- /See:/ 'newDescribeTaskExecution' smart constructor.
data DescribeTaskExecution = DescribeTaskExecution'
  { -- | The Amazon Resource Name (ARN) of the task that is being executed.
    taskExecutionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTaskExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskExecutionArn', 'describeTaskExecution_taskExecutionArn' - The Amazon Resource Name (ARN) of the task that is being executed.
newDescribeTaskExecution ::
  -- | 'taskExecutionArn'
  Prelude.Text ->
  DescribeTaskExecution
newDescribeTaskExecution pTaskExecutionArn_ =
  DescribeTaskExecution'
    { taskExecutionArn =
        pTaskExecutionArn_
    }

-- | The Amazon Resource Name (ARN) of the task that is being executed.
describeTaskExecution_taskExecutionArn :: Lens.Lens' DescribeTaskExecution Prelude.Text
describeTaskExecution_taskExecutionArn = Lens.lens (\DescribeTaskExecution' {taskExecutionArn} -> taskExecutionArn) (\s@DescribeTaskExecution' {} a -> s {taskExecutionArn = a} :: DescribeTaskExecution)

instance Core.AWSRequest DescribeTaskExecution where
  type
    AWSResponse DescribeTaskExecution =
      DescribeTaskExecutionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTaskExecutionResponse'
            Prelude.<$> (x Core..?> "Excludes" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "FilesTransferred")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "Options")
            Prelude.<*> (x Core..?> "EstimatedFilesToTransfer")
            Prelude.<*> (x Core..?> "Includes" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Result")
            Prelude.<*> (x Core..?> "EstimatedBytesToTransfer")
            Prelude.<*> (x Core..?> "BytesCompressed")
            Prelude.<*> (x Core..?> "BytesTransferred")
            Prelude.<*> (x Core..?> "TaskExecutionArn")
            Prelude.<*> (x Core..?> "BytesWritten")
            Prelude.<*> (x Core..?> "StartTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTaskExecution where
  hashWithSalt _salt DescribeTaskExecution' {..} =
    _salt `Prelude.hashWithSalt` taskExecutionArn

instance Prelude.NFData DescribeTaskExecution where
  rnf DescribeTaskExecution' {..} =
    Prelude.rnf taskExecutionArn

instance Core.ToHeaders DescribeTaskExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.DescribeTaskExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeTaskExecution where
  toJSON DescribeTaskExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("TaskExecutionArn" Core..= taskExecutionArn)
          ]
      )

instance Core.ToPath DescribeTaskExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeTaskExecution where
  toQuery = Prelude.const Prelude.mempty

-- | DescribeTaskExecutionResponse
--
-- /See:/ 'newDescribeTaskExecutionResponse' smart constructor.
data DescribeTaskExecutionResponse = DescribeTaskExecutionResponse'
  { -- | A list of filter rules that determines which files to exclude from a
    -- task. The list should contain a single filter string that consists of
    -- the patterns to exclude. The patterns are delimited by \"|\" (that is, a
    -- pipe), for example: @\"\/folder1|\/folder2\"@
    excludes :: Prelude.Maybe [FilterRule],
    -- | The actual number of files that was transferred over the network. This
    -- value is calculated and updated on an ongoing basis during the
    -- TRANSFERRING phase. It\'s updated periodically when each file is read
    -- from the source and sent over the network.
    --
    -- If failures occur during a transfer, this value can be less than
    -- @EstimatedFilesToTransfer@. This value can also be greater than
    -- @EstimatedFilesTransferred@ in some cases. This element is
    -- implementation-specific for some location types, so don\'t use it as an
    -- indicator for a correct file number or to monitor your task execution.
    filesTransferred :: Prelude.Maybe Prelude.Integer,
    -- | The status of the task execution.
    --
    -- For detailed information about task execution statuses, see
    -- Understanding Task Statuses in the /DataSync User Guide./
    status :: Prelude.Maybe TaskExecutionStatus,
    options :: Prelude.Maybe Options,
    -- | The expected number of files that is to be transferred over the network.
    -- This value is calculated during the PREPARING phase, before the
    -- TRANSFERRING phase. This value is the expected number of files to be
    -- transferred. It\'s calculated based on comparing the content of the
    -- source and destination locations and finding the delta that needs to be
    -- transferred.
    estimatedFilesToTransfer :: Prelude.Maybe Prelude.Integer,
    -- | A list of filter rules that determines which files to include when
    -- running a task. The list should contain a single filter string that
    -- consists of the patterns to include. The patterns are delimited by \"|\"
    -- (that is, a pipe), for example: @\"\/folder1|\/folder2\"@
    includes :: Prelude.Maybe [FilterRule],
    -- | The result of the task execution.
    result :: Prelude.Maybe TaskExecutionResultDetail,
    -- | The estimated physical number of bytes that is to be transferred over
    -- the network.
    estimatedBytesToTransfer :: Prelude.Maybe Prelude.Integer,
    -- | The physical number of bytes transferred over the network after
    -- compression was applied. In most cases, this number is less than
    -- @BytesTransferred@.
    bytesCompressed :: Prelude.Maybe Prelude.Integer,
    -- | The physical number of bytes transferred over the network.
    bytesTransferred :: Prelude.Maybe Prelude.Integer,
    -- | The Amazon Resource Name (ARN) of the task execution that was described.
    -- @TaskExecutionArn@ is hierarchical and includes @TaskArn@ for the task
    -- that was executed.
    --
    -- For example, a @TaskExecution@ value with the ARN
    -- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2\/execution\/exec-08ef1e88ec491019b@
    -- executed the task with the ARN
    -- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2@.
    taskExecutionArn :: Prelude.Maybe Prelude.Text,
    -- | The number of logical bytes written to the destination Amazon Web
    -- Services storage resource.
    bytesWritten :: Prelude.Maybe Prelude.Integer,
    -- | The time that the task execution was started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTaskExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excludes', 'describeTaskExecutionResponse_excludes' - A list of filter rules that determines which files to exclude from a
-- task. The list should contain a single filter string that consists of
-- the patterns to exclude. The patterns are delimited by \"|\" (that is, a
-- pipe), for example: @\"\/folder1|\/folder2\"@
--
-- 'filesTransferred', 'describeTaskExecutionResponse_filesTransferred' - The actual number of files that was transferred over the network. This
-- value is calculated and updated on an ongoing basis during the
-- TRANSFERRING phase. It\'s updated periodically when each file is read
-- from the source and sent over the network.
--
-- If failures occur during a transfer, this value can be less than
-- @EstimatedFilesToTransfer@. This value can also be greater than
-- @EstimatedFilesTransferred@ in some cases. This element is
-- implementation-specific for some location types, so don\'t use it as an
-- indicator for a correct file number or to monitor your task execution.
--
-- 'status', 'describeTaskExecutionResponse_status' - The status of the task execution.
--
-- For detailed information about task execution statuses, see
-- Understanding Task Statuses in the /DataSync User Guide./
--
-- 'options', 'describeTaskExecutionResponse_options' - Undocumented member.
--
-- 'estimatedFilesToTransfer', 'describeTaskExecutionResponse_estimatedFilesToTransfer' - The expected number of files that is to be transferred over the network.
-- This value is calculated during the PREPARING phase, before the
-- TRANSFERRING phase. This value is the expected number of files to be
-- transferred. It\'s calculated based on comparing the content of the
-- source and destination locations and finding the delta that needs to be
-- transferred.
--
-- 'includes', 'describeTaskExecutionResponse_includes' - A list of filter rules that determines which files to include when
-- running a task. The list should contain a single filter string that
-- consists of the patterns to include. The patterns are delimited by \"|\"
-- (that is, a pipe), for example: @\"\/folder1|\/folder2\"@
--
-- 'result', 'describeTaskExecutionResponse_result' - The result of the task execution.
--
-- 'estimatedBytesToTransfer', 'describeTaskExecutionResponse_estimatedBytesToTransfer' - The estimated physical number of bytes that is to be transferred over
-- the network.
--
-- 'bytesCompressed', 'describeTaskExecutionResponse_bytesCompressed' - The physical number of bytes transferred over the network after
-- compression was applied. In most cases, this number is less than
-- @BytesTransferred@.
--
-- 'bytesTransferred', 'describeTaskExecutionResponse_bytesTransferred' - The physical number of bytes transferred over the network.
--
-- 'taskExecutionArn', 'describeTaskExecutionResponse_taskExecutionArn' - The Amazon Resource Name (ARN) of the task execution that was described.
-- @TaskExecutionArn@ is hierarchical and includes @TaskArn@ for the task
-- that was executed.
--
-- For example, a @TaskExecution@ value with the ARN
-- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2\/execution\/exec-08ef1e88ec491019b@
-- executed the task with the ARN
-- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2@.
--
-- 'bytesWritten', 'describeTaskExecutionResponse_bytesWritten' - The number of logical bytes written to the destination Amazon Web
-- Services storage resource.
--
-- 'startTime', 'describeTaskExecutionResponse_startTime' - The time that the task execution was started.
--
-- 'httpStatus', 'describeTaskExecutionResponse_httpStatus' - The response's http status code.
newDescribeTaskExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTaskExecutionResponse
newDescribeTaskExecutionResponse pHttpStatus_ =
  DescribeTaskExecutionResponse'
    { excludes =
        Prelude.Nothing,
      filesTransferred = Prelude.Nothing,
      status = Prelude.Nothing,
      options = Prelude.Nothing,
      estimatedFilesToTransfer = Prelude.Nothing,
      includes = Prelude.Nothing,
      result = Prelude.Nothing,
      estimatedBytesToTransfer = Prelude.Nothing,
      bytesCompressed = Prelude.Nothing,
      bytesTransferred = Prelude.Nothing,
      taskExecutionArn = Prelude.Nothing,
      bytesWritten = Prelude.Nothing,
      startTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of filter rules that determines which files to exclude from a
-- task. The list should contain a single filter string that consists of
-- the patterns to exclude. The patterns are delimited by \"|\" (that is, a
-- pipe), for example: @\"\/folder1|\/folder2\"@
describeTaskExecutionResponse_excludes :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe [FilterRule])
describeTaskExecutionResponse_excludes = Lens.lens (\DescribeTaskExecutionResponse' {excludes} -> excludes) (\s@DescribeTaskExecutionResponse' {} a -> s {excludes = a} :: DescribeTaskExecutionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The actual number of files that was transferred over the network. This
-- value is calculated and updated on an ongoing basis during the
-- TRANSFERRING phase. It\'s updated periodically when each file is read
-- from the source and sent over the network.
--
-- If failures occur during a transfer, this value can be less than
-- @EstimatedFilesToTransfer@. This value can also be greater than
-- @EstimatedFilesTransferred@ in some cases. This element is
-- implementation-specific for some location types, so don\'t use it as an
-- indicator for a correct file number or to monitor your task execution.
describeTaskExecutionResponse_filesTransferred :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_filesTransferred = Lens.lens (\DescribeTaskExecutionResponse' {filesTransferred} -> filesTransferred) (\s@DescribeTaskExecutionResponse' {} a -> s {filesTransferred = a} :: DescribeTaskExecutionResponse)

-- | The status of the task execution.
--
-- For detailed information about task execution statuses, see
-- Understanding Task Statuses in the /DataSync User Guide./
describeTaskExecutionResponse_status :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe TaskExecutionStatus)
describeTaskExecutionResponse_status = Lens.lens (\DescribeTaskExecutionResponse' {status} -> status) (\s@DescribeTaskExecutionResponse' {} a -> s {status = a} :: DescribeTaskExecutionResponse)

-- | Undocumented member.
describeTaskExecutionResponse_options :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Options)
describeTaskExecutionResponse_options = Lens.lens (\DescribeTaskExecutionResponse' {options} -> options) (\s@DescribeTaskExecutionResponse' {} a -> s {options = a} :: DescribeTaskExecutionResponse)

-- | The expected number of files that is to be transferred over the network.
-- This value is calculated during the PREPARING phase, before the
-- TRANSFERRING phase. This value is the expected number of files to be
-- transferred. It\'s calculated based on comparing the content of the
-- source and destination locations and finding the delta that needs to be
-- transferred.
describeTaskExecutionResponse_estimatedFilesToTransfer :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_estimatedFilesToTransfer = Lens.lens (\DescribeTaskExecutionResponse' {estimatedFilesToTransfer} -> estimatedFilesToTransfer) (\s@DescribeTaskExecutionResponse' {} a -> s {estimatedFilesToTransfer = a} :: DescribeTaskExecutionResponse)

-- | A list of filter rules that determines which files to include when
-- running a task. The list should contain a single filter string that
-- consists of the patterns to include. The patterns are delimited by \"|\"
-- (that is, a pipe), for example: @\"\/folder1|\/folder2\"@
describeTaskExecutionResponse_includes :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe [FilterRule])
describeTaskExecutionResponse_includes = Lens.lens (\DescribeTaskExecutionResponse' {includes} -> includes) (\s@DescribeTaskExecutionResponse' {} a -> s {includes = a} :: DescribeTaskExecutionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The result of the task execution.
describeTaskExecutionResponse_result :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe TaskExecutionResultDetail)
describeTaskExecutionResponse_result = Lens.lens (\DescribeTaskExecutionResponse' {result} -> result) (\s@DescribeTaskExecutionResponse' {} a -> s {result = a} :: DescribeTaskExecutionResponse)

-- | The estimated physical number of bytes that is to be transferred over
-- the network.
describeTaskExecutionResponse_estimatedBytesToTransfer :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_estimatedBytesToTransfer = Lens.lens (\DescribeTaskExecutionResponse' {estimatedBytesToTransfer} -> estimatedBytesToTransfer) (\s@DescribeTaskExecutionResponse' {} a -> s {estimatedBytesToTransfer = a} :: DescribeTaskExecutionResponse)

-- | The physical number of bytes transferred over the network after
-- compression was applied. In most cases, this number is less than
-- @BytesTransferred@.
describeTaskExecutionResponse_bytesCompressed :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_bytesCompressed = Lens.lens (\DescribeTaskExecutionResponse' {bytesCompressed} -> bytesCompressed) (\s@DescribeTaskExecutionResponse' {} a -> s {bytesCompressed = a} :: DescribeTaskExecutionResponse)

-- | The physical number of bytes transferred over the network.
describeTaskExecutionResponse_bytesTransferred :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_bytesTransferred = Lens.lens (\DescribeTaskExecutionResponse' {bytesTransferred} -> bytesTransferred) (\s@DescribeTaskExecutionResponse' {} a -> s {bytesTransferred = a} :: DescribeTaskExecutionResponse)

-- | The Amazon Resource Name (ARN) of the task execution that was described.
-- @TaskExecutionArn@ is hierarchical and includes @TaskArn@ for the task
-- that was executed.
--
-- For example, a @TaskExecution@ value with the ARN
-- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2\/execution\/exec-08ef1e88ec491019b@
-- executed the task with the ARN
-- @arn:aws:datasync:us-east-1:111222333444:task\/task-0208075f79cedf4a2@.
describeTaskExecutionResponse_taskExecutionArn :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Text)
describeTaskExecutionResponse_taskExecutionArn = Lens.lens (\DescribeTaskExecutionResponse' {taskExecutionArn} -> taskExecutionArn) (\s@DescribeTaskExecutionResponse' {} a -> s {taskExecutionArn = a} :: DescribeTaskExecutionResponse)

-- | The number of logical bytes written to the destination Amazon Web
-- Services storage resource.
describeTaskExecutionResponse_bytesWritten :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.Integer)
describeTaskExecutionResponse_bytesWritten = Lens.lens (\DescribeTaskExecutionResponse' {bytesWritten} -> bytesWritten) (\s@DescribeTaskExecutionResponse' {} a -> s {bytesWritten = a} :: DescribeTaskExecutionResponse)

-- | The time that the task execution was started.
describeTaskExecutionResponse_startTime :: Lens.Lens' DescribeTaskExecutionResponse (Prelude.Maybe Prelude.UTCTime)
describeTaskExecutionResponse_startTime = Lens.lens (\DescribeTaskExecutionResponse' {startTime} -> startTime) (\s@DescribeTaskExecutionResponse' {} a -> s {startTime = a} :: DescribeTaskExecutionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeTaskExecutionResponse_httpStatus :: Lens.Lens' DescribeTaskExecutionResponse Prelude.Int
describeTaskExecutionResponse_httpStatus = Lens.lens (\DescribeTaskExecutionResponse' {httpStatus} -> httpStatus) (\s@DescribeTaskExecutionResponse' {} a -> s {httpStatus = a} :: DescribeTaskExecutionResponse)

instance Prelude.NFData DescribeTaskExecutionResponse where
  rnf DescribeTaskExecutionResponse' {..} =
    Prelude.rnf excludes
      `Prelude.seq` Prelude.rnf filesTransferred
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf options
      `Prelude.seq` Prelude.rnf estimatedFilesToTransfer
      `Prelude.seq` Prelude.rnf includes
      `Prelude.seq` Prelude.rnf result
      `Prelude.seq` Prelude.rnf estimatedBytesToTransfer
      `Prelude.seq` Prelude.rnf bytesCompressed
      `Prelude.seq` Prelude.rnf bytesTransferred
      `Prelude.seq` Prelude.rnf taskExecutionArn
      `Prelude.seq` Prelude.rnf bytesWritten
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf httpStatus

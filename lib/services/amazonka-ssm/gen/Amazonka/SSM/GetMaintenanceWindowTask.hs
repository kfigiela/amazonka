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
-- Module      : Amazonka.SSM.GetMaintenanceWindowTask
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a maintenance window task.
--
-- For maintenance window tasks without a specified target, you can\'t
-- supply values for @--max-errors@ and @--max-concurrency@. Instead, the
-- system inserts a placeholder value of @1@, which may be reported in the
-- response to this command. These values don\'t affect the running of your
-- task and can be ignored.
--
-- To retrieve a list of tasks in a maintenance window, instead use the
-- DescribeMaintenanceWindowTasks command.
module Amazonka.SSM.GetMaintenanceWindowTask
  ( -- * Creating a Request
    GetMaintenanceWindowTask (..),
    newGetMaintenanceWindowTask,

    -- * Request Lenses
    getMaintenanceWindowTask_windowId,
    getMaintenanceWindowTask_windowTaskId,

    -- * Destructuring the Response
    GetMaintenanceWindowTaskResponse (..),
    newGetMaintenanceWindowTaskResponse,

    -- * Response Lenses
    getMaintenanceWindowTaskResponse_name,
    getMaintenanceWindowTaskResponse_taskParameters,
    getMaintenanceWindowTaskResponse_serviceRoleArn,
    getMaintenanceWindowTaskResponse_taskInvocationParameters,
    getMaintenanceWindowTaskResponse_windowTaskId,
    getMaintenanceWindowTaskResponse_taskArn,
    getMaintenanceWindowTaskResponse_windowId,
    getMaintenanceWindowTaskResponse_targets,
    getMaintenanceWindowTaskResponse_description,
    getMaintenanceWindowTaskResponse_taskType,
    getMaintenanceWindowTaskResponse_alarmConfiguration,
    getMaintenanceWindowTaskResponse_priority,
    getMaintenanceWindowTaskResponse_maxConcurrency,
    getMaintenanceWindowTaskResponse_maxErrors,
    getMaintenanceWindowTaskResponse_loggingInfo,
    getMaintenanceWindowTaskResponse_cutoffBehavior,
    getMaintenanceWindowTaskResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newGetMaintenanceWindowTask' smart constructor.
data GetMaintenanceWindowTask = GetMaintenanceWindowTask'
  { -- | The maintenance window ID that includes the task to retrieve.
    windowId :: Prelude.Text,
    -- | The maintenance window task ID to retrieve.
    windowTaskId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowId', 'getMaintenanceWindowTask_windowId' - The maintenance window ID that includes the task to retrieve.
--
-- 'windowTaskId', 'getMaintenanceWindowTask_windowTaskId' - The maintenance window task ID to retrieve.
newGetMaintenanceWindowTask ::
  -- | 'windowId'
  Prelude.Text ->
  -- | 'windowTaskId'
  Prelude.Text ->
  GetMaintenanceWindowTask
newGetMaintenanceWindowTask pWindowId_ pWindowTaskId_ =
  GetMaintenanceWindowTask'
    { windowId = pWindowId_,
      windowTaskId = pWindowTaskId_
    }

-- | The maintenance window ID that includes the task to retrieve.
getMaintenanceWindowTask_windowId :: Lens.Lens' GetMaintenanceWindowTask Prelude.Text
getMaintenanceWindowTask_windowId = Lens.lens (\GetMaintenanceWindowTask' {windowId} -> windowId) (\s@GetMaintenanceWindowTask' {} a -> s {windowId = a} :: GetMaintenanceWindowTask)

-- | The maintenance window task ID to retrieve.
getMaintenanceWindowTask_windowTaskId :: Lens.Lens' GetMaintenanceWindowTask Prelude.Text
getMaintenanceWindowTask_windowTaskId = Lens.lens (\GetMaintenanceWindowTask' {windowTaskId} -> windowTaskId) (\s@GetMaintenanceWindowTask' {} a -> s {windowTaskId = a} :: GetMaintenanceWindowTask)

instance Core.AWSRequest GetMaintenanceWindowTask where
  type
    AWSResponse GetMaintenanceWindowTask =
      GetMaintenanceWindowTaskResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMaintenanceWindowTaskResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "TaskParameters" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ServiceRoleArn")
            Prelude.<*> (x Core..?> "TaskInvocationParameters")
            Prelude.<*> (x Core..?> "WindowTaskId")
            Prelude.<*> (x Core..?> "TaskArn")
            Prelude.<*> (x Core..?> "WindowId")
            Prelude.<*> (x Core..?> "Targets" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "TaskType")
            Prelude.<*> (x Core..?> "AlarmConfiguration")
            Prelude.<*> (x Core..?> "Priority")
            Prelude.<*> (x Core..?> "MaxConcurrency")
            Prelude.<*> (x Core..?> "MaxErrors")
            Prelude.<*> (x Core..?> "LoggingInfo")
            Prelude.<*> (x Core..?> "CutoffBehavior")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMaintenanceWindowTask where
  hashWithSalt _salt GetMaintenanceWindowTask' {..} =
    _salt `Prelude.hashWithSalt` windowId
      `Prelude.hashWithSalt` windowTaskId

instance Prelude.NFData GetMaintenanceWindowTask where
  rnf GetMaintenanceWindowTask' {..} =
    Prelude.rnf windowId
      `Prelude.seq` Prelude.rnf windowTaskId

instance Core.ToHeaders GetMaintenanceWindowTask where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.GetMaintenanceWindowTask" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetMaintenanceWindowTask where
  toJSON GetMaintenanceWindowTask' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("WindowId" Core..= windowId),
            Prelude.Just ("WindowTaskId" Core..= windowTaskId)
          ]
      )

instance Core.ToPath GetMaintenanceWindowTask where
  toPath = Prelude.const "/"

instance Core.ToQuery GetMaintenanceWindowTask where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMaintenanceWindowTaskResponse' smart constructor.
data GetMaintenanceWindowTaskResponse = GetMaintenanceWindowTaskResponse'
  { -- | The retrieved task name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The parameters to pass to the task when it runs.
    --
    -- @TaskParameters@ has been deprecated. To specify parameters to pass to a
    -- task when it runs, instead use the @Parameters@ option in the
    -- @TaskInvocationParameters@ structure. For information about how Systems
    -- Manager handles these options for the supported maintenance window task
    -- types, see MaintenanceWindowTaskInvocationParameters.
    taskParameters :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text (Core.Sensitive MaintenanceWindowTaskParameterValueExpression))),
    -- | The Amazon Resource Name (ARN) of the Identity and Access Management
    -- (IAM) service role to use to publish Amazon Simple Notification Service
    -- (Amazon SNS) notifications for maintenance window Run Command tasks.
    serviceRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The parameters to pass to the task when it runs.
    taskInvocationParameters :: Prelude.Maybe MaintenanceWindowTaskInvocationParameters,
    -- | The retrieved maintenance window task ID.
    windowTaskId :: Prelude.Maybe Prelude.Text,
    -- | The resource that the task used during execution. For @RUN_COMMAND@ and
    -- @AUTOMATION@ task types, the value of @TaskArn@ is the SSM document
    -- name\/ARN. For @LAMBDA@ tasks, the value is the function name\/ARN. For
    -- @STEP_FUNCTIONS@ tasks, the value is the state machine ARN.
    taskArn :: Prelude.Maybe Prelude.Text,
    -- | The retrieved maintenance window ID.
    windowId :: Prelude.Maybe Prelude.Text,
    -- | The targets where the task should run.
    targets :: Prelude.Maybe [Target],
    -- | The retrieved task description.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The type of task to run.
    taskType :: Prelude.Maybe MaintenanceWindowTaskType,
    -- | The details for the CloudWatch alarm you applied to your maintenance
    -- window task.
    alarmConfiguration :: Prelude.Maybe AlarmConfiguration,
    -- | The priority of the task when it runs. The lower the number, the higher
    -- the priority. Tasks that have the same priority are scheduled in
    -- parallel.
    priority :: Prelude.Maybe Prelude.Natural,
    -- | The maximum number of targets allowed to run this task in parallel.
    --
    -- For maintenance window tasks without a target specified, you can\'t
    -- supply a value for this option. Instead, the system inserts a
    -- placeholder value of @1@, which may be reported in the response to this
    -- command. This value doesn\'t affect the running of your task and can be
    -- ignored.
    maxConcurrency :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of errors allowed before the task stops being
    -- scheduled.
    --
    -- For maintenance window tasks without a target specified, you can\'t
    -- supply a value for this option. Instead, the system inserts a
    -- placeholder value of @1@, which may be reported in the response to this
    -- command. This value doesn\'t affect the running of your task and can be
    -- ignored.
    maxErrors :: Prelude.Maybe Prelude.Text,
    -- | The location in Amazon Simple Storage Service (Amazon S3) where the task
    -- results are logged.
    --
    -- @LoggingInfo@ has been deprecated. To specify an Amazon Simple Storage
    -- Service (Amazon S3) bucket to contain logs, instead use the
    -- @OutputS3BucketName@ and @OutputS3KeyPrefix@ options in the
    -- @TaskInvocationParameters@ structure. For information about how Amazon
    -- Web Services Systems Manager handles these options for the supported
    -- maintenance window task types, see
    -- MaintenanceWindowTaskInvocationParameters.
    loggingInfo :: Prelude.Maybe LoggingInfo,
    -- | The action to take on tasks when the maintenance window cutoff time is
    -- reached. @CONTINUE_TASK@ means that tasks continue to run. For
    -- Automation, Lambda, Step Functions tasks, @CANCEL_TASK@ means that
    -- currently running task invocations continue, but no new task invocations
    -- are started. For Run Command tasks, @CANCEL_TASK@ means the system
    -- attempts to stop the task by sending a @CancelCommand@ operation.
    cutoffBehavior :: Prelude.Maybe MaintenanceWindowTaskCutoffBehavior,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getMaintenanceWindowTaskResponse_name' - The retrieved task name.
--
-- 'taskParameters', 'getMaintenanceWindowTaskResponse_taskParameters' - The parameters to pass to the task when it runs.
--
-- @TaskParameters@ has been deprecated. To specify parameters to pass to a
-- task when it runs, instead use the @Parameters@ option in the
-- @TaskInvocationParameters@ structure. For information about how Systems
-- Manager handles these options for the supported maintenance window task
-- types, see MaintenanceWindowTaskInvocationParameters.
--
-- 'serviceRoleArn', 'getMaintenanceWindowTaskResponse_serviceRoleArn' - The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) service role to use to publish Amazon Simple Notification Service
-- (Amazon SNS) notifications for maintenance window Run Command tasks.
--
-- 'taskInvocationParameters', 'getMaintenanceWindowTaskResponse_taskInvocationParameters' - The parameters to pass to the task when it runs.
--
-- 'windowTaskId', 'getMaintenanceWindowTaskResponse_windowTaskId' - The retrieved maintenance window task ID.
--
-- 'taskArn', 'getMaintenanceWindowTaskResponse_taskArn' - The resource that the task used during execution. For @RUN_COMMAND@ and
-- @AUTOMATION@ task types, the value of @TaskArn@ is the SSM document
-- name\/ARN. For @LAMBDA@ tasks, the value is the function name\/ARN. For
-- @STEP_FUNCTIONS@ tasks, the value is the state machine ARN.
--
-- 'windowId', 'getMaintenanceWindowTaskResponse_windowId' - The retrieved maintenance window ID.
--
-- 'targets', 'getMaintenanceWindowTaskResponse_targets' - The targets where the task should run.
--
-- 'description', 'getMaintenanceWindowTaskResponse_description' - The retrieved task description.
--
-- 'taskType', 'getMaintenanceWindowTaskResponse_taskType' - The type of task to run.
--
-- 'alarmConfiguration', 'getMaintenanceWindowTaskResponse_alarmConfiguration' - The details for the CloudWatch alarm you applied to your maintenance
-- window task.
--
-- 'priority', 'getMaintenanceWindowTaskResponse_priority' - The priority of the task when it runs. The lower the number, the higher
-- the priority. Tasks that have the same priority are scheduled in
-- parallel.
--
-- 'maxConcurrency', 'getMaintenanceWindowTaskResponse_maxConcurrency' - The maximum number of targets allowed to run this task in parallel.
--
-- For maintenance window tasks without a target specified, you can\'t
-- supply a value for this option. Instead, the system inserts a
-- placeholder value of @1@, which may be reported in the response to this
-- command. This value doesn\'t affect the running of your task and can be
-- ignored.
--
-- 'maxErrors', 'getMaintenanceWindowTaskResponse_maxErrors' - The maximum number of errors allowed before the task stops being
-- scheduled.
--
-- For maintenance window tasks without a target specified, you can\'t
-- supply a value for this option. Instead, the system inserts a
-- placeholder value of @1@, which may be reported in the response to this
-- command. This value doesn\'t affect the running of your task and can be
-- ignored.
--
-- 'loggingInfo', 'getMaintenanceWindowTaskResponse_loggingInfo' - The location in Amazon Simple Storage Service (Amazon S3) where the task
-- results are logged.
--
-- @LoggingInfo@ has been deprecated. To specify an Amazon Simple Storage
-- Service (Amazon S3) bucket to contain logs, instead use the
-- @OutputS3BucketName@ and @OutputS3KeyPrefix@ options in the
-- @TaskInvocationParameters@ structure. For information about how Amazon
-- Web Services Systems Manager handles these options for the supported
-- maintenance window task types, see
-- MaintenanceWindowTaskInvocationParameters.
--
-- 'cutoffBehavior', 'getMaintenanceWindowTaskResponse_cutoffBehavior' - The action to take on tasks when the maintenance window cutoff time is
-- reached. @CONTINUE_TASK@ means that tasks continue to run. For
-- Automation, Lambda, Step Functions tasks, @CANCEL_TASK@ means that
-- currently running task invocations continue, but no new task invocations
-- are started. For Run Command tasks, @CANCEL_TASK@ means the system
-- attempts to stop the task by sending a @CancelCommand@ operation.
--
-- 'httpStatus', 'getMaintenanceWindowTaskResponse_httpStatus' - The response's http status code.
newGetMaintenanceWindowTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMaintenanceWindowTaskResponse
newGetMaintenanceWindowTaskResponse pHttpStatus_ =
  GetMaintenanceWindowTaskResponse'
    { name =
        Prelude.Nothing,
      taskParameters = Prelude.Nothing,
      serviceRoleArn = Prelude.Nothing,
      taskInvocationParameters =
        Prelude.Nothing,
      windowTaskId = Prelude.Nothing,
      taskArn = Prelude.Nothing,
      windowId = Prelude.Nothing,
      targets = Prelude.Nothing,
      description = Prelude.Nothing,
      taskType = Prelude.Nothing,
      alarmConfiguration = Prelude.Nothing,
      priority = Prelude.Nothing,
      maxConcurrency = Prelude.Nothing,
      maxErrors = Prelude.Nothing,
      loggingInfo = Prelude.Nothing,
      cutoffBehavior = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The retrieved task name.
getMaintenanceWindowTaskResponse_name :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_name = Lens.lens (\GetMaintenanceWindowTaskResponse' {name} -> name) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {name = a} :: GetMaintenanceWindowTaskResponse)

-- | The parameters to pass to the task when it runs.
--
-- @TaskParameters@ has been deprecated. To specify parameters to pass to a
-- task when it runs, instead use the @Parameters@ option in the
-- @TaskInvocationParameters@ structure. For information about how Systems
-- Manager handles these options for the supported maintenance window task
-- types, see MaintenanceWindowTaskInvocationParameters.
getMaintenanceWindowTaskResponse_taskParameters :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text MaintenanceWindowTaskParameterValueExpression))
getMaintenanceWindowTaskResponse_taskParameters = Lens.lens (\GetMaintenanceWindowTaskResponse' {taskParameters} -> taskParameters) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {taskParameters = a} :: GetMaintenanceWindowTaskResponse) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) service role to use to publish Amazon Simple Notification Service
-- (Amazon SNS) notifications for maintenance window Run Command tasks.
getMaintenanceWindowTaskResponse_serviceRoleArn :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_serviceRoleArn = Lens.lens (\GetMaintenanceWindowTaskResponse' {serviceRoleArn} -> serviceRoleArn) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {serviceRoleArn = a} :: GetMaintenanceWindowTaskResponse)

-- | The parameters to pass to the task when it runs.
getMaintenanceWindowTaskResponse_taskInvocationParameters :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe MaintenanceWindowTaskInvocationParameters)
getMaintenanceWindowTaskResponse_taskInvocationParameters = Lens.lens (\GetMaintenanceWindowTaskResponse' {taskInvocationParameters} -> taskInvocationParameters) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {taskInvocationParameters = a} :: GetMaintenanceWindowTaskResponse)

-- | The retrieved maintenance window task ID.
getMaintenanceWindowTaskResponse_windowTaskId :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_windowTaskId = Lens.lens (\GetMaintenanceWindowTaskResponse' {windowTaskId} -> windowTaskId) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {windowTaskId = a} :: GetMaintenanceWindowTaskResponse)

-- | The resource that the task used during execution. For @RUN_COMMAND@ and
-- @AUTOMATION@ task types, the value of @TaskArn@ is the SSM document
-- name\/ARN. For @LAMBDA@ tasks, the value is the function name\/ARN. For
-- @STEP_FUNCTIONS@ tasks, the value is the state machine ARN.
getMaintenanceWindowTaskResponse_taskArn :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_taskArn = Lens.lens (\GetMaintenanceWindowTaskResponse' {taskArn} -> taskArn) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {taskArn = a} :: GetMaintenanceWindowTaskResponse)

-- | The retrieved maintenance window ID.
getMaintenanceWindowTaskResponse_windowId :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_windowId = Lens.lens (\GetMaintenanceWindowTaskResponse' {windowId} -> windowId) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {windowId = a} :: GetMaintenanceWindowTaskResponse)

-- | The targets where the task should run.
getMaintenanceWindowTaskResponse_targets :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe [Target])
getMaintenanceWindowTaskResponse_targets = Lens.lens (\GetMaintenanceWindowTaskResponse' {targets} -> targets) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {targets = a} :: GetMaintenanceWindowTaskResponse) Prelude.. Lens.mapping Lens.coerced

-- | The retrieved task description.
getMaintenanceWindowTaskResponse_description :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_description = Lens.lens (\GetMaintenanceWindowTaskResponse' {description} -> description) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {description = a} :: GetMaintenanceWindowTaskResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The type of task to run.
getMaintenanceWindowTaskResponse_taskType :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe MaintenanceWindowTaskType)
getMaintenanceWindowTaskResponse_taskType = Lens.lens (\GetMaintenanceWindowTaskResponse' {taskType} -> taskType) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {taskType = a} :: GetMaintenanceWindowTaskResponse)

-- | The details for the CloudWatch alarm you applied to your maintenance
-- window task.
getMaintenanceWindowTaskResponse_alarmConfiguration :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe AlarmConfiguration)
getMaintenanceWindowTaskResponse_alarmConfiguration = Lens.lens (\GetMaintenanceWindowTaskResponse' {alarmConfiguration} -> alarmConfiguration) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {alarmConfiguration = a} :: GetMaintenanceWindowTaskResponse)

-- | The priority of the task when it runs. The lower the number, the higher
-- the priority. Tasks that have the same priority are scheduled in
-- parallel.
getMaintenanceWindowTaskResponse_priority :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Natural)
getMaintenanceWindowTaskResponse_priority = Lens.lens (\GetMaintenanceWindowTaskResponse' {priority} -> priority) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {priority = a} :: GetMaintenanceWindowTaskResponse)

-- | The maximum number of targets allowed to run this task in parallel.
--
-- For maintenance window tasks without a target specified, you can\'t
-- supply a value for this option. Instead, the system inserts a
-- placeholder value of @1@, which may be reported in the response to this
-- command. This value doesn\'t affect the running of your task and can be
-- ignored.
getMaintenanceWindowTaskResponse_maxConcurrency :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_maxConcurrency = Lens.lens (\GetMaintenanceWindowTaskResponse' {maxConcurrency} -> maxConcurrency) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {maxConcurrency = a} :: GetMaintenanceWindowTaskResponse)

-- | The maximum number of errors allowed before the task stops being
-- scheduled.
--
-- For maintenance window tasks without a target specified, you can\'t
-- supply a value for this option. Instead, the system inserts a
-- placeholder value of @1@, which may be reported in the response to this
-- command. This value doesn\'t affect the running of your task and can be
-- ignored.
getMaintenanceWindowTaskResponse_maxErrors :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowTaskResponse_maxErrors = Lens.lens (\GetMaintenanceWindowTaskResponse' {maxErrors} -> maxErrors) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {maxErrors = a} :: GetMaintenanceWindowTaskResponse)

-- | The location in Amazon Simple Storage Service (Amazon S3) where the task
-- results are logged.
--
-- @LoggingInfo@ has been deprecated. To specify an Amazon Simple Storage
-- Service (Amazon S3) bucket to contain logs, instead use the
-- @OutputS3BucketName@ and @OutputS3KeyPrefix@ options in the
-- @TaskInvocationParameters@ structure. For information about how Amazon
-- Web Services Systems Manager handles these options for the supported
-- maintenance window task types, see
-- MaintenanceWindowTaskInvocationParameters.
getMaintenanceWindowTaskResponse_loggingInfo :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe LoggingInfo)
getMaintenanceWindowTaskResponse_loggingInfo = Lens.lens (\GetMaintenanceWindowTaskResponse' {loggingInfo} -> loggingInfo) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {loggingInfo = a} :: GetMaintenanceWindowTaskResponse)

-- | The action to take on tasks when the maintenance window cutoff time is
-- reached. @CONTINUE_TASK@ means that tasks continue to run. For
-- Automation, Lambda, Step Functions tasks, @CANCEL_TASK@ means that
-- currently running task invocations continue, but no new task invocations
-- are started. For Run Command tasks, @CANCEL_TASK@ means the system
-- attempts to stop the task by sending a @CancelCommand@ operation.
getMaintenanceWindowTaskResponse_cutoffBehavior :: Lens.Lens' GetMaintenanceWindowTaskResponse (Prelude.Maybe MaintenanceWindowTaskCutoffBehavior)
getMaintenanceWindowTaskResponse_cutoffBehavior = Lens.lens (\GetMaintenanceWindowTaskResponse' {cutoffBehavior} -> cutoffBehavior) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {cutoffBehavior = a} :: GetMaintenanceWindowTaskResponse)

-- | The response's http status code.
getMaintenanceWindowTaskResponse_httpStatus :: Lens.Lens' GetMaintenanceWindowTaskResponse Prelude.Int
getMaintenanceWindowTaskResponse_httpStatus = Lens.lens (\GetMaintenanceWindowTaskResponse' {httpStatus} -> httpStatus) (\s@GetMaintenanceWindowTaskResponse' {} a -> s {httpStatus = a} :: GetMaintenanceWindowTaskResponse)

instance
  Prelude.NFData
    GetMaintenanceWindowTaskResponse
  where
  rnf GetMaintenanceWindowTaskResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf taskParameters
      `Prelude.seq` Prelude.rnf serviceRoleArn
      `Prelude.seq` Prelude.rnf taskInvocationParameters
      `Prelude.seq` Prelude.rnf windowTaskId
      `Prelude.seq` Prelude.rnf taskArn
      `Prelude.seq` Prelude.rnf windowId
      `Prelude.seq` Prelude.rnf targets
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf taskType
      `Prelude.seq` Prelude.rnf alarmConfiguration
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf maxConcurrency
      `Prelude.seq` Prelude.rnf maxErrors
      `Prelude.seq` Prelude.rnf loggingInfo
      `Prelude.seq` Prelude.rnf cutoffBehavior
      `Prelude.seq` Prelude.rnf httpStatus

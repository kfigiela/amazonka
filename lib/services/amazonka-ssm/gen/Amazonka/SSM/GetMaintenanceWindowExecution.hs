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
-- Module      : Amazonka.SSM.GetMaintenanceWindowExecution
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a specific a maintenance window execution.
module Amazonka.SSM.GetMaintenanceWindowExecution
  ( -- * Creating a Request
    GetMaintenanceWindowExecution (..),
    newGetMaintenanceWindowExecution,

    -- * Request Lenses
    getMaintenanceWindowExecution_windowExecutionId,

    -- * Destructuring the Response
    GetMaintenanceWindowExecutionResponse (..),
    newGetMaintenanceWindowExecutionResponse,

    -- * Response Lenses
    getMaintenanceWindowExecutionResponse_windowExecutionId,
    getMaintenanceWindowExecutionResponse_statusDetails,
    getMaintenanceWindowExecutionResponse_status,
    getMaintenanceWindowExecutionResponse_endTime,
    getMaintenanceWindowExecutionResponse_taskIds,
    getMaintenanceWindowExecutionResponse_startTime,
    getMaintenanceWindowExecutionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newGetMaintenanceWindowExecution' smart constructor.
data GetMaintenanceWindowExecution = GetMaintenanceWindowExecution'
  { -- | The ID of the maintenance window execution that includes the task.
    windowExecutionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowExecutionId', 'getMaintenanceWindowExecution_windowExecutionId' - The ID of the maintenance window execution that includes the task.
newGetMaintenanceWindowExecution ::
  -- | 'windowExecutionId'
  Prelude.Text ->
  GetMaintenanceWindowExecution
newGetMaintenanceWindowExecution pWindowExecutionId_ =
  GetMaintenanceWindowExecution'
    { windowExecutionId =
        pWindowExecutionId_
    }

-- | The ID of the maintenance window execution that includes the task.
getMaintenanceWindowExecution_windowExecutionId :: Lens.Lens' GetMaintenanceWindowExecution Prelude.Text
getMaintenanceWindowExecution_windowExecutionId = Lens.lens (\GetMaintenanceWindowExecution' {windowExecutionId} -> windowExecutionId) (\s@GetMaintenanceWindowExecution' {} a -> s {windowExecutionId = a} :: GetMaintenanceWindowExecution)

instance
  Core.AWSRequest
    GetMaintenanceWindowExecution
  where
  type
    AWSResponse GetMaintenanceWindowExecution =
      GetMaintenanceWindowExecutionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionResponse'
            Prelude.<$> (x Core..?> "WindowExecutionId")
            Prelude.<*> (x Core..?> "StatusDetails")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "EndTime")
            Prelude.<*> (x Core..?> "TaskIds" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "StartTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetMaintenanceWindowExecution
  where
  hashWithSalt _salt GetMaintenanceWindowExecution' {..} =
    _salt `Prelude.hashWithSalt` windowExecutionId

instance Prelude.NFData GetMaintenanceWindowExecution where
  rnf GetMaintenanceWindowExecution' {..} =
    Prelude.rnf windowExecutionId

instance Core.ToHeaders GetMaintenanceWindowExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.GetMaintenanceWindowExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetMaintenanceWindowExecution where
  toJSON GetMaintenanceWindowExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("WindowExecutionId" Core..= windowExecutionId)
          ]
      )

instance Core.ToPath GetMaintenanceWindowExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery GetMaintenanceWindowExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMaintenanceWindowExecutionResponse' smart constructor.
data GetMaintenanceWindowExecutionResponse = GetMaintenanceWindowExecutionResponse'
  { -- | The ID of the maintenance window execution.
    windowExecutionId :: Prelude.Maybe Prelude.Text,
    -- | The details explaining the status. Not available for all status values.
    statusDetails :: Prelude.Maybe Prelude.Text,
    -- | The status of the maintenance window execution.
    status :: Prelude.Maybe MaintenanceWindowExecutionStatus,
    -- | The time the maintenance window finished running.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the task executions from the maintenance window execution.
    taskIds :: Prelude.Maybe [Prelude.Text],
    -- | The time the maintenance window started running.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowExecutionId', 'getMaintenanceWindowExecutionResponse_windowExecutionId' - The ID of the maintenance window execution.
--
-- 'statusDetails', 'getMaintenanceWindowExecutionResponse_statusDetails' - The details explaining the status. Not available for all status values.
--
-- 'status', 'getMaintenanceWindowExecutionResponse_status' - The status of the maintenance window execution.
--
-- 'endTime', 'getMaintenanceWindowExecutionResponse_endTime' - The time the maintenance window finished running.
--
-- 'taskIds', 'getMaintenanceWindowExecutionResponse_taskIds' - The ID of the task executions from the maintenance window execution.
--
-- 'startTime', 'getMaintenanceWindowExecutionResponse_startTime' - The time the maintenance window started running.
--
-- 'httpStatus', 'getMaintenanceWindowExecutionResponse_httpStatus' - The response's http status code.
newGetMaintenanceWindowExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMaintenanceWindowExecutionResponse
newGetMaintenanceWindowExecutionResponse pHttpStatus_ =
  GetMaintenanceWindowExecutionResponse'
    { windowExecutionId =
        Prelude.Nothing,
      statusDetails = Prelude.Nothing,
      status = Prelude.Nothing,
      endTime = Prelude.Nothing,
      taskIds = Prelude.Nothing,
      startTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the maintenance window execution.
getMaintenanceWindowExecutionResponse_windowExecutionId :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowExecutionResponse_windowExecutionId = Lens.lens (\GetMaintenanceWindowExecutionResponse' {windowExecutionId} -> windowExecutionId) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {windowExecutionId = a} :: GetMaintenanceWindowExecutionResponse)

-- | The details explaining the status. Not available for all status values.
getMaintenanceWindowExecutionResponse_statusDetails :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowExecutionResponse_statusDetails = Lens.lens (\GetMaintenanceWindowExecutionResponse' {statusDetails} -> statusDetails) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {statusDetails = a} :: GetMaintenanceWindowExecutionResponse)

-- | The status of the maintenance window execution.
getMaintenanceWindowExecutionResponse_status :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe MaintenanceWindowExecutionStatus)
getMaintenanceWindowExecutionResponse_status = Lens.lens (\GetMaintenanceWindowExecutionResponse' {status} -> status) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {status = a} :: GetMaintenanceWindowExecutionResponse)

-- | The time the maintenance window finished running.
getMaintenanceWindowExecutionResponse_endTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.UTCTime)
getMaintenanceWindowExecutionResponse_endTime = Lens.lens (\GetMaintenanceWindowExecutionResponse' {endTime} -> endTime) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {endTime = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Core._Time

-- | The ID of the task executions from the maintenance window execution.
getMaintenanceWindowExecutionResponse_taskIds :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe [Prelude.Text])
getMaintenanceWindowExecutionResponse_taskIds = Lens.lens (\GetMaintenanceWindowExecutionResponse' {taskIds} -> taskIds) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {taskIds = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The time the maintenance window started running.
getMaintenanceWindowExecutionResponse_startTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.UTCTime)
getMaintenanceWindowExecutionResponse_startTime = Lens.lens (\GetMaintenanceWindowExecutionResponse' {startTime} -> startTime) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {startTime = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getMaintenanceWindowExecutionResponse_httpStatus :: Lens.Lens' GetMaintenanceWindowExecutionResponse Prelude.Int
getMaintenanceWindowExecutionResponse_httpStatus = Lens.lens (\GetMaintenanceWindowExecutionResponse' {httpStatus} -> httpStatus) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {httpStatus = a} :: GetMaintenanceWindowExecutionResponse)

instance
  Prelude.NFData
    GetMaintenanceWindowExecutionResponse
  where
  rnf GetMaintenanceWindowExecutionResponse' {..} =
    Prelude.rnf windowExecutionId
      `Prelude.seq` Prelude.rnf statusDetails
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf taskIds
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf httpStatus

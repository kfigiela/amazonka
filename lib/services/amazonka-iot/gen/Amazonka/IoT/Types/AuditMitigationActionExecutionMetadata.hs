{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoT.Types.AuditMitigationActionExecutionMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.AuditMitigationActionExecutionMetadata where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types.AuditMitigationActionsExecutionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returned by ListAuditMitigationActionsTask, this object contains
-- information that describes a mitigation action that has been started.
--
-- /See:/ 'newAuditMitigationActionExecutionMetadata' smart constructor.
data AuditMitigationActionExecutionMetadata = AuditMitigationActionExecutionMetadata'
  { -- | The current status of the task being executed.
    status :: Prelude.Maybe AuditMitigationActionsExecutionStatus,
    -- | The date and time when the task was started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The unique identifier for the task that applies the mitigation action.
    taskId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the mitigation action being applied by the
    -- task.
    actionId :: Prelude.Maybe Prelude.Text,
    -- | The friendly name of the mitigation action being applied by the task.
    actionName :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the task was completed or canceled. Blank if the
    -- task is still running.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | If an error occurred, the code that indicates which type of error
    -- occurred.
    errorCode :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the findings to which the task and associated
    -- mitigation action are applied.
    findingId :: Prelude.Maybe Prelude.Text,
    -- | If an error occurred, a message that describes the error.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuditMitigationActionExecutionMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'auditMitigationActionExecutionMetadata_status' - The current status of the task being executed.
--
-- 'startTime', 'auditMitigationActionExecutionMetadata_startTime' - The date and time when the task was started.
--
-- 'taskId', 'auditMitigationActionExecutionMetadata_taskId' - The unique identifier for the task that applies the mitigation action.
--
-- 'actionId', 'auditMitigationActionExecutionMetadata_actionId' - The unique identifier for the mitigation action being applied by the
-- task.
--
-- 'actionName', 'auditMitigationActionExecutionMetadata_actionName' - The friendly name of the mitigation action being applied by the task.
--
-- 'endTime', 'auditMitigationActionExecutionMetadata_endTime' - The date and time when the task was completed or canceled. Blank if the
-- task is still running.
--
-- 'errorCode', 'auditMitigationActionExecutionMetadata_errorCode' - If an error occurred, the code that indicates which type of error
-- occurred.
--
-- 'findingId', 'auditMitigationActionExecutionMetadata_findingId' - The unique identifier for the findings to which the task and associated
-- mitigation action are applied.
--
-- 'message', 'auditMitigationActionExecutionMetadata_message' - If an error occurred, a message that describes the error.
newAuditMitigationActionExecutionMetadata ::
  AuditMitigationActionExecutionMetadata
newAuditMitigationActionExecutionMetadata =
  AuditMitigationActionExecutionMetadata'
    { status =
        Prelude.Nothing,
      startTime = Prelude.Nothing,
      taskId = Prelude.Nothing,
      actionId = Prelude.Nothing,
      actionName = Prelude.Nothing,
      endTime = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      findingId = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | The current status of the task being executed.
auditMitigationActionExecutionMetadata_status :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe AuditMitigationActionsExecutionStatus)
auditMitigationActionExecutionMetadata_status = Lens.lens (\AuditMitigationActionExecutionMetadata' {status} -> status) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {status = a} :: AuditMitigationActionExecutionMetadata)

-- | The date and time when the task was started.
auditMitigationActionExecutionMetadata_startTime :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.UTCTime)
auditMitigationActionExecutionMetadata_startTime = Lens.lens (\AuditMitigationActionExecutionMetadata' {startTime} -> startTime) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {startTime = a} :: AuditMitigationActionExecutionMetadata) Prelude.. Lens.mapping Core._Time

-- | The unique identifier for the task that applies the mitigation action.
auditMitigationActionExecutionMetadata_taskId :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_taskId = Lens.lens (\AuditMitigationActionExecutionMetadata' {taskId} -> taskId) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {taskId = a} :: AuditMitigationActionExecutionMetadata)

-- | The unique identifier for the mitigation action being applied by the
-- task.
auditMitigationActionExecutionMetadata_actionId :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_actionId = Lens.lens (\AuditMitigationActionExecutionMetadata' {actionId} -> actionId) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {actionId = a} :: AuditMitigationActionExecutionMetadata)

-- | The friendly name of the mitigation action being applied by the task.
auditMitigationActionExecutionMetadata_actionName :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_actionName = Lens.lens (\AuditMitigationActionExecutionMetadata' {actionName} -> actionName) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {actionName = a} :: AuditMitigationActionExecutionMetadata)

-- | The date and time when the task was completed or canceled. Blank if the
-- task is still running.
auditMitigationActionExecutionMetadata_endTime :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.UTCTime)
auditMitigationActionExecutionMetadata_endTime = Lens.lens (\AuditMitigationActionExecutionMetadata' {endTime} -> endTime) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {endTime = a} :: AuditMitigationActionExecutionMetadata) Prelude.. Lens.mapping Core._Time

-- | If an error occurred, the code that indicates which type of error
-- occurred.
auditMitigationActionExecutionMetadata_errorCode :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_errorCode = Lens.lens (\AuditMitigationActionExecutionMetadata' {errorCode} -> errorCode) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {errorCode = a} :: AuditMitigationActionExecutionMetadata)

-- | The unique identifier for the findings to which the task and associated
-- mitigation action are applied.
auditMitigationActionExecutionMetadata_findingId :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_findingId = Lens.lens (\AuditMitigationActionExecutionMetadata' {findingId} -> findingId) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {findingId = a} :: AuditMitigationActionExecutionMetadata)

-- | If an error occurred, a message that describes the error.
auditMitigationActionExecutionMetadata_message :: Lens.Lens' AuditMitigationActionExecutionMetadata (Prelude.Maybe Prelude.Text)
auditMitigationActionExecutionMetadata_message = Lens.lens (\AuditMitigationActionExecutionMetadata' {message} -> message) (\s@AuditMitigationActionExecutionMetadata' {} a -> s {message = a} :: AuditMitigationActionExecutionMetadata)

instance
  Core.FromJSON
    AuditMitigationActionExecutionMetadata
  where
  parseJSON =
    Core.withObject
      "AuditMitigationActionExecutionMetadata"
      ( \x ->
          AuditMitigationActionExecutionMetadata'
            Prelude.<$> (x Core..:? "status")
            Prelude.<*> (x Core..:? "startTime")
            Prelude.<*> (x Core..:? "taskId")
            Prelude.<*> (x Core..:? "actionId")
            Prelude.<*> (x Core..:? "actionName")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "errorCode")
            Prelude.<*> (x Core..:? "findingId")
            Prelude.<*> (x Core..:? "message")
      )

instance
  Prelude.Hashable
    AuditMitigationActionExecutionMetadata
  where
  hashWithSalt
    _salt
    AuditMitigationActionExecutionMetadata' {..} =
      _salt `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` startTime
        `Prelude.hashWithSalt` taskId
        `Prelude.hashWithSalt` actionId
        `Prelude.hashWithSalt` actionName
        `Prelude.hashWithSalt` endTime
        `Prelude.hashWithSalt` errorCode
        `Prelude.hashWithSalt` findingId
        `Prelude.hashWithSalt` message

instance
  Prelude.NFData
    AuditMitigationActionExecutionMetadata
  where
  rnf AuditMitigationActionExecutionMetadata' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf taskId
      `Prelude.seq` Prelude.rnf actionId
      `Prelude.seq` Prelude.rnf actionName
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf findingId
      `Prelude.seq` Prelude.rnf message

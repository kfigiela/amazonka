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
-- Module      : Amazonka.IoTEvents.UpdateAlarmModel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an alarm model. Any alarms that were created based on the
-- previous version are deleted and then created again as new data arrives.
module Amazonka.IoTEvents.UpdateAlarmModel
  ( -- * Creating a Request
    UpdateAlarmModel (..),
    newUpdateAlarmModel,

    -- * Request Lenses
    updateAlarmModel_severity,
    updateAlarmModel_alarmEventActions,
    updateAlarmModel_alarmCapabilities,
    updateAlarmModel_alarmModelDescription,
    updateAlarmModel_alarmNotification,
    updateAlarmModel_alarmModelName,
    updateAlarmModel_roleArn,
    updateAlarmModel_alarmRule,

    -- * Destructuring the Response
    UpdateAlarmModelResponse (..),
    newUpdateAlarmModelResponse,

    -- * Response Lenses
    updateAlarmModelResponse_alarmModelVersion,
    updateAlarmModelResponse_alarmModelArn,
    updateAlarmModelResponse_status,
    updateAlarmModelResponse_creationTime,
    updateAlarmModelResponse_lastUpdateTime,
    updateAlarmModelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTEvents.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAlarmModel' smart constructor.
data UpdateAlarmModel = UpdateAlarmModel'
  { -- | A non-negative integer that reflects the severity level of the alarm.
    severity :: Prelude.Maybe Prelude.Natural,
    -- | Contains information about one or more alarm actions.
    alarmEventActions :: Prelude.Maybe AlarmEventActions,
    -- | Contains the configuration information of alarm state changes.
    alarmCapabilities :: Prelude.Maybe AlarmCapabilities,
    -- | The description of the alarm model.
    alarmModelDescription :: Prelude.Maybe Prelude.Text,
    -- | Contains information about one or more notification actions.
    alarmNotification :: Prelude.Maybe AlarmNotification,
    -- | The name of the alarm model.
    alarmModelName :: Prelude.Text,
    -- | The ARN of the IAM role that allows the alarm to perform actions and
    -- access AWS resources. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    roleArn :: Prelude.Text,
    -- | Defines when your alarm is invoked.
    alarmRule :: AlarmRule
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAlarmModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severity', 'updateAlarmModel_severity' - A non-negative integer that reflects the severity level of the alarm.
--
-- 'alarmEventActions', 'updateAlarmModel_alarmEventActions' - Contains information about one or more alarm actions.
--
-- 'alarmCapabilities', 'updateAlarmModel_alarmCapabilities' - Contains the configuration information of alarm state changes.
--
-- 'alarmModelDescription', 'updateAlarmModel_alarmModelDescription' - The description of the alarm model.
--
-- 'alarmNotification', 'updateAlarmModel_alarmNotification' - Contains information about one or more notification actions.
--
-- 'alarmModelName', 'updateAlarmModel_alarmModelName' - The name of the alarm model.
--
-- 'roleArn', 'updateAlarmModel_roleArn' - The ARN of the IAM role that allows the alarm to perform actions and
-- access AWS resources. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'alarmRule', 'updateAlarmModel_alarmRule' - Defines when your alarm is invoked.
newUpdateAlarmModel ::
  -- | 'alarmModelName'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'alarmRule'
  AlarmRule ->
  UpdateAlarmModel
newUpdateAlarmModel
  pAlarmModelName_
  pRoleArn_
  pAlarmRule_ =
    UpdateAlarmModel'
      { severity = Prelude.Nothing,
        alarmEventActions = Prelude.Nothing,
        alarmCapabilities = Prelude.Nothing,
        alarmModelDescription = Prelude.Nothing,
        alarmNotification = Prelude.Nothing,
        alarmModelName = pAlarmModelName_,
        roleArn = pRoleArn_,
        alarmRule = pAlarmRule_
      }

-- | A non-negative integer that reflects the severity level of the alarm.
updateAlarmModel_severity :: Lens.Lens' UpdateAlarmModel (Prelude.Maybe Prelude.Natural)
updateAlarmModel_severity = Lens.lens (\UpdateAlarmModel' {severity} -> severity) (\s@UpdateAlarmModel' {} a -> s {severity = a} :: UpdateAlarmModel)

-- | Contains information about one or more alarm actions.
updateAlarmModel_alarmEventActions :: Lens.Lens' UpdateAlarmModel (Prelude.Maybe AlarmEventActions)
updateAlarmModel_alarmEventActions = Lens.lens (\UpdateAlarmModel' {alarmEventActions} -> alarmEventActions) (\s@UpdateAlarmModel' {} a -> s {alarmEventActions = a} :: UpdateAlarmModel)

-- | Contains the configuration information of alarm state changes.
updateAlarmModel_alarmCapabilities :: Lens.Lens' UpdateAlarmModel (Prelude.Maybe AlarmCapabilities)
updateAlarmModel_alarmCapabilities = Lens.lens (\UpdateAlarmModel' {alarmCapabilities} -> alarmCapabilities) (\s@UpdateAlarmModel' {} a -> s {alarmCapabilities = a} :: UpdateAlarmModel)

-- | The description of the alarm model.
updateAlarmModel_alarmModelDescription :: Lens.Lens' UpdateAlarmModel (Prelude.Maybe Prelude.Text)
updateAlarmModel_alarmModelDescription = Lens.lens (\UpdateAlarmModel' {alarmModelDescription} -> alarmModelDescription) (\s@UpdateAlarmModel' {} a -> s {alarmModelDescription = a} :: UpdateAlarmModel)

-- | Contains information about one or more notification actions.
updateAlarmModel_alarmNotification :: Lens.Lens' UpdateAlarmModel (Prelude.Maybe AlarmNotification)
updateAlarmModel_alarmNotification = Lens.lens (\UpdateAlarmModel' {alarmNotification} -> alarmNotification) (\s@UpdateAlarmModel' {} a -> s {alarmNotification = a} :: UpdateAlarmModel)

-- | The name of the alarm model.
updateAlarmModel_alarmModelName :: Lens.Lens' UpdateAlarmModel Prelude.Text
updateAlarmModel_alarmModelName = Lens.lens (\UpdateAlarmModel' {alarmModelName} -> alarmModelName) (\s@UpdateAlarmModel' {} a -> s {alarmModelName = a} :: UpdateAlarmModel)

-- | The ARN of the IAM role that allows the alarm to perform actions and
-- access AWS resources. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
updateAlarmModel_roleArn :: Lens.Lens' UpdateAlarmModel Prelude.Text
updateAlarmModel_roleArn = Lens.lens (\UpdateAlarmModel' {roleArn} -> roleArn) (\s@UpdateAlarmModel' {} a -> s {roleArn = a} :: UpdateAlarmModel)

-- | Defines when your alarm is invoked.
updateAlarmModel_alarmRule :: Lens.Lens' UpdateAlarmModel AlarmRule
updateAlarmModel_alarmRule = Lens.lens (\UpdateAlarmModel' {alarmRule} -> alarmRule) (\s@UpdateAlarmModel' {} a -> s {alarmRule = a} :: UpdateAlarmModel)

instance Core.AWSRequest UpdateAlarmModel where
  type
    AWSResponse UpdateAlarmModel =
      UpdateAlarmModelResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAlarmModelResponse'
            Prelude.<$> (x Core..?> "alarmModelVersion")
            Prelude.<*> (x Core..?> "alarmModelArn")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "lastUpdateTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAlarmModel where
  hashWithSalt _salt UpdateAlarmModel' {..} =
    _salt `Prelude.hashWithSalt` severity
      `Prelude.hashWithSalt` alarmEventActions
      `Prelude.hashWithSalt` alarmCapabilities
      `Prelude.hashWithSalt` alarmModelDescription
      `Prelude.hashWithSalt` alarmNotification
      `Prelude.hashWithSalt` alarmModelName
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` alarmRule

instance Prelude.NFData UpdateAlarmModel where
  rnf UpdateAlarmModel' {..} =
    Prelude.rnf severity
      `Prelude.seq` Prelude.rnf alarmEventActions
      `Prelude.seq` Prelude.rnf alarmCapabilities
      `Prelude.seq` Prelude.rnf alarmModelDescription
      `Prelude.seq` Prelude.rnf alarmNotification
      `Prelude.seq` Prelude.rnf alarmModelName
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf alarmRule

instance Core.ToHeaders UpdateAlarmModel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateAlarmModel where
  toJSON UpdateAlarmModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("severity" Core..=) Prelude.<$> severity,
            ("alarmEventActions" Core..=)
              Prelude.<$> alarmEventActions,
            ("alarmCapabilities" Core..=)
              Prelude.<$> alarmCapabilities,
            ("alarmModelDescription" Core..=)
              Prelude.<$> alarmModelDescription,
            ("alarmNotification" Core..=)
              Prelude.<$> alarmNotification,
            Prelude.Just ("roleArn" Core..= roleArn),
            Prelude.Just ("alarmRule" Core..= alarmRule)
          ]
      )

instance Core.ToPath UpdateAlarmModel where
  toPath UpdateAlarmModel' {..} =
    Prelude.mconcat
      ["/alarm-models/", Core.toBS alarmModelName]

instance Core.ToQuery UpdateAlarmModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAlarmModelResponse' smart constructor.
data UpdateAlarmModelResponse = UpdateAlarmModelResponse'
  { -- | The version of the alarm model.
    alarmModelVersion :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the alarm model. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    alarmModelArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the alarm model. The status can be one of the following
    -- values:
    --
    -- -   @ACTIVE@ - The alarm model is active and it\'s ready to evaluate
    --     data.
    --
    -- -   @ACTIVATING@ - AWS IoT Events is activating your alarm model.
    --     Activating an alarm model can take up to a few minutes.
    --
    -- -   @INACTIVE@ - The alarm model is inactive, so it isn\'t ready to
    --     evaluate data. Check your alarm model information and update the
    --     alarm model.
    --
    -- -   @FAILED@ - You couldn\'t create or update the alarm model. Check
    --     your alarm model information and try again.
    status :: Prelude.Maybe AlarmModelVersionStatus,
    -- | The time the alarm model was created, in the Unix epoch format.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The time the alarm model was last updated, in the Unix epoch format.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAlarmModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmModelVersion', 'updateAlarmModelResponse_alarmModelVersion' - The version of the alarm model.
--
-- 'alarmModelArn', 'updateAlarmModelResponse_alarmModelArn' - The ARN of the alarm model. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'status', 'updateAlarmModelResponse_status' - The status of the alarm model. The status can be one of the following
-- values:
--
-- -   @ACTIVE@ - The alarm model is active and it\'s ready to evaluate
--     data.
--
-- -   @ACTIVATING@ - AWS IoT Events is activating your alarm model.
--     Activating an alarm model can take up to a few minutes.
--
-- -   @INACTIVE@ - The alarm model is inactive, so it isn\'t ready to
--     evaluate data. Check your alarm model information and update the
--     alarm model.
--
-- -   @FAILED@ - You couldn\'t create or update the alarm model. Check
--     your alarm model information and try again.
--
-- 'creationTime', 'updateAlarmModelResponse_creationTime' - The time the alarm model was created, in the Unix epoch format.
--
-- 'lastUpdateTime', 'updateAlarmModelResponse_lastUpdateTime' - The time the alarm model was last updated, in the Unix epoch format.
--
-- 'httpStatus', 'updateAlarmModelResponse_httpStatus' - The response's http status code.
newUpdateAlarmModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAlarmModelResponse
newUpdateAlarmModelResponse pHttpStatus_ =
  UpdateAlarmModelResponse'
    { alarmModelVersion =
        Prelude.Nothing,
      alarmModelArn = Prelude.Nothing,
      status = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The version of the alarm model.
updateAlarmModelResponse_alarmModelVersion :: Lens.Lens' UpdateAlarmModelResponse (Prelude.Maybe Prelude.Text)
updateAlarmModelResponse_alarmModelVersion = Lens.lens (\UpdateAlarmModelResponse' {alarmModelVersion} -> alarmModelVersion) (\s@UpdateAlarmModelResponse' {} a -> s {alarmModelVersion = a} :: UpdateAlarmModelResponse)

-- | The ARN of the alarm model. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
updateAlarmModelResponse_alarmModelArn :: Lens.Lens' UpdateAlarmModelResponse (Prelude.Maybe Prelude.Text)
updateAlarmModelResponse_alarmModelArn = Lens.lens (\UpdateAlarmModelResponse' {alarmModelArn} -> alarmModelArn) (\s@UpdateAlarmModelResponse' {} a -> s {alarmModelArn = a} :: UpdateAlarmModelResponse)

-- | The status of the alarm model. The status can be one of the following
-- values:
--
-- -   @ACTIVE@ - The alarm model is active and it\'s ready to evaluate
--     data.
--
-- -   @ACTIVATING@ - AWS IoT Events is activating your alarm model.
--     Activating an alarm model can take up to a few minutes.
--
-- -   @INACTIVE@ - The alarm model is inactive, so it isn\'t ready to
--     evaluate data. Check your alarm model information and update the
--     alarm model.
--
-- -   @FAILED@ - You couldn\'t create or update the alarm model. Check
--     your alarm model information and try again.
updateAlarmModelResponse_status :: Lens.Lens' UpdateAlarmModelResponse (Prelude.Maybe AlarmModelVersionStatus)
updateAlarmModelResponse_status = Lens.lens (\UpdateAlarmModelResponse' {status} -> status) (\s@UpdateAlarmModelResponse' {} a -> s {status = a} :: UpdateAlarmModelResponse)

-- | The time the alarm model was created, in the Unix epoch format.
updateAlarmModelResponse_creationTime :: Lens.Lens' UpdateAlarmModelResponse (Prelude.Maybe Prelude.UTCTime)
updateAlarmModelResponse_creationTime = Lens.lens (\UpdateAlarmModelResponse' {creationTime} -> creationTime) (\s@UpdateAlarmModelResponse' {} a -> s {creationTime = a} :: UpdateAlarmModelResponse) Prelude.. Lens.mapping Core._Time

-- | The time the alarm model was last updated, in the Unix epoch format.
updateAlarmModelResponse_lastUpdateTime :: Lens.Lens' UpdateAlarmModelResponse (Prelude.Maybe Prelude.UTCTime)
updateAlarmModelResponse_lastUpdateTime = Lens.lens (\UpdateAlarmModelResponse' {lastUpdateTime} -> lastUpdateTime) (\s@UpdateAlarmModelResponse' {} a -> s {lastUpdateTime = a} :: UpdateAlarmModelResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
updateAlarmModelResponse_httpStatus :: Lens.Lens' UpdateAlarmModelResponse Prelude.Int
updateAlarmModelResponse_httpStatus = Lens.lens (\UpdateAlarmModelResponse' {httpStatus} -> httpStatus) (\s@UpdateAlarmModelResponse' {} a -> s {httpStatus = a} :: UpdateAlarmModelResponse)

instance Prelude.NFData UpdateAlarmModelResponse where
  rnf UpdateAlarmModelResponse' {..} =
    Prelude.rnf alarmModelVersion
      `Prelude.seq` Prelude.rnf alarmModelArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf lastUpdateTime
      `Prelude.seq` Prelude.rnf httpStatus

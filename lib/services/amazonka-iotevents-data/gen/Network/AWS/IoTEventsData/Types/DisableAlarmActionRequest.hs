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
-- Module      : Network.AWS.IoTEventsData.Types.DisableAlarmActionRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.DisableAlarmActionRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information used to disable the alarm.
--
-- /See:/ 'newDisableAlarmActionRequest' smart constructor.
data DisableAlarmActionRequest = DisableAlarmActionRequest'
  { -- | The value of the key used as a filter to select only the alarms
    -- associated with the
    -- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
    keyValue :: Prelude.Maybe Prelude.Text,
    -- | The note that you can leave when you disable the alarm.
    note :: Prelude.Maybe Prelude.Text,
    -- | The request ID. Each ID must be unique within each batch.
    requestId :: Prelude.Text,
    -- | The name of the alarm model.
    alarmModelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableAlarmActionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyValue', 'disableAlarmActionRequest_keyValue' - The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
--
-- 'note', 'disableAlarmActionRequest_note' - The note that you can leave when you disable the alarm.
--
-- 'requestId', 'disableAlarmActionRequest_requestId' - The request ID. Each ID must be unique within each batch.
--
-- 'alarmModelName', 'disableAlarmActionRequest_alarmModelName' - The name of the alarm model.
newDisableAlarmActionRequest ::
  -- | 'requestId'
  Prelude.Text ->
  -- | 'alarmModelName'
  Prelude.Text ->
  DisableAlarmActionRequest
newDisableAlarmActionRequest
  pRequestId_
  pAlarmModelName_ =
    DisableAlarmActionRequest'
      { keyValue =
          Prelude.Nothing,
        note = Prelude.Nothing,
        requestId = pRequestId_,
        alarmModelName = pAlarmModelName_
      }

-- | The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
disableAlarmActionRequest_keyValue :: Lens.Lens' DisableAlarmActionRequest (Prelude.Maybe Prelude.Text)
disableAlarmActionRequest_keyValue = Lens.lens (\DisableAlarmActionRequest' {keyValue} -> keyValue) (\s@DisableAlarmActionRequest' {} a -> s {keyValue = a} :: DisableAlarmActionRequest)

-- | The note that you can leave when you disable the alarm.
disableAlarmActionRequest_note :: Lens.Lens' DisableAlarmActionRequest (Prelude.Maybe Prelude.Text)
disableAlarmActionRequest_note = Lens.lens (\DisableAlarmActionRequest' {note} -> note) (\s@DisableAlarmActionRequest' {} a -> s {note = a} :: DisableAlarmActionRequest)

-- | The request ID. Each ID must be unique within each batch.
disableAlarmActionRequest_requestId :: Lens.Lens' DisableAlarmActionRequest Prelude.Text
disableAlarmActionRequest_requestId = Lens.lens (\DisableAlarmActionRequest' {requestId} -> requestId) (\s@DisableAlarmActionRequest' {} a -> s {requestId = a} :: DisableAlarmActionRequest)

-- | The name of the alarm model.
disableAlarmActionRequest_alarmModelName :: Lens.Lens' DisableAlarmActionRequest Prelude.Text
disableAlarmActionRequest_alarmModelName = Lens.lens (\DisableAlarmActionRequest' {alarmModelName} -> alarmModelName) (\s@DisableAlarmActionRequest' {} a -> s {alarmModelName = a} :: DisableAlarmActionRequest)

instance Prelude.Hashable DisableAlarmActionRequest

instance Prelude.NFData DisableAlarmActionRequest

instance Core.ToJSON DisableAlarmActionRequest where
  toJSON DisableAlarmActionRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("keyValue" Core..=) Prelude.<$> keyValue,
            ("note" Core..=) Prelude.<$> note,
            Prelude.Just ("requestId" Core..= requestId),
            Prelude.Just
              ("alarmModelName" Core..= alarmModelName)
          ]
      )

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
-- Module      : Amazonka.AutoScaling.PutScheduledUpdateGroupAction
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a scheduled scaling action for an Auto Scaling group.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html Scheduled scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- You can view the scheduled actions for an Auto Scaling group using the
-- DescribeScheduledActions API call. If you are no longer using a
-- scheduled action, you can delete it by calling the DeleteScheduledAction
-- API.
--
-- If you try to schedule your action in the past, Amazon EC2 Auto Scaling
-- returns an error message.
module Amazonka.AutoScaling.PutScheduledUpdateGroupAction
  ( -- * Creating a Request
    PutScheduledUpdateGroupAction (..),
    newPutScheduledUpdateGroupAction,

    -- * Request Lenses
    putScheduledUpdateGroupAction_timeZone,
    putScheduledUpdateGroupAction_time,
    putScheduledUpdateGroupAction_endTime,
    putScheduledUpdateGroupAction_minSize,
    putScheduledUpdateGroupAction_recurrence,
    putScheduledUpdateGroupAction_maxSize,
    putScheduledUpdateGroupAction_desiredCapacity,
    putScheduledUpdateGroupAction_startTime,
    putScheduledUpdateGroupAction_autoScalingGroupName,
    putScheduledUpdateGroupAction_scheduledActionName,

    -- * Destructuring the Response
    PutScheduledUpdateGroupActionResponse (..),
    newPutScheduledUpdateGroupActionResponse,
  )
where

import Amazonka.AutoScaling.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutScheduledUpdateGroupAction' smart constructor.
data PutScheduledUpdateGroupAction = PutScheduledUpdateGroupAction'
  { -- | Specifies the time zone for a cron expression. If a time zone is not
    -- provided, UTC is used by default.
    --
    -- Valid values are the canonical names of the IANA time zones, derived
    -- from the IANA Time Zone Database (such as @Etc\/GMT+9@ or
    -- @Pacific\/Tahiti@). For more information, see
    -- <https://en.wikipedia.org/wiki/List_of_tz_database_time_zones>.
    timeZone :: Prelude.Maybe Prelude.Text,
    -- | This property is no longer used.
    time :: Prelude.Maybe Core.ISO8601,
    -- | The date and time for the recurring schedule to end, in UTC. For
    -- example, @\"2021-06-01T00:00:00Z\"@.
    endTime :: Prelude.Maybe Core.ISO8601,
    -- | The minimum size of the Auto Scaling group.
    minSize :: Prelude.Maybe Prelude.Int,
    -- | The recurring schedule for this action. This format consists of five
    -- fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
    -- [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example,
    -- @\"30 0 1 1,6,12 *\"@). For more information about this format, see
    -- <http://crontab.org Crontab>.
    --
    -- When @StartTime@ and @EndTime@ are specified with @Recurrence@, they
    -- form the boundaries of when the recurring action starts and stops.
    --
    -- Cron expressions use Universal Coordinated Time (UTC) by default.
    recurrence :: Prelude.Maybe Prelude.Text,
    -- | The maximum size of the Auto Scaling group.
    maxSize :: Prelude.Maybe Prelude.Int,
    -- | The desired capacity is the initial capacity of the Auto Scaling group
    -- after the scheduled action runs and the capacity it attempts to
    -- maintain. It can scale beyond this capacity if you add more scaling
    -- conditions.
    --
    -- You must specify at least one of the following properties: @MaxSize@,
    -- @MinSize@, or @DesiredCapacity@.
    desiredCapacity :: Prelude.Maybe Prelude.Int,
    -- | The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
    -- format in UTC\/GMT only and in quotes (for example,
    -- @\"2021-06-01T00:00:00Z\"@).
    --
    -- If you specify @Recurrence@ and @StartTime@, Amazon EC2 Auto Scaling
    -- performs the action at this time, and then performs the action based on
    -- the specified recurrence.
    startTime :: Prelude.Maybe Core.ISO8601,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Prelude.Text,
    -- | The name of this scaling action.
    scheduledActionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutScheduledUpdateGroupAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeZone', 'putScheduledUpdateGroupAction_timeZone' - Specifies the time zone for a cron expression. If a time zone is not
-- provided, UTC is used by default.
--
-- Valid values are the canonical names of the IANA time zones, derived
-- from the IANA Time Zone Database (such as @Etc\/GMT+9@ or
-- @Pacific\/Tahiti@). For more information, see
-- <https://en.wikipedia.org/wiki/List_of_tz_database_time_zones>.
--
-- 'time', 'putScheduledUpdateGroupAction_time' - This property is no longer used.
--
-- 'endTime', 'putScheduledUpdateGroupAction_endTime' - The date and time for the recurring schedule to end, in UTC. For
-- example, @\"2021-06-01T00:00:00Z\"@.
--
-- 'minSize', 'putScheduledUpdateGroupAction_minSize' - The minimum size of the Auto Scaling group.
--
-- 'recurrence', 'putScheduledUpdateGroupAction_recurrence' - The recurring schedule for this action. This format consists of five
-- fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
-- [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example,
-- @\"30 0 1 1,6,12 *\"@). For more information about this format, see
-- <http://crontab.org Crontab>.
--
-- When @StartTime@ and @EndTime@ are specified with @Recurrence@, they
-- form the boundaries of when the recurring action starts and stops.
--
-- Cron expressions use Universal Coordinated Time (UTC) by default.
--
-- 'maxSize', 'putScheduledUpdateGroupAction_maxSize' - The maximum size of the Auto Scaling group.
--
-- 'desiredCapacity', 'putScheduledUpdateGroupAction_desiredCapacity' - The desired capacity is the initial capacity of the Auto Scaling group
-- after the scheduled action runs and the capacity it attempts to
-- maintain. It can scale beyond this capacity if you add more scaling
-- conditions.
--
-- You must specify at least one of the following properties: @MaxSize@,
-- @MinSize@, or @DesiredCapacity@.
--
-- 'startTime', 'putScheduledUpdateGroupAction_startTime' - The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
-- format in UTC\/GMT only and in quotes (for example,
-- @\"2021-06-01T00:00:00Z\"@).
--
-- If you specify @Recurrence@ and @StartTime@, Amazon EC2 Auto Scaling
-- performs the action at this time, and then performs the action based on
-- the specified recurrence.
--
-- 'autoScalingGroupName', 'putScheduledUpdateGroupAction_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'scheduledActionName', 'putScheduledUpdateGroupAction_scheduledActionName' - The name of this scaling action.
newPutScheduledUpdateGroupAction ::
  -- | 'autoScalingGroupName'
  Prelude.Text ->
  -- | 'scheduledActionName'
  Prelude.Text ->
  PutScheduledUpdateGroupAction
newPutScheduledUpdateGroupAction
  pAutoScalingGroupName_
  pScheduledActionName_ =
    PutScheduledUpdateGroupAction'
      { timeZone =
          Prelude.Nothing,
        time = Prelude.Nothing,
        endTime = Prelude.Nothing,
        minSize = Prelude.Nothing,
        recurrence = Prelude.Nothing,
        maxSize = Prelude.Nothing,
        desiredCapacity = Prelude.Nothing,
        startTime = Prelude.Nothing,
        autoScalingGroupName =
          pAutoScalingGroupName_,
        scheduledActionName = pScheduledActionName_
      }

-- | Specifies the time zone for a cron expression. If a time zone is not
-- provided, UTC is used by default.
--
-- Valid values are the canonical names of the IANA time zones, derived
-- from the IANA Time Zone Database (such as @Etc\/GMT+9@ or
-- @Pacific\/Tahiti@). For more information, see
-- <https://en.wikipedia.org/wiki/List_of_tz_database_time_zones>.
putScheduledUpdateGroupAction_timeZone :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.Text)
putScheduledUpdateGroupAction_timeZone = Lens.lens (\PutScheduledUpdateGroupAction' {timeZone} -> timeZone) (\s@PutScheduledUpdateGroupAction' {} a -> s {timeZone = a} :: PutScheduledUpdateGroupAction)

-- | This property is no longer used.
putScheduledUpdateGroupAction_time :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.UTCTime)
putScheduledUpdateGroupAction_time = Lens.lens (\PutScheduledUpdateGroupAction' {time} -> time) (\s@PutScheduledUpdateGroupAction' {} a -> s {time = a} :: PutScheduledUpdateGroupAction) Prelude.. Lens.mapping Core._Time

-- | The date and time for the recurring schedule to end, in UTC. For
-- example, @\"2021-06-01T00:00:00Z\"@.
putScheduledUpdateGroupAction_endTime :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.UTCTime)
putScheduledUpdateGroupAction_endTime = Lens.lens (\PutScheduledUpdateGroupAction' {endTime} -> endTime) (\s@PutScheduledUpdateGroupAction' {} a -> s {endTime = a} :: PutScheduledUpdateGroupAction) Prelude.. Lens.mapping Core._Time

-- | The minimum size of the Auto Scaling group.
putScheduledUpdateGroupAction_minSize :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.Int)
putScheduledUpdateGroupAction_minSize = Lens.lens (\PutScheduledUpdateGroupAction' {minSize} -> minSize) (\s@PutScheduledUpdateGroupAction' {} a -> s {minSize = a} :: PutScheduledUpdateGroupAction)

-- | The recurring schedule for this action. This format consists of five
-- fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
-- [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example,
-- @\"30 0 1 1,6,12 *\"@). For more information about this format, see
-- <http://crontab.org Crontab>.
--
-- When @StartTime@ and @EndTime@ are specified with @Recurrence@, they
-- form the boundaries of when the recurring action starts and stops.
--
-- Cron expressions use Universal Coordinated Time (UTC) by default.
putScheduledUpdateGroupAction_recurrence :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.Text)
putScheduledUpdateGroupAction_recurrence = Lens.lens (\PutScheduledUpdateGroupAction' {recurrence} -> recurrence) (\s@PutScheduledUpdateGroupAction' {} a -> s {recurrence = a} :: PutScheduledUpdateGroupAction)

-- | The maximum size of the Auto Scaling group.
putScheduledUpdateGroupAction_maxSize :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.Int)
putScheduledUpdateGroupAction_maxSize = Lens.lens (\PutScheduledUpdateGroupAction' {maxSize} -> maxSize) (\s@PutScheduledUpdateGroupAction' {} a -> s {maxSize = a} :: PutScheduledUpdateGroupAction)

-- | The desired capacity is the initial capacity of the Auto Scaling group
-- after the scheduled action runs and the capacity it attempts to
-- maintain. It can scale beyond this capacity if you add more scaling
-- conditions.
--
-- You must specify at least one of the following properties: @MaxSize@,
-- @MinSize@, or @DesiredCapacity@.
putScheduledUpdateGroupAction_desiredCapacity :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.Int)
putScheduledUpdateGroupAction_desiredCapacity = Lens.lens (\PutScheduledUpdateGroupAction' {desiredCapacity} -> desiredCapacity) (\s@PutScheduledUpdateGroupAction' {} a -> s {desiredCapacity = a} :: PutScheduledUpdateGroupAction)

-- | The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
-- format in UTC\/GMT only and in quotes (for example,
-- @\"2021-06-01T00:00:00Z\"@).
--
-- If you specify @Recurrence@ and @StartTime@, Amazon EC2 Auto Scaling
-- performs the action at this time, and then performs the action based on
-- the specified recurrence.
putScheduledUpdateGroupAction_startTime :: Lens.Lens' PutScheduledUpdateGroupAction (Prelude.Maybe Prelude.UTCTime)
putScheduledUpdateGroupAction_startTime = Lens.lens (\PutScheduledUpdateGroupAction' {startTime} -> startTime) (\s@PutScheduledUpdateGroupAction' {} a -> s {startTime = a} :: PutScheduledUpdateGroupAction) Prelude.. Lens.mapping Core._Time

-- | The name of the Auto Scaling group.
putScheduledUpdateGroupAction_autoScalingGroupName :: Lens.Lens' PutScheduledUpdateGroupAction Prelude.Text
putScheduledUpdateGroupAction_autoScalingGroupName = Lens.lens (\PutScheduledUpdateGroupAction' {autoScalingGroupName} -> autoScalingGroupName) (\s@PutScheduledUpdateGroupAction' {} a -> s {autoScalingGroupName = a} :: PutScheduledUpdateGroupAction)

-- | The name of this scaling action.
putScheduledUpdateGroupAction_scheduledActionName :: Lens.Lens' PutScheduledUpdateGroupAction Prelude.Text
putScheduledUpdateGroupAction_scheduledActionName = Lens.lens (\PutScheduledUpdateGroupAction' {scheduledActionName} -> scheduledActionName) (\s@PutScheduledUpdateGroupAction' {} a -> s {scheduledActionName = a} :: PutScheduledUpdateGroupAction)

instance
  Core.AWSRequest
    PutScheduledUpdateGroupAction
  where
  type
    AWSResponse PutScheduledUpdateGroupAction =
      PutScheduledUpdateGroupActionResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveNull
      PutScheduledUpdateGroupActionResponse'

instance
  Prelude.Hashable
    PutScheduledUpdateGroupAction
  where
  hashWithSalt _salt PutScheduledUpdateGroupAction' {..} =
    _salt `Prelude.hashWithSalt` timeZone
      `Prelude.hashWithSalt` time
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` minSize
      `Prelude.hashWithSalt` recurrence
      `Prelude.hashWithSalt` maxSize
      `Prelude.hashWithSalt` desiredCapacity
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` autoScalingGroupName
      `Prelude.hashWithSalt` scheduledActionName

instance Prelude.NFData PutScheduledUpdateGroupAction where
  rnf PutScheduledUpdateGroupAction' {..} =
    Prelude.rnf timeZone
      `Prelude.seq` Prelude.rnf time
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf minSize
      `Prelude.seq` Prelude.rnf recurrence
      `Prelude.seq` Prelude.rnf maxSize
      `Prelude.seq` Prelude.rnf desiredCapacity
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf autoScalingGroupName
      `Prelude.seq` Prelude.rnf scheduledActionName

instance Core.ToHeaders PutScheduledUpdateGroupAction where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath PutScheduledUpdateGroupAction where
  toPath = Prelude.const "/"

instance Core.ToQuery PutScheduledUpdateGroupAction where
  toQuery PutScheduledUpdateGroupAction' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "PutScheduledUpdateGroupAction" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "TimeZone" Core.=: timeZone,
        "Time" Core.=: time,
        "EndTime" Core.=: endTime,
        "MinSize" Core.=: minSize,
        "Recurrence" Core.=: recurrence,
        "MaxSize" Core.=: maxSize,
        "DesiredCapacity" Core.=: desiredCapacity,
        "StartTime" Core.=: startTime,
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "ScheduledActionName" Core.=: scheduledActionName
      ]

-- | /See:/ 'newPutScheduledUpdateGroupActionResponse' smart constructor.
data PutScheduledUpdateGroupActionResponse = PutScheduledUpdateGroupActionResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutScheduledUpdateGroupActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutScheduledUpdateGroupActionResponse ::
  PutScheduledUpdateGroupActionResponse
newPutScheduledUpdateGroupActionResponse =
  PutScheduledUpdateGroupActionResponse'

instance
  Prelude.NFData
    PutScheduledUpdateGroupActionResponse
  where
  rnf _ = ()

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
-- Module      : Amazonka.TimeStreamQuery.Types.ScheduledQueryRunSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.TimeStreamQuery.Types.ScheduledQueryRunSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.TimeStreamQuery.Types.ErrorReportLocation
import Amazonka.TimeStreamQuery.Types.ExecutionStats
import Amazonka.TimeStreamQuery.Types.ScheduledQueryRunStatus

-- | Run summary for the scheduled query
--
-- /See:/ 'newScheduledQueryRunSummary' smart constructor.
data ScheduledQueryRunSummary = ScheduledQueryRunSummary'
  { -- | S3 location for error report.
    errorReportLocation :: Prelude.Maybe ErrorReportLocation,
    -- | InvocationTime for this run. This is the time at which the query is
    -- scheduled to run. Parameter @\@scheduled_runtime@ can be used in the
    -- query to get the value.
    invocationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of a scheduled query run.
    runStatus :: Prelude.Maybe ScheduledQueryRunStatus,
    -- | Runtime statistics for a scheduled run.
    executionStats :: Prelude.Maybe ExecutionStats,
    -- | The actual time when the query was run.
    triggerTime :: Prelude.Maybe Core.POSIX,
    -- | Error message for the scheduled query in case of failure. You might have
    -- to look at the error report to get more detailed error reasons.
    failureReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScheduledQueryRunSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorReportLocation', 'scheduledQueryRunSummary_errorReportLocation' - S3 location for error report.
--
-- 'invocationTime', 'scheduledQueryRunSummary_invocationTime' - InvocationTime for this run. This is the time at which the query is
-- scheduled to run. Parameter @\@scheduled_runtime@ can be used in the
-- query to get the value.
--
-- 'runStatus', 'scheduledQueryRunSummary_runStatus' - The status of a scheduled query run.
--
-- 'executionStats', 'scheduledQueryRunSummary_executionStats' - Runtime statistics for a scheduled run.
--
-- 'triggerTime', 'scheduledQueryRunSummary_triggerTime' - The actual time when the query was run.
--
-- 'failureReason', 'scheduledQueryRunSummary_failureReason' - Error message for the scheduled query in case of failure. You might have
-- to look at the error report to get more detailed error reasons.
newScheduledQueryRunSummary ::
  ScheduledQueryRunSummary
newScheduledQueryRunSummary =
  ScheduledQueryRunSummary'
    { errorReportLocation =
        Prelude.Nothing,
      invocationTime = Prelude.Nothing,
      runStatus = Prelude.Nothing,
      executionStats = Prelude.Nothing,
      triggerTime = Prelude.Nothing,
      failureReason = Prelude.Nothing
    }

-- | S3 location for error report.
scheduledQueryRunSummary_errorReportLocation :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe ErrorReportLocation)
scheduledQueryRunSummary_errorReportLocation = Lens.lens (\ScheduledQueryRunSummary' {errorReportLocation} -> errorReportLocation) (\s@ScheduledQueryRunSummary' {} a -> s {errorReportLocation = a} :: ScheduledQueryRunSummary)

-- | InvocationTime for this run. This is the time at which the query is
-- scheduled to run. Parameter @\@scheduled_runtime@ can be used in the
-- query to get the value.
scheduledQueryRunSummary_invocationTime :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe Prelude.UTCTime)
scheduledQueryRunSummary_invocationTime = Lens.lens (\ScheduledQueryRunSummary' {invocationTime} -> invocationTime) (\s@ScheduledQueryRunSummary' {} a -> s {invocationTime = a} :: ScheduledQueryRunSummary) Prelude.. Lens.mapping Core._Time

-- | The status of a scheduled query run.
scheduledQueryRunSummary_runStatus :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe ScheduledQueryRunStatus)
scheduledQueryRunSummary_runStatus = Lens.lens (\ScheduledQueryRunSummary' {runStatus} -> runStatus) (\s@ScheduledQueryRunSummary' {} a -> s {runStatus = a} :: ScheduledQueryRunSummary)

-- | Runtime statistics for a scheduled run.
scheduledQueryRunSummary_executionStats :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe ExecutionStats)
scheduledQueryRunSummary_executionStats = Lens.lens (\ScheduledQueryRunSummary' {executionStats} -> executionStats) (\s@ScheduledQueryRunSummary' {} a -> s {executionStats = a} :: ScheduledQueryRunSummary)

-- | The actual time when the query was run.
scheduledQueryRunSummary_triggerTime :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe Prelude.UTCTime)
scheduledQueryRunSummary_triggerTime = Lens.lens (\ScheduledQueryRunSummary' {triggerTime} -> triggerTime) (\s@ScheduledQueryRunSummary' {} a -> s {triggerTime = a} :: ScheduledQueryRunSummary) Prelude.. Lens.mapping Core._Time

-- | Error message for the scheduled query in case of failure. You might have
-- to look at the error report to get more detailed error reasons.
scheduledQueryRunSummary_failureReason :: Lens.Lens' ScheduledQueryRunSummary (Prelude.Maybe Prelude.Text)
scheduledQueryRunSummary_failureReason = Lens.lens (\ScheduledQueryRunSummary' {failureReason} -> failureReason) (\s@ScheduledQueryRunSummary' {} a -> s {failureReason = a} :: ScheduledQueryRunSummary)

instance Core.FromJSON ScheduledQueryRunSummary where
  parseJSON =
    Core.withObject
      "ScheduledQueryRunSummary"
      ( \x ->
          ScheduledQueryRunSummary'
            Prelude.<$> (x Core..:? "ErrorReportLocation")
            Prelude.<*> (x Core..:? "InvocationTime")
            Prelude.<*> (x Core..:? "RunStatus")
            Prelude.<*> (x Core..:? "ExecutionStats")
            Prelude.<*> (x Core..:? "TriggerTime")
            Prelude.<*> (x Core..:? "FailureReason")
      )

instance Prelude.Hashable ScheduledQueryRunSummary where
  hashWithSalt _salt ScheduledQueryRunSummary' {..} =
    _salt `Prelude.hashWithSalt` errorReportLocation
      `Prelude.hashWithSalt` invocationTime
      `Prelude.hashWithSalt` runStatus
      `Prelude.hashWithSalt` executionStats
      `Prelude.hashWithSalt` triggerTime
      `Prelude.hashWithSalt` failureReason

instance Prelude.NFData ScheduledQueryRunSummary where
  rnf ScheduledQueryRunSummary' {..} =
    Prelude.rnf errorReportLocation
      `Prelude.seq` Prelude.rnf invocationTime
      `Prelude.seq` Prelude.rnf runStatus
      `Prelude.seq` Prelude.rnf executionStats
      `Prelude.seq` Prelude.rnf triggerTime
      `Prelude.seq` Prelude.rnf failureReason

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
-- Module      : Amazonka.IoTEventsData.BatchEnableAlarm
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables one or more alarms. The alarms change to the @NORMAL@ state
-- after you enable them.
module Amazonka.IoTEventsData.BatchEnableAlarm
  ( -- * Creating a Request
    BatchEnableAlarm (..),
    newBatchEnableAlarm,

    -- * Request Lenses
    batchEnableAlarm_enableActionRequests,

    -- * Destructuring the Response
    BatchEnableAlarmResponse (..),
    newBatchEnableAlarmResponse,

    -- * Response Lenses
    batchEnableAlarmResponse_errorEntries,
    batchEnableAlarmResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTEventsData.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchEnableAlarm' smart constructor.
data BatchEnableAlarm = BatchEnableAlarm'
  { -- | The list of enable action requests. You can specify up to 10 requests
    -- per operation.
    enableActionRequests :: Prelude.NonEmpty EnableAlarmActionRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchEnableAlarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableActionRequests', 'batchEnableAlarm_enableActionRequests' - The list of enable action requests. You can specify up to 10 requests
-- per operation.
newBatchEnableAlarm ::
  -- | 'enableActionRequests'
  Prelude.NonEmpty EnableAlarmActionRequest ->
  BatchEnableAlarm
newBatchEnableAlarm pEnableActionRequests_ =
  BatchEnableAlarm'
    { enableActionRequests =
        Lens.coerced Lens.# pEnableActionRequests_
    }

-- | The list of enable action requests. You can specify up to 10 requests
-- per operation.
batchEnableAlarm_enableActionRequests :: Lens.Lens' BatchEnableAlarm (Prelude.NonEmpty EnableAlarmActionRequest)
batchEnableAlarm_enableActionRequests = Lens.lens (\BatchEnableAlarm' {enableActionRequests} -> enableActionRequests) (\s@BatchEnableAlarm' {} a -> s {enableActionRequests = a} :: BatchEnableAlarm) Prelude.. Lens.coerced

instance Core.AWSRequest BatchEnableAlarm where
  type
    AWSResponse BatchEnableAlarm =
      BatchEnableAlarmResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchEnableAlarmResponse'
            Prelude.<$> (x Core..?> "errorEntries" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchEnableAlarm where
  hashWithSalt _salt BatchEnableAlarm' {..} =
    _salt `Prelude.hashWithSalt` enableActionRequests

instance Prelude.NFData BatchEnableAlarm where
  rnf BatchEnableAlarm' {..} =
    Prelude.rnf enableActionRequests

instance Core.ToHeaders BatchEnableAlarm where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchEnableAlarm where
  toJSON BatchEnableAlarm' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "enableActionRequests"
                  Core..= enableActionRequests
              )
          ]
      )

instance Core.ToPath BatchEnableAlarm where
  toPath = Prelude.const "/alarms/enable"

instance Core.ToQuery BatchEnableAlarm where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchEnableAlarmResponse' smart constructor.
data BatchEnableAlarmResponse = BatchEnableAlarmResponse'
  { -- | A list of errors associated with the request, or @null@ if there are no
    -- errors. Each error entry contains an entry ID that helps you identify
    -- the entry that failed.
    errorEntries :: Prelude.Maybe [BatchAlarmActionErrorEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchEnableAlarmResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorEntries', 'batchEnableAlarmResponse_errorEntries' - A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
--
-- 'httpStatus', 'batchEnableAlarmResponse_httpStatus' - The response's http status code.
newBatchEnableAlarmResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchEnableAlarmResponse
newBatchEnableAlarmResponse pHttpStatus_ =
  BatchEnableAlarmResponse'
    { errorEntries =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
batchEnableAlarmResponse_errorEntries :: Lens.Lens' BatchEnableAlarmResponse (Prelude.Maybe [BatchAlarmActionErrorEntry])
batchEnableAlarmResponse_errorEntries = Lens.lens (\BatchEnableAlarmResponse' {errorEntries} -> errorEntries) (\s@BatchEnableAlarmResponse' {} a -> s {errorEntries = a} :: BatchEnableAlarmResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchEnableAlarmResponse_httpStatus :: Lens.Lens' BatchEnableAlarmResponse Prelude.Int
batchEnableAlarmResponse_httpStatus = Lens.lens (\BatchEnableAlarmResponse' {httpStatus} -> httpStatus) (\s@BatchEnableAlarmResponse' {} a -> s {httpStatus = a} :: BatchEnableAlarmResponse)

instance Prelude.NFData BatchEnableAlarmResponse where
  rnf BatchEnableAlarmResponse' {..} =
    Prelude.rnf errorEntries
      `Prelude.seq` Prelude.rnf httpStatus

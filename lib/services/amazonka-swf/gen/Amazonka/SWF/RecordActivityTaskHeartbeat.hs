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
-- Module      : Amazonka.SWF.RecordActivityTaskHeartbeat
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by activity workers to report to the service that the ActivityTask
-- represented by the specified @taskToken@ is still making progress. The
-- worker can also specify details of the progress, for example percent
-- complete, using the @details@ parameter. This action can also be used by
-- the worker as a mechanism to check if cancellation is being requested
-- for the activity task. If a cancellation is being attempted for the
-- specified task, then the boolean @cancelRequested@ flag returned by the
-- service is set to @true@.
--
-- This action resets the @taskHeartbeatTimeout@ clock. The
-- @taskHeartbeatTimeout@ is specified in RegisterActivityType.
--
-- This action doesn\'t in itself create an event in the workflow execution
-- history. However, if the task times out, the workflow execution history
-- contains a @ActivityTaskTimedOut@ event that contains the information
-- from the last heartbeat generated by the activity worker.
--
-- The @taskStartToCloseTimeout@ of an activity type is the maximum
-- duration of an activity task, regardless of the number of
-- RecordActivityTaskHeartbeat requests received. The
-- @taskStartToCloseTimeout@ is also specified in RegisterActivityType.
--
-- This operation is only useful for long-lived activities to report
-- liveliness of the task and to determine if a cancellation is being
-- attempted.
--
-- If the @cancelRequested@ flag returns @true@, a cancellation is being
-- attempted. If the worker can cancel the activity, it should respond with
-- RespondActivityTaskCanceled. Otherwise, it should ignore the
-- cancellation request.
--
-- __Access Control__
--
-- You can use IAM policies to control this action\'s access to Amazon SWF
-- resources as follows:
--
-- -   Use a @Resource@ element with the domain name to limit the action to
--     only specified domains.
--
-- -   Use an @Action@ element to allow or deny permission to call this
--     action.
--
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller doesn\'t have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s @cause@ parameter is set
-- to @OPERATION_NOT_PERMITTED@. For details and example IAM policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
module Amazonka.SWF.RecordActivityTaskHeartbeat
  ( -- * Creating a Request
    RecordActivityTaskHeartbeat (..),
    newRecordActivityTaskHeartbeat,

    -- * Request Lenses
    recordActivityTaskHeartbeat_details,
    recordActivityTaskHeartbeat_taskToken,

    -- * Destructuring the Response
    RecordActivityTaskHeartbeatResponse (..),
    newRecordActivityTaskHeartbeatResponse,

    -- * Response Lenses
    recordActivityTaskHeartbeatResponse_httpStatus,
    recordActivityTaskHeartbeatResponse_cancelRequested,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SWF.Types

-- | /See:/ 'newRecordActivityTaskHeartbeat' smart constructor.
data RecordActivityTaskHeartbeat = RecordActivityTaskHeartbeat'
  { -- | If specified, contains details about the progress of the task.
    details :: Prelude.Maybe Prelude.Text,
    -- | The @taskToken@ of the ActivityTask.
    --
    -- @taskToken@ is generated by the service and should be treated as an
    -- opaque value. If the task is passed to another process, its @taskToken@
    -- must also be passed. This enables it to provide its progress and respond
    -- with results.
    taskToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecordActivityTaskHeartbeat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'details', 'recordActivityTaskHeartbeat_details' - If specified, contains details about the progress of the task.
--
-- 'taskToken', 'recordActivityTaskHeartbeat_taskToken' - The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
newRecordActivityTaskHeartbeat ::
  -- | 'taskToken'
  Prelude.Text ->
  RecordActivityTaskHeartbeat
newRecordActivityTaskHeartbeat pTaskToken_ =
  RecordActivityTaskHeartbeat'
    { details =
        Prelude.Nothing,
      taskToken = pTaskToken_
    }

-- | If specified, contains details about the progress of the task.
recordActivityTaskHeartbeat_details :: Lens.Lens' RecordActivityTaskHeartbeat (Prelude.Maybe Prelude.Text)
recordActivityTaskHeartbeat_details = Lens.lens (\RecordActivityTaskHeartbeat' {details} -> details) (\s@RecordActivityTaskHeartbeat' {} a -> s {details = a} :: RecordActivityTaskHeartbeat)

-- | The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
recordActivityTaskHeartbeat_taskToken :: Lens.Lens' RecordActivityTaskHeartbeat Prelude.Text
recordActivityTaskHeartbeat_taskToken = Lens.lens (\RecordActivityTaskHeartbeat' {taskToken} -> taskToken) (\s@RecordActivityTaskHeartbeat' {} a -> s {taskToken = a} :: RecordActivityTaskHeartbeat)

instance Core.AWSRequest RecordActivityTaskHeartbeat where
  type
    AWSResponse RecordActivityTaskHeartbeat =
      RecordActivityTaskHeartbeatResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RecordActivityTaskHeartbeatResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "cancelRequested")
      )

instance Core.AWSService RecordActivityTaskHeartbeat where
  service _proxy = defaultService

instance Prelude.Hashable RecordActivityTaskHeartbeat where
  hashWithSalt _salt RecordActivityTaskHeartbeat' {..} =
    _salt `Prelude.hashWithSalt` details
      `Prelude.hashWithSalt` taskToken

instance Prelude.NFData RecordActivityTaskHeartbeat where
  rnf RecordActivityTaskHeartbeat' {..} =
    Prelude.rnf details
      `Prelude.seq` Prelude.rnf taskToken

instance Core.ToHeaders RecordActivityTaskHeartbeat where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SimpleWorkflowService.RecordActivityTaskHeartbeat" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RecordActivityTaskHeartbeat where
  toJSON RecordActivityTaskHeartbeat' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("details" Core..=) Prelude.<$> details,
            Prelude.Just ("taskToken" Core..= taskToken)
          ]
      )

instance Core.ToPath RecordActivityTaskHeartbeat where
  toPath = Prelude.const "/"

instance Core.ToQuery RecordActivityTaskHeartbeat where
  toQuery = Prelude.const Prelude.mempty

-- | Status information about an activity task.
--
-- /See:/ 'newRecordActivityTaskHeartbeatResponse' smart constructor.
data RecordActivityTaskHeartbeatResponse = RecordActivityTaskHeartbeatResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Set to @true@ if cancellation of the task is requested.
    cancelRequested :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecordActivityTaskHeartbeatResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'recordActivityTaskHeartbeatResponse_httpStatus' - The response's http status code.
--
-- 'cancelRequested', 'recordActivityTaskHeartbeatResponse_cancelRequested' - Set to @true@ if cancellation of the task is requested.
newRecordActivityTaskHeartbeatResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'cancelRequested'
  Prelude.Bool ->
  RecordActivityTaskHeartbeatResponse
newRecordActivityTaskHeartbeatResponse
  pHttpStatus_
  pCancelRequested_ =
    RecordActivityTaskHeartbeatResponse'
      { httpStatus =
          pHttpStatus_,
        cancelRequested = pCancelRequested_
      }

-- | The response's http status code.
recordActivityTaskHeartbeatResponse_httpStatus :: Lens.Lens' RecordActivityTaskHeartbeatResponse Prelude.Int
recordActivityTaskHeartbeatResponse_httpStatus = Lens.lens (\RecordActivityTaskHeartbeatResponse' {httpStatus} -> httpStatus) (\s@RecordActivityTaskHeartbeatResponse' {} a -> s {httpStatus = a} :: RecordActivityTaskHeartbeatResponse)

-- | Set to @true@ if cancellation of the task is requested.
recordActivityTaskHeartbeatResponse_cancelRequested :: Lens.Lens' RecordActivityTaskHeartbeatResponse Prelude.Bool
recordActivityTaskHeartbeatResponse_cancelRequested = Lens.lens (\RecordActivityTaskHeartbeatResponse' {cancelRequested} -> cancelRequested) (\s@RecordActivityTaskHeartbeatResponse' {} a -> s {cancelRequested = a} :: RecordActivityTaskHeartbeatResponse)

instance
  Prelude.NFData
    RecordActivityTaskHeartbeatResponse
  where
  rnf RecordActivityTaskHeartbeatResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf cancelRequested

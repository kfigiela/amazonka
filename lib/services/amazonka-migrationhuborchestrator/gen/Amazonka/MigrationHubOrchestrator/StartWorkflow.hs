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
-- Module      : Amazonka.MigrationHubOrchestrator.StartWorkflow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start a migration workflow.
module Amazonka.MigrationHubOrchestrator.StartWorkflow
  ( -- * Creating a Request
    StartWorkflow (..),
    newStartWorkflow,

    -- * Request Lenses
    startWorkflow_id,

    -- * Destructuring the Response
    StartWorkflowResponse (..),
    newStartWorkflowResponse,

    -- * Response Lenses
    startWorkflowResponse_lastStartTime,
    startWorkflowResponse_arn,
    startWorkflowResponse_status,
    startWorkflowResponse_id,
    startWorkflowResponse_statusMessage,
    startWorkflowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartWorkflow' smart constructor.
data StartWorkflow = StartWorkflow'
  { -- | The ID of the migration workflow.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'startWorkflow_id' - The ID of the migration workflow.
newStartWorkflow ::
  -- | 'id'
  Prelude.Text ->
  StartWorkflow
newStartWorkflow pId_ = StartWorkflow' {id = pId_}

-- | The ID of the migration workflow.
startWorkflow_id :: Lens.Lens' StartWorkflow Prelude.Text
startWorkflow_id = Lens.lens (\StartWorkflow' {id} -> id) (\s@StartWorkflow' {} a -> s {id = a} :: StartWorkflow)

instance Core.AWSRequest StartWorkflow where
  type
    AWSResponse StartWorkflow =
      StartWorkflowResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StartWorkflowResponse'
            Prelude.<$> (x Core..?> "lastStartTime")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "statusMessage")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartWorkflow where
  hashWithSalt _salt StartWorkflow' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData StartWorkflow where
  rnf StartWorkflow' {..} = Prelude.rnf id

instance Core.ToHeaders StartWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartWorkflow where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StartWorkflow where
  toPath StartWorkflow' {..} =
    Prelude.mconcat
      ["/migrationworkflow/", Core.toBS id, "/start"]

instance Core.ToQuery StartWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartWorkflowResponse' smart constructor.
data StartWorkflowResponse = StartWorkflowResponse'
  { -- | The time at which the migration workflow was last started.
    lastStartTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the migration workflow.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the migration workflow.
    status :: Prelude.Maybe MigrationWorkflowStatusEnum,
    -- | The ID of the migration workflow.
    id :: Prelude.Maybe Prelude.Text,
    -- | The status message of the migration workflow.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastStartTime', 'startWorkflowResponse_lastStartTime' - The time at which the migration workflow was last started.
--
-- 'arn', 'startWorkflowResponse_arn' - The Amazon Resource Name (ARN) of the migration workflow.
--
-- 'status', 'startWorkflowResponse_status' - The status of the migration workflow.
--
-- 'id', 'startWorkflowResponse_id' - The ID of the migration workflow.
--
-- 'statusMessage', 'startWorkflowResponse_statusMessage' - The status message of the migration workflow.
--
-- 'httpStatus', 'startWorkflowResponse_httpStatus' - The response's http status code.
newStartWorkflowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartWorkflowResponse
newStartWorkflowResponse pHttpStatus_ =
  StartWorkflowResponse'
    { lastStartTime =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      id = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time at which the migration workflow was last started.
startWorkflowResponse_lastStartTime :: Lens.Lens' StartWorkflowResponse (Prelude.Maybe Prelude.UTCTime)
startWorkflowResponse_lastStartTime = Lens.lens (\StartWorkflowResponse' {lastStartTime} -> lastStartTime) (\s@StartWorkflowResponse' {} a -> s {lastStartTime = a} :: StartWorkflowResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the migration workflow.
startWorkflowResponse_arn :: Lens.Lens' StartWorkflowResponse (Prelude.Maybe Prelude.Text)
startWorkflowResponse_arn = Lens.lens (\StartWorkflowResponse' {arn} -> arn) (\s@StartWorkflowResponse' {} a -> s {arn = a} :: StartWorkflowResponse)

-- | The status of the migration workflow.
startWorkflowResponse_status :: Lens.Lens' StartWorkflowResponse (Prelude.Maybe MigrationWorkflowStatusEnum)
startWorkflowResponse_status = Lens.lens (\StartWorkflowResponse' {status} -> status) (\s@StartWorkflowResponse' {} a -> s {status = a} :: StartWorkflowResponse)

-- | The ID of the migration workflow.
startWorkflowResponse_id :: Lens.Lens' StartWorkflowResponse (Prelude.Maybe Prelude.Text)
startWorkflowResponse_id = Lens.lens (\StartWorkflowResponse' {id} -> id) (\s@StartWorkflowResponse' {} a -> s {id = a} :: StartWorkflowResponse)

-- | The status message of the migration workflow.
startWorkflowResponse_statusMessage :: Lens.Lens' StartWorkflowResponse (Prelude.Maybe Prelude.Text)
startWorkflowResponse_statusMessage = Lens.lens (\StartWorkflowResponse' {statusMessage} -> statusMessage) (\s@StartWorkflowResponse' {} a -> s {statusMessage = a} :: StartWorkflowResponse)

-- | The response's http status code.
startWorkflowResponse_httpStatus :: Lens.Lens' StartWorkflowResponse Prelude.Int
startWorkflowResponse_httpStatus = Lens.lens (\StartWorkflowResponse' {httpStatus} -> httpStatus) (\s@StartWorkflowResponse' {} a -> s {httpStatus = a} :: StartWorkflowResponse)

instance Prelude.NFData StartWorkflowResponse where
  rnf StartWorkflowResponse' {..} =
    Prelude.rnf lastStartTime
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.SageMaker.StopPipelineExecution
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a pipeline execution.
--
-- __Callback Step__
--
-- A pipeline execution won\'t stop while a callback step is running. When
-- you call @StopPipelineExecution@ on a pipeline execution with a running
-- callback step, SageMaker Pipelines sends an additional Amazon SQS
-- message to the specified SQS queue. The body of the SQS message contains
-- a \"Status\" field which is set to \"Stopping\".
--
-- You should add logic to your Amazon SQS message consumer to take any
-- needed action (for example, resource cleanup) upon receipt of the
-- message followed by a call to @SendPipelineExecutionStepSuccess@ or
-- @SendPipelineExecutionStepFailure@.
--
-- Only when SageMaker Pipelines receives one of these calls will it stop
-- the pipeline execution.
--
-- __Lambda Step__
--
-- A pipeline execution can\'t be stopped while a lambda step is running
-- because the Lambda function invoked by the lambda step can\'t be
-- stopped. If you attempt to stop the execution while the Lambda function
-- is running, the pipeline waits for the Lambda function to finish or
-- until the timeout is hit, whichever occurs first, and then stops. If the
-- Lambda function finishes, the pipeline execution status is @Stopped@. If
-- the timeout is hit the pipeline execution status is @Failed@.
module Amazonka.SageMaker.StopPipelineExecution
  ( -- * Creating a Request
    StopPipelineExecution (..),
    newStopPipelineExecution,

    -- * Request Lenses
    stopPipelineExecution_pipelineExecutionArn,
    stopPipelineExecution_clientRequestToken,

    -- * Destructuring the Response
    StopPipelineExecutionResponse (..),
    newStopPipelineExecutionResponse,

    -- * Response Lenses
    stopPipelineExecutionResponse_pipelineExecutionArn,
    stopPipelineExecutionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newStopPipelineExecution' smart constructor.
data StopPipelineExecution = StopPipelineExecution'
  { -- | The Amazon Resource Name (ARN) of the pipeline execution.
    pipelineExecutionArn :: Prelude.Text,
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the operation. An idempotent operation completes no more
    -- than once.
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopPipelineExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipelineExecutionArn', 'stopPipelineExecution_pipelineExecutionArn' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- 'clientRequestToken', 'stopPipelineExecution_clientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the operation. An idempotent operation completes no more
-- than once.
newStopPipelineExecution ::
  -- | 'pipelineExecutionArn'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  StopPipelineExecution
newStopPipelineExecution
  pPipelineExecutionArn_
  pClientRequestToken_ =
    StopPipelineExecution'
      { pipelineExecutionArn =
          pPipelineExecutionArn_,
        clientRequestToken = pClientRequestToken_
      }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
stopPipelineExecution_pipelineExecutionArn :: Lens.Lens' StopPipelineExecution Prelude.Text
stopPipelineExecution_pipelineExecutionArn = Lens.lens (\StopPipelineExecution' {pipelineExecutionArn} -> pipelineExecutionArn) (\s@StopPipelineExecution' {} a -> s {pipelineExecutionArn = a} :: StopPipelineExecution)

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the operation. An idempotent operation completes no more
-- than once.
stopPipelineExecution_clientRequestToken :: Lens.Lens' StopPipelineExecution Prelude.Text
stopPipelineExecution_clientRequestToken = Lens.lens (\StopPipelineExecution' {clientRequestToken} -> clientRequestToken) (\s@StopPipelineExecution' {} a -> s {clientRequestToken = a} :: StopPipelineExecution)

instance Core.AWSRequest StopPipelineExecution where
  type
    AWSResponse StopPipelineExecution =
      StopPipelineExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopPipelineExecutionResponse'
            Prelude.<$> (x Core..?> "PipelineExecutionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopPipelineExecution where
  hashWithSalt _salt StopPipelineExecution' {..} =
    _salt `Prelude.hashWithSalt` pipelineExecutionArn
      `Prelude.hashWithSalt` clientRequestToken

instance Prelude.NFData StopPipelineExecution where
  rnf StopPipelineExecution' {..} =
    Prelude.rnf pipelineExecutionArn
      `Prelude.seq` Prelude.rnf clientRequestToken

instance Core.ToHeaders StopPipelineExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.StopPipelineExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopPipelineExecution where
  toJSON StopPipelineExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "PipelineExecutionArn"
                  Core..= pipelineExecutionArn
              ),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath StopPipelineExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery StopPipelineExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopPipelineExecutionResponse' smart constructor.
data StopPipelineExecutionResponse = StopPipelineExecutionResponse'
  { -- | The Amazon Resource Name (ARN) of the pipeline execution.
    pipelineExecutionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopPipelineExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipelineExecutionArn', 'stopPipelineExecutionResponse_pipelineExecutionArn' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- 'httpStatus', 'stopPipelineExecutionResponse_httpStatus' - The response's http status code.
newStopPipelineExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopPipelineExecutionResponse
newStopPipelineExecutionResponse pHttpStatus_ =
  StopPipelineExecutionResponse'
    { pipelineExecutionArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
stopPipelineExecutionResponse_pipelineExecutionArn :: Lens.Lens' StopPipelineExecutionResponse (Prelude.Maybe Prelude.Text)
stopPipelineExecutionResponse_pipelineExecutionArn = Lens.lens (\StopPipelineExecutionResponse' {pipelineExecutionArn} -> pipelineExecutionArn) (\s@StopPipelineExecutionResponse' {} a -> s {pipelineExecutionArn = a} :: StopPipelineExecutionResponse)

-- | The response's http status code.
stopPipelineExecutionResponse_httpStatus :: Lens.Lens' StopPipelineExecutionResponse Prelude.Int
stopPipelineExecutionResponse_httpStatus = Lens.lens (\StopPipelineExecutionResponse' {httpStatus} -> httpStatus) (\s@StopPipelineExecutionResponse' {} a -> s {httpStatus = a} :: StopPipelineExecutionResponse)

instance Prelude.NFData StopPipelineExecutionResponse where
  rnf StopPipelineExecutionResponse' {..} =
    Prelude.rnf pipelineExecutionArn
      `Prelude.seq` Prelude.rnf httpStatus

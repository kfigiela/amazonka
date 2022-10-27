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
-- Module      : Amazonka.MediaConnect.StopFlow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a flow.
module Amazonka.MediaConnect.StopFlow
  ( -- * Creating a Request
    StopFlow (..),
    newStopFlow,

    -- * Request Lenses
    stopFlow_flowArn,

    -- * Destructuring the Response
    StopFlowResponse (..),
    newStopFlowResponse,

    -- * Response Lenses
    stopFlowResponse_status,
    stopFlowResponse_flowArn,
    stopFlowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStopFlow' smart constructor.
data StopFlow = StopFlow'
  { -- | The ARN of the flow that you want to stop.
    flowArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'stopFlow_flowArn' - The ARN of the flow that you want to stop.
newStopFlow ::
  -- | 'flowArn'
  Prelude.Text ->
  StopFlow
newStopFlow pFlowArn_ =
  StopFlow' {flowArn = pFlowArn_}

-- | The ARN of the flow that you want to stop.
stopFlow_flowArn :: Lens.Lens' StopFlow Prelude.Text
stopFlow_flowArn = Lens.lens (\StopFlow' {flowArn} -> flowArn) (\s@StopFlow' {} a -> s {flowArn = a} :: StopFlow)

instance Core.AWSRequest StopFlow where
  type AWSResponse StopFlow = StopFlowResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StopFlowResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "flowArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopFlow where
  hashWithSalt _salt StopFlow' {..} =
    _salt `Prelude.hashWithSalt` flowArn

instance Prelude.NFData StopFlow where
  rnf StopFlow' {..} = Prelude.rnf flowArn

instance Core.ToHeaders StopFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopFlow where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StopFlow where
  toPath StopFlow' {..} =
    Prelude.mconcat
      ["/v1/flows/stop/", Core.toBS flowArn]

instance Core.ToQuery StopFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopFlowResponse' smart constructor.
data StopFlowResponse = StopFlowResponse'
  { -- | The status of the flow when the StopFlow process begins.
    status :: Prelude.Maybe Status,
    -- | The ARN of the flow that you stopped.
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'stopFlowResponse_status' - The status of the flow when the StopFlow process begins.
--
-- 'flowArn', 'stopFlowResponse_flowArn' - The ARN of the flow that you stopped.
--
-- 'httpStatus', 'stopFlowResponse_httpStatus' - The response's http status code.
newStopFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopFlowResponse
newStopFlowResponse pHttpStatus_ =
  StopFlowResponse'
    { status = Prelude.Nothing,
      flowArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the flow when the StopFlow process begins.
stopFlowResponse_status :: Lens.Lens' StopFlowResponse (Prelude.Maybe Status)
stopFlowResponse_status = Lens.lens (\StopFlowResponse' {status} -> status) (\s@StopFlowResponse' {} a -> s {status = a} :: StopFlowResponse)

-- | The ARN of the flow that you stopped.
stopFlowResponse_flowArn :: Lens.Lens' StopFlowResponse (Prelude.Maybe Prelude.Text)
stopFlowResponse_flowArn = Lens.lens (\StopFlowResponse' {flowArn} -> flowArn) (\s@StopFlowResponse' {} a -> s {flowArn = a} :: StopFlowResponse)

-- | The response's http status code.
stopFlowResponse_httpStatus :: Lens.Lens' StopFlowResponse Prelude.Int
stopFlowResponse_httpStatus = Lens.lens (\StopFlowResponse' {httpStatus} -> httpStatus) (\s@StopFlowResponse' {} a -> s {httpStatus = a} :: StopFlowResponse)

instance Prelude.NFData StopFlowResponse where
  rnf StopFlowResponse' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf flowArn
      `Prelude.seq` Prelude.rnf httpStatus

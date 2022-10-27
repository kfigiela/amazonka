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
-- Module      : Amazonka.CustomerProfiles.DeleteWorkflow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified workflow and all its corresponding resources. This
-- is an async process.
module Amazonka.CustomerProfiles.DeleteWorkflow
  ( -- * Creating a Request
    DeleteWorkflow (..),
    newDeleteWorkflow,

    -- * Request Lenses
    deleteWorkflow_domainName,
    deleteWorkflow_workflowId,

    -- * Destructuring the Response
    DeleteWorkflowResponse (..),
    newDeleteWorkflowResponse,

    -- * Response Lenses
    deleteWorkflowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteWorkflow' smart constructor.
data DeleteWorkflow = DeleteWorkflow'
  { -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | Unique identifier for the workflow.
    workflowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'deleteWorkflow_domainName' - The unique name of the domain.
--
-- 'workflowId', 'deleteWorkflow_workflowId' - Unique identifier for the workflow.
newDeleteWorkflow ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'workflowId'
  Prelude.Text ->
  DeleteWorkflow
newDeleteWorkflow pDomainName_ pWorkflowId_ =
  DeleteWorkflow'
    { domainName = pDomainName_,
      workflowId = pWorkflowId_
    }

-- | The unique name of the domain.
deleteWorkflow_domainName :: Lens.Lens' DeleteWorkflow Prelude.Text
deleteWorkflow_domainName = Lens.lens (\DeleteWorkflow' {domainName} -> domainName) (\s@DeleteWorkflow' {} a -> s {domainName = a} :: DeleteWorkflow)

-- | Unique identifier for the workflow.
deleteWorkflow_workflowId :: Lens.Lens' DeleteWorkflow Prelude.Text
deleteWorkflow_workflowId = Lens.lens (\DeleteWorkflow' {workflowId} -> workflowId) (\s@DeleteWorkflow' {} a -> s {workflowId = a} :: DeleteWorkflow)

instance Core.AWSRequest DeleteWorkflow where
  type
    AWSResponse DeleteWorkflow =
      DeleteWorkflowResponse
  service _ = defaultService
  request srv = Request.delete srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteWorkflowResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteWorkflow where
  hashWithSalt _salt DeleteWorkflow' {..} =
    _salt `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` workflowId

instance Prelude.NFData DeleteWorkflow where
  rnf DeleteWorkflow' {..} =
    Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf workflowId

instance Core.ToHeaders DeleteWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteWorkflow where
  toPath DeleteWorkflow' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainName,
        "/workflows/",
        Core.toBS workflowId
      ]

instance Core.ToQuery DeleteWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteWorkflowResponse' smart constructor.
data DeleteWorkflowResponse = DeleteWorkflowResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteWorkflowResponse_httpStatus' - The response's http status code.
newDeleteWorkflowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteWorkflowResponse
newDeleteWorkflowResponse pHttpStatus_ =
  DeleteWorkflowResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteWorkflowResponse_httpStatus :: Lens.Lens' DeleteWorkflowResponse Prelude.Int
deleteWorkflowResponse_httpStatus = Lens.lens (\DeleteWorkflowResponse' {httpStatus} -> httpStatus) (\s@DeleteWorkflowResponse' {} a -> s {httpStatus = a} :: DeleteWorkflowResponse)

instance Prelude.NFData DeleteWorkflowResponse where
  rnf DeleteWorkflowResponse' {..} =
    Prelude.rnf httpStatus

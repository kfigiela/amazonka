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
-- Module      : Amazonka.MigrationHubOrchestrator.UpdateWorkflowStepGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the step group in a migration workflow.
module Amazonka.MigrationHubOrchestrator.UpdateWorkflowStepGroup
  ( -- * Creating a Request
    UpdateWorkflowStepGroup (..),
    newUpdateWorkflowStepGroup,

    -- * Request Lenses
    updateWorkflowStepGroup_name,
    updateWorkflowStepGroup_next,
    updateWorkflowStepGroup_description,
    updateWorkflowStepGroup_previous,
    updateWorkflowStepGroup_workflowId,
    updateWorkflowStepGroup_id,

    -- * Destructuring the Response
    UpdateWorkflowStepGroupResponse (..),
    newUpdateWorkflowStepGroupResponse,

    -- * Response Lenses
    updateWorkflowStepGroupResponse_name,
    updateWorkflowStepGroupResponse_workflowId,
    updateWorkflowStepGroupResponse_tools,
    updateWorkflowStepGroupResponse_next,
    updateWorkflowStepGroupResponse_description,
    updateWorkflowStepGroupResponse_id,
    updateWorkflowStepGroupResponse_lastModifiedTime,
    updateWorkflowStepGroupResponse_previous,
    updateWorkflowStepGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateWorkflowStepGroup' smart constructor.
data UpdateWorkflowStepGroup = UpdateWorkflowStepGroup'
  { -- | The name of the step group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The next step group.
    next :: Prelude.Maybe [Prelude.Text],
    -- | The description of the step group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The previous step group.
    previous :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the migration workflow.
    workflowId :: Prelude.Text,
    -- | The ID of the step group.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkflowStepGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateWorkflowStepGroup_name' - The name of the step group.
--
-- 'next', 'updateWorkflowStepGroup_next' - The next step group.
--
-- 'description', 'updateWorkflowStepGroup_description' - The description of the step group.
--
-- 'previous', 'updateWorkflowStepGroup_previous' - The previous step group.
--
-- 'workflowId', 'updateWorkflowStepGroup_workflowId' - The ID of the migration workflow.
--
-- 'id', 'updateWorkflowStepGroup_id' - The ID of the step group.
newUpdateWorkflowStepGroup ::
  -- | 'workflowId'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  UpdateWorkflowStepGroup
newUpdateWorkflowStepGroup pWorkflowId_ pId_ =
  UpdateWorkflowStepGroup'
    { name = Prelude.Nothing,
      next = Prelude.Nothing,
      description = Prelude.Nothing,
      previous = Prelude.Nothing,
      workflowId = pWorkflowId_,
      id = pId_
    }

-- | The name of the step group.
updateWorkflowStepGroup_name :: Lens.Lens' UpdateWorkflowStepGroup (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroup_name = Lens.lens (\UpdateWorkflowStepGroup' {name} -> name) (\s@UpdateWorkflowStepGroup' {} a -> s {name = a} :: UpdateWorkflowStepGroup)

-- | The next step group.
updateWorkflowStepGroup_next :: Lens.Lens' UpdateWorkflowStepGroup (Prelude.Maybe [Prelude.Text])
updateWorkflowStepGroup_next = Lens.lens (\UpdateWorkflowStepGroup' {next} -> next) (\s@UpdateWorkflowStepGroup' {} a -> s {next = a} :: UpdateWorkflowStepGroup) Prelude.. Lens.mapping Lens.coerced

-- | The description of the step group.
updateWorkflowStepGroup_description :: Lens.Lens' UpdateWorkflowStepGroup (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroup_description = Lens.lens (\UpdateWorkflowStepGroup' {description} -> description) (\s@UpdateWorkflowStepGroup' {} a -> s {description = a} :: UpdateWorkflowStepGroup)

-- | The previous step group.
updateWorkflowStepGroup_previous :: Lens.Lens' UpdateWorkflowStepGroup (Prelude.Maybe [Prelude.Text])
updateWorkflowStepGroup_previous = Lens.lens (\UpdateWorkflowStepGroup' {previous} -> previous) (\s@UpdateWorkflowStepGroup' {} a -> s {previous = a} :: UpdateWorkflowStepGroup) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the migration workflow.
updateWorkflowStepGroup_workflowId :: Lens.Lens' UpdateWorkflowStepGroup Prelude.Text
updateWorkflowStepGroup_workflowId = Lens.lens (\UpdateWorkflowStepGroup' {workflowId} -> workflowId) (\s@UpdateWorkflowStepGroup' {} a -> s {workflowId = a} :: UpdateWorkflowStepGroup)

-- | The ID of the step group.
updateWorkflowStepGroup_id :: Lens.Lens' UpdateWorkflowStepGroup Prelude.Text
updateWorkflowStepGroup_id = Lens.lens (\UpdateWorkflowStepGroup' {id} -> id) (\s@UpdateWorkflowStepGroup' {} a -> s {id = a} :: UpdateWorkflowStepGroup)

instance Core.AWSRequest UpdateWorkflowStepGroup where
  type
    AWSResponse UpdateWorkflowStepGroup =
      UpdateWorkflowStepGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorkflowStepGroupResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "workflowId")
            Prelude.<*> (x Core..?> "tools" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "next" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "lastModifiedTime")
            Prelude.<*> (x Core..?> "previous" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateWorkflowStepGroup where
  hashWithSalt _salt UpdateWorkflowStepGroup' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` next
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` previous
      `Prelude.hashWithSalt` workflowId
      `Prelude.hashWithSalt` id

instance Prelude.NFData UpdateWorkflowStepGroup where
  rnf UpdateWorkflowStepGroup' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf next
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf previous
      `Prelude.seq` Prelude.rnf workflowId
      `Prelude.seq` Prelude.rnf id

instance Core.ToHeaders UpdateWorkflowStepGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorkflowStepGroup where
  toJSON UpdateWorkflowStepGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("next" Core..=) Prelude.<$> next,
            ("description" Core..=) Prelude.<$> description,
            ("previous" Core..=) Prelude.<$> previous
          ]
      )

instance Core.ToPath UpdateWorkflowStepGroup where
  toPath UpdateWorkflowStepGroup' {..} =
    Prelude.mconcat
      ["/workflowstepgroup/", Core.toBS id]

instance Core.ToQuery UpdateWorkflowStepGroup where
  toQuery UpdateWorkflowStepGroup' {..} =
    Prelude.mconcat ["workflowId" Core.=: workflowId]

-- | /See:/ 'newUpdateWorkflowStepGroupResponse' smart constructor.
data UpdateWorkflowStepGroupResponse = UpdateWorkflowStepGroupResponse'
  { -- | The name of the step group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the migration workflow.
    workflowId :: Prelude.Maybe Prelude.Text,
    -- | List of AWS services utilized in a migration workflow.
    tools :: Prelude.Maybe [Tool],
    -- | The next step group.
    next :: Prelude.Maybe [Prelude.Text],
    -- | The description of the step group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the step group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the step group was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The previous step group.
    previous :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkflowStepGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateWorkflowStepGroupResponse_name' - The name of the step group.
--
-- 'workflowId', 'updateWorkflowStepGroupResponse_workflowId' - The ID of the migration workflow.
--
-- 'tools', 'updateWorkflowStepGroupResponse_tools' - List of AWS services utilized in a migration workflow.
--
-- 'next', 'updateWorkflowStepGroupResponse_next' - The next step group.
--
-- 'description', 'updateWorkflowStepGroupResponse_description' - The description of the step group.
--
-- 'id', 'updateWorkflowStepGroupResponse_id' - The ID of the step group.
--
-- 'lastModifiedTime', 'updateWorkflowStepGroupResponse_lastModifiedTime' - The time at which the step group was last modified.
--
-- 'previous', 'updateWorkflowStepGroupResponse_previous' - The previous step group.
--
-- 'httpStatus', 'updateWorkflowStepGroupResponse_httpStatus' - The response's http status code.
newUpdateWorkflowStepGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateWorkflowStepGroupResponse
newUpdateWorkflowStepGroupResponse pHttpStatus_ =
  UpdateWorkflowStepGroupResponse'
    { name =
        Prelude.Nothing,
      workflowId = Prelude.Nothing,
      tools = Prelude.Nothing,
      next = Prelude.Nothing,
      description = Prelude.Nothing,
      id = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      previous = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the step group.
updateWorkflowStepGroupResponse_name :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroupResponse_name = Lens.lens (\UpdateWorkflowStepGroupResponse' {name} -> name) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {name = a} :: UpdateWorkflowStepGroupResponse)

-- | The ID of the migration workflow.
updateWorkflowStepGroupResponse_workflowId :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroupResponse_workflowId = Lens.lens (\UpdateWorkflowStepGroupResponse' {workflowId} -> workflowId) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {workflowId = a} :: UpdateWorkflowStepGroupResponse)

-- | List of AWS services utilized in a migration workflow.
updateWorkflowStepGroupResponse_tools :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe [Tool])
updateWorkflowStepGroupResponse_tools = Lens.lens (\UpdateWorkflowStepGroupResponse' {tools} -> tools) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {tools = a} :: UpdateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next step group.
updateWorkflowStepGroupResponse_next :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe [Prelude.Text])
updateWorkflowStepGroupResponse_next = Lens.lens (\UpdateWorkflowStepGroupResponse' {next} -> next) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {next = a} :: UpdateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The description of the step group.
updateWorkflowStepGroupResponse_description :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroupResponse_description = Lens.lens (\UpdateWorkflowStepGroupResponse' {description} -> description) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {description = a} :: UpdateWorkflowStepGroupResponse)

-- | The ID of the step group.
updateWorkflowStepGroupResponse_id :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
updateWorkflowStepGroupResponse_id = Lens.lens (\UpdateWorkflowStepGroupResponse' {id} -> id) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {id = a} :: UpdateWorkflowStepGroupResponse)

-- | The time at which the step group was last modified.
updateWorkflowStepGroupResponse_lastModifiedTime :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe Prelude.UTCTime)
updateWorkflowStepGroupResponse_lastModifiedTime = Lens.lens (\UpdateWorkflowStepGroupResponse' {lastModifiedTime} -> lastModifiedTime) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {lastModifiedTime = a} :: UpdateWorkflowStepGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The previous step group.
updateWorkflowStepGroupResponse_previous :: Lens.Lens' UpdateWorkflowStepGroupResponse (Prelude.Maybe [Prelude.Text])
updateWorkflowStepGroupResponse_previous = Lens.lens (\UpdateWorkflowStepGroupResponse' {previous} -> previous) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {previous = a} :: UpdateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
updateWorkflowStepGroupResponse_httpStatus :: Lens.Lens' UpdateWorkflowStepGroupResponse Prelude.Int
updateWorkflowStepGroupResponse_httpStatus = Lens.lens (\UpdateWorkflowStepGroupResponse' {httpStatus} -> httpStatus) (\s@UpdateWorkflowStepGroupResponse' {} a -> s {httpStatus = a} :: UpdateWorkflowStepGroupResponse)

instance
  Prelude.NFData
    UpdateWorkflowStepGroupResponse
  where
  rnf UpdateWorkflowStepGroupResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf workflowId
      `Prelude.seq` Prelude.rnf tools
      `Prelude.seq` Prelude.rnf next
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf previous
      `Prelude.seq` Prelude.rnf httpStatus

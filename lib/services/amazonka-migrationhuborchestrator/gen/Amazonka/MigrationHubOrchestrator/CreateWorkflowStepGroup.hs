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
-- Module      : Amazonka.MigrationHubOrchestrator.CreateWorkflowStepGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a step group in a migration workflow.
module Amazonka.MigrationHubOrchestrator.CreateWorkflowStepGroup
  ( -- * Creating a Request
    CreateWorkflowStepGroup (..),
    newCreateWorkflowStepGroup,

    -- * Request Lenses
    createWorkflowStepGroup_next,
    createWorkflowStepGroup_description,
    createWorkflowStepGroup_previous,
    createWorkflowStepGroup_workflowId,
    createWorkflowStepGroup_name,

    -- * Destructuring the Response
    CreateWorkflowStepGroupResponse (..),
    newCreateWorkflowStepGroupResponse,

    -- * Response Lenses
    createWorkflowStepGroupResponse_name,
    createWorkflowStepGroupResponse_workflowId,
    createWorkflowStepGroupResponse_tools,
    createWorkflowStepGroupResponse_next,
    createWorkflowStepGroupResponse_description,
    createWorkflowStepGroupResponse_id,
    createWorkflowStepGroupResponse_creationTime,
    createWorkflowStepGroupResponse_previous,
    createWorkflowStepGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateWorkflowStepGroup' smart constructor.
data CreateWorkflowStepGroup = CreateWorkflowStepGroup'
  { -- | The next step group.
    next :: Prelude.Maybe [Prelude.Text],
    -- | The description of the step group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The previous step group.
    previous :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the migration workflow that will contain the step group.
    workflowId :: Prelude.Text,
    -- | The name of the step group.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkflowStepGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'next', 'createWorkflowStepGroup_next' - The next step group.
--
-- 'description', 'createWorkflowStepGroup_description' - The description of the step group.
--
-- 'previous', 'createWorkflowStepGroup_previous' - The previous step group.
--
-- 'workflowId', 'createWorkflowStepGroup_workflowId' - The ID of the migration workflow that will contain the step group.
--
-- 'name', 'createWorkflowStepGroup_name' - The name of the step group.
newCreateWorkflowStepGroup ::
  -- | 'workflowId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateWorkflowStepGroup
newCreateWorkflowStepGroup pWorkflowId_ pName_ =
  CreateWorkflowStepGroup'
    { next = Prelude.Nothing,
      description = Prelude.Nothing,
      previous = Prelude.Nothing,
      workflowId = pWorkflowId_,
      name = pName_
    }

-- | The next step group.
createWorkflowStepGroup_next :: Lens.Lens' CreateWorkflowStepGroup (Prelude.Maybe [Prelude.Text])
createWorkflowStepGroup_next = Lens.lens (\CreateWorkflowStepGroup' {next} -> next) (\s@CreateWorkflowStepGroup' {} a -> s {next = a} :: CreateWorkflowStepGroup) Prelude.. Lens.mapping Lens.coerced

-- | The description of the step group.
createWorkflowStepGroup_description :: Lens.Lens' CreateWorkflowStepGroup (Prelude.Maybe Prelude.Text)
createWorkflowStepGroup_description = Lens.lens (\CreateWorkflowStepGroup' {description} -> description) (\s@CreateWorkflowStepGroup' {} a -> s {description = a} :: CreateWorkflowStepGroup)

-- | The previous step group.
createWorkflowStepGroup_previous :: Lens.Lens' CreateWorkflowStepGroup (Prelude.Maybe [Prelude.Text])
createWorkflowStepGroup_previous = Lens.lens (\CreateWorkflowStepGroup' {previous} -> previous) (\s@CreateWorkflowStepGroup' {} a -> s {previous = a} :: CreateWorkflowStepGroup) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the migration workflow that will contain the step group.
createWorkflowStepGroup_workflowId :: Lens.Lens' CreateWorkflowStepGroup Prelude.Text
createWorkflowStepGroup_workflowId = Lens.lens (\CreateWorkflowStepGroup' {workflowId} -> workflowId) (\s@CreateWorkflowStepGroup' {} a -> s {workflowId = a} :: CreateWorkflowStepGroup)

-- | The name of the step group.
createWorkflowStepGroup_name :: Lens.Lens' CreateWorkflowStepGroup Prelude.Text
createWorkflowStepGroup_name = Lens.lens (\CreateWorkflowStepGroup' {name} -> name) (\s@CreateWorkflowStepGroup' {} a -> s {name = a} :: CreateWorkflowStepGroup)

instance Core.AWSRequest CreateWorkflowStepGroup where
  type
    AWSResponse CreateWorkflowStepGroup =
      CreateWorkflowStepGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkflowStepGroupResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "workflowId")
            Prelude.<*> (x Core..?> "tools" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "next" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "previous" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWorkflowStepGroup where
  hashWithSalt _salt CreateWorkflowStepGroup' {..} =
    _salt `Prelude.hashWithSalt` next
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` previous
      `Prelude.hashWithSalt` workflowId
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateWorkflowStepGroup where
  rnf CreateWorkflowStepGroup' {..} =
    Prelude.rnf next
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf previous
      `Prelude.seq` Prelude.rnf workflowId
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateWorkflowStepGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorkflowStepGroup where
  toJSON CreateWorkflowStepGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("next" Core..=) Prelude.<$> next,
            ("description" Core..=) Prelude.<$> description,
            ("previous" Core..=) Prelude.<$> previous,
            Prelude.Just ("workflowId" Core..= workflowId),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateWorkflowStepGroup where
  toPath = Prelude.const "/workflowstepgroups"

instance Core.ToQuery CreateWorkflowStepGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorkflowStepGroupResponse' smart constructor.
data CreateWorkflowStepGroupResponse = CreateWorkflowStepGroupResponse'
  { -- | The name of the step group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the migration workflow that contains the step group.
    workflowId :: Prelude.Maybe Prelude.Text,
    -- | List of AWS services utilized in a migration workflow.
    tools :: Prelude.Maybe [Tool],
    -- | The next step group.
    next :: Prelude.Maybe [Prelude.Text],
    -- | The description of the step group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the step group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the step group is created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The previous step group.
    previous :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkflowStepGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createWorkflowStepGroupResponse_name' - The name of the step group.
--
-- 'workflowId', 'createWorkflowStepGroupResponse_workflowId' - The ID of the migration workflow that contains the step group.
--
-- 'tools', 'createWorkflowStepGroupResponse_tools' - List of AWS services utilized in a migration workflow.
--
-- 'next', 'createWorkflowStepGroupResponse_next' - The next step group.
--
-- 'description', 'createWorkflowStepGroupResponse_description' - The description of the step group.
--
-- 'id', 'createWorkflowStepGroupResponse_id' - The ID of the step group.
--
-- 'creationTime', 'createWorkflowStepGroupResponse_creationTime' - The time at which the step group is created.
--
-- 'previous', 'createWorkflowStepGroupResponse_previous' - The previous step group.
--
-- 'httpStatus', 'createWorkflowStepGroupResponse_httpStatus' - The response's http status code.
newCreateWorkflowStepGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWorkflowStepGroupResponse
newCreateWorkflowStepGroupResponse pHttpStatus_ =
  CreateWorkflowStepGroupResponse'
    { name =
        Prelude.Nothing,
      workflowId = Prelude.Nothing,
      tools = Prelude.Nothing,
      next = Prelude.Nothing,
      description = Prelude.Nothing,
      id = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      previous = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the step group.
createWorkflowStepGroupResponse_name :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
createWorkflowStepGroupResponse_name = Lens.lens (\CreateWorkflowStepGroupResponse' {name} -> name) (\s@CreateWorkflowStepGroupResponse' {} a -> s {name = a} :: CreateWorkflowStepGroupResponse)

-- | The ID of the migration workflow that contains the step group.
createWorkflowStepGroupResponse_workflowId :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
createWorkflowStepGroupResponse_workflowId = Lens.lens (\CreateWorkflowStepGroupResponse' {workflowId} -> workflowId) (\s@CreateWorkflowStepGroupResponse' {} a -> s {workflowId = a} :: CreateWorkflowStepGroupResponse)

-- | List of AWS services utilized in a migration workflow.
createWorkflowStepGroupResponse_tools :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe [Tool])
createWorkflowStepGroupResponse_tools = Lens.lens (\CreateWorkflowStepGroupResponse' {tools} -> tools) (\s@CreateWorkflowStepGroupResponse' {} a -> s {tools = a} :: CreateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next step group.
createWorkflowStepGroupResponse_next :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe [Prelude.Text])
createWorkflowStepGroupResponse_next = Lens.lens (\CreateWorkflowStepGroupResponse' {next} -> next) (\s@CreateWorkflowStepGroupResponse' {} a -> s {next = a} :: CreateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The description of the step group.
createWorkflowStepGroupResponse_description :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
createWorkflowStepGroupResponse_description = Lens.lens (\CreateWorkflowStepGroupResponse' {description} -> description) (\s@CreateWorkflowStepGroupResponse' {} a -> s {description = a} :: CreateWorkflowStepGroupResponse)

-- | The ID of the step group.
createWorkflowStepGroupResponse_id :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe Prelude.Text)
createWorkflowStepGroupResponse_id = Lens.lens (\CreateWorkflowStepGroupResponse' {id} -> id) (\s@CreateWorkflowStepGroupResponse' {} a -> s {id = a} :: CreateWorkflowStepGroupResponse)

-- | The time at which the step group is created.
createWorkflowStepGroupResponse_creationTime :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe Prelude.UTCTime)
createWorkflowStepGroupResponse_creationTime = Lens.lens (\CreateWorkflowStepGroupResponse' {creationTime} -> creationTime) (\s@CreateWorkflowStepGroupResponse' {} a -> s {creationTime = a} :: CreateWorkflowStepGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The previous step group.
createWorkflowStepGroupResponse_previous :: Lens.Lens' CreateWorkflowStepGroupResponse (Prelude.Maybe [Prelude.Text])
createWorkflowStepGroupResponse_previous = Lens.lens (\CreateWorkflowStepGroupResponse' {previous} -> previous) (\s@CreateWorkflowStepGroupResponse' {} a -> s {previous = a} :: CreateWorkflowStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createWorkflowStepGroupResponse_httpStatus :: Lens.Lens' CreateWorkflowStepGroupResponse Prelude.Int
createWorkflowStepGroupResponse_httpStatus = Lens.lens (\CreateWorkflowStepGroupResponse' {httpStatus} -> httpStatus) (\s@CreateWorkflowStepGroupResponse' {} a -> s {httpStatus = a} :: CreateWorkflowStepGroupResponse)

instance
  Prelude.NFData
    CreateWorkflowStepGroupResponse
  where
  rnf CreateWorkflowStepGroupResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf workflowId
      `Prelude.seq` Prelude.rnf tools
      `Prelude.seq` Prelude.rnf next
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf previous
      `Prelude.seq` Prelude.rnf httpStatus

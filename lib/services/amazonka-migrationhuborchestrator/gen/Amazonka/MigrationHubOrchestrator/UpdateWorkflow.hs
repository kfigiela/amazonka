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
-- Module      : Amazonka.MigrationHubOrchestrator.UpdateWorkflow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a migration workflow.
module Amazonka.MigrationHubOrchestrator.UpdateWorkflow
  ( -- * Creating a Request
    UpdateWorkflow (..),
    newUpdateWorkflow,

    -- * Request Lenses
    updateWorkflow_name,
    updateWorkflow_stepTargets,
    updateWorkflow_inputParameters,
    updateWorkflow_description,
    updateWorkflow_id,

    -- * Destructuring the Response
    UpdateWorkflowResponse (..),
    newUpdateWorkflowResponse,

    -- * Response Lenses
    updateWorkflowResponse_tags,
    updateWorkflowResponse_name,
    updateWorkflowResponse_stepTargets,
    updateWorkflowResponse_adsApplicationConfigurationId,
    updateWorkflowResponse_arn,
    updateWorkflowResponse_status,
    updateWorkflowResponse_description,
    updateWorkflowResponse_templateId,
    updateWorkflowResponse_id,
    updateWorkflowResponse_lastModifiedTime,
    updateWorkflowResponse_creationTime,
    updateWorkflowResponse_workflowInputs,
    updateWorkflowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateWorkflow' smart constructor.
data UpdateWorkflow = UpdateWorkflow'
  { -- | The name of the migration workflow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The servers on which a step will be run.
    stepTargets :: Prelude.Maybe [Prelude.Text],
    -- | The input parameters required to update a migration workflow.
    inputParameters :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text StepInput)),
    -- | The description of the migration workflow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the migration workflow.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateWorkflow_name' - The name of the migration workflow.
--
-- 'stepTargets', 'updateWorkflow_stepTargets' - The servers on which a step will be run.
--
-- 'inputParameters', 'updateWorkflow_inputParameters' - The input parameters required to update a migration workflow.
--
-- 'description', 'updateWorkflow_description' - The description of the migration workflow.
--
-- 'id', 'updateWorkflow_id' - The ID of the migration workflow.
newUpdateWorkflow ::
  -- | 'id'
  Prelude.Text ->
  UpdateWorkflow
newUpdateWorkflow pId_ =
  UpdateWorkflow'
    { name = Prelude.Nothing,
      stepTargets = Prelude.Nothing,
      inputParameters = Prelude.Nothing,
      description = Prelude.Nothing,
      id = pId_
    }

-- | The name of the migration workflow.
updateWorkflow_name :: Lens.Lens' UpdateWorkflow (Prelude.Maybe Prelude.Text)
updateWorkflow_name = Lens.lens (\UpdateWorkflow' {name} -> name) (\s@UpdateWorkflow' {} a -> s {name = a} :: UpdateWorkflow)

-- | The servers on which a step will be run.
updateWorkflow_stepTargets :: Lens.Lens' UpdateWorkflow (Prelude.Maybe [Prelude.Text])
updateWorkflow_stepTargets = Lens.lens (\UpdateWorkflow' {stepTargets} -> stepTargets) (\s@UpdateWorkflow' {} a -> s {stepTargets = a} :: UpdateWorkflow) Prelude.. Lens.mapping Lens.coerced

-- | The input parameters required to update a migration workflow.
updateWorkflow_inputParameters :: Lens.Lens' UpdateWorkflow (Prelude.Maybe (Prelude.HashMap Prelude.Text StepInput))
updateWorkflow_inputParameters = Lens.lens (\UpdateWorkflow' {inputParameters} -> inputParameters) (\s@UpdateWorkflow' {} a -> s {inputParameters = a} :: UpdateWorkflow) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The description of the migration workflow.
updateWorkflow_description :: Lens.Lens' UpdateWorkflow (Prelude.Maybe Prelude.Text)
updateWorkflow_description = Lens.lens (\UpdateWorkflow' {description} -> description) (\s@UpdateWorkflow' {} a -> s {description = a} :: UpdateWorkflow)

-- | The ID of the migration workflow.
updateWorkflow_id :: Lens.Lens' UpdateWorkflow Prelude.Text
updateWorkflow_id = Lens.lens (\UpdateWorkflow' {id} -> id) (\s@UpdateWorkflow' {} a -> s {id = a} :: UpdateWorkflow)

instance Core.AWSRequest UpdateWorkflow where
  type
    AWSResponse UpdateWorkflow =
      UpdateWorkflowResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorkflowResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "stepTargets" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "adsApplicationConfigurationId")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "templateId")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "lastModifiedTime")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "workflowInputs" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateWorkflow where
  hashWithSalt _salt UpdateWorkflow' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` stepTargets
      `Prelude.hashWithSalt` inputParameters
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` id

instance Prelude.NFData UpdateWorkflow where
  rnf UpdateWorkflow' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf stepTargets
      `Prelude.seq` Prelude.rnf inputParameters
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id

instance Core.ToHeaders UpdateWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorkflow where
  toJSON UpdateWorkflow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("stepTargets" Core..=) Prelude.<$> stepTargets,
            ("inputParameters" Core..=)
              Prelude.<$> inputParameters,
            ("description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateWorkflow where
  toPath UpdateWorkflow' {..} =
    Prelude.mconcat
      ["/migrationworkflow/", Core.toBS id]

instance Core.ToQuery UpdateWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateWorkflowResponse' smart constructor.
data UpdateWorkflowResponse = UpdateWorkflowResponse'
  { -- | The tags added to the migration workflow.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the migration workflow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The servers on which a step will be run.
    stepTargets :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the application configured in Application Discovery Service.
    adsApplicationConfigurationId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the migration workflow.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the migration workflow.
    status :: Prelude.Maybe MigrationWorkflowStatusEnum,
    -- | The description of the migration workflow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the migration workflow.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the migration workflow was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The time at which the migration workflow was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The inputs required to update a migration workflow.
    workflowInputs :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text StepInput)),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateWorkflowResponse_tags' - The tags added to the migration workflow.
--
-- 'name', 'updateWorkflowResponse_name' - The name of the migration workflow.
--
-- 'stepTargets', 'updateWorkflowResponse_stepTargets' - The servers on which a step will be run.
--
-- 'adsApplicationConfigurationId', 'updateWorkflowResponse_adsApplicationConfigurationId' - The ID of the application configured in Application Discovery Service.
--
-- 'arn', 'updateWorkflowResponse_arn' - The Amazon Resource Name (ARN) of the migration workflow.
--
-- 'status', 'updateWorkflowResponse_status' - The status of the migration workflow.
--
-- 'description', 'updateWorkflowResponse_description' - The description of the migration workflow.
--
-- 'templateId', 'updateWorkflowResponse_templateId' - The ID of the template.
--
-- 'id', 'updateWorkflowResponse_id' - The ID of the migration workflow.
--
-- 'lastModifiedTime', 'updateWorkflowResponse_lastModifiedTime' - The time at which the migration workflow was last modified.
--
-- 'creationTime', 'updateWorkflowResponse_creationTime' - The time at which the migration workflow was created.
--
-- 'workflowInputs', 'updateWorkflowResponse_workflowInputs' - The inputs required to update a migration workflow.
--
-- 'httpStatus', 'updateWorkflowResponse_httpStatus' - The response's http status code.
newUpdateWorkflowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateWorkflowResponse
newUpdateWorkflowResponse pHttpStatus_ =
  UpdateWorkflowResponse'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      stepTargets = Prelude.Nothing,
      adsApplicationConfigurationId = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      description = Prelude.Nothing,
      templateId = Prelude.Nothing,
      id = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      workflowInputs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags added to the migration workflow.
updateWorkflowResponse_tags :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateWorkflowResponse_tags = Lens.lens (\UpdateWorkflowResponse' {tags} -> tags) (\s@UpdateWorkflowResponse' {} a -> s {tags = a} :: UpdateWorkflowResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the migration workflow.
updateWorkflowResponse_name :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_name = Lens.lens (\UpdateWorkflowResponse' {name} -> name) (\s@UpdateWorkflowResponse' {} a -> s {name = a} :: UpdateWorkflowResponse)

-- | The servers on which a step will be run.
updateWorkflowResponse_stepTargets :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe [Prelude.Text])
updateWorkflowResponse_stepTargets = Lens.lens (\UpdateWorkflowResponse' {stepTargets} -> stepTargets) (\s@UpdateWorkflowResponse' {} a -> s {stepTargets = a} :: UpdateWorkflowResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the application configured in Application Discovery Service.
updateWorkflowResponse_adsApplicationConfigurationId :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_adsApplicationConfigurationId = Lens.lens (\UpdateWorkflowResponse' {adsApplicationConfigurationId} -> adsApplicationConfigurationId) (\s@UpdateWorkflowResponse' {} a -> s {adsApplicationConfigurationId = a} :: UpdateWorkflowResponse)

-- | The Amazon Resource Name (ARN) of the migration workflow.
updateWorkflowResponse_arn :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_arn = Lens.lens (\UpdateWorkflowResponse' {arn} -> arn) (\s@UpdateWorkflowResponse' {} a -> s {arn = a} :: UpdateWorkflowResponse)

-- | The status of the migration workflow.
updateWorkflowResponse_status :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe MigrationWorkflowStatusEnum)
updateWorkflowResponse_status = Lens.lens (\UpdateWorkflowResponse' {status} -> status) (\s@UpdateWorkflowResponse' {} a -> s {status = a} :: UpdateWorkflowResponse)

-- | The description of the migration workflow.
updateWorkflowResponse_description :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_description = Lens.lens (\UpdateWorkflowResponse' {description} -> description) (\s@UpdateWorkflowResponse' {} a -> s {description = a} :: UpdateWorkflowResponse)

-- | The ID of the template.
updateWorkflowResponse_templateId :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_templateId = Lens.lens (\UpdateWorkflowResponse' {templateId} -> templateId) (\s@UpdateWorkflowResponse' {} a -> s {templateId = a} :: UpdateWorkflowResponse)

-- | The ID of the migration workflow.
updateWorkflowResponse_id :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.Text)
updateWorkflowResponse_id = Lens.lens (\UpdateWorkflowResponse' {id} -> id) (\s@UpdateWorkflowResponse' {} a -> s {id = a} :: UpdateWorkflowResponse)

-- | The time at which the migration workflow was last modified.
updateWorkflowResponse_lastModifiedTime :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.UTCTime)
updateWorkflowResponse_lastModifiedTime = Lens.lens (\UpdateWorkflowResponse' {lastModifiedTime} -> lastModifiedTime) (\s@UpdateWorkflowResponse' {} a -> s {lastModifiedTime = a} :: UpdateWorkflowResponse) Prelude.. Lens.mapping Core._Time

-- | The time at which the migration workflow was created.
updateWorkflowResponse_creationTime :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe Prelude.UTCTime)
updateWorkflowResponse_creationTime = Lens.lens (\UpdateWorkflowResponse' {creationTime} -> creationTime) (\s@UpdateWorkflowResponse' {} a -> s {creationTime = a} :: UpdateWorkflowResponse) Prelude.. Lens.mapping Core._Time

-- | The inputs required to update a migration workflow.
updateWorkflowResponse_workflowInputs :: Lens.Lens' UpdateWorkflowResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text StepInput))
updateWorkflowResponse_workflowInputs = Lens.lens (\UpdateWorkflowResponse' {workflowInputs} -> workflowInputs) (\s@UpdateWorkflowResponse' {} a -> s {workflowInputs = a} :: UpdateWorkflowResponse) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The response's http status code.
updateWorkflowResponse_httpStatus :: Lens.Lens' UpdateWorkflowResponse Prelude.Int
updateWorkflowResponse_httpStatus = Lens.lens (\UpdateWorkflowResponse' {httpStatus} -> httpStatus) (\s@UpdateWorkflowResponse' {} a -> s {httpStatus = a} :: UpdateWorkflowResponse)

instance Prelude.NFData UpdateWorkflowResponse where
  rnf UpdateWorkflowResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf stepTargets
      `Prelude.seq` Prelude.rnf adsApplicationConfigurationId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf templateId
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf workflowInputs
      `Prelude.seq` Prelude.rnf httpStatus

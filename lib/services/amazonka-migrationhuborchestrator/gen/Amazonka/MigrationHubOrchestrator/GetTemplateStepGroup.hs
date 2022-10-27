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
-- Module      : Amazonka.MigrationHubOrchestrator.GetTemplateStepGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a step group in a template.
module Amazonka.MigrationHubOrchestrator.GetTemplateStepGroup
  ( -- * Creating a Request
    GetTemplateStepGroup (..),
    newGetTemplateStepGroup,

    -- * Request Lenses
    getTemplateStepGroup_templateId,
    getTemplateStepGroup_id,

    -- * Destructuring the Response
    GetTemplateStepGroupResponse (..),
    newGetTemplateStepGroupResponse,

    -- * Response Lenses
    getTemplateStepGroupResponse_name,
    getTemplateStepGroupResponse_tools,
    getTemplateStepGroupResponse_next,
    getTemplateStepGroupResponse_status,
    getTemplateStepGroupResponse_description,
    getTemplateStepGroupResponse_templateId,
    getTemplateStepGroupResponse_id,
    getTemplateStepGroupResponse_lastModifiedTime,
    getTemplateStepGroupResponse_creationTime,
    getTemplateStepGroupResponse_previous,
    getTemplateStepGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTemplateStepGroup' smart constructor.
data GetTemplateStepGroup = GetTemplateStepGroup'
  { -- | The ID of the template.
    templateId :: Prelude.Text,
    -- | The ID of the step group.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTemplateStepGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateId', 'getTemplateStepGroup_templateId' - The ID of the template.
--
-- 'id', 'getTemplateStepGroup_id' - The ID of the step group.
newGetTemplateStepGroup ::
  -- | 'templateId'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  GetTemplateStepGroup
newGetTemplateStepGroup pTemplateId_ pId_ =
  GetTemplateStepGroup'
    { templateId = pTemplateId_,
      id = pId_
    }

-- | The ID of the template.
getTemplateStepGroup_templateId :: Lens.Lens' GetTemplateStepGroup Prelude.Text
getTemplateStepGroup_templateId = Lens.lens (\GetTemplateStepGroup' {templateId} -> templateId) (\s@GetTemplateStepGroup' {} a -> s {templateId = a} :: GetTemplateStepGroup)

-- | The ID of the step group.
getTemplateStepGroup_id :: Lens.Lens' GetTemplateStepGroup Prelude.Text
getTemplateStepGroup_id = Lens.lens (\GetTemplateStepGroup' {id} -> id) (\s@GetTemplateStepGroup' {} a -> s {id = a} :: GetTemplateStepGroup)

instance Core.AWSRequest GetTemplateStepGroup where
  type
    AWSResponse GetTemplateStepGroup =
      GetTemplateStepGroupResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTemplateStepGroupResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "tools" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "next" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "templateId")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "lastModifiedTime")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "previous" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetTemplateStepGroup where
  hashWithSalt _salt GetTemplateStepGroup' {..} =
    _salt `Prelude.hashWithSalt` templateId
      `Prelude.hashWithSalt` id

instance Prelude.NFData GetTemplateStepGroup where
  rnf GetTemplateStepGroup' {..} =
    Prelude.rnf templateId `Prelude.seq` Prelude.rnf id

instance Core.ToHeaders GetTemplateStepGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetTemplateStepGroup where
  toPath GetTemplateStepGroup' {..} =
    Prelude.mconcat
      [ "/templates/",
        Core.toBS templateId,
        "/stepgroups/",
        Core.toBS id
      ]

instance Core.ToQuery GetTemplateStepGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetTemplateStepGroupResponse' smart constructor.
data GetTemplateStepGroupResponse = GetTemplateStepGroupResponse'
  { -- | The name of the step group.
    name :: Prelude.Maybe Prelude.Text,
    -- | List of AWS services utilized in a migration workflow.
    tools :: Prelude.Maybe [Tool],
    -- | The next step group.
    next :: Prelude.Maybe [Prelude.Text],
    -- | The status of the step group.
    status :: Prelude.Maybe StepGroupStatus,
    -- | The description of the step group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the step group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the step group was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The time at which the step group was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The previous step group.
    previous :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTemplateStepGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getTemplateStepGroupResponse_name' - The name of the step group.
--
-- 'tools', 'getTemplateStepGroupResponse_tools' - List of AWS services utilized in a migration workflow.
--
-- 'next', 'getTemplateStepGroupResponse_next' - The next step group.
--
-- 'status', 'getTemplateStepGroupResponse_status' - The status of the step group.
--
-- 'description', 'getTemplateStepGroupResponse_description' - The description of the step group.
--
-- 'templateId', 'getTemplateStepGroupResponse_templateId' - The ID of the template.
--
-- 'id', 'getTemplateStepGroupResponse_id' - The ID of the step group.
--
-- 'lastModifiedTime', 'getTemplateStepGroupResponse_lastModifiedTime' - The time at which the step group was last modified.
--
-- 'creationTime', 'getTemplateStepGroupResponse_creationTime' - The time at which the step group was created.
--
-- 'previous', 'getTemplateStepGroupResponse_previous' - The previous step group.
--
-- 'httpStatus', 'getTemplateStepGroupResponse_httpStatus' - The response's http status code.
newGetTemplateStepGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTemplateStepGroupResponse
newGetTemplateStepGroupResponse pHttpStatus_ =
  GetTemplateStepGroupResponse'
    { name =
        Prelude.Nothing,
      tools = Prelude.Nothing,
      next = Prelude.Nothing,
      status = Prelude.Nothing,
      description = Prelude.Nothing,
      templateId = Prelude.Nothing,
      id = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      previous = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the step group.
getTemplateStepGroupResponse_name :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.Text)
getTemplateStepGroupResponse_name = Lens.lens (\GetTemplateStepGroupResponse' {name} -> name) (\s@GetTemplateStepGroupResponse' {} a -> s {name = a} :: GetTemplateStepGroupResponse)

-- | List of AWS services utilized in a migration workflow.
getTemplateStepGroupResponse_tools :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe [Tool])
getTemplateStepGroupResponse_tools = Lens.lens (\GetTemplateStepGroupResponse' {tools} -> tools) (\s@GetTemplateStepGroupResponse' {} a -> s {tools = a} :: GetTemplateStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next step group.
getTemplateStepGroupResponse_next :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe [Prelude.Text])
getTemplateStepGroupResponse_next = Lens.lens (\GetTemplateStepGroupResponse' {next} -> next) (\s@GetTemplateStepGroupResponse' {} a -> s {next = a} :: GetTemplateStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The status of the step group.
getTemplateStepGroupResponse_status :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe StepGroupStatus)
getTemplateStepGroupResponse_status = Lens.lens (\GetTemplateStepGroupResponse' {status} -> status) (\s@GetTemplateStepGroupResponse' {} a -> s {status = a} :: GetTemplateStepGroupResponse)

-- | The description of the step group.
getTemplateStepGroupResponse_description :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.Text)
getTemplateStepGroupResponse_description = Lens.lens (\GetTemplateStepGroupResponse' {description} -> description) (\s@GetTemplateStepGroupResponse' {} a -> s {description = a} :: GetTemplateStepGroupResponse)

-- | The ID of the template.
getTemplateStepGroupResponse_templateId :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.Text)
getTemplateStepGroupResponse_templateId = Lens.lens (\GetTemplateStepGroupResponse' {templateId} -> templateId) (\s@GetTemplateStepGroupResponse' {} a -> s {templateId = a} :: GetTemplateStepGroupResponse)

-- | The ID of the step group.
getTemplateStepGroupResponse_id :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.Text)
getTemplateStepGroupResponse_id = Lens.lens (\GetTemplateStepGroupResponse' {id} -> id) (\s@GetTemplateStepGroupResponse' {} a -> s {id = a} :: GetTemplateStepGroupResponse)

-- | The time at which the step group was last modified.
getTemplateStepGroupResponse_lastModifiedTime :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.UTCTime)
getTemplateStepGroupResponse_lastModifiedTime = Lens.lens (\GetTemplateStepGroupResponse' {lastModifiedTime} -> lastModifiedTime) (\s@GetTemplateStepGroupResponse' {} a -> s {lastModifiedTime = a} :: GetTemplateStepGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The time at which the step group was created.
getTemplateStepGroupResponse_creationTime :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe Prelude.UTCTime)
getTemplateStepGroupResponse_creationTime = Lens.lens (\GetTemplateStepGroupResponse' {creationTime} -> creationTime) (\s@GetTemplateStepGroupResponse' {} a -> s {creationTime = a} :: GetTemplateStepGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The previous step group.
getTemplateStepGroupResponse_previous :: Lens.Lens' GetTemplateStepGroupResponse (Prelude.Maybe [Prelude.Text])
getTemplateStepGroupResponse_previous = Lens.lens (\GetTemplateStepGroupResponse' {previous} -> previous) (\s@GetTemplateStepGroupResponse' {} a -> s {previous = a} :: GetTemplateStepGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getTemplateStepGroupResponse_httpStatus :: Lens.Lens' GetTemplateStepGroupResponse Prelude.Int
getTemplateStepGroupResponse_httpStatus = Lens.lens (\GetTemplateStepGroupResponse' {httpStatus} -> httpStatus) (\s@GetTemplateStepGroupResponse' {} a -> s {httpStatus = a} :: GetTemplateStepGroupResponse)

instance Prelude.NFData GetTemplateStepGroupResponse where
  rnf GetTemplateStepGroupResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf tools
      `Prelude.seq` Prelude.rnf next
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf templateId
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf previous
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Connect.GetTaskTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a specific task template in the specified Amazon
-- Connect instance.
module Amazonka.Connect.GetTaskTemplate
  ( -- * Creating a Request
    GetTaskTemplate (..),
    newGetTaskTemplate,

    -- * Request Lenses
    getTaskTemplate_snapshotVersion,
    getTaskTemplate_instanceId,
    getTaskTemplate_taskTemplateId,

    -- * Destructuring the Response
    GetTaskTemplateResponse (..),
    newGetTaskTemplateResponse,

    -- * Response Lenses
    getTaskTemplateResponse_tags,
    getTaskTemplateResponse_createdTime,
    getTaskTemplateResponse_constraints,
    getTaskTemplateResponse_status,
    getTaskTemplateResponse_fields,
    getTaskTemplateResponse_description,
    getTaskTemplateResponse_lastModifiedTime,
    getTaskTemplateResponse_instanceId,
    getTaskTemplateResponse_defaults,
    getTaskTemplateResponse_contactFlowId,
    getTaskTemplateResponse_httpStatus,
    getTaskTemplateResponse_id,
    getTaskTemplateResponse_arn,
    getTaskTemplateResponse_name,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTaskTemplate' smart constructor.
data GetTaskTemplate = GetTaskTemplate'
  { -- | The system generated version of a task template that is associated with
    -- a task, when the task is created.
    snapshotVersion :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text,
    -- | A unique identifier for the task template.
    taskTemplateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTaskTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snapshotVersion', 'getTaskTemplate_snapshotVersion' - The system generated version of a task template that is associated with
-- a task, when the task is created.
--
-- 'instanceId', 'getTaskTemplate_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'taskTemplateId', 'getTaskTemplate_taskTemplateId' - A unique identifier for the task template.
newGetTaskTemplate ::
  -- | 'instanceId'
  Prelude.Text ->
  -- | 'taskTemplateId'
  Prelude.Text ->
  GetTaskTemplate
newGetTaskTemplate pInstanceId_ pTaskTemplateId_ =
  GetTaskTemplate'
    { snapshotVersion = Prelude.Nothing,
      instanceId = pInstanceId_,
      taskTemplateId = pTaskTemplateId_
    }

-- | The system generated version of a task template that is associated with
-- a task, when the task is created.
getTaskTemplate_snapshotVersion :: Lens.Lens' GetTaskTemplate (Prelude.Maybe Prelude.Text)
getTaskTemplate_snapshotVersion = Lens.lens (\GetTaskTemplate' {snapshotVersion} -> snapshotVersion) (\s@GetTaskTemplate' {} a -> s {snapshotVersion = a} :: GetTaskTemplate)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
getTaskTemplate_instanceId :: Lens.Lens' GetTaskTemplate Prelude.Text
getTaskTemplate_instanceId = Lens.lens (\GetTaskTemplate' {instanceId} -> instanceId) (\s@GetTaskTemplate' {} a -> s {instanceId = a} :: GetTaskTemplate)

-- | A unique identifier for the task template.
getTaskTemplate_taskTemplateId :: Lens.Lens' GetTaskTemplate Prelude.Text
getTaskTemplate_taskTemplateId = Lens.lens (\GetTaskTemplate' {taskTemplateId} -> taskTemplateId) (\s@GetTaskTemplate' {} a -> s {taskTemplateId = a} :: GetTaskTemplate)

instance Core.AWSRequest GetTaskTemplate where
  type
    AWSResponse GetTaskTemplate =
      GetTaskTemplateResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTaskTemplateResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "CreatedTime")
            Prelude.<*> (x Core..?> "Constraints")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "Fields" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "InstanceId")
            Prelude.<*> (x Core..?> "Defaults")
            Prelude.<*> (x Core..?> "ContactFlowId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Id")
            Prelude.<*> (x Core..:> "Arn")
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable GetTaskTemplate where
  hashWithSalt _salt GetTaskTemplate' {..} =
    _salt `Prelude.hashWithSalt` snapshotVersion
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` taskTemplateId

instance Prelude.NFData GetTaskTemplate where
  rnf GetTaskTemplate' {..} =
    Prelude.rnf snapshotVersion
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf taskTemplateId

instance Core.ToHeaders GetTaskTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetTaskTemplate where
  toPath GetTaskTemplate' {..} =
    Prelude.mconcat
      [ "/instance/",
        Core.toBS instanceId,
        "/task/template/",
        Core.toBS taskTemplateId
      ]

instance Core.ToQuery GetTaskTemplate where
  toQuery GetTaskTemplate' {..} =
    Prelude.mconcat
      ["snapshotVersion" Core.=: snapshotVersion]

-- | /See:/ 'newGetTaskTemplateResponse' smart constructor.
data GetTaskTemplateResponse = GetTaskTemplateResponse'
  { -- | The tags used to organize, track, or control access for this resource.
    -- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The timestamp when the task template was created.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | Constraints that are applicable to the fields listed.
    constraints :: Prelude.Maybe TaskTemplateConstraints,
    -- | Marks a template as @ACTIVE@ or @INACTIVE@ for a task to refer to it.
    -- Tasks can only be created from @ACTIVE@ templates. If a template is
    -- marked as @INACTIVE@, then a task that refers to this template cannot be
    -- created.
    status :: Prelude.Maybe TaskTemplateStatus,
    -- | Fields that are part of the template.
    fields :: Prelude.Maybe [TaskTemplateField],
    -- | The description of the task template.
    description :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when the task template was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The default values for fields when a task is created by referencing this
    -- template.
    defaults :: Prelude.Maybe TaskTemplateDefaults,
    -- | The identifier of the flow that runs by default when a task is created
    -- by referencing this template.
    contactFlowId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A unique identifier for the task template.
    id :: Prelude.Text,
    -- | The Amazon Resource Name (ARN).
    arn :: Prelude.Text,
    -- | The name of the task template.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTaskTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getTaskTemplateResponse_tags' - The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
--
-- 'createdTime', 'getTaskTemplateResponse_createdTime' - The timestamp when the task template was created.
--
-- 'constraints', 'getTaskTemplateResponse_constraints' - Constraints that are applicable to the fields listed.
--
-- 'status', 'getTaskTemplateResponse_status' - Marks a template as @ACTIVE@ or @INACTIVE@ for a task to refer to it.
-- Tasks can only be created from @ACTIVE@ templates. If a template is
-- marked as @INACTIVE@, then a task that refers to this template cannot be
-- created.
--
-- 'fields', 'getTaskTemplateResponse_fields' - Fields that are part of the template.
--
-- 'description', 'getTaskTemplateResponse_description' - The description of the task template.
--
-- 'lastModifiedTime', 'getTaskTemplateResponse_lastModifiedTime' - The timestamp when the task template was last modified.
--
-- 'instanceId', 'getTaskTemplateResponse_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'defaults', 'getTaskTemplateResponse_defaults' - The default values for fields when a task is created by referencing this
-- template.
--
-- 'contactFlowId', 'getTaskTemplateResponse_contactFlowId' - The identifier of the flow that runs by default when a task is created
-- by referencing this template.
--
-- 'httpStatus', 'getTaskTemplateResponse_httpStatus' - The response's http status code.
--
-- 'id', 'getTaskTemplateResponse_id' - A unique identifier for the task template.
--
-- 'arn', 'getTaskTemplateResponse_arn' - The Amazon Resource Name (ARN).
--
-- 'name', 'getTaskTemplateResponse_name' - The name of the task template.
newGetTaskTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'id'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  GetTaskTemplateResponse
newGetTaskTemplateResponse
  pHttpStatus_
  pId_
  pArn_
  pName_ =
    GetTaskTemplateResponse'
      { tags = Prelude.Nothing,
        createdTime = Prelude.Nothing,
        constraints = Prelude.Nothing,
        status = Prelude.Nothing,
        fields = Prelude.Nothing,
        description = Prelude.Nothing,
        lastModifiedTime = Prelude.Nothing,
        instanceId = Prelude.Nothing,
        defaults = Prelude.Nothing,
        contactFlowId = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        id = pId_,
        arn = pArn_,
        name = pName_
      }

-- | The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
getTaskTemplateResponse_tags :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getTaskTemplateResponse_tags = Lens.lens (\GetTaskTemplateResponse' {tags} -> tags) (\s@GetTaskTemplateResponse' {} a -> s {tags = a} :: GetTaskTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The timestamp when the task template was created.
getTaskTemplateResponse_createdTime :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe Prelude.UTCTime)
getTaskTemplateResponse_createdTime = Lens.lens (\GetTaskTemplateResponse' {createdTime} -> createdTime) (\s@GetTaskTemplateResponse' {} a -> s {createdTime = a} :: GetTaskTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | Constraints that are applicable to the fields listed.
getTaskTemplateResponse_constraints :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe TaskTemplateConstraints)
getTaskTemplateResponse_constraints = Lens.lens (\GetTaskTemplateResponse' {constraints} -> constraints) (\s@GetTaskTemplateResponse' {} a -> s {constraints = a} :: GetTaskTemplateResponse)

-- | Marks a template as @ACTIVE@ or @INACTIVE@ for a task to refer to it.
-- Tasks can only be created from @ACTIVE@ templates. If a template is
-- marked as @INACTIVE@, then a task that refers to this template cannot be
-- created.
getTaskTemplateResponse_status :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe TaskTemplateStatus)
getTaskTemplateResponse_status = Lens.lens (\GetTaskTemplateResponse' {status} -> status) (\s@GetTaskTemplateResponse' {} a -> s {status = a} :: GetTaskTemplateResponse)

-- | Fields that are part of the template.
getTaskTemplateResponse_fields :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe [TaskTemplateField])
getTaskTemplateResponse_fields = Lens.lens (\GetTaskTemplateResponse' {fields} -> fields) (\s@GetTaskTemplateResponse' {} a -> s {fields = a} :: GetTaskTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The description of the task template.
getTaskTemplateResponse_description :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe Prelude.Text)
getTaskTemplateResponse_description = Lens.lens (\GetTaskTemplateResponse' {description} -> description) (\s@GetTaskTemplateResponse' {} a -> s {description = a} :: GetTaskTemplateResponse)

-- | The timestamp when the task template was last modified.
getTaskTemplateResponse_lastModifiedTime :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe Prelude.UTCTime)
getTaskTemplateResponse_lastModifiedTime = Lens.lens (\GetTaskTemplateResponse' {lastModifiedTime} -> lastModifiedTime) (\s@GetTaskTemplateResponse' {} a -> s {lastModifiedTime = a} :: GetTaskTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
getTaskTemplateResponse_instanceId :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe Prelude.Text)
getTaskTemplateResponse_instanceId = Lens.lens (\GetTaskTemplateResponse' {instanceId} -> instanceId) (\s@GetTaskTemplateResponse' {} a -> s {instanceId = a} :: GetTaskTemplateResponse)

-- | The default values for fields when a task is created by referencing this
-- template.
getTaskTemplateResponse_defaults :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe TaskTemplateDefaults)
getTaskTemplateResponse_defaults = Lens.lens (\GetTaskTemplateResponse' {defaults} -> defaults) (\s@GetTaskTemplateResponse' {} a -> s {defaults = a} :: GetTaskTemplateResponse)

-- | The identifier of the flow that runs by default when a task is created
-- by referencing this template.
getTaskTemplateResponse_contactFlowId :: Lens.Lens' GetTaskTemplateResponse (Prelude.Maybe Prelude.Text)
getTaskTemplateResponse_contactFlowId = Lens.lens (\GetTaskTemplateResponse' {contactFlowId} -> contactFlowId) (\s@GetTaskTemplateResponse' {} a -> s {contactFlowId = a} :: GetTaskTemplateResponse)

-- | The response's http status code.
getTaskTemplateResponse_httpStatus :: Lens.Lens' GetTaskTemplateResponse Prelude.Int
getTaskTemplateResponse_httpStatus = Lens.lens (\GetTaskTemplateResponse' {httpStatus} -> httpStatus) (\s@GetTaskTemplateResponse' {} a -> s {httpStatus = a} :: GetTaskTemplateResponse)

-- | A unique identifier for the task template.
getTaskTemplateResponse_id :: Lens.Lens' GetTaskTemplateResponse Prelude.Text
getTaskTemplateResponse_id = Lens.lens (\GetTaskTemplateResponse' {id} -> id) (\s@GetTaskTemplateResponse' {} a -> s {id = a} :: GetTaskTemplateResponse)

-- | The Amazon Resource Name (ARN).
getTaskTemplateResponse_arn :: Lens.Lens' GetTaskTemplateResponse Prelude.Text
getTaskTemplateResponse_arn = Lens.lens (\GetTaskTemplateResponse' {arn} -> arn) (\s@GetTaskTemplateResponse' {} a -> s {arn = a} :: GetTaskTemplateResponse)

-- | The name of the task template.
getTaskTemplateResponse_name :: Lens.Lens' GetTaskTemplateResponse Prelude.Text
getTaskTemplateResponse_name = Lens.lens (\GetTaskTemplateResponse' {name} -> name) (\s@GetTaskTemplateResponse' {} a -> s {name = a} :: GetTaskTemplateResponse)

instance Prelude.NFData GetTaskTemplateResponse where
  rnf GetTaskTemplateResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf constraints
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf fields
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf defaults
      `Prelude.seq` Prelude.rnf contactFlowId
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf name

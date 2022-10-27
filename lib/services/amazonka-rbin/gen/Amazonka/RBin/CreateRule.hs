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
-- Module      : Amazonka.RBin.CreateRule
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Recycle Bin retention rule. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule Create Recycle Bin retention rules>
-- in the /Amazon Elastic Compute Cloud User Guide/.
module Amazonka.RBin.CreateRule
  ( -- * Creating a Request
    CreateRule (..),
    newCreateRule,

    -- * Request Lenses
    createRule_tags,
    createRule_resourceTags,
    createRule_description,
    createRule_retentionPeriod,
    createRule_resourceType,

    -- * Destructuring the Response
    CreateRuleResponse (..),
    newCreateRuleResponse,

    -- * Response Lenses
    createRuleResponse_tags,
    createRuleResponse_resourceType,
    createRuleResponse_status,
    createRuleResponse_resourceTags,
    createRuleResponse_description,
    createRuleResponse_retentionPeriod,
    createRuleResponse_identifier,
    createRuleResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RBin.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRule' smart constructor.
data CreateRule = CreateRule'
  { -- | Information about the tags to assign to the retention rule.
    tags :: Prelude.Maybe [Tag],
    -- | Specifies the resource tags to use to identify resources that are to be
    -- retained by a tag-level retention rule. For tag-level retention rules,
    -- only deleted resources, of the specified resource type, that have one or
    -- more of the specified tag key and value pairs are retained. If a
    -- resource is deleted, but it does not have any of the specified tag key
    -- and value pairs, it is immediately deleted without being retained by the
    -- retention rule.
    --
    -- You can add the same tag key and value pair to a maximum or five
    -- retention rules.
    --
    -- To create a Region-level retention rule, omit this parameter. A
    -- Region-level retention rule does not have any resource tags specified.
    -- It retains all deleted resources of the specified resource type in the
    -- Region in which the rule is created, even if the resources are not
    -- tagged.
    resourceTags :: Prelude.Maybe [ResourceTag],
    -- | The retention rule description.
    description :: Prelude.Maybe Prelude.Text,
    -- | Information about the retention period for which the retention rule is
    -- to retain resources.
    retentionPeriod :: RetentionPeriod,
    -- | The resource type to be retained by the retention rule. Currently, only
    -- Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
    -- snapshots, specify @EBS_SNAPSHOT@. To retain EBS-backed AMIs, specify
    -- @EC2_IMAGE@.
    resourceType :: ResourceType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRule_tags' - Information about the tags to assign to the retention rule.
--
-- 'resourceTags', 'createRule_resourceTags' - Specifies the resource tags to use to identify resources that are to be
-- retained by a tag-level retention rule. For tag-level retention rules,
-- only deleted resources, of the specified resource type, that have one or
-- more of the specified tag key and value pairs are retained. If a
-- resource is deleted, but it does not have any of the specified tag key
-- and value pairs, it is immediately deleted without being retained by the
-- retention rule.
--
-- You can add the same tag key and value pair to a maximum or five
-- retention rules.
--
-- To create a Region-level retention rule, omit this parameter. A
-- Region-level retention rule does not have any resource tags specified.
-- It retains all deleted resources of the specified resource type in the
-- Region in which the rule is created, even if the resources are not
-- tagged.
--
-- 'description', 'createRule_description' - The retention rule description.
--
-- 'retentionPeriod', 'createRule_retentionPeriod' - Information about the retention period for which the retention rule is
-- to retain resources.
--
-- 'resourceType', 'createRule_resourceType' - The resource type to be retained by the retention rule. Currently, only
-- Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
-- snapshots, specify @EBS_SNAPSHOT@. To retain EBS-backed AMIs, specify
-- @EC2_IMAGE@.
newCreateRule ::
  -- | 'retentionPeriod'
  RetentionPeriod ->
  -- | 'resourceType'
  ResourceType ->
  CreateRule
newCreateRule pRetentionPeriod_ pResourceType_ =
  CreateRule'
    { tags = Prelude.Nothing,
      resourceTags = Prelude.Nothing,
      description = Prelude.Nothing,
      retentionPeriod = pRetentionPeriod_,
      resourceType = pResourceType_
    }

-- | Information about the tags to assign to the retention rule.
createRule_tags :: Lens.Lens' CreateRule (Prelude.Maybe [Tag])
createRule_tags = Lens.lens (\CreateRule' {tags} -> tags) (\s@CreateRule' {} a -> s {tags = a} :: CreateRule) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the resource tags to use to identify resources that are to be
-- retained by a tag-level retention rule. For tag-level retention rules,
-- only deleted resources, of the specified resource type, that have one or
-- more of the specified tag key and value pairs are retained. If a
-- resource is deleted, but it does not have any of the specified tag key
-- and value pairs, it is immediately deleted without being retained by the
-- retention rule.
--
-- You can add the same tag key and value pair to a maximum or five
-- retention rules.
--
-- To create a Region-level retention rule, omit this parameter. A
-- Region-level retention rule does not have any resource tags specified.
-- It retains all deleted resources of the specified resource type in the
-- Region in which the rule is created, even if the resources are not
-- tagged.
createRule_resourceTags :: Lens.Lens' CreateRule (Prelude.Maybe [ResourceTag])
createRule_resourceTags = Lens.lens (\CreateRule' {resourceTags} -> resourceTags) (\s@CreateRule' {} a -> s {resourceTags = a} :: CreateRule) Prelude.. Lens.mapping Lens.coerced

-- | The retention rule description.
createRule_description :: Lens.Lens' CreateRule (Prelude.Maybe Prelude.Text)
createRule_description = Lens.lens (\CreateRule' {description} -> description) (\s@CreateRule' {} a -> s {description = a} :: CreateRule)

-- | Information about the retention period for which the retention rule is
-- to retain resources.
createRule_retentionPeriod :: Lens.Lens' CreateRule RetentionPeriod
createRule_retentionPeriod = Lens.lens (\CreateRule' {retentionPeriod} -> retentionPeriod) (\s@CreateRule' {} a -> s {retentionPeriod = a} :: CreateRule)

-- | The resource type to be retained by the retention rule. Currently, only
-- Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
-- snapshots, specify @EBS_SNAPSHOT@. To retain EBS-backed AMIs, specify
-- @EC2_IMAGE@.
createRule_resourceType :: Lens.Lens' CreateRule ResourceType
createRule_resourceType = Lens.lens (\CreateRule' {resourceType} -> resourceType) (\s@CreateRule' {} a -> s {resourceType = a} :: CreateRule)

instance Core.AWSRequest CreateRule where
  type AWSResponse CreateRule = CreateRuleResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRuleResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ResourceType")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "ResourceTags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "RetentionPeriod")
            Prelude.<*> (x Core..?> "Identifier")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRule where
  hashWithSalt _salt CreateRule' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` resourceTags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` retentionPeriod
      `Prelude.hashWithSalt` resourceType

instance Prelude.NFData CreateRule where
  rnf CreateRule' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceTags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf retentionPeriod
      `Prelude.seq` Prelude.rnf resourceType

instance Core.ToHeaders CreateRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRule where
  toJSON CreateRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ResourceTags" Core..=) Prelude.<$> resourceTags,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just
              ("RetentionPeriod" Core..= retentionPeriod),
            Prelude.Just ("ResourceType" Core..= resourceType)
          ]
      )

instance Core.ToPath CreateRule where
  toPath = Prelude.const "/rules"

instance Core.ToQuery CreateRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRuleResponse' smart constructor.
data CreateRuleResponse = CreateRuleResponse'
  { -- | Information about the tags assigned to the retention rule.
    tags :: Prelude.Maybe [Tag],
    -- | The resource type retained by the retention rule.
    resourceType :: Prelude.Maybe ResourceType,
    -- | The state of the retention rule. Only retention rules that are in the
    -- @available@ state retain resources.
    status :: Prelude.Maybe RuleStatus,
    -- | Information about the resource tags used to identify resources that are
    -- retained by the retention rule.
    resourceTags :: Prelude.Maybe [ResourceTag],
    -- | The retention rule description.
    description :: Prelude.Maybe Prelude.Text,
    retentionPeriod :: Prelude.Maybe RetentionPeriod,
    -- | The unique ID of the retention rule.
    identifier :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRuleResponse_tags' - Information about the tags assigned to the retention rule.
--
-- 'resourceType', 'createRuleResponse_resourceType' - The resource type retained by the retention rule.
--
-- 'status', 'createRuleResponse_status' - The state of the retention rule. Only retention rules that are in the
-- @available@ state retain resources.
--
-- 'resourceTags', 'createRuleResponse_resourceTags' - Information about the resource tags used to identify resources that are
-- retained by the retention rule.
--
-- 'description', 'createRuleResponse_description' - The retention rule description.
--
-- 'retentionPeriod', 'createRuleResponse_retentionPeriod' - Undocumented member.
--
-- 'identifier', 'createRuleResponse_identifier' - The unique ID of the retention rule.
--
-- 'httpStatus', 'createRuleResponse_httpStatus' - The response's http status code.
newCreateRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRuleResponse
newCreateRuleResponse pHttpStatus_ =
  CreateRuleResponse'
    { tags = Prelude.Nothing,
      resourceType = Prelude.Nothing,
      status = Prelude.Nothing,
      resourceTags = Prelude.Nothing,
      description = Prelude.Nothing,
      retentionPeriod = Prelude.Nothing,
      identifier = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the tags assigned to the retention rule.
createRuleResponse_tags :: Lens.Lens' CreateRuleResponse (Prelude.Maybe [Tag])
createRuleResponse_tags = Lens.lens (\CreateRuleResponse' {tags} -> tags) (\s@CreateRuleResponse' {} a -> s {tags = a} :: CreateRuleResponse) Prelude.. Lens.mapping Lens.coerced

-- | The resource type retained by the retention rule.
createRuleResponse_resourceType :: Lens.Lens' CreateRuleResponse (Prelude.Maybe ResourceType)
createRuleResponse_resourceType = Lens.lens (\CreateRuleResponse' {resourceType} -> resourceType) (\s@CreateRuleResponse' {} a -> s {resourceType = a} :: CreateRuleResponse)

-- | The state of the retention rule. Only retention rules that are in the
-- @available@ state retain resources.
createRuleResponse_status :: Lens.Lens' CreateRuleResponse (Prelude.Maybe RuleStatus)
createRuleResponse_status = Lens.lens (\CreateRuleResponse' {status} -> status) (\s@CreateRuleResponse' {} a -> s {status = a} :: CreateRuleResponse)

-- | Information about the resource tags used to identify resources that are
-- retained by the retention rule.
createRuleResponse_resourceTags :: Lens.Lens' CreateRuleResponse (Prelude.Maybe [ResourceTag])
createRuleResponse_resourceTags = Lens.lens (\CreateRuleResponse' {resourceTags} -> resourceTags) (\s@CreateRuleResponse' {} a -> s {resourceTags = a} :: CreateRuleResponse) Prelude.. Lens.mapping Lens.coerced

-- | The retention rule description.
createRuleResponse_description :: Lens.Lens' CreateRuleResponse (Prelude.Maybe Prelude.Text)
createRuleResponse_description = Lens.lens (\CreateRuleResponse' {description} -> description) (\s@CreateRuleResponse' {} a -> s {description = a} :: CreateRuleResponse)

-- | Undocumented member.
createRuleResponse_retentionPeriod :: Lens.Lens' CreateRuleResponse (Prelude.Maybe RetentionPeriod)
createRuleResponse_retentionPeriod = Lens.lens (\CreateRuleResponse' {retentionPeriod} -> retentionPeriod) (\s@CreateRuleResponse' {} a -> s {retentionPeriod = a} :: CreateRuleResponse)

-- | The unique ID of the retention rule.
createRuleResponse_identifier :: Lens.Lens' CreateRuleResponse (Prelude.Maybe Prelude.Text)
createRuleResponse_identifier = Lens.lens (\CreateRuleResponse' {identifier} -> identifier) (\s@CreateRuleResponse' {} a -> s {identifier = a} :: CreateRuleResponse)

-- | The response's http status code.
createRuleResponse_httpStatus :: Lens.Lens' CreateRuleResponse Prelude.Int
createRuleResponse_httpStatus = Lens.lens (\CreateRuleResponse' {httpStatus} -> httpStatus) (\s@CreateRuleResponse' {} a -> s {httpStatus = a} :: CreateRuleResponse)

instance Prelude.NFData CreateRuleResponse where
  rnf CreateRuleResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf resourceTags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf retentionPeriod
      `Prelude.seq` Prelude.rnf identifier
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.MemoryDb.CreateSubnetGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a subnet group. A subnet group is a collection of subnets
-- (typically private) that you can designate for your clusters running in
-- an Amazon Virtual Private Cloud (VPC) environment. When you create a
-- cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses
-- that subnet group to choose a subnet and IP addresses within that subnet
-- to associate with your nodes. For more information, see
-- <https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html Subnets and subnet groups>.
module Amazonka.MemoryDb.CreateSubnetGroup
  ( -- * Creating a Request
    CreateSubnetGroup (..),
    newCreateSubnetGroup,

    -- * Request Lenses
    createSubnetGroup_tags,
    createSubnetGroup_description,
    createSubnetGroup_subnetGroupName,
    createSubnetGroup_subnetIds,

    -- * Destructuring the Response
    CreateSubnetGroupResponse (..),
    newCreateSubnetGroupResponse,

    -- * Response Lenses
    createSubnetGroupResponse_subnetGroup,
    createSubnetGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MemoryDb.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateSubnetGroup' smart constructor.
data CreateSubnetGroup = CreateSubnetGroup'
  { -- | A list of tags to be added to this resource. A tag is a key-value pair.
    -- A tag key must be accompanied by a tag value, although null is accepted.
    tags :: Prelude.Maybe [Tag],
    -- | A description for the subnet group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the subnet group.
    subnetGroupName :: Prelude.Text,
    -- | A list of VPC subnet IDs for the subnet group.
    subnetIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createSubnetGroup_tags' - A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
--
-- 'description', 'createSubnetGroup_description' - A description for the subnet group.
--
-- 'subnetGroupName', 'createSubnetGroup_subnetGroupName' - The name of the subnet group.
--
-- 'subnetIds', 'createSubnetGroup_subnetIds' - A list of VPC subnet IDs for the subnet group.
newCreateSubnetGroup ::
  -- | 'subnetGroupName'
  Prelude.Text ->
  CreateSubnetGroup
newCreateSubnetGroup pSubnetGroupName_ =
  CreateSubnetGroup'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      subnetGroupName = pSubnetGroupName_,
      subnetIds = Prelude.mempty
    }

-- | A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
createSubnetGroup_tags :: Lens.Lens' CreateSubnetGroup (Prelude.Maybe [Tag])
createSubnetGroup_tags = Lens.lens (\CreateSubnetGroup' {tags} -> tags) (\s@CreateSubnetGroup' {} a -> s {tags = a} :: CreateSubnetGroup) Prelude.. Lens.mapping Lens.coerced

-- | A description for the subnet group.
createSubnetGroup_description :: Lens.Lens' CreateSubnetGroup (Prelude.Maybe Prelude.Text)
createSubnetGroup_description = Lens.lens (\CreateSubnetGroup' {description} -> description) (\s@CreateSubnetGroup' {} a -> s {description = a} :: CreateSubnetGroup)

-- | The name of the subnet group.
createSubnetGroup_subnetGroupName :: Lens.Lens' CreateSubnetGroup Prelude.Text
createSubnetGroup_subnetGroupName = Lens.lens (\CreateSubnetGroup' {subnetGroupName} -> subnetGroupName) (\s@CreateSubnetGroup' {} a -> s {subnetGroupName = a} :: CreateSubnetGroup)

-- | A list of VPC subnet IDs for the subnet group.
createSubnetGroup_subnetIds :: Lens.Lens' CreateSubnetGroup [Prelude.Text]
createSubnetGroup_subnetIds = Lens.lens (\CreateSubnetGroup' {subnetIds} -> subnetIds) (\s@CreateSubnetGroup' {} a -> s {subnetIds = a} :: CreateSubnetGroup) Prelude.. Lens.coerced

instance Core.AWSRequest CreateSubnetGroup where
  type
    AWSResponse CreateSubnetGroup =
      CreateSubnetGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSubnetGroupResponse'
            Prelude.<$> (x Core..?> "SubnetGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSubnetGroup where
  hashWithSalt _salt CreateSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` subnetGroupName
      `Prelude.hashWithSalt` subnetIds

instance Prelude.NFData CreateSubnetGroup where
  rnf CreateSubnetGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf subnetGroupName
      `Prelude.seq` Prelude.rnf subnetIds

instance Core.ToHeaders CreateSubnetGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonMemoryDB.CreateSubnetGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSubnetGroup where
  toJSON CreateSubnetGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just
              ("SubnetGroupName" Core..= subnetGroupName),
            Prelude.Just ("SubnetIds" Core..= subnetIds)
          ]
      )

instance Core.ToPath CreateSubnetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateSubnetGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSubnetGroupResponse' smart constructor.
data CreateSubnetGroupResponse = CreateSubnetGroupResponse'
  { -- | The newly-created subnet group
    subnetGroup :: Prelude.Maybe SubnetGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetGroup', 'createSubnetGroupResponse_subnetGroup' - The newly-created subnet group
--
-- 'httpStatus', 'createSubnetGroupResponse_httpStatus' - The response's http status code.
newCreateSubnetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSubnetGroupResponse
newCreateSubnetGroupResponse pHttpStatus_ =
  CreateSubnetGroupResponse'
    { subnetGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The newly-created subnet group
createSubnetGroupResponse_subnetGroup :: Lens.Lens' CreateSubnetGroupResponse (Prelude.Maybe SubnetGroup)
createSubnetGroupResponse_subnetGroup = Lens.lens (\CreateSubnetGroupResponse' {subnetGroup} -> subnetGroup) (\s@CreateSubnetGroupResponse' {} a -> s {subnetGroup = a} :: CreateSubnetGroupResponse)

-- | The response's http status code.
createSubnetGroupResponse_httpStatus :: Lens.Lens' CreateSubnetGroupResponse Prelude.Int
createSubnetGroupResponse_httpStatus = Lens.lens (\CreateSubnetGroupResponse' {httpStatus} -> httpStatus) (\s@CreateSubnetGroupResponse' {} a -> s {httpStatus = a} :: CreateSubnetGroupResponse)

instance Prelude.NFData CreateSubnetGroupResponse where
  rnf CreateSubnetGroupResponse' {..} =
    Prelude.rnf subnetGroup
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Redshift.CreateClusterSubnetGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Redshift subnet group. You must provide a list of
-- one or more subnets in your existing Amazon Virtual Private Cloud
-- (Amazon VPC) when creating Amazon Redshift subnet group.
--
-- For information about subnet groups, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html Amazon Redshift Cluster Subnet Groups>
-- in the /Amazon Redshift Cluster Management Guide/.
module Amazonka.Redshift.CreateClusterSubnetGroup
  ( -- * Creating a Request
    CreateClusterSubnetGroup (..),
    newCreateClusterSubnetGroup,

    -- * Request Lenses
    createClusterSubnetGroup_tags,
    createClusterSubnetGroup_clusterSubnetGroupName,
    createClusterSubnetGroup_description,
    createClusterSubnetGroup_subnetIds,

    -- * Destructuring the Response
    CreateClusterSubnetGroupResponse (..),
    newCreateClusterSubnetGroupResponse,

    -- * Response Lenses
    createClusterSubnetGroupResponse_clusterSubnetGroup,
    createClusterSubnetGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newCreateClusterSubnetGroup' smart constructor.
data CreateClusterSubnetGroup = CreateClusterSubnetGroup'
  { -- | A list of tag instances.
    tags :: Prelude.Maybe [Tag],
    -- | The name for the subnet group. Amazon Redshift stores the value as a
    -- lowercase string.
    --
    -- Constraints:
    --
    -- -   Must contain no more than 255 alphanumeric characters or hyphens.
    --
    -- -   Must not be \"Default\".
    --
    -- -   Must be unique for all subnet groups that are created by your Amazon
    --     Web Services account.
    --
    -- Example: @examplesubnetgroup@
    clusterSubnetGroupName :: Prelude.Text,
    -- | A description for the subnet group.
    description :: Prelude.Text,
    -- | An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a
    -- single request.
    subnetIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateClusterSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createClusterSubnetGroup_tags' - A list of tag instances.
--
-- 'clusterSubnetGroupName', 'createClusterSubnetGroup_clusterSubnetGroupName' - The name for the subnet group. Amazon Redshift stores the value as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain no more than 255 alphanumeric characters or hyphens.
--
-- -   Must not be \"Default\".
--
-- -   Must be unique for all subnet groups that are created by your Amazon
--     Web Services account.
--
-- Example: @examplesubnetgroup@
--
-- 'description', 'createClusterSubnetGroup_description' - A description for the subnet group.
--
-- 'subnetIds', 'createClusterSubnetGroup_subnetIds' - An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a
-- single request.
newCreateClusterSubnetGroup ::
  -- | 'clusterSubnetGroupName'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateClusterSubnetGroup
newCreateClusterSubnetGroup
  pClusterSubnetGroupName_
  pDescription_ =
    CreateClusterSubnetGroup'
      { tags = Prelude.Nothing,
        clusterSubnetGroupName = pClusterSubnetGroupName_,
        description = pDescription_,
        subnetIds = Prelude.mempty
      }

-- | A list of tag instances.
createClusterSubnetGroup_tags :: Lens.Lens' CreateClusterSubnetGroup (Prelude.Maybe [Tag])
createClusterSubnetGroup_tags = Lens.lens (\CreateClusterSubnetGroup' {tags} -> tags) (\s@CreateClusterSubnetGroup' {} a -> s {tags = a} :: CreateClusterSubnetGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name for the subnet group. Amazon Redshift stores the value as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain no more than 255 alphanumeric characters or hyphens.
--
-- -   Must not be \"Default\".
--
-- -   Must be unique for all subnet groups that are created by your Amazon
--     Web Services account.
--
-- Example: @examplesubnetgroup@
createClusterSubnetGroup_clusterSubnetGroupName :: Lens.Lens' CreateClusterSubnetGroup Prelude.Text
createClusterSubnetGroup_clusterSubnetGroupName = Lens.lens (\CreateClusterSubnetGroup' {clusterSubnetGroupName} -> clusterSubnetGroupName) (\s@CreateClusterSubnetGroup' {} a -> s {clusterSubnetGroupName = a} :: CreateClusterSubnetGroup)

-- | A description for the subnet group.
createClusterSubnetGroup_description :: Lens.Lens' CreateClusterSubnetGroup Prelude.Text
createClusterSubnetGroup_description = Lens.lens (\CreateClusterSubnetGroup' {description} -> description) (\s@CreateClusterSubnetGroup' {} a -> s {description = a} :: CreateClusterSubnetGroup)

-- | An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a
-- single request.
createClusterSubnetGroup_subnetIds :: Lens.Lens' CreateClusterSubnetGroup [Prelude.Text]
createClusterSubnetGroup_subnetIds = Lens.lens (\CreateClusterSubnetGroup' {subnetIds} -> subnetIds) (\s@CreateClusterSubnetGroup' {} a -> s {subnetIds = a} :: CreateClusterSubnetGroup) Prelude.. Lens.coerced

instance Core.AWSRequest CreateClusterSubnetGroup where
  type
    AWSResponse CreateClusterSubnetGroup =
      CreateClusterSubnetGroupResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateClusterSubnetGroupResult"
      ( \s h x ->
          CreateClusterSubnetGroupResponse'
            Prelude.<$> (x Core..@? "ClusterSubnetGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateClusterSubnetGroup where
  hashWithSalt _salt CreateClusterSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clusterSubnetGroupName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` subnetIds

instance Prelude.NFData CreateClusterSubnetGroup where
  rnf CreateClusterSubnetGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clusterSubnetGroupName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf subnetIds

instance Core.ToHeaders CreateClusterSubnetGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateClusterSubnetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateClusterSubnetGroup where
  toQuery CreateClusterSubnetGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateClusterSubnetGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "ClusterSubnetGroupName"
          Core.=: clusterSubnetGroupName,
        "Description" Core.=: description,
        "SubnetIds"
          Core.=: Core.toQueryList "SubnetIdentifier" subnetIds
      ]

-- | /See:/ 'newCreateClusterSubnetGroupResponse' smart constructor.
data CreateClusterSubnetGroupResponse = CreateClusterSubnetGroupResponse'
  { clusterSubnetGroup :: Prelude.Maybe ClusterSubnetGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateClusterSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterSubnetGroup', 'createClusterSubnetGroupResponse_clusterSubnetGroup' - Undocumented member.
--
-- 'httpStatus', 'createClusterSubnetGroupResponse_httpStatus' - The response's http status code.
newCreateClusterSubnetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateClusterSubnetGroupResponse
newCreateClusterSubnetGroupResponse pHttpStatus_ =
  CreateClusterSubnetGroupResponse'
    { clusterSubnetGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createClusterSubnetGroupResponse_clusterSubnetGroup :: Lens.Lens' CreateClusterSubnetGroupResponse (Prelude.Maybe ClusterSubnetGroup)
createClusterSubnetGroupResponse_clusterSubnetGroup = Lens.lens (\CreateClusterSubnetGroupResponse' {clusterSubnetGroup} -> clusterSubnetGroup) (\s@CreateClusterSubnetGroupResponse' {} a -> s {clusterSubnetGroup = a} :: CreateClusterSubnetGroupResponse)

-- | The response's http status code.
createClusterSubnetGroupResponse_httpStatus :: Lens.Lens' CreateClusterSubnetGroupResponse Prelude.Int
createClusterSubnetGroupResponse_httpStatus = Lens.lens (\CreateClusterSubnetGroupResponse' {httpStatus} -> httpStatus) (\s@CreateClusterSubnetGroupResponse' {} a -> s {httpStatus = a} :: CreateClusterSubnetGroupResponse)

instance
  Prelude.NFData
    CreateClusterSubnetGroupResponse
  where
  rnf CreateClusterSubnetGroupResponse' {..} =
    Prelude.rnf clusterSubnetGroup
      `Prelude.seq` Prelude.rnf httpStatus

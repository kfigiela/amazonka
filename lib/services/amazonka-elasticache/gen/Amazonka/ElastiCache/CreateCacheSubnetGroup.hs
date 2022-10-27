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
-- Module      : Amazonka.ElastiCache.CreateCacheSubnetGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cache subnet group.
--
-- Use this parameter only when you are creating a cluster in an Amazon
-- Virtual Private Cloud (Amazon VPC).
module Amazonka.ElastiCache.CreateCacheSubnetGroup
  ( -- * Creating a Request
    CreateCacheSubnetGroup (..),
    newCreateCacheSubnetGroup,

    -- * Request Lenses
    createCacheSubnetGroup_tags,
    createCacheSubnetGroup_cacheSubnetGroupName,
    createCacheSubnetGroup_cacheSubnetGroupDescription,
    createCacheSubnetGroup_subnetIds,

    -- * Destructuring the Response
    CreateCacheSubnetGroupResponse (..),
    newCreateCacheSubnetGroupResponse,

    -- * Response Lenses
    createCacheSubnetGroupResponse_cacheSubnetGroup,
    createCacheSubnetGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElastiCache.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @CreateCacheSubnetGroup@ operation.
--
-- /See:/ 'newCreateCacheSubnetGroup' smart constructor.
data CreateCacheSubnetGroup = CreateCacheSubnetGroup'
  { -- | A list of tags to be added to this resource. A tag is a key-value pair.
    -- A tag key must be accompanied by a tag value, although null is accepted.
    tags :: Prelude.Maybe [Tag],
    -- | A name for the cache subnet group. This value is stored as a lowercase
    -- string.
    --
    -- Constraints: Must contain no more than 255 alphanumeric characters or
    -- hyphens.
    --
    -- Example: @mysubnetgroup@
    cacheSubnetGroupName :: Prelude.Text,
    -- | A description for the cache subnet group.
    cacheSubnetGroupDescription :: Prelude.Text,
    -- | A list of VPC subnet IDs for the cache subnet group.
    subnetIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCacheSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createCacheSubnetGroup_tags' - A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
--
-- 'cacheSubnetGroupName', 'createCacheSubnetGroup_cacheSubnetGroupName' - A name for the cache subnet group. This value is stored as a lowercase
-- string.
--
-- Constraints: Must contain no more than 255 alphanumeric characters or
-- hyphens.
--
-- Example: @mysubnetgroup@
--
-- 'cacheSubnetGroupDescription', 'createCacheSubnetGroup_cacheSubnetGroupDescription' - A description for the cache subnet group.
--
-- 'subnetIds', 'createCacheSubnetGroup_subnetIds' - A list of VPC subnet IDs for the cache subnet group.
newCreateCacheSubnetGroup ::
  -- | 'cacheSubnetGroupName'
  Prelude.Text ->
  -- | 'cacheSubnetGroupDescription'
  Prelude.Text ->
  CreateCacheSubnetGroup
newCreateCacheSubnetGroup
  pCacheSubnetGroupName_
  pCacheSubnetGroupDescription_ =
    CreateCacheSubnetGroup'
      { tags = Prelude.Nothing,
        cacheSubnetGroupName = pCacheSubnetGroupName_,
        cacheSubnetGroupDescription =
          pCacheSubnetGroupDescription_,
        subnetIds = Prelude.mempty
      }

-- | A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
createCacheSubnetGroup_tags :: Lens.Lens' CreateCacheSubnetGroup (Prelude.Maybe [Tag])
createCacheSubnetGroup_tags = Lens.lens (\CreateCacheSubnetGroup' {tags} -> tags) (\s@CreateCacheSubnetGroup' {} a -> s {tags = a} :: CreateCacheSubnetGroup) Prelude.. Lens.mapping Lens.coerced

-- | A name for the cache subnet group. This value is stored as a lowercase
-- string.
--
-- Constraints: Must contain no more than 255 alphanumeric characters or
-- hyphens.
--
-- Example: @mysubnetgroup@
createCacheSubnetGroup_cacheSubnetGroupName :: Lens.Lens' CreateCacheSubnetGroup Prelude.Text
createCacheSubnetGroup_cacheSubnetGroupName = Lens.lens (\CreateCacheSubnetGroup' {cacheSubnetGroupName} -> cacheSubnetGroupName) (\s@CreateCacheSubnetGroup' {} a -> s {cacheSubnetGroupName = a} :: CreateCacheSubnetGroup)

-- | A description for the cache subnet group.
createCacheSubnetGroup_cacheSubnetGroupDescription :: Lens.Lens' CreateCacheSubnetGroup Prelude.Text
createCacheSubnetGroup_cacheSubnetGroupDescription = Lens.lens (\CreateCacheSubnetGroup' {cacheSubnetGroupDescription} -> cacheSubnetGroupDescription) (\s@CreateCacheSubnetGroup' {} a -> s {cacheSubnetGroupDescription = a} :: CreateCacheSubnetGroup)

-- | A list of VPC subnet IDs for the cache subnet group.
createCacheSubnetGroup_subnetIds :: Lens.Lens' CreateCacheSubnetGroup [Prelude.Text]
createCacheSubnetGroup_subnetIds = Lens.lens (\CreateCacheSubnetGroup' {subnetIds} -> subnetIds) (\s@CreateCacheSubnetGroup' {} a -> s {subnetIds = a} :: CreateCacheSubnetGroup) Prelude.. Lens.coerced

instance Core.AWSRequest CreateCacheSubnetGroup where
  type
    AWSResponse CreateCacheSubnetGroup =
      CreateCacheSubnetGroupResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateCacheSubnetGroupResult"
      ( \s h x ->
          CreateCacheSubnetGroupResponse'
            Prelude.<$> (x Core..@? "CacheSubnetGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCacheSubnetGroup where
  hashWithSalt _salt CreateCacheSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` cacheSubnetGroupName
      `Prelude.hashWithSalt` cacheSubnetGroupDescription
      `Prelude.hashWithSalt` subnetIds

instance Prelude.NFData CreateCacheSubnetGroup where
  rnf CreateCacheSubnetGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf cacheSubnetGroupName
      `Prelude.seq` Prelude.rnf cacheSubnetGroupDescription
      `Prelude.seq` Prelude.rnf subnetIds

instance Core.ToHeaders CreateCacheSubnetGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateCacheSubnetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateCacheSubnetGroup where
  toQuery CreateCacheSubnetGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateCacheSubnetGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2015-02-02" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "CacheSubnetGroupName" Core.=: cacheSubnetGroupName,
        "CacheSubnetGroupDescription"
          Core.=: cacheSubnetGroupDescription,
        "SubnetIds"
          Core.=: Core.toQueryList "SubnetIdentifier" subnetIds
      ]

-- | /See:/ 'newCreateCacheSubnetGroupResponse' smart constructor.
data CreateCacheSubnetGroupResponse = CreateCacheSubnetGroupResponse'
  { cacheSubnetGroup :: Prelude.Maybe CacheSubnetGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCacheSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheSubnetGroup', 'createCacheSubnetGroupResponse_cacheSubnetGroup' - Undocumented member.
--
-- 'httpStatus', 'createCacheSubnetGroupResponse_httpStatus' - The response's http status code.
newCreateCacheSubnetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCacheSubnetGroupResponse
newCreateCacheSubnetGroupResponse pHttpStatus_ =
  CreateCacheSubnetGroupResponse'
    { cacheSubnetGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createCacheSubnetGroupResponse_cacheSubnetGroup :: Lens.Lens' CreateCacheSubnetGroupResponse (Prelude.Maybe CacheSubnetGroup)
createCacheSubnetGroupResponse_cacheSubnetGroup = Lens.lens (\CreateCacheSubnetGroupResponse' {cacheSubnetGroup} -> cacheSubnetGroup) (\s@CreateCacheSubnetGroupResponse' {} a -> s {cacheSubnetGroup = a} :: CreateCacheSubnetGroupResponse)

-- | The response's http status code.
createCacheSubnetGroupResponse_httpStatus :: Lens.Lens' CreateCacheSubnetGroupResponse Prelude.Int
createCacheSubnetGroupResponse_httpStatus = Lens.lens (\CreateCacheSubnetGroupResponse' {httpStatus} -> httpStatus) (\s@CreateCacheSubnetGroupResponse' {} a -> s {httpStatus = a} :: CreateCacheSubnetGroupResponse)

instance
  Prelude.NFData
    CreateCacheSubnetGroupResponse
  where
  rnf CreateCacheSubnetGroupResponse' {..} =
    Prelude.rnf cacheSubnetGroup
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.RedshiftServerLess.CreateWorkgroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an workgroup in Amazon Redshift Serverless.
module Amazonka.RedshiftServerLess.CreateWorkgroup
  ( -- * Creating a Request
    CreateWorkgroup (..),
    newCreateWorkgroup,

    -- * Request Lenses
    createWorkgroup_tags,
    createWorkgroup_securityGroupIds,
    createWorkgroup_baseCapacity,
    createWorkgroup_publiclyAccessible,
    createWorkgroup_configParameters,
    createWorkgroup_enhancedVpcRouting,
    createWorkgroup_subnetIds,
    createWorkgroup_namespaceName,
    createWorkgroup_workgroupName,

    -- * Destructuring the Response
    CreateWorkgroupResponse (..),
    newCreateWorkgroupResponse,

    -- * Response Lenses
    createWorkgroupResponse_workgroup,
    createWorkgroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftServerLess.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateWorkgroup' smart constructor.
data CreateWorkgroup = CreateWorkgroup'
  { -- | A array of tag instances.
    tags :: Prelude.Maybe [Tag],
    -- | An array of security group IDs to associate with the workgroup.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The base data warehouse capacity of the workgroup in Redshift Processing
    -- Units (RPUs).
    baseCapacity :: Prelude.Maybe Prelude.Int,
    -- | A value that specifies whether the workgroup can be accessed from a
    -- public network.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | An array of parameters to set for more control over a serverless
    -- database. The options are @datestyle@, @enable_user_activity_logging@,
    -- @query_group@, @search_path@, and @max_query_execution_time@.
    configParameters :: Prelude.Maybe [ConfigParameter],
    -- | The value that specifies whether to turn on enhanced virtual private
    -- cloud (VPC) routing, which forces Amazon Redshift Serverless to route
    -- traffic through your VPC instead of over the internet.
    enhancedVpcRouting :: Prelude.Maybe Prelude.Bool,
    -- | An array of VPC subnet IDs to associate with the workgroup.
    subnetIds :: Prelude.Maybe [Prelude.Text],
    -- | The name of the namespace to associate with the workgroup.
    namespaceName :: Prelude.Text,
    -- | The name of the created workgroup.
    workgroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkgroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWorkgroup_tags' - A array of tag instances.
--
-- 'securityGroupIds', 'createWorkgroup_securityGroupIds' - An array of security group IDs to associate with the workgroup.
--
-- 'baseCapacity', 'createWorkgroup_baseCapacity' - The base data warehouse capacity of the workgroup in Redshift Processing
-- Units (RPUs).
--
-- 'publiclyAccessible', 'createWorkgroup_publiclyAccessible' - A value that specifies whether the workgroup can be accessed from a
-- public network.
--
-- 'configParameters', 'createWorkgroup_configParameters' - An array of parameters to set for more control over a serverless
-- database. The options are @datestyle@, @enable_user_activity_logging@,
-- @query_group@, @search_path@, and @max_query_execution_time@.
--
-- 'enhancedVpcRouting', 'createWorkgroup_enhancedVpcRouting' - The value that specifies whether to turn on enhanced virtual private
-- cloud (VPC) routing, which forces Amazon Redshift Serverless to route
-- traffic through your VPC instead of over the internet.
--
-- 'subnetIds', 'createWorkgroup_subnetIds' - An array of VPC subnet IDs to associate with the workgroup.
--
-- 'namespaceName', 'createWorkgroup_namespaceName' - The name of the namespace to associate with the workgroup.
--
-- 'workgroupName', 'createWorkgroup_workgroupName' - The name of the created workgroup.
newCreateWorkgroup ::
  -- | 'namespaceName'
  Prelude.Text ->
  -- | 'workgroupName'
  Prelude.Text ->
  CreateWorkgroup
newCreateWorkgroup pNamespaceName_ pWorkgroupName_ =
  CreateWorkgroup'
    { tags = Prelude.Nothing,
      securityGroupIds = Prelude.Nothing,
      baseCapacity = Prelude.Nothing,
      publiclyAccessible = Prelude.Nothing,
      configParameters = Prelude.Nothing,
      enhancedVpcRouting = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      namespaceName = pNamespaceName_,
      workgroupName = pWorkgroupName_
    }

-- | A array of tag instances.
createWorkgroup_tags :: Lens.Lens' CreateWorkgroup (Prelude.Maybe [Tag])
createWorkgroup_tags = Lens.lens (\CreateWorkgroup' {tags} -> tags) (\s@CreateWorkgroup' {} a -> s {tags = a} :: CreateWorkgroup) Prelude.. Lens.mapping Lens.coerced

-- | An array of security group IDs to associate with the workgroup.
createWorkgroup_securityGroupIds :: Lens.Lens' CreateWorkgroup (Prelude.Maybe [Prelude.Text])
createWorkgroup_securityGroupIds = Lens.lens (\CreateWorkgroup' {securityGroupIds} -> securityGroupIds) (\s@CreateWorkgroup' {} a -> s {securityGroupIds = a} :: CreateWorkgroup) Prelude.. Lens.mapping Lens.coerced

-- | The base data warehouse capacity of the workgroup in Redshift Processing
-- Units (RPUs).
createWorkgroup_baseCapacity :: Lens.Lens' CreateWorkgroup (Prelude.Maybe Prelude.Int)
createWorkgroup_baseCapacity = Lens.lens (\CreateWorkgroup' {baseCapacity} -> baseCapacity) (\s@CreateWorkgroup' {} a -> s {baseCapacity = a} :: CreateWorkgroup)

-- | A value that specifies whether the workgroup can be accessed from a
-- public network.
createWorkgroup_publiclyAccessible :: Lens.Lens' CreateWorkgroup (Prelude.Maybe Prelude.Bool)
createWorkgroup_publiclyAccessible = Lens.lens (\CreateWorkgroup' {publiclyAccessible} -> publiclyAccessible) (\s@CreateWorkgroup' {} a -> s {publiclyAccessible = a} :: CreateWorkgroup)

-- | An array of parameters to set for more control over a serverless
-- database. The options are @datestyle@, @enable_user_activity_logging@,
-- @query_group@, @search_path@, and @max_query_execution_time@.
createWorkgroup_configParameters :: Lens.Lens' CreateWorkgroup (Prelude.Maybe [ConfigParameter])
createWorkgroup_configParameters = Lens.lens (\CreateWorkgroup' {configParameters} -> configParameters) (\s@CreateWorkgroup' {} a -> s {configParameters = a} :: CreateWorkgroup) Prelude.. Lens.mapping Lens.coerced

-- | The value that specifies whether to turn on enhanced virtual private
-- cloud (VPC) routing, which forces Amazon Redshift Serverless to route
-- traffic through your VPC instead of over the internet.
createWorkgroup_enhancedVpcRouting :: Lens.Lens' CreateWorkgroup (Prelude.Maybe Prelude.Bool)
createWorkgroup_enhancedVpcRouting = Lens.lens (\CreateWorkgroup' {enhancedVpcRouting} -> enhancedVpcRouting) (\s@CreateWorkgroup' {} a -> s {enhancedVpcRouting = a} :: CreateWorkgroup)

-- | An array of VPC subnet IDs to associate with the workgroup.
createWorkgroup_subnetIds :: Lens.Lens' CreateWorkgroup (Prelude.Maybe [Prelude.Text])
createWorkgroup_subnetIds = Lens.lens (\CreateWorkgroup' {subnetIds} -> subnetIds) (\s@CreateWorkgroup' {} a -> s {subnetIds = a} :: CreateWorkgroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the namespace to associate with the workgroup.
createWorkgroup_namespaceName :: Lens.Lens' CreateWorkgroup Prelude.Text
createWorkgroup_namespaceName = Lens.lens (\CreateWorkgroup' {namespaceName} -> namespaceName) (\s@CreateWorkgroup' {} a -> s {namespaceName = a} :: CreateWorkgroup)

-- | The name of the created workgroup.
createWorkgroup_workgroupName :: Lens.Lens' CreateWorkgroup Prelude.Text
createWorkgroup_workgroupName = Lens.lens (\CreateWorkgroup' {workgroupName} -> workgroupName) (\s@CreateWorkgroup' {} a -> s {workgroupName = a} :: CreateWorkgroup)

instance Core.AWSRequest CreateWorkgroup where
  type
    AWSResponse CreateWorkgroup =
      CreateWorkgroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkgroupResponse'
            Prelude.<$> (x Core..?> "workgroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWorkgroup where
  hashWithSalt _salt CreateWorkgroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` baseCapacity
      `Prelude.hashWithSalt` publiclyAccessible
      `Prelude.hashWithSalt` configParameters
      `Prelude.hashWithSalt` enhancedVpcRouting
      `Prelude.hashWithSalt` subnetIds
      `Prelude.hashWithSalt` namespaceName
      `Prelude.hashWithSalt` workgroupName

instance Prelude.NFData CreateWorkgroup where
  rnf CreateWorkgroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf baseCapacity
      `Prelude.seq` Prelude.rnf publiclyAccessible
      `Prelude.seq` Prelude.rnf configParameters
      `Prelude.seq` Prelude.rnf enhancedVpcRouting
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf namespaceName
      `Prelude.seq` Prelude.rnf workgroupName

instance Core.ToHeaders CreateWorkgroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RedshiftServerless.CreateWorkgroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorkgroup where
  toJSON CreateWorkgroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("securityGroupIds" Core..=)
              Prelude.<$> securityGroupIds,
            ("baseCapacity" Core..=) Prelude.<$> baseCapacity,
            ("publiclyAccessible" Core..=)
              Prelude.<$> publiclyAccessible,
            ("configParameters" Core..=)
              Prelude.<$> configParameters,
            ("enhancedVpcRouting" Core..=)
              Prelude.<$> enhancedVpcRouting,
            ("subnetIds" Core..=) Prelude.<$> subnetIds,
            Prelude.Just ("namespaceName" Core..= namespaceName),
            Prelude.Just
              ("workgroupName" Core..= workgroupName)
          ]
      )

instance Core.ToPath CreateWorkgroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateWorkgroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorkgroupResponse' smart constructor.
data CreateWorkgroupResponse = CreateWorkgroupResponse'
  { -- | The created workgroup object.
    workgroup :: Prelude.Maybe Workgroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkgroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workgroup', 'createWorkgroupResponse_workgroup' - The created workgroup object.
--
-- 'httpStatus', 'createWorkgroupResponse_httpStatus' - The response's http status code.
newCreateWorkgroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWorkgroupResponse
newCreateWorkgroupResponse pHttpStatus_ =
  CreateWorkgroupResponse'
    { workgroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The created workgroup object.
createWorkgroupResponse_workgroup :: Lens.Lens' CreateWorkgroupResponse (Prelude.Maybe Workgroup)
createWorkgroupResponse_workgroup = Lens.lens (\CreateWorkgroupResponse' {workgroup} -> workgroup) (\s@CreateWorkgroupResponse' {} a -> s {workgroup = a} :: CreateWorkgroupResponse)

-- | The response's http status code.
createWorkgroupResponse_httpStatus :: Lens.Lens' CreateWorkgroupResponse Prelude.Int
createWorkgroupResponse_httpStatus = Lens.lens (\CreateWorkgroupResponse' {httpStatus} -> httpStatus) (\s@CreateWorkgroupResponse' {} a -> s {httpStatus = a} :: CreateWorkgroupResponse)

instance Prelude.NFData CreateWorkgroupResponse where
  rnf CreateWorkgroupResponse' {..} =
    Prelude.rnf workgroup
      `Prelude.seq` Prelude.rnf httpStatus

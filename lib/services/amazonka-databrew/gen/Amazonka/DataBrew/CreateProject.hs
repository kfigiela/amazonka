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
-- Module      : Amazonka.DataBrew.CreateProject
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DataBrew project.
module Amazonka.DataBrew.CreateProject
  ( -- * Creating a Request
    CreateProject (..),
    newCreateProject,

    -- * Request Lenses
    createProject_tags,
    createProject_sample,
    createProject_datasetName,
    createProject_name,
    createProject_recipeName,
    createProject_roleArn,

    -- * Destructuring the Response
    CreateProjectResponse (..),
    newCreateProjectResponse,

    -- * Response Lenses
    createProjectResponse_httpStatus,
    createProjectResponse_name,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateProject' smart constructor.
data CreateProject = CreateProject'
  { -- | Metadata tags to apply to this project.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    sample :: Prelude.Maybe Sample,
    -- | The name of an existing dataset to associate this project with.
    datasetName :: Prelude.Text,
    -- | A unique name for the new project. Valid characters are alphanumeric
    -- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    name :: Prelude.Text,
    -- | The name of an existing recipe to associate with the project.
    recipeName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Identity and Access Management
    -- (IAM) role to be assumed for this request.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createProject_tags' - Metadata tags to apply to this project.
--
-- 'sample', 'createProject_sample' - Undocumented member.
--
-- 'datasetName', 'createProject_datasetName' - The name of an existing dataset to associate this project with.
--
-- 'name', 'createProject_name' - A unique name for the new project. Valid characters are alphanumeric
-- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
--
-- 'recipeName', 'createProject_recipeName' - The name of an existing recipe to associate with the project.
--
-- 'roleArn', 'createProject_roleArn' - The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) role to be assumed for this request.
newCreateProject ::
  -- | 'datasetName'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'recipeName'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  CreateProject
newCreateProject
  pDatasetName_
  pName_
  pRecipeName_
  pRoleArn_ =
    CreateProject'
      { tags = Prelude.Nothing,
        sample = Prelude.Nothing,
        datasetName = pDatasetName_,
        name = pName_,
        recipeName = pRecipeName_,
        roleArn = pRoleArn_
      }

-- | Metadata tags to apply to this project.
createProject_tags :: Lens.Lens' CreateProject (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createProject_tags = Lens.lens (\CreateProject' {tags} -> tags) (\s@CreateProject' {} a -> s {tags = a} :: CreateProject) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createProject_sample :: Lens.Lens' CreateProject (Prelude.Maybe Sample)
createProject_sample = Lens.lens (\CreateProject' {sample} -> sample) (\s@CreateProject' {} a -> s {sample = a} :: CreateProject)

-- | The name of an existing dataset to associate this project with.
createProject_datasetName :: Lens.Lens' CreateProject Prelude.Text
createProject_datasetName = Lens.lens (\CreateProject' {datasetName} -> datasetName) (\s@CreateProject' {} a -> s {datasetName = a} :: CreateProject)

-- | A unique name for the new project. Valid characters are alphanumeric
-- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
createProject_name :: Lens.Lens' CreateProject Prelude.Text
createProject_name = Lens.lens (\CreateProject' {name} -> name) (\s@CreateProject' {} a -> s {name = a} :: CreateProject)

-- | The name of an existing recipe to associate with the project.
createProject_recipeName :: Lens.Lens' CreateProject Prelude.Text
createProject_recipeName = Lens.lens (\CreateProject' {recipeName} -> recipeName) (\s@CreateProject' {} a -> s {recipeName = a} :: CreateProject)

-- | The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) role to be assumed for this request.
createProject_roleArn :: Lens.Lens' CreateProject Prelude.Text
createProject_roleArn = Lens.lens (\CreateProject' {roleArn} -> roleArn) (\s@CreateProject' {} a -> s {roleArn = a} :: CreateProject)

instance Core.AWSRequest CreateProject where
  type
    AWSResponse CreateProject =
      CreateProjectResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable CreateProject where
  hashWithSalt _salt CreateProject' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` sample
      `Prelude.hashWithSalt` datasetName
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` recipeName
      `Prelude.hashWithSalt` roleArn

instance Prelude.NFData CreateProject where
  rnf CreateProject' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf sample
      `Prelude.seq` Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf recipeName
      `Prelude.seq` Prelude.rnf roleArn

instance Core.ToHeaders CreateProject where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateProject where
  toJSON CreateProject' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Sample" Core..=) Prelude.<$> sample,
            Prelude.Just ("DatasetName" Core..= datasetName),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("RecipeName" Core..= recipeName),
            Prelude.Just ("RoleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath CreateProject where
  toPath = Prelude.const "/projects"

instance Core.ToQuery CreateProject where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the project that you created.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createProjectResponse_httpStatus' - The response's http status code.
--
-- 'name', 'createProjectResponse_name' - The name of the project that you created.
newCreateProjectResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  CreateProjectResponse
newCreateProjectResponse pHttpStatus_ pName_ =
  CreateProjectResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
createProjectResponse_httpStatus :: Lens.Lens' CreateProjectResponse Prelude.Int
createProjectResponse_httpStatus = Lens.lens (\CreateProjectResponse' {httpStatus} -> httpStatus) (\s@CreateProjectResponse' {} a -> s {httpStatus = a} :: CreateProjectResponse)

-- | The name of the project that you created.
createProjectResponse_name :: Lens.Lens' CreateProjectResponse Prelude.Text
createProjectResponse_name = Lens.lens (\CreateProjectResponse' {name} -> name) (\s@CreateProjectResponse' {} a -> s {name = a} :: CreateProjectResponse)

instance Prelude.NFData CreateProjectResponse where
  rnf CreateProjectResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf name

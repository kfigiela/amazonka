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
-- Module      : Amazonka.ECRPublic.CreateRepository
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a repository in a public registry. For more information, see
-- <https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html Amazon ECR repositories>
-- in the /Amazon Elastic Container Registry User Guide/.
module Amazonka.ECRPublic.CreateRepository
  ( -- * Creating a Request
    CreateRepository (..),
    newCreateRepository,

    -- * Request Lenses
    createRepository_tags,
    createRepository_catalogData,
    createRepository_repositoryName,

    -- * Destructuring the Response
    CreateRepositoryResponse (..),
    newCreateRepositoryResponse,

    -- * Response Lenses
    createRepositoryResponse_catalogData,
    createRepositoryResponse_repository,
    createRepositoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ECRPublic.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRepository' smart constructor.
data CreateRepository = CreateRepository'
  { -- | The metadata that you apply to the repository to help you categorize and
    -- organize them. Each tag consists of a key and an optional value, both of
    -- which you define. Tag keys can have a maximum character length of 128
    -- characters, and tag values can have a maximum length of 256 characters.
    tags :: Prelude.Maybe [Tag],
    -- | The details about the repository that are publicly visible in the Amazon
    -- ECR Public Gallery.
    catalogData :: Prelude.Maybe RepositoryCatalogDataInput,
    -- | The name to use for the repository. This appears publicly in the Amazon
    -- ECR Public Gallery. The repository name may be specified on its own
    -- (such as @nginx-web-app@) or it can be prepended with a namespace to
    -- group the repository into a category (such as
    -- @project-a\/nginx-web-app@).
    repositoryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRepository_tags' - The metadata that you apply to the repository to help you categorize and
-- organize them. Each tag consists of a key and an optional value, both of
-- which you define. Tag keys can have a maximum character length of 128
-- characters, and tag values can have a maximum length of 256 characters.
--
-- 'catalogData', 'createRepository_catalogData' - The details about the repository that are publicly visible in the Amazon
-- ECR Public Gallery.
--
-- 'repositoryName', 'createRepository_repositoryName' - The name to use for the repository. This appears publicly in the Amazon
-- ECR Public Gallery. The repository name may be specified on its own
-- (such as @nginx-web-app@) or it can be prepended with a namespace to
-- group the repository into a category (such as
-- @project-a\/nginx-web-app@).
newCreateRepository ::
  -- | 'repositoryName'
  Prelude.Text ->
  CreateRepository
newCreateRepository pRepositoryName_ =
  CreateRepository'
    { tags = Prelude.Nothing,
      catalogData = Prelude.Nothing,
      repositoryName = pRepositoryName_
    }

-- | The metadata that you apply to the repository to help you categorize and
-- organize them. Each tag consists of a key and an optional value, both of
-- which you define. Tag keys can have a maximum character length of 128
-- characters, and tag values can have a maximum length of 256 characters.
createRepository_tags :: Lens.Lens' CreateRepository (Prelude.Maybe [Tag])
createRepository_tags = Lens.lens (\CreateRepository' {tags} -> tags) (\s@CreateRepository' {} a -> s {tags = a} :: CreateRepository) Prelude.. Lens.mapping Lens.coerced

-- | The details about the repository that are publicly visible in the Amazon
-- ECR Public Gallery.
createRepository_catalogData :: Lens.Lens' CreateRepository (Prelude.Maybe RepositoryCatalogDataInput)
createRepository_catalogData = Lens.lens (\CreateRepository' {catalogData} -> catalogData) (\s@CreateRepository' {} a -> s {catalogData = a} :: CreateRepository)

-- | The name to use for the repository. This appears publicly in the Amazon
-- ECR Public Gallery. The repository name may be specified on its own
-- (such as @nginx-web-app@) or it can be prepended with a namespace to
-- group the repository into a category (such as
-- @project-a\/nginx-web-app@).
createRepository_repositoryName :: Lens.Lens' CreateRepository Prelude.Text
createRepository_repositoryName = Lens.lens (\CreateRepository' {repositoryName} -> repositoryName) (\s@CreateRepository' {} a -> s {repositoryName = a} :: CreateRepository)

instance Core.AWSRequest CreateRepository where
  type
    AWSResponse CreateRepository =
      CreateRepositoryResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRepositoryResponse'
            Prelude.<$> (x Core..?> "catalogData")
            Prelude.<*> (x Core..?> "repository")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRepository where
  hashWithSalt _salt CreateRepository' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` catalogData
      `Prelude.hashWithSalt` repositoryName

instance Prelude.NFData CreateRepository where
  rnf CreateRepository' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf catalogData
      `Prelude.seq` Prelude.rnf repositoryName

instance Core.ToHeaders CreateRepository where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SpencerFrontendService.CreateRepository" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRepository where
  toJSON CreateRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("catalogData" Core..=) Prelude.<$> catalogData,
            Prelude.Just
              ("repositoryName" Core..= repositoryName)
          ]
      )

instance Core.ToPath CreateRepository where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateRepository where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRepositoryResponse' smart constructor.
data CreateRepositoryResponse = CreateRepositoryResponse'
  { catalogData :: Prelude.Maybe RepositoryCatalogData,
    -- | The repository that was created.
    repository :: Prelude.Maybe Repository,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRepositoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogData', 'createRepositoryResponse_catalogData' - Undocumented member.
--
-- 'repository', 'createRepositoryResponse_repository' - The repository that was created.
--
-- 'httpStatus', 'createRepositoryResponse_httpStatus' - The response's http status code.
newCreateRepositoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRepositoryResponse
newCreateRepositoryResponse pHttpStatus_ =
  CreateRepositoryResponse'
    { catalogData =
        Prelude.Nothing,
      repository = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createRepositoryResponse_catalogData :: Lens.Lens' CreateRepositoryResponse (Prelude.Maybe RepositoryCatalogData)
createRepositoryResponse_catalogData = Lens.lens (\CreateRepositoryResponse' {catalogData} -> catalogData) (\s@CreateRepositoryResponse' {} a -> s {catalogData = a} :: CreateRepositoryResponse)

-- | The repository that was created.
createRepositoryResponse_repository :: Lens.Lens' CreateRepositoryResponse (Prelude.Maybe Repository)
createRepositoryResponse_repository = Lens.lens (\CreateRepositoryResponse' {repository} -> repository) (\s@CreateRepositoryResponse' {} a -> s {repository = a} :: CreateRepositoryResponse)

-- | The response's http status code.
createRepositoryResponse_httpStatus :: Lens.Lens' CreateRepositoryResponse Prelude.Int
createRepositoryResponse_httpStatus = Lens.lens (\CreateRepositoryResponse' {httpStatus} -> httpStatus) (\s@CreateRepositoryResponse' {} a -> s {httpStatus = a} :: CreateRepositoryResponse)

instance Prelude.NFData CreateRepositoryResponse where
  rnf CreateRepositoryResponse' {..} =
    Prelude.rnf catalogData
      `Prelude.seq` Prelude.rnf repository
      `Prelude.seq` Prelude.rnf httpStatus

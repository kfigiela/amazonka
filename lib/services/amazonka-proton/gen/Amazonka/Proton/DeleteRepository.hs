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
-- Module      : Amazonka.Proton.DeleteRepository
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-register and unlink your repository.
module Amazonka.Proton.DeleteRepository
  ( -- * Creating a Request
    DeleteRepository (..),
    newDeleteRepository,

    -- * Request Lenses
    deleteRepository_name,
    deleteRepository_provider,

    -- * Destructuring the Response
    DeleteRepositoryResponse (..),
    newDeleteRepositoryResponse,

    -- * Response Lenses
    deleteRepositoryResponse_repository,
    deleteRepositoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteRepository' smart constructor.
data DeleteRepository = DeleteRepository'
  { -- | The repository name.
    name :: Prelude.Text,
    -- | The repository provider.
    provider :: RepositoryProvider
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteRepository_name' - The repository name.
--
-- 'provider', 'deleteRepository_provider' - The repository provider.
newDeleteRepository ::
  -- | 'name'
  Prelude.Text ->
  -- | 'provider'
  RepositoryProvider ->
  DeleteRepository
newDeleteRepository pName_ pProvider_ =
  DeleteRepository'
    { name = pName_,
      provider = pProvider_
    }

-- | The repository name.
deleteRepository_name :: Lens.Lens' DeleteRepository Prelude.Text
deleteRepository_name = Lens.lens (\DeleteRepository' {name} -> name) (\s@DeleteRepository' {} a -> s {name = a} :: DeleteRepository)

-- | The repository provider.
deleteRepository_provider :: Lens.Lens' DeleteRepository RepositoryProvider
deleteRepository_provider = Lens.lens (\DeleteRepository' {provider} -> provider) (\s@DeleteRepository' {} a -> s {provider = a} :: DeleteRepository)

instance Core.AWSRequest DeleteRepository where
  type
    AWSResponse DeleteRepository =
      DeleteRepositoryResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteRepositoryResponse'
            Prelude.<$> (x Core..?> "repository")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteRepository where
  hashWithSalt _salt DeleteRepository' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` provider

instance Prelude.NFData DeleteRepository where
  rnf DeleteRepository' {..} =
    Prelude.rnf name `Prelude.seq` Prelude.rnf provider

instance Core.ToHeaders DeleteRepository where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.DeleteRepository" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteRepository where
  toJSON DeleteRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just ("provider" Core..= provider)
          ]
      )

instance Core.ToPath DeleteRepository where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteRepository where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteRepositoryResponse' smart constructor.
data DeleteRepositoryResponse = DeleteRepositoryResponse'
  { -- | The deleted repository link\'s detail data that\'s returned by Proton.
    repository :: Prelude.Maybe Repository,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRepositoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repository', 'deleteRepositoryResponse_repository' - The deleted repository link\'s detail data that\'s returned by Proton.
--
-- 'httpStatus', 'deleteRepositoryResponse_httpStatus' - The response's http status code.
newDeleteRepositoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteRepositoryResponse
newDeleteRepositoryResponse pHttpStatus_ =
  DeleteRepositoryResponse'
    { repository =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The deleted repository link\'s detail data that\'s returned by Proton.
deleteRepositoryResponse_repository :: Lens.Lens' DeleteRepositoryResponse (Prelude.Maybe Repository)
deleteRepositoryResponse_repository = Lens.lens (\DeleteRepositoryResponse' {repository} -> repository) (\s@DeleteRepositoryResponse' {} a -> s {repository = a} :: DeleteRepositoryResponse)

-- | The response's http status code.
deleteRepositoryResponse_httpStatus :: Lens.Lens' DeleteRepositoryResponse Prelude.Int
deleteRepositoryResponse_httpStatus = Lens.lens (\DeleteRepositoryResponse' {httpStatus} -> httpStatus) (\s@DeleteRepositoryResponse' {} a -> s {httpStatus = a} :: DeleteRepositoryResponse)

instance Prelude.NFData DeleteRepositoryResponse where
  rnf DeleteRepositoryResponse' {..} =
    Prelude.rnf repository
      `Prelude.seq` Prelude.rnf httpStatus

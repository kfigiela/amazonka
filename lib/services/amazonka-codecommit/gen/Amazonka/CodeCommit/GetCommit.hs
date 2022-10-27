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
-- Module      : Amazonka.CodeCommit.GetCommit
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a commit, including commit message and
-- committer information.
module Amazonka.CodeCommit.GetCommit
  ( -- * Creating a Request
    GetCommit (..),
    newGetCommit,

    -- * Request Lenses
    getCommit_repositoryName,
    getCommit_commitId,

    -- * Destructuring the Response
    GetCommitResponse (..),
    newGetCommitResponse,

    -- * Response Lenses
    getCommitResponse_httpStatus,
    getCommitResponse_commit,
  )
where

import Amazonka.CodeCommit.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a get commit operation.
--
-- /See:/ 'newGetCommit' smart constructor.
data GetCommit = GetCommit'
  { -- | The name of the repository to which the commit was made.
    repositoryName :: Prelude.Text,
    -- | The commit ID. Commit IDs are the full SHA ID of the commit.
    commitId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCommit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryName', 'getCommit_repositoryName' - The name of the repository to which the commit was made.
--
-- 'commitId', 'getCommit_commitId' - The commit ID. Commit IDs are the full SHA ID of the commit.
newGetCommit ::
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'commitId'
  Prelude.Text ->
  GetCommit
newGetCommit pRepositoryName_ pCommitId_ =
  GetCommit'
    { repositoryName = pRepositoryName_,
      commitId = pCommitId_
    }

-- | The name of the repository to which the commit was made.
getCommit_repositoryName :: Lens.Lens' GetCommit Prelude.Text
getCommit_repositoryName = Lens.lens (\GetCommit' {repositoryName} -> repositoryName) (\s@GetCommit' {} a -> s {repositoryName = a} :: GetCommit)

-- | The commit ID. Commit IDs are the full SHA ID of the commit.
getCommit_commitId :: Lens.Lens' GetCommit Prelude.Text
getCommit_commitId = Lens.lens (\GetCommit' {commitId} -> commitId) (\s@GetCommit' {} a -> s {commitId = a} :: GetCommit)

instance Core.AWSRequest GetCommit where
  type AWSResponse GetCommit = GetCommitResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCommitResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "commit")
      )

instance Prelude.Hashable GetCommit where
  hashWithSalt _salt GetCommit' {..} =
    _salt `Prelude.hashWithSalt` repositoryName
      `Prelude.hashWithSalt` commitId

instance Prelude.NFData GetCommit where
  rnf GetCommit' {..} =
    Prelude.rnf repositoryName
      `Prelude.seq` Prelude.rnf commitId

instance Core.ToHeaders GetCommit where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.GetCommit" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetCommit where
  toJSON GetCommit' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("repositoryName" Core..= repositoryName),
            Prelude.Just ("commitId" Core..= commitId)
          ]
      )

instance Core.ToPath GetCommit where
  toPath = Prelude.const "/"

instance Core.ToQuery GetCommit where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a get commit operation.
--
-- /See:/ 'newGetCommitResponse' smart constructor.
data GetCommitResponse = GetCommitResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A commit data type object that contains information about the specified
    -- commit.
    commit :: Commit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCommitResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getCommitResponse_httpStatus' - The response's http status code.
--
-- 'commit', 'getCommitResponse_commit' - A commit data type object that contains information about the specified
-- commit.
newGetCommitResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'commit'
  Commit ->
  GetCommitResponse
newGetCommitResponse pHttpStatus_ pCommit_ =
  GetCommitResponse'
    { httpStatus = pHttpStatus_,
      commit = pCommit_
    }

-- | The response's http status code.
getCommitResponse_httpStatus :: Lens.Lens' GetCommitResponse Prelude.Int
getCommitResponse_httpStatus = Lens.lens (\GetCommitResponse' {httpStatus} -> httpStatus) (\s@GetCommitResponse' {} a -> s {httpStatus = a} :: GetCommitResponse)

-- | A commit data type object that contains information about the specified
-- commit.
getCommitResponse_commit :: Lens.Lens' GetCommitResponse Commit
getCommitResponse_commit = Lens.lens (\GetCommitResponse' {commit} -> commit) (\s@GetCommitResponse' {} a -> s {commit = a} :: GetCommitResponse)

instance Prelude.NFData GetCommitResponse where
  rnf GetCommitResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf commit

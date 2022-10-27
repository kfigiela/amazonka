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
-- Module      : Amazonka.CodeBuild.ListSharedProjects
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of projects that are shared with other Amazon Web Services
-- accounts or users.
--
-- This operation returns paginated results.
module Amazonka.CodeBuild.ListSharedProjects
  ( -- * Creating a Request
    ListSharedProjects (..),
    newListSharedProjects,

    -- * Request Lenses
    listSharedProjects_sortOrder,
    listSharedProjects_nextToken,
    listSharedProjects_sortBy,
    listSharedProjects_maxResults,

    -- * Destructuring the Response
    ListSharedProjectsResponse (..),
    newListSharedProjectsResponse,

    -- * Response Lenses
    listSharedProjectsResponse_projects,
    listSharedProjectsResponse_nextToken,
    listSharedProjectsResponse_httpStatus,
  )
where

import Amazonka.CodeBuild.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSharedProjects' smart constructor.
data ListSharedProjects = ListSharedProjects'
  { -- | The order in which to list shared build projects. Valid values include:
    --
    -- -   @ASCENDING@: List in ascending order.
    --
    -- -   @DESCENDING@: List in descending order.
    sortOrder :: Prelude.Maybe SortOrderType,
    -- | During a previous call, the maximum number of items that can be returned
    -- is the value specified in @maxResults@. If there more items in the list,
    -- then a unique string called a /nextToken/ is returned. To get the next
    -- batch of items in the list, call this operation again, adding the next
    -- token to the call. To get all of the items in the list, keep calling
    -- this operation with each subsequent next token that is returned, until
    -- no more next tokens are returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The criterion to be used to list build projects shared with the current
    -- Amazon Web Services account or user. Valid values include:
    --
    -- -   @ARN@: List based on the ARN.
    --
    -- -   @MODIFIED_TIME@: List based on when information about the shared
    --     project was last changed.
    sortBy :: Prelude.Maybe SharedResourceSortByType,
    -- | The maximum number of paginated shared build projects returned per
    -- response. Use @nextToken@ to iterate pages in the list of returned
    -- @Project@ objects. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSharedProjects' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listSharedProjects_sortOrder' - The order in which to list shared build projects. Valid values include:
--
-- -   @ASCENDING@: List in ascending order.
--
-- -   @DESCENDING@: List in descending order.
--
-- 'nextToken', 'listSharedProjects_nextToken' - During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
--
-- 'sortBy', 'listSharedProjects_sortBy' - The criterion to be used to list build projects shared with the current
-- Amazon Web Services account or user. Valid values include:
--
-- -   @ARN@: List based on the ARN.
--
-- -   @MODIFIED_TIME@: List based on when information about the shared
--     project was last changed.
--
-- 'maxResults', 'listSharedProjects_maxResults' - The maximum number of paginated shared build projects returned per
-- response. Use @nextToken@ to iterate pages in the list of returned
-- @Project@ objects. The default value is 100.
newListSharedProjects ::
  ListSharedProjects
newListSharedProjects =
  ListSharedProjects'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The order in which to list shared build projects. Valid values include:
--
-- -   @ASCENDING@: List in ascending order.
--
-- -   @DESCENDING@: List in descending order.
listSharedProjects_sortOrder :: Lens.Lens' ListSharedProjects (Prelude.Maybe SortOrderType)
listSharedProjects_sortOrder = Lens.lens (\ListSharedProjects' {sortOrder} -> sortOrder) (\s@ListSharedProjects' {} a -> s {sortOrder = a} :: ListSharedProjects)

-- | During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
listSharedProjects_nextToken :: Lens.Lens' ListSharedProjects (Prelude.Maybe Prelude.Text)
listSharedProjects_nextToken = Lens.lens (\ListSharedProjects' {nextToken} -> nextToken) (\s@ListSharedProjects' {} a -> s {nextToken = a} :: ListSharedProjects)

-- | The criterion to be used to list build projects shared with the current
-- Amazon Web Services account or user. Valid values include:
--
-- -   @ARN@: List based on the ARN.
--
-- -   @MODIFIED_TIME@: List based on when information about the shared
--     project was last changed.
listSharedProjects_sortBy :: Lens.Lens' ListSharedProjects (Prelude.Maybe SharedResourceSortByType)
listSharedProjects_sortBy = Lens.lens (\ListSharedProjects' {sortBy} -> sortBy) (\s@ListSharedProjects' {} a -> s {sortBy = a} :: ListSharedProjects)

-- | The maximum number of paginated shared build projects returned per
-- response. Use @nextToken@ to iterate pages in the list of returned
-- @Project@ objects. The default value is 100.
listSharedProjects_maxResults :: Lens.Lens' ListSharedProjects (Prelude.Maybe Prelude.Natural)
listSharedProjects_maxResults = Lens.lens (\ListSharedProjects' {maxResults} -> maxResults) (\s@ListSharedProjects' {} a -> s {maxResults = a} :: ListSharedProjects)

instance Core.AWSPager ListSharedProjects where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSharedProjectsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSharedProjectsResponse_projects
              Prelude.. Lens._Just
              Prelude.. Lens.to Prelude.toList
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSharedProjects_nextToken
          Lens..~ rs
          Lens.^? listSharedProjectsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListSharedProjects where
  type
    AWSResponse ListSharedProjects =
      ListSharedProjectsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSharedProjectsResponse'
            Prelude.<$> (x Core..?> "projects")
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSharedProjects where
  hashWithSalt _salt ListSharedProjects' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListSharedProjects where
  rnf ListSharedProjects' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListSharedProjects where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeBuild_20161006.ListSharedProjects" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSharedProjects where
  toJSON ListSharedProjects' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sortOrder" Core..=) Prelude.<$> sortOrder,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("sortBy" Core..=) Prelude.<$> sortBy,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSharedProjects where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSharedProjects where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSharedProjectsResponse' smart constructor.
data ListSharedProjectsResponse = ListSharedProjectsResponse'
  { -- | The list of ARNs for the build projects shared with the current Amazon
    -- Web Services account or user.
    projects :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | During a previous call, the maximum number of items that can be returned
    -- is the value specified in @maxResults@. If there more items in the list,
    -- then a unique string called a /nextToken/ is returned. To get the next
    -- batch of items in the list, call this operation again, adding the next
    -- token to the call. To get all of the items in the list, keep calling
    -- this operation with each subsequent next token that is returned, until
    -- no more next tokens are returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSharedProjectsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projects', 'listSharedProjectsResponse_projects' - The list of ARNs for the build projects shared with the current Amazon
-- Web Services account or user.
--
-- 'nextToken', 'listSharedProjectsResponse_nextToken' - During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
--
-- 'httpStatus', 'listSharedProjectsResponse_httpStatus' - The response's http status code.
newListSharedProjectsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSharedProjectsResponse
newListSharedProjectsResponse pHttpStatus_ =
  ListSharedProjectsResponse'
    { projects =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of ARNs for the build projects shared with the current Amazon
-- Web Services account or user.
listSharedProjectsResponse_projects :: Lens.Lens' ListSharedProjectsResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listSharedProjectsResponse_projects = Lens.lens (\ListSharedProjectsResponse' {projects} -> projects) (\s@ListSharedProjectsResponse' {} a -> s {projects = a} :: ListSharedProjectsResponse) Prelude.. Lens.mapping Lens.coerced

-- | During a previous call, the maximum number of items that can be returned
-- is the value specified in @maxResults@. If there more items in the list,
-- then a unique string called a /nextToken/ is returned. To get the next
-- batch of items in the list, call this operation again, adding the next
-- token to the call. To get all of the items in the list, keep calling
-- this operation with each subsequent next token that is returned, until
-- no more next tokens are returned.
listSharedProjectsResponse_nextToken :: Lens.Lens' ListSharedProjectsResponse (Prelude.Maybe Prelude.Text)
listSharedProjectsResponse_nextToken = Lens.lens (\ListSharedProjectsResponse' {nextToken} -> nextToken) (\s@ListSharedProjectsResponse' {} a -> s {nextToken = a} :: ListSharedProjectsResponse)

-- | The response's http status code.
listSharedProjectsResponse_httpStatus :: Lens.Lens' ListSharedProjectsResponse Prelude.Int
listSharedProjectsResponse_httpStatus = Lens.lens (\ListSharedProjectsResponse' {httpStatus} -> httpStatus) (\s@ListSharedProjectsResponse' {} a -> s {httpStatus = a} :: ListSharedProjectsResponse)

instance Prelude.NFData ListSharedProjectsResponse where
  rnf ListSharedProjectsResponse' {..} =
    Prelude.rnf projects
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

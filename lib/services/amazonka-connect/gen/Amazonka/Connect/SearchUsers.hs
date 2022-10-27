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
-- Module      : Amazonka.Connect.SearchUsers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches users in an Amazon Connect instance, with optional filtering.
--
-- @AfterContactWorkTimeLimit@ is returned in milliseconds.
--
-- This operation returns paginated results.
module Amazonka.Connect.SearchUsers
  ( -- * Creating a Request
    SearchUsers (..),
    newSearchUsers,

    -- * Request Lenses
    searchUsers_nextToken,
    searchUsers_searchCriteria,
    searchUsers_searchFilter,
    searchUsers_instanceId,
    searchUsers_maxResults,

    -- * Destructuring the Response
    SearchUsersResponse (..),
    newSearchUsersResponse,

    -- * Response Lenses
    searchUsersResponse_nextToken,
    searchUsersResponse_users,
    searchUsersResponse_approximateTotalCount,
    searchUsersResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSearchUsers' smart constructor.
data SearchUsers = SearchUsers'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    searchCriteria :: Prelude.Maybe UserSearchCriteria,
    -- | Filters to be applied to search results.
    searchFilter :: Prelude.Maybe UserSearchFilter,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchUsers_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'searchCriteria', 'searchUsers_searchCriteria' - Undocumented member.
--
-- 'searchFilter', 'searchUsers_searchFilter' - Filters to be applied to search results.
--
-- 'instanceId', 'searchUsers_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'maxResults', 'searchUsers_maxResults' - The maximum number of results to return per page.
newSearchUsers ::
  SearchUsers
newSearchUsers =
  SearchUsers'
    { nextToken = Prelude.Nothing,
      searchCriteria = Prelude.Nothing,
      searchFilter = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
searchUsers_nextToken :: Lens.Lens' SearchUsers (Prelude.Maybe Prelude.Text)
searchUsers_nextToken = Lens.lens (\SearchUsers' {nextToken} -> nextToken) (\s@SearchUsers' {} a -> s {nextToken = a} :: SearchUsers)

-- | Undocumented member.
searchUsers_searchCriteria :: Lens.Lens' SearchUsers (Prelude.Maybe UserSearchCriteria)
searchUsers_searchCriteria = Lens.lens (\SearchUsers' {searchCriteria} -> searchCriteria) (\s@SearchUsers' {} a -> s {searchCriteria = a} :: SearchUsers)

-- | Filters to be applied to search results.
searchUsers_searchFilter :: Lens.Lens' SearchUsers (Prelude.Maybe UserSearchFilter)
searchUsers_searchFilter = Lens.lens (\SearchUsers' {searchFilter} -> searchFilter) (\s@SearchUsers' {} a -> s {searchFilter = a} :: SearchUsers)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
searchUsers_instanceId :: Lens.Lens' SearchUsers (Prelude.Maybe Prelude.Text)
searchUsers_instanceId = Lens.lens (\SearchUsers' {instanceId} -> instanceId) (\s@SearchUsers' {} a -> s {instanceId = a} :: SearchUsers)

-- | The maximum number of results to return per page.
searchUsers_maxResults :: Lens.Lens' SearchUsers (Prelude.Maybe Prelude.Natural)
searchUsers_maxResults = Lens.lens (\SearchUsers' {maxResults} -> maxResults) (\s@SearchUsers' {} a -> s {maxResults = a} :: SearchUsers)

instance Core.AWSPager SearchUsers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? searchUsersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? searchUsersResponse_users Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& searchUsers_nextToken
          Lens..~ rs
          Lens.^? searchUsersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest SearchUsers where
  type AWSResponse SearchUsers = SearchUsersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchUsersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Users" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ApproximateTotalCount")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchUsers where
  hashWithSalt _salt SearchUsers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` searchCriteria
      `Prelude.hashWithSalt` searchFilter
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData SearchUsers where
  rnf SearchUsers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf searchCriteria
      `Prelude.seq` Prelude.rnf searchFilter
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders SearchUsers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchUsers where
  toJSON SearchUsers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SearchCriteria" Core..=)
              Prelude.<$> searchCriteria,
            ("SearchFilter" Core..=) Prelude.<$> searchFilter,
            ("InstanceId" Core..=) Prelude.<$> instanceId,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath SearchUsers where
  toPath = Prelude.const "/search-users"

instance Core.ToQuery SearchUsers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchUsersResponse' smart constructor.
data SearchUsersResponse = SearchUsersResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the users.
    users :: Prelude.Maybe [UserSearchSummary],
    -- | The total number of users who matched your search query.
    approximateTotalCount :: Prelude.Maybe Prelude.Integer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchUsersResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'users', 'searchUsersResponse_users' - Information about the users.
--
-- 'approximateTotalCount', 'searchUsersResponse_approximateTotalCount' - The total number of users who matched your search query.
--
-- 'httpStatus', 'searchUsersResponse_httpStatus' - The response's http status code.
newSearchUsersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchUsersResponse
newSearchUsersResponse pHttpStatus_ =
  SearchUsersResponse'
    { nextToken = Prelude.Nothing,
      users = Prelude.Nothing,
      approximateTotalCount = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
searchUsersResponse_nextToken :: Lens.Lens' SearchUsersResponse (Prelude.Maybe Prelude.Text)
searchUsersResponse_nextToken = Lens.lens (\SearchUsersResponse' {nextToken} -> nextToken) (\s@SearchUsersResponse' {} a -> s {nextToken = a} :: SearchUsersResponse)

-- | Information about the users.
searchUsersResponse_users :: Lens.Lens' SearchUsersResponse (Prelude.Maybe [UserSearchSummary])
searchUsersResponse_users = Lens.lens (\SearchUsersResponse' {users} -> users) (\s@SearchUsersResponse' {} a -> s {users = a} :: SearchUsersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of users who matched your search query.
searchUsersResponse_approximateTotalCount :: Lens.Lens' SearchUsersResponse (Prelude.Maybe Prelude.Integer)
searchUsersResponse_approximateTotalCount = Lens.lens (\SearchUsersResponse' {approximateTotalCount} -> approximateTotalCount) (\s@SearchUsersResponse' {} a -> s {approximateTotalCount = a} :: SearchUsersResponse)

-- | The response's http status code.
searchUsersResponse_httpStatus :: Lens.Lens' SearchUsersResponse Prelude.Int
searchUsersResponse_httpStatus = Lens.lens (\SearchUsersResponse' {httpStatus} -> httpStatus) (\s@SearchUsersResponse' {} a -> s {httpStatus = a} :: SearchUsersResponse)

instance Prelude.NFData SearchUsersResponse where
  rnf SearchUsersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf users
      `Prelude.seq` Prelude.rnf approximateTotalCount
      `Prelude.seq` Prelude.rnf httpStatus

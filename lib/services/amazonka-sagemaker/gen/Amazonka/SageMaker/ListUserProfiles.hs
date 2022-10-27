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
-- Module      : Amazonka.SageMaker.ListUserProfiles
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists user profiles.
--
-- This operation returns paginated results.
module Amazonka.SageMaker.ListUserProfiles
  ( -- * Creating a Request
    ListUserProfiles (..),
    newListUserProfiles,

    -- * Request Lenses
    listUserProfiles_sortOrder,
    listUserProfiles_nextToken,
    listUserProfiles_sortBy,
    listUserProfiles_userProfileNameContains,
    listUserProfiles_maxResults,
    listUserProfiles_domainIdEquals,

    -- * Destructuring the Response
    ListUserProfilesResponse (..),
    newListUserProfilesResponse,

    -- * Response Lenses
    listUserProfilesResponse_userProfiles,
    listUserProfilesResponse_nextToken,
    listUserProfilesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newListUserProfiles' smart constructor.
data ListUserProfiles = ListUserProfiles'
  { -- | The sort order for the results. The default is Ascending.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | If the previous response was truncated, you will receive this token. Use
    -- it in your next request to receive the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The parameter by which to sort the results. The default is CreationTime.
    sortBy :: Prelude.Maybe UserProfileSortKey,
    -- | A parameter by which to filter the results.
    userProfileNameContains :: Prelude.Maybe Prelude.Text,
    -- | Returns a list up to a specified limit.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A parameter by which to filter the results.
    domainIdEquals :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserProfiles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listUserProfiles_sortOrder' - The sort order for the results. The default is Ascending.
--
-- 'nextToken', 'listUserProfiles_nextToken' - If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
--
-- 'sortBy', 'listUserProfiles_sortBy' - The parameter by which to sort the results. The default is CreationTime.
--
-- 'userProfileNameContains', 'listUserProfiles_userProfileNameContains' - A parameter by which to filter the results.
--
-- 'maxResults', 'listUserProfiles_maxResults' - Returns a list up to a specified limit.
--
-- 'domainIdEquals', 'listUserProfiles_domainIdEquals' - A parameter by which to filter the results.
newListUserProfiles ::
  ListUserProfiles
newListUserProfiles =
  ListUserProfiles'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      userProfileNameContains = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainIdEquals = Prelude.Nothing
    }

-- | The sort order for the results. The default is Ascending.
listUserProfiles_sortOrder :: Lens.Lens' ListUserProfiles (Prelude.Maybe SortOrder)
listUserProfiles_sortOrder = Lens.lens (\ListUserProfiles' {sortOrder} -> sortOrder) (\s@ListUserProfiles' {} a -> s {sortOrder = a} :: ListUserProfiles)

-- | If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
listUserProfiles_nextToken :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_nextToken = Lens.lens (\ListUserProfiles' {nextToken} -> nextToken) (\s@ListUserProfiles' {} a -> s {nextToken = a} :: ListUserProfiles)

-- | The parameter by which to sort the results. The default is CreationTime.
listUserProfiles_sortBy :: Lens.Lens' ListUserProfiles (Prelude.Maybe UserProfileSortKey)
listUserProfiles_sortBy = Lens.lens (\ListUserProfiles' {sortBy} -> sortBy) (\s@ListUserProfiles' {} a -> s {sortBy = a} :: ListUserProfiles)

-- | A parameter by which to filter the results.
listUserProfiles_userProfileNameContains :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_userProfileNameContains = Lens.lens (\ListUserProfiles' {userProfileNameContains} -> userProfileNameContains) (\s@ListUserProfiles' {} a -> s {userProfileNameContains = a} :: ListUserProfiles)

-- | Returns a list up to a specified limit.
listUserProfiles_maxResults :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Natural)
listUserProfiles_maxResults = Lens.lens (\ListUserProfiles' {maxResults} -> maxResults) (\s@ListUserProfiles' {} a -> s {maxResults = a} :: ListUserProfiles)

-- | A parameter by which to filter the results.
listUserProfiles_domainIdEquals :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_domainIdEquals = Lens.lens (\ListUserProfiles' {domainIdEquals} -> domainIdEquals) (\s@ListUserProfiles' {} a -> s {domainIdEquals = a} :: ListUserProfiles)

instance Core.AWSPager ListUserProfiles where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listUserProfilesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listUserProfilesResponse_userProfiles
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listUserProfiles_nextToken
          Lens..~ rs
          Lens.^? listUserProfilesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListUserProfiles where
  type
    AWSResponse ListUserProfiles =
      ListUserProfilesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUserProfilesResponse'
            Prelude.<$> (x Core..?> "UserProfiles" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListUserProfiles where
  hashWithSalt _salt ListUserProfiles' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` userProfileNameContains
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` domainIdEquals

instance Prelude.NFData ListUserProfiles where
  rnf ListUserProfiles' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf userProfileNameContains
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf domainIdEquals

instance Core.ToHeaders ListUserProfiles where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListUserProfiles" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListUserProfiles where
  toJSON ListUserProfiles' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            ("UserProfileNameContains" Core..=)
              Prelude.<$> userProfileNameContains,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("DomainIdEquals" Core..=)
              Prelude.<$> domainIdEquals
          ]
      )

instance Core.ToPath ListUserProfiles where
  toPath = Prelude.const "/"

instance Core.ToQuery ListUserProfiles where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListUserProfilesResponse' smart constructor.
data ListUserProfilesResponse = ListUserProfilesResponse'
  { -- | The list of user profiles.
    userProfiles :: Prelude.Maybe [UserProfileDetails],
    -- | If the previous response was truncated, you will receive this token. Use
    -- it in your next request to receive the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserProfilesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userProfiles', 'listUserProfilesResponse_userProfiles' - The list of user profiles.
--
-- 'nextToken', 'listUserProfilesResponse_nextToken' - If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
--
-- 'httpStatus', 'listUserProfilesResponse_httpStatus' - The response's http status code.
newListUserProfilesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListUserProfilesResponse
newListUserProfilesResponse pHttpStatus_ =
  ListUserProfilesResponse'
    { userProfiles =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of user profiles.
listUserProfilesResponse_userProfiles :: Lens.Lens' ListUserProfilesResponse (Prelude.Maybe [UserProfileDetails])
listUserProfilesResponse_userProfiles = Lens.lens (\ListUserProfilesResponse' {userProfiles} -> userProfiles) (\s@ListUserProfilesResponse' {} a -> s {userProfiles = a} :: ListUserProfilesResponse) Prelude.. Lens.mapping Lens.coerced

-- | If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
listUserProfilesResponse_nextToken :: Lens.Lens' ListUserProfilesResponse (Prelude.Maybe Prelude.Text)
listUserProfilesResponse_nextToken = Lens.lens (\ListUserProfilesResponse' {nextToken} -> nextToken) (\s@ListUserProfilesResponse' {} a -> s {nextToken = a} :: ListUserProfilesResponse)

-- | The response's http status code.
listUserProfilesResponse_httpStatus :: Lens.Lens' ListUserProfilesResponse Prelude.Int
listUserProfilesResponse_httpStatus = Lens.lens (\ListUserProfilesResponse' {httpStatus} -> httpStatus) (\s@ListUserProfilesResponse' {} a -> s {httpStatus = a} :: ListUserProfilesResponse)

instance Prelude.NFData ListUserProfilesResponse where
  rnf ListUserProfilesResponse' {..} =
    Prelude.rnf userProfiles
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

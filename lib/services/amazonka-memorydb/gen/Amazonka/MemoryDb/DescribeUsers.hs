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
-- Module      : Amazonka.MemoryDb.DescribeUsers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of users.
module Amazonka.MemoryDb.DescribeUsers
  ( -- * Creating a Request
    DescribeUsers (..),
    newDescribeUsers,

    -- * Request Lenses
    describeUsers_nextToken,
    describeUsers_userName,
    describeUsers_filters,
    describeUsers_maxResults,

    -- * Destructuring the Response
    DescribeUsersResponse (..),
    newDescribeUsersResponse,

    -- * Response Lenses
    describeUsersResponse_nextToken,
    describeUsersResponse_users,
    describeUsersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MemoryDb.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeUsers' smart constructor.
data DescribeUsers = DescribeUsers'
  { -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the user
    userName :: Prelude.Maybe Prelude.Text,
    -- | Filter to determine the list of users to return.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified MaxResults value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeUsers_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'userName', 'describeUsers_userName' - The name of the user
--
-- 'filters', 'describeUsers_filters' - Filter to determine the list of users to return.
--
-- 'maxResults', 'describeUsers_maxResults' - The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
newDescribeUsers ::
  DescribeUsers
newDescribeUsers =
  DescribeUsers'
    { nextToken = Prelude.Nothing,
      userName = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeUsers_nextToken :: Lens.Lens' DescribeUsers (Prelude.Maybe Prelude.Text)
describeUsers_nextToken = Lens.lens (\DescribeUsers' {nextToken} -> nextToken) (\s@DescribeUsers' {} a -> s {nextToken = a} :: DescribeUsers)

-- | The name of the user
describeUsers_userName :: Lens.Lens' DescribeUsers (Prelude.Maybe Prelude.Text)
describeUsers_userName = Lens.lens (\DescribeUsers' {userName} -> userName) (\s@DescribeUsers' {} a -> s {userName = a} :: DescribeUsers)

-- | Filter to determine the list of users to return.
describeUsers_filters :: Lens.Lens' DescribeUsers (Prelude.Maybe [Filter])
describeUsers_filters = Lens.lens (\DescribeUsers' {filters} -> filters) (\s@DescribeUsers' {} a -> s {filters = a} :: DescribeUsers) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
describeUsers_maxResults :: Lens.Lens' DescribeUsers (Prelude.Maybe Prelude.Int)
describeUsers_maxResults = Lens.lens (\DescribeUsers' {maxResults} -> maxResults) (\s@DescribeUsers' {} a -> s {maxResults = a} :: DescribeUsers)

instance Core.AWSRequest DescribeUsers where
  type
    AWSResponse DescribeUsers =
      DescribeUsersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeUsersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Users" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeUsers where
  hashWithSalt _salt DescribeUsers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` userName
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeUsers where
  rnf DescribeUsers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeUsers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonMemoryDB.DescribeUsers" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeUsers where
  toJSON DescribeUsers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("UserName" Core..=) Prelude.<$> userName,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeUsers where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeUsers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeUsersResponse' smart constructor.
data DescribeUsersResponse = DescribeUsersResponse'
  { -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of users.
    users :: Prelude.Maybe [User],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeUsersResponse_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'users', 'describeUsersResponse_users' - A list of users.
--
-- 'httpStatus', 'describeUsersResponse_httpStatus' - The response's http status code.
newDescribeUsersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeUsersResponse
newDescribeUsersResponse pHttpStatus_ =
  DescribeUsersResponse'
    { nextToken = Prelude.Nothing,
      users = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeUsersResponse_nextToken :: Lens.Lens' DescribeUsersResponse (Prelude.Maybe Prelude.Text)
describeUsersResponse_nextToken = Lens.lens (\DescribeUsersResponse' {nextToken} -> nextToken) (\s@DescribeUsersResponse' {} a -> s {nextToken = a} :: DescribeUsersResponse)

-- | A list of users.
describeUsersResponse_users :: Lens.Lens' DescribeUsersResponse (Prelude.Maybe [User])
describeUsersResponse_users = Lens.lens (\DescribeUsersResponse' {users} -> users) (\s@DescribeUsersResponse' {} a -> s {users = a} :: DescribeUsersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeUsersResponse_httpStatus :: Lens.Lens' DescribeUsersResponse Prelude.Int
describeUsersResponse_httpStatus = Lens.lens (\DescribeUsersResponse' {httpStatus} -> httpStatus) (\s@DescribeUsersResponse' {} a -> s {httpStatus = a} :: DescribeUsersResponse)

instance Prelude.NFData DescribeUsersResponse where
  rnf DescribeUsersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf users
      `Prelude.seq` Prelude.rnf httpStatus

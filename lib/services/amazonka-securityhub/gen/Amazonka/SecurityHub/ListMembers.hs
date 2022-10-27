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
-- Module      : Amazonka.SecurityHub.ListMembers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists details about all member accounts for the current Security Hub
-- administrator account.
--
-- The results include both member accounts that belong to an organization
-- and member accounts that were invited manually.
--
-- This operation returns paginated results.
module Amazonka.SecurityHub.ListMembers
  ( -- * Creating a Request
    ListMembers (..),
    newListMembers,

    -- * Request Lenses
    listMembers_nextToken,
    listMembers_onlyAssociated,
    listMembers_maxResults,

    -- * Destructuring the Response
    ListMembersResponse (..),
    newListMembersResponse,

    -- * Response Lenses
    listMembersResponse_nextToken,
    listMembersResponse_members,
    listMembersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityHub.Types

-- | /See:/ 'newListMembers' smart constructor.
data ListMembers = ListMembers'
  { -- | The token that is required for pagination. On your first call to the
    -- @ListMembers@ operation, set the value of this parameter to @NULL@.
    --
    -- For subsequent calls to the operation, to continue listing data, set the
    -- value of this parameter to the value returned from the previous
    -- response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies which member accounts to include in the response based on
    -- their relationship status with the administrator account. The default
    -- value is @TRUE@.
    --
    -- If @OnlyAssociated@ is set to @TRUE@, the response includes member
    -- accounts whose relationship status with the administrator account is set
    -- to @ENABLED@.
    --
    -- If @OnlyAssociated@ is set to @FALSE@, the response includes all
    -- existing member accounts.
    onlyAssociated :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of items to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMembers_nextToken' - The token that is required for pagination. On your first call to the
-- @ListMembers@ operation, set the value of this parameter to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
--
-- 'onlyAssociated', 'listMembers_onlyAssociated' - Specifies which member accounts to include in the response based on
-- their relationship status with the administrator account. The default
-- value is @TRUE@.
--
-- If @OnlyAssociated@ is set to @TRUE@, the response includes member
-- accounts whose relationship status with the administrator account is set
-- to @ENABLED@.
--
-- If @OnlyAssociated@ is set to @FALSE@, the response includes all
-- existing member accounts.
--
-- 'maxResults', 'listMembers_maxResults' - The maximum number of items to return in the response.
newListMembers ::
  ListMembers
newListMembers =
  ListMembers'
    { nextToken = Prelude.Nothing,
      onlyAssociated = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that is required for pagination. On your first call to the
-- @ListMembers@ operation, set the value of this parameter to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
listMembers_nextToken :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Text)
listMembers_nextToken = Lens.lens (\ListMembers' {nextToken} -> nextToken) (\s@ListMembers' {} a -> s {nextToken = a} :: ListMembers)

-- | Specifies which member accounts to include in the response based on
-- their relationship status with the administrator account. The default
-- value is @TRUE@.
--
-- If @OnlyAssociated@ is set to @TRUE@, the response includes member
-- accounts whose relationship status with the administrator account is set
-- to @ENABLED@.
--
-- If @OnlyAssociated@ is set to @FALSE@, the response includes all
-- existing member accounts.
listMembers_onlyAssociated :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Bool)
listMembers_onlyAssociated = Lens.lens (\ListMembers' {onlyAssociated} -> onlyAssociated) (\s@ListMembers' {} a -> s {onlyAssociated = a} :: ListMembers)

-- | The maximum number of items to return in the response.
listMembers_maxResults :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Natural)
listMembers_maxResults = Lens.lens (\ListMembers' {maxResults} -> maxResults) (\s@ListMembers' {} a -> s {maxResults = a} :: ListMembers)

instance Core.AWSPager ListMembers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listMembersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listMembersResponse_members Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listMembers_nextToken
          Lens..~ rs
          Lens.^? listMembersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListMembers where
  type AWSResponse ListMembers = ListMembersResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMembersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Members" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMembers where
  hashWithSalt _salt ListMembers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` onlyAssociated
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListMembers where
  rnf ListMembers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf onlyAssociated
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListMembers where
  toPath = Prelude.const "/members"

instance Core.ToQuery ListMembers where
  toQuery ListMembers' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "OnlyAssociated" Core.=: onlyAssociated,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListMembersResponse' smart constructor.
data ListMembersResponse = ListMembersResponse'
  { -- | The pagination token to use to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Member details returned by the operation.
    members :: Prelude.Maybe [Member],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMembersResponse_nextToken' - The pagination token to use to request the next page of results.
--
-- 'members', 'listMembersResponse_members' - Member details returned by the operation.
--
-- 'httpStatus', 'listMembersResponse_httpStatus' - The response's http status code.
newListMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMembersResponse
newListMembersResponse pHttpStatus_ =
  ListMembersResponse'
    { nextToken = Prelude.Nothing,
      members = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to request the next page of results.
listMembersResponse_nextToken :: Lens.Lens' ListMembersResponse (Prelude.Maybe Prelude.Text)
listMembersResponse_nextToken = Lens.lens (\ListMembersResponse' {nextToken} -> nextToken) (\s@ListMembersResponse' {} a -> s {nextToken = a} :: ListMembersResponse)

-- | Member details returned by the operation.
listMembersResponse_members :: Lens.Lens' ListMembersResponse (Prelude.Maybe [Member])
listMembersResponse_members = Lens.lens (\ListMembersResponse' {members} -> members) (\s@ListMembersResponse' {} a -> s {members = a} :: ListMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listMembersResponse_httpStatus :: Lens.Lens' ListMembersResponse Prelude.Int
listMembersResponse_httpStatus = Lens.lens (\ListMembersResponse' {httpStatus} -> httpStatus) (\s@ListMembersResponse' {} a -> s {httpStatus = a} :: ListMembersResponse)

instance Prelude.NFData ListMembersResponse where
  rnf ListMembersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf members
      `Prelude.seq` Prelude.rnf httpStatus

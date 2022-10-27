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
-- Module      : Amazonka.IdentityStore.ListGroupMembershipsForMember
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For the specified member in the specified identity store, returns the
-- list of all @GroupMembership@ objects and returns results in paginated
-- form.
--
-- This operation returns paginated results.
module Amazonka.IdentityStore.ListGroupMembershipsForMember
  ( -- * Creating a Request
    ListGroupMembershipsForMember (..),
    newListGroupMembershipsForMember,

    -- * Request Lenses
    listGroupMembershipsForMember_nextToken,
    listGroupMembershipsForMember_maxResults,
    listGroupMembershipsForMember_identityStoreId,
    listGroupMembershipsForMember_memberId,

    -- * Destructuring the Response
    ListGroupMembershipsForMemberResponse (..),
    newListGroupMembershipsForMemberResponse,

    -- * Response Lenses
    listGroupMembershipsForMemberResponse_nextToken,
    listGroupMembershipsForMemberResponse_httpStatus,
    listGroupMembershipsForMemberResponse_groupMemberships,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IdentityStore.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListGroupMembershipsForMember' smart constructor.
data ListGroupMembershipsForMember = ListGroupMembershipsForMember'
  { -- | The pagination token used for the @ListUsers@, @ListGroups@, and
    -- @ListGroupMemberships@ API operations. This value is generated by the
    -- identity store service. It is returned in the API response if the total
    -- results are more than the size of one page. This token is also returned
    -- when it is used in the API request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request. This parameter
    -- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
    -- results to return in one page. The length limit is 50 characters.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The globally unique identifier for the identity store.
    identityStoreId :: Prelude.Text,
    -- | An object that contains the identifier of a group member. Setting the
    -- @UserID@ field to the specific identifier for a user indicates that the
    -- user is a member of the group.
    memberId :: MemberId
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroupMembershipsForMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupMembershipsForMember_nextToken' - The pagination token used for the @ListUsers@, @ListGroups@, and
-- @ListGroupMemberships@ API operations. This value is generated by the
-- identity store service. It is returned in the API response if the total
-- results are more than the size of one page. This token is also returned
-- when it is used in the API request to search for the next page.
--
-- 'maxResults', 'listGroupMembershipsForMember_maxResults' - The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
--
-- 'identityStoreId', 'listGroupMembershipsForMember_identityStoreId' - The globally unique identifier for the identity store.
--
-- 'memberId', 'listGroupMembershipsForMember_memberId' - An object that contains the identifier of a group member. Setting the
-- @UserID@ field to the specific identifier for a user indicates that the
-- user is a member of the group.
newListGroupMembershipsForMember ::
  -- | 'identityStoreId'
  Prelude.Text ->
  -- | 'memberId'
  MemberId ->
  ListGroupMembershipsForMember
newListGroupMembershipsForMember
  pIdentityStoreId_
  pMemberId_ =
    ListGroupMembershipsForMember'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        identityStoreId = pIdentityStoreId_,
        memberId = pMemberId_
      }

-- | The pagination token used for the @ListUsers@, @ListGroups@, and
-- @ListGroupMemberships@ API operations. This value is generated by the
-- identity store service. It is returned in the API response if the total
-- results are more than the size of one page. This token is also returned
-- when it is used in the API request to search for the next page.
listGroupMembershipsForMember_nextToken :: Lens.Lens' ListGroupMembershipsForMember (Prelude.Maybe Prelude.Text)
listGroupMembershipsForMember_nextToken = Lens.lens (\ListGroupMembershipsForMember' {nextToken} -> nextToken) (\s@ListGroupMembershipsForMember' {} a -> s {nextToken = a} :: ListGroupMembershipsForMember)

-- | The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
listGroupMembershipsForMember_maxResults :: Lens.Lens' ListGroupMembershipsForMember (Prelude.Maybe Prelude.Natural)
listGroupMembershipsForMember_maxResults = Lens.lens (\ListGroupMembershipsForMember' {maxResults} -> maxResults) (\s@ListGroupMembershipsForMember' {} a -> s {maxResults = a} :: ListGroupMembershipsForMember)

-- | The globally unique identifier for the identity store.
listGroupMembershipsForMember_identityStoreId :: Lens.Lens' ListGroupMembershipsForMember Prelude.Text
listGroupMembershipsForMember_identityStoreId = Lens.lens (\ListGroupMembershipsForMember' {identityStoreId} -> identityStoreId) (\s@ListGroupMembershipsForMember' {} a -> s {identityStoreId = a} :: ListGroupMembershipsForMember)

-- | An object that contains the identifier of a group member. Setting the
-- @UserID@ field to the specific identifier for a user indicates that the
-- user is a member of the group.
listGroupMembershipsForMember_memberId :: Lens.Lens' ListGroupMembershipsForMember MemberId
listGroupMembershipsForMember_memberId = Lens.lens (\ListGroupMembershipsForMember' {memberId} -> memberId) (\s@ListGroupMembershipsForMember' {} a -> s {memberId = a} :: ListGroupMembershipsForMember)

instance Core.AWSPager ListGroupMembershipsForMember where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGroupMembershipsForMemberResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listGroupMembershipsForMemberResponse_groupMemberships
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGroupMembershipsForMember_nextToken
          Lens..~ rs
          Lens.^? listGroupMembershipsForMemberResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListGroupMembershipsForMember
  where
  type
    AWSResponse ListGroupMembershipsForMember =
      ListGroupMembershipsForMemberResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupMembershipsForMemberResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "GroupMemberships"
                            Core..!@ Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    ListGroupMembershipsForMember
  where
  hashWithSalt _salt ListGroupMembershipsForMember' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` identityStoreId
      `Prelude.hashWithSalt` memberId

instance Prelude.NFData ListGroupMembershipsForMember where
  rnf ListGroupMembershipsForMember' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf identityStoreId
      `Prelude.seq` Prelude.rnf memberId

instance Core.ToHeaders ListGroupMembershipsForMember where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIdentityStore.ListGroupMembershipsForMember" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListGroupMembershipsForMember where
  toJSON ListGroupMembershipsForMember' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("IdentityStoreId" Core..= identityStoreId),
            Prelude.Just ("MemberId" Core..= memberId)
          ]
      )

instance Core.ToPath ListGroupMembershipsForMember where
  toPath = Prelude.const "/"

instance Core.ToQuery ListGroupMembershipsForMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListGroupMembershipsForMemberResponse' smart constructor.
data ListGroupMembershipsForMemberResponse = ListGroupMembershipsForMemberResponse'
  { -- | The pagination token used for the @ListUsers@, @ListGroups@, and
    -- @ListGroupMemberships@ API operations. This value is generated by the
    -- identity store service. It is returned in the API response if the total
    -- results are more than the size of one page. This token is also returned
    -- when it is used in the API request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of @GroupMembership@ objects in the group for a specified member.
    groupMemberships :: [GroupMembership]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroupMembershipsForMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupMembershipsForMemberResponse_nextToken' - The pagination token used for the @ListUsers@, @ListGroups@, and
-- @ListGroupMemberships@ API operations. This value is generated by the
-- identity store service. It is returned in the API response if the total
-- results are more than the size of one page. This token is also returned
-- when it is used in the API request to search for the next page.
--
-- 'httpStatus', 'listGroupMembershipsForMemberResponse_httpStatus' - The response's http status code.
--
-- 'groupMemberships', 'listGroupMembershipsForMemberResponse_groupMemberships' - A list of @GroupMembership@ objects in the group for a specified member.
newListGroupMembershipsForMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGroupMembershipsForMemberResponse
newListGroupMembershipsForMemberResponse pHttpStatus_ =
  ListGroupMembershipsForMemberResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      groupMemberships = Prelude.mempty
    }

-- | The pagination token used for the @ListUsers@, @ListGroups@, and
-- @ListGroupMemberships@ API operations. This value is generated by the
-- identity store service. It is returned in the API response if the total
-- results are more than the size of one page. This token is also returned
-- when it is used in the API request to search for the next page.
listGroupMembershipsForMemberResponse_nextToken :: Lens.Lens' ListGroupMembershipsForMemberResponse (Prelude.Maybe Prelude.Text)
listGroupMembershipsForMemberResponse_nextToken = Lens.lens (\ListGroupMembershipsForMemberResponse' {nextToken} -> nextToken) (\s@ListGroupMembershipsForMemberResponse' {} a -> s {nextToken = a} :: ListGroupMembershipsForMemberResponse)

-- | The response's http status code.
listGroupMembershipsForMemberResponse_httpStatus :: Lens.Lens' ListGroupMembershipsForMemberResponse Prelude.Int
listGroupMembershipsForMemberResponse_httpStatus = Lens.lens (\ListGroupMembershipsForMemberResponse' {httpStatus} -> httpStatus) (\s@ListGroupMembershipsForMemberResponse' {} a -> s {httpStatus = a} :: ListGroupMembershipsForMemberResponse)

-- | A list of @GroupMembership@ objects in the group for a specified member.
listGroupMembershipsForMemberResponse_groupMemberships :: Lens.Lens' ListGroupMembershipsForMemberResponse [GroupMembership]
listGroupMembershipsForMemberResponse_groupMemberships = Lens.lens (\ListGroupMembershipsForMemberResponse' {groupMemberships} -> groupMemberships) (\s@ListGroupMembershipsForMemberResponse' {} a -> s {groupMemberships = a} :: ListGroupMembershipsForMemberResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListGroupMembershipsForMemberResponse
  where
  rnf ListGroupMembershipsForMemberResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf groupMemberships

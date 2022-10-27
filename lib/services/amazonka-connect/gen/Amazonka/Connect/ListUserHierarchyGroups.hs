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
-- Module      : Amazonka.Connect.ListUserHierarchyGroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides summary information about the hierarchy groups for the
-- specified Amazon Connect instance.
--
-- For more information about agent hierarchies, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html Set Up Agent Hierarchies>
-- in the /Amazon Connect Administrator Guide/.
--
-- This operation returns paginated results.
module Amazonka.Connect.ListUserHierarchyGroups
  ( -- * Creating a Request
    ListUserHierarchyGroups (..),
    newListUserHierarchyGroups,

    -- * Request Lenses
    listUserHierarchyGroups_nextToken,
    listUserHierarchyGroups_maxResults,
    listUserHierarchyGroups_instanceId,

    -- * Destructuring the Response
    ListUserHierarchyGroupsResponse (..),
    newListUserHierarchyGroupsResponse,

    -- * Response Lenses
    listUserHierarchyGroupsResponse_nextToken,
    listUserHierarchyGroupsResponse_userHierarchyGroupSummaryList,
    listUserHierarchyGroupsResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListUserHierarchyGroups' smart constructor.
data ListUserHierarchyGroups = ListUserHierarchyGroups'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page. The default MaxResult
    -- size is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserHierarchyGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUserHierarchyGroups_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'listUserHierarchyGroups_maxResults' - The maximum number of results to return per page. The default MaxResult
-- size is 100.
--
-- 'instanceId', 'listUserHierarchyGroups_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newListUserHierarchyGroups ::
  -- | 'instanceId'
  Prelude.Text ->
  ListUserHierarchyGroups
newListUserHierarchyGroups pInstanceId_ =
  ListUserHierarchyGroups'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listUserHierarchyGroups_nextToken :: Lens.Lens' ListUserHierarchyGroups (Prelude.Maybe Prelude.Text)
listUserHierarchyGroups_nextToken = Lens.lens (\ListUserHierarchyGroups' {nextToken} -> nextToken) (\s@ListUserHierarchyGroups' {} a -> s {nextToken = a} :: ListUserHierarchyGroups)

-- | The maximum number of results to return per page. The default MaxResult
-- size is 100.
listUserHierarchyGroups_maxResults :: Lens.Lens' ListUserHierarchyGroups (Prelude.Maybe Prelude.Natural)
listUserHierarchyGroups_maxResults = Lens.lens (\ListUserHierarchyGroups' {maxResults} -> maxResults) (\s@ListUserHierarchyGroups' {} a -> s {maxResults = a} :: ListUserHierarchyGroups)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listUserHierarchyGroups_instanceId :: Lens.Lens' ListUserHierarchyGroups Prelude.Text
listUserHierarchyGroups_instanceId = Lens.lens (\ListUserHierarchyGroups' {instanceId} -> instanceId) (\s@ListUserHierarchyGroups' {} a -> s {instanceId = a} :: ListUserHierarchyGroups)

instance Core.AWSPager ListUserHierarchyGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listUserHierarchyGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listUserHierarchyGroupsResponse_userHierarchyGroupSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listUserHierarchyGroups_nextToken
          Lens..~ rs
          Lens.^? listUserHierarchyGroupsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListUserHierarchyGroups where
  type
    AWSResponse ListUserHierarchyGroups =
      ListUserHierarchyGroupsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUserHierarchyGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "UserHierarchyGroupSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListUserHierarchyGroups where
  hashWithSalt _salt ListUserHierarchyGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData ListUserHierarchyGroups where
  rnf ListUserHierarchyGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders ListUserHierarchyGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListUserHierarchyGroups where
  toPath ListUserHierarchyGroups' {..} =
    Prelude.mconcat
      [ "/user-hierarchy-groups-summary/",
        Core.toBS instanceId
      ]

instance Core.ToQuery ListUserHierarchyGroups where
  toQuery ListUserHierarchyGroups' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListUserHierarchyGroupsResponse' smart constructor.
data ListUserHierarchyGroupsResponse = ListUserHierarchyGroupsResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the hierarchy groups.
    userHierarchyGroupSummaryList :: Prelude.Maybe [HierarchyGroupSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserHierarchyGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUserHierarchyGroupsResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'userHierarchyGroupSummaryList', 'listUserHierarchyGroupsResponse_userHierarchyGroupSummaryList' - Information about the hierarchy groups.
--
-- 'httpStatus', 'listUserHierarchyGroupsResponse_httpStatus' - The response's http status code.
newListUserHierarchyGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListUserHierarchyGroupsResponse
newListUserHierarchyGroupsResponse pHttpStatus_ =
  ListUserHierarchyGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      userHierarchyGroupSummaryList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
listUserHierarchyGroupsResponse_nextToken :: Lens.Lens' ListUserHierarchyGroupsResponse (Prelude.Maybe Prelude.Text)
listUserHierarchyGroupsResponse_nextToken = Lens.lens (\ListUserHierarchyGroupsResponse' {nextToken} -> nextToken) (\s@ListUserHierarchyGroupsResponse' {} a -> s {nextToken = a} :: ListUserHierarchyGroupsResponse)

-- | Information about the hierarchy groups.
listUserHierarchyGroupsResponse_userHierarchyGroupSummaryList :: Lens.Lens' ListUserHierarchyGroupsResponse (Prelude.Maybe [HierarchyGroupSummary])
listUserHierarchyGroupsResponse_userHierarchyGroupSummaryList = Lens.lens (\ListUserHierarchyGroupsResponse' {userHierarchyGroupSummaryList} -> userHierarchyGroupSummaryList) (\s@ListUserHierarchyGroupsResponse' {} a -> s {userHierarchyGroupSummaryList = a} :: ListUserHierarchyGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listUserHierarchyGroupsResponse_httpStatus :: Lens.Lens' ListUserHierarchyGroupsResponse Prelude.Int
listUserHierarchyGroupsResponse_httpStatus = Lens.lens (\ListUserHierarchyGroupsResponse' {httpStatus} -> httpStatus) (\s@ListUserHierarchyGroupsResponse' {} a -> s {httpStatus = a} :: ListUserHierarchyGroupsResponse)

instance
  Prelude.NFData
    ListUserHierarchyGroupsResponse
  where
  rnf ListUserHierarchyGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf userHierarchyGroupSummaryList
      `Prelude.seq` Prelude.rnf httpStatus

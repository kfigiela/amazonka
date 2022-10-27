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
-- Module      : Amazonka.Connect.ListTrafficDistributionGroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists traffic distribution groups.
--
-- This operation returns paginated results.
module Amazonka.Connect.ListTrafficDistributionGroups
  ( -- * Creating a Request
    ListTrafficDistributionGroups (..),
    newListTrafficDistributionGroups,

    -- * Request Lenses
    listTrafficDistributionGroups_nextToken,
    listTrafficDistributionGroups_instanceId,
    listTrafficDistributionGroups_maxResults,

    -- * Destructuring the Response
    ListTrafficDistributionGroupsResponse (..),
    newListTrafficDistributionGroupsResponse,

    -- * Response Lenses
    listTrafficDistributionGroupsResponse_nextToken,
    listTrafficDistributionGroupsResponse_trafficDistributionGroupSummaryList,
    listTrafficDistributionGroupsResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListTrafficDistributionGroups' smart constructor.
data ListTrafficDistributionGroups = ListTrafficDistributionGroups'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrafficDistributionGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTrafficDistributionGroups_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'instanceId', 'listTrafficDistributionGroups_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'maxResults', 'listTrafficDistributionGroups_maxResults' - The maximum number of results to return per page.
newListTrafficDistributionGroups ::
  ListTrafficDistributionGroups
newListTrafficDistributionGroups =
  ListTrafficDistributionGroups'
    { nextToken =
        Prelude.Nothing,
      instanceId = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listTrafficDistributionGroups_nextToken :: Lens.Lens' ListTrafficDistributionGroups (Prelude.Maybe Prelude.Text)
listTrafficDistributionGroups_nextToken = Lens.lens (\ListTrafficDistributionGroups' {nextToken} -> nextToken) (\s@ListTrafficDistributionGroups' {} a -> s {nextToken = a} :: ListTrafficDistributionGroups)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listTrafficDistributionGroups_instanceId :: Lens.Lens' ListTrafficDistributionGroups (Prelude.Maybe Prelude.Text)
listTrafficDistributionGroups_instanceId = Lens.lens (\ListTrafficDistributionGroups' {instanceId} -> instanceId) (\s@ListTrafficDistributionGroups' {} a -> s {instanceId = a} :: ListTrafficDistributionGroups)

-- | The maximum number of results to return per page.
listTrafficDistributionGroups_maxResults :: Lens.Lens' ListTrafficDistributionGroups (Prelude.Maybe Prelude.Natural)
listTrafficDistributionGroups_maxResults = Lens.lens (\ListTrafficDistributionGroups' {maxResults} -> maxResults) (\s@ListTrafficDistributionGroups' {} a -> s {maxResults = a} :: ListTrafficDistributionGroups)

instance Core.AWSPager ListTrafficDistributionGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTrafficDistributionGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listTrafficDistributionGroupsResponse_trafficDistributionGroupSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listTrafficDistributionGroups_nextToken
          Lens..~ rs
          Lens.^? listTrafficDistributionGroupsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListTrafficDistributionGroups
  where
  type
    AWSResponse ListTrafficDistributionGroups =
      ListTrafficDistributionGroupsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTrafficDistributionGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "TrafficDistributionGroupSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListTrafficDistributionGroups
  where
  hashWithSalt _salt ListTrafficDistributionGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListTrafficDistributionGroups where
  rnf ListTrafficDistributionGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListTrafficDistributionGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListTrafficDistributionGroups where
  toPath = Prelude.const "/traffic-distribution-groups"

instance Core.ToQuery ListTrafficDistributionGroups where
  toQuery ListTrafficDistributionGroups' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "instanceId" Core.=: instanceId,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListTrafficDistributionGroupsResponse' smart constructor.
data ListTrafficDistributionGroupsResponse = ListTrafficDistributionGroupsResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of traffic distribution groups.
    trafficDistributionGroupSummaryList :: Prelude.Maybe [TrafficDistributionGroupSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrafficDistributionGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTrafficDistributionGroupsResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'trafficDistributionGroupSummaryList', 'listTrafficDistributionGroupsResponse_trafficDistributionGroupSummaryList' - A list of traffic distribution groups.
--
-- 'httpStatus', 'listTrafficDistributionGroupsResponse_httpStatus' - The response's http status code.
newListTrafficDistributionGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTrafficDistributionGroupsResponse
newListTrafficDistributionGroupsResponse pHttpStatus_ =
  ListTrafficDistributionGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      trafficDistributionGroupSummaryList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
listTrafficDistributionGroupsResponse_nextToken :: Lens.Lens' ListTrafficDistributionGroupsResponse (Prelude.Maybe Prelude.Text)
listTrafficDistributionGroupsResponse_nextToken = Lens.lens (\ListTrafficDistributionGroupsResponse' {nextToken} -> nextToken) (\s@ListTrafficDistributionGroupsResponse' {} a -> s {nextToken = a} :: ListTrafficDistributionGroupsResponse)

-- | A list of traffic distribution groups.
listTrafficDistributionGroupsResponse_trafficDistributionGroupSummaryList :: Lens.Lens' ListTrafficDistributionGroupsResponse (Prelude.Maybe [TrafficDistributionGroupSummary])
listTrafficDistributionGroupsResponse_trafficDistributionGroupSummaryList = Lens.lens (\ListTrafficDistributionGroupsResponse' {trafficDistributionGroupSummaryList} -> trafficDistributionGroupSummaryList) (\s@ListTrafficDistributionGroupsResponse' {} a -> s {trafficDistributionGroupSummaryList = a} :: ListTrafficDistributionGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listTrafficDistributionGroupsResponse_httpStatus :: Lens.Lens' ListTrafficDistributionGroupsResponse Prelude.Int
listTrafficDistributionGroupsResponse_httpStatus = Lens.lens (\ListTrafficDistributionGroupsResponse' {httpStatus} -> httpStatus) (\s@ListTrafficDistributionGroupsResponse' {} a -> s {httpStatus = a} :: ListTrafficDistributionGroupsResponse)

instance
  Prelude.NFData
    ListTrafficDistributionGroupsResponse
  where
  rnf ListTrafficDistributionGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf trafficDistributionGroupSummaryList
      `Prelude.seq` Prelude.rnf httpStatus

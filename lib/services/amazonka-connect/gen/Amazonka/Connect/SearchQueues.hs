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
-- Module      : Amazonka.Connect.SearchQueues
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Searches queues in an Amazon Connect instance, with optional filtering.
--
-- This operation returns paginated results.
module Amazonka.Connect.SearchQueues
  ( -- * Creating a Request
    SearchQueues (..),
    newSearchQueues,

    -- * Request Lenses
    searchQueues_nextToken,
    searchQueues_searchCriteria,
    searchQueues_searchFilter,
    searchQueues_maxResults,
    searchQueues_instanceId,

    -- * Destructuring the Response
    SearchQueuesResponse (..),
    newSearchQueuesResponse,

    -- * Response Lenses
    searchQueuesResponse_nextToken,
    searchQueuesResponse_approximateTotalCount,
    searchQueuesResponse_queues,
    searchQueuesResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSearchQueues' smart constructor.
data SearchQueues = SearchQueues'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The search criteria to be used to return queues.
    searchCriteria :: Prelude.Maybe QueueSearchCriteria,
    -- | Filters to be applied to search results.
    searchFilter :: Prelude.Maybe QueueSearchFilter,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchQueues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchQueues_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'searchCriteria', 'searchQueues_searchCriteria' - The search criteria to be used to return queues.
--
-- 'searchFilter', 'searchQueues_searchFilter' - Filters to be applied to search results.
--
-- 'maxResults', 'searchQueues_maxResults' - The maximum number of results to return per page.
--
-- 'instanceId', 'searchQueues_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newSearchQueues ::
  -- | 'instanceId'
  Prelude.Text ->
  SearchQueues
newSearchQueues pInstanceId_ =
  SearchQueues'
    { nextToken = Prelude.Nothing,
      searchCriteria = Prelude.Nothing,
      searchFilter = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
searchQueues_nextToken :: Lens.Lens' SearchQueues (Prelude.Maybe Prelude.Text)
searchQueues_nextToken = Lens.lens (\SearchQueues' {nextToken} -> nextToken) (\s@SearchQueues' {} a -> s {nextToken = a} :: SearchQueues)

-- | The search criteria to be used to return queues.
searchQueues_searchCriteria :: Lens.Lens' SearchQueues (Prelude.Maybe QueueSearchCriteria)
searchQueues_searchCriteria = Lens.lens (\SearchQueues' {searchCriteria} -> searchCriteria) (\s@SearchQueues' {} a -> s {searchCriteria = a} :: SearchQueues)

-- | Filters to be applied to search results.
searchQueues_searchFilter :: Lens.Lens' SearchQueues (Prelude.Maybe QueueSearchFilter)
searchQueues_searchFilter = Lens.lens (\SearchQueues' {searchFilter} -> searchFilter) (\s@SearchQueues' {} a -> s {searchFilter = a} :: SearchQueues)

-- | The maximum number of results to return per page.
searchQueues_maxResults :: Lens.Lens' SearchQueues (Prelude.Maybe Prelude.Natural)
searchQueues_maxResults = Lens.lens (\SearchQueues' {maxResults} -> maxResults) (\s@SearchQueues' {} a -> s {maxResults = a} :: SearchQueues)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
searchQueues_instanceId :: Lens.Lens' SearchQueues Prelude.Text
searchQueues_instanceId = Lens.lens (\SearchQueues' {instanceId} -> instanceId) (\s@SearchQueues' {} a -> s {instanceId = a} :: SearchQueues)

instance Core.AWSPager SearchQueues where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? searchQueuesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? searchQueuesResponse_queues Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& searchQueues_nextToken
          Lens..~ rs
          Lens.^? searchQueuesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest SearchQueues where
  type AWSResponse SearchQueues = SearchQueuesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchQueuesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ApproximateTotalCount")
            Prelude.<*> (x Core..?> "Queues" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchQueues where
  hashWithSalt _salt SearchQueues' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` searchCriteria
      `Prelude.hashWithSalt` searchFilter
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData SearchQueues where
  rnf SearchQueues' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf searchCriteria
      `Prelude.seq` Prelude.rnf searchFilter
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders SearchQueues where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchQueues where
  toJSON SearchQueues' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SearchCriteria" Core..=)
              Prelude.<$> searchCriteria,
            ("SearchFilter" Core..=) Prelude.<$> searchFilter,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("InstanceId" Core..= instanceId)
          ]
      )

instance Core.ToPath SearchQueues where
  toPath = Prelude.const "/search-queues"

instance Core.ToQuery SearchQueues where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchQueuesResponse' smart constructor.
data SearchQueuesResponse = SearchQueuesResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The total number of queues which matched your search query.
    approximateTotalCount :: Prelude.Maybe Prelude.Integer,
    -- | Information about the queues.
    queues :: Prelude.Maybe [Queue],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchQueuesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchQueuesResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'approximateTotalCount', 'searchQueuesResponse_approximateTotalCount' - The total number of queues which matched your search query.
--
-- 'queues', 'searchQueuesResponse_queues' - Information about the queues.
--
-- 'httpStatus', 'searchQueuesResponse_httpStatus' - The response's http status code.
newSearchQueuesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchQueuesResponse
newSearchQueuesResponse pHttpStatus_ =
  SearchQueuesResponse'
    { nextToken = Prelude.Nothing,
      approximateTotalCount = Prelude.Nothing,
      queues = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
searchQueuesResponse_nextToken :: Lens.Lens' SearchQueuesResponse (Prelude.Maybe Prelude.Text)
searchQueuesResponse_nextToken = Lens.lens (\SearchQueuesResponse' {nextToken} -> nextToken) (\s@SearchQueuesResponse' {} a -> s {nextToken = a} :: SearchQueuesResponse)

-- | The total number of queues which matched your search query.
searchQueuesResponse_approximateTotalCount :: Lens.Lens' SearchQueuesResponse (Prelude.Maybe Prelude.Integer)
searchQueuesResponse_approximateTotalCount = Lens.lens (\SearchQueuesResponse' {approximateTotalCount} -> approximateTotalCount) (\s@SearchQueuesResponse' {} a -> s {approximateTotalCount = a} :: SearchQueuesResponse)

-- | Information about the queues.
searchQueuesResponse_queues :: Lens.Lens' SearchQueuesResponse (Prelude.Maybe [Queue])
searchQueuesResponse_queues = Lens.lens (\SearchQueuesResponse' {queues} -> queues) (\s@SearchQueuesResponse' {} a -> s {queues = a} :: SearchQueuesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
searchQueuesResponse_httpStatus :: Lens.Lens' SearchQueuesResponse Prelude.Int
searchQueuesResponse_httpStatus = Lens.lens (\SearchQueuesResponse' {httpStatus} -> httpStatus) (\s@SearchQueuesResponse' {} a -> s {httpStatus = a} :: SearchQueuesResponse)

instance Prelude.NFData SearchQueuesResponse where
  rnf SearchQueuesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf approximateTotalCount
      `Prelude.seq` Prelude.rnf queues
      `Prelude.seq` Prelude.rnf httpStatus

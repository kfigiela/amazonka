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
-- Module      : Amazonka.ApplicationInsights.ListConfigurationHistory
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the INFO, WARN, and ERROR events for periodic configuration
-- updates performed by Application Insights. Examples of events
-- represented are:
--
-- -   INFO: creating a new alarm or updating an alarm threshold.
--
-- -   WARN: alarm not created due to insufficient data points used to
--     predict thresholds.
--
-- -   ERROR: alarm not created due to permission errors or exceeding
--     quotas.
module Amazonka.ApplicationInsights.ListConfigurationHistory
  ( -- * Creating a Request
    ListConfigurationHistory (..),
    newListConfigurationHistory,

    -- * Request Lenses
    listConfigurationHistory_nextToken,
    listConfigurationHistory_endTime,
    listConfigurationHistory_resourceGroupName,
    listConfigurationHistory_maxResults,
    listConfigurationHistory_eventStatus,
    listConfigurationHistory_startTime,

    -- * Destructuring the Response
    ListConfigurationHistoryResponse (..),
    newListConfigurationHistoryResponse,

    -- * Response Lenses
    listConfigurationHistoryResponse_nextToken,
    listConfigurationHistoryResponse_eventList,
    listConfigurationHistoryResponse_httpStatus,
  )
where

import Amazonka.ApplicationInsights.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListConfigurationHistory' smart constructor.
data ListConfigurationHistory = ListConfigurationHistory'
  { -- | The @NextToken@ value returned from a previous paginated
    -- @ListConfigurationHistory@ request where @MaxResults@ was used and the
    -- results exceeded the value of that parameter. Pagination continues from
    -- the end of the previous results that returned the @NextToken@ value.
    -- This value is @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The end time of the event.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | Resource group to which the application belongs.
    resourceGroupName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by @ListConfigurationHistory@ in
    -- paginated output. When this parameter is used,
    -- @ListConfigurationHistory@ returns only @MaxResults@ in a single page
    -- along with a @NextToken@ response element. The remaining results of the
    -- initial request can be seen by sending another
    -- @ListConfigurationHistory@ request with the returned @NextToken@ value.
    -- If this parameter is not used, then @ListConfigurationHistory@ returns
    -- all results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The status of the configuration update event. Possible values include
    -- INFO, WARN, and ERROR.
    eventStatus :: Prelude.Maybe ConfigurationEventStatus,
    -- | The start time of the event.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConfigurationHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConfigurationHistory_nextToken' - The @NextToken@ value returned from a previous paginated
-- @ListConfigurationHistory@ request where @MaxResults@ was used and the
-- results exceeded the value of that parameter. Pagination continues from
-- the end of the previous results that returned the @NextToken@ value.
-- This value is @null@ when there are no more results to return.
--
-- 'endTime', 'listConfigurationHistory_endTime' - The end time of the event.
--
-- 'resourceGroupName', 'listConfigurationHistory_resourceGroupName' - Resource group to which the application belongs.
--
-- 'maxResults', 'listConfigurationHistory_maxResults' - The maximum number of results returned by @ListConfigurationHistory@ in
-- paginated output. When this parameter is used,
-- @ListConfigurationHistory@ returns only @MaxResults@ in a single page
-- along with a @NextToken@ response element. The remaining results of the
-- initial request can be seen by sending another
-- @ListConfigurationHistory@ request with the returned @NextToken@ value.
-- If this parameter is not used, then @ListConfigurationHistory@ returns
-- all results.
--
-- 'eventStatus', 'listConfigurationHistory_eventStatus' - The status of the configuration update event. Possible values include
-- INFO, WARN, and ERROR.
--
-- 'startTime', 'listConfigurationHistory_startTime' - The start time of the event.
newListConfigurationHistory ::
  ListConfigurationHistory
newListConfigurationHistory =
  ListConfigurationHistory'
    { nextToken =
        Prelude.Nothing,
      endTime = Prelude.Nothing,
      resourceGroupName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      eventStatus = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The @NextToken@ value returned from a previous paginated
-- @ListConfigurationHistory@ request where @MaxResults@ was used and the
-- results exceeded the value of that parameter. Pagination continues from
-- the end of the previous results that returned the @NextToken@ value.
-- This value is @null@ when there are no more results to return.
listConfigurationHistory_nextToken :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe Prelude.Text)
listConfigurationHistory_nextToken = Lens.lens (\ListConfigurationHistory' {nextToken} -> nextToken) (\s@ListConfigurationHistory' {} a -> s {nextToken = a} :: ListConfigurationHistory)

-- | The end time of the event.
listConfigurationHistory_endTime :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe Prelude.UTCTime)
listConfigurationHistory_endTime = Lens.lens (\ListConfigurationHistory' {endTime} -> endTime) (\s@ListConfigurationHistory' {} a -> s {endTime = a} :: ListConfigurationHistory) Prelude.. Lens.mapping Core._Time

-- | Resource group to which the application belongs.
listConfigurationHistory_resourceGroupName :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe Prelude.Text)
listConfigurationHistory_resourceGroupName = Lens.lens (\ListConfigurationHistory' {resourceGroupName} -> resourceGroupName) (\s@ListConfigurationHistory' {} a -> s {resourceGroupName = a} :: ListConfigurationHistory)

-- | The maximum number of results returned by @ListConfigurationHistory@ in
-- paginated output. When this parameter is used,
-- @ListConfigurationHistory@ returns only @MaxResults@ in a single page
-- along with a @NextToken@ response element. The remaining results of the
-- initial request can be seen by sending another
-- @ListConfigurationHistory@ request with the returned @NextToken@ value.
-- If this parameter is not used, then @ListConfigurationHistory@ returns
-- all results.
listConfigurationHistory_maxResults :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe Prelude.Natural)
listConfigurationHistory_maxResults = Lens.lens (\ListConfigurationHistory' {maxResults} -> maxResults) (\s@ListConfigurationHistory' {} a -> s {maxResults = a} :: ListConfigurationHistory)

-- | The status of the configuration update event. Possible values include
-- INFO, WARN, and ERROR.
listConfigurationHistory_eventStatus :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe ConfigurationEventStatus)
listConfigurationHistory_eventStatus = Lens.lens (\ListConfigurationHistory' {eventStatus} -> eventStatus) (\s@ListConfigurationHistory' {} a -> s {eventStatus = a} :: ListConfigurationHistory)

-- | The start time of the event.
listConfigurationHistory_startTime :: Lens.Lens' ListConfigurationHistory (Prelude.Maybe Prelude.UTCTime)
listConfigurationHistory_startTime = Lens.lens (\ListConfigurationHistory' {startTime} -> startTime) (\s@ListConfigurationHistory' {} a -> s {startTime = a} :: ListConfigurationHistory) Prelude.. Lens.mapping Core._Time

instance Core.AWSRequest ListConfigurationHistory where
  type
    AWSResponse ListConfigurationHistory =
      ListConfigurationHistoryResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListConfigurationHistoryResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "EventList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListConfigurationHistory where
  hashWithSalt _salt ListConfigurationHistory' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` resourceGroupName
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` eventStatus
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData ListConfigurationHistory where
  rnf ListConfigurationHistory' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf resourceGroupName
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf eventStatus
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders ListConfigurationHistory where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.ListConfigurationHistory" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListConfigurationHistory where
  toJSON ListConfigurationHistory' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("EndTime" Core..=) Prelude.<$> endTime,
            ("ResourceGroupName" Core..=)
              Prelude.<$> resourceGroupName,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("EventStatus" Core..=) Prelude.<$> eventStatus,
            ("StartTime" Core..=) Prelude.<$> startTime
          ]
      )

instance Core.ToPath ListConfigurationHistory where
  toPath = Prelude.const "/"

instance Core.ToQuery ListConfigurationHistory where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListConfigurationHistoryResponse' smart constructor.
data ListConfigurationHistoryResponse = ListConfigurationHistoryResponse'
  { -- | The @NextToken@ value to include in a future @ListConfigurationHistory@
    -- request. When the results of a @ListConfigurationHistory@ request exceed
    -- @MaxResults@, this value can be used to retrieve the next page of
    -- results. This value is @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of configuration events and their corresponding details.
    eventList :: Prelude.Maybe [ConfigurationEvent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConfigurationHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConfigurationHistoryResponse_nextToken' - The @NextToken@ value to include in a future @ListConfigurationHistory@
-- request. When the results of a @ListConfigurationHistory@ request exceed
-- @MaxResults@, this value can be used to retrieve the next page of
-- results. This value is @null@ when there are no more results to return.
--
-- 'eventList', 'listConfigurationHistoryResponse_eventList' - The list of configuration events and their corresponding details.
--
-- 'httpStatus', 'listConfigurationHistoryResponse_httpStatus' - The response's http status code.
newListConfigurationHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListConfigurationHistoryResponse
newListConfigurationHistoryResponse pHttpStatus_ =
  ListConfigurationHistoryResponse'
    { nextToken =
        Prelude.Nothing,
      eventList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @NextToken@ value to include in a future @ListConfigurationHistory@
-- request. When the results of a @ListConfigurationHistory@ request exceed
-- @MaxResults@, this value can be used to retrieve the next page of
-- results. This value is @null@ when there are no more results to return.
listConfigurationHistoryResponse_nextToken :: Lens.Lens' ListConfigurationHistoryResponse (Prelude.Maybe Prelude.Text)
listConfigurationHistoryResponse_nextToken = Lens.lens (\ListConfigurationHistoryResponse' {nextToken} -> nextToken) (\s@ListConfigurationHistoryResponse' {} a -> s {nextToken = a} :: ListConfigurationHistoryResponse)

-- | The list of configuration events and their corresponding details.
listConfigurationHistoryResponse_eventList :: Lens.Lens' ListConfigurationHistoryResponse (Prelude.Maybe [ConfigurationEvent])
listConfigurationHistoryResponse_eventList = Lens.lens (\ListConfigurationHistoryResponse' {eventList} -> eventList) (\s@ListConfigurationHistoryResponse' {} a -> s {eventList = a} :: ListConfigurationHistoryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listConfigurationHistoryResponse_httpStatus :: Lens.Lens' ListConfigurationHistoryResponse Prelude.Int
listConfigurationHistoryResponse_httpStatus = Lens.lens (\ListConfigurationHistoryResponse' {httpStatus} -> httpStatus) (\s@ListConfigurationHistoryResponse' {} a -> s {httpStatus = a} :: ListConfigurationHistoryResponse)

instance
  Prelude.NFData
    ListConfigurationHistoryResponse
  where
  rnf ListConfigurationHistoryResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf eventList
      `Prelude.seq` Prelude.rnf httpStatus

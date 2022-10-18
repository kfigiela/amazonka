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
-- Module      : Amazonka.XRay.GetInsightSummaries
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the summaries of all insights in the specified group matching
-- the provided filter values.
module Amazonka.XRay.GetInsightSummaries
  ( -- * Creating a Request
    GetInsightSummaries (..),
    newGetInsightSummaries,

    -- * Request Lenses
    getInsightSummaries_nextToken,
    getInsightSummaries_groupName,
    getInsightSummaries_maxResults,
    getInsightSummaries_states,
    getInsightSummaries_groupARN,
    getInsightSummaries_startTime,
    getInsightSummaries_endTime,

    -- * Destructuring the Response
    GetInsightSummariesResponse (..),
    newGetInsightSummariesResponse,

    -- * Response Lenses
    getInsightSummariesResponse_nextToken,
    getInsightSummariesResponse_insightSummaries,
    getInsightSummariesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.XRay.Types

-- | /See:/ 'newGetInsightSummaries' smart constructor.
data GetInsightSummaries = GetInsightSummaries'
  { -- | Pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the group. Required if the GroupARN isn\'t provided.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to display.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The list of insight states.
    states :: Prelude.Maybe [InsightState],
    -- | The Amazon Resource Name (ARN) of the group. Required if the GroupName
    -- isn\'t provided.
    groupARN :: Prelude.Maybe Prelude.Text,
    -- | The beginning of the time frame in which the insights started. The start
    -- time can\'t be more than 30 days old.
    startTime :: Core.POSIX,
    -- | The end of the time frame in which the insights ended. The end time
    -- can\'t be more than 30 days old.
    endTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInsightSummaries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getInsightSummaries_nextToken' - Pagination token.
--
-- 'groupName', 'getInsightSummaries_groupName' - The name of the group. Required if the GroupARN isn\'t provided.
--
-- 'maxResults', 'getInsightSummaries_maxResults' - The maximum number of results to display.
--
-- 'states', 'getInsightSummaries_states' - The list of insight states.
--
-- 'groupARN', 'getInsightSummaries_groupARN' - The Amazon Resource Name (ARN) of the group. Required if the GroupName
-- isn\'t provided.
--
-- 'startTime', 'getInsightSummaries_startTime' - The beginning of the time frame in which the insights started. The start
-- time can\'t be more than 30 days old.
--
-- 'endTime', 'getInsightSummaries_endTime' - The end of the time frame in which the insights ended. The end time
-- can\'t be more than 30 days old.
newGetInsightSummaries ::
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'endTime'
  Prelude.UTCTime ->
  GetInsightSummaries
newGetInsightSummaries pStartTime_ pEndTime_ =
  GetInsightSummaries'
    { nextToken = Prelude.Nothing,
      groupName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      states = Prelude.Nothing,
      groupARN = Prelude.Nothing,
      startTime = Core._Time Lens.# pStartTime_,
      endTime = Core._Time Lens.# pEndTime_
    }

-- | Pagination token.
getInsightSummaries_nextToken :: Lens.Lens' GetInsightSummaries (Prelude.Maybe Prelude.Text)
getInsightSummaries_nextToken = Lens.lens (\GetInsightSummaries' {nextToken} -> nextToken) (\s@GetInsightSummaries' {} a -> s {nextToken = a} :: GetInsightSummaries)

-- | The name of the group. Required if the GroupARN isn\'t provided.
getInsightSummaries_groupName :: Lens.Lens' GetInsightSummaries (Prelude.Maybe Prelude.Text)
getInsightSummaries_groupName = Lens.lens (\GetInsightSummaries' {groupName} -> groupName) (\s@GetInsightSummaries' {} a -> s {groupName = a} :: GetInsightSummaries)

-- | The maximum number of results to display.
getInsightSummaries_maxResults :: Lens.Lens' GetInsightSummaries (Prelude.Maybe Prelude.Natural)
getInsightSummaries_maxResults = Lens.lens (\GetInsightSummaries' {maxResults} -> maxResults) (\s@GetInsightSummaries' {} a -> s {maxResults = a} :: GetInsightSummaries)

-- | The list of insight states.
getInsightSummaries_states :: Lens.Lens' GetInsightSummaries (Prelude.Maybe [InsightState])
getInsightSummaries_states = Lens.lens (\GetInsightSummaries' {states} -> states) (\s@GetInsightSummaries' {} a -> s {states = a} :: GetInsightSummaries) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the group. Required if the GroupName
-- isn\'t provided.
getInsightSummaries_groupARN :: Lens.Lens' GetInsightSummaries (Prelude.Maybe Prelude.Text)
getInsightSummaries_groupARN = Lens.lens (\GetInsightSummaries' {groupARN} -> groupARN) (\s@GetInsightSummaries' {} a -> s {groupARN = a} :: GetInsightSummaries)

-- | The beginning of the time frame in which the insights started. The start
-- time can\'t be more than 30 days old.
getInsightSummaries_startTime :: Lens.Lens' GetInsightSummaries Prelude.UTCTime
getInsightSummaries_startTime = Lens.lens (\GetInsightSummaries' {startTime} -> startTime) (\s@GetInsightSummaries' {} a -> s {startTime = a} :: GetInsightSummaries) Prelude.. Core._Time

-- | The end of the time frame in which the insights ended. The end time
-- can\'t be more than 30 days old.
getInsightSummaries_endTime :: Lens.Lens' GetInsightSummaries Prelude.UTCTime
getInsightSummaries_endTime = Lens.lens (\GetInsightSummaries' {endTime} -> endTime) (\s@GetInsightSummaries' {} a -> s {endTime = a} :: GetInsightSummaries) Prelude.. Core._Time

instance Core.AWSRequest GetInsightSummaries where
  type
    AWSResponse GetInsightSummaries =
      GetInsightSummariesResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetInsightSummariesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "InsightSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService GetInsightSummaries where
  service _proxy = defaultService

instance Prelude.Hashable GetInsightSummaries where
  hashWithSalt _salt GetInsightSummaries' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` groupName
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` states
      `Prelude.hashWithSalt` groupARN
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` endTime

instance Prelude.NFData GetInsightSummaries where
  rnf GetInsightSummaries' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf groupName
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf states
      `Prelude.seq` Prelude.rnf groupARN
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf endTime

instance Core.ToHeaders GetInsightSummaries where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON GetInsightSummaries where
  toJSON GetInsightSummaries' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("GroupName" Core..=) Prelude.<$> groupName,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("States" Core..=) Prelude.<$> states,
            ("GroupARN" Core..=) Prelude.<$> groupARN,
            Prelude.Just ("StartTime" Core..= startTime),
            Prelude.Just ("EndTime" Core..= endTime)
          ]
      )

instance Core.ToPath GetInsightSummaries where
  toPath = Prelude.const "/InsightSummaries"

instance Core.ToQuery GetInsightSummaries where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetInsightSummariesResponse' smart constructor.
data GetInsightSummariesResponse = GetInsightSummariesResponse'
  { -- | Pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The summary of each insight within the group matching the provided
    -- filters. The summary contains the InsightID, start and end time, the
    -- root cause service, the root cause and client impact statistics, the top
    -- anomalous services, and the status of the insight.
    insightSummaries :: Prelude.Maybe [InsightSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInsightSummariesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getInsightSummariesResponse_nextToken' - Pagination token.
--
-- 'insightSummaries', 'getInsightSummariesResponse_insightSummaries' - The summary of each insight within the group matching the provided
-- filters. The summary contains the InsightID, start and end time, the
-- root cause service, the root cause and client impact statistics, the top
-- anomalous services, and the status of the insight.
--
-- 'httpStatus', 'getInsightSummariesResponse_httpStatus' - The response's http status code.
newGetInsightSummariesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetInsightSummariesResponse
newGetInsightSummariesResponse pHttpStatus_ =
  GetInsightSummariesResponse'
    { nextToken =
        Prelude.Nothing,
      insightSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Pagination token.
getInsightSummariesResponse_nextToken :: Lens.Lens' GetInsightSummariesResponse (Prelude.Maybe Prelude.Text)
getInsightSummariesResponse_nextToken = Lens.lens (\GetInsightSummariesResponse' {nextToken} -> nextToken) (\s@GetInsightSummariesResponse' {} a -> s {nextToken = a} :: GetInsightSummariesResponse)

-- | The summary of each insight within the group matching the provided
-- filters. The summary contains the InsightID, start and end time, the
-- root cause service, the root cause and client impact statistics, the top
-- anomalous services, and the status of the insight.
getInsightSummariesResponse_insightSummaries :: Lens.Lens' GetInsightSummariesResponse (Prelude.Maybe [InsightSummary])
getInsightSummariesResponse_insightSummaries = Lens.lens (\GetInsightSummariesResponse' {insightSummaries} -> insightSummaries) (\s@GetInsightSummariesResponse' {} a -> s {insightSummaries = a} :: GetInsightSummariesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getInsightSummariesResponse_httpStatus :: Lens.Lens' GetInsightSummariesResponse Prelude.Int
getInsightSummariesResponse_httpStatus = Lens.lens (\GetInsightSummariesResponse' {httpStatus} -> httpStatus) (\s@GetInsightSummariesResponse' {} a -> s {httpStatus = a} :: GetInsightSummariesResponse)

instance Prelude.NFData GetInsightSummariesResponse where
  rnf GetInsightSummariesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf insightSummaries
      `Prelude.seq` Prelude.rnf httpStatus

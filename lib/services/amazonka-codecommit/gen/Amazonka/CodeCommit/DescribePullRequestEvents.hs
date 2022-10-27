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
-- Module      : Amazonka.CodeCommit.DescribePullRequestEvents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about one or more pull request events.
--
-- This operation returns paginated results.
module Amazonka.CodeCommit.DescribePullRequestEvents
  ( -- * Creating a Request
    DescribePullRequestEvents (..),
    newDescribePullRequestEvents,

    -- * Request Lenses
    describePullRequestEvents_nextToken,
    describePullRequestEvents_maxResults,
    describePullRequestEvents_actorArn,
    describePullRequestEvents_pullRequestEventType,
    describePullRequestEvents_pullRequestId,

    -- * Destructuring the Response
    DescribePullRequestEventsResponse (..),
    newDescribePullRequestEventsResponse,

    -- * Response Lenses
    describePullRequestEventsResponse_nextToken,
    describePullRequestEventsResponse_httpStatus,
    describePullRequestEventsResponse_pullRequestEvents,
  )
where

import Amazonka.CodeCommit.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribePullRequestEvents' smart constructor.
data DescribePullRequestEvents = DescribePullRequestEvents'
  { -- | An enumeration token that, when provided in a request, returns the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A non-zero, non-negative integer used to limit the number of returned
    -- results. The default is 100 events, which is also the maximum number of
    -- events that can be returned in a result.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the user whose actions resulted in the
    -- event. Examples include updating the pull request with more commits or
    -- changing the status of a pull request.
    actorArn :: Prelude.Maybe Prelude.Text,
    -- | Optional. The pull request event type about which you want to return
    -- information.
    pullRequestEventType :: Prelude.Maybe PullRequestEventType,
    -- | The system-generated ID of the pull request. To get this ID, use
    -- ListPullRequests.
    pullRequestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePullRequestEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describePullRequestEvents_nextToken' - An enumeration token that, when provided in a request, returns the next
-- batch of the results.
--
-- 'maxResults', 'describePullRequestEvents_maxResults' - A non-zero, non-negative integer used to limit the number of returned
-- results. The default is 100 events, which is also the maximum number of
-- events that can be returned in a result.
--
-- 'actorArn', 'describePullRequestEvents_actorArn' - The Amazon Resource Name (ARN) of the user whose actions resulted in the
-- event. Examples include updating the pull request with more commits or
-- changing the status of a pull request.
--
-- 'pullRequestEventType', 'describePullRequestEvents_pullRequestEventType' - Optional. The pull request event type about which you want to return
-- information.
--
-- 'pullRequestId', 'describePullRequestEvents_pullRequestId' - The system-generated ID of the pull request. To get this ID, use
-- ListPullRequests.
newDescribePullRequestEvents ::
  -- | 'pullRequestId'
  Prelude.Text ->
  DescribePullRequestEvents
newDescribePullRequestEvents pPullRequestId_ =
  DescribePullRequestEvents'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      actorArn = Prelude.Nothing,
      pullRequestEventType = Prelude.Nothing,
      pullRequestId = pPullRequestId_
    }

-- | An enumeration token that, when provided in a request, returns the next
-- batch of the results.
describePullRequestEvents_nextToken :: Lens.Lens' DescribePullRequestEvents (Prelude.Maybe Prelude.Text)
describePullRequestEvents_nextToken = Lens.lens (\DescribePullRequestEvents' {nextToken} -> nextToken) (\s@DescribePullRequestEvents' {} a -> s {nextToken = a} :: DescribePullRequestEvents)

-- | A non-zero, non-negative integer used to limit the number of returned
-- results. The default is 100 events, which is also the maximum number of
-- events that can be returned in a result.
describePullRequestEvents_maxResults :: Lens.Lens' DescribePullRequestEvents (Prelude.Maybe Prelude.Int)
describePullRequestEvents_maxResults = Lens.lens (\DescribePullRequestEvents' {maxResults} -> maxResults) (\s@DescribePullRequestEvents' {} a -> s {maxResults = a} :: DescribePullRequestEvents)

-- | The Amazon Resource Name (ARN) of the user whose actions resulted in the
-- event. Examples include updating the pull request with more commits or
-- changing the status of a pull request.
describePullRequestEvents_actorArn :: Lens.Lens' DescribePullRequestEvents (Prelude.Maybe Prelude.Text)
describePullRequestEvents_actorArn = Lens.lens (\DescribePullRequestEvents' {actorArn} -> actorArn) (\s@DescribePullRequestEvents' {} a -> s {actorArn = a} :: DescribePullRequestEvents)

-- | Optional. The pull request event type about which you want to return
-- information.
describePullRequestEvents_pullRequestEventType :: Lens.Lens' DescribePullRequestEvents (Prelude.Maybe PullRequestEventType)
describePullRequestEvents_pullRequestEventType = Lens.lens (\DescribePullRequestEvents' {pullRequestEventType} -> pullRequestEventType) (\s@DescribePullRequestEvents' {} a -> s {pullRequestEventType = a} :: DescribePullRequestEvents)

-- | The system-generated ID of the pull request. To get this ID, use
-- ListPullRequests.
describePullRequestEvents_pullRequestId :: Lens.Lens' DescribePullRequestEvents Prelude.Text
describePullRequestEvents_pullRequestId = Lens.lens (\DescribePullRequestEvents' {pullRequestId} -> pullRequestId) (\s@DescribePullRequestEvents' {} a -> s {pullRequestId = a} :: DescribePullRequestEvents)

instance Core.AWSPager DescribePullRequestEvents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describePullRequestEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. describePullRequestEventsResponse_pullRequestEvents
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describePullRequestEvents_nextToken
          Lens..~ rs
          Lens.^? describePullRequestEventsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribePullRequestEvents where
  type
    AWSResponse DescribePullRequestEvents =
      DescribePullRequestEventsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePullRequestEventsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "pullRequestEvents"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable DescribePullRequestEvents where
  hashWithSalt _salt DescribePullRequestEvents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` actorArn
      `Prelude.hashWithSalt` pullRequestEventType
      `Prelude.hashWithSalt` pullRequestId

instance Prelude.NFData DescribePullRequestEvents where
  rnf DescribePullRequestEvents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf actorArn
      `Prelude.seq` Prelude.rnf pullRequestEventType
      `Prelude.seq` Prelude.rnf pullRequestId

instance Core.ToHeaders DescribePullRequestEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.DescribePullRequestEvents" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribePullRequestEvents where
  toJSON DescribePullRequestEvents' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("actorArn" Core..=) Prelude.<$> actorArn,
            ("pullRequestEventType" Core..=)
              Prelude.<$> pullRequestEventType,
            Prelude.Just
              ("pullRequestId" Core..= pullRequestId)
          ]
      )

instance Core.ToPath DescribePullRequestEvents where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribePullRequestEvents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePullRequestEventsResponse' smart constructor.
data DescribePullRequestEventsResponse = DescribePullRequestEventsResponse'
  { -- | An enumeration token that can be used in a request to return the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Information about the pull request events.
    pullRequestEvents :: [PullRequestEvent]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePullRequestEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describePullRequestEventsResponse_nextToken' - An enumeration token that can be used in a request to return the next
-- batch of the results.
--
-- 'httpStatus', 'describePullRequestEventsResponse_httpStatus' - The response's http status code.
--
-- 'pullRequestEvents', 'describePullRequestEventsResponse_pullRequestEvents' - Information about the pull request events.
newDescribePullRequestEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePullRequestEventsResponse
newDescribePullRequestEventsResponse pHttpStatus_ =
  DescribePullRequestEventsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      pullRequestEvents = Prelude.mempty
    }

-- | An enumeration token that can be used in a request to return the next
-- batch of the results.
describePullRequestEventsResponse_nextToken :: Lens.Lens' DescribePullRequestEventsResponse (Prelude.Maybe Prelude.Text)
describePullRequestEventsResponse_nextToken = Lens.lens (\DescribePullRequestEventsResponse' {nextToken} -> nextToken) (\s@DescribePullRequestEventsResponse' {} a -> s {nextToken = a} :: DescribePullRequestEventsResponse)

-- | The response's http status code.
describePullRequestEventsResponse_httpStatus :: Lens.Lens' DescribePullRequestEventsResponse Prelude.Int
describePullRequestEventsResponse_httpStatus = Lens.lens (\DescribePullRequestEventsResponse' {httpStatus} -> httpStatus) (\s@DescribePullRequestEventsResponse' {} a -> s {httpStatus = a} :: DescribePullRequestEventsResponse)

-- | Information about the pull request events.
describePullRequestEventsResponse_pullRequestEvents :: Lens.Lens' DescribePullRequestEventsResponse [PullRequestEvent]
describePullRequestEventsResponse_pullRequestEvents = Lens.lens (\DescribePullRequestEventsResponse' {pullRequestEvents} -> pullRequestEvents) (\s@DescribePullRequestEventsResponse' {} a -> s {pullRequestEvents = a} :: DescribePullRequestEventsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    DescribePullRequestEventsResponse
  where
  rnf DescribePullRequestEventsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf pullRequestEvents

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
-- Module      : Amazonka.SageMaker.ListTrainingJobs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists training jobs.
--
-- When @StatusEquals@ and @MaxResults@ are set at the same time, the
-- @MaxResults@ number of training jobs are first retrieved ignoring the
-- @StatusEquals@ parameter and then they are filtered by the
-- @StatusEquals@ parameter, which is returned as a response.
--
-- For example, if @ListTrainingJobs@ is invoked with the following
-- parameters:
--
-- @{ ... MaxResults: 100, StatusEquals: InProgress ... }@
--
-- First, 100 trainings jobs with any status, including those other than
-- @InProgress@, are selected (sorted according to the creation time, from
-- the most current to the oldest). Next, those with a status of
-- @InProgress@ are returned.
--
-- You can quickly test the API using the following Amazon Web Services CLI
-- code.
--
-- @aws sagemaker list-training-jobs --max-results 100 --status-equals InProgress@
--
-- This operation returns paginated results.
module Amazonka.SageMaker.ListTrainingJobs
  ( -- * Creating a Request
    ListTrainingJobs (..),
    newListTrainingJobs,

    -- * Request Lenses
    listTrainingJobs_sortOrder,
    listTrainingJobs_nextToken,
    listTrainingJobs_lastModifiedTimeAfter,
    listTrainingJobs_nameContains,
    listTrainingJobs_lastModifiedTimeBefore,
    listTrainingJobs_creationTimeBefore,
    listTrainingJobs_sortBy,
    listTrainingJobs_maxResults,
    listTrainingJobs_statusEquals,
    listTrainingJobs_warmPoolStatusEquals,
    listTrainingJobs_creationTimeAfter,

    -- * Destructuring the Response
    ListTrainingJobsResponse (..),
    newListTrainingJobsResponse,

    -- * Response Lenses
    listTrainingJobsResponse_nextToken,
    listTrainingJobsResponse_httpStatus,
    listTrainingJobsResponse_trainingJobSummaries,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newListTrainingJobs' smart constructor.
data ListTrainingJobs = ListTrainingJobs'
  { -- | The sort order for results. The default is @Ascending@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | If the result of the previous @ListTrainingJobs@ request was truncated,
    -- the response includes a @NextToken@. To retrieve the next set of
    -- training jobs, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter that returns only training jobs modified after the specified
    -- time (timestamp).
    lastModifiedTimeAfter :: Prelude.Maybe Core.POSIX,
    -- | A string in the training job name. This filter returns only training
    -- jobs whose name contains the specified string.
    nameContains :: Prelude.Maybe Prelude.Text,
    -- | A filter that returns only training jobs modified before the specified
    -- time (timestamp).
    lastModifiedTimeBefore :: Prelude.Maybe Core.POSIX,
    -- | A filter that returns only training jobs created before the specified
    -- time (timestamp).
    creationTimeBefore :: Prelude.Maybe Core.POSIX,
    -- | The field to sort results by. The default is @CreationTime@.
    sortBy :: Prelude.Maybe SortBy,
    -- | The maximum number of training jobs to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that retrieves only training jobs with a specific status.
    statusEquals :: Prelude.Maybe TrainingJobStatus,
    -- | A filter that retrieves only training jobs with a specific warm pool
    -- status.
    warmPoolStatusEquals :: Prelude.Maybe WarmPoolResourceStatus,
    -- | A filter that returns only training jobs created after the specified
    -- time (timestamp).
    creationTimeAfter :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrainingJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listTrainingJobs_sortOrder' - The sort order for results. The default is @Ascending@.
--
-- 'nextToken', 'listTrainingJobs_nextToken' - If the result of the previous @ListTrainingJobs@ request was truncated,
-- the response includes a @NextToken@. To retrieve the next set of
-- training jobs, use the token in the next request.
--
-- 'lastModifiedTimeAfter', 'listTrainingJobs_lastModifiedTimeAfter' - A filter that returns only training jobs modified after the specified
-- time (timestamp).
--
-- 'nameContains', 'listTrainingJobs_nameContains' - A string in the training job name. This filter returns only training
-- jobs whose name contains the specified string.
--
-- 'lastModifiedTimeBefore', 'listTrainingJobs_lastModifiedTimeBefore' - A filter that returns only training jobs modified before the specified
-- time (timestamp).
--
-- 'creationTimeBefore', 'listTrainingJobs_creationTimeBefore' - A filter that returns only training jobs created before the specified
-- time (timestamp).
--
-- 'sortBy', 'listTrainingJobs_sortBy' - The field to sort results by. The default is @CreationTime@.
--
-- 'maxResults', 'listTrainingJobs_maxResults' - The maximum number of training jobs to return in the response.
--
-- 'statusEquals', 'listTrainingJobs_statusEquals' - A filter that retrieves only training jobs with a specific status.
--
-- 'warmPoolStatusEquals', 'listTrainingJobs_warmPoolStatusEquals' - A filter that retrieves only training jobs with a specific warm pool
-- status.
--
-- 'creationTimeAfter', 'listTrainingJobs_creationTimeAfter' - A filter that returns only training jobs created after the specified
-- time (timestamp).
newListTrainingJobs ::
  ListTrainingJobs
newListTrainingJobs =
  ListTrainingJobs'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      lastModifiedTimeAfter = Prelude.Nothing,
      nameContains = Prelude.Nothing,
      lastModifiedTimeBefore = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      statusEquals = Prelude.Nothing,
      warmPoolStatusEquals = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing
    }

-- | The sort order for results. The default is @Ascending@.
listTrainingJobs_sortOrder :: Lens.Lens' ListTrainingJobs (Prelude.Maybe SortOrder)
listTrainingJobs_sortOrder = Lens.lens (\ListTrainingJobs' {sortOrder} -> sortOrder) (\s@ListTrainingJobs' {} a -> s {sortOrder = a} :: ListTrainingJobs)

-- | If the result of the previous @ListTrainingJobs@ request was truncated,
-- the response includes a @NextToken@. To retrieve the next set of
-- training jobs, use the token in the next request.
listTrainingJobs_nextToken :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.Text)
listTrainingJobs_nextToken = Lens.lens (\ListTrainingJobs' {nextToken} -> nextToken) (\s@ListTrainingJobs' {} a -> s {nextToken = a} :: ListTrainingJobs)

-- | A filter that returns only training jobs modified after the specified
-- time (timestamp).
listTrainingJobs_lastModifiedTimeAfter :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.UTCTime)
listTrainingJobs_lastModifiedTimeAfter = Lens.lens (\ListTrainingJobs' {lastModifiedTimeAfter} -> lastModifiedTimeAfter) (\s@ListTrainingJobs' {} a -> s {lastModifiedTimeAfter = a} :: ListTrainingJobs) Prelude.. Lens.mapping Core._Time

-- | A string in the training job name. This filter returns only training
-- jobs whose name contains the specified string.
listTrainingJobs_nameContains :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.Text)
listTrainingJobs_nameContains = Lens.lens (\ListTrainingJobs' {nameContains} -> nameContains) (\s@ListTrainingJobs' {} a -> s {nameContains = a} :: ListTrainingJobs)

-- | A filter that returns only training jobs modified before the specified
-- time (timestamp).
listTrainingJobs_lastModifiedTimeBefore :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.UTCTime)
listTrainingJobs_lastModifiedTimeBefore = Lens.lens (\ListTrainingJobs' {lastModifiedTimeBefore} -> lastModifiedTimeBefore) (\s@ListTrainingJobs' {} a -> s {lastModifiedTimeBefore = a} :: ListTrainingJobs) Prelude.. Lens.mapping Core._Time

-- | A filter that returns only training jobs created before the specified
-- time (timestamp).
listTrainingJobs_creationTimeBefore :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.UTCTime)
listTrainingJobs_creationTimeBefore = Lens.lens (\ListTrainingJobs' {creationTimeBefore} -> creationTimeBefore) (\s@ListTrainingJobs' {} a -> s {creationTimeBefore = a} :: ListTrainingJobs) Prelude.. Lens.mapping Core._Time

-- | The field to sort results by. The default is @CreationTime@.
listTrainingJobs_sortBy :: Lens.Lens' ListTrainingJobs (Prelude.Maybe SortBy)
listTrainingJobs_sortBy = Lens.lens (\ListTrainingJobs' {sortBy} -> sortBy) (\s@ListTrainingJobs' {} a -> s {sortBy = a} :: ListTrainingJobs)

-- | The maximum number of training jobs to return in the response.
listTrainingJobs_maxResults :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.Natural)
listTrainingJobs_maxResults = Lens.lens (\ListTrainingJobs' {maxResults} -> maxResults) (\s@ListTrainingJobs' {} a -> s {maxResults = a} :: ListTrainingJobs)

-- | A filter that retrieves only training jobs with a specific status.
listTrainingJobs_statusEquals :: Lens.Lens' ListTrainingJobs (Prelude.Maybe TrainingJobStatus)
listTrainingJobs_statusEquals = Lens.lens (\ListTrainingJobs' {statusEquals} -> statusEquals) (\s@ListTrainingJobs' {} a -> s {statusEquals = a} :: ListTrainingJobs)

-- | A filter that retrieves only training jobs with a specific warm pool
-- status.
listTrainingJobs_warmPoolStatusEquals :: Lens.Lens' ListTrainingJobs (Prelude.Maybe WarmPoolResourceStatus)
listTrainingJobs_warmPoolStatusEquals = Lens.lens (\ListTrainingJobs' {warmPoolStatusEquals} -> warmPoolStatusEquals) (\s@ListTrainingJobs' {} a -> s {warmPoolStatusEquals = a} :: ListTrainingJobs)

-- | A filter that returns only training jobs created after the specified
-- time (timestamp).
listTrainingJobs_creationTimeAfter :: Lens.Lens' ListTrainingJobs (Prelude.Maybe Prelude.UTCTime)
listTrainingJobs_creationTimeAfter = Lens.lens (\ListTrainingJobs' {creationTimeAfter} -> creationTimeAfter) (\s@ListTrainingJobs' {} a -> s {creationTimeAfter = a} :: ListTrainingJobs) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager ListTrainingJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTrainingJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listTrainingJobsResponse_trainingJobSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listTrainingJobs_nextToken
          Lens..~ rs
          Lens.^? listTrainingJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListTrainingJobs where
  type
    AWSResponse ListTrainingJobs =
      ListTrainingJobsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTrainingJobsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "TrainingJobSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListTrainingJobs where
  hashWithSalt _salt ListTrainingJobs' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` lastModifiedTimeAfter
      `Prelude.hashWithSalt` nameContains
      `Prelude.hashWithSalt` lastModifiedTimeBefore
      `Prelude.hashWithSalt` creationTimeBefore
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` statusEquals
      `Prelude.hashWithSalt` warmPoolStatusEquals
      `Prelude.hashWithSalt` creationTimeAfter

instance Prelude.NFData ListTrainingJobs where
  rnf ListTrainingJobs' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf lastModifiedTimeAfter
      `Prelude.seq` Prelude.rnf nameContains
      `Prelude.seq` Prelude.rnf lastModifiedTimeBefore
      `Prelude.seq` Prelude.rnf creationTimeBefore
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf statusEquals
      `Prelude.seq` Prelude.rnf warmPoolStatusEquals
      `Prelude.seq` Prelude.rnf creationTimeAfter

instance Core.ToHeaders ListTrainingJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListTrainingJobs" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTrainingJobs where
  toJSON ListTrainingJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("LastModifiedTimeAfter" Core..=)
              Prelude.<$> lastModifiedTimeAfter,
            ("NameContains" Core..=) Prelude.<$> nameContains,
            ("LastModifiedTimeBefore" Core..=)
              Prelude.<$> lastModifiedTimeBefore,
            ("CreationTimeBefore" Core..=)
              Prelude.<$> creationTimeBefore,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("StatusEquals" Core..=) Prelude.<$> statusEquals,
            ("WarmPoolStatusEquals" Core..=)
              Prelude.<$> warmPoolStatusEquals,
            ("CreationTimeAfter" Core..=)
              Prelude.<$> creationTimeAfter
          ]
      )

instance Core.ToPath ListTrainingJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListTrainingJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTrainingJobsResponse' smart constructor.
data ListTrainingJobsResponse = ListTrainingJobsResponse'
  { -- | If the response is truncated, SageMaker returns this token. To retrieve
    -- the next set of training jobs, use it in the subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of @TrainingJobSummary@ objects, each listing a training job.
    trainingJobSummaries :: [TrainingJobSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrainingJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTrainingJobsResponse_nextToken' - If the response is truncated, SageMaker returns this token. To retrieve
-- the next set of training jobs, use it in the subsequent request.
--
-- 'httpStatus', 'listTrainingJobsResponse_httpStatus' - The response's http status code.
--
-- 'trainingJobSummaries', 'listTrainingJobsResponse_trainingJobSummaries' - An array of @TrainingJobSummary@ objects, each listing a training job.
newListTrainingJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTrainingJobsResponse
newListTrainingJobsResponse pHttpStatus_ =
  ListTrainingJobsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      trainingJobSummaries = Prelude.mempty
    }

-- | If the response is truncated, SageMaker returns this token. To retrieve
-- the next set of training jobs, use it in the subsequent request.
listTrainingJobsResponse_nextToken :: Lens.Lens' ListTrainingJobsResponse (Prelude.Maybe Prelude.Text)
listTrainingJobsResponse_nextToken = Lens.lens (\ListTrainingJobsResponse' {nextToken} -> nextToken) (\s@ListTrainingJobsResponse' {} a -> s {nextToken = a} :: ListTrainingJobsResponse)

-- | The response's http status code.
listTrainingJobsResponse_httpStatus :: Lens.Lens' ListTrainingJobsResponse Prelude.Int
listTrainingJobsResponse_httpStatus = Lens.lens (\ListTrainingJobsResponse' {httpStatus} -> httpStatus) (\s@ListTrainingJobsResponse' {} a -> s {httpStatus = a} :: ListTrainingJobsResponse)

-- | An array of @TrainingJobSummary@ objects, each listing a training job.
listTrainingJobsResponse_trainingJobSummaries :: Lens.Lens' ListTrainingJobsResponse [TrainingJobSummary]
listTrainingJobsResponse_trainingJobSummaries = Lens.lens (\ListTrainingJobsResponse' {trainingJobSummaries} -> trainingJobSummaries) (\s@ListTrainingJobsResponse' {} a -> s {trainingJobSummaries = a} :: ListTrainingJobsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListTrainingJobsResponse where
  rnf ListTrainingJobsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf trainingJobSummaries

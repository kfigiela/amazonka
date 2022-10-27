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
-- Module      : Amazonka.AmplifyBackend.ListBackendJobs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the jobs for the backend of an Amplify app.
--
-- This operation returns paginated results.
module Amazonka.AmplifyBackend.ListBackendJobs
  ( -- * Creating a Request
    ListBackendJobs (..),
    newListBackendJobs,

    -- * Request Lenses
    listBackendJobs_nextToken,
    listBackendJobs_jobId,
    listBackendJobs_status,
    listBackendJobs_maxResults,
    listBackendJobs_operation,
    listBackendJobs_appId,
    listBackendJobs_backendEnvironmentName,

    -- * Destructuring the Response
    ListBackendJobsResponse (..),
    newListBackendJobsResponse,

    -- * Response Lenses
    listBackendJobsResponse_nextToken,
    listBackendJobsResponse_jobs,
    listBackendJobsResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request body for ListBackendJobs.
--
-- /See:/ 'newListBackendJobs' smart constructor.
data ListBackendJobs = ListBackendJobs'
  { -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | Filters the list of response objects to include only those with the
    -- specified status.
    status :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results that you want in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Filters the list of response objects to include only those with the
    -- specified operation name.
    operation :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackendJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackendJobs_nextToken' - The token for the next set of results.
--
-- 'jobId', 'listBackendJobs_jobId' - The ID for the job.
--
-- 'status', 'listBackendJobs_status' - Filters the list of response objects to include only those with the
-- specified status.
--
-- 'maxResults', 'listBackendJobs_maxResults' - The maximum number of results that you want in the response.
--
-- 'operation', 'listBackendJobs_operation' - Filters the list of response objects to include only those with the
-- specified operation name.
--
-- 'appId', 'listBackendJobs_appId' - The app ID.
--
-- 'backendEnvironmentName', 'listBackendJobs_backendEnvironmentName' - The name of the backend environment.
newListBackendJobs ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'backendEnvironmentName'
  Prelude.Text ->
  ListBackendJobs
newListBackendJobs pAppId_ pBackendEnvironmentName_ =
  ListBackendJobs'
    { nextToken = Prelude.Nothing,
      jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      operation = Prelude.Nothing,
      appId = pAppId_,
      backendEnvironmentName = pBackendEnvironmentName_
    }

-- | The token for the next set of results.
listBackendJobs_nextToken :: Lens.Lens' ListBackendJobs (Prelude.Maybe Prelude.Text)
listBackendJobs_nextToken = Lens.lens (\ListBackendJobs' {nextToken} -> nextToken) (\s@ListBackendJobs' {} a -> s {nextToken = a} :: ListBackendJobs)

-- | The ID for the job.
listBackendJobs_jobId :: Lens.Lens' ListBackendJobs (Prelude.Maybe Prelude.Text)
listBackendJobs_jobId = Lens.lens (\ListBackendJobs' {jobId} -> jobId) (\s@ListBackendJobs' {} a -> s {jobId = a} :: ListBackendJobs)

-- | Filters the list of response objects to include only those with the
-- specified status.
listBackendJobs_status :: Lens.Lens' ListBackendJobs (Prelude.Maybe Prelude.Text)
listBackendJobs_status = Lens.lens (\ListBackendJobs' {status} -> status) (\s@ListBackendJobs' {} a -> s {status = a} :: ListBackendJobs)

-- | The maximum number of results that you want in the response.
listBackendJobs_maxResults :: Lens.Lens' ListBackendJobs (Prelude.Maybe Prelude.Natural)
listBackendJobs_maxResults = Lens.lens (\ListBackendJobs' {maxResults} -> maxResults) (\s@ListBackendJobs' {} a -> s {maxResults = a} :: ListBackendJobs)

-- | Filters the list of response objects to include only those with the
-- specified operation name.
listBackendJobs_operation :: Lens.Lens' ListBackendJobs (Prelude.Maybe Prelude.Text)
listBackendJobs_operation = Lens.lens (\ListBackendJobs' {operation} -> operation) (\s@ListBackendJobs' {} a -> s {operation = a} :: ListBackendJobs)

-- | The app ID.
listBackendJobs_appId :: Lens.Lens' ListBackendJobs Prelude.Text
listBackendJobs_appId = Lens.lens (\ListBackendJobs' {appId} -> appId) (\s@ListBackendJobs' {} a -> s {appId = a} :: ListBackendJobs)

-- | The name of the backend environment.
listBackendJobs_backendEnvironmentName :: Lens.Lens' ListBackendJobs Prelude.Text
listBackendJobs_backendEnvironmentName = Lens.lens (\ListBackendJobs' {backendEnvironmentName} -> backendEnvironmentName) (\s@ListBackendJobs' {} a -> s {backendEnvironmentName = a} :: ListBackendJobs)

instance Core.AWSPager ListBackendJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listBackendJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listBackendJobsResponse_jobs Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listBackendJobs_nextToken
          Lens..~ rs
          Lens.^? listBackendJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListBackendJobs where
  type
    AWSResponse ListBackendJobs =
      ListBackendJobsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackendJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "jobs" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBackendJobs where
  hashWithSalt _salt ListBackendJobs' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` operation
      `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` backendEnvironmentName

instance Prelude.NFData ListBackendJobs where
  rnf ListBackendJobs' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf backendEnvironmentName

instance Core.ToHeaders ListBackendJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListBackendJobs where
  toJSON ListBackendJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("jobId" Core..=) Prelude.<$> jobId,
            ("status" Core..=) Prelude.<$> status,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("operation" Core..=) Prelude.<$> operation
          ]
      )

instance Core.ToPath ListBackendJobs where
  toPath ListBackendJobs' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/job/",
        Core.toBS backendEnvironmentName
      ]

instance Core.ToQuery ListBackendJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListBackendJobsResponse' smart constructor.
data ListBackendJobsResponse = ListBackendJobsResponse'
  { -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of jobs and their properties.
    jobs :: Prelude.Maybe [BackendJobRespObj],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackendJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackendJobsResponse_nextToken' - The token for the next set of results.
--
-- 'jobs', 'listBackendJobsResponse_jobs' - An array of jobs and their properties.
--
-- 'httpStatus', 'listBackendJobsResponse_httpStatus' - The response's http status code.
newListBackendJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBackendJobsResponse
newListBackendJobsResponse pHttpStatus_ =
  ListBackendJobsResponse'
    { nextToken =
        Prelude.Nothing,
      jobs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results.
listBackendJobsResponse_nextToken :: Lens.Lens' ListBackendJobsResponse (Prelude.Maybe Prelude.Text)
listBackendJobsResponse_nextToken = Lens.lens (\ListBackendJobsResponse' {nextToken} -> nextToken) (\s@ListBackendJobsResponse' {} a -> s {nextToken = a} :: ListBackendJobsResponse)

-- | An array of jobs and their properties.
listBackendJobsResponse_jobs :: Lens.Lens' ListBackendJobsResponse (Prelude.Maybe [BackendJobRespObj])
listBackendJobsResponse_jobs = Lens.lens (\ListBackendJobsResponse' {jobs} -> jobs) (\s@ListBackendJobsResponse' {} a -> s {jobs = a} :: ListBackendJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listBackendJobsResponse_httpStatus :: Lens.Lens' ListBackendJobsResponse Prelude.Int
listBackendJobsResponse_httpStatus = Lens.lens (\ListBackendJobsResponse' {httpStatus} -> httpStatus) (\s@ListBackendJobsResponse' {} a -> s {httpStatus = a} :: ListBackendJobsResponse)

instance Prelude.NFData ListBackendJobsResponse where
  rnf ListBackendJobsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf jobs
      `Prelude.seq` Prelude.rnf httpStatus

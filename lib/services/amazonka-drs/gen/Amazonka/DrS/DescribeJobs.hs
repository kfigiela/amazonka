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
-- Module      : Amazonka.DrS.DescribeJobs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Jobs. Use the JobsID and fromDate and toDate filters
-- to limit which jobs are returned. The response is sorted by
-- creationDataTime - latest date first. Jobs are created by the
-- StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs.
-- Jobs are also created by DiagnosticLaunch and
-- TerminateDiagnosticInstances, which are APIs available only to *Support*
-- and only used in response to relevant support tickets.
--
-- This operation returns paginated results.
module Amazonka.DrS.DescribeJobs
  ( -- * Creating a Request
    DescribeJobs (..),
    newDescribeJobs,

    -- * Request Lenses
    describeJobs_nextToken,
    describeJobs_filters,
    describeJobs_maxResults,

    -- * Destructuring the Response
    DescribeJobsResponse (..),
    newDescribeJobsResponse,

    -- * Response Lenses
    describeJobsResponse_items,
    describeJobsResponse_nextToken,
    describeJobsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeJobs' smart constructor.
data DescribeJobs = DescribeJobs'
  { -- | The token of the next Job to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A set of filters by which to return Jobs.
    filters :: Prelude.Maybe DescribeJobsRequestFilters,
    -- | Maximum number of Jobs to retrieve.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeJobs_nextToken' - The token of the next Job to retrieve.
--
-- 'filters', 'describeJobs_filters' - A set of filters by which to return Jobs.
--
-- 'maxResults', 'describeJobs_maxResults' - Maximum number of Jobs to retrieve.
newDescribeJobs ::
  DescribeJobs
newDescribeJobs =
  DescribeJobs'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token of the next Job to retrieve.
describeJobs_nextToken :: Lens.Lens' DescribeJobs (Prelude.Maybe Prelude.Text)
describeJobs_nextToken = Lens.lens (\DescribeJobs' {nextToken} -> nextToken) (\s@DescribeJobs' {} a -> s {nextToken = a} :: DescribeJobs)

-- | A set of filters by which to return Jobs.
describeJobs_filters :: Lens.Lens' DescribeJobs (Prelude.Maybe DescribeJobsRequestFilters)
describeJobs_filters = Lens.lens (\DescribeJobs' {filters} -> filters) (\s@DescribeJobs' {} a -> s {filters = a} :: DescribeJobs)

-- | Maximum number of Jobs to retrieve.
describeJobs_maxResults :: Lens.Lens' DescribeJobs (Prelude.Maybe Prelude.Natural)
describeJobs_maxResults = Lens.lens (\DescribeJobs' {maxResults} -> maxResults) (\s@DescribeJobs' {} a -> s {maxResults = a} :: DescribeJobs)

instance Core.AWSPager DescribeJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeJobsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeJobsResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeJobs_nextToken
          Lens..~ rs
          Lens.^? describeJobsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest DescribeJobs where
  type AWSResponse DescribeJobs = DescribeJobsResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeJobsResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService DescribeJobs where
  service _proxy = defaultService

instance Prelude.Hashable DescribeJobs where
  hashWithSalt _salt DescribeJobs' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeJobs where
  rnf DescribeJobs' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeJobs where
  toJSON DescribeJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("filters" Core..=) Prelude.<$> filters,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeJobs where
  toPath = Prelude.const "/DescribeJobs"

instance Core.ToQuery DescribeJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeJobsResponse' smart constructor.
data DescribeJobsResponse = DescribeJobsResponse'
  { -- | An array of Jobs.
    items :: Prelude.Maybe [Job],
    -- | The token of the next Job to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'describeJobsResponse_items' - An array of Jobs.
--
-- 'nextToken', 'describeJobsResponse_nextToken' - The token of the next Job to retrieve.
--
-- 'httpStatus', 'describeJobsResponse_httpStatus' - The response's http status code.
newDescribeJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeJobsResponse
newDescribeJobsResponse pHttpStatus_ =
  DescribeJobsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of Jobs.
describeJobsResponse_items :: Lens.Lens' DescribeJobsResponse (Prelude.Maybe [Job])
describeJobsResponse_items = Lens.lens (\DescribeJobsResponse' {items} -> items) (\s@DescribeJobsResponse' {} a -> s {items = a} :: DescribeJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token of the next Job to retrieve.
describeJobsResponse_nextToken :: Lens.Lens' DescribeJobsResponse (Prelude.Maybe Prelude.Text)
describeJobsResponse_nextToken = Lens.lens (\DescribeJobsResponse' {nextToken} -> nextToken) (\s@DescribeJobsResponse' {} a -> s {nextToken = a} :: DescribeJobsResponse)

-- | The response's http status code.
describeJobsResponse_httpStatus :: Lens.Lens' DescribeJobsResponse Prelude.Int
describeJobsResponse_httpStatus = Lens.lens (\DescribeJobsResponse' {httpStatus} -> httpStatus) (\s@DescribeJobsResponse' {} a -> s {httpStatus = a} :: DescribeJobsResponse)

instance Prelude.NFData DescribeJobsResponse where
  rnf DescribeJobsResponse' {..} =
    Prelude.rnf items
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.SecurityHub.GetFindings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of findings that match the specified criteria.
--
-- If finding aggregation is enabled, then when you call @GetFindings@ from
-- the aggregation Region, the results include all of the matching findings
-- from both the aggregation Region and the linked Regions.
--
-- This operation returns paginated results.
module Amazonka.SecurityHub.GetFindings
  ( -- * Creating a Request
    GetFindings (..),
    newGetFindings,

    -- * Request Lenses
    getFindings_sortCriteria,
    getFindings_nextToken,
    getFindings_filters,
    getFindings_maxResults,

    -- * Destructuring the Response
    GetFindingsResponse (..),
    newGetFindingsResponse,

    -- * Response Lenses
    getFindingsResponse_nextToken,
    getFindingsResponse_httpStatus,
    getFindingsResponse_findings,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityHub.Types

-- | /See:/ 'newGetFindings' smart constructor.
data GetFindings = GetFindings'
  { -- | The finding attributes used to sort the list of returned findings.
    sortCriteria :: Prelude.Maybe [SortCriterion],
    -- | The token that is required for pagination. On your first call to the
    -- @GetFindings@ operation, set the value of this parameter to @NULL@.
    --
    -- For subsequent calls to the operation, to continue listing data, set the
    -- value of this parameter to the value returned from the previous
    -- response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The finding attributes used to define a condition to filter the returned
    -- findings.
    --
    -- You can filter by up to 10 finding attributes. For each attribute, you
    -- can provide up to 20 filter values.
    --
    -- Note that in the available filter fields, @WorkflowState@ is deprecated.
    -- To search for a finding based on its workflow status, use
    -- @WorkflowStatus@.
    filters :: Prelude.Maybe AwsSecurityFindingFilters,
    -- | The maximum number of findings to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortCriteria', 'getFindings_sortCriteria' - The finding attributes used to sort the list of returned findings.
--
-- 'nextToken', 'getFindings_nextToken' - The token that is required for pagination. On your first call to the
-- @GetFindings@ operation, set the value of this parameter to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
--
-- 'filters', 'getFindings_filters' - The finding attributes used to define a condition to filter the returned
-- findings.
--
-- You can filter by up to 10 finding attributes. For each attribute, you
-- can provide up to 20 filter values.
--
-- Note that in the available filter fields, @WorkflowState@ is deprecated.
-- To search for a finding based on its workflow status, use
-- @WorkflowStatus@.
--
-- 'maxResults', 'getFindings_maxResults' - The maximum number of findings to return.
newGetFindings ::
  GetFindings
newGetFindings =
  GetFindings'
    { sortCriteria = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The finding attributes used to sort the list of returned findings.
getFindings_sortCriteria :: Lens.Lens' GetFindings (Prelude.Maybe [SortCriterion])
getFindings_sortCriteria = Lens.lens (\GetFindings' {sortCriteria} -> sortCriteria) (\s@GetFindings' {} a -> s {sortCriteria = a} :: GetFindings) Prelude.. Lens.mapping Lens.coerced

-- | The token that is required for pagination. On your first call to the
-- @GetFindings@ operation, set the value of this parameter to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
getFindings_nextToken :: Lens.Lens' GetFindings (Prelude.Maybe Prelude.Text)
getFindings_nextToken = Lens.lens (\GetFindings' {nextToken} -> nextToken) (\s@GetFindings' {} a -> s {nextToken = a} :: GetFindings)

-- | The finding attributes used to define a condition to filter the returned
-- findings.
--
-- You can filter by up to 10 finding attributes. For each attribute, you
-- can provide up to 20 filter values.
--
-- Note that in the available filter fields, @WorkflowState@ is deprecated.
-- To search for a finding based on its workflow status, use
-- @WorkflowStatus@.
getFindings_filters :: Lens.Lens' GetFindings (Prelude.Maybe AwsSecurityFindingFilters)
getFindings_filters = Lens.lens (\GetFindings' {filters} -> filters) (\s@GetFindings' {} a -> s {filters = a} :: GetFindings)

-- | The maximum number of findings to return.
getFindings_maxResults :: Lens.Lens' GetFindings (Prelude.Maybe Prelude.Natural)
getFindings_maxResults = Lens.lens (\GetFindings' {maxResults} -> maxResults) (\s@GetFindings' {} a -> s {maxResults = a} :: GetFindings)

instance Core.AWSPager GetFindings where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getFindingsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. getFindingsResponse_findings) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getFindings_nextToken
          Lens..~ rs
          Lens.^? getFindingsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetFindings where
  type AWSResponse GetFindings = GetFindingsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFindingsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Findings" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable GetFindings where
  hashWithSalt _salt GetFindings' {..} =
    _salt `Prelude.hashWithSalt` sortCriteria
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData GetFindings where
  rnf GetFindings' {..} =
    Prelude.rnf sortCriteria
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders GetFindings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetFindings where
  toJSON GetFindings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortCriteria" Core..=) Prelude.<$> sortCriteria,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetFindings where
  toPath = Prelude.const "/findings"

instance Core.ToQuery GetFindings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetFindingsResponse' smart constructor.
data GetFindingsResponse = GetFindingsResponse'
  { -- | The pagination token to use to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The findings that matched the filters specified in the request.
    findings :: [AwsSecurityFinding]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getFindingsResponse_nextToken' - The pagination token to use to request the next page of results.
--
-- 'httpStatus', 'getFindingsResponse_httpStatus' - The response's http status code.
--
-- 'findings', 'getFindingsResponse_findings' - The findings that matched the filters specified in the request.
newGetFindingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFindingsResponse
newGetFindingsResponse pHttpStatus_ =
  GetFindingsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      findings = Prelude.mempty
    }

-- | The pagination token to use to request the next page of results.
getFindingsResponse_nextToken :: Lens.Lens' GetFindingsResponse (Prelude.Maybe Prelude.Text)
getFindingsResponse_nextToken = Lens.lens (\GetFindingsResponse' {nextToken} -> nextToken) (\s@GetFindingsResponse' {} a -> s {nextToken = a} :: GetFindingsResponse)

-- | The response's http status code.
getFindingsResponse_httpStatus :: Lens.Lens' GetFindingsResponse Prelude.Int
getFindingsResponse_httpStatus = Lens.lens (\GetFindingsResponse' {httpStatus} -> httpStatus) (\s@GetFindingsResponse' {} a -> s {httpStatus = a} :: GetFindingsResponse)

-- | The findings that matched the filters specified in the request.
getFindingsResponse_findings :: Lens.Lens' GetFindingsResponse [AwsSecurityFinding]
getFindingsResponse_findings = Lens.lens (\GetFindingsResponse' {findings} -> findings) (\s@GetFindingsResponse' {} a -> s {findings = a} :: GetFindingsResponse) Prelude.. Lens.coerced

instance Prelude.NFData GetFindingsResponse where
  rnf GetFindingsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf findings

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
-- Module      : Amazonka.Forecast.ListExplainabilityExports
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Explainability exports created using the
-- CreateExplainabilityExport operation. This operation returns a summary
-- for each Explainability export. You can filter the list using an array
-- of Filter objects.
--
-- To retrieve the complete set of properties for a particular
-- Explainability export, use the ARN with the DescribeExplainability
-- operation.
--
-- This operation returns paginated results.
module Amazonka.Forecast.ListExplainabilityExports
  ( -- * Creating a Request
    ListExplainabilityExports (..),
    newListExplainabilityExports,

    -- * Request Lenses
    listExplainabilityExports_nextToken,
    listExplainabilityExports_filters,
    listExplainabilityExports_maxResults,

    -- * Destructuring the Response
    ListExplainabilityExportsResponse (..),
    newListExplainabilityExportsResponse,

    -- * Response Lenses
    listExplainabilityExportsResponse_nextToken,
    listExplainabilityExportsResponse_explainabilityExports,
    listExplainabilityExportsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListExplainabilityExports' smart constructor.
data ListExplainabilityExports = ListExplainabilityExports'
  { -- | If the result of the previous request was truncated, the response
    -- includes a NextToken. To retrieve the next set of results, use the token
    -- in the next request. Tokens expire after 24 hours.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of filters. For each filter, provide a condition and a match
    -- statement. The condition is either @IS@ or @IS_NOT@, which specifies
    -- whether to include or exclude resources that match the statement from
    -- the list. The match statement consists of a key and a value.
    --
    -- __Filter properties__
    --
    -- -   @Condition@ - The condition to apply. Valid values are @IS@ and
    --     @IS_NOT@.
    --
    -- -   @Key@ - The name of the parameter to filter on. Valid values are
    --     @ResourceArn@ and @Status@.
    --
    -- -   @Value@ - The value to match.
    filters :: Prelude.Maybe [Filter],
    -- | The number of items to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExplainabilityExports' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listExplainabilityExports_nextToken' - If the result of the previous request was truncated, the response
-- includes a NextToken. To retrieve the next set of results, use the token
-- in the next request. Tokens expire after 24 hours.
--
-- 'filters', 'listExplainabilityExports_filters' - An array of filters. For each filter, provide a condition and a match
-- statement. The condition is either @IS@ or @IS_NOT@, which specifies
-- whether to include or exclude resources that match the statement from
-- the list. The match statement consists of a key and a value.
--
-- __Filter properties__
--
-- -   @Condition@ - The condition to apply. Valid values are @IS@ and
--     @IS_NOT@.
--
-- -   @Key@ - The name of the parameter to filter on. Valid values are
--     @ResourceArn@ and @Status@.
--
-- -   @Value@ - The value to match.
--
-- 'maxResults', 'listExplainabilityExports_maxResults' - The number of items to return in the response.
newListExplainabilityExports ::
  ListExplainabilityExports
newListExplainabilityExports =
  ListExplainabilityExports'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If the result of the previous request was truncated, the response
-- includes a NextToken. To retrieve the next set of results, use the token
-- in the next request. Tokens expire after 24 hours.
listExplainabilityExports_nextToken :: Lens.Lens' ListExplainabilityExports (Prelude.Maybe Prelude.Text)
listExplainabilityExports_nextToken = Lens.lens (\ListExplainabilityExports' {nextToken} -> nextToken) (\s@ListExplainabilityExports' {} a -> s {nextToken = a} :: ListExplainabilityExports)

-- | An array of filters. For each filter, provide a condition and a match
-- statement. The condition is either @IS@ or @IS_NOT@, which specifies
-- whether to include or exclude resources that match the statement from
-- the list. The match statement consists of a key and a value.
--
-- __Filter properties__
--
-- -   @Condition@ - The condition to apply. Valid values are @IS@ and
--     @IS_NOT@.
--
-- -   @Key@ - The name of the parameter to filter on. Valid values are
--     @ResourceArn@ and @Status@.
--
-- -   @Value@ - The value to match.
listExplainabilityExports_filters :: Lens.Lens' ListExplainabilityExports (Prelude.Maybe [Filter])
listExplainabilityExports_filters = Lens.lens (\ListExplainabilityExports' {filters} -> filters) (\s@ListExplainabilityExports' {} a -> s {filters = a} :: ListExplainabilityExports) Prelude.. Lens.mapping Lens.coerced

-- | The number of items to return in the response.
listExplainabilityExports_maxResults :: Lens.Lens' ListExplainabilityExports (Prelude.Maybe Prelude.Natural)
listExplainabilityExports_maxResults = Lens.lens (\ListExplainabilityExports' {maxResults} -> maxResults) (\s@ListExplainabilityExports' {} a -> s {maxResults = a} :: ListExplainabilityExports)

instance Core.AWSPager ListExplainabilityExports where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listExplainabilityExportsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listExplainabilityExportsResponse_explainabilityExports
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listExplainabilityExports_nextToken
          Lens..~ rs
          Lens.^? listExplainabilityExportsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListExplainabilityExports where
  type
    AWSResponse ListExplainabilityExports =
      ListExplainabilityExportsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExplainabilityExportsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ExplainabilityExports"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListExplainabilityExports where
  hashWithSalt _salt ListExplainabilityExports' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListExplainabilityExports where
  rnf ListExplainabilityExports' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListExplainabilityExports where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.ListExplainabilityExports" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListExplainabilityExports where
  toJSON ListExplainabilityExports' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListExplainabilityExports where
  toPath = Prelude.const "/"

instance Core.ToQuery ListExplainabilityExports where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListExplainabilityExportsResponse' smart constructor.
data ListExplainabilityExportsResponse = ListExplainabilityExportsResponse'
  { -- | Returns this token if the response is truncated. To retrieve the next
    -- set of results, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that summarize the properties of each Explainability
    -- export.
    explainabilityExports :: Prelude.Maybe [ExplainabilityExportSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExplainabilityExportsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listExplainabilityExportsResponse_nextToken' - Returns this token if the response is truncated. To retrieve the next
-- set of results, use the token in the next request.
--
-- 'explainabilityExports', 'listExplainabilityExportsResponse_explainabilityExports' - An array of objects that summarize the properties of each Explainability
-- export.
--
-- 'httpStatus', 'listExplainabilityExportsResponse_httpStatus' - The response's http status code.
newListExplainabilityExportsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListExplainabilityExportsResponse
newListExplainabilityExportsResponse pHttpStatus_ =
  ListExplainabilityExportsResponse'
    { nextToken =
        Prelude.Nothing,
      explainabilityExports = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Returns this token if the response is truncated. To retrieve the next
-- set of results, use the token in the next request.
listExplainabilityExportsResponse_nextToken :: Lens.Lens' ListExplainabilityExportsResponse (Prelude.Maybe Prelude.Text)
listExplainabilityExportsResponse_nextToken = Lens.lens (\ListExplainabilityExportsResponse' {nextToken} -> nextToken) (\s@ListExplainabilityExportsResponse' {} a -> s {nextToken = a} :: ListExplainabilityExportsResponse)

-- | An array of objects that summarize the properties of each Explainability
-- export.
listExplainabilityExportsResponse_explainabilityExports :: Lens.Lens' ListExplainabilityExportsResponse (Prelude.Maybe [ExplainabilityExportSummary])
listExplainabilityExportsResponse_explainabilityExports = Lens.lens (\ListExplainabilityExportsResponse' {explainabilityExports} -> explainabilityExports) (\s@ListExplainabilityExportsResponse' {} a -> s {explainabilityExports = a} :: ListExplainabilityExportsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listExplainabilityExportsResponse_httpStatus :: Lens.Lens' ListExplainabilityExportsResponse Prelude.Int
listExplainabilityExportsResponse_httpStatus = Lens.lens (\ListExplainabilityExportsResponse' {httpStatus} -> httpStatus) (\s@ListExplainabilityExportsResponse' {} a -> s {httpStatus = a} :: ListExplainabilityExportsResponse)

instance
  Prelude.NFData
    ListExplainabilityExportsResponse
  where
  rnf ListExplainabilityExportsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf explainabilityExports
      `Prelude.seq` Prelude.rnf httpStatus

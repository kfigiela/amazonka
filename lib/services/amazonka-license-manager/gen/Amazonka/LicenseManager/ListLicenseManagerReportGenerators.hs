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
-- Module      : Amazonka.LicenseManager.ListLicenseManagerReportGenerators
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the report generators for your account.
module Amazonka.LicenseManager.ListLicenseManagerReportGenerators
  ( -- * Creating a Request
    ListLicenseManagerReportGenerators (..),
    newListLicenseManagerReportGenerators,

    -- * Request Lenses
    listLicenseManagerReportGenerators_nextToken,
    listLicenseManagerReportGenerators_filters,
    listLicenseManagerReportGenerators_maxResults,

    -- * Destructuring the Response
    ListLicenseManagerReportGeneratorsResponse (..),
    newListLicenseManagerReportGeneratorsResponse,

    -- * Response Lenses
    listLicenseManagerReportGeneratorsResponse_nextToken,
    listLicenseManagerReportGeneratorsResponse_reportGenerators,
    listLicenseManagerReportGeneratorsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLicenseManagerReportGenerators' smart constructor.
data ListLicenseManagerReportGenerators = ListLicenseManagerReportGenerators'
  { -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters to scope the results. The following filters are supported:
    --
    -- -   @LicenseConfigurationArn@
    filters :: Prelude.Maybe [Filter],
    -- | Maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLicenseManagerReportGenerators' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLicenseManagerReportGenerators_nextToken' - Token for the next set of results.
--
-- 'filters', 'listLicenseManagerReportGenerators_filters' - Filters to scope the results. The following filters are supported:
--
-- -   @LicenseConfigurationArn@
--
-- 'maxResults', 'listLicenseManagerReportGenerators_maxResults' - Maximum number of results to return in a single call.
newListLicenseManagerReportGenerators ::
  ListLicenseManagerReportGenerators
newListLicenseManagerReportGenerators =
  ListLicenseManagerReportGenerators'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Token for the next set of results.
listLicenseManagerReportGenerators_nextToken :: Lens.Lens' ListLicenseManagerReportGenerators (Prelude.Maybe Prelude.Text)
listLicenseManagerReportGenerators_nextToken = Lens.lens (\ListLicenseManagerReportGenerators' {nextToken} -> nextToken) (\s@ListLicenseManagerReportGenerators' {} a -> s {nextToken = a} :: ListLicenseManagerReportGenerators)

-- | Filters to scope the results. The following filters are supported:
--
-- -   @LicenseConfigurationArn@
listLicenseManagerReportGenerators_filters :: Lens.Lens' ListLicenseManagerReportGenerators (Prelude.Maybe [Filter])
listLicenseManagerReportGenerators_filters = Lens.lens (\ListLicenseManagerReportGenerators' {filters} -> filters) (\s@ListLicenseManagerReportGenerators' {} a -> s {filters = a} :: ListLicenseManagerReportGenerators) Prelude.. Lens.mapping Lens.coerced

-- | Maximum number of results to return in a single call.
listLicenseManagerReportGenerators_maxResults :: Lens.Lens' ListLicenseManagerReportGenerators (Prelude.Maybe Prelude.Natural)
listLicenseManagerReportGenerators_maxResults = Lens.lens (\ListLicenseManagerReportGenerators' {maxResults} -> maxResults) (\s@ListLicenseManagerReportGenerators' {} a -> s {maxResults = a} :: ListLicenseManagerReportGenerators)

instance
  Core.AWSRequest
    ListLicenseManagerReportGenerators
  where
  type
    AWSResponse ListLicenseManagerReportGenerators =
      ListLicenseManagerReportGeneratorsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLicenseManagerReportGeneratorsResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "ReportGenerators"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListLicenseManagerReportGenerators
  where
  hashWithSalt
    _salt
    ListLicenseManagerReportGenerators' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    ListLicenseManagerReportGenerators
  where
  rnf ListLicenseManagerReportGenerators' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    ListLicenseManagerReportGenerators
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.ListLicenseManagerReportGenerators" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListLicenseManagerReportGenerators
  where
  toJSON ListLicenseManagerReportGenerators' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance
  Core.ToPath
    ListLicenseManagerReportGenerators
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListLicenseManagerReportGenerators
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLicenseManagerReportGeneratorsResponse' smart constructor.
data ListLicenseManagerReportGeneratorsResponse = ListLicenseManagerReportGeneratorsResponse'
  { -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A report generator that creates periodic reports about your license
    -- configurations.
    reportGenerators :: Prelude.Maybe [ReportGenerator],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLicenseManagerReportGeneratorsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLicenseManagerReportGeneratorsResponse_nextToken' - Token for the next set of results.
--
-- 'reportGenerators', 'listLicenseManagerReportGeneratorsResponse_reportGenerators' - A report generator that creates periodic reports about your license
-- configurations.
--
-- 'httpStatus', 'listLicenseManagerReportGeneratorsResponse_httpStatus' - The response's http status code.
newListLicenseManagerReportGeneratorsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLicenseManagerReportGeneratorsResponse
newListLicenseManagerReportGeneratorsResponse
  pHttpStatus_ =
    ListLicenseManagerReportGeneratorsResponse'
      { nextToken =
          Prelude.Nothing,
        reportGenerators =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Token for the next set of results.
listLicenseManagerReportGeneratorsResponse_nextToken :: Lens.Lens' ListLicenseManagerReportGeneratorsResponse (Prelude.Maybe Prelude.Text)
listLicenseManagerReportGeneratorsResponse_nextToken = Lens.lens (\ListLicenseManagerReportGeneratorsResponse' {nextToken} -> nextToken) (\s@ListLicenseManagerReportGeneratorsResponse' {} a -> s {nextToken = a} :: ListLicenseManagerReportGeneratorsResponse)

-- | A report generator that creates periodic reports about your license
-- configurations.
listLicenseManagerReportGeneratorsResponse_reportGenerators :: Lens.Lens' ListLicenseManagerReportGeneratorsResponse (Prelude.Maybe [ReportGenerator])
listLicenseManagerReportGeneratorsResponse_reportGenerators = Lens.lens (\ListLicenseManagerReportGeneratorsResponse' {reportGenerators} -> reportGenerators) (\s@ListLicenseManagerReportGeneratorsResponse' {} a -> s {reportGenerators = a} :: ListLicenseManagerReportGeneratorsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLicenseManagerReportGeneratorsResponse_httpStatus :: Lens.Lens' ListLicenseManagerReportGeneratorsResponse Prelude.Int
listLicenseManagerReportGeneratorsResponse_httpStatus = Lens.lens (\ListLicenseManagerReportGeneratorsResponse' {httpStatus} -> httpStatus) (\s@ListLicenseManagerReportGeneratorsResponse' {} a -> s {httpStatus = a} :: ListLicenseManagerReportGeneratorsResponse)

instance
  Prelude.NFData
    ListLicenseManagerReportGeneratorsResponse
  where
  rnf ListLicenseManagerReportGeneratorsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf reportGenerators
      `Prelude.seq` Prelude.rnf httpStatus

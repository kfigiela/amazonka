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
-- Module      : Amazonka.MigrationHubReFactorSpaces.ListServices
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the Amazon Web Services Migration Hub Refactor Spaces services
-- within an application.
--
-- This operation returns paginated results.
module Amazonka.MigrationHubReFactorSpaces.ListServices
  ( -- * Creating a Request
    ListServices (..),
    newListServices,

    -- * Request Lenses
    listServices_nextToken,
    listServices_maxResults,
    listServices_applicationIdentifier,
    listServices_environmentIdentifier,

    -- * Destructuring the Response
    ListServicesResponse (..),
    newListServicesResponse,

    -- * Response Lenses
    listServicesResponse_nextToken,
    listServicesResponse_serviceSummaryList,
    listServicesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubReFactorSpaces.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListServices' smart constructor.
data ListServices = ListServices'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the application.
    applicationIdentifier :: Prelude.Text,
    -- | The ID of the environment.
    environmentIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listServices_nextToken' - The token for the next page of results.
--
-- 'maxResults', 'listServices_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'applicationIdentifier', 'listServices_applicationIdentifier' - The ID of the application.
--
-- 'environmentIdentifier', 'listServices_environmentIdentifier' - The ID of the environment.
newListServices ::
  -- | 'applicationIdentifier'
  Prelude.Text ->
  -- | 'environmentIdentifier'
  Prelude.Text ->
  ListServices
newListServices
  pApplicationIdentifier_
  pEnvironmentIdentifier_ =
    ListServices'
      { nextToken = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        applicationIdentifier = pApplicationIdentifier_,
        environmentIdentifier = pEnvironmentIdentifier_
      }

-- | The token for the next page of results.
listServices_nextToken :: Lens.Lens' ListServices (Prelude.Maybe Prelude.Text)
listServices_nextToken = Lens.lens (\ListServices' {nextToken} -> nextToken) (\s@ListServices' {} a -> s {nextToken = a} :: ListServices)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
listServices_maxResults :: Lens.Lens' ListServices (Prelude.Maybe Prelude.Natural)
listServices_maxResults = Lens.lens (\ListServices' {maxResults} -> maxResults) (\s@ListServices' {} a -> s {maxResults = a} :: ListServices)

-- | The ID of the application.
listServices_applicationIdentifier :: Lens.Lens' ListServices Prelude.Text
listServices_applicationIdentifier = Lens.lens (\ListServices' {applicationIdentifier} -> applicationIdentifier) (\s@ListServices' {} a -> s {applicationIdentifier = a} :: ListServices)

-- | The ID of the environment.
listServices_environmentIdentifier :: Lens.Lens' ListServices Prelude.Text
listServices_environmentIdentifier = Lens.lens (\ListServices' {environmentIdentifier} -> environmentIdentifier) (\s@ListServices' {} a -> s {environmentIdentifier = a} :: ListServices)

instance Core.AWSPager ListServices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listServicesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listServicesResponse_serviceSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listServices_nextToken
          Lens..~ rs
          Lens.^? listServicesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListServices where
  type AWSResponse ListServices = ListServicesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListServicesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ServiceSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListServices where
  hashWithSalt _salt ListServices' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` applicationIdentifier
      `Prelude.hashWithSalt` environmentIdentifier

instance Prelude.NFData ListServices where
  rnf ListServices' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf applicationIdentifier
      `Prelude.seq` Prelude.rnf environmentIdentifier

instance Core.ToHeaders ListServices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListServices where
  toPath ListServices' {..} =
    Prelude.mconcat
      [ "/environments/",
        Core.toBS environmentIdentifier,
        "/applications/",
        Core.toBS applicationIdentifier,
        "/services"
      ]

instance Core.ToQuery ListServices where
  toQuery ListServices' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of @ServiceSummary@ objects.
    serviceSummaryList :: Prelude.Maybe [ServiceSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listServicesResponse_nextToken' - The token for the next page of results.
--
-- 'serviceSummaryList', 'listServicesResponse_serviceSummaryList' - The list of @ServiceSummary@ objects.
--
-- 'httpStatus', 'listServicesResponse_httpStatus' - The response's http status code.
newListServicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListServicesResponse
newListServicesResponse pHttpStatus_ =
  ListServicesResponse'
    { nextToken = Prelude.Nothing,
      serviceSummaryList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
listServicesResponse_nextToken :: Lens.Lens' ListServicesResponse (Prelude.Maybe Prelude.Text)
listServicesResponse_nextToken = Lens.lens (\ListServicesResponse' {nextToken} -> nextToken) (\s@ListServicesResponse' {} a -> s {nextToken = a} :: ListServicesResponse)

-- | The list of @ServiceSummary@ objects.
listServicesResponse_serviceSummaryList :: Lens.Lens' ListServicesResponse (Prelude.Maybe [ServiceSummary])
listServicesResponse_serviceSummaryList = Lens.lens (\ListServicesResponse' {serviceSummaryList} -> serviceSummaryList) (\s@ListServicesResponse' {} a -> s {serviceSummaryList = a} :: ListServicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listServicesResponse_httpStatus :: Lens.Lens' ListServicesResponse Prelude.Int
listServicesResponse_httpStatus = Lens.lens (\ListServicesResponse' {httpStatus} -> httpStatus) (\s@ListServicesResponse' {} a -> s {httpStatus = a} :: ListServicesResponse)

instance Prelude.NFData ListServicesResponse where
  rnf ListServicesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf serviceSummaryList
      `Prelude.seq` Prelude.rnf httpStatus

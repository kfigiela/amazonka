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
-- Module      : Amazonka.ServiceCatalog.ListPrincipalsForPortfolio
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all principal ARNs associated with the specified portfolio.
--
-- This operation returns paginated results.
module Amazonka.ServiceCatalog.ListPrincipalsForPortfolio
  ( -- * Creating a Request
    ListPrincipalsForPortfolio (..),
    newListPrincipalsForPortfolio,

    -- * Request Lenses
    listPrincipalsForPortfolio_pageToken,
    listPrincipalsForPortfolio_pageSize,
    listPrincipalsForPortfolio_acceptLanguage,
    listPrincipalsForPortfolio_portfolioId,

    -- * Destructuring the Response
    ListPrincipalsForPortfolioResponse (..),
    newListPrincipalsForPortfolioResponse,

    -- * Response Lenses
    listPrincipalsForPortfolioResponse_nextPageToken,
    listPrincipalsForPortfolioResponse_principals,
    listPrincipalsForPortfolioResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newListPrincipalsForPortfolio' smart constructor.
data ListPrincipalsForPortfolio = ListPrincipalsForPortfolio'
  { -- | The page token for the next set of results. To retrieve the first set of
    -- results, use null.
    pageToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The portfolio identifier.
    portfolioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPrincipalsForPortfolio' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageToken', 'listPrincipalsForPortfolio_pageToken' - The page token for the next set of results. To retrieve the first set of
-- results, use null.
--
-- 'pageSize', 'listPrincipalsForPortfolio_pageSize' - The maximum number of items to return with this call.
--
-- 'acceptLanguage', 'listPrincipalsForPortfolio_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'portfolioId', 'listPrincipalsForPortfolio_portfolioId' - The portfolio identifier.
newListPrincipalsForPortfolio ::
  -- | 'portfolioId'
  Prelude.Text ->
  ListPrincipalsForPortfolio
newListPrincipalsForPortfolio pPortfolioId_ =
  ListPrincipalsForPortfolio'
    { pageToken =
        Prelude.Nothing,
      pageSize = Prelude.Nothing,
      acceptLanguage = Prelude.Nothing,
      portfolioId = pPortfolioId_
    }

-- | The page token for the next set of results. To retrieve the first set of
-- results, use null.
listPrincipalsForPortfolio_pageToken :: Lens.Lens' ListPrincipalsForPortfolio (Prelude.Maybe Prelude.Text)
listPrincipalsForPortfolio_pageToken = Lens.lens (\ListPrincipalsForPortfolio' {pageToken} -> pageToken) (\s@ListPrincipalsForPortfolio' {} a -> s {pageToken = a} :: ListPrincipalsForPortfolio)

-- | The maximum number of items to return with this call.
listPrincipalsForPortfolio_pageSize :: Lens.Lens' ListPrincipalsForPortfolio (Prelude.Maybe Prelude.Natural)
listPrincipalsForPortfolio_pageSize = Lens.lens (\ListPrincipalsForPortfolio' {pageSize} -> pageSize) (\s@ListPrincipalsForPortfolio' {} a -> s {pageSize = a} :: ListPrincipalsForPortfolio)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
listPrincipalsForPortfolio_acceptLanguage :: Lens.Lens' ListPrincipalsForPortfolio (Prelude.Maybe Prelude.Text)
listPrincipalsForPortfolio_acceptLanguage = Lens.lens (\ListPrincipalsForPortfolio' {acceptLanguage} -> acceptLanguage) (\s@ListPrincipalsForPortfolio' {} a -> s {acceptLanguage = a} :: ListPrincipalsForPortfolio)

-- | The portfolio identifier.
listPrincipalsForPortfolio_portfolioId :: Lens.Lens' ListPrincipalsForPortfolio Prelude.Text
listPrincipalsForPortfolio_portfolioId = Lens.lens (\ListPrincipalsForPortfolio' {portfolioId} -> portfolioId) (\s@ListPrincipalsForPortfolio' {} a -> s {portfolioId = a} :: ListPrincipalsForPortfolio)

instance Core.AWSPager ListPrincipalsForPortfolio where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPrincipalsForPortfolioResponse_nextPageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPrincipalsForPortfolioResponse_principals
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPrincipalsForPortfolio_pageToken
          Lens..~ rs
          Lens.^? listPrincipalsForPortfolioResponse_nextPageToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListPrincipalsForPortfolio where
  type
    AWSResponse ListPrincipalsForPortfolio =
      ListPrincipalsForPortfolioResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPrincipalsForPortfolioResponse'
            Prelude.<$> (x Core..?> "NextPageToken")
            Prelude.<*> (x Core..?> "Principals" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPrincipalsForPortfolio where
  hashWithSalt _salt ListPrincipalsForPortfolio' {..} =
    _salt `Prelude.hashWithSalt` pageToken
      `Prelude.hashWithSalt` pageSize
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` portfolioId

instance Prelude.NFData ListPrincipalsForPortfolio where
  rnf ListPrincipalsForPortfolio' {..} =
    Prelude.rnf pageToken
      `Prelude.seq` Prelude.rnf pageSize
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf portfolioId

instance Core.ToHeaders ListPrincipalsForPortfolio where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.ListPrincipalsForPortfolio" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListPrincipalsForPortfolio where
  toJSON ListPrincipalsForPortfolio' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PageToken" Core..=) Prelude.<$> pageToken,
            ("PageSize" Core..=) Prelude.<$> pageSize,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            Prelude.Just ("PortfolioId" Core..= portfolioId)
          ]
      )

instance Core.ToPath ListPrincipalsForPortfolio where
  toPath = Prelude.const "/"

instance Core.ToQuery ListPrincipalsForPortfolio where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPrincipalsForPortfolioResponse' smart constructor.
data ListPrincipalsForPortfolioResponse = ListPrincipalsForPortfolioResponse'
  { -- | The page token to use to retrieve the next set of results. If there are
    -- no additional results, this value is null.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | The IAM principals (users or roles) associated with the portfolio.
    principals :: Prelude.Maybe [Principal],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPrincipalsForPortfolioResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'listPrincipalsForPortfolioResponse_nextPageToken' - The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
--
-- 'principals', 'listPrincipalsForPortfolioResponse_principals' - The IAM principals (users or roles) associated with the portfolio.
--
-- 'httpStatus', 'listPrincipalsForPortfolioResponse_httpStatus' - The response's http status code.
newListPrincipalsForPortfolioResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPrincipalsForPortfolioResponse
newListPrincipalsForPortfolioResponse pHttpStatus_ =
  ListPrincipalsForPortfolioResponse'
    { nextPageToken =
        Prelude.Nothing,
      principals = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
listPrincipalsForPortfolioResponse_nextPageToken :: Lens.Lens' ListPrincipalsForPortfolioResponse (Prelude.Maybe Prelude.Text)
listPrincipalsForPortfolioResponse_nextPageToken = Lens.lens (\ListPrincipalsForPortfolioResponse' {nextPageToken} -> nextPageToken) (\s@ListPrincipalsForPortfolioResponse' {} a -> s {nextPageToken = a} :: ListPrincipalsForPortfolioResponse)

-- | The IAM principals (users or roles) associated with the portfolio.
listPrincipalsForPortfolioResponse_principals :: Lens.Lens' ListPrincipalsForPortfolioResponse (Prelude.Maybe [Principal])
listPrincipalsForPortfolioResponse_principals = Lens.lens (\ListPrincipalsForPortfolioResponse' {principals} -> principals) (\s@ListPrincipalsForPortfolioResponse' {} a -> s {principals = a} :: ListPrincipalsForPortfolioResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPrincipalsForPortfolioResponse_httpStatus :: Lens.Lens' ListPrincipalsForPortfolioResponse Prelude.Int
listPrincipalsForPortfolioResponse_httpStatus = Lens.lens (\ListPrincipalsForPortfolioResponse' {httpStatus} -> httpStatus) (\s@ListPrincipalsForPortfolioResponse' {} a -> s {httpStatus = a} :: ListPrincipalsForPortfolioResponse)

instance
  Prelude.NFData
    ListPrincipalsForPortfolioResponse
  where
  rnf ListPrincipalsForPortfolioResponse' {..} =
    Prelude.rnf nextPageToken
      `Prelude.seq` Prelude.rnf principals
      `Prelude.seq` Prelude.rnf httpStatus

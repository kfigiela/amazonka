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
-- Module      : Amazonka.OpenSearch.GetUpgradeHistory
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the complete history of the last 10 upgrades performed on the
-- domain.
module Amazonka.OpenSearch.GetUpgradeHistory
  ( -- * Creating a Request
    GetUpgradeHistory (..),
    newGetUpgradeHistory,

    -- * Request Lenses
    getUpgradeHistory_nextToken,
    getUpgradeHistory_maxResults,
    getUpgradeHistory_domainName,

    -- * Destructuring the Response
    GetUpgradeHistoryResponse (..),
    newGetUpgradeHistoryResponse,

    -- * Response Lenses
    getUpgradeHistoryResponse_nextToken,
    getUpgradeHistoryResponse_upgradeHistories,
    getUpgradeHistoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for the request parameters to the @ GetUpgradeHistory @
-- operation.
--
-- /See:/ 'newGetUpgradeHistory' smart constructor.
data GetUpgradeHistory = GetUpgradeHistory'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Int,
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetUpgradeHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistory_nextToken' - Undocumented member.
--
-- 'maxResults', 'getUpgradeHistory_maxResults' - Undocumented member.
--
-- 'domainName', 'getUpgradeHistory_domainName' - Undocumented member.
newGetUpgradeHistory ::
  -- | 'domainName'
  Prelude.Text ->
  GetUpgradeHistory
newGetUpgradeHistory pDomainName_ =
  GetUpgradeHistory'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | Undocumented member.
getUpgradeHistory_nextToken :: Lens.Lens' GetUpgradeHistory (Prelude.Maybe Prelude.Text)
getUpgradeHistory_nextToken = Lens.lens (\GetUpgradeHistory' {nextToken} -> nextToken) (\s@GetUpgradeHistory' {} a -> s {nextToken = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_maxResults :: Lens.Lens' GetUpgradeHistory (Prelude.Maybe Prelude.Int)
getUpgradeHistory_maxResults = Lens.lens (\GetUpgradeHistory' {maxResults} -> maxResults) (\s@GetUpgradeHistory' {} a -> s {maxResults = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_domainName :: Lens.Lens' GetUpgradeHistory Prelude.Text
getUpgradeHistory_domainName = Lens.lens (\GetUpgradeHistory' {domainName} -> domainName) (\s@GetUpgradeHistory' {} a -> s {domainName = a} :: GetUpgradeHistory)

instance Core.AWSRequest GetUpgradeHistory where
  type
    AWSResponse GetUpgradeHistory =
      GetUpgradeHistoryResponse
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetUpgradeHistoryResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "UpgradeHistories"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService GetUpgradeHistory where
  service _proxy = defaultService

instance Prelude.Hashable GetUpgradeHistory where
  hashWithSalt _salt GetUpgradeHistory' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData GetUpgradeHistory where
  rnf GetUpgradeHistory' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf domainName

instance Core.ToHeaders GetUpgradeHistory where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetUpgradeHistory where
  toPath GetUpgradeHistory' {..} =
    Prelude.mconcat
      [ "/2021-01-01/opensearch/upgradeDomain/",
        Core.toBS domainName,
        "/history"
      ]

instance Core.ToQuery GetUpgradeHistory where
  toQuery GetUpgradeHistory' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | Container for the response returned by the @ GetUpgradeHistory @
-- operation.
--
-- /See:/ 'newGetUpgradeHistoryResponse' smart constructor.
data GetUpgradeHistoryResponse = GetUpgradeHistoryResponse'
  { -- | Pagination token that needs to be supplied to the next call to get the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @ UpgradeHistory @ objects corresponding to each upgrade or
    -- upgrade eligibility check performed on a domain returned as part of the
    -- @ GetUpgradeHistoryResponse @ object.
    upgradeHistories :: Prelude.Maybe [UpgradeHistory],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetUpgradeHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistoryResponse_nextToken' - Pagination token that needs to be supplied to the next call to get the
-- next page of results.
--
-- 'upgradeHistories', 'getUpgradeHistoryResponse_upgradeHistories' - A list of @ UpgradeHistory @ objects corresponding to each upgrade or
-- upgrade eligibility check performed on a domain returned as part of the
-- @ GetUpgradeHistoryResponse @ object.
--
-- 'httpStatus', 'getUpgradeHistoryResponse_httpStatus' - The response's http status code.
newGetUpgradeHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetUpgradeHistoryResponse
newGetUpgradeHistoryResponse pHttpStatus_ =
  GetUpgradeHistoryResponse'
    { nextToken =
        Prelude.Nothing,
      upgradeHistories = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Pagination token that needs to be supplied to the next call to get the
-- next page of results.
getUpgradeHistoryResponse_nextToken :: Lens.Lens' GetUpgradeHistoryResponse (Prelude.Maybe Prelude.Text)
getUpgradeHistoryResponse_nextToken = Lens.lens (\GetUpgradeHistoryResponse' {nextToken} -> nextToken) (\s@GetUpgradeHistoryResponse' {} a -> s {nextToken = a} :: GetUpgradeHistoryResponse)

-- | A list of @ UpgradeHistory @ objects corresponding to each upgrade or
-- upgrade eligibility check performed on a domain returned as part of the
-- @ GetUpgradeHistoryResponse @ object.
getUpgradeHistoryResponse_upgradeHistories :: Lens.Lens' GetUpgradeHistoryResponse (Prelude.Maybe [UpgradeHistory])
getUpgradeHistoryResponse_upgradeHistories = Lens.lens (\GetUpgradeHistoryResponse' {upgradeHistories} -> upgradeHistories) (\s@GetUpgradeHistoryResponse' {} a -> s {upgradeHistories = a} :: GetUpgradeHistoryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getUpgradeHistoryResponse_httpStatus :: Lens.Lens' GetUpgradeHistoryResponse Prelude.Int
getUpgradeHistoryResponse_httpStatus = Lens.lens (\GetUpgradeHistoryResponse' {httpStatus} -> httpStatus) (\s@GetUpgradeHistoryResponse' {} a -> s {httpStatus = a} :: GetUpgradeHistoryResponse)

instance Prelude.NFData GetUpgradeHistoryResponse where
  rnf GetUpgradeHistoryResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf upgradeHistories
      `Prelude.seq` Prelude.rnf httpStatus

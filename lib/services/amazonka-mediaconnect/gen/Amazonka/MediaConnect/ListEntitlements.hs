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
-- Module      : Amazonka.MediaConnect.ListEntitlements
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays a list of all entitlements that have been granted to this
-- account. This request returns 20 results per page.
--
-- This operation returns paginated results.
module Amazonka.MediaConnect.ListEntitlements
  ( -- * Creating a Request
    ListEntitlements (..),
    newListEntitlements,

    -- * Request Lenses
    listEntitlements_nextToken,
    listEntitlements_maxResults,

    -- * Destructuring the Response
    ListEntitlementsResponse (..),
    newListEntitlementsResponse,

    -- * Response Lenses
    listEntitlementsResponse_nextToken,
    listEntitlementsResponse_entitlements,
    listEntitlementsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListEntitlements' smart constructor.
data ListEntitlements = ListEntitlements'
  { -- | The token that identifies which batch of results that you want to see.
    -- For example, you submit a ListEntitlements request with MaxResults set
    -- at 5. The service returns the first batch of results (up to 5) and a
    -- NextToken value. To see the next batch of results, you can submit the
    -- ListEntitlements request a second time and specify the NextToken value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per API request. For example,
    -- you submit a ListEntitlements request with MaxResults set at 5. Although
    -- 20 items match your request, the service returns no more than the first
    -- 5 items. (The service also returns a NextToken value that you can use to
    -- fetch the next batch of results.) The service might return fewer results
    -- than the MaxResults value. If MaxResults is not included in the request,
    -- the service defaults to pagination with a maximum of 20 results per
    -- page.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEntitlements' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEntitlements_nextToken' - The token that identifies which batch of results that you want to see.
-- For example, you submit a ListEntitlements request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListEntitlements request a second time and specify the NextToken value.
--
-- 'maxResults', 'listEntitlements_maxResults' - The maximum number of results to return per API request. For example,
-- you submit a ListEntitlements request with MaxResults set at 5. Although
-- 20 items match your request, the service returns no more than the first
-- 5 items. (The service also returns a NextToken value that you can use to
-- fetch the next batch of results.) The service might return fewer results
-- than the MaxResults value. If MaxResults is not included in the request,
-- the service defaults to pagination with a maximum of 20 results per
-- page.
newListEntitlements ::
  ListEntitlements
newListEntitlements =
  ListEntitlements'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that identifies which batch of results that you want to see.
-- For example, you submit a ListEntitlements request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListEntitlements request a second time and specify the NextToken value.
listEntitlements_nextToken :: Lens.Lens' ListEntitlements (Prelude.Maybe Prelude.Text)
listEntitlements_nextToken = Lens.lens (\ListEntitlements' {nextToken} -> nextToken) (\s@ListEntitlements' {} a -> s {nextToken = a} :: ListEntitlements)

-- | The maximum number of results to return per API request. For example,
-- you submit a ListEntitlements request with MaxResults set at 5. Although
-- 20 items match your request, the service returns no more than the first
-- 5 items. (The service also returns a NextToken value that you can use to
-- fetch the next batch of results.) The service might return fewer results
-- than the MaxResults value. If MaxResults is not included in the request,
-- the service defaults to pagination with a maximum of 20 results per
-- page.
listEntitlements_maxResults :: Lens.Lens' ListEntitlements (Prelude.Maybe Prelude.Natural)
listEntitlements_maxResults = Lens.lens (\ListEntitlements' {maxResults} -> maxResults) (\s@ListEntitlements' {} a -> s {maxResults = a} :: ListEntitlements)

instance Core.AWSPager ListEntitlements where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEntitlementsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listEntitlementsResponse_entitlements
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listEntitlements_nextToken
          Lens..~ rs
          Lens.^? listEntitlementsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListEntitlements where
  type
    AWSResponse ListEntitlements =
      ListEntitlementsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEntitlementsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "entitlements" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEntitlements where
  hashWithSalt _salt ListEntitlements' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListEntitlements where
  rnf ListEntitlements' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListEntitlements where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListEntitlements where
  toPath = Prelude.const "/v1/entitlements"

instance Core.ToQuery ListEntitlements where
  toQuery ListEntitlements' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListEntitlementsResponse' smart constructor.
data ListEntitlementsResponse = ListEntitlementsResponse'
  { -- | The token that identifies which batch of results that you want to see.
    -- For example, you submit a ListEntitlements request with MaxResults set
    -- at 5. The service returns the first batch of results (up to 5) and a
    -- NextToken value. To see the next batch of results, you can submit the
    -- ListEntitlements request a second time and specify the NextToken value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of entitlements that have been granted to you from other AWS
    -- accounts.
    entitlements :: Prelude.Maybe [ListedEntitlement],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEntitlementsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEntitlementsResponse_nextToken' - The token that identifies which batch of results that you want to see.
-- For example, you submit a ListEntitlements request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListEntitlements request a second time and specify the NextToken value.
--
-- 'entitlements', 'listEntitlementsResponse_entitlements' - A list of entitlements that have been granted to you from other AWS
-- accounts.
--
-- 'httpStatus', 'listEntitlementsResponse_httpStatus' - The response's http status code.
newListEntitlementsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEntitlementsResponse
newListEntitlementsResponse pHttpStatus_ =
  ListEntitlementsResponse'
    { nextToken =
        Prelude.Nothing,
      entitlements = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token that identifies which batch of results that you want to see.
-- For example, you submit a ListEntitlements request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListEntitlements request a second time and specify the NextToken value.
listEntitlementsResponse_nextToken :: Lens.Lens' ListEntitlementsResponse (Prelude.Maybe Prelude.Text)
listEntitlementsResponse_nextToken = Lens.lens (\ListEntitlementsResponse' {nextToken} -> nextToken) (\s@ListEntitlementsResponse' {} a -> s {nextToken = a} :: ListEntitlementsResponse)

-- | A list of entitlements that have been granted to you from other AWS
-- accounts.
listEntitlementsResponse_entitlements :: Lens.Lens' ListEntitlementsResponse (Prelude.Maybe [ListedEntitlement])
listEntitlementsResponse_entitlements = Lens.lens (\ListEntitlementsResponse' {entitlements} -> entitlements) (\s@ListEntitlementsResponse' {} a -> s {entitlements = a} :: ListEntitlementsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listEntitlementsResponse_httpStatus :: Lens.Lens' ListEntitlementsResponse Prelude.Int
listEntitlementsResponse_httpStatus = Lens.lens (\ListEntitlementsResponse' {httpStatus} -> httpStatus) (\s@ListEntitlementsResponse' {} a -> s {httpStatus = a} :: ListEntitlementsResponse)

instance Prelude.NFData ListEntitlementsResponse where
  rnf ListEntitlementsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf entitlements
      `Prelude.seq` Prelude.rnf httpStatus

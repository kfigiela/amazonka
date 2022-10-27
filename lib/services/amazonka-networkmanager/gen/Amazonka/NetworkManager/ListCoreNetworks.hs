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
-- Module      : Amazonka.NetworkManager.ListCoreNetworks
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of owned and shared core networks.
--
-- This operation returns paginated results.
module Amazonka.NetworkManager.ListCoreNetworks
  ( -- * Creating a Request
    ListCoreNetworks (..),
    newListCoreNetworks,

    -- * Request Lenses
    listCoreNetworks_nextToken,
    listCoreNetworks_maxResults,

    -- * Destructuring the Response
    ListCoreNetworksResponse (..),
    newListCoreNetworksResponse,

    -- * Response Lenses
    listCoreNetworksResponse_nextToken,
    listCoreNetworksResponse_coreNetworks,
    listCoreNetworksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListCoreNetworks' smart constructor.
data ListCoreNetworks = ListCoreNetworks'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCoreNetworks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCoreNetworks_nextToken' - The token for the next page of results.
--
-- 'maxResults', 'listCoreNetworks_maxResults' - The maximum number of results to return.
newListCoreNetworks ::
  ListCoreNetworks
newListCoreNetworks =
  ListCoreNetworks'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next page of results.
listCoreNetworks_nextToken :: Lens.Lens' ListCoreNetworks (Prelude.Maybe Prelude.Text)
listCoreNetworks_nextToken = Lens.lens (\ListCoreNetworks' {nextToken} -> nextToken) (\s@ListCoreNetworks' {} a -> s {nextToken = a} :: ListCoreNetworks)

-- | The maximum number of results to return.
listCoreNetworks_maxResults :: Lens.Lens' ListCoreNetworks (Prelude.Maybe Prelude.Natural)
listCoreNetworks_maxResults = Lens.lens (\ListCoreNetworks' {maxResults} -> maxResults) (\s@ListCoreNetworks' {} a -> s {maxResults = a} :: ListCoreNetworks)

instance Core.AWSPager ListCoreNetworks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCoreNetworksResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCoreNetworksResponse_coreNetworks
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCoreNetworks_nextToken
          Lens..~ rs
          Lens.^? listCoreNetworksResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListCoreNetworks where
  type
    AWSResponse ListCoreNetworks =
      ListCoreNetworksResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCoreNetworksResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "CoreNetworks" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCoreNetworks where
  hashWithSalt _salt ListCoreNetworks' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListCoreNetworks where
  rnf ListCoreNetworks' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListCoreNetworks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListCoreNetworks where
  toPath = Prelude.const "/core-networks"

instance Core.ToQuery ListCoreNetworks where
  toQuery ListCoreNetworks' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListCoreNetworksResponse' smart constructor.
data ListCoreNetworksResponse = ListCoreNetworksResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Describes the list of core networks.
    coreNetworks :: Prelude.Maybe [CoreNetworkSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCoreNetworksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCoreNetworksResponse_nextToken' - The token for the next page of results.
--
-- 'coreNetworks', 'listCoreNetworksResponse_coreNetworks' - Describes the list of core networks.
--
-- 'httpStatus', 'listCoreNetworksResponse_httpStatus' - The response's http status code.
newListCoreNetworksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCoreNetworksResponse
newListCoreNetworksResponse pHttpStatus_ =
  ListCoreNetworksResponse'
    { nextToken =
        Prelude.Nothing,
      coreNetworks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
listCoreNetworksResponse_nextToken :: Lens.Lens' ListCoreNetworksResponse (Prelude.Maybe Prelude.Text)
listCoreNetworksResponse_nextToken = Lens.lens (\ListCoreNetworksResponse' {nextToken} -> nextToken) (\s@ListCoreNetworksResponse' {} a -> s {nextToken = a} :: ListCoreNetworksResponse)

-- | Describes the list of core networks.
listCoreNetworksResponse_coreNetworks :: Lens.Lens' ListCoreNetworksResponse (Prelude.Maybe [CoreNetworkSummary])
listCoreNetworksResponse_coreNetworks = Lens.lens (\ListCoreNetworksResponse' {coreNetworks} -> coreNetworks) (\s@ListCoreNetworksResponse' {} a -> s {coreNetworks = a} :: ListCoreNetworksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCoreNetworksResponse_httpStatus :: Lens.Lens' ListCoreNetworksResponse Prelude.Int
listCoreNetworksResponse_httpStatus = Lens.lens (\ListCoreNetworksResponse' {httpStatus} -> httpStatus) (\s@ListCoreNetworksResponse' {} a -> s {httpStatus = a} :: ListCoreNetworksResponse)

instance Prelude.NFData ListCoreNetworksResponse where
  rnf ListCoreNetworksResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf coreNetworks
      `Prelude.seq` Prelude.rnf httpStatus

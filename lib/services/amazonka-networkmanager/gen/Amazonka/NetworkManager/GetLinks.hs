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
-- Module      : Amazonka.NetworkManager.GetLinks
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more links in a specified global network.
--
-- If you specify the site ID, you cannot specify the type or provider in
-- the same request. You can specify the type and provider in the same
-- request.
--
-- This operation returns paginated results.
module Amazonka.NetworkManager.GetLinks
  ( -- * Creating a Request
    GetLinks (..),
    newGetLinks,

    -- * Request Lenses
    getLinks_linkIds,
    getLinks_nextToken,
    getLinks_type,
    getLinks_provider,
    getLinks_siteId,
    getLinks_maxResults,
    getLinks_globalNetworkId,

    -- * Destructuring the Response
    GetLinksResponse (..),
    newGetLinksResponse,

    -- * Response Lenses
    getLinksResponse_nextToken,
    getLinksResponse_links,
    getLinksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetLinks' smart constructor.
data GetLinks = GetLinks'
  { -- | One or more link IDs. The maximum is 10.
    linkIds :: Prelude.Maybe [Prelude.Text],
    -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The link type.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The link provider.
    provider :: Prelude.Maybe Prelude.Text,
    -- | The ID of the site.
    siteId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLinks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'linkIds', 'getLinks_linkIds' - One or more link IDs. The maximum is 10.
--
-- 'nextToken', 'getLinks_nextToken' - The token for the next page of results.
--
-- 'type'', 'getLinks_type' - The link type.
--
-- 'provider', 'getLinks_provider' - The link provider.
--
-- 'siteId', 'getLinks_siteId' - The ID of the site.
--
-- 'maxResults', 'getLinks_maxResults' - The maximum number of results to return.
--
-- 'globalNetworkId', 'getLinks_globalNetworkId' - The ID of the global network.
newGetLinks ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  GetLinks
newGetLinks pGlobalNetworkId_ =
  GetLinks'
    { linkIds = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      type' = Prelude.Nothing,
      provider = Prelude.Nothing,
      siteId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_
    }

-- | One or more link IDs. The maximum is 10.
getLinks_linkIds :: Lens.Lens' GetLinks (Prelude.Maybe [Prelude.Text])
getLinks_linkIds = Lens.lens (\GetLinks' {linkIds} -> linkIds) (\s@GetLinks' {} a -> s {linkIds = a} :: GetLinks) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next page of results.
getLinks_nextToken :: Lens.Lens' GetLinks (Prelude.Maybe Prelude.Text)
getLinks_nextToken = Lens.lens (\GetLinks' {nextToken} -> nextToken) (\s@GetLinks' {} a -> s {nextToken = a} :: GetLinks)

-- | The link type.
getLinks_type :: Lens.Lens' GetLinks (Prelude.Maybe Prelude.Text)
getLinks_type = Lens.lens (\GetLinks' {type'} -> type') (\s@GetLinks' {} a -> s {type' = a} :: GetLinks)

-- | The link provider.
getLinks_provider :: Lens.Lens' GetLinks (Prelude.Maybe Prelude.Text)
getLinks_provider = Lens.lens (\GetLinks' {provider} -> provider) (\s@GetLinks' {} a -> s {provider = a} :: GetLinks)

-- | The ID of the site.
getLinks_siteId :: Lens.Lens' GetLinks (Prelude.Maybe Prelude.Text)
getLinks_siteId = Lens.lens (\GetLinks' {siteId} -> siteId) (\s@GetLinks' {} a -> s {siteId = a} :: GetLinks)

-- | The maximum number of results to return.
getLinks_maxResults :: Lens.Lens' GetLinks (Prelude.Maybe Prelude.Natural)
getLinks_maxResults = Lens.lens (\GetLinks' {maxResults} -> maxResults) (\s@GetLinks' {} a -> s {maxResults = a} :: GetLinks)

-- | The ID of the global network.
getLinks_globalNetworkId :: Lens.Lens' GetLinks Prelude.Text
getLinks_globalNetworkId = Lens.lens (\GetLinks' {globalNetworkId} -> globalNetworkId) (\s@GetLinks' {} a -> s {globalNetworkId = a} :: GetLinks)

instance Core.AWSPager GetLinks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getLinksResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getLinksResponse_links Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getLinks_nextToken
          Lens..~ rs
          Lens.^? getLinksResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetLinks where
  type AWSResponse GetLinks = GetLinksResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLinksResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Links" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetLinks where
  hashWithSalt _salt GetLinks' {..} =
    _salt `Prelude.hashWithSalt` linkIds
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` provider
      `Prelude.hashWithSalt` siteId
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` globalNetworkId

instance Prelude.NFData GetLinks where
  rnf GetLinks' {..} =
    Prelude.rnf linkIds
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf provider
      `Prelude.seq` Prelude.rnf siteId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf globalNetworkId

instance Core.ToHeaders GetLinks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetLinks where
  toPath GetLinks' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/links"
      ]

instance Core.ToQuery GetLinks where
  toQuery GetLinks' {..} =
    Prelude.mconcat
      [ "linkIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> linkIds),
        "nextToken" Core.=: nextToken,
        "type" Core.=: type',
        "provider" Core.=: provider,
        "siteId" Core.=: siteId,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetLinksResponse' smart constructor.
data GetLinksResponse = GetLinksResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The links.
    links :: Prelude.Maybe [Link],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLinksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getLinksResponse_nextToken' - The token for the next page of results.
--
-- 'links', 'getLinksResponse_links' - The links.
--
-- 'httpStatus', 'getLinksResponse_httpStatus' - The response's http status code.
newGetLinksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLinksResponse
newGetLinksResponse pHttpStatus_ =
  GetLinksResponse'
    { nextToken = Prelude.Nothing,
      links = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
getLinksResponse_nextToken :: Lens.Lens' GetLinksResponse (Prelude.Maybe Prelude.Text)
getLinksResponse_nextToken = Lens.lens (\GetLinksResponse' {nextToken} -> nextToken) (\s@GetLinksResponse' {} a -> s {nextToken = a} :: GetLinksResponse)

-- | The links.
getLinksResponse_links :: Lens.Lens' GetLinksResponse (Prelude.Maybe [Link])
getLinksResponse_links = Lens.lens (\GetLinksResponse' {links} -> links) (\s@GetLinksResponse' {} a -> s {links = a} :: GetLinksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getLinksResponse_httpStatus :: Lens.Lens' GetLinksResponse Prelude.Int
getLinksResponse_httpStatus = Lens.lens (\GetLinksResponse' {httpStatus} -> httpStatus) (\s@GetLinksResponse' {} a -> s {httpStatus = a} :: GetLinksResponse)

instance Prelude.NFData GetLinksResponse where
  rnf GetLinksResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf links
      `Prelude.seq` Prelude.rnf httpStatus

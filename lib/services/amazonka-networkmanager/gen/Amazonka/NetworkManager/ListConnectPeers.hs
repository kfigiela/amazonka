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
-- Module      : Amazonka.NetworkManager.ListConnectPeers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of core network Connect peers.
--
-- This operation returns paginated results.
module Amazonka.NetworkManager.ListConnectPeers
  ( -- * Creating a Request
    ListConnectPeers (..),
    newListConnectPeers,

    -- * Request Lenses
    listConnectPeers_coreNetworkId,
    listConnectPeers_nextToken,
    listConnectPeers_connectAttachmentId,
    listConnectPeers_maxResults,

    -- * Destructuring the Response
    ListConnectPeersResponse (..),
    newListConnectPeersResponse,

    -- * Response Lenses
    listConnectPeersResponse_nextToken,
    listConnectPeersResponse_connectPeers,
    listConnectPeersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListConnectPeers' smart constructor.
data ListConnectPeers = ListConnectPeers'
  { -- | The ID of a core network.
    coreNetworkId :: Prelude.Maybe Prelude.Text,
    -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the attachment.
    connectAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnectPeers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'coreNetworkId', 'listConnectPeers_coreNetworkId' - The ID of a core network.
--
-- 'nextToken', 'listConnectPeers_nextToken' - The token for the next page of results.
--
-- 'connectAttachmentId', 'listConnectPeers_connectAttachmentId' - The ID of the attachment.
--
-- 'maxResults', 'listConnectPeers_maxResults' - The maximum number of results to return.
newListConnectPeers ::
  ListConnectPeers
newListConnectPeers =
  ListConnectPeers'
    { coreNetworkId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      connectAttachmentId = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The ID of a core network.
listConnectPeers_coreNetworkId :: Lens.Lens' ListConnectPeers (Prelude.Maybe Prelude.Text)
listConnectPeers_coreNetworkId = Lens.lens (\ListConnectPeers' {coreNetworkId} -> coreNetworkId) (\s@ListConnectPeers' {} a -> s {coreNetworkId = a} :: ListConnectPeers)

-- | The token for the next page of results.
listConnectPeers_nextToken :: Lens.Lens' ListConnectPeers (Prelude.Maybe Prelude.Text)
listConnectPeers_nextToken = Lens.lens (\ListConnectPeers' {nextToken} -> nextToken) (\s@ListConnectPeers' {} a -> s {nextToken = a} :: ListConnectPeers)

-- | The ID of the attachment.
listConnectPeers_connectAttachmentId :: Lens.Lens' ListConnectPeers (Prelude.Maybe Prelude.Text)
listConnectPeers_connectAttachmentId = Lens.lens (\ListConnectPeers' {connectAttachmentId} -> connectAttachmentId) (\s@ListConnectPeers' {} a -> s {connectAttachmentId = a} :: ListConnectPeers)

-- | The maximum number of results to return.
listConnectPeers_maxResults :: Lens.Lens' ListConnectPeers (Prelude.Maybe Prelude.Natural)
listConnectPeers_maxResults = Lens.lens (\ListConnectPeers' {maxResults} -> maxResults) (\s@ListConnectPeers' {} a -> s {maxResults = a} :: ListConnectPeers)

instance Core.AWSPager ListConnectPeers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listConnectPeersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listConnectPeersResponse_connectPeers
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listConnectPeers_nextToken
          Lens..~ rs
          Lens.^? listConnectPeersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListConnectPeers where
  type
    AWSResponse ListConnectPeers =
      ListConnectPeersResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListConnectPeersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ConnectPeers" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListConnectPeers where
  hashWithSalt _salt ListConnectPeers' {..} =
    _salt `Prelude.hashWithSalt` coreNetworkId
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` connectAttachmentId
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListConnectPeers where
  rnf ListConnectPeers' {..} =
    Prelude.rnf coreNetworkId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf connectAttachmentId
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListConnectPeers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListConnectPeers where
  toPath = Prelude.const "/connect-peers"

instance Core.ToQuery ListConnectPeers where
  toQuery ListConnectPeers' {..} =
    Prelude.mconcat
      [ "coreNetworkId" Core.=: coreNetworkId,
        "nextToken" Core.=: nextToken,
        "connectAttachmentId" Core.=: connectAttachmentId,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListConnectPeersResponse' smart constructor.
data ListConnectPeersResponse = ListConnectPeersResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Describes the Connect peers.
    connectPeers :: Prelude.Maybe [ConnectPeerSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnectPeersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnectPeersResponse_nextToken' - The token for the next page of results.
--
-- 'connectPeers', 'listConnectPeersResponse_connectPeers' - Describes the Connect peers.
--
-- 'httpStatus', 'listConnectPeersResponse_httpStatus' - The response's http status code.
newListConnectPeersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListConnectPeersResponse
newListConnectPeersResponse pHttpStatus_ =
  ListConnectPeersResponse'
    { nextToken =
        Prelude.Nothing,
      connectPeers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
listConnectPeersResponse_nextToken :: Lens.Lens' ListConnectPeersResponse (Prelude.Maybe Prelude.Text)
listConnectPeersResponse_nextToken = Lens.lens (\ListConnectPeersResponse' {nextToken} -> nextToken) (\s@ListConnectPeersResponse' {} a -> s {nextToken = a} :: ListConnectPeersResponse)

-- | Describes the Connect peers.
listConnectPeersResponse_connectPeers :: Lens.Lens' ListConnectPeersResponse (Prelude.Maybe [ConnectPeerSummary])
listConnectPeersResponse_connectPeers = Lens.lens (\ListConnectPeersResponse' {connectPeers} -> connectPeers) (\s@ListConnectPeersResponse' {} a -> s {connectPeers = a} :: ListConnectPeersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listConnectPeersResponse_httpStatus :: Lens.Lens' ListConnectPeersResponse Prelude.Int
listConnectPeersResponse_httpStatus = Lens.lens (\ListConnectPeersResponse' {httpStatus} -> httpStatus) (\s@ListConnectPeersResponse' {} a -> s {httpStatus = a} :: ListConnectPeersResponse)

instance Prelude.NFData ListConnectPeersResponse where
  rnf ListConnectPeersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf connectPeers
      `Prelude.seq` Prelude.rnf httpStatus

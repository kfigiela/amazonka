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
-- Module      : Amazonka.AppRunner.ListConnections
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of App Runner connections that are associated with your
-- Amazon Web Services account.
module Amazonka.AppRunner.ListConnections
  ( -- * Creating a Request
    ListConnections (..),
    newListConnections,

    -- * Request Lenses
    listConnections_nextToken,
    listConnections_maxResults,
    listConnections_connectionName,

    -- * Destructuring the Response
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- * Response Lenses
    listConnectionsResponse_nextToken,
    listConnectionsResponse_httpStatus,
    listConnectionsResponse_connectionSummaryList,
  )
where

import Amazonka.AppRunner.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListConnections' smart constructor.
data ListConnections = ListConnections'
  { -- | A token from a previous result page. Used for a paginated request. The
    -- request retrieves the next result page. All other parameter values must
    -- be identical to the ones specified in the initial request.
    --
    -- If you don\'t specify @NextToken@, the request retrieves the first
    -- result page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to include in each response (result page).
    -- Used for a paginated request.
    --
    -- If you don\'t specify @MaxResults@, the request retrieves all available
    -- results in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | If specified, only this connection is returned. If not specified, the
    -- result isn\'t filtered by name.
    connectionName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnections_nextToken' - A token from a previous result page. Used for a paginated request. The
-- request retrieves the next result page. All other parameter values must
-- be identical to the ones specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
--
-- 'maxResults', 'listConnections_maxResults' - The maximum number of results to include in each response (result page).
-- Used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
--
-- 'connectionName', 'listConnections_connectionName' - If specified, only this connection is returned. If not specified, the
-- result isn\'t filtered by name.
newListConnections ::
  ListConnections
newListConnections =
  ListConnections'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      connectionName = Prelude.Nothing
    }

-- | A token from a previous result page. Used for a paginated request. The
-- request retrieves the next result page. All other parameter values must
-- be identical to the ones specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
listConnections_nextToken :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Text)
listConnections_nextToken = Lens.lens (\ListConnections' {nextToken} -> nextToken) (\s@ListConnections' {} a -> s {nextToken = a} :: ListConnections)

-- | The maximum number of results to include in each response (result page).
-- Used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
listConnections_maxResults :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Natural)
listConnections_maxResults = Lens.lens (\ListConnections' {maxResults} -> maxResults) (\s@ListConnections' {} a -> s {maxResults = a} :: ListConnections)

-- | If specified, only this connection is returned. If not specified, the
-- result isn\'t filtered by name.
listConnections_connectionName :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Text)
listConnections_connectionName = Lens.lens (\ListConnections' {connectionName} -> connectionName) (\s@ListConnections' {} a -> s {connectionName = a} :: ListConnections)

instance Core.AWSRequest ListConnections where
  type
    AWSResponse ListConnections =
      ListConnectionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListConnectionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "ConnectionSummaryList"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListConnections where
  hashWithSalt _salt ListConnections' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` connectionName

instance Prelude.NFData ListConnections where
  rnf ListConnections' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf connectionName

instance Core.ToHeaders ListConnections where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AppRunner.ListConnections" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListConnections where
  toJSON ListConnections' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("ConnectionName" Core..=)
              Prelude.<$> connectionName
          ]
      )

instance Core.ToPath ListConnections where
  toPath = Prelude.const "/"

instance Core.ToQuery ListConnections where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse'
  { -- | The token that you can pass in a subsequent request to get the next
    -- result page. Returned in a paginated request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of summary information records for connections. In a paginated
    -- request, the request returns up to @MaxResults@ records for each call.
    connectionSummaryList :: [ConnectionSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnectionsResponse_nextToken' - The token that you can pass in a subsequent request to get the next
-- result page. Returned in a paginated request.
--
-- 'httpStatus', 'listConnectionsResponse_httpStatus' - The response's http status code.
--
-- 'connectionSummaryList', 'listConnectionsResponse_connectionSummaryList' - A list of summary information records for connections. In a paginated
-- request, the request returns up to @MaxResults@ records for each call.
newListConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListConnectionsResponse
newListConnectionsResponse pHttpStatus_ =
  ListConnectionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      connectionSummaryList = Prelude.mempty
    }

-- | The token that you can pass in a subsequent request to get the next
-- result page. Returned in a paginated request.
listConnectionsResponse_nextToken :: Lens.Lens' ListConnectionsResponse (Prelude.Maybe Prelude.Text)
listConnectionsResponse_nextToken = Lens.lens (\ListConnectionsResponse' {nextToken} -> nextToken) (\s@ListConnectionsResponse' {} a -> s {nextToken = a} :: ListConnectionsResponse)

-- | The response's http status code.
listConnectionsResponse_httpStatus :: Lens.Lens' ListConnectionsResponse Prelude.Int
listConnectionsResponse_httpStatus = Lens.lens (\ListConnectionsResponse' {httpStatus} -> httpStatus) (\s@ListConnectionsResponse' {} a -> s {httpStatus = a} :: ListConnectionsResponse)

-- | A list of summary information records for connections. In a paginated
-- request, the request returns up to @MaxResults@ records for each call.
listConnectionsResponse_connectionSummaryList :: Lens.Lens' ListConnectionsResponse [ConnectionSummary]
listConnectionsResponse_connectionSummaryList = Lens.lens (\ListConnectionsResponse' {connectionSummaryList} -> connectionSummaryList) (\s@ListConnectionsResponse' {} a -> s {connectionSummaryList = a} :: ListConnectionsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListConnectionsResponse where
  rnf ListConnectionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf connectionSummaryList

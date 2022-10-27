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
-- Module      : Amazonka.GamesParks.ListGames
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a paginated list of games.
--
-- This operation returns paginated results.
module Amazonka.GamesParks.ListGames
  ( -- * Creating a Request
    ListGames (..),
    newListGames,

    -- * Request Lenses
    listGames_nextToken,
    listGames_maxResults,

    -- * Destructuring the Response
    ListGamesResponse (..),
    newListGamesResponse,

    -- * Response Lenses
    listGamesResponse_nextToken,
    listGamesResponse_games,
    listGamesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GamesParks.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListGames' smart constructor.
data ListGames = ListGames'
  { -- | The token that indicates the start of the next sequential page of
    -- results.
    --
    -- Use the token that is returned with a previous call to this operation.
    -- To start at the beginning of the result set, do not specify a value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    --
    -- Use this parameter with NextToken to get results as a set of sequential
    -- pages.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGames' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGames_nextToken' - The token that indicates the start of the next sequential page of
-- results.
--
-- Use the token that is returned with a previous call to this operation.
-- To start at the beginning of the result set, do not specify a value.
--
-- 'maxResults', 'listGames_maxResults' - The maximum number of results to return.
--
-- Use this parameter with NextToken to get results as a set of sequential
-- pages.
newListGames ::
  ListGames
newListGames =
  ListGames'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that indicates the start of the next sequential page of
-- results.
--
-- Use the token that is returned with a previous call to this operation.
-- To start at the beginning of the result set, do not specify a value.
listGames_nextToken :: Lens.Lens' ListGames (Prelude.Maybe Prelude.Text)
listGames_nextToken = Lens.lens (\ListGames' {nextToken} -> nextToken) (\s@ListGames' {} a -> s {nextToken = a} :: ListGames)

-- | The maximum number of results to return.
--
-- Use this parameter with NextToken to get results as a set of sequential
-- pages.
listGames_maxResults :: Lens.Lens' ListGames (Prelude.Maybe Prelude.Natural)
listGames_maxResults = Lens.lens (\ListGames' {maxResults} -> maxResults) (\s@ListGames' {} a -> s {maxResults = a} :: ListGames)

instance Core.AWSPager ListGames where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGamesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listGamesResponse_games Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGames_nextToken
          Lens..~ rs
          Lens.^? listGamesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListGames where
  type AWSResponse ListGames = ListGamesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGamesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Games" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListGames where
  hashWithSalt _salt ListGames' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListGames where
  rnf ListGames' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListGames where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListGames where
  toPath = Prelude.const "/game"

instance Core.ToQuery ListGames where
  toQuery ListGames' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListGamesResponse' smart constructor.
data ListGamesResponse = ListGamesResponse'
  { -- | The token that indicates the start of the next sequential page of
    -- results.
    --
    -- Use this value when making the next call to this operation to continue
    -- where the last one finished.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of games.
    games :: Prelude.Maybe [GameSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGamesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGamesResponse_nextToken' - The token that indicates the start of the next sequential page of
-- results.
--
-- Use this value when making the next call to this operation to continue
-- where the last one finished.
--
-- 'games', 'listGamesResponse_games' - The list of games.
--
-- 'httpStatus', 'listGamesResponse_httpStatus' - The response's http status code.
newListGamesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGamesResponse
newListGamesResponse pHttpStatus_ =
  ListGamesResponse'
    { nextToken = Prelude.Nothing,
      games = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token that indicates the start of the next sequential page of
-- results.
--
-- Use this value when making the next call to this operation to continue
-- where the last one finished.
listGamesResponse_nextToken :: Lens.Lens' ListGamesResponse (Prelude.Maybe Prelude.Text)
listGamesResponse_nextToken = Lens.lens (\ListGamesResponse' {nextToken} -> nextToken) (\s@ListGamesResponse' {} a -> s {nextToken = a} :: ListGamesResponse)

-- | The list of games.
listGamesResponse_games :: Lens.Lens' ListGamesResponse (Prelude.Maybe [GameSummary])
listGamesResponse_games = Lens.lens (\ListGamesResponse' {games} -> games) (\s@ListGamesResponse' {} a -> s {games = a} :: ListGamesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listGamesResponse_httpStatus :: Lens.Lens' ListGamesResponse Prelude.Int
listGamesResponse_httpStatus = Lens.lens (\ListGamesResponse' {httpStatus} -> httpStatus) (\s@ListGamesResponse' {} a -> s {httpStatus = a} :: ListGamesResponse)

instance Prelude.NFData ListGamesResponse where
  rnf ListGamesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf games
      `Prelude.seq` Prelude.rnf httpStatus

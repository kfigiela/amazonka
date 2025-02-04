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
-- Module      : Amazonka.DrS.ListExtensibleSourceServers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of source servers on a staging account that are
-- extensible, which means that: a. The source server is not already
-- extended into this Account. b. The source server on the Account we’re
-- reading from is not an extension of another source server.
--
-- This operation returns paginated results.
module Amazonka.DrS.ListExtensibleSourceServers
  ( -- * Creating a Request
    ListExtensibleSourceServers (..),
    newListExtensibleSourceServers,

    -- * Request Lenses
    listExtensibleSourceServers_nextToken,
    listExtensibleSourceServers_maxResults,
    listExtensibleSourceServers_stagingAccountID,

    -- * Destructuring the Response
    ListExtensibleSourceServersResponse (..),
    newListExtensibleSourceServersResponse,

    -- * Response Lenses
    listExtensibleSourceServersResponse_items,
    listExtensibleSourceServersResponse_nextToken,
    listExtensibleSourceServersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListExtensibleSourceServers' smart constructor.
data ListExtensibleSourceServers = ListExtensibleSourceServers'
  { -- | The token of the next extensible source server to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of extensible source servers to retrieve.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Id of the staging Account to retrieve extensible source servers
    -- from.
    stagingAccountID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExtensibleSourceServers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listExtensibleSourceServers_nextToken' - The token of the next extensible source server to retrieve.
--
-- 'maxResults', 'listExtensibleSourceServers_maxResults' - The maximum number of extensible source servers to retrieve.
--
-- 'stagingAccountID', 'listExtensibleSourceServers_stagingAccountID' - The Id of the staging Account to retrieve extensible source servers
-- from.
newListExtensibleSourceServers ::
  -- | 'stagingAccountID'
  Prelude.Text ->
  ListExtensibleSourceServers
newListExtensibleSourceServers pStagingAccountID_ =
  ListExtensibleSourceServers'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      stagingAccountID = pStagingAccountID_
    }

-- | The token of the next extensible source server to retrieve.
listExtensibleSourceServers_nextToken :: Lens.Lens' ListExtensibleSourceServers (Prelude.Maybe Prelude.Text)
listExtensibleSourceServers_nextToken = Lens.lens (\ListExtensibleSourceServers' {nextToken} -> nextToken) (\s@ListExtensibleSourceServers' {} a -> s {nextToken = a} :: ListExtensibleSourceServers)

-- | The maximum number of extensible source servers to retrieve.
listExtensibleSourceServers_maxResults :: Lens.Lens' ListExtensibleSourceServers (Prelude.Maybe Prelude.Natural)
listExtensibleSourceServers_maxResults = Lens.lens (\ListExtensibleSourceServers' {maxResults} -> maxResults) (\s@ListExtensibleSourceServers' {} a -> s {maxResults = a} :: ListExtensibleSourceServers)

-- | The Id of the staging Account to retrieve extensible source servers
-- from.
listExtensibleSourceServers_stagingAccountID :: Lens.Lens' ListExtensibleSourceServers Prelude.Text
listExtensibleSourceServers_stagingAccountID = Lens.lens (\ListExtensibleSourceServers' {stagingAccountID} -> stagingAccountID) (\s@ListExtensibleSourceServers' {} a -> s {stagingAccountID = a} :: ListExtensibleSourceServers)

instance Core.AWSPager ListExtensibleSourceServers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listExtensibleSourceServersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listExtensibleSourceServersResponse_items
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listExtensibleSourceServers_nextToken
          Lens..~ rs
          Lens.^? listExtensibleSourceServersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListExtensibleSourceServers where
  type
    AWSResponse ListExtensibleSourceServers =
      ListExtensibleSourceServersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExtensibleSourceServersResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListExtensibleSourceServers where
  hashWithSalt _salt ListExtensibleSourceServers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` stagingAccountID

instance Prelude.NFData ListExtensibleSourceServers where
  rnf ListExtensibleSourceServers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf stagingAccountID

instance Core.ToHeaders ListExtensibleSourceServers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListExtensibleSourceServers where
  toJSON ListExtensibleSourceServers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("stagingAccountID" Core..= stagingAccountID)
          ]
      )

instance Core.ToPath ListExtensibleSourceServers where
  toPath = Prelude.const "/ListExtensibleSourceServers"

instance Core.ToQuery ListExtensibleSourceServers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListExtensibleSourceServersResponse' smart constructor.
data ListExtensibleSourceServersResponse = ListExtensibleSourceServersResponse'
  { -- | A list of source servers on a staging Account that are extensible.
    items :: Prelude.Maybe [StagingSourceServer],
    -- | The token of the next extensible source server to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExtensibleSourceServersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listExtensibleSourceServersResponse_items' - A list of source servers on a staging Account that are extensible.
--
-- 'nextToken', 'listExtensibleSourceServersResponse_nextToken' - The token of the next extensible source server to retrieve.
--
-- 'httpStatus', 'listExtensibleSourceServersResponse_httpStatus' - The response's http status code.
newListExtensibleSourceServersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListExtensibleSourceServersResponse
newListExtensibleSourceServersResponse pHttpStatus_ =
  ListExtensibleSourceServersResponse'
    { items =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of source servers on a staging Account that are extensible.
listExtensibleSourceServersResponse_items :: Lens.Lens' ListExtensibleSourceServersResponse (Prelude.Maybe [StagingSourceServer])
listExtensibleSourceServersResponse_items = Lens.lens (\ListExtensibleSourceServersResponse' {items} -> items) (\s@ListExtensibleSourceServersResponse' {} a -> s {items = a} :: ListExtensibleSourceServersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token of the next extensible source server to retrieve.
listExtensibleSourceServersResponse_nextToken :: Lens.Lens' ListExtensibleSourceServersResponse (Prelude.Maybe Prelude.Text)
listExtensibleSourceServersResponse_nextToken = Lens.lens (\ListExtensibleSourceServersResponse' {nextToken} -> nextToken) (\s@ListExtensibleSourceServersResponse' {} a -> s {nextToken = a} :: ListExtensibleSourceServersResponse)

-- | The response's http status code.
listExtensibleSourceServersResponse_httpStatus :: Lens.Lens' ListExtensibleSourceServersResponse Prelude.Int
listExtensibleSourceServersResponse_httpStatus = Lens.lens (\ListExtensibleSourceServersResponse' {httpStatus} -> httpStatus) (\s@ListExtensibleSourceServersResponse' {} a -> s {httpStatus = a} :: ListExtensibleSourceServersResponse)

instance
  Prelude.NFData
    ListExtensibleSourceServersResponse
  where
  rnf ListExtensibleSourceServersResponse' {..} =
    Prelude.rnf items
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

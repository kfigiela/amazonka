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
-- Module      : Amazonka.RedshiftServerLess.ListWorkgroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a list of specified workgroups.
--
-- This operation returns paginated results.
module Amazonka.RedshiftServerLess.ListWorkgroups
  ( -- * Creating a Request
    ListWorkgroups (..),
    newListWorkgroups,

    -- * Request Lenses
    listWorkgroups_nextToken,
    listWorkgroups_maxResults,

    -- * Destructuring the Response
    ListWorkgroupsResponse (..),
    newListWorkgroupsResponse,

    -- * Response Lenses
    listWorkgroupsResponse_nextToken,
    listWorkgroupsResponse_httpStatus,
    listWorkgroupsResponse_workgroups,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftServerLess.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListWorkgroups' smart constructor.
data ListWorkgroups = ListWorkgroups'
  { -- | If your initial ListWorkgroups operation returns a @nextToken@, you can
    -- include the returned @nextToken@ in subsequent ListNamespaces
    -- operations, which returns results in the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An optional parameter that specifies the maximum number of results to
    -- return. You can use @nextToken@ to get the next page of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkgroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkgroups_nextToken' - If your initial ListWorkgroups operation returns a @nextToken@, you can
-- include the returned @nextToken@ in subsequent ListNamespaces
-- operations, which returns results in the next page.
--
-- 'maxResults', 'listWorkgroups_maxResults' - An optional parameter that specifies the maximum number of results to
-- return. You can use @nextToken@ to get the next page of results.
newListWorkgroups ::
  ListWorkgroups
newListWorkgroups =
  ListWorkgroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If your initial ListWorkgroups operation returns a @nextToken@, you can
-- include the returned @nextToken@ in subsequent ListNamespaces
-- operations, which returns results in the next page.
listWorkgroups_nextToken :: Lens.Lens' ListWorkgroups (Prelude.Maybe Prelude.Text)
listWorkgroups_nextToken = Lens.lens (\ListWorkgroups' {nextToken} -> nextToken) (\s@ListWorkgroups' {} a -> s {nextToken = a} :: ListWorkgroups)

-- | An optional parameter that specifies the maximum number of results to
-- return. You can use @nextToken@ to get the next page of results.
listWorkgroups_maxResults :: Lens.Lens' ListWorkgroups (Prelude.Maybe Prelude.Natural)
listWorkgroups_maxResults = Lens.lens (\ListWorkgroups' {maxResults} -> maxResults) (\s@ListWorkgroups' {} a -> s {maxResults = a} :: ListWorkgroups)

instance Core.AWSPager ListWorkgroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listWorkgroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listWorkgroupsResponse_workgroups) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listWorkgroups_nextToken
          Lens..~ rs
          Lens.^? listWorkgroupsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListWorkgroups where
  type
    AWSResponse ListWorkgroups =
      ListWorkgroupsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorkgroupsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "workgroups" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListWorkgroups where
  hashWithSalt _salt ListWorkgroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListWorkgroups where
  rnf ListWorkgroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListWorkgroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RedshiftServerless.ListWorkgroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorkgroups where
  toJSON ListWorkgroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListWorkgroups where
  toPath = Prelude.const "/"

instance Core.ToQuery ListWorkgroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListWorkgroupsResponse' smart constructor.
data ListWorkgroupsResponse = ListWorkgroupsResponse'
  { -- | If @nextToken@ is returned, there are more results available. The value
    -- of @nextToken@ is a unique pagination token for each page. To retrieve
    -- the next page, make the call again using the returned token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The returned array of workgroups.
    workgroups :: [Workgroup]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkgroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkgroupsResponse_nextToken' - If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. To retrieve
-- the next page, make the call again using the returned token.
--
-- 'httpStatus', 'listWorkgroupsResponse_httpStatus' - The response's http status code.
--
-- 'workgroups', 'listWorkgroupsResponse_workgroups' - The returned array of workgroups.
newListWorkgroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorkgroupsResponse
newListWorkgroupsResponse pHttpStatus_ =
  ListWorkgroupsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      workgroups = Prelude.mempty
    }

-- | If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. To retrieve
-- the next page, make the call again using the returned token.
listWorkgroupsResponse_nextToken :: Lens.Lens' ListWorkgroupsResponse (Prelude.Maybe Prelude.Text)
listWorkgroupsResponse_nextToken = Lens.lens (\ListWorkgroupsResponse' {nextToken} -> nextToken) (\s@ListWorkgroupsResponse' {} a -> s {nextToken = a} :: ListWorkgroupsResponse)

-- | The response's http status code.
listWorkgroupsResponse_httpStatus :: Lens.Lens' ListWorkgroupsResponse Prelude.Int
listWorkgroupsResponse_httpStatus = Lens.lens (\ListWorkgroupsResponse' {httpStatus} -> httpStatus) (\s@ListWorkgroupsResponse' {} a -> s {httpStatus = a} :: ListWorkgroupsResponse)

-- | The returned array of workgroups.
listWorkgroupsResponse_workgroups :: Lens.Lens' ListWorkgroupsResponse [Workgroup]
listWorkgroupsResponse_workgroups = Lens.lens (\ListWorkgroupsResponse' {workgroups} -> workgroups) (\s@ListWorkgroupsResponse' {} a -> s {workgroups = a} :: ListWorkgroupsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListWorkgroupsResponse where
  rnf ListWorkgroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf workgroups

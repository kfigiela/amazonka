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
-- Module      : Amazonka.Evidently.ListSegments
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of audience segments that you have created in your
-- account in this Region.
--
-- This operation returns paginated results.
module Amazonka.Evidently.ListSegments
  ( -- * Creating a Request
    ListSegments (..),
    newListSegments,

    -- * Request Lenses
    listSegments_nextToken,
    listSegments_maxResults,

    -- * Destructuring the Response
    ListSegmentsResponse (..),
    newListSegmentsResponse,

    -- * Response Lenses
    listSegmentsResponse_nextToken,
    listSegmentsResponse_segments,
    listSegmentsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Evidently.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSegments' smart constructor.
data ListSegments = ListSegments'
  { -- | The token to use when requesting the next set of results. You received
    -- this token from a previous @ListSegments@ operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to include in the response. If you omit
    -- this, the default of 50 is used.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSegments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSegments_nextToken' - The token to use when requesting the next set of results. You received
-- this token from a previous @ListSegments@ operation.
--
-- 'maxResults', 'listSegments_maxResults' - The maximum number of results to include in the response. If you omit
-- this, the default of 50 is used.
newListSegments ::
  ListSegments
newListSegments =
  ListSegments'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use when requesting the next set of results. You received
-- this token from a previous @ListSegments@ operation.
listSegments_nextToken :: Lens.Lens' ListSegments (Prelude.Maybe Prelude.Text)
listSegments_nextToken = Lens.lens (\ListSegments' {nextToken} -> nextToken) (\s@ListSegments' {} a -> s {nextToken = a} :: ListSegments)

-- | The maximum number of results to include in the response. If you omit
-- this, the default of 50 is used.
listSegments_maxResults :: Lens.Lens' ListSegments (Prelude.Maybe Prelude.Natural)
listSegments_maxResults = Lens.lens (\ListSegments' {maxResults} -> maxResults) (\s@ListSegments' {} a -> s {maxResults = a} :: ListSegments)

instance Core.AWSPager ListSegments where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSegmentsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSegmentsResponse_segments Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSegments_nextToken
          Lens..~ rs
          Lens.^? listSegmentsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListSegments where
  type AWSResponse ListSegments = ListSegmentsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSegmentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "segments" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSegments where
  hashWithSalt _salt ListSegments' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListSegments where
  rnf ListSegments' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListSegments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSegments where
  toPath = Prelude.const "/segments"

instance Core.ToQuery ListSegments where
  toQuery ListSegments' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListSegmentsResponse' smart constructor.
data ListSegmentsResponse = ListSegmentsResponse'
  { -- | The token to use in a subsequent @ListSegments@ operation to return the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of structures that contain information about the segments in
    -- this Region.
    segments :: Prelude.Maybe [Segment],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSegmentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSegmentsResponse_nextToken' - The token to use in a subsequent @ListSegments@ operation to return the
-- next set of results.
--
-- 'segments', 'listSegmentsResponse_segments' - An array of structures that contain information about the segments in
-- this Region.
--
-- 'httpStatus', 'listSegmentsResponse_httpStatus' - The response's http status code.
newListSegmentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSegmentsResponse
newListSegmentsResponse pHttpStatus_ =
  ListSegmentsResponse'
    { nextToken = Prelude.Nothing,
      segments = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use in a subsequent @ListSegments@ operation to return the
-- next set of results.
listSegmentsResponse_nextToken :: Lens.Lens' ListSegmentsResponse (Prelude.Maybe Prelude.Text)
listSegmentsResponse_nextToken = Lens.lens (\ListSegmentsResponse' {nextToken} -> nextToken) (\s@ListSegmentsResponse' {} a -> s {nextToken = a} :: ListSegmentsResponse)

-- | An array of structures that contain information about the segments in
-- this Region.
listSegmentsResponse_segments :: Lens.Lens' ListSegmentsResponse (Prelude.Maybe [Segment])
listSegmentsResponse_segments = Lens.lens (\ListSegmentsResponse' {segments} -> segments) (\s@ListSegmentsResponse' {} a -> s {segments = a} :: ListSegmentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSegmentsResponse_httpStatus :: Lens.Lens' ListSegmentsResponse Prelude.Int
listSegmentsResponse_httpStatus = Lens.lens (\ListSegmentsResponse' {httpStatus} -> httpStatus) (\s@ListSegmentsResponse' {} a -> s {httpStatus = a} :: ListSegmentsResponse)

instance Prelude.NFData ListSegmentsResponse where
  rnf ListSegmentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf segments
      `Prelude.seq` Prelude.rnf httpStatus

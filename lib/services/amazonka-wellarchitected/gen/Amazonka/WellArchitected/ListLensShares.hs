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
-- Module      : Amazonka.WellArchitected.ListLensShares
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the lens shares associated with the lens.
module Amazonka.WellArchitected.ListLensShares
  ( -- * Creating a Request
    ListLensShares (..),
    newListLensShares,

    -- * Request Lenses
    listLensShares_nextToken,
    listLensShares_sharedWithPrefix,
    listLensShares_status,
    listLensShares_maxResults,
    listLensShares_lensAlias,

    -- * Destructuring the Response
    ListLensSharesResponse (..),
    newListLensSharesResponse,

    -- * Response Lenses
    listLensSharesResponse_nextToken,
    listLensSharesResponse_lensShareSummaries,
    listLensSharesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WellArchitected.Types

-- | /See:/ 'newListLensShares' smart constructor.
data ListLensShares = ListLensShares'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID or IAM role with which the lens is
    -- shared.
    sharedWithPrefix :: Prelude.Maybe Prelude.Text,
    status :: Prelude.Maybe ShareStatus,
    -- | The maximum number of results to return for this request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    lensAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLensShares' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLensShares_nextToken' - Undocumented member.
--
-- 'sharedWithPrefix', 'listLensShares_sharedWithPrefix' - The Amazon Web Services account ID or IAM role with which the lens is
-- shared.
--
-- 'status', 'listLensShares_status' - Undocumented member.
--
-- 'maxResults', 'listLensShares_maxResults' - The maximum number of results to return for this request.
--
-- 'lensAlias', 'listLensShares_lensAlias' - Undocumented member.
newListLensShares ::
  -- | 'lensAlias'
  Prelude.Text ->
  ListLensShares
newListLensShares pLensAlias_ =
  ListLensShares'
    { nextToken = Prelude.Nothing,
      sharedWithPrefix = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      lensAlias = pLensAlias_
    }

-- | Undocumented member.
listLensShares_nextToken :: Lens.Lens' ListLensShares (Prelude.Maybe Prelude.Text)
listLensShares_nextToken = Lens.lens (\ListLensShares' {nextToken} -> nextToken) (\s@ListLensShares' {} a -> s {nextToken = a} :: ListLensShares)

-- | The Amazon Web Services account ID or IAM role with which the lens is
-- shared.
listLensShares_sharedWithPrefix :: Lens.Lens' ListLensShares (Prelude.Maybe Prelude.Text)
listLensShares_sharedWithPrefix = Lens.lens (\ListLensShares' {sharedWithPrefix} -> sharedWithPrefix) (\s@ListLensShares' {} a -> s {sharedWithPrefix = a} :: ListLensShares)

-- | Undocumented member.
listLensShares_status :: Lens.Lens' ListLensShares (Prelude.Maybe ShareStatus)
listLensShares_status = Lens.lens (\ListLensShares' {status} -> status) (\s@ListLensShares' {} a -> s {status = a} :: ListLensShares)

-- | The maximum number of results to return for this request.
listLensShares_maxResults :: Lens.Lens' ListLensShares (Prelude.Maybe Prelude.Natural)
listLensShares_maxResults = Lens.lens (\ListLensShares' {maxResults} -> maxResults) (\s@ListLensShares' {} a -> s {maxResults = a} :: ListLensShares)

-- | Undocumented member.
listLensShares_lensAlias :: Lens.Lens' ListLensShares Prelude.Text
listLensShares_lensAlias = Lens.lens (\ListLensShares' {lensAlias} -> lensAlias) (\s@ListLensShares' {} a -> s {lensAlias = a} :: ListLensShares)

instance Core.AWSRequest ListLensShares where
  type
    AWSResponse ListLensShares =
      ListLensSharesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLensSharesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "LensShareSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLensShares where
  hashWithSalt _salt ListLensShares' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sharedWithPrefix
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` lensAlias

instance Prelude.NFData ListLensShares where
  rnf ListLensShares' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf sharedWithPrefix
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf lensAlias

instance Core.ToHeaders ListLensShares where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListLensShares where
  toPath ListLensShares' {..} =
    Prelude.mconcat
      ["/lenses/", Core.toBS lensAlias, "/shares"]

instance Core.ToQuery ListLensShares where
  toQuery ListLensShares' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "SharedWithPrefix" Core.=: sharedWithPrefix,
        "Status" Core.=: status,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListLensSharesResponse' smart constructor.
data ListLensSharesResponse = ListLensSharesResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of lens share summaries.
    lensShareSummaries :: Prelude.Maybe [LensShareSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLensSharesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLensSharesResponse_nextToken' - Undocumented member.
--
-- 'lensShareSummaries', 'listLensSharesResponse_lensShareSummaries' - A list of lens share summaries.
--
-- 'httpStatus', 'listLensSharesResponse_httpStatus' - The response's http status code.
newListLensSharesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLensSharesResponse
newListLensSharesResponse pHttpStatus_ =
  ListLensSharesResponse'
    { nextToken =
        Prelude.Nothing,
      lensShareSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listLensSharesResponse_nextToken :: Lens.Lens' ListLensSharesResponse (Prelude.Maybe Prelude.Text)
listLensSharesResponse_nextToken = Lens.lens (\ListLensSharesResponse' {nextToken} -> nextToken) (\s@ListLensSharesResponse' {} a -> s {nextToken = a} :: ListLensSharesResponse)

-- | A list of lens share summaries.
listLensSharesResponse_lensShareSummaries :: Lens.Lens' ListLensSharesResponse (Prelude.Maybe [LensShareSummary])
listLensSharesResponse_lensShareSummaries = Lens.lens (\ListLensSharesResponse' {lensShareSummaries} -> lensShareSummaries) (\s@ListLensSharesResponse' {} a -> s {lensShareSummaries = a} :: ListLensSharesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLensSharesResponse_httpStatus :: Lens.Lens' ListLensSharesResponse Prelude.Int
listLensSharesResponse_httpStatus = Lens.lens (\ListLensSharesResponse' {httpStatus} -> httpStatus) (\s@ListLensSharesResponse' {} a -> s {httpStatus = a} :: ListLensSharesResponse)

instance Prelude.NFData ListLensSharesResponse where
  rnf ListLensSharesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf lensShareSummaries
      `Prelude.seq` Prelude.rnf httpStatus

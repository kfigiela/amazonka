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
-- Module      : Amazonka.QuickSight.ListDataSets
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the datasets belonging to the current Amazon Web Services
-- account in an Amazon Web Services Region.
--
-- The permissions resource is
-- @arn:aws:quicksight:region:aws-account-id:dataset\/*@.
--
-- This operation returns paginated results.
module Amazonka.QuickSight.ListDataSets
  ( -- * Creating a Request
    ListDataSets (..),
    newListDataSets,

    -- * Request Lenses
    listDataSets_nextToken,
    listDataSets_maxResults,
    listDataSets_awsAccountId,

    -- * Destructuring the Response
    ListDataSetsResponse (..),
    newListDataSetsResponse,

    -- * Response Lenses
    listDataSetsResponse_nextToken,
    listDataSetsResponse_dataSetSummaries,
    listDataSetsResponse_requestId,
    listDataSetsResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListDataSets' smart constructor.
data ListDataSets = ListDataSets'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSets_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'maxResults', 'listDataSets_maxResults' - The maximum number of results to be returned per request.
--
-- 'awsAccountId', 'listDataSets_awsAccountId' - The Amazon Web Services account ID.
newListDataSets ::
  -- | 'awsAccountId'
  Prelude.Text ->
  ListDataSets
newListDataSets pAwsAccountId_ =
  ListDataSets'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      awsAccountId = pAwsAccountId_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listDataSets_nextToken :: Lens.Lens' ListDataSets (Prelude.Maybe Prelude.Text)
listDataSets_nextToken = Lens.lens (\ListDataSets' {nextToken} -> nextToken) (\s@ListDataSets' {} a -> s {nextToken = a} :: ListDataSets)

-- | The maximum number of results to be returned per request.
listDataSets_maxResults :: Lens.Lens' ListDataSets (Prelude.Maybe Prelude.Natural)
listDataSets_maxResults = Lens.lens (\ListDataSets' {maxResults} -> maxResults) (\s@ListDataSets' {} a -> s {maxResults = a} :: ListDataSets)

-- | The Amazon Web Services account ID.
listDataSets_awsAccountId :: Lens.Lens' ListDataSets Prelude.Text
listDataSets_awsAccountId = Lens.lens (\ListDataSets' {awsAccountId} -> awsAccountId) (\s@ListDataSets' {} a -> s {awsAccountId = a} :: ListDataSets)

instance Core.AWSPager ListDataSets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDataSetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDataSetsResponse_dataSetSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDataSets_nextToken
          Lens..~ rs
          Lens.^? listDataSetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListDataSets where
  type AWSResponse ListDataSets = ListDataSetsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDataSetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "DataSetSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDataSets where
  hashWithSalt _salt ListDataSets' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` awsAccountId

instance Prelude.NFData ListDataSets where
  rnf ListDataSets' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf awsAccountId

instance Core.ToHeaders ListDataSets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDataSets where
  toPath ListDataSets' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS awsAccountId, "/data-sets"]

instance Core.ToQuery ListDataSets where
  toQuery ListDataSets' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListDataSetsResponse' smart constructor.
data ListDataSetsResponse = ListDataSetsResponse'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of dataset summaries.
    dataSetSummaries :: Prelude.Maybe [DataSetSummary],
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSetsResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'dataSetSummaries', 'listDataSetsResponse_dataSetSummaries' - The list of dataset summaries.
--
-- 'requestId', 'listDataSetsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'status', 'listDataSetsResponse_status' - The HTTP status of the request.
newListDataSetsResponse ::
  -- | 'status'
  Prelude.Int ->
  ListDataSetsResponse
newListDataSetsResponse pStatus_ =
  ListDataSetsResponse'
    { nextToken = Prelude.Nothing,
      dataSetSummaries = Prelude.Nothing,
      requestId = Prelude.Nothing,
      status = pStatus_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listDataSetsResponse_nextToken :: Lens.Lens' ListDataSetsResponse (Prelude.Maybe Prelude.Text)
listDataSetsResponse_nextToken = Lens.lens (\ListDataSetsResponse' {nextToken} -> nextToken) (\s@ListDataSetsResponse' {} a -> s {nextToken = a} :: ListDataSetsResponse)

-- | The list of dataset summaries.
listDataSetsResponse_dataSetSummaries :: Lens.Lens' ListDataSetsResponse (Prelude.Maybe [DataSetSummary])
listDataSetsResponse_dataSetSummaries = Lens.lens (\ListDataSetsResponse' {dataSetSummaries} -> dataSetSummaries) (\s@ListDataSetsResponse' {} a -> s {dataSetSummaries = a} :: ListDataSetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services request ID for this operation.
listDataSetsResponse_requestId :: Lens.Lens' ListDataSetsResponse (Prelude.Maybe Prelude.Text)
listDataSetsResponse_requestId = Lens.lens (\ListDataSetsResponse' {requestId} -> requestId) (\s@ListDataSetsResponse' {} a -> s {requestId = a} :: ListDataSetsResponse)

-- | The HTTP status of the request.
listDataSetsResponse_status :: Lens.Lens' ListDataSetsResponse Prelude.Int
listDataSetsResponse_status = Lens.lens (\ListDataSetsResponse' {status} -> status) (\s@ListDataSetsResponse' {} a -> s {status = a} :: ListDataSetsResponse)

instance Prelude.NFData ListDataSetsResponse where
  rnf ListDataSetsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf dataSetSummaries
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status

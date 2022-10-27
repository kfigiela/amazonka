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
-- Module      : Amazonka.ServiceQuotas.ListRequestedServiceQuotaChangeHistory
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the quota increase requests for the specified service.
--
-- This operation returns paginated results.
module Amazonka.ServiceQuotas.ListRequestedServiceQuotaChangeHistory
  ( -- * Creating a Request
    ListRequestedServiceQuotaChangeHistory (..),
    newListRequestedServiceQuotaChangeHistory,

    -- * Request Lenses
    listRequestedServiceQuotaChangeHistory_nextToken,
    listRequestedServiceQuotaChangeHistory_serviceCode,
    listRequestedServiceQuotaChangeHistory_status,
    listRequestedServiceQuotaChangeHistory_maxResults,

    -- * Destructuring the Response
    ListRequestedServiceQuotaChangeHistoryResponse (..),
    newListRequestedServiceQuotaChangeHistoryResponse,

    -- * Response Lenses
    listRequestedServiceQuotaChangeHistoryResponse_nextToken,
    listRequestedServiceQuotaChangeHistoryResponse_requestedQuotas,
    listRequestedServiceQuotaChangeHistoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceQuotas.Types

-- | /See:/ 'newListRequestedServiceQuotaChangeHistory' smart constructor.
data ListRequestedServiceQuotaChangeHistory = ListRequestedServiceQuotaChangeHistory'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The service identifier.
    serviceCode :: Prelude.Maybe Prelude.Text,
    -- | The status of the quota increase request.
    status :: Prelude.Maybe RequestStatus,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, if any, make another call with the token returned
    -- from this call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRequestedServiceQuotaChangeHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRequestedServiceQuotaChangeHistory_nextToken' - The token for the next page of results.
--
-- 'serviceCode', 'listRequestedServiceQuotaChangeHistory_serviceCode' - The service identifier.
--
-- 'status', 'listRequestedServiceQuotaChangeHistory_status' - The status of the quota increase request.
--
-- 'maxResults', 'listRequestedServiceQuotaChangeHistory_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, if any, make another call with the token returned
-- from this call.
newListRequestedServiceQuotaChangeHistory ::
  ListRequestedServiceQuotaChangeHistory
newListRequestedServiceQuotaChangeHistory =
  ListRequestedServiceQuotaChangeHistory'
    { nextToken =
        Prelude.Nothing,
      serviceCode = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next page of results.
listRequestedServiceQuotaChangeHistory_nextToken :: Lens.Lens' ListRequestedServiceQuotaChangeHistory (Prelude.Maybe Prelude.Text)
listRequestedServiceQuotaChangeHistory_nextToken = Lens.lens (\ListRequestedServiceQuotaChangeHistory' {nextToken} -> nextToken) (\s@ListRequestedServiceQuotaChangeHistory' {} a -> s {nextToken = a} :: ListRequestedServiceQuotaChangeHistory)

-- | The service identifier.
listRequestedServiceQuotaChangeHistory_serviceCode :: Lens.Lens' ListRequestedServiceQuotaChangeHistory (Prelude.Maybe Prelude.Text)
listRequestedServiceQuotaChangeHistory_serviceCode = Lens.lens (\ListRequestedServiceQuotaChangeHistory' {serviceCode} -> serviceCode) (\s@ListRequestedServiceQuotaChangeHistory' {} a -> s {serviceCode = a} :: ListRequestedServiceQuotaChangeHistory)

-- | The status of the quota increase request.
listRequestedServiceQuotaChangeHistory_status :: Lens.Lens' ListRequestedServiceQuotaChangeHistory (Prelude.Maybe RequestStatus)
listRequestedServiceQuotaChangeHistory_status = Lens.lens (\ListRequestedServiceQuotaChangeHistory' {status} -> status) (\s@ListRequestedServiceQuotaChangeHistory' {} a -> s {status = a} :: ListRequestedServiceQuotaChangeHistory)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, if any, make another call with the token returned
-- from this call.
listRequestedServiceQuotaChangeHistory_maxResults :: Lens.Lens' ListRequestedServiceQuotaChangeHistory (Prelude.Maybe Prelude.Natural)
listRequestedServiceQuotaChangeHistory_maxResults = Lens.lens (\ListRequestedServiceQuotaChangeHistory' {maxResults} -> maxResults) (\s@ListRequestedServiceQuotaChangeHistory' {} a -> s {maxResults = a} :: ListRequestedServiceQuotaChangeHistory)

instance
  Core.AWSPager
    ListRequestedServiceQuotaChangeHistory
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRequestedServiceQuotaChangeHistoryResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRequestedServiceQuotaChangeHistoryResponse_requestedQuotas
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRequestedServiceQuotaChangeHistory_nextToken
          Lens..~ rs
            Lens.^? listRequestedServiceQuotaChangeHistoryResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListRequestedServiceQuotaChangeHistory
  where
  type
    AWSResponse
      ListRequestedServiceQuotaChangeHistory =
      ListRequestedServiceQuotaChangeHistoryResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRequestedServiceQuotaChangeHistoryResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "RequestedQuotas"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListRequestedServiceQuotaChangeHistory
  where
  hashWithSalt
    _salt
    ListRequestedServiceQuotaChangeHistory' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` serviceCode
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    ListRequestedServiceQuotaChangeHistory
  where
  rnf ListRequestedServiceQuotaChangeHistory' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf serviceCode
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    ListRequestedServiceQuotaChangeHistory
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.ListRequestedServiceQuotaChangeHistory" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListRequestedServiceQuotaChangeHistory
  where
  toJSON ListRequestedServiceQuotaChangeHistory' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("ServiceCode" Core..=) Prelude.<$> serviceCode,
            ("Status" Core..=) Prelude.<$> status,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance
  Core.ToPath
    ListRequestedServiceQuotaChangeHistory
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListRequestedServiceQuotaChangeHistory
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListRequestedServiceQuotaChangeHistoryResponse' smart constructor.
data ListRequestedServiceQuotaChangeHistoryResponse = ListRequestedServiceQuotaChangeHistoryResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- null when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the quota increase requests.
    requestedQuotas :: Prelude.Maybe [RequestedServiceQuotaChange],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRequestedServiceQuotaChangeHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRequestedServiceQuotaChangeHistoryResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- null when there are no more results to return.
--
-- 'requestedQuotas', 'listRequestedServiceQuotaChangeHistoryResponse_requestedQuotas' - Information about the quota increase requests.
--
-- 'httpStatus', 'listRequestedServiceQuotaChangeHistoryResponse_httpStatus' - The response's http status code.
newListRequestedServiceQuotaChangeHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRequestedServiceQuotaChangeHistoryResponse
newListRequestedServiceQuotaChangeHistoryResponse
  pHttpStatus_ =
    ListRequestedServiceQuotaChangeHistoryResponse'
      { nextToken =
          Prelude.Nothing,
        requestedQuotas =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to use to retrieve the next page of results. This value is
-- null when there are no more results to return.
listRequestedServiceQuotaChangeHistoryResponse_nextToken :: Lens.Lens' ListRequestedServiceQuotaChangeHistoryResponse (Prelude.Maybe Prelude.Text)
listRequestedServiceQuotaChangeHistoryResponse_nextToken = Lens.lens (\ListRequestedServiceQuotaChangeHistoryResponse' {nextToken} -> nextToken) (\s@ListRequestedServiceQuotaChangeHistoryResponse' {} a -> s {nextToken = a} :: ListRequestedServiceQuotaChangeHistoryResponse)

-- | Information about the quota increase requests.
listRequestedServiceQuotaChangeHistoryResponse_requestedQuotas :: Lens.Lens' ListRequestedServiceQuotaChangeHistoryResponse (Prelude.Maybe [RequestedServiceQuotaChange])
listRequestedServiceQuotaChangeHistoryResponse_requestedQuotas = Lens.lens (\ListRequestedServiceQuotaChangeHistoryResponse' {requestedQuotas} -> requestedQuotas) (\s@ListRequestedServiceQuotaChangeHistoryResponse' {} a -> s {requestedQuotas = a} :: ListRequestedServiceQuotaChangeHistoryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listRequestedServiceQuotaChangeHistoryResponse_httpStatus :: Lens.Lens' ListRequestedServiceQuotaChangeHistoryResponse Prelude.Int
listRequestedServiceQuotaChangeHistoryResponse_httpStatus = Lens.lens (\ListRequestedServiceQuotaChangeHistoryResponse' {httpStatus} -> httpStatus) (\s@ListRequestedServiceQuotaChangeHistoryResponse' {} a -> s {httpStatus = a} :: ListRequestedServiceQuotaChangeHistoryResponse)

instance
  Prelude.NFData
    ListRequestedServiceQuotaChangeHistoryResponse
  where
  rnf
    ListRequestedServiceQuotaChangeHistoryResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf requestedQuotas
        `Prelude.seq` Prelude.rnf httpStatus

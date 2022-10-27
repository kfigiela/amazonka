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
-- Module      : Amazonka.Support.DescribeCommunications
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns communications and attachments for one or more support cases.
-- Use the @afterTime@ and @beforeTime@ parameters to filter by date. You
-- can use the @caseId@ parameter to restrict the results to a specific
-- case.
--
-- Case data is available for 12 months after creation. If a case was
-- created more than 12 months ago, a request for data might cause an
-- error.
--
-- You can use the @maxResults@ and @nextToken@ parameters to control the
-- pagination of the results. Set @maxResults@ to the number of cases that
-- you want to display on each page, and use @nextToken@ to specify the
-- resumption of pagination.
--
-- -   You must have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan to use the Amazon Web Services Support API.
--
-- -   If you call the Amazon Web Services Support API from an account that
--     does not have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan, the @SubscriptionRequiredException@ error message appears. For
--     information about changing your support plan, see
--     <http://aws.amazon.com/premiumsupport/ Amazon Web Services Support>.
--
-- This operation returns paginated results.
module Amazonka.Support.DescribeCommunications
  ( -- * Creating a Request
    DescribeCommunications (..),
    newDescribeCommunications,

    -- * Request Lenses
    describeCommunications_nextToken,
    describeCommunications_afterTime,
    describeCommunications_maxResults,
    describeCommunications_beforeTime,
    describeCommunications_caseId,

    -- * Destructuring the Response
    DescribeCommunicationsResponse (..),
    newDescribeCommunicationsResponse,

    -- * Response Lenses
    describeCommunicationsResponse_nextToken,
    describeCommunicationsResponse_communications,
    describeCommunicationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Support.Types

-- | /See:/ 'newDescribeCommunications' smart constructor.
data DescribeCommunications = DescribeCommunications'
  { -- | A resumption point for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The start date for a filtered date search on support case
    -- communications. Case communications are available for 12 months after
    -- creation.
    afterTime :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return before paginating.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The end date for a filtered date search on support case communications.
    -- Case communications are available for 12 months after creation.
    beforeTime :: Prelude.Maybe Prelude.Text,
    -- | The support case ID requested or returned in the call. The case ID is an
    -- alphanumeric string formatted as shown in this example:
    -- case-/12345678910-2013-c4c1d2bf33c5cf47/
    caseId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCommunications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeCommunications_nextToken' - A resumption point for pagination.
--
-- 'afterTime', 'describeCommunications_afterTime' - The start date for a filtered date search on support case
-- communications. Case communications are available for 12 months after
-- creation.
--
-- 'maxResults', 'describeCommunications_maxResults' - The maximum number of results to return before paginating.
--
-- 'beforeTime', 'describeCommunications_beforeTime' - The end date for a filtered date search on support case communications.
-- Case communications are available for 12 months after creation.
--
-- 'caseId', 'describeCommunications_caseId' - The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string formatted as shown in this example:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
newDescribeCommunications ::
  -- | 'caseId'
  Prelude.Text ->
  DescribeCommunications
newDescribeCommunications pCaseId_ =
  DescribeCommunications'
    { nextToken =
        Prelude.Nothing,
      afterTime = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      beforeTime = Prelude.Nothing,
      caseId = pCaseId_
    }

-- | A resumption point for pagination.
describeCommunications_nextToken :: Lens.Lens' DescribeCommunications (Prelude.Maybe Prelude.Text)
describeCommunications_nextToken = Lens.lens (\DescribeCommunications' {nextToken} -> nextToken) (\s@DescribeCommunications' {} a -> s {nextToken = a} :: DescribeCommunications)

-- | The start date for a filtered date search on support case
-- communications. Case communications are available for 12 months after
-- creation.
describeCommunications_afterTime :: Lens.Lens' DescribeCommunications (Prelude.Maybe Prelude.Text)
describeCommunications_afterTime = Lens.lens (\DescribeCommunications' {afterTime} -> afterTime) (\s@DescribeCommunications' {} a -> s {afterTime = a} :: DescribeCommunications)

-- | The maximum number of results to return before paginating.
describeCommunications_maxResults :: Lens.Lens' DescribeCommunications (Prelude.Maybe Prelude.Natural)
describeCommunications_maxResults = Lens.lens (\DescribeCommunications' {maxResults} -> maxResults) (\s@DescribeCommunications' {} a -> s {maxResults = a} :: DescribeCommunications)

-- | The end date for a filtered date search on support case communications.
-- Case communications are available for 12 months after creation.
describeCommunications_beforeTime :: Lens.Lens' DescribeCommunications (Prelude.Maybe Prelude.Text)
describeCommunications_beforeTime = Lens.lens (\DescribeCommunications' {beforeTime} -> beforeTime) (\s@DescribeCommunications' {} a -> s {beforeTime = a} :: DescribeCommunications)

-- | The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string formatted as shown in this example:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
describeCommunications_caseId :: Lens.Lens' DescribeCommunications Prelude.Text
describeCommunications_caseId = Lens.lens (\DescribeCommunications' {caseId} -> caseId) (\s@DescribeCommunications' {} a -> s {caseId = a} :: DescribeCommunications)

instance Core.AWSPager DescribeCommunications where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeCommunicationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeCommunicationsResponse_communications
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeCommunications_nextToken
          Lens..~ rs
          Lens.^? describeCommunicationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeCommunications where
  type
    AWSResponse DescribeCommunications =
      DescribeCommunicationsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCommunicationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "communications" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCommunications where
  hashWithSalt _salt DescribeCommunications' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` afterTime
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` beforeTime
      `Prelude.hashWithSalt` caseId

instance Prelude.NFData DescribeCommunications where
  rnf DescribeCommunications' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf afterTime
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf beforeTime
      `Prelude.seq` Prelude.rnf caseId

instance Core.ToHeaders DescribeCommunications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSupport_20130415.DescribeCommunications" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeCommunications where
  toJSON DescribeCommunications' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("afterTime" Core..=) Prelude.<$> afterTime,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("beforeTime" Core..=) Prelude.<$> beforeTime,
            Prelude.Just ("caseId" Core..= caseId)
          ]
      )

instance Core.ToPath DescribeCommunications where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCommunications where
  toQuery = Prelude.const Prelude.mempty

-- | The communications returned by the DescribeCommunications operation.
--
-- /See:/ 'newDescribeCommunicationsResponse' smart constructor.
data DescribeCommunicationsResponse = DescribeCommunicationsResponse'
  { -- | A resumption point for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The communications for the case.
    communications :: Prelude.Maybe [Communication],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCommunicationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeCommunicationsResponse_nextToken' - A resumption point for pagination.
--
-- 'communications', 'describeCommunicationsResponse_communications' - The communications for the case.
--
-- 'httpStatus', 'describeCommunicationsResponse_httpStatus' - The response's http status code.
newDescribeCommunicationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCommunicationsResponse
newDescribeCommunicationsResponse pHttpStatus_ =
  DescribeCommunicationsResponse'
    { nextToken =
        Prelude.Nothing,
      communications = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A resumption point for pagination.
describeCommunicationsResponse_nextToken :: Lens.Lens' DescribeCommunicationsResponse (Prelude.Maybe Prelude.Text)
describeCommunicationsResponse_nextToken = Lens.lens (\DescribeCommunicationsResponse' {nextToken} -> nextToken) (\s@DescribeCommunicationsResponse' {} a -> s {nextToken = a} :: DescribeCommunicationsResponse)

-- | The communications for the case.
describeCommunicationsResponse_communications :: Lens.Lens' DescribeCommunicationsResponse (Prelude.Maybe [Communication])
describeCommunicationsResponse_communications = Lens.lens (\DescribeCommunicationsResponse' {communications} -> communications) (\s@DescribeCommunicationsResponse' {} a -> s {communications = a} :: DescribeCommunicationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeCommunicationsResponse_httpStatus :: Lens.Lens' DescribeCommunicationsResponse Prelude.Int
describeCommunicationsResponse_httpStatus = Lens.lens (\DescribeCommunicationsResponse' {httpStatus} -> httpStatus) (\s@DescribeCommunicationsResponse' {} a -> s {httpStatus = a} :: DescribeCommunicationsResponse)

instance
  Prelude.NFData
    DescribeCommunicationsResponse
  where
  rnf DescribeCommunicationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf communications
      `Prelude.seq` Prelude.rnf httpStatus

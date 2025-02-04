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
-- Module      : Amazonka.PinpointSmsVoiceV2.DescribeSenderIds
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified SenderIds or all SenderIds associated with your
-- Amazon Web Services account.
--
-- If you specify SenderIds, the output includes information for only the
-- specified SenderIds. If you specify filters, the output includes
-- information for only those SenderIds that meet the filter criteria. If
-- you don\'t specify SenderIds or filters, the output includes information
-- for all SenderIds.
--
-- f you specify a sender ID that isn\'t valid, an Error is returned.
--
-- This operation returns paginated results.
module Amazonka.PinpointSmsVoiceV2.DescribeSenderIds
  ( -- * Creating a Request
    DescribeSenderIds (..),
    newDescribeSenderIds,

    -- * Request Lenses
    describeSenderIds_nextToken,
    describeSenderIds_filters,
    describeSenderIds_senderIds,
    describeSenderIds_maxResults,

    -- * Destructuring the Response
    DescribeSenderIdsResponse (..),
    newDescribeSenderIdsResponse,

    -- * Response Lenses
    describeSenderIdsResponse_nextToken,
    describeSenderIdsResponse_senderIds,
    describeSenderIdsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.PinpointSmsVoiceV2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeSenderIds' smart constructor.
data DescribeSenderIds = DescribeSenderIds'
  { -- | The token to be used for the next set of paginated results. You don\'t
    -- need to supply a value for this field in the initial request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of SenderIdFilter objects to filter the results.
    filters :: Prelude.Maybe [SenderIdFilter],
    -- | An array of SenderIdAndCountry objects to search for.
    senderIds :: Prelude.Maybe [SenderIdAndCountry],
    -- | The maximum number of results to return per each request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSenderIds' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSenderIds_nextToken' - The token to be used for the next set of paginated results. You don\'t
-- need to supply a value for this field in the initial request.
--
-- 'filters', 'describeSenderIds_filters' - An array of SenderIdFilter objects to filter the results.
--
-- 'senderIds', 'describeSenderIds_senderIds' - An array of SenderIdAndCountry objects to search for.
--
-- 'maxResults', 'describeSenderIds_maxResults' - The maximum number of results to return per each request.
newDescribeSenderIds ::
  DescribeSenderIds
newDescribeSenderIds =
  DescribeSenderIds'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      senderIds = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to be used for the next set of paginated results. You don\'t
-- need to supply a value for this field in the initial request.
describeSenderIds_nextToken :: Lens.Lens' DescribeSenderIds (Prelude.Maybe Prelude.Text)
describeSenderIds_nextToken = Lens.lens (\DescribeSenderIds' {nextToken} -> nextToken) (\s@DescribeSenderIds' {} a -> s {nextToken = a} :: DescribeSenderIds)

-- | An array of SenderIdFilter objects to filter the results.
describeSenderIds_filters :: Lens.Lens' DescribeSenderIds (Prelude.Maybe [SenderIdFilter])
describeSenderIds_filters = Lens.lens (\DescribeSenderIds' {filters} -> filters) (\s@DescribeSenderIds' {} a -> s {filters = a} :: DescribeSenderIds) Prelude.. Lens.mapping Lens.coerced

-- | An array of SenderIdAndCountry objects to search for.
describeSenderIds_senderIds :: Lens.Lens' DescribeSenderIds (Prelude.Maybe [SenderIdAndCountry])
describeSenderIds_senderIds = Lens.lens (\DescribeSenderIds' {senderIds} -> senderIds) (\s@DescribeSenderIds' {} a -> s {senderIds = a} :: DescribeSenderIds) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return per each request.
describeSenderIds_maxResults :: Lens.Lens' DescribeSenderIds (Prelude.Maybe Prelude.Natural)
describeSenderIds_maxResults = Lens.lens (\DescribeSenderIds' {maxResults} -> maxResults) (\s@DescribeSenderIds' {} a -> s {maxResults = a} :: DescribeSenderIds)

instance Core.AWSPager DescribeSenderIds where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeSenderIdsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeSenderIdsResponse_senderIds
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeSenderIds_nextToken
          Lens..~ rs
          Lens.^? describeSenderIdsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeSenderIds where
  type
    AWSResponse DescribeSenderIds =
      DescribeSenderIdsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSenderIdsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "SenderIds" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSenderIds where
  hashWithSalt _salt DescribeSenderIds' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` senderIds
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeSenderIds where
  rnf DescribeSenderIds' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf senderIds
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeSenderIds where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PinpointSMSVoiceV2.DescribeSenderIds" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSenderIds where
  toJSON DescribeSenderIds' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("SenderIds" Core..=) Prelude.<$> senderIds,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeSenderIds where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSenderIds where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSenderIdsResponse' smart constructor.
data DescribeSenderIdsResponse = DescribeSenderIdsResponse'
  { -- | The token to be used for the next set of paginated results. If this
    -- field is empty then there are no more results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of SernderIdInformation objects that contain the details for
    -- the requested SenderIds.
    senderIds :: Prelude.Maybe [SenderIdInformation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSenderIdsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSenderIdsResponse_nextToken' - The token to be used for the next set of paginated results. If this
-- field is empty then there are no more results.
--
-- 'senderIds', 'describeSenderIdsResponse_senderIds' - An array of SernderIdInformation objects that contain the details for
-- the requested SenderIds.
--
-- 'httpStatus', 'describeSenderIdsResponse_httpStatus' - The response's http status code.
newDescribeSenderIdsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSenderIdsResponse
newDescribeSenderIdsResponse pHttpStatus_ =
  DescribeSenderIdsResponse'
    { nextToken =
        Prelude.Nothing,
      senderIds = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to be used for the next set of paginated results. If this
-- field is empty then there are no more results.
describeSenderIdsResponse_nextToken :: Lens.Lens' DescribeSenderIdsResponse (Prelude.Maybe Prelude.Text)
describeSenderIdsResponse_nextToken = Lens.lens (\DescribeSenderIdsResponse' {nextToken} -> nextToken) (\s@DescribeSenderIdsResponse' {} a -> s {nextToken = a} :: DescribeSenderIdsResponse)

-- | An array of SernderIdInformation objects that contain the details for
-- the requested SenderIds.
describeSenderIdsResponse_senderIds :: Lens.Lens' DescribeSenderIdsResponse (Prelude.Maybe [SenderIdInformation])
describeSenderIdsResponse_senderIds = Lens.lens (\DescribeSenderIdsResponse' {senderIds} -> senderIds) (\s@DescribeSenderIdsResponse' {} a -> s {senderIds = a} :: DescribeSenderIdsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeSenderIdsResponse_httpStatus :: Lens.Lens' DescribeSenderIdsResponse Prelude.Int
describeSenderIdsResponse_httpStatus = Lens.lens (\DescribeSenderIdsResponse' {httpStatus} -> httpStatus) (\s@DescribeSenderIdsResponse' {} a -> s {httpStatus = a} :: DescribeSenderIdsResponse)

instance Prelude.NFData DescribeSenderIdsResponse where
  rnf DescribeSenderIdsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf senderIds
      `Prelude.seq` Prelude.rnf httpStatus

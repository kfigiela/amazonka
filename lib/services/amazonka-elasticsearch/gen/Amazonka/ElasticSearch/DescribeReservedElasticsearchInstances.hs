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
-- Module      : Amazonka.ElasticSearch.DescribeReservedElasticsearchInstances
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about reserved Elasticsearch instances for this
-- account.
--
-- This operation returns paginated results.
module Amazonka.ElasticSearch.DescribeReservedElasticsearchInstances
  ( -- * Creating a Request
    DescribeReservedElasticsearchInstances (..),
    newDescribeReservedElasticsearchInstances,

    -- * Request Lenses
    describeReservedElasticsearchInstances_reservedElasticsearchInstanceId,
    describeReservedElasticsearchInstances_nextToken,
    describeReservedElasticsearchInstances_maxResults,

    -- * Destructuring the Response
    DescribeReservedElasticsearchInstancesResponse (..),
    newDescribeReservedElasticsearchInstancesResponse,

    -- * Response Lenses
    describeReservedElasticsearchInstancesResponse_nextToken,
    describeReservedElasticsearchInstancesResponse_reservedElasticsearchInstances,
    describeReservedElasticsearchInstancesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElasticSearch.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for parameters to @DescribeReservedElasticsearchInstances@
--
-- /See:/ 'newDescribeReservedElasticsearchInstances' smart constructor.
data DescribeReservedElasticsearchInstances = DescribeReservedElasticsearchInstances'
  { -- | The reserved instance identifier filter value. Use this parameter to
    -- show only the reservation that matches the specified reserved
    -- Elasticsearch instance ID.
    reservedElasticsearchInstanceId :: Prelude.Maybe Prelude.Text,
    -- | NextToken should be sent in case if earlier API call produced result
    -- containing NextToken. It is used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Set this value to limit the number of results returned. If not
    -- specified, defaults to 100.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedElasticsearchInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedElasticsearchInstanceId', 'describeReservedElasticsearchInstances_reservedElasticsearchInstanceId' - The reserved instance identifier filter value. Use this parameter to
-- show only the reservation that matches the specified reserved
-- Elasticsearch instance ID.
--
-- 'nextToken', 'describeReservedElasticsearchInstances_nextToken' - NextToken should be sent in case if earlier API call produced result
-- containing NextToken. It is used for pagination.
--
-- 'maxResults', 'describeReservedElasticsearchInstances_maxResults' - Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
newDescribeReservedElasticsearchInstances ::
  DescribeReservedElasticsearchInstances
newDescribeReservedElasticsearchInstances =
  DescribeReservedElasticsearchInstances'
    { reservedElasticsearchInstanceId =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The reserved instance identifier filter value. Use this parameter to
-- show only the reservation that matches the specified reserved
-- Elasticsearch instance ID.
describeReservedElasticsearchInstances_reservedElasticsearchInstanceId :: Lens.Lens' DescribeReservedElasticsearchInstances (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstances_reservedElasticsearchInstanceId = Lens.lens (\DescribeReservedElasticsearchInstances' {reservedElasticsearchInstanceId} -> reservedElasticsearchInstanceId) (\s@DescribeReservedElasticsearchInstances' {} a -> s {reservedElasticsearchInstanceId = a} :: DescribeReservedElasticsearchInstances)

-- | NextToken should be sent in case if earlier API call produced result
-- containing NextToken. It is used for pagination.
describeReservedElasticsearchInstances_nextToken :: Lens.Lens' DescribeReservedElasticsearchInstances (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstances_nextToken = Lens.lens (\DescribeReservedElasticsearchInstances' {nextToken} -> nextToken) (\s@DescribeReservedElasticsearchInstances' {} a -> s {nextToken = a} :: DescribeReservedElasticsearchInstances)

-- | Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
describeReservedElasticsearchInstances_maxResults :: Lens.Lens' DescribeReservedElasticsearchInstances (Prelude.Maybe Prelude.Int)
describeReservedElasticsearchInstances_maxResults = Lens.lens (\DescribeReservedElasticsearchInstances' {maxResults} -> maxResults) (\s@DescribeReservedElasticsearchInstances' {} a -> s {maxResults = a} :: DescribeReservedElasticsearchInstances)

instance
  Core.AWSPager
    DescribeReservedElasticsearchInstances
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeReservedElasticsearchInstancesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeReservedElasticsearchInstancesResponse_reservedElasticsearchInstances
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeReservedElasticsearchInstances_nextToken
          Lens..~ rs
            Lens.^? describeReservedElasticsearchInstancesResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeReservedElasticsearchInstances
  where
  type
    AWSResponse
      DescribeReservedElasticsearchInstances =
      DescribeReservedElasticsearchInstancesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReservedElasticsearchInstancesResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "ReservedElasticsearchInstances"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeReservedElasticsearchInstances
  where
  hashWithSalt
    _salt
    DescribeReservedElasticsearchInstances' {..} =
      _salt
        `Prelude.hashWithSalt` reservedElasticsearchInstanceId
        `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    DescribeReservedElasticsearchInstances
  where
  rnf DescribeReservedElasticsearchInstances' {..} =
    Prelude.rnf reservedElasticsearchInstanceId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    DescribeReservedElasticsearchInstances
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DescribeReservedElasticsearchInstances
  where
  toPath =
    Prelude.const "/2015-01-01/es/reservedInstances"

instance
  Core.ToQuery
    DescribeReservedElasticsearchInstances
  where
  toQuery DescribeReservedElasticsearchInstances' {..} =
    Prelude.mconcat
      [ "reservationId"
          Core.=: reservedElasticsearchInstanceId,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | Container for results from @DescribeReservedElasticsearchInstances@
--
-- /See:/ 'newDescribeReservedElasticsearchInstancesResponse' smart constructor.
data DescribeReservedElasticsearchInstancesResponse = DescribeReservedElasticsearchInstancesResponse'
  { -- | Provides an identifier to allow retrieval of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of reserved Elasticsearch instances.
    reservedElasticsearchInstances :: Prelude.Maybe [ReservedElasticsearchInstance],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedElasticsearchInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeReservedElasticsearchInstancesResponse_nextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- 'reservedElasticsearchInstances', 'describeReservedElasticsearchInstancesResponse_reservedElasticsearchInstances' - List of reserved Elasticsearch instances.
--
-- 'httpStatus', 'describeReservedElasticsearchInstancesResponse_httpStatus' - The response's http status code.
newDescribeReservedElasticsearchInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReservedElasticsearchInstancesResponse
newDescribeReservedElasticsearchInstancesResponse
  pHttpStatus_ =
    DescribeReservedElasticsearchInstancesResponse'
      { nextToken =
          Prelude.Nothing,
        reservedElasticsearchInstances =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Provides an identifier to allow retrieval of paginated results.
describeReservedElasticsearchInstancesResponse_nextToken :: Lens.Lens' DescribeReservedElasticsearchInstancesResponse (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstancesResponse_nextToken = Lens.lens (\DescribeReservedElasticsearchInstancesResponse' {nextToken} -> nextToken) (\s@DescribeReservedElasticsearchInstancesResponse' {} a -> s {nextToken = a} :: DescribeReservedElasticsearchInstancesResponse)

-- | List of reserved Elasticsearch instances.
describeReservedElasticsearchInstancesResponse_reservedElasticsearchInstances :: Lens.Lens' DescribeReservedElasticsearchInstancesResponse (Prelude.Maybe [ReservedElasticsearchInstance])
describeReservedElasticsearchInstancesResponse_reservedElasticsearchInstances = Lens.lens (\DescribeReservedElasticsearchInstancesResponse' {reservedElasticsearchInstances} -> reservedElasticsearchInstances) (\s@DescribeReservedElasticsearchInstancesResponse' {} a -> s {reservedElasticsearchInstances = a} :: DescribeReservedElasticsearchInstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeReservedElasticsearchInstancesResponse_httpStatus :: Lens.Lens' DescribeReservedElasticsearchInstancesResponse Prelude.Int
describeReservedElasticsearchInstancesResponse_httpStatus = Lens.lens (\DescribeReservedElasticsearchInstancesResponse' {httpStatus} -> httpStatus) (\s@DescribeReservedElasticsearchInstancesResponse' {} a -> s {httpStatus = a} :: DescribeReservedElasticsearchInstancesResponse)

instance
  Prelude.NFData
    DescribeReservedElasticsearchInstancesResponse
  where
  rnf
    DescribeReservedElasticsearchInstancesResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf reservedElasticsearchInstances
        `Prelude.seq` Prelude.rnf httpStatus

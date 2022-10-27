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
-- Module      : Amazonka.OpenSearch.DescribeOutboundConnections
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the outbound cross-cluster connections for a local domain.
module Amazonka.OpenSearch.DescribeOutboundConnections
  ( -- * Creating a Request
    DescribeOutboundConnections (..),
    newDescribeOutboundConnections,

    -- * Request Lenses
    describeOutboundConnections_nextToken,
    describeOutboundConnections_filters,
    describeOutboundConnections_maxResults,

    -- * Destructuring the Response
    DescribeOutboundConnectionsResponse (..),
    newDescribeOutboundConnectionsResponse,

    -- * Response Lenses
    describeOutboundConnectionsResponse_nextToken,
    describeOutboundConnectionsResponse_connections,
    describeOutboundConnectionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for the parameters to the @ DescribeOutboundConnections @
-- operation.
--
-- /See:/ 'newDescribeOutboundConnections' smart constructor.
data DescribeOutboundConnections = DescribeOutboundConnections'
  { -- | NextToken is sent in case the earlier API call results contain the
    -- NextToken parameter. Used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of filters used to match properties for outbound cross-cluster
    -- connections. Available @ Filter @ names for this operation are:
    --
    -- -   connection-id
    -- -   remote-domain-info.domain-name
    -- -   remote-domain-info.owner-id
    -- -   remote-domain-info.region
    -- -   local-domain-info.domain-name
    filters :: Prelude.Maybe [Filter],
    -- | Set this value to limit the number of results returned. If not
    -- specified, defaults to 100.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOutboundConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeOutboundConnections_nextToken' - NextToken is sent in case the earlier API call results contain the
-- NextToken parameter. Used for pagination.
--
-- 'filters', 'describeOutboundConnections_filters' - A list of filters used to match properties for outbound cross-cluster
-- connections. Available @ Filter @ names for this operation are:
--
-- -   connection-id
-- -   remote-domain-info.domain-name
-- -   remote-domain-info.owner-id
-- -   remote-domain-info.region
-- -   local-domain-info.domain-name
--
-- 'maxResults', 'describeOutboundConnections_maxResults' - Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
newDescribeOutboundConnections ::
  DescribeOutboundConnections
newDescribeOutboundConnections =
  DescribeOutboundConnections'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | NextToken is sent in case the earlier API call results contain the
-- NextToken parameter. Used for pagination.
describeOutboundConnections_nextToken :: Lens.Lens' DescribeOutboundConnections (Prelude.Maybe Prelude.Text)
describeOutboundConnections_nextToken = Lens.lens (\DescribeOutboundConnections' {nextToken} -> nextToken) (\s@DescribeOutboundConnections' {} a -> s {nextToken = a} :: DescribeOutboundConnections)

-- | A list of filters used to match properties for outbound cross-cluster
-- connections. Available @ Filter @ names for this operation are:
--
-- -   connection-id
-- -   remote-domain-info.domain-name
-- -   remote-domain-info.owner-id
-- -   remote-domain-info.region
-- -   local-domain-info.domain-name
describeOutboundConnections_filters :: Lens.Lens' DescribeOutboundConnections (Prelude.Maybe [Filter])
describeOutboundConnections_filters = Lens.lens (\DescribeOutboundConnections' {filters} -> filters) (\s@DescribeOutboundConnections' {} a -> s {filters = a} :: DescribeOutboundConnections) Prelude.. Lens.mapping Lens.coerced

-- | Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
describeOutboundConnections_maxResults :: Lens.Lens' DescribeOutboundConnections (Prelude.Maybe Prelude.Int)
describeOutboundConnections_maxResults = Lens.lens (\DescribeOutboundConnections' {maxResults} -> maxResults) (\s@DescribeOutboundConnections' {} a -> s {maxResults = a} :: DescribeOutboundConnections)

instance Core.AWSRequest DescribeOutboundConnections where
  type
    AWSResponse DescribeOutboundConnections =
      DescribeOutboundConnectionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOutboundConnectionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Connections" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeOutboundConnections where
  hashWithSalt _salt DescribeOutboundConnections' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeOutboundConnections where
  rnf DescribeOutboundConnections' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeOutboundConnections where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON DescribeOutboundConnections where
  toJSON DescribeOutboundConnections' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeOutboundConnections where
  toPath =
    Prelude.const
      "/2021-01-01/opensearch/cc/outboundConnection/search"

instance Core.ToQuery DescribeOutboundConnections where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @ DescribeOutboundConnections @ request. Contains the
-- list of connections matching the filter criteria.
--
-- /See:/ 'newDescribeOutboundConnectionsResponse' smart constructor.
data DescribeOutboundConnectionsResponse = DescribeOutboundConnectionsResponse'
  { -- | If more results are available and NextToken is present, make the next
    -- request to the same API with the received NextToken to paginate the
    -- remaining results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @ OutboundConnection @ matching the specified filter criteria.
    connections :: Prelude.Maybe [OutboundConnection],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOutboundConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeOutboundConnectionsResponse_nextToken' - If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
--
-- 'connections', 'describeOutboundConnectionsResponse_connections' - A list of @ OutboundConnection @ matching the specified filter criteria.
--
-- 'httpStatus', 'describeOutboundConnectionsResponse_httpStatus' - The response's http status code.
newDescribeOutboundConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeOutboundConnectionsResponse
newDescribeOutboundConnectionsResponse pHttpStatus_ =
  DescribeOutboundConnectionsResponse'
    { nextToken =
        Prelude.Nothing,
      connections = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
describeOutboundConnectionsResponse_nextToken :: Lens.Lens' DescribeOutboundConnectionsResponse (Prelude.Maybe Prelude.Text)
describeOutboundConnectionsResponse_nextToken = Lens.lens (\DescribeOutboundConnectionsResponse' {nextToken} -> nextToken) (\s@DescribeOutboundConnectionsResponse' {} a -> s {nextToken = a} :: DescribeOutboundConnectionsResponse)

-- | A list of @ OutboundConnection @ matching the specified filter criteria.
describeOutboundConnectionsResponse_connections :: Lens.Lens' DescribeOutboundConnectionsResponse (Prelude.Maybe [OutboundConnection])
describeOutboundConnectionsResponse_connections = Lens.lens (\DescribeOutboundConnectionsResponse' {connections} -> connections) (\s@DescribeOutboundConnectionsResponse' {} a -> s {connections = a} :: DescribeOutboundConnectionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeOutboundConnectionsResponse_httpStatus :: Lens.Lens' DescribeOutboundConnectionsResponse Prelude.Int
describeOutboundConnectionsResponse_httpStatus = Lens.lens (\DescribeOutboundConnectionsResponse' {httpStatus} -> httpStatus) (\s@DescribeOutboundConnectionsResponse' {} a -> s {httpStatus = a} :: DescribeOutboundConnectionsResponse)

instance
  Prelude.NFData
    DescribeOutboundConnectionsResponse
  where
  rnf DescribeOutboundConnectionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf connections
      `Prelude.seq` Prelude.rnf httpStatus

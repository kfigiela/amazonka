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
-- Module      : Amazonka.DMS.DescribeEndpoints
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the endpoints for your account in the current
-- region.
--
-- This operation returns paginated results.
module Amazonka.DMS.DescribeEndpoints
  ( -- * Creating a Request
    DescribeEndpoints (..),
    newDescribeEndpoints,

    -- * Request Lenses
    describeEndpoints_marker,
    describeEndpoints_filters,
    describeEndpoints_maxRecords,

    -- * Destructuring the Response
    DescribeEndpointsResponse (..),
    newDescribeEndpointsResponse,

    -- * Response Lenses
    describeEndpointsResponse_marker,
    describeEndpointsResponse_endpoints,
    describeEndpointsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeEndpoints' smart constructor.
data DescribeEndpoints = DescribeEndpoints'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Filters applied to the endpoints.
    --
    -- Valid filter names: endpoint-arn | endpoint-type | endpoint-id |
    -- engine-name
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that the remaining
    -- results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpoints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEndpoints_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'filters', 'describeEndpoints_filters' - Filters applied to the endpoints.
--
-- Valid filter names: endpoint-arn | endpoint-type | endpoint-id |
-- engine-name
--
-- 'maxRecords', 'describeEndpoints_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeEndpoints ::
  DescribeEndpoints
newDescribeEndpoints =
  DescribeEndpoints'
    { marker = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeEndpoints_marker :: Lens.Lens' DescribeEndpoints (Prelude.Maybe Prelude.Text)
describeEndpoints_marker = Lens.lens (\DescribeEndpoints' {marker} -> marker) (\s@DescribeEndpoints' {} a -> s {marker = a} :: DescribeEndpoints)

-- | Filters applied to the endpoints.
--
-- Valid filter names: endpoint-arn | endpoint-type | endpoint-id |
-- engine-name
describeEndpoints_filters :: Lens.Lens' DescribeEndpoints (Prelude.Maybe [Filter])
describeEndpoints_filters = Lens.lens (\DescribeEndpoints' {filters} -> filters) (\s@DescribeEndpoints' {} a -> s {filters = a} :: DescribeEndpoints) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeEndpoints_maxRecords :: Lens.Lens' DescribeEndpoints (Prelude.Maybe Prelude.Int)
describeEndpoints_maxRecords = Lens.lens (\DescribeEndpoints' {maxRecords} -> maxRecords) (\s@DescribeEndpoints' {} a -> s {maxRecords = a} :: DescribeEndpoints)

instance Core.AWSPager DescribeEndpoints where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeEndpointsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeEndpointsResponse_endpoints
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeEndpoints_marker
          Lens..~ rs
          Lens.^? describeEndpointsResponse_marker Prelude.. Lens._Just

instance Core.AWSRequest DescribeEndpoints where
  type
    AWSResponse DescribeEndpoints =
      DescribeEndpointsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEndpointsResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> (x Core..?> "Endpoints" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEndpoints where
  hashWithSalt _salt DescribeEndpoints' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxRecords

instance Prelude.NFData DescribeEndpoints where
  rnf DescribeEndpoints' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords

instance Core.ToHeaders DescribeEndpoints where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.DescribeEndpoints" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEndpoints where
  toJSON DescribeEndpoints' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Marker" Core..=) Prelude.<$> marker,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxRecords" Core..=) Prelude.<$> maxRecords
          ]
      )

instance Core.ToPath DescribeEndpoints where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEndpoints where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newDescribeEndpointsResponse' smart constructor.
data DescribeEndpointsResponse = DescribeEndpointsResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Endpoint description.
    endpoints :: Prelude.Maybe [Endpoint],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEndpointsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'endpoints', 'describeEndpointsResponse_endpoints' - Endpoint description.
--
-- 'httpStatus', 'describeEndpointsResponse_httpStatus' - The response's http status code.
newDescribeEndpointsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEndpointsResponse
newDescribeEndpointsResponse pHttpStatus_ =
  DescribeEndpointsResponse'
    { marker =
        Prelude.Nothing,
      endpoints = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeEndpointsResponse_marker :: Lens.Lens' DescribeEndpointsResponse (Prelude.Maybe Prelude.Text)
describeEndpointsResponse_marker = Lens.lens (\DescribeEndpointsResponse' {marker} -> marker) (\s@DescribeEndpointsResponse' {} a -> s {marker = a} :: DescribeEndpointsResponse)

-- | Endpoint description.
describeEndpointsResponse_endpoints :: Lens.Lens' DescribeEndpointsResponse (Prelude.Maybe [Endpoint])
describeEndpointsResponse_endpoints = Lens.lens (\DescribeEndpointsResponse' {endpoints} -> endpoints) (\s@DescribeEndpointsResponse' {} a -> s {endpoints = a} :: DescribeEndpointsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEndpointsResponse_httpStatus :: Lens.Lens' DescribeEndpointsResponse Prelude.Int
describeEndpointsResponse_httpStatus = Lens.lens (\DescribeEndpointsResponse' {httpStatus} -> httpStatus) (\s@DescribeEndpointsResponse' {} a -> s {httpStatus = a} :: DescribeEndpointsResponse)

instance Prelude.NFData DescribeEndpointsResponse where
  rnf DescribeEndpointsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf endpoints
      `Prelude.seq` Prelude.rnf httpStatus

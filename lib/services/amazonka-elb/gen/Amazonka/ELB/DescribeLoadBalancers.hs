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
-- Module      : Amazonka.ELB.DescribeLoadBalancers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified the load balancers. If no load balancers are
-- specified, the call describes all of your load balancers.
--
-- This operation returns paginated results.
module Amazonka.ELB.DescribeLoadBalancers
  ( -- * Creating a Request
    DescribeLoadBalancers (..),
    newDescribeLoadBalancers,

    -- * Request Lenses
    describeLoadBalancers_marker,
    describeLoadBalancers_loadBalancerNames,
    describeLoadBalancers_pageSize,

    -- * Destructuring the Response
    DescribeLoadBalancersResponse (..),
    newDescribeLoadBalancersResponse,

    -- * Response Lenses
    describeLoadBalancersResponse_nextMarker,
    describeLoadBalancersResponse_loadBalancerDescriptions,
    describeLoadBalancersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ELB.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for DescribeLoadBalancers.
--
-- /See:/ 'newDescribeLoadBalancers' smart constructor.
data DescribeLoadBalancers = DescribeLoadBalancers'
  { -- | The marker for the next set of results. (You received this marker from a
    -- previous call.)
    marker :: Prelude.Maybe Prelude.Text,
    -- | The names of the load balancers.
    loadBalancerNames :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of results to return with this call (a number from 1
    -- to 400). The default is 400.
    pageSize :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeLoadBalancers_marker' - The marker for the next set of results. (You received this marker from a
-- previous call.)
--
-- 'loadBalancerNames', 'describeLoadBalancers_loadBalancerNames' - The names of the load balancers.
--
-- 'pageSize', 'describeLoadBalancers_pageSize' - The maximum number of results to return with this call (a number from 1
-- to 400). The default is 400.
newDescribeLoadBalancers ::
  DescribeLoadBalancers
newDescribeLoadBalancers =
  DescribeLoadBalancers'
    { marker = Prelude.Nothing,
      loadBalancerNames = Prelude.Nothing,
      pageSize = Prelude.Nothing
    }

-- | The marker for the next set of results. (You received this marker from a
-- previous call.)
describeLoadBalancers_marker :: Lens.Lens' DescribeLoadBalancers (Prelude.Maybe Prelude.Text)
describeLoadBalancers_marker = Lens.lens (\DescribeLoadBalancers' {marker} -> marker) (\s@DescribeLoadBalancers' {} a -> s {marker = a} :: DescribeLoadBalancers)

-- | The names of the load balancers.
describeLoadBalancers_loadBalancerNames :: Lens.Lens' DescribeLoadBalancers (Prelude.Maybe [Prelude.Text])
describeLoadBalancers_loadBalancerNames = Lens.lens (\DescribeLoadBalancers' {loadBalancerNames} -> loadBalancerNames) (\s@DescribeLoadBalancers' {} a -> s {loadBalancerNames = a} :: DescribeLoadBalancers) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return with this call (a number from 1
-- to 400). The default is 400.
describeLoadBalancers_pageSize :: Lens.Lens' DescribeLoadBalancers (Prelude.Maybe Prelude.Natural)
describeLoadBalancers_pageSize = Lens.lens (\DescribeLoadBalancers' {pageSize} -> pageSize) (\s@DescribeLoadBalancers' {} a -> s {pageSize = a} :: DescribeLoadBalancers)

instance Core.AWSPager DescribeLoadBalancers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_loadBalancerDescriptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeLoadBalancers_marker
          Lens..~ rs
          Lens.^? describeLoadBalancersResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeLoadBalancers where
  type
    AWSResponse DescribeLoadBalancers =
      DescribeLoadBalancersResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancersResult"
      ( \s h x ->
          DescribeLoadBalancersResponse'
            Prelude.<$> (x Core..@? "NextMarker")
            Prelude.<*> ( x Core..@? "LoadBalancerDescriptions"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLoadBalancers where
  hashWithSalt _salt DescribeLoadBalancers' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` loadBalancerNames
      `Prelude.hashWithSalt` pageSize

instance Prelude.NFData DescribeLoadBalancers where
  rnf DescribeLoadBalancers' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf loadBalancerNames
      `Prelude.seq` Prelude.rnf pageSize

instance Core.ToHeaders DescribeLoadBalancers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeLoadBalancers where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLoadBalancers where
  toQuery DescribeLoadBalancers' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeLoadBalancers" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-06-01" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "LoadBalancerNames"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> loadBalancerNames
            ),
        "PageSize" Core.=: pageSize
      ]

-- | Contains the parameters for DescribeLoadBalancers.
--
-- /See:/ 'newDescribeLoadBalancersResponse' smart constructor.
data DescribeLoadBalancersResponse = DescribeLoadBalancersResponse'
  { -- | The marker to use when requesting the next set of results. If there are
    -- no additional results, the string is empty.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | Information about the load balancers.
    loadBalancerDescriptions :: Prelude.Maybe [LoadBalancerDescription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextMarker', 'describeLoadBalancersResponse_nextMarker' - The marker to use when requesting the next set of results. If there are
-- no additional results, the string is empty.
--
-- 'loadBalancerDescriptions', 'describeLoadBalancersResponse_loadBalancerDescriptions' - Information about the load balancers.
--
-- 'httpStatus', 'describeLoadBalancersResponse_httpStatus' - The response's http status code.
newDescribeLoadBalancersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLoadBalancersResponse
newDescribeLoadBalancersResponse pHttpStatus_ =
  DescribeLoadBalancersResponse'
    { nextMarker =
        Prelude.Nothing,
      loadBalancerDescriptions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The marker to use when requesting the next set of results. If there are
-- no additional results, the string is empty.
describeLoadBalancersResponse_nextMarker :: Lens.Lens' DescribeLoadBalancersResponse (Prelude.Maybe Prelude.Text)
describeLoadBalancersResponse_nextMarker = Lens.lens (\DescribeLoadBalancersResponse' {nextMarker} -> nextMarker) (\s@DescribeLoadBalancersResponse' {} a -> s {nextMarker = a} :: DescribeLoadBalancersResponse)

-- | Information about the load balancers.
describeLoadBalancersResponse_loadBalancerDescriptions :: Lens.Lens' DescribeLoadBalancersResponse (Prelude.Maybe [LoadBalancerDescription])
describeLoadBalancersResponse_loadBalancerDescriptions = Lens.lens (\DescribeLoadBalancersResponse' {loadBalancerDescriptions} -> loadBalancerDescriptions) (\s@DescribeLoadBalancersResponse' {} a -> s {loadBalancerDescriptions = a} :: DescribeLoadBalancersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeLoadBalancersResponse_httpStatus :: Lens.Lens' DescribeLoadBalancersResponse Prelude.Int
describeLoadBalancersResponse_httpStatus = Lens.lens (\DescribeLoadBalancersResponse' {httpStatus} -> httpStatus) (\s@DescribeLoadBalancersResponse' {} a -> s {httpStatus = a} :: DescribeLoadBalancersResponse)

instance Prelude.NFData DescribeLoadBalancersResponse where
  rnf DescribeLoadBalancersResponse' {..} =
    Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf loadBalancerDescriptions
      `Prelude.seq` Prelude.rnf httpStatus

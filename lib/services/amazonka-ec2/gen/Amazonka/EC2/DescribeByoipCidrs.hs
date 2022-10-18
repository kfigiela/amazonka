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
-- Module      : Amazonka.EC2.DescribeByoipCidrs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the IP address ranges that were specified in calls to
-- ProvisionByoipCidr.
--
-- To describe the address pools that were created when you provisioned the
-- address ranges, use DescribePublicIpv4Pools or DescribeIpv6Pools.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeByoipCidrs
  ( -- * Creating a Request
    DescribeByoipCidrs (..),
    newDescribeByoipCidrs,

    -- * Request Lenses
    describeByoipCidrs_nextToken,
    describeByoipCidrs_dryRun,
    describeByoipCidrs_maxResults,

    -- * Destructuring the Response
    DescribeByoipCidrsResponse (..),
    newDescribeByoipCidrsResponse,

    -- * Response Lenses
    describeByoipCidrsResponse_nextToken,
    describeByoipCidrsResponse_byoipCidrs,
    describeByoipCidrsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeByoipCidrs' smart constructor.
data DescribeByoipCidrs = DescribeByoipCidrs'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeByoipCidrs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeByoipCidrs_nextToken' - The token for the next page of results.
--
-- 'dryRun', 'describeByoipCidrs_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeByoipCidrs_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
newDescribeByoipCidrs ::
  -- | 'maxResults'
  Prelude.Natural ->
  DescribeByoipCidrs
newDescribeByoipCidrs pMaxResults_ =
  DescribeByoipCidrs'
    { nextToken = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = pMaxResults_
    }

-- | The token for the next page of results.
describeByoipCidrs_nextToken :: Lens.Lens' DescribeByoipCidrs (Prelude.Maybe Prelude.Text)
describeByoipCidrs_nextToken = Lens.lens (\DescribeByoipCidrs' {nextToken} -> nextToken) (\s@DescribeByoipCidrs' {} a -> s {nextToken = a} :: DescribeByoipCidrs)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeByoipCidrs_dryRun :: Lens.Lens' DescribeByoipCidrs (Prelude.Maybe Prelude.Bool)
describeByoipCidrs_dryRun = Lens.lens (\DescribeByoipCidrs' {dryRun} -> dryRun) (\s@DescribeByoipCidrs' {} a -> s {dryRun = a} :: DescribeByoipCidrs)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeByoipCidrs_maxResults :: Lens.Lens' DescribeByoipCidrs Prelude.Natural
describeByoipCidrs_maxResults = Lens.lens (\DescribeByoipCidrs' {maxResults} -> maxResults) (\s@DescribeByoipCidrs' {} a -> s {maxResults = a} :: DescribeByoipCidrs)

instance Core.AWSPager DescribeByoipCidrs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeByoipCidrsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeByoipCidrsResponse_byoipCidrs
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeByoipCidrs_nextToken
          Lens..~ rs
          Lens.^? describeByoipCidrsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeByoipCidrs where
  type
    AWSResponse DescribeByoipCidrs =
      DescribeByoipCidrsResponse
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeByoipCidrsResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "byoipCidrSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService DescribeByoipCidrs where
  service _proxy = defaultService

instance Prelude.Hashable DescribeByoipCidrs where
  hashWithSalt _salt DescribeByoipCidrs' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeByoipCidrs where
  rnf DescribeByoipCidrs' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeByoipCidrs where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeByoipCidrs where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeByoipCidrs where
  toQuery DescribeByoipCidrs' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeByoipCidrs" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeByoipCidrsResponse' smart constructor.
data DescribeByoipCidrsResponse = DescribeByoipCidrsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about your address ranges.
    byoipCidrs :: Prelude.Maybe [ByoipCidr],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeByoipCidrsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeByoipCidrsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'byoipCidrs', 'describeByoipCidrsResponse_byoipCidrs' - Information about your address ranges.
--
-- 'httpStatus', 'describeByoipCidrsResponse_httpStatus' - The response's http status code.
newDescribeByoipCidrsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeByoipCidrsResponse
newDescribeByoipCidrsResponse pHttpStatus_ =
  DescribeByoipCidrsResponse'
    { nextToken =
        Prelude.Nothing,
      byoipCidrs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeByoipCidrsResponse_nextToken :: Lens.Lens' DescribeByoipCidrsResponse (Prelude.Maybe Prelude.Text)
describeByoipCidrsResponse_nextToken = Lens.lens (\DescribeByoipCidrsResponse' {nextToken} -> nextToken) (\s@DescribeByoipCidrsResponse' {} a -> s {nextToken = a} :: DescribeByoipCidrsResponse)

-- | Information about your address ranges.
describeByoipCidrsResponse_byoipCidrs :: Lens.Lens' DescribeByoipCidrsResponse (Prelude.Maybe [ByoipCidr])
describeByoipCidrsResponse_byoipCidrs = Lens.lens (\DescribeByoipCidrsResponse' {byoipCidrs} -> byoipCidrs) (\s@DescribeByoipCidrsResponse' {} a -> s {byoipCidrs = a} :: DescribeByoipCidrsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeByoipCidrsResponse_httpStatus :: Lens.Lens' DescribeByoipCidrsResponse Prelude.Int
describeByoipCidrsResponse_httpStatus = Lens.lens (\DescribeByoipCidrsResponse' {httpStatus} -> httpStatus) (\s@DescribeByoipCidrsResponse' {} a -> s {httpStatus = a} :: DescribeByoipCidrsResponse)

instance Prelude.NFData DescribeByoipCidrsResponse where
  rnf DescribeByoipCidrsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf byoipCidrs
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.EC2.DescribeFleets
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified EC2 Fleets or all of your EC2 Fleets.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet Monitor your EC2 Fleet>
-- in the /Amazon EC2 User Guide/.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeFleets
  ( -- * Creating a Request
    DescribeFleets (..),
    newDescribeFleets,

    -- * Request Lenses
    describeFleets_nextToken,
    describeFleets_filters,
    describeFleets_dryRun,
    describeFleets_fleetIds,
    describeFleets_maxResults,

    -- * Destructuring the Response
    DescribeFleetsResponse (..),
    newDescribeFleetsResponse,

    -- * Response Lenses
    describeFleetsResponse_nextToken,
    describeFleetsResponse_fleets,
    describeFleetsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeFleets' smart constructor.
data DescribeFleets = DescribeFleets'
  { -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters.
    --
    -- -   @activity-status@ - The progress of the EC2 Fleet ( @error@ |
    --     @pending-fulfillment@ | @pending-termination@ | @fulfilled@).
    --
    -- -   @excess-capacity-termination-policy@ - Indicates whether to
    --     terminate running instances if the target capacity is decreased
    --     below the current EC2 Fleet size (@true@ | @false@).
    --
    -- -   @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ |
    --     @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ |
    --     @modifying@).
    --
    -- -   @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should
    --     replace unhealthy instances (@true@ | @false@).
    --
    -- -   @type@ - The type of request (@instant@ | @request@ | @maintain@).
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The IDs of the EC2 Fleets.
    --
    -- If a fleet is of type @instant@, you must specify the fleet ID,
    -- otherwise it does not appear in the response.
    fleetIds :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of results to return in a single call. Specify a
    -- value between 1 and 1000. The default value is 1000. To retrieve the
    -- remaining results, make another call with the returned @NextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleets_nextToken' - The token for the next set of results.
--
-- 'filters', 'describeFleets_filters' - The filters.
--
-- -   @activity-status@ - The progress of the EC2 Fleet ( @error@ |
--     @pending-fulfillment@ | @pending-termination@ | @fulfilled@).
--
-- -   @excess-capacity-termination-policy@ - Indicates whether to
--     terminate running instances if the target capacity is decreased
--     below the current EC2 Fleet size (@true@ | @false@).
--
-- -   @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ |
--     @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ |
--     @modifying@).
--
-- -   @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should
--     replace unhealthy instances (@true@ | @false@).
--
-- -   @type@ - The type of request (@instant@ | @request@ | @maintain@).
--
-- 'dryRun', 'describeFleets_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'fleetIds', 'describeFleets_fleetIds' - The IDs of the EC2 Fleets.
--
-- If a fleet is of type @instant@, you must specify the fleet ID,
-- otherwise it does not appear in the response.
--
-- 'maxResults', 'describeFleets_maxResults' - The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
newDescribeFleets ::
  DescribeFleets
newDescribeFleets =
  DescribeFleets'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      fleetIds = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next set of results.
describeFleets_nextToken :: Lens.Lens' DescribeFleets (Prelude.Maybe Prelude.Text)
describeFleets_nextToken = Lens.lens (\DescribeFleets' {nextToken} -> nextToken) (\s@DescribeFleets' {} a -> s {nextToken = a} :: DescribeFleets)

-- | The filters.
--
-- -   @activity-status@ - The progress of the EC2 Fleet ( @error@ |
--     @pending-fulfillment@ | @pending-termination@ | @fulfilled@).
--
-- -   @excess-capacity-termination-policy@ - Indicates whether to
--     terminate running instances if the target capacity is decreased
--     below the current EC2 Fleet size (@true@ | @false@).
--
-- -   @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ |
--     @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ |
--     @modifying@).
--
-- -   @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should
--     replace unhealthy instances (@true@ | @false@).
--
-- -   @type@ - The type of request (@instant@ | @request@ | @maintain@).
describeFleets_filters :: Lens.Lens' DescribeFleets (Prelude.Maybe [Filter])
describeFleets_filters = Lens.lens (\DescribeFleets' {filters} -> filters) (\s@DescribeFleets' {} a -> s {filters = a} :: DescribeFleets) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeFleets_dryRun :: Lens.Lens' DescribeFleets (Prelude.Maybe Prelude.Bool)
describeFleets_dryRun = Lens.lens (\DescribeFleets' {dryRun} -> dryRun) (\s@DescribeFleets' {} a -> s {dryRun = a} :: DescribeFleets)

-- | The IDs of the EC2 Fleets.
--
-- If a fleet is of type @instant@, you must specify the fleet ID,
-- otherwise it does not appear in the response.
describeFleets_fleetIds :: Lens.Lens' DescribeFleets (Prelude.Maybe [Prelude.Text])
describeFleets_fleetIds = Lens.lens (\DescribeFleets' {fleetIds} -> fleetIds) (\s@DescribeFleets' {} a -> s {fleetIds = a} :: DescribeFleets) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
describeFleets_maxResults :: Lens.Lens' DescribeFleets (Prelude.Maybe Prelude.Int)
describeFleets_maxResults = Lens.lens (\DescribeFleets' {maxResults} -> maxResults) (\s@DescribeFleets' {} a -> s {maxResults = a} :: DescribeFleets)

instance Core.AWSPager DescribeFleets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeFleetsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeFleetsResponse_fleets Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeFleets_nextToken
          Lens..~ rs
          Lens.^? describeFleetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest DescribeFleets where
  type
    AWSResponse DescribeFleets =
      DescribeFleetsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeFleetsResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "fleetSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFleets where
  hashWithSalt _salt DescribeFleets' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` fleetIds
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeFleets where
  rnf DescribeFleets' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf fleetIds
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeFleets where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeFleets where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFleets where
  toQuery DescribeFleets' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeFleets" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        Core.toQuery
          (Core.toQueryList "FleetId" Prelude.<$> fleetIds),
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeFleetsResponse' smart constructor.
data DescribeFleetsResponse = DescribeFleetsResponse'
  { -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the EC2 Fleets.
    fleets :: Prelude.Maybe [FleetData],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetsResponse_nextToken' - The token for the next set of results.
--
-- 'fleets', 'describeFleetsResponse_fleets' - Information about the EC2 Fleets.
--
-- 'httpStatus', 'describeFleetsResponse_httpStatus' - The response's http status code.
newDescribeFleetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFleetsResponse
newDescribeFleetsResponse pHttpStatus_ =
  DescribeFleetsResponse'
    { nextToken =
        Prelude.Nothing,
      fleets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results.
describeFleetsResponse_nextToken :: Lens.Lens' DescribeFleetsResponse (Prelude.Maybe Prelude.Text)
describeFleetsResponse_nextToken = Lens.lens (\DescribeFleetsResponse' {nextToken} -> nextToken) (\s@DescribeFleetsResponse' {} a -> s {nextToken = a} :: DescribeFleetsResponse)

-- | Information about the EC2 Fleets.
describeFleetsResponse_fleets :: Lens.Lens' DescribeFleetsResponse (Prelude.Maybe [FleetData])
describeFleetsResponse_fleets = Lens.lens (\DescribeFleetsResponse' {fleets} -> fleets) (\s@DescribeFleetsResponse' {} a -> s {fleets = a} :: DescribeFleetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeFleetsResponse_httpStatus :: Lens.Lens' DescribeFleetsResponse Prelude.Int
describeFleetsResponse_httpStatus = Lens.lens (\DescribeFleetsResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetsResponse' {} a -> s {httpStatus = a} :: DescribeFleetsResponse)

instance Prelude.NFData DescribeFleetsResponse where
  rnf DescribeFleetsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf fleets
      `Prelude.seq` Prelude.rnf httpStatus

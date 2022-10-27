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
-- Module      : Amazonka.EC2.GetTransitGatewayRouteTablePropagations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the route table propagations for the specified
-- transit gateway route table.
--
-- This operation returns paginated results.
module Amazonka.EC2.GetTransitGatewayRouteTablePropagations
  ( -- * Creating a Request
    GetTransitGatewayRouteTablePropagations (..),
    newGetTransitGatewayRouteTablePropagations,

    -- * Request Lenses
    getTransitGatewayRouteTablePropagations_nextToken,
    getTransitGatewayRouteTablePropagations_filters,
    getTransitGatewayRouteTablePropagations_dryRun,
    getTransitGatewayRouteTablePropagations_maxResults,
    getTransitGatewayRouteTablePropagations_transitGatewayRouteTableId,

    -- * Destructuring the Response
    GetTransitGatewayRouteTablePropagationsResponse (..),
    newGetTransitGatewayRouteTablePropagationsResponse,

    -- * Response Lenses
    getTransitGatewayRouteTablePropagationsResponse_nextToken,
    getTransitGatewayRouteTablePropagationsResponse_transitGatewayRouteTablePropagations,
    getTransitGatewayRouteTablePropagationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTransitGatewayRouteTablePropagations' smart constructor.
data GetTransitGatewayRouteTablePropagations = GetTransitGatewayRouteTablePropagations'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more filters. The possible values are:
    --
    -- -   @resource-id@ - The ID of the resource.
    --
    -- -   @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@
    --     | @direct-connect-gateway@ | @peering@ | @connect@.
    --
    -- -   @transit-gateway-attachment-id@ - The ID of the attachment.
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the transit gateway route table.
    transitGatewayRouteTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayRouteTablePropagations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getTransitGatewayRouteTablePropagations_nextToken' - The token for the next page of results.
--
-- 'filters', 'getTransitGatewayRouteTablePropagations_filters' - One or more filters. The possible values are:
--
-- -   @resource-id@ - The ID of the resource.
--
-- -   @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@
--     | @direct-connect-gateway@ | @peering@ | @connect@.
--
-- -   @transit-gateway-attachment-id@ - The ID of the attachment.
--
-- 'dryRun', 'getTransitGatewayRouteTablePropagations_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'getTransitGatewayRouteTablePropagations_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'transitGatewayRouteTableId', 'getTransitGatewayRouteTablePropagations_transitGatewayRouteTableId' - The ID of the transit gateway route table.
newGetTransitGatewayRouteTablePropagations ::
  -- | 'transitGatewayRouteTableId'
  Prelude.Text ->
  GetTransitGatewayRouteTablePropagations
newGetTransitGatewayRouteTablePropagations
  pTransitGatewayRouteTableId_ =
    GetTransitGatewayRouteTablePropagations'
      { nextToken =
          Prelude.Nothing,
        filters = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        transitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | The token for the next page of results.
getTransitGatewayRouteTablePropagations_nextToken :: Lens.Lens' GetTransitGatewayRouteTablePropagations (Prelude.Maybe Prelude.Text)
getTransitGatewayRouteTablePropagations_nextToken = Lens.lens (\GetTransitGatewayRouteTablePropagations' {nextToken} -> nextToken) (\s@GetTransitGatewayRouteTablePropagations' {} a -> s {nextToken = a} :: GetTransitGatewayRouteTablePropagations)

-- | One or more filters. The possible values are:
--
-- -   @resource-id@ - The ID of the resource.
--
-- -   @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@
--     | @direct-connect-gateway@ | @peering@ | @connect@.
--
-- -   @transit-gateway-attachment-id@ - The ID of the attachment.
getTransitGatewayRouteTablePropagations_filters :: Lens.Lens' GetTransitGatewayRouteTablePropagations (Prelude.Maybe [Filter])
getTransitGatewayRouteTablePropagations_filters = Lens.lens (\GetTransitGatewayRouteTablePropagations' {filters} -> filters) (\s@GetTransitGatewayRouteTablePropagations' {} a -> s {filters = a} :: GetTransitGatewayRouteTablePropagations) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
getTransitGatewayRouteTablePropagations_dryRun :: Lens.Lens' GetTransitGatewayRouteTablePropagations (Prelude.Maybe Prelude.Bool)
getTransitGatewayRouteTablePropagations_dryRun = Lens.lens (\GetTransitGatewayRouteTablePropagations' {dryRun} -> dryRun) (\s@GetTransitGatewayRouteTablePropagations' {} a -> s {dryRun = a} :: GetTransitGatewayRouteTablePropagations)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
getTransitGatewayRouteTablePropagations_maxResults :: Lens.Lens' GetTransitGatewayRouteTablePropagations (Prelude.Maybe Prelude.Natural)
getTransitGatewayRouteTablePropagations_maxResults = Lens.lens (\GetTransitGatewayRouteTablePropagations' {maxResults} -> maxResults) (\s@GetTransitGatewayRouteTablePropagations' {} a -> s {maxResults = a} :: GetTransitGatewayRouteTablePropagations)

-- | The ID of the transit gateway route table.
getTransitGatewayRouteTablePropagations_transitGatewayRouteTableId :: Lens.Lens' GetTransitGatewayRouteTablePropagations Prelude.Text
getTransitGatewayRouteTablePropagations_transitGatewayRouteTableId = Lens.lens (\GetTransitGatewayRouteTablePropagations' {transitGatewayRouteTableId} -> transitGatewayRouteTableId) (\s@GetTransitGatewayRouteTablePropagations' {} a -> s {transitGatewayRouteTableId = a} :: GetTransitGatewayRouteTablePropagations)

instance
  Core.AWSPager
    GetTransitGatewayRouteTablePropagations
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getTransitGatewayRouteTablePropagationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getTransitGatewayRouteTablePropagationsResponse_transitGatewayRouteTablePropagations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getTransitGatewayRouteTablePropagations_nextToken
          Lens..~ rs
            Lens.^? getTransitGatewayRouteTablePropagationsResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    GetTransitGatewayRouteTablePropagations
  where
  type
    AWSResponse
      GetTransitGatewayRouteTablePropagations =
      GetTransitGatewayRouteTablePropagationsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          GetTransitGatewayRouteTablePropagationsResponse'
            Prelude.<$> (x Core..@? "nextToken")
              Prelude.<*> ( x Core..@? "transitGatewayRouteTablePropagations"
                              Core..!@ Prelude.mempty
                              Prelude.>>= Core.may (Core.parseXMLList "item")
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetTransitGatewayRouteTablePropagations
  where
  hashWithSalt
    _salt
    GetTransitGatewayRouteTablePropagations' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` transitGatewayRouteTableId

instance
  Prelude.NFData
    GetTransitGatewayRouteTablePropagations
  where
  rnf GetTransitGatewayRouteTablePropagations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf transitGatewayRouteTableId

instance
  Core.ToHeaders
    GetTransitGatewayRouteTablePropagations
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetTransitGatewayRouteTablePropagations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetTransitGatewayRouteTablePropagations
  where
  toQuery GetTransitGatewayRouteTablePropagations' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "GetTransitGatewayRouteTablePropagations" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        "TransitGatewayRouteTableId"
          Core.=: transitGatewayRouteTableId
      ]

-- | /See:/ 'newGetTransitGatewayRouteTablePropagationsResponse' smart constructor.
data GetTransitGatewayRouteTablePropagationsResponse = GetTransitGatewayRouteTablePropagationsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the route table propagations.
    transitGatewayRouteTablePropagations :: Prelude.Maybe [TransitGatewayRouteTablePropagation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayRouteTablePropagationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getTransitGatewayRouteTablePropagationsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'transitGatewayRouteTablePropagations', 'getTransitGatewayRouteTablePropagationsResponse_transitGatewayRouteTablePropagations' - Information about the route table propagations.
--
-- 'httpStatus', 'getTransitGatewayRouteTablePropagationsResponse_httpStatus' - The response's http status code.
newGetTransitGatewayRouteTablePropagationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTransitGatewayRouteTablePropagationsResponse
newGetTransitGatewayRouteTablePropagationsResponse
  pHttpStatus_ =
    GetTransitGatewayRouteTablePropagationsResponse'
      { nextToken =
          Prelude.Nothing,
        transitGatewayRouteTablePropagations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
getTransitGatewayRouteTablePropagationsResponse_nextToken :: Lens.Lens' GetTransitGatewayRouteTablePropagationsResponse (Prelude.Maybe Prelude.Text)
getTransitGatewayRouteTablePropagationsResponse_nextToken = Lens.lens (\GetTransitGatewayRouteTablePropagationsResponse' {nextToken} -> nextToken) (\s@GetTransitGatewayRouteTablePropagationsResponse' {} a -> s {nextToken = a} :: GetTransitGatewayRouteTablePropagationsResponse)

-- | Information about the route table propagations.
getTransitGatewayRouteTablePropagationsResponse_transitGatewayRouteTablePropagations :: Lens.Lens' GetTransitGatewayRouteTablePropagationsResponse (Prelude.Maybe [TransitGatewayRouteTablePropagation])
getTransitGatewayRouteTablePropagationsResponse_transitGatewayRouteTablePropagations = Lens.lens (\GetTransitGatewayRouteTablePropagationsResponse' {transitGatewayRouteTablePropagations} -> transitGatewayRouteTablePropagations) (\s@GetTransitGatewayRouteTablePropagationsResponse' {} a -> s {transitGatewayRouteTablePropagations = a} :: GetTransitGatewayRouteTablePropagationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getTransitGatewayRouteTablePropagationsResponse_httpStatus :: Lens.Lens' GetTransitGatewayRouteTablePropagationsResponse Prelude.Int
getTransitGatewayRouteTablePropagationsResponse_httpStatus = Lens.lens (\GetTransitGatewayRouteTablePropagationsResponse' {httpStatus} -> httpStatus) (\s@GetTransitGatewayRouteTablePropagationsResponse' {} a -> s {httpStatus = a} :: GetTransitGatewayRouteTablePropagationsResponse)

instance
  Prelude.NFData
    GetTransitGatewayRouteTablePropagationsResponse
  where
  rnf
    GetTransitGatewayRouteTablePropagationsResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf transitGatewayRouteTablePropagations
        `Prelude.seq` Prelude.rnf httpStatus

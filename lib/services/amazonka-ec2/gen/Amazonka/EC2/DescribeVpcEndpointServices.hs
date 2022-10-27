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
-- Module      : Amazonka.EC2.DescribeVpcEndpointServices
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes available services to which you can create a VPC endpoint.
--
-- When the service provider and the consumer have different accounts in
-- multiple Availability Zones, and the consumer views the VPC endpoint
-- service information, the response only includes the common Availability
-- Zones. For example, when the service provider account uses @us-east-1a@
-- and @us-east-1c@ and the consumer uses @us-east-1a@ and @us-east-1b@,
-- the response includes the VPC endpoint services in the common
-- Availability Zone, @us-east-1a@.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeVpcEndpointServices
  ( -- * Creating a Request
    DescribeVpcEndpointServices (..),
    newDescribeVpcEndpointServices,

    -- * Request Lenses
    describeVpcEndpointServices_nextToken,
    describeVpcEndpointServices_filters,
    describeVpcEndpointServices_dryRun,
    describeVpcEndpointServices_serviceNames,
    describeVpcEndpointServices_maxResults,

    -- * Destructuring the Response
    DescribeVpcEndpointServicesResponse (..),
    newDescribeVpcEndpointServicesResponse,

    -- * Response Lenses
    describeVpcEndpointServicesResponse_nextToken,
    describeVpcEndpointServicesResponse_serviceDetails,
    describeVpcEndpointServicesResponse_serviceNames,
    describeVpcEndpointServicesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for DescribeVpcEndpointServices.
--
-- /See:/ 'newDescribeVpcEndpointServices' smart constructor.
data DescribeVpcEndpointServices = DescribeVpcEndpointServices'
  { -- | The token for the next set of items to return. (You received this token
    -- from a prior call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more filters.
    --
    -- -   @service-name@ - The name of the service.
    --
    -- -   @service-type@ - The type of service (@Interface@ | @Gateway@).
    --
    -- -   @supported-ip-address-types@ - The IP address type (@ipv4@ |
    --     @ipv6@).
    --
    -- -   @tag@:\<key> - The key\/value combination of a tag assigned to the
    --     resource. Use the tag key in the filter name and the tag value as
    --     the filter value. For example, to find all resources that have a tag
    --     with the key @Owner@ and the value @TeamA@, specify @tag:Owner@ for
    --     the filter name and @TeamA@ for the filter value.
    --
    -- -   @tag-key@ - The key of a tag assigned to the resource. Use this
    --     filter to find all resources assigned a tag with a specific key,
    --     regardless of the tag value.
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | One or more service names.
    serviceNames :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of items to return for this request. The request
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    --
    -- Constraint: If the value is greater than 1,000, we return only 1,000
    -- items.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVpcEndpointServices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeVpcEndpointServices_nextToken' - The token for the next set of items to return. (You received this token
-- from a prior call.)
--
-- 'filters', 'describeVpcEndpointServices_filters' - One or more filters.
--
-- -   @service-name@ - The name of the service.
--
-- -   @service-type@ - The type of service (@Interface@ | @Gateway@).
--
-- -   @supported-ip-address-types@ - The IP address type (@ipv4@ |
--     @ipv6@).
--
-- -   @tag@:\<key> - The key\/value combination of a tag assigned to the
--     resource. Use the tag key in the filter name and the tag value as
--     the filter value. For example, to find all resources that have a tag
--     with the key @Owner@ and the value @TeamA@, specify @tag:Owner@ for
--     the filter name and @TeamA@ for the filter value.
--
-- -   @tag-key@ - The key of a tag assigned to the resource. Use this
--     filter to find all resources assigned a tag with a specific key,
--     regardless of the tag value.
--
-- 'dryRun', 'describeVpcEndpointServices_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'serviceNames', 'describeVpcEndpointServices_serviceNames' - One or more service names.
--
-- 'maxResults', 'describeVpcEndpointServices_maxResults' - The maximum number of items to return for this request. The request
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- Constraint: If the value is greater than 1,000, we return only 1,000
-- items.
newDescribeVpcEndpointServices ::
  DescribeVpcEndpointServices
newDescribeVpcEndpointServices =
  DescribeVpcEndpointServices'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      serviceNames = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next set of items to return. (You received this token
-- from a prior call.)
describeVpcEndpointServices_nextToken :: Lens.Lens' DescribeVpcEndpointServices (Prelude.Maybe Prelude.Text)
describeVpcEndpointServices_nextToken = Lens.lens (\DescribeVpcEndpointServices' {nextToken} -> nextToken) (\s@DescribeVpcEndpointServices' {} a -> s {nextToken = a} :: DescribeVpcEndpointServices)

-- | One or more filters.
--
-- -   @service-name@ - The name of the service.
--
-- -   @service-type@ - The type of service (@Interface@ | @Gateway@).
--
-- -   @supported-ip-address-types@ - The IP address type (@ipv4@ |
--     @ipv6@).
--
-- -   @tag@:\<key> - The key\/value combination of a tag assigned to the
--     resource. Use the tag key in the filter name and the tag value as
--     the filter value. For example, to find all resources that have a tag
--     with the key @Owner@ and the value @TeamA@, specify @tag:Owner@ for
--     the filter name and @TeamA@ for the filter value.
--
-- -   @tag-key@ - The key of a tag assigned to the resource. Use this
--     filter to find all resources assigned a tag with a specific key,
--     regardless of the tag value.
describeVpcEndpointServices_filters :: Lens.Lens' DescribeVpcEndpointServices (Prelude.Maybe [Filter])
describeVpcEndpointServices_filters = Lens.lens (\DescribeVpcEndpointServices' {filters} -> filters) (\s@DescribeVpcEndpointServices' {} a -> s {filters = a} :: DescribeVpcEndpointServices) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeVpcEndpointServices_dryRun :: Lens.Lens' DescribeVpcEndpointServices (Prelude.Maybe Prelude.Bool)
describeVpcEndpointServices_dryRun = Lens.lens (\DescribeVpcEndpointServices' {dryRun} -> dryRun) (\s@DescribeVpcEndpointServices' {} a -> s {dryRun = a} :: DescribeVpcEndpointServices)

-- | One or more service names.
describeVpcEndpointServices_serviceNames :: Lens.Lens' DescribeVpcEndpointServices (Prelude.Maybe [Prelude.Text])
describeVpcEndpointServices_serviceNames = Lens.lens (\DescribeVpcEndpointServices' {serviceNames} -> serviceNames) (\s@DescribeVpcEndpointServices' {} a -> s {serviceNames = a} :: DescribeVpcEndpointServices) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of items to return for this request. The request
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- Constraint: If the value is greater than 1,000, we return only 1,000
-- items.
describeVpcEndpointServices_maxResults :: Lens.Lens' DescribeVpcEndpointServices (Prelude.Maybe Prelude.Int)
describeVpcEndpointServices_maxResults = Lens.lens (\DescribeVpcEndpointServices' {maxResults} -> maxResults) (\s@DescribeVpcEndpointServices' {} a -> s {maxResults = a} :: DescribeVpcEndpointServices)

instance Core.AWSPager DescribeVpcEndpointServices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeVpcEndpointServicesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeVpcEndpointServicesResponse_serviceDetails
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeVpcEndpointServicesResponse_serviceNames
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeVpcEndpointServices_nextToken
          Lens..~ rs
          Lens.^? describeVpcEndpointServicesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeVpcEndpointServices where
  type
    AWSResponse DescribeVpcEndpointServices =
      DescribeVpcEndpointServicesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeVpcEndpointServicesResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "serviceDetailSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> ( x Core..@? "serviceNameSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeVpcEndpointServices where
  hashWithSalt _salt DescribeVpcEndpointServices' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` serviceNames
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeVpcEndpointServices where
  rnf DescribeVpcEndpointServices' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf serviceNames
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeVpcEndpointServices where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeVpcEndpointServices where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeVpcEndpointServices where
  toQuery DescribeVpcEndpointServices' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeVpcEndpointServices" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        Core.toQuery
          ( Core.toQueryList "ServiceName"
              Prelude.<$> serviceNames
          ),
        "MaxResults" Core.=: maxResults
      ]

-- | Contains the output of DescribeVpcEndpointServices.
--
-- /See:/ 'newDescribeVpcEndpointServicesResponse' smart constructor.
data DescribeVpcEndpointServicesResponse = DescribeVpcEndpointServicesResponse'
  { -- | The token to use when requesting the next set of items. If there are no
    -- additional items to return, the string is empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the service.
    serviceDetails :: Prelude.Maybe [ServiceDetail],
    -- | A list of supported services.
    serviceNames :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVpcEndpointServicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeVpcEndpointServicesResponse_nextToken' - The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
--
-- 'serviceDetails', 'describeVpcEndpointServicesResponse_serviceDetails' - Information about the service.
--
-- 'serviceNames', 'describeVpcEndpointServicesResponse_serviceNames' - A list of supported services.
--
-- 'httpStatus', 'describeVpcEndpointServicesResponse_httpStatus' - The response's http status code.
newDescribeVpcEndpointServicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVpcEndpointServicesResponse
newDescribeVpcEndpointServicesResponse pHttpStatus_ =
  DescribeVpcEndpointServicesResponse'
    { nextToken =
        Prelude.Nothing,
      serviceDetails = Prelude.Nothing,
      serviceNames = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
describeVpcEndpointServicesResponse_nextToken :: Lens.Lens' DescribeVpcEndpointServicesResponse (Prelude.Maybe Prelude.Text)
describeVpcEndpointServicesResponse_nextToken = Lens.lens (\DescribeVpcEndpointServicesResponse' {nextToken} -> nextToken) (\s@DescribeVpcEndpointServicesResponse' {} a -> s {nextToken = a} :: DescribeVpcEndpointServicesResponse)

-- | Information about the service.
describeVpcEndpointServicesResponse_serviceDetails :: Lens.Lens' DescribeVpcEndpointServicesResponse (Prelude.Maybe [ServiceDetail])
describeVpcEndpointServicesResponse_serviceDetails = Lens.lens (\DescribeVpcEndpointServicesResponse' {serviceDetails} -> serviceDetails) (\s@DescribeVpcEndpointServicesResponse' {} a -> s {serviceDetails = a} :: DescribeVpcEndpointServicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of supported services.
describeVpcEndpointServicesResponse_serviceNames :: Lens.Lens' DescribeVpcEndpointServicesResponse (Prelude.Maybe [Prelude.Text])
describeVpcEndpointServicesResponse_serviceNames = Lens.lens (\DescribeVpcEndpointServicesResponse' {serviceNames} -> serviceNames) (\s@DescribeVpcEndpointServicesResponse' {} a -> s {serviceNames = a} :: DescribeVpcEndpointServicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVpcEndpointServicesResponse_httpStatus :: Lens.Lens' DescribeVpcEndpointServicesResponse Prelude.Int
describeVpcEndpointServicesResponse_httpStatus = Lens.lens (\DescribeVpcEndpointServicesResponse' {httpStatus} -> httpStatus) (\s@DescribeVpcEndpointServicesResponse' {} a -> s {httpStatus = a} :: DescribeVpcEndpointServicesResponse)

instance
  Prelude.NFData
    DescribeVpcEndpointServicesResponse
  where
  rnf DescribeVpcEndpointServicesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf serviceDetails
      `Prelude.seq` Prelude.rnf serviceNames
      `Prelude.seq` Prelude.rnf httpStatus

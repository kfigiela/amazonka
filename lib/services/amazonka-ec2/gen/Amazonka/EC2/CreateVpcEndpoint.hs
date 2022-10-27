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
-- Module      : Amazonka.EC2.CreateVpcEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPC endpoint for a specified service. An endpoint enables you
-- to create a private connection between your VPC and the service. The
-- service may be provided by Amazon Web Services, an Amazon Web Services
-- Marketplace Partner, or another Amazon Web Services account. For more
-- information, see the
-- <https://docs.aws.amazon.com/vpc/latest/privatelink/ Amazon Web Services PrivateLink Guide>.
module Amazonka.EC2.CreateVpcEndpoint
  ( -- * Creating a Request
    CreateVpcEndpoint (..),
    newCreateVpcEndpoint,

    -- * Request Lenses
    createVpcEndpoint_privateDnsEnabled,
    createVpcEndpoint_clientToken,
    createVpcEndpoint_securityGroupIds,
    createVpcEndpoint_vpcEndpointType,
    createVpcEndpoint_routeTableIds,
    createVpcEndpoint_dryRun,
    createVpcEndpoint_policyDocument,
    createVpcEndpoint_tagSpecifications,
    createVpcEndpoint_dnsOptions,
    createVpcEndpoint_ipAddressType,
    createVpcEndpoint_subnetIds,
    createVpcEndpoint_vpcId,
    createVpcEndpoint_serviceName,

    -- * Destructuring the Response
    CreateVpcEndpointResponse (..),
    newCreateVpcEndpointResponse,

    -- * Response Lenses
    createVpcEndpointResponse_clientToken,
    createVpcEndpointResponse_vpcEndpoint,
    createVpcEndpointResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for CreateVpcEndpoint.
--
-- /See:/ 'newCreateVpcEndpoint' smart constructor.
data CreateVpcEndpoint = CreateVpcEndpoint'
  { -- | (Interface endpoint) Indicates whether to associate a private hosted
    -- zone with the specified VPC. The private hosted zone contains a record
    -- set for the default public DNS name for the service for the Region (for
    -- example, @kinesis.us-east-1.amazonaws.com@), which resolves to the
    -- private IP addresses of the endpoint network interfaces in the VPC. This
    -- enables you to make requests to the default public DNS name for the
    -- service instead of the public DNS names that are automatically generated
    -- by the VPC endpoint service.
    --
    -- To use a private hosted zone, you must set the following VPC attributes
    -- to @true@: @enableDnsHostnames@ and @enableDnsSupport@. Use
    -- ModifyVpcAttribute to set the VPC attributes.
    --
    -- Default: @true@
    privateDnsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | (Interface endpoint) The ID of one or more security groups to associate
    -- with the endpoint network interface.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The type of endpoint.
    --
    -- Default: Gateway
    vpcEndpointType :: Prelude.Maybe VpcEndpointType,
    -- | (Gateway endpoint) One or more route table IDs.
    routeTableIds :: Prelude.Maybe [Prelude.Text],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | (Interface and gateway endpoints) A policy to attach to the endpoint
    -- that controls access to the service. The policy must be in valid JSON
    -- format. If this parameter is not specified, we attach a default policy
    -- that allows full access to the service.
    policyDocument :: Prelude.Maybe Prelude.Text,
    -- | The tags to associate with the endpoint.
    tagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | The DNS options for the endpoint.
    dnsOptions :: Prelude.Maybe DnsOptionsSpecification,
    -- | The IP address type for the endpoint.
    ipAddressType :: Prelude.Maybe IpAddressType,
    -- | (Interface and Gateway Load Balancer endpoints) The ID of one or more
    -- subnets in which to create an endpoint network interface. For a Gateway
    -- Load Balancer endpoint, you can specify one subnet only.
    subnetIds :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the VPC in which the endpoint will be used.
    vpcId :: Prelude.Text,
    -- | The service name. To get a list of available services, use the
    -- DescribeVpcEndpointServices request, or get the name from the service
    -- provider.
    serviceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVpcEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'privateDnsEnabled', 'createVpcEndpoint_privateDnsEnabled' - (Interface endpoint) Indicates whether to associate a private hosted
-- zone with the specified VPC. The private hosted zone contains a record
-- set for the default public DNS name for the service for the Region (for
-- example, @kinesis.us-east-1.amazonaws.com@), which resolves to the
-- private IP addresses of the endpoint network interfaces in the VPC. This
-- enables you to make requests to the default public DNS name for the
-- service instead of the public DNS names that are automatically generated
-- by the VPC endpoint service.
--
-- To use a private hosted zone, you must set the following VPC attributes
-- to @true@: @enableDnsHostnames@ and @enableDnsSupport@. Use
-- ModifyVpcAttribute to set the VPC attributes.
--
-- Default: @true@
--
-- 'clientToken', 'createVpcEndpoint_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
--
-- 'securityGroupIds', 'createVpcEndpoint_securityGroupIds' - (Interface endpoint) The ID of one or more security groups to associate
-- with the endpoint network interface.
--
-- 'vpcEndpointType', 'createVpcEndpoint_vpcEndpointType' - The type of endpoint.
--
-- Default: Gateway
--
-- 'routeTableIds', 'createVpcEndpoint_routeTableIds' - (Gateway endpoint) One or more route table IDs.
--
-- 'dryRun', 'createVpcEndpoint_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'policyDocument', 'createVpcEndpoint_policyDocument' - (Interface and gateway endpoints) A policy to attach to the endpoint
-- that controls access to the service. The policy must be in valid JSON
-- format. If this parameter is not specified, we attach a default policy
-- that allows full access to the service.
--
-- 'tagSpecifications', 'createVpcEndpoint_tagSpecifications' - The tags to associate with the endpoint.
--
-- 'dnsOptions', 'createVpcEndpoint_dnsOptions' - The DNS options for the endpoint.
--
-- 'ipAddressType', 'createVpcEndpoint_ipAddressType' - The IP address type for the endpoint.
--
-- 'subnetIds', 'createVpcEndpoint_subnetIds' - (Interface and Gateway Load Balancer endpoints) The ID of one or more
-- subnets in which to create an endpoint network interface. For a Gateway
-- Load Balancer endpoint, you can specify one subnet only.
--
-- 'vpcId', 'createVpcEndpoint_vpcId' - The ID of the VPC in which the endpoint will be used.
--
-- 'serviceName', 'createVpcEndpoint_serviceName' - The service name. To get a list of available services, use the
-- DescribeVpcEndpointServices request, or get the name from the service
-- provider.
newCreateVpcEndpoint ::
  -- | 'vpcId'
  Prelude.Text ->
  -- | 'serviceName'
  Prelude.Text ->
  CreateVpcEndpoint
newCreateVpcEndpoint pVpcId_ pServiceName_ =
  CreateVpcEndpoint'
    { privateDnsEnabled =
        Prelude.Nothing,
      clientToken = Prelude.Nothing,
      securityGroupIds = Prelude.Nothing,
      vpcEndpointType = Prelude.Nothing,
      routeTableIds = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      policyDocument = Prelude.Nothing,
      tagSpecifications = Prelude.Nothing,
      dnsOptions = Prelude.Nothing,
      ipAddressType = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      vpcId = pVpcId_,
      serviceName = pServiceName_
    }

-- | (Interface endpoint) Indicates whether to associate a private hosted
-- zone with the specified VPC. The private hosted zone contains a record
-- set for the default public DNS name for the service for the Region (for
-- example, @kinesis.us-east-1.amazonaws.com@), which resolves to the
-- private IP addresses of the endpoint network interfaces in the VPC. This
-- enables you to make requests to the default public DNS name for the
-- service instead of the public DNS names that are automatically generated
-- by the VPC endpoint service.
--
-- To use a private hosted zone, you must set the following VPC attributes
-- to @true@: @enableDnsHostnames@ and @enableDnsSupport@. Use
-- ModifyVpcAttribute to set the VPC attributes.
--
-- Default: @true@
createVpcEndpoint_privateDnsEnabled :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe Prelude.Bool)
createVpcEndpoint_privateDnsEnabled = Lens.lens (\CreateVpcEndpoint' {privateDnsEnabled} -> privateDnsEnabled) (\s@CreateVpcEndpoint' {} a -> s {privateDnsEnabled = a} :: CreateVpcEndpoint)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
createVpcEndpoint_clientToken :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe Prelude.Text)
createVpcEndpoint_clientToken = Lens.lens (\CreateVpcEndpoint' {clientToken} -> clientToken) (\s@CreateVpcEndpoint' {} a -> s {clientToken = a} :: CreateVpcEndpoint)

-- | (Interface endpoint) The ID of one or more security groups to associate
-- with the endpoint network interface.
createVpcEndpoint_securityGroupIds :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe [Prelude.Text])
createVpcEndpoint_securityGroupIds = Lens.lens (\CreateVpcEndpoint' {securityGroupIds} -> securityGroupIds) (\s@CreateVpcEndpoint' {} a -> s {securityGroupIds = a} :: CreateVpcEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The type of endpoint.
--
-- Default: Gateway
createVpcEndpoint_vpcEndpointType :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe VpcEndpointType)
createVpcEndpoint_vpcEndpointType = Lens.lens (\CreateVpcEndpoint' {vpcEndpointType} -> vpcEndpointType) (\s@CreateVpcEndpoint' {} a -> s {vpcEndpointType = a} :: CreateVpcEndpoint)

-- | (Gateway endpoint) One or more route table IDs.
createVpcEndpoint_routeTableIds :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe [Prelude.Text])
createVpcEndpoint_routeTableIds = Lens.lens (\CreateVpcEndpoint' {routeTableIds} -> routeTableIds) (\s@CreateVpcEndpoint' {} a -> s {routeTableIds = a} :: CreateVpcEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createVpcEndpoint_dryRun :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe Prelude.Bool)
createVpcEndpoint_dryRun = Lens.lens (\CreateVpcEndpoint' {dryRun} -> dryRun) (\s@CreateVpcEndpoint' {} a -> s {dryRun = a} :: CreateVpcEndpoint)

-- | (Interface and gateway endpoints) A policy to attach to the endpoint
-- that controls access to the service. The policy must be in valid JSON
-- format. If this parameter is not specified, we attach a default policy
-- that allows full access to the service.
createVpcEndpoint_policyDocument :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe Prelude.Text)
createVpcEndpoint_policyDocument = Lens.lens (\CreateVpcEndpoint' {policyDocument} -> policyDocument) (\s@CreateVpcEndpoint' {} a -> s {policyDocument = a} :: CreateVpcEndpoint)

-- | The tags to associate with the endpoint.
createVpcEndpoint_tagSpecifications :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe [TagSpecification])
createVpcEndpoint_tagSpecifications = Lens.lens (\CreateVpcEndpoint' {tagSpecifications} -> tagSpecifications) (\s@CreateVpcEndpoint' {} a -> s {tagSpecifications = a} :: CreateVpcEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The DNS options for the endpoint.
createVpcEndpoint_dnsOptions :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe DnsOptionsSpecification)
createVpcEndpoint_dnsOptions = Lens.lens (\CreateVpcEndpoint' {dnsOptions} -> dnsOptions) (\s@CreateVpcEndpoint' {} a -> s {dnsOptions = a} :: CreateVpcEndpoint)

-- | The IP address type for the endpoint.
createVpcEndpoint_ipAddressType :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe IpAddressType)
createVpcEndpoint_ipAddressType = Lens.lens (\CreateVpcEndpoint' {ipAddressType} -> ipAddressType) (\s@CreateVpcEndpoint' {} a -> s {ipAddressType = a} :: CreateVpcEndpoint)

-- | (Interface and Gateway Load Balancer endpoints) The ID of one or more
-- subnets in which to create an endpoint network interface. For a Gateway
-- Load Balancer endpoint, you can specify one subnet only.
createVpcEndpoint_subnetIds :: Lens.Lens' CreateVpcEndpoint (Prelude.Maybe [Prelude.Text])
createVpcEndpoint_subnetIds = Lens.lens (\CreateVpcEndpoint' {subnetIds} -> subnetIds) (\s@CreateVpcEndpoint' {} a -> s {subnetIds = a} :: CreateVpcEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the VPC in which the endpoint will be used.
createVpcEndpoint_vpcId :: Lens.Lens' CreateVpcEndpoint Prelude.Text
createVpcEndpoint_vpcId = Lens.lens (\CreateVpcEndpoint' {vpcId} -> vpcId) (\s@CreateVpcEndpoint' {} a -> s {vpcId = a} :: CreateVpcEndpoint)

-- | The service name. To get a list of available services, use the
-- DescribeVpcEndpointServices request, or get the name from the service
-- provider.
createVpcEndpoint_serviceName :: Lens.Lens' CreateVpcEndpoint Prelude.Text
createVpcEndpoint_serviceName = Lens.lens (\CreateVpcEndpoint' {serviceName} -> serviceName) (\s@CreateVpcEndpoint' {} a -> s {serviceName = a} :: CreateVpcEndpoint)

instance Core.AWSRequest CreateVpcEndpoint where
  type
    AWSResponse CreateVpcEndpoint =
      CreateVpcEndpointResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateVpcEndpointResponse'
            Prelude.<$> (x Core..@? "clientToken")
            Prelude.<*> (x Core..@? "vpcEndpoint")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateVpcEndpoint where
  hashWithSalt _salt CreateVpcEndpoint' {..} =
    _salt `Prelude.hashWithSalt` privateDnsEnabled
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` vpcEndpointType
      `Prelude.hashWithSalt` routeTableIds
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` policyDocument
      `Prelude.hashWithSalt` tagSpecifications
      `Prelude.hashWithSalt` dnsOptions
      `Prelude.hashWithSalt` ipAddressType
      `Prelude.hashWithSalt` subnetIds
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` serviceName

instance Prelude.NFData CreateVpcEndpoint where
  rnf CreateVpcEndpoint' {..} =
    Prelude.rnf privateDnsEnabled
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf vpcEndpointType
      `Prelude.seq` Prelude.rnf routeTableIds
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf policyDocument
      `Prelude.seq` Prelude.rnf tagSpecifications
      `Prelude.seq` Prelude.rnf dnsOptions
      `Prelude.seq` Prelude.rnf ipAddressType
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf serviceName

instance Core.ToHeaders CreateVpcEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateVpcEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateVpcEndpoint where
  toQuery CreateVpcEndpoint' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateVpcEndpoint" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "PrivateDnsEnabled" Core.=: privateDnsEnabled,
        "ClientToken" Core.=: clientToken,
        Core.toQuery
          ( Core.toQueryList "SecurityGroupId"
              Prelude.<$> securityGroupIds
          ),
        "VpcEndpointType" Core.=: vpcEndpointType,
        Core.toQuery
          ( Core.toQueryList "RouteTableId"
              Prelude.<$> routeTableIds
          ),
        "DryRun" Core.=: dryRun,
        "PolicyDocument" Core.=: policyDocument,
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Prelude.<$> tagSpecifications
          ),
        "DnsOptions" Core.=: dnsOptions,
        "IpAddressType" Core.=: ipAddressType,
        Core.toQuery
          (Core.toQueryList "SubnetId" Prelude.<$> subnetIds),
        "VpcId" Core.=: vpcId,
        "ServiceName" Core.=: serviceName
      ]

-- | Contains the output of CreateVpcEndpoint.
--
-- /See:/ 'newCreateVpcEndpointResponse' smart constructor.
data CreateVpcEndpointResponse = CreateVpcEndpointResponse'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the endpoint.
    vpcEndpoint :: Prelude.Maybe VpcEndpoint,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVpcEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createVpcEndpointResponse_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'vpcEndpoint', 'createVpcEndpointResponse_vpcEndpoint' - Information about the endpoint.
--
-- 'httpStatus', 'createVpcEndpointResponse_httpStatus' - The response's http status code.
newCreateVpcEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateVpcEndpointResponse
newCreateVpcEndpointResponse pHttpStatus_ =
  CreateVpcEndpointResponse'
    { clientToken =
        Prelude.Nothing,
      vpcEndpoint = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createVpcEndpointResponse_clientToken :: Lens.Lens' CreateVpcEndpointResponse (Prelude.Maybe Prelude.Text)
createVpcEndpointResponse_clientToken = Lens.lens (\CreateVpcEndpointResponse' {clientToken} -> clientToken) (\s@CreateVpcEndpointResponse' {} a -> s {clientToken = a} :: CreateVpcEndpointResponse)

-- | Information about the endpoint.
createVpcEndpointResponse_vpcEndpoint :: Lens.Lens' CreateVpcEndpointResponse (Prelude.Maybe VpcEndpoint)
createVpcEndpointResponse_vpcEndpoint = Lens.lens (\CreateVpcEndpointResponse' {vpcEndpoint} -> vpcEndpoint) (\s@CreateVpcEndpointResponse' {} a -> s {vpcEndpoint = a} :: CreateVpcEndpointResponse)

-- | The response's http status code.
createVpcEndpointResponse_httpStatus :: Lens.Lens' CreateVpcEndpointResponse Prelude.Int
createVpcEndpointResponse_httpStatus = Lens.lens (\CreateVpcEndpointResponse' {httpStatus} -> httpStatus) (\s@CreateVpcEndpointResponse' {} a -> s {httpStatus = a} :: CreateVpcEndpointResponse)

instance Prelude.NFData CreateVpcEndpointResponse where
  rnf CreateVpcEndpointResponse' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf vpcEndpoint
      `Prelude.seq` Prelude.rnf httpStatus

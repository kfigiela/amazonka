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
-- Module      : Amazonka.EC2.CreateFleet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches an EC2 Fleet.
--
-- You can create a single EC2 Fleet that includes multiple launch
-- specifications that vary by instance type, AMI, Availability Zone, or
-- subnet.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html EC2 Fleet>
-- in the /Amazon EC2 User Guide/.
module Amazonka.EC2.CreateFleet
  ( -- * Creating a Request
    CreateFleet (..),
    newCreateFleet,

    -- * Request Lenses
    createFleet_excessCapacityTerminationPolicy,
    createFleet_clientToken,
    createFleet_type,
    createFleet_onDemandOptions,
    createFleet_context,
    createFleet_validFrom,
    createFleet_replaceUnhealthyInstances,
    createFleet_dryRun,
    createFleet_spotOptions,
    createFleet_terminateInstancesWithExpiration,
    createFleet_validUntil,
    createFleet_tagSpecifications,
    createFleet_launchTemplateConfigs,
    createFleet_targetCapacitySpecification,

    -- * Destructuring the Response
    CreateFleetResponse (..),
    newCreateFleetResponse,

    -- * Response Lenses
    createFleetResponse_instances,
    createFleetResponse_fleetId,
    createFleetResponse_errors,
    createFleetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateFleet' smart constructor.
data CreateFleet = CreateFleet'
  { -- | Indicates whether running instances should be terminated if the total
    -- target capacity of the EC2 Fleet is decreased below the current size of
    -- the EC2 Fleet.
    excessCapacityTerminationPolicy :: Prelude.Maybe FleetExcessCapacityTerminationPolicy,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The fleet type. The default value is @maintain@.
    --
    -- -   @maintain@ - The EC2 Fleet places an asynchronous request for your
    --     desired capacity, and continues to maintain your desired Spot
    --     capacity by replenishing interrupted Spot Instances.
    --
    -- -   @request@ - The EC2 Fleet places an asynchronous one-time request
    --     for your desired capacity, but does submit Spot requests in
    --     alternative capacity pools if Spot capacity is unavailable, and does
    --     not maintain Spot capacity if Spot Instances are interrupted.
    --
    -- -   @instant@ - The EC2 Fleet places a synchronous one-time request for
    --     your desired capacity, and returns errors for any instances that
    --     could not be launched.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-request-type.html EC2 Fleet request types>
    -- in the /Amazon EC2 User Guide/.
    type' :: Prelude.Maybe FleetType,
    -- | Describes the configuration of On-Demand Instances in an EC2 Fleet.
    onDemandOptions :: Prelude.Maybe OnDemandOptionsRequest,
    -- | Reserved.
    context :: Prelude.Maybe Prelude.Text,
    -- | The start date and time of the request, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). The default is to start fulfilling
    -- the request immediately.
    validFrom :: Prelude.Maybe Core.ISO8601,
    -- | Indicates whether EC2 Fleet should replace unhealthy Spot Instances.
    -- Supported only for fleets of type @maintain@. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks EC2 Fleet health checks>
    -- in the /Amazon EC2 User Guide/.
    replaceUnhealthyInstances :: Prelude.Maybe Prelude.Bool,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Describes the configuration of Spot Instances in an EC2 Fleet.
    spotOptions :: Prelude.Maybe SpotOptionsRequest,
    -- | Indicates whether running instances should be terminated when the EC2
    -- Fleet expires.
    terminateInstancesWithExpiration :: Prelude.Maybe Prelude.Bool,
    -- | The end date and time of the request, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). At this point, no new EC2 Fleet
    -- requests are placed or able to fulfill the request. If no value is
    -- specified, the request remains until you cancel it.
    validUntil :: Prelude.Maybe Core.ISO8601,
    -- | The key-value pair for tagging the EC2 Fleet request on creation. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources Tagging your resources>.
    --
    -- If the fleet type is @instant@, specify a resource type of @fleet@ to
    -- tag the fleet or @instance@ to tag the instances at launch.
    --
    -- If the fleet type is @maintain@ or @request@, specify a resource type of
    -- @fleet@ to tag the fleet. You cannot specify a resource type of
    -- @instance@. To tag instances at launch, specify the tags in a
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template launch template>.
    tagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | The configuration for the EC2 Fleet.
    launchTemplateConfigs :: [FleetLaunchTemplateConfigRequest],
    -- | The number of units to request.
    targetCapacitySpecification :: TargetCapacitySpecificationRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excessCapacityTerminationPolicy', 'createFleet_excessCapacityTerminationPolicy' - Indicates whether running instances should be terminated if the total
-- target capacity of the EC2 Fleet is decreased below the current size of
-- the EC2 Fleet.
--
-- 'clientToken', 'createFleet_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring idempotency>.
--
-- 'type'', 'createFleet_type' - The fleet type. The default value is @maintain@.
--
-- -   @maintain@ - The EC2 Fleet places an asynchronous request for your
--     desired capacity, and continues to maintain your desired Spot
--     capacity by replenishing interrupted Spot Instances.
--
-- -   @request@ - The EC2 Fleet places an asynchronous one-time request
--     for your desired capacity, but does submit Spot requests in
--     alternative capacity pools if Spot capacity is unavailable, and does
--     not maintain Spot capacity if Spot Instances are interrupted.
--
-- -   @instant@ - The EC2 Fleet places a synchronous one-time request for
--     your desired capacity, and returns errors for any instances that
--     could not be launched.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-request-type.html EC2 Fleet request types>
-- in the /Amazon EC2 User Guide/.
--
-- 'onDemandOptions', 'createFleet_onDemandOptions' - Describes the configuration of On-Demand Instances in an EC2 Fleet.
--
-- 'context', 'createFleet_context' - Reserved.
--
-- 'validFrom', 'createFleet_validFrom' - The start date and time of the request, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). The default is to start fulfilling
-- the request immediately.
--
-- 'replaceUnhealthyInstances', 'createFleet_replaceUnhealthyInstances' - Indicates whether EC2 Fleet should replace unhealthy Spot Instances.
-- Supported only for fleets of type @maintain@. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks EC2 Fleet health checks>
-- in the /Amazon EC2 User Guide/.
--
-- 'dryRun', 'createFleet_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'spotOptions', 'createFleet_spotOptions' - Describes the configuration of Spot Instances in an EC2 Fleet.
--
-- 'terminateInstancesWithExpiration', 'createFleet_terminateInstancesWithExpiration' - Indicates whether running instances should be terminated when the EC2
-- Fleet expires.
--
-- 'validUntil', 'createFleet_validUntil' - The end date and time of the request, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). At this point, no new EC2 Fleet
-- requests are placed or able to fulfill the request. If no value is
-- specified, the request remains until you cancel it.
--
-- 'tagSpecifications', 'createFleet_tagSpecifications' - The key-value pair for tagging the EC2 Fleet request on creation. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources Tagging your resources>.
--
-- If the fleet type is @instant@, specify a resource type of @fleet@ to
-- tag the fleet or @instance@ to tag the instances at launch.
--
-- If the fleet type is @maintain@ or @request@, specify a resource type of
-- @fleet@ to tag the fleet. You cannot specify a resource type of
-- @instance@. To tag instances at launch, specify the tags in a
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template launch template>.
--
-- 'launchTemplateConfigs', 'createFleet_launchTemplateConfigs' - The configuration for the EC2 Fleet.
--
-- 'targetCapacitySpecification', 'createFleet_targetCapacitySpecification' - The number of units to request.
newCreateFleet ::
  -- | 'targetCapacitySpecification'
  TargetCapacitySpecificationRequest ->
  CreateFleet
newCreateFleet pTargetCapacitySpecification_ =
  CreateFleet'
    { excessCapacityTerminationPolicy =
        Prelude.Nothing,
      clientToken = Prelude.Nothing,
      type' = Prelude.Nothing,
      onDemandOptions = Prelude.Nothing,
      context = Prelude.Nothing,
      validFrom = Prelude.Nothing,
      replaceUnhealthyInstances = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      spotOptions = Prelude.Nothing,
      terminateInstancesWithExpiration = Prelude.Nothing,
      validUntil = Prelude.Nothing,
      tagSpecifications = Prelude.Nothing,
      launchTemplateConfigs = Prelude.mempty,
      targetCapacitySpecification =
        pTargetCapacitySpecification_
    }

-- | Indicates whether running instances should be terminated if the total
-- target capacity of the EC2 Fleet is decreased below the current size of
-- the EC2 Fleet.
createFleet_excessCapacityTerminationPolicy :: Lens.Lens' CreateFleet (Prelude.Maybe FleetExcessCapacityTerminationPolicy)
createFleet_excessCapacityTerminationPolicy = Lens.lens (\CreateFleet' {excessCapacityTerminationPolicy} -> excessCapacityTerminationPolicy) (\s@CreateFleet' {} a -> s {excessCapacityTerminationPolicy = a} :: CreateFleet)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring idempotency>.
createFleet_clientToken :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.Text)
createFleet_clientToken = Lens.lens (\CreateFleet' {clientToken} -> clientToken) (\s@CreateFleet' {} a -> s {clientToken = a} :: CreateFleet)

-- | The fleet type. The default value is @maintain@.
--
-- -   @maintain@ - The EC2 Fleet places an asynchronous request for your
--     desired capacity, and continues to maintain your desired Spot
--     capacity by replenishing interrupted Spot Instances.
--
-- -   @request@ - The EC2 Fleet places an asynchronous one-time request
--     for your desired capacity, but does submit Spot requests in
--     alternative capacity pools if Spot capacity is unavailable, and does
--     not maintain Spot capacity if Spot Instances are interrupted.
--
-- -   @instant@ - The EC2 Fleet places a synchronous one-time request for
--     your desired capacity, and returns errors for any instances that
--     could not be launched.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-request-type.html EC2 Fleet request types>
-- in the /Amazon EC2 User Guide/.
createFleet_type :: Lens.Lens' CreateFleet (Prelude.Maybe FleetType)
createFleet_type = Lens.lens (\CreateFleet' {type'} -> type') (\s@CreateFleet' {} a -> s {type' = a} :: CreateFleet)

-- | Describes the configuration of On-Demand Instances in an EC2 Fleet.
createFleet_onDemandOptions :: Lens.Lens' CreateFleet (Prelude.Maybe OnDemandOptionsRequest)
createFleet_onDemandOptions = Lens.lens (\CreateFleet' {onDemandOptions} -> onDemandOptions) (\s@CreateFleet' {} a -> s {onDemandOptions = a} :: CreateFleet)

-- | Reserved.
createFleet_context :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.Text)
createFleet_context = Lens.lens (\CreateFleet' {context} -> context) (\s@CreateFleet' {} a -> s {context = a} :: CreateFleet)

-- | The start date and time of the request, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). The default is to start fulfilling
-- the request immediately.
createFleet_validFrom :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.UTCTime)
createFleet_validFrom = Lens.lens (\CreateFleet' {validFrom} -> validFrom) (\s@CreateFleet' {} a -> s {validFrom = a} :: CreateFleet) Prelude.. Lens.mapping Core._Time

-- | Indicates whether EC2 Fleet should replace unhealthy Spot Instances.
-- Supported only for fleets of type @maintain@. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks EC2 Fleet health checks>
-- in the /Amazon EC2 User Guide/.
createFleet_replaceUnhealthyInstances :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.Bool)
createFleet_replaceUnhealthyInstances = Lens.lens (\CreateFleet' {replaceUnhealthyInstances} -> replaceUnhealthyInstances) (\s@CreateFleet' {} a -> s {replaceUnhealthyInstances = a} :: CreateFleet)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createFleet_dryRun :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.Bool)
createFleet_dryRun = Lens.lens (\CreateFleet' {dryRun} -> dryRun) (\s@CreateFleet' {} a -> s {dryRun = a} :: CreateFleet)

-- | Describes the configuration of Spot Instances in an EC2 Fleet.
createFleet_spotOptions :: Lens.Lens' CreateFleet (Prelude.Maybe SpotOptionsRequest)
createFleet_spotOptions = Lens.lens (\CreateFleet' {spotOptions} -> spotOptions) (\s@CreateFleet' {} a -> s {spotOptions = a} :: CreateFleet)

-- | Indicates whether running instances should be terminated when the EC2
-- Fleet expires.
createFleet_terminateInstancesWithExpiration :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.Bool)
createFleet_terminateInstancesWithExpiration = Lens.lens (\CreateFleet' {terminateInstancesWithExpiration} -> terminateInstancesWithExpiration) (\s@CreateFleet' {} a -> s {terminateInstancesWithExpiration = a} :: CreateFleet)

-- | The end date and time of the request, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). At this point, no new EC2 Fleet
-- requests are placed or able to fulfill the request. If no value is
-- specified, the request remains until you cancel it.
createFleet_validUntil :: Lens.Lens' CreateFleet (Prelude.Maybe Prelude.UTCTime)
createFleet_validUntil = Lens.lens (\CreateFleet' {validUntil} -> validUntil) (\s@CreateFleet' {} a -> s {validUntil = a} :: CreateFleet) Prelude.. Lens.mapping Core._Time

-- | The key-value pair for tagging the EC2 Fleet request on creation. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources Tagging your resources>.
--
-- If the fleet type is @instant@, specify a resource type of @fleet@ to
-- tag the fleet or @instance@ to tag the instances at launch.
--
-- If the fleet type is @maintain@ or @request@, specify a resource type of
-- @fleet@ to tag the fleet. You cannot specify a resource type of
-- @instance@. To tag instances at launch, specify the tags in a
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template launch template>.
createFleet_tagSpecifications :: Lens.Lens' CreateFleet (Prelude.Maybe [TagSpecification])
createFleet_tagSpecifications = Lens.lens (\CreateFleet' {tagSpecifications} -> tagSpecifications) (\s@CreateFleet' {} a -> s {tagSpecifications = a} :: CreateFleet) Prelude.. Lens.mapping Lens.coerced

-- | The configuration for the EC2 Fleet.
createFleet_launchTemplateConfigs :: Lens.Lens' CreateFleet [FleetLaunchTemplateConfigRequest]
createFleet_launchTemplateConfigs = Lens.lens (\CreateFleet' {launchTemplateConfigs} -> launchTemplateConfigs) (\s@CreateFleet' {} a -> s {launchTemplateConfigs = a} :: CreateFleet) Prelude.. Lens.coerced

-- | The number of units to request.
createFleet_targetCapacitySpecification :: Lens.Lens' CreateFleet TargetCapacitySpecificationRequest
createFleet_targetCapacitySpecification = Lens.lens (\CreateFleet' {targetCapacitySpecification} -> targetCapacitySpecification) (\s@CreateFleet' {} a -> s {targetCapacitySpecification = a} :: CreateFleet)

instance Core.AWSRequest CreateFleet where
  type AWSResponse CreateFleet = CreateFleetResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateFleetResponse'
            Prelude.<$> ( x Core..@? "fleetInstanceSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "fleetId")
            Prelude.<*> ( x Core..@? "errorSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFleet where
  hashWithSalt _salt CreateFleet' {..} =
    _salt
      `Prelude.hashWithSalt` excessCapacityTerminationPolicy
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` onDemandOptions
      `Prelude.hashWithSalt` context
      `Prelude.hashWithSalt` validFrom
      `Prelude.hashWithSalt` replaceUnhealthyInstances
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` spotOptions
      `Prelude.hashWithSalt` terminateInstancesWithExpiration
      `Prelude.hashWithSalt` validUntil
      `Prelude.hashWithSalt` tagSpecifications
      `Prelude.hashWithSalt` launchTemplateConfigs
      `Prelude.hashWithSalt` targetCapacitySpecification

instance Prelude.NFData CreateFleet where
  rnf CreateFleet' {..} =
    Prelude.rnf excessCapacityTerminationPolicy
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf onDemandOptions
      `Prelude.seq` Prelude.rnf context
      `Prelude.seq` Prelude.rnf validFrom
      `Prelude.seq` Prelude.rnf replaceUnhealthyInstances
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf spotOptions
      `Prelude.seq` Prelude.rnf terminateInstancesWithExpiration
      `Prelude.seq` Prelude.rnf validUntil
      `Prelude.seq` Prelude.rnf tagSpecifications
      `Prelude.seq` Prelude.rnf launchTemplateConfigs
      `Prelude.seq` Prelude.rnf targetCapacitySpecification

instance Core.ToHeaders CreateFleet where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateFleet where
  toQuery CreateFleet' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateFleet" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "ExcessCapacityTerminationPolicy"
          Core.=: excessCapacityTerminationPolicy,
        "ClientToken" Core.=: clientToken,
        "Type" Core.=: type',
        "OnDemandOptions" Core.=: onDemandOptions,
        "Context" Core.=: context,
        "ValidFrom" Core.=: validFrom,
        "ReplaceUnhealthyInstances"
          Core.=: replaceUnhealthyInstances,
        "DryRun" Core.=: dryRun,
        "SpotOptions" Core.=: spotOptions,
        "TerminateInstancesWithExpiration"
          Core.=: terminateInstancesWithExpiration,
        "ValidUntil" Core.=: validUntil,
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Prelude.<$> tagSpecifications
          ),
        Core.toQueryList
          "LaunchTemplateConfigs"
          launchTemplateConfigs,
        "TargetCapacitySpecification"
          Core.=: targetCapacitySpecification
      ]

-- | /See:/ 'newCreateFleetResponse' smart constructor.
data CreateFleetResponse = CreateFleetResponse'
  { -- | Information about the instances that were launched by the fleet.
    -- Supported only for fleets of type @instant@.
    instances :: Prelude.Maybe [CreateFleetInstance],
    -- | The ID of the EC2 Fleet.
    fleetId :: Prelude.Maybe Prelude.Text,
    -- | Information about the instances that could not be launched by the fleet.
    -- Supported only for fleets of type @instant@.
    errors :: Prelude.Maybe [CreateFleetError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instances', 'createFleetResponse_instances' - Information about the instances that were launched by the fleet.
-- Supported only for fleets of type @instant@.
--
-- 'fleetId', 'createFleetResponse_fleetId' - The ID of the EC2 Fleet.
--
-- 'errors', 'createFleetResponse_errors' - Information about the instances that could not be launched by the fleet.
-- Supported only for fleets of type @instant@.
--
-- 'httpStatus', 'createFleetResponse_httpStatus' - The response's http status code.
newCreateFleetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFleetResponse
newCreateFleetResponse pHttpStatus_ =
  CreateFleetResponse'
    { instances = Prelude.Nothing,
      fleetId = Prelude.Nothing,
      errors = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the instances that were launched by the fleet.
-- Supported only for fleets of type @instant@.
createFleetResponse_instances :: Lens.Lens' CreateFleetResponse (Prelude.Maybe [CreateFleetInstance])
createFleetResponse_instances = Lens.lens (\CreateFleetResponse' {instances} -> instances) (\s@CreateFleetResponse' {} a -> s {instances = a} :: CreateFleetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the EC2 Fleet.
createFleetResponse_fleetId :: Lens.Lens' CreateFleetResponse (Prelude.Maybe Prelude.Text)
createFleetResponse_fleetId = Lens.lens (\CreateFleetResponse' {fleetId} -> fleetId) (\s@CreateFleetResponse' {} a -> s {fleetId = a} :: CreateFleetResponse)

-- | Information about the instances that could not be launched by the fleet.
-- Supported only for fleets of type @instant@.
createFleetResponse_errors :: Lens.Lens' CreateFleetResponse (Prelude.Maybe [CreateFleetError])
createFleetResponse_errors = Lens.lens (\CreateFleetResponse' {errors} -> errors) (\s@CreateFleetResponse' {} a -> s {errors = a} :: CreateFleetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createFleetResponse_httpStatus :: Lens.Lens' CreateFleetResponse Prelude.Int
createFleetResponse_httpStatus = Lens.lens (\CreateFleetResponse' {httpStatus} -> httpStatus) (\s@CreateFleetResponse' {} a -> s {httpStatus = a} :: CreateFleetResponse)

instance Prelude.NFData CreateFleetResponse where
  rnf CreateFleetResponse' {..} =
    Prelude.rnf instances
      `Prelude.seq` Prelude.rnf fleetId
      `Prelude.seq` Prelude.rnf errors
      `Prelude.seq` Prelude.rnf httpStatus

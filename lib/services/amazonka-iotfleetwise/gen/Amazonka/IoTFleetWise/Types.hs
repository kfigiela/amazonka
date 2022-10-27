{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoTFleetWise.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _DecoderManifestValidationException,
    _InternalServerException,
    _InvalidSignalsException,
    _ResourceNotFoundException,
    _LimitExceededException,
    _ConflictException,
    _ThrottlingException,
    _InvalidNodeException,
    _ValidationException,

    -- * CampaignStatus
    CampaignStatus (..),

    -- * Compression
    Compression (..),

    -- * DiagnosticsMode
    DiagnosticsMode (..),

    -- * LogType
    LogType (..),

    -- * ManifestStatus
    ManifestStatus (..),

    -- * NetworkInterfaceType
    NetworkInterfaceType (..),

    -- * NodeDataType
    NodeDataType (..),

    -- * RegistrationStatus
    RegistrationStatus (..),

    -- * SignalDecoderType
    SignalDecoderType (..),

    -- * SpoolingMode
    SpoolingMode (..),

    -- * TriggerMode
    TriggerMode (..),

    -- * UpdateCampaignAction
    UpdateCampaignAction (..),

    -- * UpdateMode
    UpdateMode (..),

    -- * VehicleAssociationBehavior
    VehicleAssociationBehavior (..),

    -- * VehicleState
    VehicleState (..),

    -- * Actuator
    Actuator (..),
    newActuator,
    actuator_max,
    actuator_description,
    actuator_min,
    actuator_assignedValue,
    actuator_allowedValues,
    actuator_unit,
    actuator_fullyQualifiedName,
    actuator_dataType,

    -- * Attribute
    Attribute (..),
    newAttribute,
    attribute_max,
    attribute_defaultValue,
    attribute_description,
    attribute_min,
    attribute_assignedValue,
    attribute_allowedValues,
    attribute_unit,
    attribute_fullyQualifiedName,
    attribute_dataType,

    -- * Branch
    Branch (..),
    newBranch,
    branch_description,
    branch_fullyQualifiedName,

    -- * CampaignSummary
    CampaignSummary (..),
    newCampaignSummary,
    campaignSummary_name,
    campaignSummary_targetArn,
    campaignSummary_arn,
    campaignSummary_status,
    campaignSummary_description,
    campaignSummary_signalCatalogArn,
    campaignSummary_creationTime,
    campaignSummary_lastModificationTime,

    -- * CanDbcDefinition
    CanDbcDefinition (..),
    newCanDbcDefinition,
    canDbcDefinition_signalsMap,
    canDbcDefinition_networkInterface,
    canDbcDefinition_canDbcFiles,

    -- * CanInterface
    CanInterface (..),
    newCanInterface,
    canInterface_protocolName,
    canInterface_protocolVersion,
    canInterface_name,

    -- * CanSignal
    CanSignal (..),
    newCanSignal,
    canSignal_name,
    canSignal_messageId,
    canSignal_isBigEndian,
    canSignal_isSigned,
    canSignal_startBit,
    canSignal_offset,
    canSignal_factor,
    canSignal_length,

    -- * CloudWatchLogDeliveryOptions
    CloudWatchLogDeliveryOptions (..),
    newCloudWatchLogDeliveryOptions,
    cloudWatchLogDeliveryOptions_logGroupName,
    cloudWatchLogDeliveryOptions_logType,

    -- * CollectionScheme
    CollectionScheme (..),
    newCollectionScheme,
    collectionScheme_timeBasedCollectionScheme,
    collectionScheme_conditionBasedCollectionScheme,

    -- * ConditionBasedCollectionScheme
    ConditionBasedCollectionScheme (..),
    newConditionBasedCollectionScheme,
    conditionBasedCollectionScheme_conditionLanguageVersion,
    conditionBasedCollectionScheme_minimumTriggerIntervalMs,
    conditionBasedCollectionScheme_triggerMode,
    conditionBasedCollectionScheme_expression,

    -- * CreateVehicleError
    CreateVehicleError (..),
    newCreateVehicleError,
    createVehicleError_message,
    createVehicleError_code,
    createVehicleError_vehicleName,

    -- * CreateVehicleRequestItem
    CreateVehicleRequestItem (..),
    newCreateVehicleRequestItem,
    createVehicleRequestItem_tags,
    createVehicleRequestItem_attributes,
    createVehicleRequestItem_associationBehavior,
    createVehicleRequestItem_vehicleName,
    createVehicleRequestItem_modelManifestArn,
    createVehicleRequestItem_decoderManifestArn,

    -- * CreateVehicleResponseItem
    CreateVehicleResponseItem (..),
    newCreateVehicleResponseItem,
    createVehicleResponseItem_thingArn,
    createVehicleResponseItem_arn,
    createVehicleResponseItem_vehicleName,

    -- * DecoderManifestSummary
    DecoderManifestSummary (..),
    newDecoderManifestSummary,
    decoderManifestSummary_name,
    decoderManifestSummary_modelManifestArn,
    decoderManifestSummary_arn,
    decoderManifestSummary_status,
    decoderManifestSummary_description,
    decoderManifestSummary_creationTime,
    decoderManifestSummary_lastModificationTime,

    -- * FleetSummary
    FleetSummary (..),
    newFleetSummary,
    fleetSummary_lastModificationTime,
    fleetSummary_description,
    fleetSummary_id,
    fleetSummary_arn,
    fleetSummary_signalCatalogArn,
    fleetSummary_creationTime,

    -- * FormattedVss
    FormattedVss (..),
    newFormattedVss,
    formattedVss_vssJson,

    -- * IamRegistrationResponse
    IamRegistrationResponse (..),
    newIamRegistrationResponse,
    iamRegistrationResponse_errorMessage,
    iamRegistrationResponse_roleArn,
    iamRegistrationResponse_registrationStatus,

    -- * IamResources
    IamResources (..),
    newIamResources,
    iamResources_roleArn,

    -- * ModelManifestSummary
    ModelManifestSummary (..),
    newModelManifestSummary,
    modelManifestSummary_name,
    modelManifestSummary_arn,
    modelManifestSummary_status,
    modelManifestSummary_description,
    modelManifestSummary_signalCatalogArn,
    modelManifestSummary_creationTime,
    modelManifestSummary_lastModificationTime,

    -- * NetworkFileDefinition
    NetworkFileDefinition (..),
    newNetworkFileDefinition,
    networkFileDefinition_canDbc,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,
    networkInterface_obdInterface,
    networkInterface_canInterface,
    networkInterface_interfaceId,
    networkInterface_type,

    -- * Node
    Node (..),
    newNode,
    node_branch,
    node_attribute,
    node_actuator,
    node_sensor,

    -- * NodeCounts
    NodeCounts (..),
    newNodeCounts,
    nodeCounts_totalSensors,
    nodeCounts_totalNodes,
    nodeCounts_totalActuators,
    nodeCounts_totalAttributes,
    nodeCounts_totalBranches,

    -- * ObdInterface
    ObdInterface (..),
    newObdInterface,
    obdInterface_pidRequestIntervalSeconds,
    obdInterface_obdStandard,
    obdInterface_hasTransmissionEcu,
    obdInterface_useExtendedIds,
    obdInterface_dtcRequestIntervalSeconds,
    obdInterface_name,
    obdInterface_requestMessageId,

    -- * ObdSignal
    ObdSignal (..),
    newObdSignal,
    obdSignal_bitMaskLength,
    obdSignal_bitRightShift,
    obdSignal_pidResponseLength,
    obdSignal_serviceMode,
    obdSignal_pid,
    obdSignal_scaling,
    obdSignal_offset,
    obdSignal_startByte,
    obdSignal_byteLength,

    -- * Sensor
    Sensor (..),
    newSensor,
    sensor_max,
    sensor_description,
    sensor_min,
    sensor_allowedValues,
    sensor_unit,
    sensor_fullyQualifiedName,
    sensor_dataType,

    -- * SignalCatalogSummary
    SignalCatalogSummary (..),
    newSignalCatalogSummary,
    signalCatalogSummary_lastModificationTime,
    signalCatalogSummary_name,
    signalCatalogSummary_arn,
    signalCatalogSummary_creationTime,

    -- * SignalDecoder
    SignalDecoder (..),
    newSignalDecoder,
    signalDecoder_canSignal,
    signalDecoder_obdSignal,
    signalDecoder_fullyQualifiedName,
    signalDecoder_type,
    signalDecoder_interfaceId,

    -- * SignalInformation
    SignalInformation (..),
    newSignalInformation,
    signalInformation_minimumSamplingIntervalMs,
    signalInformation_maxSampleCount,
    signalInformation_name,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TimeBasedCollectionScheme
    TimeBasedCollectionScheme (..),
    newTimeBasedCollectionScheme,
    timeBasedCollectionScheme_periodMs,

    -- * TimestreamRegistrationResponse
    TimestreamRegistrationResponse (..),
    newTimestreamRegistrationResponse,
    timestreamRegistrationResponse_errorMessage,
    timestreamRegistrationResponse_timestreamTableArn,
    timestreamRegistrationResponse_timestreamDatabaseArn,
    timestreamRegistrationResponse_timestreamDatabaseName,
    timestreamRegistrationResponse_timestreamTableName,
    timestreamRegistrationResponse_registrationStatus,

    -- * TimestreamResources
    TimestreamResources (..),
    newTimestreamResources,
    timestreamResources_timestreamDatabaseName,
    timestreamResources_timestreamTableName,

    -- * UpdateVehicleError
    UpdateVehicleError (..),
    newUpdateVehicleError,
    updateVehicleError_message,
    updateVehicleError_code,
    updateVehicleError_vehicleName,

    -- * UpdateVehicleRequestItem
    UpdateVehicleRequestItem (..),
    newUpdateVehicleRequestItem,
    updateVehicleRequestItem_modelManifestArn,
    updateVehicleRequestItem_attributes,
    updateVehicleRequestItem_decoderManifestArn,
    updateVehicleRequestItem_attributeUpdateMode,
    updateVehicleRequestItem_vehicleName,

    -- * UpdateVehicleResponseItem
    UpdateVehicleResponseItem (..),
    newUpdateVehicleResponseItem,
    updateVehicleResponseItem_arn,
    updateVehicleResponseItem_vehicleName,

    -- * VehicleStatus
    VehicleStatus (..),
    newVehicleStatus,
    vehicleStatus_campaignName,
    vehicleStatus_status,
    vehicleStatus_vehicleName,

    -- * VehicleSummary
    VehicleSummary (..),
    newVehicleSummary,
    vehicleSummary_vehicleName,
    vehicleSummary_arn,
    vehicleSummary_modelManifestArn,
    vehicleSummary_decoderManifestArn,
    vehicleSummary_creationTime,
    vehicleSummary_lastModificationTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types.Actuator
import Amazonka.IoTFleetWise.Types.Attribute
import Amazonka.IoTFleetWise.Types.Branch
import Amazonka.IoTFleetWise.Types.CampaignStatus
import Amazonka.IoTFleetWise.Types.CampaignSummary
import Amazonka.IoTFleetWise.Types.CanDbcDefinition
import Amazonka.IoTFleetWise.Types.CanInterface
import Amazonka.IoTFleetWise.Types.CanSignal
import Amazonka.IoTFleetWise.Types.CloudWatchLogDeliveryOptions
import Amazonka.IoTFleetWise.Types.CollectionScheme
import Amazonka.IoTFleetWise.Types.Compression
import Amazonka.IoTFleetWise.Types.ConditionBasedCollectionScheme
import Amazonka.IoTFleetWise.Types.CreateVehicleError
import Amazonka.IoTFleetWise.Types.CreateVehicleRequestItem
import Amazonka.IoTFleetWise.Types.CreateVehicleResponseItem
import Amazonka.IoTFleetWise.Types.DecoderManifestSummary
import Amazonka.IoTFleetWise.Types.DiagnosticsMode
import Amazonka.IoTFleetWise.Types.FleetSummary
import Amazonka.IoTFleetWise.Types.FormattedVss
import Amazonka.IoTFleetWise.Types.IamRegistrationResponse
import Amazonka.IoTFleetWise.Types.IamResources
import Amazonka.IoTFleetWise.Types.LogType
import Amazonka.IoTFleetWise.Types.ManifestStatus
import Amazonka.IoTFleetWise.Types.ModelManifestSummary
import Amazonka.IoTFleetWise.Types.NetworkFileDefinition
import Amazonka.IoTFleetWise.Types.NetworkInterface
import Amazonka.IoTFleetWise.Types.NetworkInterfaceType
import Amazonka.IoTFleetWise.Types.Node
import Amazonka.IoTFleetWise.Types.NodeCounts
import Amazonka.IoTFleetWise.Types.NodeDataType
import Amazonka.IoTFleetWise.Types.ObdInterface
import Amazonka.IoTFleetWise.Types.ObdSignal
import Amazonka.IoTFleetWise.Types.RegistrationStatus
import Amazonka.IoTFleetWise.Types.Sensor
import Amazonka.IoTFleetWise.Types.SignalCatalogSummary
import Amazonka.IoTFleetWise.Types.SignalDecoder
import Amazonka.IoTFleetWise.Types.SignalDecoderType
import Amazonka.IoTFleetWise.Types.SignalInformation
import Amazonka.IoTFleetWise.Types.SpoolingMode
import Amazonka.IoTFleetWise.Types.Tag
import Amazonka.IoTFleetWise.Types.TimeBasedCollectionScheme
import Amazonka.IoTFleetWise.Types.TimestreamRegistrationResponse
import Amazonka.IoTFleetWise.Types.TimestreamResources
import Amazonka.IoTFleetWise.Types.TriggerMode
import Amazonka.IoTFleetWise.Types.UpdateCampaignAction
import Amazonka.IoTFleetWise.Types.UpdateMode
import Amazonka.IoTFleetWise.Types.UpdateVehicleError
import Amazonka.IoTFleetWise.Types.UpdateVehicleRequestItem
import Amazonka.IoTFleetWise.Types.UpdateVehicleResponseItem
import Amazonka.IoTFleetWise.Types.VehicleAssociationBehavior
import Amazonka.IoTFleetWise.Types.VehicleState
import Amazonka.IoTFleetWise.Types.VehicleStatus
import Amazonka.IoTFleetWise.Types.VehicleSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-06-17@ of the Amazon IoT FleetWise SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "IoTFleetWise",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "iotfleetwise",
      Core._serviceSigningName = "iotfleetwise",
      Core._serviceVersion = "2021-06-17",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "IoTFleetWise",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | You don\'t have sufficient permission to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | The request couldn\'t be completed because it contains signal decoders
-- with one or more validation errors.
_DecoderManifestValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DecoderManifestValidationException =
  Core._MatchServiceError
    defaultService
    "DecoderManifestValidationException"

-- | The request couldn\'t be completed because the server temporarily
-- failed.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | The request couldn\'t be completed because it contains signals that
-- aren\'t valid.
_InvalidSignalsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSignalsException =
  Core._MatchServiceError
    defaultService
    "InvalidSignalsException"

-- | The resource wasn\'t found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | A service quota was exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The request has conflicting operations. This can occur if you\'re trying
-- to perform more than one operation on the same resource at the same
-- time.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The request couldn\'t be completed due to throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The specified node type doesn\'t match the expected node type for a
-- node. You can specify the node type as branch, sensor, actuator, or
-- attribute.
_InvalidNodeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNodeException =
  Core._MatchServiceError
    defaultService
    "InvalidNodeException"

-- | The input fails to satisfy the constraints specified by an Amazon Web
-- Services service.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GroundStation.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceNotFoundException,
    _ResourceLimitExceededException,
    _DependencyException,
    _InvalidParameterException,

    -- * AngleUnits
    AngleUnits (..),

    -- * BandwidthUnits
    BandwidthUnits (..),

    -- * ConfigCapabilityType
    ConfigCapabilityType (..),

    -- * ContactStatus
    ContactStatus (..),

    -- * Criticality
    Criticality (..),

    -- * EirpUnits
    EirpUnits (..),

    -- * EndpointStatus
    EndpointStatus (..),

    -- * FrequencyUnits
    FrequencyUnits (..),

    -- * Polarization
    Polarization (..),

    -- * AntennaDemodDecodeDetails
    AntennaDemodDecodeDetails (..),
    newAntennaDemodDecodeDetails,
    antennaDemodDecodeDetails_outputNode,

    -- * AntennaDownlinkConfig
    AntennaDownlinkConfig (..),
    newAntennaDownlinkConfig,
    antennaDownlinkConfig_spectrumConfig,

    -- * AntennaDownlinkDemodDecodeConfig
    AntennaDownlinkDemodDecodeConfig (..),
    newAntennaDownlinkDemodDecodeConfig,
    antennaDownlinkDemodDecodeConfig_decodeConfig,
    antennaDownlinkDemodDecodeConfig_demodulationConfig,
    antennaDownlinkDemodDecodeConfig_spectrumConfig,

    -- * AntennaUplinkConfig
    AntennaUplinkConfig (..),
    newAntennaUplinkConfig,
    antennaUplinkConfig_transmitDisabled,
    antennaUplinkConfig_spectrumConfig,
    antennaUplinkConfig_targetEirp,

    -- * ConfigDetails
    ConfigDetails (..),
    newConfigDetails,
    configDetails_endpointDetails,
    configDetails_s3RecordingDetails,
    configDetails_antennaDemodDecodeDetails,

    -- * ConfigIdResponse
    ConfigIdResponse (..),
    newConfigIdResponse,
    configIdResponse_configId,
    configIdResponse_configType,
    configIdResponse_configArn,

    -- * ConfigListItem
    ConfigListItem (..),
    newConfigListItem,
    configListItem_name,
    configListItem_configId,
    configListItem_configType,
    configListItem_configArn,

    -- * ConfigTypeData
    ConfigTypeData (..),
    newConfigTypeData,
    configTypeData_trackingConfig,
    configTypeData_dataflowEndpointConfig,
    configTypeData_uplinkEchoConfig,
    configTypeData_antennaDownlinkConfig,
    configTypeData_antennaDownlinkDemodDecodeConfig,
    configTypeData_antennaUplinkConfig,
    configTypeData_s3RecordingConfig,

    -- * ContactData
    ContactData (..),
    newContactData,
    contactData_tags,
    contactData_missionProfileArn,
    contactData_contactId,
    contactData_errorMessage,
    contactData_postPassEndTime,
    contactData_satelliteArn,
    contactData_contactStatus,
    contactData_endTime,
    contactData_region,
    contactData_prePassStartTime,
    contactData_groundStation,
    contactData_startTime,
    contactData_maximumElevation,

    -- * ContactIdResponse
    ContactIdResponse (..),
    newContactIdResponse,
    contactIdResponse_contactId,

    -- * DataflowDetail
    DataflowDetail (..),
    newDataflowDetail,
    dataflowDetail_destination,
    dataflowDetail_errorMessage,
    dataflowDetail_source,

    -- * DataflowEndpoint
    DataflowEndpoint (..),
    newDataflowEndpoint,
    dataflowEndpoint_name,
    dataflowEndpoint_status,
    dataflowEndpoint_address,
    dataflowEndpoint_mtu,

    -- * DataflowEndpointConfig
    DataflowEndpointConfig (..),
    newDataflowEndpointConfig,
    dataflowEndpointConfig_dataflowEndpointRegion,
    dataflowEndpointConfig_dataflowEndpointName,

    -- * DataflowEndpointGroupIdResponse
    DataflowEndpointGroupIdResponse (..),
    newDataflowEndpointGroupIdResponse,
    dataflowEndpointGroupIdResponse_dataflowEndpointGroupId,

    -- * DataflowEndpointListItem
    DataflowEndpointListItem (..),
    newDataflowEndpointListItem,
    dataflowEndpointListItem_dataflowEndpointGroupArn,
    dataflowEndpointListItem_dataflowEndpointGroupId,

    -- * DecodeConfig
    DecodeConfig (..),
    newDecodeConfig,
    decodeConfig_unvalidatedJSON,

    -- * DemodulationConfig
    DemodulationConfig (..),
    newDemodulationConfig,
    demodulationConfig_unvalidatedJSON,

    -- * Destination
    Destination (..),
    newDestination,
    destination_dataflowDestinationRegion,
    destination_configId,
    destination_configDetails,
    destination_configType,

    -- * Eirp
    Eirp (..),
    newEirp,
    eirp_units,
    eirp_value,

    -- * Elevation
    Elevation (..),
    newElevation,
    elevation_unit,
    elevation_value,

    -- * EndpointDetails
    EndpointDetails (..),
    newEndpointDetails,
    endpointDetails_endpoint,
    endpointDetails_securityDetails,

    -- * Frequency
    Frequency (..),
    newFrequency,
    frequency_units,
    frequency_value,

    -- * FrequencyBandwidth
    FrequencyBandwidth (..),
    newFrequencyBandwidth,
    frequencyBandwidth_units,
    frequencyBandwidth_value,

    -- * GroundStationData
    GroundStationData (..),
    newGroundStationData,
    groundStationData_groundStationName,
    groundStationData_region,
    groundStationData_groundStationId,

    -- * MissionProfileIdResponse
    MissionProfileIdResponse (..),
    newMissionProfileIdResponse,
    missionProfileIdResponse_missionProfileId,

    -- * MissionProfileListItem
    MissionProfileListItem (..),
    newMissionProfileListItem,
    missionProfileListItem_missionProfileArn,
    missionProfileListItem_name,
    missionProfileListItem_missionProfileId,
    missionProfileListItem_region,

    -- * S3RecordingConfig
    S3RecordingConfig (..),
    newS3RecordingConfig,
    s3RecordingConfig_prefix,
    s3RecordingConfig_bucketArn,
    s3RecordingConfig_roleArn,

    -- * S3RecordingDetails
    S3RecordingDetails (..),
    newS3RecordingDetails,
    s3RecordingDetails_keyTemplate,
    s3RecordingDetails_bucketArn,

    -- * SatelliteListItem
    SatelliteListItem (..),
    newSatelliteListItem,
    satelliteListItem_satelliteArn,
    satelliteListItem_satelliteId,
    satelliteListItem_noradSatelliteID,
    satelliteListItem_groundStations,

    -- * SecurityDetails
    SecurityDetails (..),
    newSecurityDetails,
    securityDetails_roleArn,
    securityDetails_securityGroupIds,
    securityDetails_subnetIds,

    -- * SocketAddress
    SocketAddress (..),
    newSocketAddress,
    socketAddress_name,
    socketAddress_port,

    -- * Source
    Source (..),
    newSource,
    source_dataflowSourceRegion,
    source_configId,
    source_configDetails,
    source_configType,

    -- * SpectrumConfig
    SpectrumConfig (..),
    newSpectrumConfig,
    spectrumConfig_polarization,
    spectrumConfig_bandwidth,
    spectrumConfig_centerFrequency,

    -- * TrackingConfig
    TrackingConfig (..),
    newTrackingConfig,
    trackingConfig_autotrack,

    -- * UplinkEchoConfig
    UplinkEchoConfig (..),
    newUplinkEchoConfig,
    uplinkEchoConfig_antennaUplinkConfigArn,
    uplinkEchoConfig_enabled,

    -- * UplinkSpectrumConfig
    UplinkSpectrumConfig (..),
    newUplinkSpectrumConfig,
    uplinkSpectrumConfig_polarization,
    uplinkSpectrumConfig_centerFrequency,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GroundStation.Types.AngleUnits
import Amazonka.GroundStation.Types.AntennaDemodDecodeDetails
import Amazonka.GroundStation.Types.AntennaDownlinkConfig
import Amazonka.GroundStation.Types.AntennaDownlinkDemodDecodeConfig
import Amazonka.GroundStation.Types.AntennaUplinkConfig
import Amazonka.GroundStation.Types.BandwidthUnits
import Amazonka.GroundStation.Types.ConfigCapabilityType
import Amazonka.GroundStation.Types.ConfigDetails
import Amazonka.GroundStation.Types.ConfigIdResponse
import Amazonka.GroundStation.Types.ConfigListItem
import Amazonka.GroundStation.Types.ConfigTypeData
import Amazonka.GroundStation.Types.ContactData
import Amazonka.GroundStation.Types.ContactIdResponse
import Amazonka.GroundStation.Types.ContactStatus
import Amazonka.GroundStation.Types.Criticality
import Amazonka.GroundStation.Types.DataflowDetail
import Amazonka.GroundStation.Types.DataflowEndpoint
import Amazonka.GroundStation.Types.DataflowEndpointConfig
import Amazonka.GroundStation.Types.DataflowEndpointGroupIdResponse
import Amazonka.GroundStation.Types.DataflowEndpointListItem
import Amazonka.GroundStation.Types.DecodeConfig
import Amazonka.GroundStation.Types.DemodulationConfig
import Amazonka.GroundStation.Types.Destination
import Amazonka.GroundStation.Types.Eirp
import Amazonka.GroundStation.Types.EirpUnits
import Amazonka.GroundStation.Types.Elevation
import Amazonka.GroundStation.Types.EndpointDetails
import Amazonka.GroundStation.Types.EndpointStatus
import Amazonka.GroundStation.Types.Frequency
import Amazonka.GroundStation.Types.FrequencyBandwidth
import Amazonka.GroundStation.Types.FrequencyUnits
import Amazonka.GroundStation.Types.GroundStationData
import Amazonka.GroundStation.Types.MissionProfileIdResponse
import Amazonka.GroundStation.Types.MissionProfileListItem
import Amazonka.GroundStation.Types.Polarization
import Amazonka.GroundStation.Types.S3RecordingConfig
import Amazonka.GroundStation.Types.S3RecordingDetails
import Amazonka.GroundStation.Types.SatelliteListItem
import Amazonka.GroundStation.Types.SecurityDetails
import Amazonka.GroundStation.Types.SocketAddress
import Amazonka.GroundStation.Types.Source
import Amazonka.GroundStation.Types.SpectrumConfig
import Amazonka.GroundStation.Types.TrackingConfig
import Amazonka.GroundStation.Types.UplinkEchoConfig
import Amazonka.GroundStation.Types.UplinkSpectrumConfig
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-05-23@ of the Amazon Ground Station SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "GroundStation",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "groundstation",
      Core._serviceSigningName = "groundstation",
      Core._serviceVersion = "2019-05-23",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "GroundStation",
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

-- | Resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 434

-- | Account limits for this resource have been exceeded.
_ResourceLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ResourceLimitExceededException"
    Prelude.. Core.hasStatus 429

-- | Dependency encountered an error.
_DependencyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DependencyException =
  Core._MatchServiceError
    defaultService
    "DependencyException"
    Prelude.. Core.hasStatus 531

-- | One or more parameters are not valid.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"
    Prelude.. Core.hasStatus 431

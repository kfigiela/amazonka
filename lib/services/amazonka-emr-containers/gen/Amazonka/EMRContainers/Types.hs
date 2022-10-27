{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMRContainers.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRContainers.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerException,
    _ResourceNotFoundException,
    _ValidationException,

    -- * ContainerProviderType
    ContainerProviderType (..),

    -- * EndpointState
    EndpointState (..),

    -- * FailureReason
    FailureReason (..),

    -- * JobRunState
    JobRunState (..),

    -- * PersistentAppUI
    PersistentAppUI (..),

    -- * VirtualClusterState
    VirtualClusterState (..),

    -- * Certificate
    Certificate (..),
    newCertificate,
    certificate_certificateArn,
    certificate_certificateData,

    -- * CloudWatchMonitoringConfiguration
    CloudWatchMonitoringConfiguration (..),
    newCloudWatchMonitoringConfiguration,
    cloudWatchMonitoringConfiguration_logStreamNamePrefix,
    cloudWatchMonitoringConfiguration_logGroupName,

    -- * Configuration
    Configuration (..),
    newConfiguration,
    configuration_properties,
    configuration_configurations,
    configuration_classification,

    -- * ConfigurationOverrides
    ConfigurationOverrides (..),
    newConfigurationOverrides,
    configurationOverrides_applicationConfiguration,
    configurationOverrides_monitoringConfiguration,

    -- * ContainerInfo
    ContainerInfo (..),
    newContainerInfo,
    containerInfo_eksInfo,

    -- * ContainerProvider
    ContainerProvider (..),
    newContainerProvider,
    containerProvider_info,
    containerProvider_type,
    containerProvider_id,

    -- * EksInfo
    EksInfo (..),
    newEksInfo,
    eksInfo_namespace,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,
    endpoint_tags,
    endpoint_name,
    endpoint_type,
    endpoint_stateDetails,
    endpoint_securityGroup,
    endpoint_releaseLabel,
    endpoint_arn,
    endpoint_state,
    endpoint_serverUrl,
    endpoint_id,
    endpoint_certificateArn,
    endpoint_configurationOverrides,
    endpoint_certificateAuthority,
    endpoint_virtualClusterId,
    endpoint_executionRoleArn,
    endpoint_subnetIds,
    endpoint_createdAt,
    endpoint_failureReason,

    -- * JobDriver
    JobDriver (..),
    newJobDriver,
    jobDriver_sparkSqlJobDriver,
    jobDriver_sparkSubmitJobDriver,

    -- * JobRun
    JobRun (..),
    newJobRun,
    jobRun_tags,
    jobRun_name,
    jobRun_clientToken,
    jobRun_stateDetails,
    jobRun_finishedAt,
    jobRun_jobDriver,
    jobRun_releaseLabel,
    jobRun_arn,
    jobRun_state,
    jobRun_id,
    jobRun_configurationOverrides,
    jobRun_virtualClusterId,
    jobRun_executionRoleArn,
    jobRun_createdBy,
    jobRun_createdAt,
    jobRun_failureReason,

    -- * MonitoringConfiguration
    MonitoringConfiguration (..),
    newMonitoringConfiguration,
    monitoringConfiguration_persistentAppUI,
    monitoringConfiguration_s3MonitoringConfiguration,
    monitoringConfiguration_cloudWatchMonitoringConfiguration,

    -- * S3MonitoringConfiguration
    S3MonitoringConfiguration (..),
    newS3MonitoringConfiguration,
    s3MonitoringConfiguration_logUri,

    -- * SparkSqlJobDriver
    SparkSqlJobDriver (..),
    newSparkSqlJobDriver,
    sparkSqlJobDriver_entryPoint,
    sparkSqlJobDriver_sparkSqlParameters,

    -- * SparkSubmitJobDriver
    SparkSubmitJobDriver (..),
    newSparkSubmitJobDriver,
    sparkSubmitJobDriver_entryPointArguments,
    sparkSubmitJobDriver_sparkSubmitParameters,
    sparkSubmitJobDriver_entryPoint,

    -- * VirtualCluster
    VirtualCluster (..),
    newVirtualCluster,
    virtualCluster_tags,
    virtualCluster_name,
    virtualCluster_containerProvider,
    virtualCluster_arn,
    virtualCluster_state,
    virtualCluster_id,
    virtualCluster_createdAt,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EMRContainers.Types.Certificate
import Amazonka.EMRContainers.Types.CloudWatchMonitoringConfiguration
import Amazonka.EMRContainers.Types.Configuration
import Amazonka.EMRContainers.Types.ConfigurationOverrides
import Amazonka.EMRContainers.Types.ContainerInfo
import Amazonka.EMRContainers.Types.ContainerProvider
import Amazonka.EMRContainers.Types.ContainerProviderType
import Amazonka.EMRContainers.Types.EksInfo
import Amazonka.EMRContainers.Types.Endpoint
import Amazonka.EMRContainers.Types.EndpointState
import Amazonka.EMRContainers.Types.FailureReason
import Amazonka.EMRContainers.Types.JobDriver
import Amazonka.EMRContainers.Types.JobRun
import Amazonka.EMRContainers.Types.JobRunState
import Amazonka.EMRContainers.Types.MonitoringConfiguration
import Amazonka.EMRContainers.Types.PersistentAppUI
import Amazonka.EMRContainers.Types.S3MonitoringConfiguration
import Amazonka.EMRContainers.Types.SparkSqlJobDriver
import Amazonka.EMRContainers.Types.SparkSubmitJobDriver
import Amazonka.EMRContainers.Types.VirtualCluster
import Amazonka.EMRContainers.Types.VirtualClusterState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-10-01@ of the Amazon EMR Containers SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "EMRContainers",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "emr-containers",
      Core._serviceSigningName = "emr-containers",
      Core._serviceVersion = "2020-10-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "EMRContainers",
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

-- | This is an internal server exception.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The specified resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 400

-- | There are invalid parameters in the client request.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

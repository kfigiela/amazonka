{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMRServerless.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRServerless.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ValidationException,

    -- * ApplicationState
    ApplicationState (..),

    -- * JobRunState
    JobRunState (..),

    -- * Application
    Application (..),
    newApplication,
    application_tags,
    application_name,
    application_autoStopConfiguration,
    application_stateDetails,
    application_initialCapacity,
    application_networkConfiguration,
    application_autoStartConfiguration,
    application_maximumCapacity,
    application_applicationId,
    application_arn,
    application_releaseLabel,
    application_type,
    application_state,
    application_createdAt,
    application_updatedAt,

    -- * ApplicationSummary
    ApplicationSummary (..),
    newApplicationSummary,
    applicationSummary_name,
    applicationSummary_stateDetails,
    applicationSummary_id,
    applicationSummary_arn,
    applicationSummary_releaseLabel,
    applicationSummary_type,
    applicationSummary_state,
    applicationSummary_createdAt,
    applicationSummary_updatedAt,

    -- * AutoStartConfig
    AutoStartConfig (..),
    newAutoStartConfig,
    autoStartConfig_enabled,

    -- * AutoStopConfig
    AutoStopConfig (..),
    newAutoStopConfig,
    autoStopConfig_idleTimeoutMinutes,
    autoStopConfig_enabled,

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

    -- * Hive
    Hive (..),
    newHive,
    hive_initQueryFile,
    hive_parameters,
    hive_query,

    -- * InitialCapacityConfig
    InitialCapacityConfig (..),
    newInitialCapacityConfig,
    initialCapacityConfig_workerConfiguration,
    initialCapacityConfig_workerCount,

    -- * JobDriver
    JobDriver (..),
    newJobDriver,
    jobDriver_hive,
    jobDriver_sparkSubmit,

    -- * JobRun
    JobRun (..),
    newJobRun,
    jobRun_tags,
    jobRun_name,
    jobRun_networkConfiguration,
    jobRun_configurationOverrides,
    jobRun_totalExecutionDurationSeconds,
    jobRun_totalResourceUtilization,
    jobRun_applicationId,
    jobRun_jobRunId,
    jobRun_arn,
    jobRun_createdBy,
    jobRun_createdAt,
    jobRun_updatedAt,
    jobRun_executionRole,
    jobRun_state,
    jobRun_stateDetails,
    jobRun_releaseLabel,
    jobRun_jobDriver,

    -- * JobRunSummary
    JobRunSummary (..),
    newJobRunSummary,
    jobRunSummary_name,
    jobRunSummary_type,
    jobRunSummary_applicationId,
    jobRunSummary_id,
    jobRunSummary_arn,
    jobRunSummary_createdBy,
    jobRunSummary_createdAt,
    jobRunSummary_updatedAt,
    jobRunSummary_executionRole,
    jobRunSummary_state,
    jobRunSummary_stateDetails,
    jobRunSummary_releaseLabel,

    -- * ManagedPersistenceMonitoringConfiguration
    ManagedPersistenceMonitoringConfiguration (..),
    newManagedPersistenceMonitoringConfiguration,
    managedPersistenceMonitoringConfiguration_encryptionKeyArn,
    managedPersistenceMonitoringConfiguration_enabled,

    -- * MaximumAllowedResources
    MaximumAllowedResources (..),
    newMaximumAllowedResources,
    maximumAllowedResources_disk,
    maximumAllowedResources_cpu,
    maximumAllowedResources_memory,

    -- * MonitoringConfiguration
    MonitoringConfiguration (..),
    newMonitoringConfiguration,
    monitoringConfiguration_managedPersistenceMonitoringConfiguration,
    monitoringConfiguration_s3MonitoringConfiguration,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,
    networkConfiguration_securityGroupIds,
    networkConfiguration_subnetIds,

    -- * S3MonitoringConfiguration
    S3MonitoringConfiguration (..),
    newS3MonitoringConfiguration,
    s3MonitoringConfiguration_encryptionKeyArn,
    s3MonitoringConfiguration_logUri,

    -- * SparkSubmit
    SparkSubmit (..),
    newSparkSubmit,
    sparkSubmit_entryPointArguments,
    sparkSubmit_sparkSubmitParameters,
    sparkSubmit_entryPoint,

    -- * TotalResourceUtilization
    TotalResourceUtilization (..),
    newTotalResourceUtilization,
    totalResourceUtilization_storageGBHour,
    totalResourceUtilization_memoryGBHour,
    totalResourceUtilization_vCPUHour,

    -- * WorkerResourceConfig
    WorkerResourceConfig (..),
    newWorkerResourceConfig,
    workerResourceConfig_disk,
    workerResourceConfig_cpu,
    workerResourceConfig_memory,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EMRServerless.Types.Application
import Amazonka.EMRServerless.Types.ApplicationState
import Amazonka.EMRServerless.Types.ApplicationSummary
import Amazonka.EMRServerless.Types.AutoStartConfig
import Amazonka.EMRServerless.Types.AutoStopConfig
import Amazonka.EMRServerless.Types.Configuration
import Amazonka.EMRServerless.Types.ConfigurationOverrides
import Amazonka.EMRServerless.Types.Hive
import Amazonka.EMRServerless.Types.InitialCapacityConfig
import Amazonka.EMRServerless.Types.JobDriver
import Amazonka.EMRServerless.Types.JobRun
import Amazonka.EMRServerless.Types.JobRunState
import Amazonka.EMRServerless.Types.JobRunSummary
import Amazonka.EMRServerless.Types.ManagedPersistenceMonitoringConfiguration
import Amazonka.EMRServerless.Types.MaximumAllowedResources
import Amazonka.EMRServerless.Types.MonitoringConfiguration
import Amazonka.EMRServerless.Types.NetworkConfiguration
import Amazonka.EMRServerless.Types.S3MonitoringConfiguration
import Amazonka.EMRServerless.Types.SparkSubmit
import Amazonka.EMRServerless.Types.TotalResourceUtilization
import Amazonka.EMRServerless.Types.WorkerResourceConfig
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-07-13@ of the Amazon EMR Serverless SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "EMRServerless",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "emr-serverless",
      Core._serviceSigningName = "emr-serverless",
      Core._serviceVersion = "2021-07-13",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "EMRServerless",
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

-- | Request processing failed because of an error or failure with the
-- service.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The maximum number of resources per account has been reached.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The specified resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The request could not be processed because of conflict in the current
-- state of the resource.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The input fails to satisfy the constraints specified by an AWS service.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

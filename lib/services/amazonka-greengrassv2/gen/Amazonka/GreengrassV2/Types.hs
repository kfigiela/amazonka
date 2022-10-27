{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GreengrassV2.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GreengrassV2.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,
    _RequestAlreadyInProgressException,

    -- * CloudComponentState
    CloudComponentState (..),

    -- * ComponentDependencyType
    ComponentDependencyType (..),

    -- * ComponentVisibilityScope
    ComponentVisibilityScope (..),

    -- * CoreDeviceStatus
    CoreDeviceStatus (..),

    -- * DeploymentComponentUpdatePolicyAction
    DeploymentComponentUpdatePolicyAction (..),

    -- * DeploymentFailureHandlingPolicy
    DeploymentFailureHandlingPolicy (..),

    -- * DeploymentHistoryFilter
    DeploymentHistoryFilter (..),

    -- * DeploymentStatus
    DeploymentStatus (..),

    -- * EffectiveDeploymentExecutionStatus
    EffectiveDeploymentExecutionStatus (..),

    -- * InstalledComponentLifecycleState
    InstalledComponentLifecycleState (..),

    -- * InstalledComponentTopologyFilter
    InstalledComponentTopologyFilter (..),

    -- * IoTJobAbortAction
    IoTJobAbortAction (..),

    -- * IoTJobExecutionFailureType
    IoTJobExecutionFailureType (..),

    -- * LambdaEventSourceType
    LambdaEventSourceType (..),

    -- * LambdaFilesystemPermission
    LambdaFilesystemPermission (..),

    -- * LambdaInputPayloadEncodingType
    LambdaInputPayloadEncodingType (..),

    -- * LambdaIsolationMode
    LambdaIsolationMode (..),

    -- * RecipeOutputFormat
    RecipeOutputFormat (..),

    -- * VendorGuidance
    VendorGuidance (..),

    -- * AssociateClientDeviceWithCoreDeviceEntry
    AssociateClientDeviceWithCoreDeviceEntry (..),
    newAssociateClientDeviceWithCoreDeviceEntry,
    associateClientDeviceWithCoreDeviceEntry_thingName,

    -- * AssociateClientDeviceWithCoreDeviceErrorEntry
    AssociateClientDeviceWithCoreDeviceErrorEntry (..),
    newAssociateClientDeviceWithCoreDeviceErrorEntry,
    associateClientDeviceWithCoreDeviceErrorEntry_message,
    associateClientDeviceWithCoreDeviceErrorEntry_thingName,
    associateClientDeviceWithCoreDeviceErrorEntry_code,

    -- * AssociatedClientDevice
    AssociatedClientDevice (..),
    newAssociatedClientDevice,
    associatedClientDevice_thingName,
    associatedClientDevice_associationTimestamp,

    -- * CloudComponentStatus
    CloudComponentStatus (..),
    newCloudComponentStatus,
    cloudComponentStatus_message,
    cloudComponentStatus_vendorGuidance,
    cloudComponentStatus_vendorGuidanceMessage,
    cloudComponentStatus_errors,
    cloudComponentStatus_componentState,

    -- * Component
    Component (..),
    newComponent,
    component_componentName,
    component_arn,
    component_latestVersion,

    -- * ComponentCandidate
    ComponentCandidate (..),
    newComponentCandidate,
    componentCandidate_componentVersion,
    componentCandidate_componentName,
    componentCandidate_versionRequirements,

    -- * ComponentConfigurationUpdate
    ComponentConfigurationUpdate (..),
    newComponentConfigurationUpdate,
    componentConfigurationUpdate_merge,
    componentConfigurationUpdate_reset,

    -- * ComponentDependencyRequirement
    ComponentDependencyRequirement (..),
    newComponentDependencyRequirement,
    componentDependencyRequirement_versionRequirement,
    componentDependencyRequirement_dependencyType,

    -- * ComponentDeploymentSpecification
    ComponentDeploymentSpecification (..),
    newComponentDeploymentSpecification,
    componentDeploymentSpecification_componentVersion,
    componentDeploymentSpecification_runWith,
    componentDeploymentSpecification_configurationUpdate,

    -- * ComponentLatestVersion
    ComponentLatestVersion (..),
    newComponentLatestVersion,
    componentLatestVersion_componentVersion,
    componentLatestVersion_arn,
    componentLatestVersion_description,
    componentLatestVersion_creationTimestamp,
    componentLatestVersion_platforms,
    componentLatestVersion_publisher,

    -- * ComponentPlatform
    ComponentPlatform (..),
    newComponentPlatform,
    componentPlatform_name,
    componentPlatform_attributes,

    -- * ComponentRunWith
    ComponentRunWith (..),
    newComponentRunWith,
    componentRunWith_systemResourceLimits,
    componentRunWith_posixUser,
    componentRunWith_windowsUser,

    -- * ComponentVersionListItem
    ComponentVersionListItem (..),
    newComponentVersionListItem,
    componentVersionListItem_componentVersion,
    componentVersionListItem_componentName,
    componentVersionListItem_arn,

    -- * ConnectivityInfo
    ConnectivityInfo (..),
    newConnectivityInfo,
    connectivityInfo_portNumber,
    connectivityInfo_metadata,
    connectivityInfo_id,
    connectivityInfo_hostAddress,

    -- * CoreDevice
    CoreDevice (..),
    newCoreDevice,
    coreDevice_coreDeviceThingName,
    coreDevice_status,
    coreDevice_lastStatusUpdateTimestamp,

    -- * Deployment
    Deployment (..),
    newDeployment,
    deployment_deploymentStatus,
    deployment_deploymentName,
    deployment_deploymentId,
    deployment_targetArn,
    deployment_isLatestForTarget,
    deployment_creationTimestamp,
    deployment_revisionId,

    -- * DeploymentComponentUpdatePolicy
    DeploymentComponentUpdatePolicy (..),
    newDeploymentComponentUpdatePolicy,
    deploymentComponentUpdatePolicy_timeoutInSeconds,
    deploymentComponentUpdatePolicy_action,

    -- * DeploymentConfigurationValidationPolicy
    DeploymentConfigurationValidationPolicy (..),
    newDeploymentConfigurationValidationPolicy,
    deploymentConfigurationValidationPolicy_timeoutInSeconds,

    -- * DeploymentIoTJobConfiguration
    DeploymentIoTJobConfiguration (..),
    newDeploymentIoTJobConfiguration,
    deploymentIoTJobConfiguration_jobExecutionsRolloutConfig,
    deploymentIoTJobConfiguration_abortConfig,
    deploymentIoTJobConfiguration_timeoutConfig,

    -- * DeploymentPolicies
    DeploymentPolicies (..),
    newDeploymentPolicies,
    deploymentPolicies_componentUpdatePolicy,
    deploymentPolicies_configurationValidationPolicy,
    deploymentPolicies_failureHandlingPolicy,

    -- * DisassociateClientDeviceFromCoreDeviceEntry
    DisassociateClientDeviceFromCoreDeviceEntry (..),
    newDisassociateClientDeviceFromCoreDeviceEntry,
    disassociateClientDeviceFromCoreDeviceEntry_thingName,

    -- * DisassociateClientDeviceFromCoreDeviceErrorEntry
    DisassociateClientDeviceFromCoreDeviceErrorEntry (..),
    newDisassociateClientDeviceFromCoreDeviceErrorEntry,
    disassociateClientDeviceFromCoreDeviceErrorEntry_message,
    disassociateClientDeviceFromCoreDeviceErrorEntry_thingName,
    disassociateClientDeviceFromCoreDeviceErrorEntry_code,

    -- * EffectiveDeployment
    EffectiveDeployment (..),
    newEffectiveDeployment,
    effectiveDeployment_iotJobArn,
    effectiveDeployment_iotJobId,
    effectiveDeployment_statusDetails,
    effectiveDeployment_description,
    effectiveDeployment_reason,
    effectiveDeployment_deploymentId,
    effectiveDeployment_deploymentName,
    effectiveDeployment_targetArn,
    effectiveDeployment_coreDeviceExecutionStatus,
    effectiveDeployment_creationTimestamp,
    effectiveDeployment_modifiedTimestamp,

    -- * EffectiveDeploymentStatusDetails
    EffectiveDeploymentStatusDetails (..),
    newEffectiveDeploymentStatusDetails,
    effectiveDeploymentStatusDetails_errorStack,
    effectiveDeploymentStatusDetails_errorTypes,

    -- * InstalledComponent
    InstalledComponent (..),
    newInstalledComponent,
    installedComponent_componentVersion,
    installedComponent_componentName,
    installedComponent_lastReportedTimestamp,
    installedComponent_lifecycleStatusCodes,
    installedComponent_lifecycleState,
    installedComponent_lifecycleStateDetails,
    installedComponent_lastInstallationSource,
    installedComponent_lastStatusChangeTimestamp,
    installedComponent_isRoot,

    -- * IoTJobAbortConfig
    IoTJobAbortConfig (..),
    newIoTJobAbortConfig,
    ioTJobAbortConfig_criteriaList,

    -- * IoTJobAbortCriteria
    IoTJobAbortCriteria (..),
    newIoTJobAbortCriteria,
    ioTJobAbortCriteria_failureType,
    ioTJobAbortCriteria_action,
    ioTJobAbortCriteria_thresholdPercentage,
    ioTJobAbortCriteria_minNumberOfExecutedThings,

    -- * IoTJobExecutionsRolloutConfig
    IoTJobExecutionsRolloutConfig (..),
    newIoTJobExecutionsRolloutConfig,
    ioTJobExecutionsRolloutConfig_maximumPerMinute,
    ioTJobExecutionsRolloutConfig_exponentialRate,

    -- * IoTJobExponentialRolloutRate
    IoTJobExponentialRolloutRate (..),
    newIoTJobExponentialRolloutRate,
    ioTJobExponentialRolloutRate_baseRatePerMinute,
    ioTJobExponentialRolloutRate_incrementFactor,
    ioTJobExponentialRolloutRate_rateIncreaseCriteria,

    -- * IoTJobRateIncreaseCriteria
    IoTJobRateIncreaseCriteria (..),
    newIoTJobRateIncreaseCriteria,
    ioTJobRateIncreaseCriteria_numberOfSucceededThings,
    ioTJobRateIncreaseCriteria_numberOfNotifiedThings,

    -- * IoTJobTimeoutConfig
    IoTJobTimeoutConfig (..),
    newIoTJobTimeoutConfig,
    ioTJobTimeoutConfig_inProgressTimeoutInMinutes,

    -- * LambdaContainerParams
    LambdaContainerParams (..),
    newLambdaContainerParams,
    lambdaContainerParams_devices,
    lambdaContainerParams_memorySizeInKB,
    lambdaContainerParams_volumes,
    lambdaContainerParams_mountROSysfs,

    -- * LambdaDeviceMount
    LambdaDeviceMount (..),
    newLambdaDeviceMount,
    lambdaDeviceMount_addGroupOwner,
    lambdaDeviceMount_permission,
    lambdaDeviceMount_path,

    -- * LambdaEventSource
    LambdaEventSource (..),
    newLambdaEventSource,
    lambdaEventSource_topic,
    lambdaEventSource_type,

    -- * LambdaExecutionParameters
    LambdaExecutionParameters (..),
    newLambdaExecutionParameters,
    lambdaExecutionParameters_statusTimeoutInSeconds,
    lambdaExecutionParameters_linuxProcessParams,
    lambdaExecutionParameters_execArgs,
    lambdaExecutionParameters_maxIdleTimeInSeconds,
    lambdaExecutionParameters_eventSources,
    lambdaExecutionParameters_timeoutInSeconds,
    lambdaExecutionParameters_inputPayloadEncodingType,
    lambdaExecutionParameters_environmentVariables,
    lambdaExecutionParameters_maxQueueSize,
    lambdaExecutionParameters_pinned,
    lambdaExecutionParameters_maxInstancesCount,

    -- * LambdaFunctionRecipeSource
    LambdaFunctionRecipeSource (..),
    newLambdaFunctionRecipeSource,
    lambdaFunctionRecipeSource_componentPlatforms,
    lambdaFunctionRecipeSource_componentDependencies,
    lambdaFunctionRecipeSource_componentLambdaParameters,
    lambdaFunctionRecipeSource_componentVersion,
    lambdaFunctionRecipeSource_componentName,
    lambdaFunctionRecipeSource_lambdaArn,

    -- * LambdaLinuxProcessParams
    LambdaLinuxProcessParams (..),
    newLambdaLinuxProcessParams,
    lambdaLinuxProcessParams_containerParams,
    lambdaLinuxProcessParams_isolationMode,

    -- * LambdaVolumeMount
    LambdaVolumeMount (..),
    newLambdaVolumeMount,
    lambdaVolumeMount_addGroupOwner,
    lambdaVolumeMount_permission,
    lambdaVolumeMount_sourcePath,
    lambdaVolumeMount_destinationPath,

    -- * ResolvedComponentVersion
    ResolvedComponentVersion (..),
    newResolvedComponentVersion,
    resolvedComponentVersion_message,
    resolvedComponentVersion_vendorGuidance,
    resolvedComponentVersion_componentVersion,
    resolvedComponentVersion_recipe,
    resolvedComponentVersion_componentName,
    resolvedComponentVersion_arn,

    -- * SystemResourceLimits
    SystemResourceLimits (..),
    newSystemResourceLimits,
    systemResourceLimits_cpus,
    systemResourceLimits_memory,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GreengrassV2.Types.AssociateClientDeviceWithCoreDeviceEntry
import Amazonka.GreengrassV2.Types.AssociateClientDeviceWithCoreDeviceErrorEntry
import Amazonka.GreengrassV2.Types.AssociatedClientDevice
import Amazonka.GreengrassV2.Types.CloudComponentState
import Amazonka.GreengrassV2.Types.CloudComponentStatus
import Amazonka.GreengrassV2.Types.Component
import Amazonka.GreengrassV2.Types.ComponentCandidate
import Amazonka.GreengrassV2.Types.ComponentConfigurationUpdate
import Amazonka.GreengrassV2.Types.ComponentDependencyRequirement
import Amazonka.GreengrassV2.Types.ComponentDependencyType
import Amazonka.GreengrassV2.Types.ComponentDeploymentSpecification
import Amazonka.GreengrassV2.Types.ComponentLatestVersion
import Amazonka.GreengrassV2.Types.ComponentPlatform
import Amazonka.GreengrassV2.Types.ComponentRunWith
import Amazonka.GreengrassV2.Types.ComponentVersionListItem
import Amazonka.GreengrassV2.Types.ComponentVisibilityScope
import Amazonka.GreengrassV2.Types.ConnectivityInfo
import Amazonka.GreengrassV2.Types.CoreDevice
import Amazonka.GreengrassV2.Types.CoreDeviceStatus
import Amazonka.GreengrassV2.Types.Deployment
import Amazonka.GreengrassV2.Types.DeploymentComponentUpdatePolicy
import Amazonka.GreengrassV2.Types.DeploymentComponentUpdatePolicyAction
import Amazonka.GreengrassV2.Types.DeploymentConfigurationValidationPolicy
import Amazonka.GreengrassV2.Types.DeploymentFailureHandlingPolicy
import Amazonka.GreengrassV2.Types.DeploymentHistoryFilter
import Amazonka.GreengrassV2.Types.DeploymentIoTJobConfiguration
import Amazonka.GreengrassV2.Types.DeploymentPolicies
import Amazonka.GreengrassV2.Types.DeploymentStatus
import Amazonka.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceEntry
import Amazonka.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceErrorEntry
import Amazonka.GreengrassV2.Types.EffectiveDeployment
import Amazonka.GreengrassV2.Types.EffectiveDeploymentExecutionStatus
import Amazonka.GreengrassV2.Types.EffectiveDeploymentStatusDetails
import Amazonka.GreengrassV2.Types.InstalledComponent
import Amazonka.GreengrassV2.Types.InstalledComponentLifecycleState
import Amazonka.GreengrassV2.Types.InstalledComponentTopologyFilter
import Amazonka.GreengrassV2.Types.IoTJobAbortAction
import Amazonka.GreengrassV2.Types.IoTJobAbortConfig
import Amazonka.GreengrassV2.Types.IoTJobAbortCriteria
import Amazonka.GreengrassV2.Types.IoTJobExecutionFailureType
import Amazonka.GreengrassV2.Types.IoTJobExecutionsRolloutConfig
import Amazonka.GreengrassV2.Types.IoTJobExponentialRolloutRate
import Amazonka.GreengrassV2.Types.IoTJobRateIncreaseCriteria
import Amazonka.GreengrassV2.Types.IoTJobTimeoutConfig
import Amazonka.GreengrassV2.Types.LambdaContainerParams
import Amazonka.GreengrassV2.Types.LambdaDeviceMount
import Amazonka.GreengrassV2.Types.LambdaEventSource
import Amazonka.GreengrassV2.Types.LambdaEventSourceType
import Amazonka.GreengrassV2.Types.LambdaExecutionParameters
import Amazonka.GreengrassV2.Types.LambdaFilesystemPermission
import Amazonka.GreengrassV2.Types.LambdaFunctionRecipeSource
import Amazonka.GreengrassV2.Types.LambdaInputPayloadEncodingType
import Amazonka.GreengrassV2.Types.LambdaIsolationMode
import Amazonka.GreengrassV2.Types.LambdaLinuxProcessParams
import Amazonka.GreengrassV2.Types.LambdaVolumeMount
import Amazonka.GreengrassV2.Types.RecipeOutputFormat
import Amazonka.GreengrassV2.Types.ResolvedComponentVersion
import Amazonka.GreengrassV2.Types.SystemResourceLimits
import Amazonka.GreengrassV2.Types.VendorGuidance
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-11-30@ of the Amazon IoT Greengrass V2 SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "GreengrassV2",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "greengrass",
      Core._serviceSigningName = "greengrass",
      Core._serviceVersion = "2020-11-30",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "GreengrassV2",
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

-- | You don\'t have permission to perform the action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | IoT Greengrass can\'t process your request right now. Try again later.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | Your request exceeds a service quota. For example, you might have the
-- maximum number of components that you can create.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The requested resource can\'t be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Your request has conflicting operations. This can occur if you\'re
-- trying to perform more than one operation on the same resource at the
-- same time.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | Your request exceeded a request rate quota. For example, you might have
-- exceeded the amount of times that you can retrieve device or deployment
-- status per second.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request isn\'t valid. This can occur if your request contains
-- malformed JSON or unsupported characters.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | The request is already in progress. This exception occurs when you use a
-- client token for multiple requests while IoT Greengrass is still
-- processing an earlier request that uses the same client token.
_RequestAlreadyInProgressException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestAlreadyInProgressException =
  Core._MatchServiceError
    defaultService
    "RequestAlreadyInProgressException"
    Prelude.. Core.hasStatus 400

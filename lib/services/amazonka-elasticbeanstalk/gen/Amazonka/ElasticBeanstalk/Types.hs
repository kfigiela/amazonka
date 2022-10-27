{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ElasticBeanstalk.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _TooManyApplicationsException,
    _ElasticBeanstalkServiceException,
    _S3LocationNotInServiceRegionException,
    _S3SubscriptionRequiredException,
    _TooManyTagsException,
    _PlatformVersionStillReferencedException,
    _InsufficientPrivilegesException,
    _ResourceTypeNotSupportedException,
    _SourceBundleDeletionException,
    _ResourceNotFoundException,
    _CodeBuildNotInServiceRegionException,
    _TooManyPlatformsException,
    _OperationInProgressException,
    _TooManyEnvironmentsException,
    _ManagedActionInvalidStateException,
    _TooManyConfigurationTemplatesException,
    _TooManyApplicationVersionsException,
    _InvalidRequestException,
    _TooManyBucketsException,

    -- * ActionHistoryStatus
    ActionHistoryStatus (..),

    -- * ActionStatus
    ActionStatus (..),

    -- * ActionType
    ActionType (..),

    -- * ApplicationVersionStatus
    ApplicationVersionStatus (..),

    -- * ComputeType
    ComputeType (..),

    -- * ConfigurationDeploymentStatus
    ConfigurationDeploymentStatus (..),

    -- * ConfigurationOptionValueType
    ConfigurationOptionValueType (..),

    -- * EnvironmentHealth
    EnvironmentHealth (..),

    -- * EnvironmentHealthAttribute
    EnvironmentHealthAttribute (..),

    -- * EnvironmentHealthStatus
    EnvironmentHealthStatus (..),

    -- * EnvironmentInfoType
    EnvironmentInfoType (..),

    -- * EnvironmentStatus
    EnvironmentStatus (..),

    -- * EventSeverity
    EventSeverity (..),

    -- * FailureType
    FailureType (..),

    -- * InstancesHealthAttribute
    InstancesHealthAttribute (..),

    -- * PlatformStatus
    PlatformStatus (..),

    -- * SourceRepository
    SourceRepository (..),

    -- * SourceType
    SourceType (..),

    -- * ValidationSeverity
    ValidationSeverity (..),

    -- * ApplicationDescription
    ApplicationDescription (..),
    newApplicationDescription,
    applicationDescription_applicationArn,
    applicationDescription_resourceLifecycleConfig,
    applicationDescription_description,
    applicationDescription_configurationTemplates,
    applicationDescription_versions,
    applicationDescription_dateUpdated,
    applicationDescription_dateCreated,
    applicationDescription_applicationName,

    -- * ApplicationDescriptionMessage
    ApplicationDescriptionMessage (..),
    newApplicationDescriptionMessage,
    applicationDescriptionMessage_application,

    -- * ApplicationMetrics
    ApplicationMetrics (..),
    newApplicationMetrics,
    applicationMetrics_latency,
    applicationMetrics_duration,
    applicationMetrics_requestCount,
    applicationMetrics_statusCodes,

    -- * ApplicationResourceLifecycleConfig
    ApplicationResourceLifecycleConfig (..),
    newApplicationResourceLifecycleConfig,
    applicationResourceLifecycleConfig_versionLifecycleConfig,
    applicationResourceLifecycleConfig_serviceRole,

    -- * ApplicationVersionDescription
    ApplicationVersionDescription (..),
    newApplicationVersionDescription,
    applicationVersionDescription_buildArn,
    applicationVersionDescription_status,
    applicationVersionDescription_description,
    applicationVersionDescription_sourceBundle,
    applicationVersionDescription_applicationVersionArn,
    applicationVersionDescription_sourceBuildInformation,
    applicationVersionDescription_dateUpdated,
    applicationVersionDescription_dateCreated,
    applicationVersionDescription_versionLabel,
    applicationVersionDescription_applicationName,

    -- * ApplicationVersionDescriptionMessage
    ApplicationVersionDescriptionMessage (..),
    newApplicationVersionDescriptionMessage,
    applicationVersionDescriptionMessage_applicationVersion,

    -- * ApplicationVersionLifecycleConfig
    ApplicationVersionLifecycleConfig (..),
    newApplicationVersionLifecycleConfig,
    applicationVersionLifecycleConfig_maxCountRule,
    applicationVersionLifecycleConfig_maxAgeRule,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    newAutoScalingGroup,
    autoScalingGroup_name,

    -- * BuildConfiguration
    BuildConfiguration (..),
    newBuildConfiguration,
    buildConfiguration_artifactName,
    buildConfiguration_timeoutInMinutes,
    buildConfiguration_computeType,
    buildConfiguration_codeBuildServiceRole,
    buildConfiguration_image,

    -- * Builder
    Builder (..),
    newBuilder,
    builder_arn,

    -- * CPUUtilization
    CPUUtilization (..),
    newCPUUtilization,
    cPUUtilization_nice,
    cPUUtilization_user,
    cPUUtilization_softIRQ,
    cPUUtilization_iOWait,
    cPUUtilization_privileged,
    cPUUtilization_irq,
    cPUUtilization_system,
    cPUUtilization_idle,

    -- * ConfigurationOptionDescription
    ConfigurationOptionDescription (..),
    newConfigurationOptionDescription,
    configurationOptionDescription_name,
    configurationOptionDescription_userDefined,
    configurationOptionDescription_maxLength,
    configurationOptionDescription_regex,
    configurationOptionDescription_defaultValue,
    configurationOptionDescription_minValue,
    configurationOptionDescription_valueOptions,
    configurationOptionDescription_valueType,
    configurationOptionDescription_changeSeverity,
    configurationOptionDescription_namespace,
    configurationOptionDescription_maxValue,

    -- * ConfigurationOptionSetting
    ConfigurationOptionSetting (..),
    newConfigurationOptionSetting,
    configurationOptionSetting_resourceName,
    configurationOptionSetting_optionName,
    configurationOptionSetting_namespace,
    configurationOptionSetting_value,

    -- * ConfigurationSettingsDescription
    ConfigurationSettingsDescription (..),
    newConfigurationSettingsDescription,
    configurationSettingsDescription_deploymentStatus,
    configurationSettingsDescription_templateName,
    configurationSettingsDescription_environmentName,
    configurationSettingsDescription_description,
    configurationSettingsDescription_solutionStackName,
    configurationSettingsDescription_dateUpdated,
    configurationSettingsDescription_dateCreated,
    configurationSettingsDescription_platformArn,
    configurationSettingsDescription_applicationName,
    configurationSettingsDescription_optionSettings,

    -- * CustomAmi
    CustomAmi (..),
    newCustomAmi,
    customAmi_virtualizationType,
    customAmi_imageId,

    -- * Deployment
    Deployment (..),
    newDeployment,
    deployment_deploymentId,
    deployment_deploymentTime,
    deployment_status,
    deployment_versionLabel,

    -- * EnvironmentDescription
    EnvironmentDescription (..),
    newEnvironmentDescription,
    environmentDescription_templateName,
    environmentDescription_cname,
    environmentDescription_environmentName,
    environmentDescription_healthStatus,
    environmentDescription_status,
    environmentDescription_description,
    environmentDescription_tier,
    environmentDescription_abortableOperationInProgress,
    environmentDescription_endpointURL,
    environmentDescription_health,
    environmentDescription_solutionStackName,
    environmentDescription_dateUpdated,
    environmentDescription_dateCreated,
    environmentDescription_environmentArn,
    environmentDescription_environmentLinks,
    environmentDescription_resources,
    environmentDescription_platformArn,
    environmentDescription_environmentId,
    environmentDescription_operationsRole,
    environmentDescription_versionLabel,
    environmentDescription_applicationName,

    -- * EnvironmentDescriptionsMessage
    EnvironmentDescriptionsMessage (..),
    newEnvironmentDescriptionsMessage,
    environmentDescriptionsMessage_nextToken,
    environmentDescriptionsMessage_environments,

    -- * EnvironmentInfoDescription
    EnvironmentInfoDescription (..),
    newEnvironmentInfoDescription,
    environmentInfoDescription_message,
    environmentInfoDescription_ec2InstanceId,
    environmentInfoDescription_sampleTimestamp,
    environmentInfoDescription_infoType,

    -- * EnvironmentLink
    EnvironmentLink (..),
    newEnvironmentLink,
    environmentLink_environmentName,
    environmentLink_linkName,

    -- * EnvironmentResourceDescription
    EnvironmentResourceDescription (..),
    newEnvironmentResourceDescription,
    environmentResourceDescription_instances,
    environmentResourceDescription_autoScalingGroups,
    environmentResourceDescription_environmentName,
    environmentResourceDescription_launchTemplates,
    environmentResourceDescription_triggers,
    environmentResourceDescription_loadBalancers,
    environmentResourceDescription_queues,
    environmentResourceDescription_launchConfigurations,

    -- * EnvironmentResourcesDescription
    EnvironmentResourcesDescription (..),
    newEnvironmentResourcesDescription,
    environmentResourcesDescription_loadBalancer,

    -- * EnvironmentTier
    EnvironmentTier (..),
    newEnvironmentTier,
    environmentTier_name,
    environmentTier_type,
    environmentTier_version,

    -- * EventDescription
    EventDescription (..),
    newEventDescription,
    eventDescription_message,
    eventDescription_severity,
    eventDescription_templateName,
    eventDescription_environmentName,
    eventDescription_requestId,
    eventDescription_eventDate,
    eventDescription_platformArn,
    eventDescription_versionLabel,
    eventDescription_applicationName,

    -- * Instance
    Instance (..),
    newInstance,
    instance_id,

    -- * InstanceHealthSummary
    InstanceHealthSummary (..),
    newInstanceHealthSummary,
    instanceHealthSummary_info,
    instanceHealthSummary_warning,
    instanceHealthSummary_degraded,
    instanceHealthSummary_noData,
    instanceHealthSummary_unknown,
    instanceHealthSummary_ok,
    instanceHealthSummary_severe,
    instanceHealthSummary_pending,

    -- * Latency
    Latency (..),
    newLatency,
    latency_p999,
    latency_p50,
    latency_p85,
    latency_p90,
    latency_p95,
    latency_p99,
    latency_p10,
    latency_p75,

    -- * LaunchConfiguration
    LaunchConfiguration (..),
    newLaunchConfiguration,
    launchConfiguration_name,

    -- * LaunchTemplate
    LaunchTemplate (..),
    newLaunchTemplate,
    launchTemplate_id,

    -- * Listener
    Listener (..),
    newListener,
    listener_port,
    listener_protocol,

    -- * LoadBalancer
    LoadBalancer (..),
    newLoadBalancer,
    loadBalancer_name,

    -- * LoadBalancerDescription
    LoadBalancerDescription (..),
    newLoadBalancerDescription,
    loadBalancerDescription_listeners,
    loadBalancerDescription_loadBalancerName,
    loadBalancerDescription_domain,

    -- * ManagedAction
    ManagedAction (..),
    newManagedAction,
    managedAction_actionType,
    managedAction_windowStartTime,
    managedAction_status,
    managedAction_actionId,
    managedAction_actionDescription,

    -- * ManagedActionHistoryItem
    ManagedActionHistoryItem (..),
    newManagedActionHistoryItem,
    managedActionHistoryItem_failureDescription,
    managedActionHistoryItem_actionType,
    managedActionHistoryItem_failureType,
    managedActionHistoryItem_status,
    managedActionHistoryItem_actionId,
    managedActionHistoryItem_executedTime,
    managedActionHistoryItem_actionDescription,
    managedActionHistoryItem_finishedTime,

    -- * MaxAgeRule
    MaxAgeRule (..),
    newMaxAgeRule,
    maxAgeRule_maxAgeInDays,
    maxAgeRule_deleteSourceFromS3,
    maxAgeRule_enabled,

    -- * MaxCountRule
    MaxCountRule (..),
    newMaxCountRule,
    maxCountRule_maxCount,
    maxCountRule_deleteSourceFromS3,
    maxCountRule_enabled,

    -- * OptionRestrictionRegex
    OptionRestrictionRegex (..),
    newOptionRestrictionRegex,
    optionRestrictionRegex_pattern,
    optionRestrictionRegex_label,

    -- * OptionSpecification
    OptionSpecification (..),
    newOptionSpecification,
    optionSpecification_resourceName,
    optionSpecification_optionName,
    optionSpecification_namespace,

    -- * PlatformBranchSummary
    PlatformBranchSummary (..),
    newPlatformBranchSummary,
    platformBranchSummary_branchName,
    platformBranchSummary_supportedTierList,
    platformBranchSummary_branchOrder,
    platformBranchSummary_platformName,
    platformBranchSummary_lifecycleState,

    -- * PlatformDescription
    PlatformDescription (..),
    newPlatformDescription,
    platformDescription_platformBranchLifecycleState,
    platformDescription_operatingSystemName,
    platformDescription_operatingSystemVersion,
    platformDescription_programmingLanguages,
    platformDescription_supportedTierList,
    platformDescription_platformName,
    platformDescription_maintainer,
    platformDescription_description,
    platformDescription_platformStatus,
    platformDescription_solutionStackName,
    platformDescription_customAmiList,
    platformDescription_platformCategory,
    platformDescription_dateUpdated,
    platformDescription_platformVersion,
    platformDescription_platformLifecycleState,
    platformDescription_frameworks,
    platformDescription_dateCreated,
    platformDescription_platformOwner,
    platformDescription_supportedAddonList,
    platformDescription_platformBranchName,
    platformDescription_platformArn,

    -- * PlatformFilter
    PlatformFilter (..),
    newPlatformFilter,
    platformFilter_type,
    platformFilter_operator,
    platformFilter_values,

    -- * PlatformFramework
    PlatformFramework (..),
    newPlatformFramework,
    platformFramework_name,
    platformFramework_version,

    -- * PlatformProgrammingLanguage
    PlatformProgrammingLanguage (..),
    newPlatformProgrammingLanguage,
    platformProgrammingLanguage_name,
    platformProgrammingLanguage_version,

    -- * PlatformSummary
    PlatformSummary (..),
    newPlatformSummary,
    platformSummary_platformBranchLifecycleState,
    platformSummary_operatingSystemName,
    platformSummary_operatingSystemVersion,
    platformSummary_supportedTierList,
    platformSummary_platformStatus,
    platformSummary_platformCategory,
    platformSummary_platformVersion,
    platformSummary_platformLifecycleState,
    platformSummary_platformOwner,
    platformSummary_supportedAddonList,
    platformSummary_platformBranchName,
    platformSummary_platformArn,

    -- * Queue
    Queue (..),
    newQueue,
    queue_name,
    queue_url,

    -- * ResourceQuota
    ResourceQuota (..),
    newResourceQuota,
    resourceQuota_maximum,

    -- * ResourceQuotas
    ResourceQuotas (..),
    newResourceQuotas,
    resourceQuotas_applicationVersionQuota,
    resourceQuotas_environmentQuota,
    resourceQuotas_configurationTemplateQuota,
    resourceQuotas_customPlatformQuota,
    resourceQuotas_applicationQuota,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_s3Bucket,
    s3Location_s3Key,

    -- * SearchFilter
    SearchFilter (..),
    newSearchFilter,
    searchFilter_attribute,
    searchFilter_operator,
    searchFilter_values,

    -- * SingleInstanceHealth
    SingleInstanceHealth (..),
    newSingleInstanceHealth,
    singleInstanceHealth_color,
    singleInstanceHealth_deployment,
    singleInstanceHealth_healthStatus,
    singleInstanceHealth_availabilityZone,
    singleInstanceHealth_instanceType,
    singleInstanceHealth_instanceId,
    singleInstanceHealth_applicationMetrics,
    singleInstanceHealth_launchedAt,
    singleInstanceHealth_system,
    singleInstanceHealth_causes,

    -- * SolutionStackDescription
    SolutionStackDescription (..),
    newSolutionStackDescription,
    solutionStackDescription_permittedFileTypes,
    solutionStackDescription_solutionStackName,

    -- * SourceBuildInformation
    SourceBuildInformation (..),
    newSourceBuildInformation,
    sourceBuildInformation_sourceType,
    sourceBuildInformation_sourceRepository,
    sourceBuildInformation_sourceLocation,

    -- * SourceConfiguration
    SourceConfiguration (..),
    newSourceConfiguration,
    sourceConfiguration_templateName,
    sourceConfiguration_applicationName,

    -- * StatusCodes
    StatusCodes (..),
    newStatusCodes,
    statusCodes_status2xx,
    statusCodes_status5xx,
    statusCodes_status3xx,
    statusCodes_status4xx,

    -- * SystemStatus
    SystemStatus (..),
    newSystemStatus,
    systemStatus_loadAverage,
    systemStatus_cPUUtilization,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * Trigger
    Trigger (..),
    newTrigger,
    trigger_name,

    -- * ValidationMessage
    ValidationMessage (..),
    newValidationMessage,
    validationMessage_message,
    validationMessage_severity,
    validationMessage_optionName,
    validationMessage_namespace,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElasticBeanstalk.Types.ActionHistoryStatus
import Amazonka.ElasticBeanstalk.Types.ActionStatus
import Amazonka.ElasticBeanstalk.Types.ActionType
import Amazonka.ElasticBeanstalk.Types.ApplicationDescription
import Amazonka.ElasticBeanstalk.Types.ApplicationDescriptionMessage
import Amazonka.ElasticBeanstalk.Types.ApplicationMetrics
import Amazonka.ElasticBeanstalk.Types.ApplicationResourceLifecycleConfig
import Amazonka.ElasticBeanstalk.Types.ApplicationVersionDescription
import Amazonka.ElasticBeanstalk.Types.ApplicationVersionDescriptionMessage
import Amazonka.ElasticBeanstalk.Types.ApplicationVersionLifecycleConfig
import Amazonka.ElasticBeanstalk.Types.ApplicationVersionStatus
import Amazonka.ElasticBeanstalk.Types.AutoScalingGroup
import Amazonka.ElasticBeanstalk.Types.BuildConfiguration
import Amazonka.ElasticBeanstalk.Types.Builder
import Amazonka.ElasticBeanstalk.Types.CPUUtilization
import Amazonka.ElasticBeanstalk.Types.ComputeType
import Amazonka.ElasticBeanstalk.Types.ConfigurationDeploymentStatus
import Amazonka.ElasticBeanstalk.Types.ConfigurationOptionDescription
import Amazonka.ElasticBeanstalk.Types.ConfigurationOptionSetting
import Amazonka.ElasticBeanstalk.Types.ConfigurationOptionValueType
import Amazonka.ElasticBeanstalk.Types.ConfigurationSettingsDescription
import Amazonka.ElasticBeanstalk.Types.CustomAmi
import Amazonka.ElasticBeanstalk.Types.Deployment
import Amazonka.ElasticBeanstalk.Types.EnvironmentDescription
import Amazonka.ElasticBeanstalk.Types.EnvironmentDescriptionsMessage
import Amazonka.ElasticBeanstalk.Types.EnvironmentHealth
import Amazonka.ElasticBeanstalk.Types.EnvironmentHealthAttribute
import Amazonka.ElasticBeanstalk.Types.EnvironmentHealthStatus
import Amazonka.ElasticBeanstalk.Types.EnvironmentInfoDescription
import Amazonka.ElasticBeanstalk.Types.EnvironmentInfoType
import Amazonka.ElasticBeanstalk.Types.EnvironmentLink
import Amazonka.ElasticBeanstalk.Types.EnvironmentResourceDescription
import Amazonka.ElasticBeanstalk.Types.EnvironmentResourcesDescription
import Amazonka.ElasticBeanstalk.Types.EnvironmentStatus
import Amazonka.ElasticBeanstalk.Types.EnvironmentTier
import Amazonka.ElasticBeanstalk.Types.EventDescription
import Amazonka.ElasticBeanstalk.Types.EventSeverity
import Amazonka.ElasticBeanstalk.Types.FailureType
import Amazonka.ElasticBeanstalk.Types.Instance
import Amazonka.ElasticBeanstalk.Types.InstanceHealthSummary
import Amazonka.ElasticBeanstalk.Types.InstancesHealthAttribute
import Amazonka.ElasticBeanstalk.Types.Latency
import Amazonka.ElasticBeanstalk.Types.LaunchConfiguration
import Amazonka.ElasticBeanstalk.Types.LaunchTemplate
import Amazonka.ElasticBeanstalk.Types.Listener
import Amazonka.ElasticBeanstalk.Types.LoadBalancer
import Amazonka.ElasticBeanstalk.Types.LoadBalancerDescription
import Amazonka.ElasticBeanstalk.Types.ManagedAction
import Amazonka.ElasticBeanstalk.Types.ManagedActionHistoryItem
import Amazonka.ElasticBeanstalk.Types.MaxAgeRule
import Amazonka.ElasticBeanstalk.Types.MaxCountRule
import Amazonka.ElasticBeanstalk.Types.OptionRestrictionRegex
import Amazonka.ElasticBeanstalk.Types.OptionSpecification
import Amazonka.ElasticBeanstalk.Types.PlatformBranchSummary
import Amazonka.ElasticBeanstalk.Types.PlatformDescription
import Amazonka.ElasticBeanstalk.Types.PlatformFilter
import Amazonka.ElasticBeanstalk.Types.PlatformFramework
import Amazonka.ElasticBeanstalk.Types.PlatformProgrammingLanguage
import Amazonka.ElasticBeanstalk.Types.PlatformStatus
import Amazonka.ElasticBeanstalk.Types.PlatformSummary
import Amazonka.ElasticBeanstalk.Types.Queue
import Amazonka.ElasticBeanstalk.Types.ResourceQuota
import Amazonka.ElasticBeanstalk.Types.ResourceQuotas
import Amazonka.ElasticBeanstalk.Types.S3Location
import Amazonka.ElasticBeanstalk.Types.SearchFilter
import Amazonka.ElasticBeanstalk.Types.SingleInstanceHealth
import Amazonka.ElasticBeanstalk.Types.SolutionStackDescription
import Amazonka.ElasticBeanstalk.Types.SourceBuildInformation
import Amazonka.ElasticBeanstalk.Types.SourceConfiguration
import Amazonka.ElasticBeanstalk.Types.SourceRepository
import Amazonka.ElasticBeanstalk.Types.SourceType
import Amazonka.ElasticBeanstalk.Types.StatusCodes
import Amazonka.ElasticBeanstalk.Types.SystemStatus
import Amazonka.ElasticBeanstalk.Types.Tag
import Amazonka.ElasticBeanstalk.Types.Trigger
import Amazonka.ElasticBeanstalk.Types.ValidationMessage
import Amazonka.ElasticBeanstalk.Types.ValidationSeverity
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2010-12-01@ of the Amazon Elastic Beanstalk SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ElasticBeanstalk",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "elasticbeanstalk",
      Core._serviceSigningName = "elasticbeanstalk",
      Core._serviceVersion = "2010-12-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseXMLError "ElasticBeanstalk",
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

-- | The specified account has reached its limit of applications.
_TooManyApplicationsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyApplicationsException =
  Core._MatchServiceError
    defaultService
    "TooManyApplicationsException"
    Prelude.. Core.hasStatus 400

-- | A generic service exception has occurred.
_ElasticBeanstalkServiceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ElasticBeanstalkServiceException =
  Core._MatchServiceError
    defaultService
    "ElasticBeanstalkServiceException"

-- | The specified S3 bucket does not belong to the S3 region in which the
-- service is running. The following regions are supported:
--
-- -   IAD\/us-east-1
--
-- -   PDX\/us-west-2
--
-- -   DUB\/eu-west-1
_S3LocationNotInServiceRegionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_S3LocationNotInServiceRegionException =
  Core._MatchServiceError
    defaultService
    "S3LocationNotInServiceRegionException"
    Prelude.. Core.hasStatus 400

-- | The specified account does not have a subscription to Amazon S3.
_S3SubscriptionRequiredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_S3SubscriptionRequiredException =
  Core._MatchServiceError
    defaultService
    "S3SubscriptionRequiredException"
    Prelude.. Core.hasStatus 400

-- | The number of tags in the resource would exceed the number of tags that
-- each resource can have.
--
-- To calculate this, the operation considers both the number of tags the
-- resource already has and the tags this operation would add if it
-- succeeded.
_TooManyTagsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyTagsException =
  Core._MatchServiceError
    defaultService
    "TooManyTagsException"
    Prelude.. Core.hasStatus 400

-- | You cannot delete the platform version because there are still
-- environments running on it.
_PlatformVersionStillReferencedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PlatformVersionStillReferencedException =
  Core._MatchServiceError
    defaultService
    "PlatformVersionStillReferencedException"
    Prelude.. Core.hasStatus 400

-- | The specified account does not have sufficient privileges for one or
-- more AWS services.
_InsufficientPrivilegesException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientPrivilegesException =
  Core._MatchServiceError
    defaultService
    "InsufficientPrivilegesException"
    Prelude.. Core.hasStatus 403

-- | The type of the specified Amazon Resource Name (ARN) isn\'t supported
-- for this operation.
_ResourceTypeNotSupportedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceTypeNotSupportedException =
  Core._MatchServiceError
    defaultService
    "ResourceTypeNotSupportedException"
    Prelude.. Core.hasStatus 400

-- | Unable to delete the Amazon S3 source bundle associated with the
-- application version. The application version was deleted successfully.
_SourceBundleDeletionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SourceBundleDeletionException =
  Core._MatchServiceError
    defaultService
    "SourceBundleDeletionFailure"
    Prelude.. Core.hasStatus 400

-- | A resource doesn\'t exist for the specified Amazon Resource Name (ARN).
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 400

-- | AWS CodeBuild is not available in the specified region.
_CodeBuildNotInServiceRegionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CodeBuildNotInServiceRegionException =
  Core._MatchServiceError
    defaultService
    "CodeBuildNotInServiceRegionException"
    Prelude.. Core.hasStatus 400

-- | You have exceeded the maximum number of allowed platforms associated
-- with the account.
_TooManyPlatformsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyPlatformsException =
  Core._MatchServiceError
    defaultService
    "TooManyPlatformsException"
    Prelude.. Core.hasStatus 400

-- | Unable to perform the specified operation because another operation that
-- effects an element in this activity is already in progress.
_OperationInProgressException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OperationInProgressException =
  Core._MatchServiceError
    defaultService
    "OperationInProgressFailure"
    Prelude.. Core.hasStatus 400

-- | The specified account has reached its limit of environments.
_TooManyEnvironmentsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyEnvironmentsException =
  Core._MatchServiceError
    defaultService
    "TooManyEnvironmentsException"
    Prelude.. Core.hasStatus 400

-- | Cannot modify the managed action in its current state.
_ManagedActionInvalidStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ManagedActionInvalidStateException =
  Core._MatchServiceError
    defaultService
    "ManagedActionInvalidStateException"
    Prelude.. Core.hasStatus 400

-- | The specified account has reached its limit of configuration templates.
_TooManyConfigurationTemplatesException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyConfigurationTemplatesException =
  Core._MatchServiceError
    defaultService
    "TooManyConfigurationTemplatesException"
    Prelude.. Core.hasStatus 400

-- | The specified account has reached its limit of application versions.
_TooManyApplicationVersionsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyApplicationVersionsException =
  Core._MatchServiceError
    defaultService
    "TooManyApplicationVersionsException"

-- | One or more input parameters is not valid. Please correct the input
-- parameters and try the operation again.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Core.hasStatus 400

-- | The specified account has reached its limit of Amazon S3 buckets.
_TooManyBucketsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyBucketsException =
  Core._MatchServiceError
    defaultService
    "TooManyBucketsException"
    Prelude.. Core.hasStatus 400

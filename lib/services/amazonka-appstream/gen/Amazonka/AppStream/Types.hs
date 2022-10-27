{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AppStream.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppStream.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _RequestLimitExceededException,
    _IncompatibleImageException,
    _ConcurrentModificationException,
    _InvalidRoleException,
    _ResourceNotFoundException,
    _ResourceNotAvailableException,
    _InvalidParameterCombinationException,
    _ResourceInUseException,
    _EntitlementAlreadyExistsException,
    _LimitExceededException,
    _OperationNotPermittedException,
    _EntitlementNotFoundException,
    _InvalidAccountStatusException,

    -- * AccessEndpointType
    AccessEndpointType (..),

    -- * Action
    Action (..),

    -- * AppVisibility
    AppVisibility (..),

    -- * ApplicationAttribute
    ApplicationAttribute (..),

    -- * AuthenticationType
    AuthenticationType (..),

    -- * FleetAttribute
    FleetAttribute (..),

    -- * FleetErrorCode
    FleetErrorCode (..),

    -- * FleetState
    FleetState (..),

    -- * FleetType
    FleetType (..),

    -- * ImageBuilderState
    ImageBuilderState (..),

    -- * ImageBuilderStateChangeReasonCode
    ImageBuilderStateChangeReasonCode (..),

    -- * ImageState
    ImageState (..),

    -- * ImageStateChangeReasonCode
    ImageStateChangeReasonCode (..),

    -- * MessageAction
    MessageAction (..),

    -- * Permission
    Permission (..),

    -- * PlatformType
    PlatformType (..),

    -- * PreferredProtocol
    PreferredProtocol (..),

    -- * SessionConnectionState
    SessionConnectionState (..),

    -- * SessionState
    SessionState (..),

    -- * StackAttribute
    StackAttribute (..),

    -- * StackErrorCode
    StackErrorCode (..),

    -- * StorageConnectorType
    StorageConnectorType (..),

    -- * StreamView
    StreamView (..),

    -- * UsageReportExecutionErrorCode
    UsageReportExecutionErrorCode (..),

    -- * UsageReportSchedule
    UsageReportSchedule (..),

    -- * UserStackAssociationErrorCode
    UserStackAssociationErrorCode (..),

    -- * VisibilityType
    VisibilityType (..),

    -- * AccessEndpoint
    AccessEndpoint (..),
    newAccessEndpoint,
    accessEndpoint_vpceId,
    accessEndpoint_endpointType,

    -- * AppBlock
    AppBlock (..),
    newAppBlock,
    appBlock_createdTime,
    appBlock_displayName,
    appBlock_description,
    appBlock_sourceS3Location,
    appBlock_name,
    appBlock_arn,
    appBlock_setupScriptDetails,

    -- * Application
    Application (..),
    newApplication,
    application_name,
    application_createdTime,
    application_launchPath,
    application_metadata,
    application_arn,
    application_displayName,
    application_description,
    application_iconS3Location,
    application_enabled,
    application_iconURL,
    application_instanceFamilies,
    application_platforms,
    application_appBlockArn,
    application_launchParameters,
    application_workingDirectory,

    -- * ApplicationFleetAssociation
    ApplicationFleetAssociation (..),
    newApplicationFleetAssociation,
    applicationFleetAssociation_fleetName,
    applicationFleetAssociation_applicationArn,

    -- * ApplicationSettings
    ApplicationSettings (..),
    newApplicationSettings,
    applicationSettings_settingsGroup,
    applicationSettings_enabled,

    -- * ApplicationSettingsResponse
    ApplicationSettingsResponse (..),
    newApplicationSettingsResponse,
    applicationSettingsResponse_s3BucketName,
    applicationSettingsResponse_enabled,
    applicationSettingsResponse_settingsGroup,

    -- * ComputeCapacity
    ComputeCapacity (..),
    newComputeCapacity,
    computeCapacity_desiredInstances,

    -- * ComputeCapacityStatus
    ComputeCapacityStatus (..),
    newComputeCapacityStatus,
    computeCapacityStatus_available,
    computeCapacityStatus_running,
    computeCapacityStatus_inUse,
    computeCapacityStatus_desired,

    -- * DirectoryConfig
    DirectoryConfig (..),
    newDirectoryConfig,
    directoryConfig_serviceAccountCredentials,
    directoryConfig_organizationalUnitDistinguishedNames,
    directoryConfig_createdTime,
    directoryConfig_directoryName,

    -- * DomainJoinInfo
    DomainJoinInfo (..),
    newDomainJoinInfo,
    domainJoinInfo_directoryName,
    domainJoinInfo_organizationalUnitDistinguishedName,

    -- * EntitledApplication
    EntitledApplication (..),
    newEntitledApplication,
    entitledApplication_applicationIdentifier,

    -- * Entitlement
    Entitlement (..),
    newEntitlement,
    entitlement_createdTime,
    entitlement_description,
    entitlement_lastModifiedTime,
    entitlement_name,
    entitlement_stackName,
    entitlement_appVisibility,
    entitlement_attributes,

    -- * EntitlementAttribute
    EntitlementAttribute (..),
    newEntitlementAttribute,
    entitlementAttribute_name,
    entitlementAttribute_value,

    -- * Fleet
    Fleet (..),
    newFleet,
    fleet_createdTime,
    fleet_sessionScriptS3Location,
    fleet_maxConcurrentSessions,
    fleet_fleetType,
    fleet_vpcConfig,
    fleet_fleetErrors,
    fleet_displayName,
    fleet_imageArn,
    fleet_platform,
    fleet_description,
    fleet_disconnectTimeoutInSeconds,
    fleet_idleDisconnectTimeoutInSeconds,
    fleet_iamRoleArn,
    fleet_usbDeviceFilterStrings,
    fleet_domainJoinInfo,
    fleet_streamView,
    fleet_enableDefaultInternetAccess,
    fleet_imageName,
    fleet_maxUserDurationInSeconds,
    fleet_arn,
    fleet_name,
    fleet_instanceType,
    fleet_computeCapacityStatus,
    fleet_state,

    -- * FleetError
    FleetError (..),
    newFleetError,
    fleetError_errorMessage,
    fleetError_errorCode,

    -- * Image
    Image (..),
    newImage,
    image_createdTime,
    image_stateChangeReason,
    image_applications,
    image_imageBuilderSupported,
    image_visibility,
    image_arn,
    image_displayName,
    image_state,
    image_platform,
    image_description,
    image_publicBaseImageReleasedDate,
    image_imagePermissions,
    image_appstreamAgentVersion,
    image_imageErrors,
    image_baseImageArn,
    image_imageBuilderName,
    image_name,

    -- * ImageBuilder
    ImageBuilder (..),
    newImageBuilder,
    imageBuilder_createdTime,
    imageBuilder_stateChangeReason,
    imageBuilder_vpcConfig,
    imageBuilder_networkAccessConfiguration,
    imageBuilder_arn,
    imageBuilder_displayName,
    imageBuilder_state,
    imageBuilder_accessEndpoints,
    imageBuilder_imageArn,
    imageBuilder_platform,
    imageBuilder_description,
    imageBuilder_instanceType,
    imageBuilder_iamRoleArn,
    imageBuilder_domainJoinInfo,
    imageBuilder_imageBuilderErrors,
    imageBuilder_appstreamAgentVersion,
    imageBuilder_enableDefaultInternetAccess,
    imageBuilder_name,

    -- * ImageBuilderStateChangeReason
    ImageBuilderStateChangeReason (..),
    newImageBuilderStateChangeReason,
    imageBuilderStateChangeReason_message,
    imageBuilderStateChangeReason_code,

    -- * ImagePermissions
    ImagePermissions (..),
    newImagePermissions,
    imagePermissions_allowFleet,
    imagePermissions_allowImageBuilder,

    -- * ImageStateChangeReason
    ImageStateChangeReason (..),
    newImageStateChangeReason,
    imageStateChangeReason_message,
    imageStateChangeReason_code,

    -- * LastReportGenerationExecutionError
    LastReportGenerationExecutionError (..),
    newLastReportGenerationExecutionError,
    lastReportGenerationExecutionError_errorMessage,
    lastReportGenerationExecutionError_errorCode,

    -- * NetworkAccessConfiguration
    NetworkAccessConfiguration (..),
    newNetworkAccessConfiguration,
    networkAccessConfiguration_eniPrivateIpAddress,
    networkAccessConfiguration_eniId,

    -- * ResourceError
    ResourceError (..),
    newResourceError,
    resourceError_errorMessage,
    resourceError_errorTimestamp,
    resourceError_errorCode,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_s3Bucket,
    s3Location_s3Key,

    -- * ScriptDetails
    ScriptDetails (..),
    newScriptDetails,
    scriptDetails_executableParameters,
    scriptDetails_scriptS3Location,
    scriptDetails_executablePath,
    scriptDetails_timeoutInSeconds,

    -- * ServiceAccountCredentials
    ServiceAccountCredentials (..),
    newServiceAccountCredentials,
    serviceAccountCredentials_accountName,
    serviceAccountCredentials_accountPassword,

    -- * Session
    Session (..),
    newSession,
    session_authenticationType,
    session_networkAccessConfiguration,
    session_connectionState,
    session_maxExpirationTime,
    session_startTime,
    session_id,
    session_userId,
    session_stackName,
    session_fleetName,
    session_state,

    -- * SharedImagePermissions
    SharedImagePermissions (..),
    newSharedImagePermissions,
    sharedImagePermissions_sharedAccountId,
    sharedImagePermissions_imagePermissions,

    -- * Stack
    Stack (..),
    newStack,
    stack_storageConnectors,
    stack_createdTime,
    stack_embedHostDomains,
    stack_applicationSettings,
    stack_arn,
    stack_stackErrors,
    stack_displayName,
    stack_accessEndpoints,
    stack_description,
    stack_redirectURL,
    stack_streamingExperienceSettings,
    stack_feedbackURL,
    stack_userSettings,
    stack_name,

    -- * StackError
    StackError (..),
    newStackError,
    stackError_errorMessage,
    stackError_errorCode,

    -- * StorageConnector
    StorageConnector (..),
    newStorageConnector,
    storageConnector_domains,
    storageConnector_resourceIdentifier,
    storageConnector_connectorType,

    -- * StreamingExperienceSettings
    StreamingExperienceSettings (..),
    newStreamingExperienceSettings,
    streamingExperienceSettings_preferredProtocol,

    -- * UsageReportSubscription
    UsageReportSubscription (..),
    newUsageReportSubscription,
    usageReportSubscription_schedule,
    usageReportSubscription_s3BucketName,
    usageReportSubscription_lastGeneratedReportDate,
    usageReportSubscription_subscriptionErrors,

    -- * User
    User (..),
    newUser,
    user_createdTime,
    user_firstName,
    user_userName,
    user_arn,
    user_status,
    user_enabled,
    user_lastName,
    user_authenticationType,

    -- * UserSetting
    UserSetting (..),
    newUserSetting,
    userSetting_action,
    userSetting_permission,

    -- * UserStackAssociation
    UserStackAssociation (..),
    newUserStackAssociation,
    userStackAssociation_sendEmailNotification,
    userStackAssociation_stackName,
    userStackAssociation_userName,
    userStackAssociation_authenticationType,

    -- * UserStackAssociationError
    UserStackAssociationError (..),
    newUserStackAssociationError,
    userStackAssociationError_userStackAssociation,
    userStackAssociationError_errorMessage,
    userStackAssociationError_errorCode,

    -- * VpcConfig
    VpcConfig (..),
    newVpcConfig,
    vpcConfig_securityGroupIds,
    vpcConfig_subnetIds,
  )
where

import Amazonka.AppStream.Types.AccessEndpoint
import Amazonka.AppStream.Types.AccessEndpointType
import Amazonka.AppStream.Types.Action
import Amazonka.AppStream.Types.AppBlock
import Amazonka.AppStream.Types.AppVisibility
import Amazonka.AppStream.Types.Application
import Amazonka.AppStream.Types.ApplicationAttribute
import Amazonka.AppStream.Types.ApplicationFleetAssociation
import Amazonka.AppStream.Types.ApplicationSettings
import Amazonka.AppStream.Types.ApplicationSettingsResponse
import Amazonka.AppStream.Types.AuthenticationType
import Amazonka.AppStream.Types.ComputeCapacity
import Amazonka.AppStream.Types.ComputeCapacityStatus
import Amazonka.AppStream.Types.DirectoryConfig
import Amazonka.AppStream.Types.DomainJoinInfo
import Amazonka.AppStream.Types.EntitledApplication
import Amazonka.AppStream.Types.Entitlement
import Amazonka.AppStream.Types.EntitlementAttribute
import Amazonka.AppStream.Types.Fleet
import Amazonka.AppStream.Types.FleetAttribute
import Amazonka.AppStream.Types.FleetError
import Amazonka.AppStream.Types.FleetErrorCode
import Amazonka.AppStream.Types.FleetState
import Amazonka.AppStream.Types.FleetType
import Amazonka.AppStream.Types.Image
import Amazonka.AppStream.Types.ImageBuilder
import Amazonka.AppStream.Types.ImageBuilderState
import Amazonka.AppStream.Types.ImageBuilderStateChangeReason
import Amazonka.AppStream.Types.ImageBuilderStateChangeReasonCode
import Amazonka.AppStream.Types.ImagePermissions
import Amazonka.AppStream.Types.ImageState
import Amazonka.AppStream.Types.ImageStateChangeReason
import Amazonka.AppStream.Types.ImageStateChangeReasonCode
import Amazonka.AppStream.Types.LastReportGenerationExecutionError
import Amazonka.AppStream.Types.MessageAction
import Amazonka.AppStream.Types.NetworkAccessConfiguration
import Amazonka.AppStream.Types.Permission
import Amazonka.AppStream.Types.PlatformType
import Amazonka.AppStream.Types.PreferredProtocol
import Amazonka.AppStream.Types.ResourceError
import Amazonka.AppStream.Types.S3Location
import Amazonka.AppStream.Types.ScriptDetails
import Amazonka.AppStream.Types.ServiceAccountCredentials
import Amazonka.AppStream.Types.Session
import Amazonka.AppStream.Types.SessionConnectionState
import Amazonka.AppStream.Types.SessionState
import Amazonka.AppStream.Types.SharedImagePermissions
import Amazonka.AppStream.Types.Stack
import Amazonka.AppStream.Types.StackAttribute
import Amazonka.AppStream.Types.StackError
import Amazonka.AppStream.Types.StackErrorCode
import Amazonka.AppStream.Types.StorageConnector
import Amazonka.AppStream.Types.StorageConnectorType
import Amazonka.AppStream.Types.StreamView
import Amazonka.AppStream.Types.StreamingExperienceSettings
import Amazonka.AppStream.Types.UsageReportExecutionErrorCode
import Amazonka.AppStream.Types.UsageReportSchedule
import Amazonka.AppStream.Types.UsageReportSubscription
import Amazonka.AppStream.Types.User
import Amazonka.AppStream.Types.UserSetting
import Amazonka.AppStream.Types.UserStackAssociation
import Amazonka.AppStream.Types.UserStackAssociationError
import Amazonka.AppStream.Types.UserStackAssociationErrorCode
import Amazonka.AppStream.Types.VisibilityType
import Amazonka.AppStream.Types.VpcConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2016-12-01@ of the Amazon AppStream SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "AppStream",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "appstream2",
      Core._serviceSigningName = "appstream",
      Core._serviceVersion = "2016-12-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "AppStream",
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

-- | The specified resource already exists.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"

-- | AppStream 2.0 can’t process the request right now because the Describe
-- calls from your AWS account are being throttled by Amazon EC2. Try again
-- later.
_RequestLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestLimitExceededException =
  Core._MatchServiceError
    defaultService
    "RequestLimitExceededException"

-- | The image can\'t be updated because it\'s not compatible for updates.
_IncompatibleImageException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncompatibleImageException =
  Core._MatchServiceError
    defaultService
    "IncompatibleImageException"

-- | An API error occurred. Wait a few minutes and try again.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The specified role is invalid.
_InvalidRoleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRoleException =
  Core._MatchServiceError
    defaultService
    "InvalidRoleException"

-- | The specified resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified resource exists and is not in use, but isn\'t available.
_ResourceNotAvailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotAvailableException =
  Core._MatchServiceError
    defaultService
    "ResourceNotAvailableException"

-- | Indicates an incorrect combination of parameters, or a missing
-- parameter.
_InvalidParameterCombinationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterCombinationException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterCombinationException"

-- | The specified resource is in use.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The entitlement already exists.
_EntitlementAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EntitlementAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "EntitlementAlreadyExistsException"

-- | The requested limit exceeds the permitted limit for an account.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The attempted operation is not permitted.
_OperationNotPermittedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OperationNotPermittedException =
  Core._MatchServiceError
    defaultService
    "OperationNotPermittedException"

-- | The entitlement can\'t be found.
_EntitlementNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EntitlementNotFoundException =
  Core._MatchServiceError
    defaultService
    "EntitlementNotFoundException"

-- | The resource cannot be created because your AWS account is suspended.
-- For assistance, contact AWS Support.
_InvalidAccountStatusException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidAccountStatusException =
  Core._MatchServiceError
    defaultService
    "InvalidAccountStatusException"

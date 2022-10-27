{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Nimble.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Nimble.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _InternalServerErrorException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * LaunchProfilePersona
    LaunchProfilePersona (..),

    -- * LaunchProfilePlatform
    LaunchProfilePlatform (..),

    -- * LaunchProfileState
    LaunchProfileState (..),

    -- * LaunchProfileStatusCode
    LaunchProfileStatusCode (..),

    -- * LaunchProfileValidationState
    LaunchProfileValidationState (..),

    -- * LaunchProfileValidationStatusCode
    LaunchProfileValidationStatusCode (..),

    -- * LaunchProfileValidationType
    LaunchProfileValidationType (..),

    -- * StreamingClipboardMode
    StreamingClipboardMode (..),

    -- * StreamingImageEncryptionConfigurationKeyType
    StreamingImageEncryptionConfigurationKeyType (..),

    -- * StreamingImageState
    StreamingImageState (..),

    -- * StreamingImageStatusCode
    StreamingImageStatusCode (..),

    -- * StreamingInstanceType
    StreamingInstanceType (..),

    -- * StreamingSessionState
    StreamingSessionState (..),

    -- * StreamingSessionStatusCode
    StreamingSessionStatusCode (..),

    -- * StreamingSessionStorageMode
    StreamingSessionStorageMode (..),

    -- * StreamingSessionStreamState
    StreamingSessionStreamState (..),

    -- * StreamingSessionStreamStatusCode
    StreamingSessionStreamStatusCode (..),

    -- * StudioComponentInitializationScriptRunContext
    StudioComponentInitializationScriptRunContext (..),

    -- * StudioComponentState
    StudioComponentState (..),

    -- * StudioComponentStatusCode
    StudioComponentStatusCode (..),

    -- * StudioComponentSubtype
    StudioComponentSubtype (..),

    -- * StudioComponentType
    StudioComponentType (..),

    -- * StudioEncryptionConfigurationKeyType
    StudioEncryptionConfigurationKeyType (..),

    -- * StudioPersona
    StudioPersona (..),

    -- * StudioState
    StudioState (..),

    -- * StudioStatusCode
    StudioStatusCode (..),

    -- * ActiveDirectoryComputerAttribute
    ActiveDirectoryComputerAttribute (..),
    newActiveDirectoryComputerAttribute,
    activeDirectoryComputerAttribute_name,
    activeDirectoryComputerAttribute_value,

    -- * ActiveDirectoryConfiguration
    ActiveDirectoryConfiguration (..),
    newActiveDirectoryConfiguration,
    activeDirectoryConfiguration_directoryId,
    activeDirectoryConfiguration_computerAttributes,
    activeDirectoryConfiguration_organizationalUnitDistinguishedName,

    -- * ComputeFarmConfiguration
    ComputeFarmConfiguration (..),
    newComputeFarmConfiguration,
    computeFarmConfiguration_activeDirectoryUser,
    computeFarmConfiguration_endpoint,

    -- * Eula
    Eula (..),
    newEula,
    eula_name,
    eula_eulaId,
    eula_content,
    eula_createdAt,
    eula_updatedAt,

    -- * EulaAcceptance
    EulaAcceptance (..),
    newEulaAcceptance,
    eulaAcceptance_eulaAcceptanceId,
    eulaAcceptance_accepteeId,
    eulaAcceptance_eulaId,
    eulaAcceptance_acceptedAt,
    eulaAcceptance_acceptedBy,

    -- * LaunchProfile
    LaunchProfile (..),
    newLaunchProfile,
    launchProfile_ec2SubnetIds,
    launchProfile_tags,
    launchProfile_launchProfileId,
    launchProfile_studioComponentIds,
    launchProfile_name,
    launchProfile_updatedBy,
    launchProfile_arn,
    launchProfile_state,
    launchProfile_description,
    launchProfile_streamConfiguration,
    launchProfile_validationResults,
    launchProfile_launchProfileProtocolVersions,
    launchProfile_statusCode,
    launchProfile_createdBy,
    launchProfile_statusMessage,
    launchProfile_createdAt,
    launchProfile_updatedAt,

    -- * LaunchProfileInitialization
    LaunchProfileInitialization (..),
    newLaunchProfileInitialization,
    launchProfileInitialization_launchProfileId,
    launchProfileInitialization_name,
    launchProfileInitialization_platform,
    launchProfileInitialization_userInitializationScripts,
    launchProfileInitialization_activeDirectory,
    launchProfileInitialization_launchPurpose,
    launchProfileInitialization_launchProfileProtocolVersion,
    launchProfileInitialization_ec2SecurityGroupIds,
    launchProfileInitialization_systemInitializationScripts,

    -- * LaunchProfileInitializationActiveDirectory
    LaunchProfileInitializationActiveDirectory (..),
    newLaunchProfileInitializationActiveDirectory,
    launchProfileInitializationActiveDirectory_directoryId,
    launchProfileInitializationActiveDirectory_directoryName,
    launchProfileInitializationActiveDirectory_computerAttributes,
    launchProfileInitializationActiveDirectory_studioComponentId,
    launchProfileInitializationActiveDirectory_organizationalUnitDistinguishedName,
    launchProfileInitializationActiveDirectory_dnsIpAddresses,
    launchProfileInitializationActiveDirectory_studioComponentName,

    -- * LaunchProfileInitializationScript
    LaunchProfileInitializationScript (..),
    newLaunchProfileInitializationScript,
    launchProfileInitializationScript_secureInitializationRoleArn,
    launchProfileInitializationScript_studioComponentId,
    launchProfileInitializationScript_runtimeRoleArn,
    launchProfileInitializationScript_studioComponentName,
    launchProfileInitializationScript_script,

    -- * LaunchProfileMembership
    LaunchProfileMembership (..),
    newLaunchProfileMembership,
    launchProfileMembership_principalId,
    launchProfileMembership_persona,
    launchProfileMembership_sid,
    launchProfileMembership_identityStoreId,

    -- * LicenseServiceConfiguration
    LicenseServiceConfiguration (..),
    newLicenseServiceConfiguration,
    licenseServiceConfiguration_endpoint,

    -- * NewLaunchProfileMember
    NewLaunchProfileMember (..),
    newNewLaunchProfileMember,
    newLaunchProfileMember_persona,
    newLaunchProfileMember_principalId,

    -- * NewStudioMember
    NewStudioMember (..),
    newNewStudioMember,
    newStudioMember_persona,
    newStudioMember_principalId,

    -- * ScriptParameterKeyValue
    ScriptParameterKeyValue (..),
    newScriptParameterKeyValue,
    scriptParameterKeyValue_key,
    scriptParameterKeyValue_value,

    -- * SharedFileSystemConfiguration
    SharedFileSystemConfiguration (..),
    newSharedFileSystemConfiguration,
    sharedFileSystemConfiguration_windowsMountDrive,
    sharedFileSystemConfiguration_linuxMountPoint,
    sharedFileSystemConfiguration_fileSystemId,
    sharedFileSystemConfiguration_shareName,
    sharedFileSystemConfiguration_endpoint,

    -- * StreamConfiguration
    StreamConfiguration (..),
    newStreamConfiguration,
    streamConfiguration_maxStoppedSessionLengthInMinutes,
    streamConfiguration_maxSessionLengthInMinutes,
    streamConfiguration_sessionStorage,
    streamConfiguration_clipboardMode,
    streamConfiguration_ec2InstanceTypes,
    streamConfiguration_streamingImageIds,

    -- * StreamConfigurationCreate
    StreamConfigurationCreate (..),
    newStreamConfigurationCreate,
    streamConfigurationCreate_maxStoppedSessionLengthInMinutes,
    streamConfigurationCreate_maxSessionLengthInMinutes,
    streamConfigurationCreate_sessionStorage,
    streamConfigurationCreate_clipboardMode,
    streamConfigurationCreate_ec2InstanceTypes,
    streamConfigurationCreate_streamingImageIds,

    -- * StreamConfigurationSessionStorage
    StreamConfigurationSessionStorage (..),
    newStreamConfigurationSessionStorage,
    streamConfigurationSessionStorage_root,
    streamConfigurationSessionStorage_mode,

    -- * StreamingImage
    StreamingImage (..),
    newStreamingImage,
    streamingImage_tags,
    streamingImage_streamingImageId,
    streamingImage_name,
    streamingImage_ec2ImageId,
    streamingImage_arn,
    streamingImage_state,
    streamingImage_owner,
    streamingImage_description,
    streamingImage_platform,
    streamingImage_eulaIds,
    streamingImage_encryptionConfiguration,
    streamingImage_statusCode,
    streamingImage_statusMessage,

    -- * StreamingImageEncryptionConfiguration
    StreamingImageEncryptionConfiguration (..),
    newStreamingImageEncryptionConfiguration,
    streamingImageEncryptionConfiguration_keyArn,
    streamingImageEncryptionConfiguration_keyType,

    -- * StreamingSession
    StreamingSession (..),
    newStreamingSession,
    streamingSession_tags,
    streamingSession_launchProfileId,
    streamingSession_streamingImageId,
    streamingSession_stopAt,
    streamingSession_updatedBy,
    streamingSession_ec2InstanceType,
    streamingSession_terminateAt,
    streamingSession_stoppedBy,
    streamingSession_arn,
    streamingSession_state,
    streamingSession_startedBy,
    streamingSession_startedAt,
    streamingSession_sessionId,
    streamingSession_stoppedAt,
    streamingSession_statusCode,
    streamingSession_createdBy,
    streamingSession_statusMessage,
    streamingSession_ownedBy,
    streamingSession_createdAt,
    streamingSession_updatedAt,

    -- * StreamingSessionStorageRoot
    StreamingSessionStorageRoot (..),
    newStreamingSessionStorageRoot,
    streamingSessionStorageRoot_windows,
    streamingSessionStorageRoot_linux,

    -- * StreamingSessionStream
    StreamingSessionStream (..),
    newStreamingSessionStream,
    streamingSessionStream_state,
    streamingSessionStream_streamId,
    streamingSessionStream_url,
    streamingSessionStream_expiresAt,
    streamingSessionStream_statusCode,
    streamingSessionStream_createdBy,
    streamingSessionStream_ownedBy,
    streamingSessionStream_createdAt,

    -- * Studio
    Studio (..),
    newStudio,
    studio_studioId,
    studio_tags,
    studio_studioName,
    studio_ssoClientId,
    studio_adminRoleArn,
    studio_arn,
    studio_displayName,
    studio_state,
    studio_studioEncryptionConfiguration,
    studio_studioUrl,
    studio_userRoleArn,
    studio_homeRegion,
    studio_statusCode,
    studio_statusMessage,
    studio_createdAt,
    studio_updatedAt,

    -- * StudioComponent
    StudioComponent (..),
    newStudioComponent,
    studioComponent_tags,
    studioComponent_scriptParameters,
    studioComponent_name,
    studioComponent_type,
    studioComponent_updatedBy,
    studioComponent_initializationScripts,
    studioComponent_configuration,
    studioComponent_arn,
    studioComponent_state,
    studioComponent_description,
    studioComponent_secureInitializationRoleArn,
    studioComponent_studioComponentId,
    studioComponent_subtype,
    studioComponent_runtimeRoleArn,
    studioComponent_statusCode,
    studioComponent_createdBy,
    studioComponent_statusMessage,
    studioComponent_ec2SecurityGroupIds,
    studioComponent_createdAt,
    studioComponent_updatedAt,

    -- * StudioComponentConfiguration
    StudioComponentConfiguration (..),
    newStudioComponentConfiguration,
    studioComponentConfiguration_activeDirectoryConfiguration,
    studioComponentConfiguration_licenseServiceConfiguration,
    studioComponentConfiguration_computeFarmConfiguration,
    studioComponentConfiguration_sharedFileSystemConfiguration,

    -- * StudioComponentInitializationScript
    StudioComponentInitializationScript (..),
    newStudioComponentInitializationScript,
    studioComponentInitializationScript_platform,
    studioComponentInitializationScript_launchProfileProtocolVersion,
    studioComponentInitializationScript_runContext,
    studioComponentInitializationScript_script,

    -- * StudioComponentSummary
    StudioComponentSummary (..),
    newStudioComponentSummary,
    studioComponentSummary_name,
    studioComponentSummary_type,
    studioComponentSummary_updatedBy,
    studioComponentSummary_description,
    studioComponentSummary_studioComponentId,
    studioComponentSummary_subtype,
    studioComponentSummary_createdBy,
    studioComponentSummary_createdAt,
    studioComponentSummary_updatedAt,

    -- * StudioEncryptionConfiguration
    StudioEncryptionConfiguration (..),
    newStudioEncryptionConfiguration,
    studioEncryptionConfiguration_keyArn,
    studioEncryptionConfiguration_keyType,

    -- * StudioMembership
    StudioMembership (..),
    newStudioMembership,
    studioMembership_principalId,
    studioMembership_persona,
    studioMembership_sid,
    studioMembership_identityStoreId,

    -- * ValidationResult
    ValidationResult (..),
    newValidationResult,
    validationResult_state,
    validationResult_statusCode,
    validationResult_statusMessage,
    validationResult_type,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types.ActiveDirectoryComputerAttribute
import Amazonka.Nimble.Types.ActiveDirectoryConfiguration
import Amazonka.Nimble.Types.ComputeFarmConfiguration
import Amazonka.Nimble.Types.Eula
import Amazonka.Nimble.Types.EulaAcceptance
import Amazonka.Nimble.Types.LaunchProfile
import Amazonka.Nimble.Types.LaunchProfileInitialization
import Amazonka.Nimble.Types.LaunchProfileInitializationActiveDirectory
import Amazonka.Nimble.Types.LaunchProfileInitializationScript
import Amazonka.Nimble.Types.LaunchProfileMembership
import Amazonka.Nimble.Types.LaunchProfilePersona
import Amazonka.Nimble.Types.LaunchProfilePlatform
import Amazonka.Nimble.Types.LaunchProfileState
import Amazonka.Nimble.Types.LaunchProfileStatusCode
import Amazonka.Nimble.Types.LaunchProfileValidationState
import Amazonka.Nimble.Types.LaunchProfileValidationStatusCode
import Amazonka.Nimble.Types.LaunchProfileValidationType
import Amazonka.Nimble.Types.LicenseServiceConfiguration
import Amazonka.Nimble.Types.NewLaunchProfileMember
import Amazonka.Nimble.Types.NewStudioMember
import Amazonka.Nimble.Types.ScriptParameterKeyValue
import Amazonka.Nimble.Types.SharedFileSystemConfiguration
import Amazonka.Nimble.Types.StreamConfiguration
import Amazonka.Nimble.Types.StreamConfigurationCreate
import Amazonka.Nimble.Types.StreamConfigurationSessionStorage
import Amazonka.Nimble.Types.StreamingClipboardMode
import Amazonka.Nimble.Types.StreamingImage
import Amazonka.Nimble.Types.StreamingImageEncryptionConfiguration
import Amazonka.Nimble.Types.StreamingImageEncryptionConfigurationKeyType
import Amazonka.Nimble.Types.StreamingImageState
import Amazonka.Nimble.Types.StreamingImageStatusCode
import Amazonka.Nimble.Types.StreamingInstanceType
import Amazonka.Nimble.Types.StreamingSession
import Amazonka.Nimble.Types.StreamingSessionState
import Amazonka.Nimble.Types.StreamingSessionStatusCode
import Amazonka.Nimble.Types.StreamingSessionStorageMode
import Amazonka.Nimble.Types.StreamingSessionStorageRoot
import Amazonka.Nimble.Types.StreamingSessionStream
import Amazonka.Nimble.Types.StreamingSessionStreamState
import Amazonka.Nimble.Types.StreamingSessionStreamStatusCode
import Amazonka.Nimble.Types.Studio
import Amazonka.Nimble.Types.StudioComponent
import Amazonka.Nimble.Types.StudioComponentConfiguration
import Amazonka.Nimble.Types.StudioComponentInitializationScript
import Amazonka.Nimble.Types.StudioComponentInitializationScriptRunContext
import Amazonka.Nimble.Types.StudioComponentState
import Amazonka.Nimble.Types.StudioComponentStatusCode
import Amazonka.Nimble.Types.StudioComponentSubtype
import Amazonka.Nimble.Types.StudioComponentSummary
import Amazonka.Nimble.Types.StudioComponentType
import Amazonka.Nimble.Types.StudioEncryptionConfiguration
import Amazonka.Nimble.Types.StudioEncryptionConfigurationKeyType
import Amazonka.Nimble.Types.StudioMembership
import Amazonka.Nimble.Types.StudioPersona
import Amazonka.Nimble.Types.StudioState
import Amazonka.Nimble.Types.StudioStatusCode
import Amazonka.Nimble.Types.ValidationResult
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-08-01@ of the Amazon NimbleStudio SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Nimble",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "nimble",
      Core._serviceSigningName = "nimble",
      Core._serviceVersion = "2020-08-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Nimble",
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

-- | You are not authorized to perform this operation. Check your IAM
-- policies, and ensure that you are using the correct access keys.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | Your current quota does not allow you to perform the request action. You
-- can request increases for some quotas, and other quotas cannot be
-- increased.
--
-- Please use AWS Service Quotas to request an increase.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The specified resource could not be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | An internal error has occurred. Please retry your request.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | Another operation is in progress.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request throughput limit was exceeded.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | One of the parameters in the request is invalid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AmplifyBackend.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AmplifyBackend.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _GatewayTimeoutException,
    _TooManyRequestsException,

    -- * AdditionalConstraintsElement
    AdditionalConstraintsElement (..),

    -- * AuthResources
    AuthResources (..),

    -- * AuthenticatedElement
    AuthenticatedElement (..),

    -- * DeliveryMethod
    DeliveryMethod (..),

    -- * MFAMode
    MFAMode (..),

    -- * MfaTypesElement
    MfaTypesElement (..),

    -- * Mode
    Mode (..),

    -- * OAuthGrantType
    OAuthGrantType (..),

    -- * OAuthScopesElement
    OAuthScopesElement (..),

    -- * RequiredSignUpAttributesElement
    RequiredSignUpAttributesElement (..),

    -- * ResolutionStrategy
    ResolutionStrategy (..),

    -- * Service
    Service (..),

    -- * ServiceName
    ServiceName (..),

    -- * SignInMethod
    SignInMethod (..),

    -- * Status
    Status (..),

    -- * UnAuthenticatedElement
    UnAuthenticatedElement (..),

    -- * BackendAPIAppSyncAuthSettings
    BackendAPIAppSyncAuthSettings (..),
    newBackendAPIAppSyncAuthSettings,
    backendAPIAppSyncAuthSettings_expirationTime,
    backendAPIAppSyncAuthSettings_openIDAuthTTL,
    backendAPIAppSyncAuthSettings_description,
    backendAPIAppSyncAuthSettings_openIDIssueURL,
    backendAPIAppSyncAuthSettings_openIDClientId,
    backendAPIAppSyncAuthSettings_openIDIatTTL,
    backendAPIAppSyncAuthSettings_openIDProviderName,
    backendAPIAppSyncAuthSettings_cognitoUserPoolId,

    -- * BackendAPIAuthType
    BackendAPIAuthType (..),
    newBackendAPIAuthType,
    backendAPIAuthType_settings,
    backendAPIAuthType_mode,

    -- * BackendAPIConflictResolution
    BackendAPIConflictResolution (..),
    newBackendAPIConflictResolution,
    backendAPIConflictResolution_resolutionStrategy,

    -- * BackendAPIResourceConfig
    BackendAPIResourceConfig (..),
    newBackendAPIResourceConfig,
    backendAPIResourceConfig_additionalAuthTypes,
    backendAPIResourceConfig_conflictResolution,
    backendAPIResourceConfig_service,
    backendAPIResourceConfig_transformSchema,
    backendAPIResourceConfig_defaultAuthType,
    backendAPIResourceConfig_apiName,

    -- * BackendAuthAppleProviderConfig
    BackendAuthAppleProviderConfig (..),
    newBackendAuthAppleProviderConfig,
    backendAuthAppleProviderConfig_clientId,
    backendAuthAppleProviderConfig_privateKey,
    backendAuthAppleProviderConfig_teamId,
    backendAuthAppleProviderConfig_keyId,

    -- * BackendAuthSocialProviderConfig
    BackendAuthSocialProviderConfig (..),
    newBackendAuthSocialProviderConfig,
    backendAuthSocialProviderConfig_clientSecret,
    backendAuthSocialProviderConfig_clientId,

    -- * BackendJobRespObj
    BackendJobRespObj (..),
    newBackendJobRespObj,
    backendJobRespObj_jobId,
    backendJobRespObj_status,
    backendJobRespObj_updateTime,
    backendJobRespObj_createTime,
    backendJobRespObj_error,
    backendJobRespObj_operation,
    backendJobRespObj_appId,
    backendJobRespObj_backendEnvironmentName,

    -- * BackendStoragePermissions
    BackendStoragePermissions (..),
    newBackendStoragePermissions,
    backendStoragePermissions_unAuthenticated,
    backendStoragePermissions_authenticated,

    -- * CreateBackendAuthForgotPasswordConfig
    CreateBackendAuthForgotPasswordConfig (..),
    newCreateBackendAuthForgotPasswordConfig,
    createBackendAuthForgotPasswordConfig_emailSettings,
    createBackendAuthForgotPasswordConfig_smsSettings,
    createBackendAuthForgotPasswordConfig_deliveryMethod,

    -- * CreateBackendAuthIdentityPoolConfig
    CreateBackendAuthIdentityPoolConfig (..),
    newCreateBackendAuthIdentityPoolConfig,
    createBackendAuthIdentityPoolConfig_unauthenticatedLogin,
    createBackendAuthIdentityPoolConfig_identityPoolName,

    -- * CreateBackendAuthMFAConfig
    CreateBackendAuthMFAConfig (..),
    newCreateBackendAuthMFAConfig,
    createBackendAuthMFAConfig_settings,
    createBackendAuthMFAConfig_mfaMode,

    -- * CreateBackendAuthOAuthConfig
    CreateBackendAuthOAuthConfig (..),
    newCreateBackendAuthOAuthConfig,
    createBackendAuthOAuthConfig_domainPrefix,
    createBackendAuthOAuthConfig_socialProviderSettings,
    createBackendAuthOAuthConfig_redirectSignOutURIs,
    createBackendAuthOAuthConfig_redirectSignInURIs,
    createBackendAuthOAuthConfig_oAuthGrantType,
    createBackendAuthOAuthConfig_oAuthScopes,

    -- * CreateBackendAuthPasswordPolicyConfig
    CreateBackendAuthPasswordPolicyConfig (..),
    newCreateBackendAuthPasswordPolicyConfig,
    createBackendAuthPasswordPolicyConfig_additionalConstraints,
    createBackendAuthPasswordPolicyConfig_minimumLength,

    -- * CreateBackendAuthResourceConfig
    CreateBackendAuthResourceConfig (..),
    newCreateBackendAuthResourceConfig,
    createBackendAuthResourceConfig_identityPoolConfigs,
    createBackendAuthResourceConfig_authResources,
    createBackendAuthResourceConfig_userPoolConfigs,
    createBackendAuthResourceConfig_service,

    -- * CreateBackendAuthUserPoolConfig
    CreateBackendAuthUserPoolConfig (..),
    newCreateBackendAuthUserPoolConfig,
    createBackendAuthUserPoolConfig_oAuth,
    createBackendAuthUserPoolConfig_passwordPolicy,
    createBackendAuthUserPoolConfig_forgotPassword,
    createBackendAuthUserPoolConfig_verificationMessage,
    createBackendAuthUserPoolConfig_mfa,
    createBackendAuthUserPoolConfig_requiredSignUpAttributes,
    createBackendAuthUserPoolConfig_signInMethod,
    createBackendAuthUserPoolConfig_userPoolName,

    -- * CreateBackendAuthVerificationMessageConfig
    CreateBackendAuthVerificationMessageConfig (..),
    newCreateBackendAuthVerificationMessageConfig,
    createBackendAuthVerificationMessageConfig_emailSettings,
    createBackendAuthVerificationMessageConfig_smsSettings,
    createBackendAuthVerificationMessageConfig_deliveryMethod,

    -- * CreateBackendStorageResourceConfig
    CreateBackendStorageResourceConfig (..),
    newCreateBackendStorageResourceConfig,
    createBackendStorageResourceConfig_bucketName,
    createBackendStorageResourceConfig_serviceName,
    createBackendStorageResourceConfig_permissions,

    -- * EmailSettings
    EmailSettings (..),
    newEmailSettings,
    emailSettings_emailSubject,
    emailSettings_emailMessage,

    -- * GetBackendStorageResourceConfig
    GetBackendStorageResourceConfig (..),
    newGetBackendStorageResourceConfig,
    getBackendStorageResourceConfig_permissions,
    getBackendStorageResourceConfig_bucketName,
    getBackendStorageResourceConfig_serviceName,
    getBackendStorageResourceConfig_imported,

    -- * LoginAuthConfigReqObj
    LoginAuthConfigReqObj (..),
    newLoginAuthConfigReqObj,
    loginAuthConfigReqObj_awsCognitoIdentityPoolId,
    loginAuthConfigReqObj_awsCognitoRegion,
    loginAuthConfigReqObj_awsUserPoolsId,
    loginAuthConfigReqObj_awsUserPoolsWebClientId,

    -- * ResourceConfig
    ResourceConfig (..),
    newResourceConfig,

    -- * S3BucketInfo
    S3BucketInfo (..),
    newS3BucketInfo,
    s3BucketInfo_name,
    s3BucketInfo_creationDate,

    -- * Settings
    Settings (..),
    newSettings,
    settings_mfaTypes,
    settings_smsMessage,

    -- * SmsSettings
    SmsSettings (..),
    newSmsSettings,
    smsSettings_smsMessage,

    -- * SocialProviderSettings
    SocialProviderSettings (..),
    newSocialProviderSettings,
    socialProviderSettings_loginWithAmazon,
    socialProviderSettings_signInWithApple,
    socialProviderSettings_facebook,
    socialProviderSettings_google,

    -- * UpdateBackendAuthForgotPasswordConfig
    UpdateBackendAuthForgotPasswordConfig (..),
    newUpdateBackendAuthForgotPasswordConfig,
    updateBackendAuthForgotPasswordConfig_emailSettings,
    updateBackendAuthForgotPasswordConfig_deliveryMethod,
    updateBackendAuthForgotPasswordConfig_smsSettings,

    -- * UpdateBackendAuthIdentityPoolConfig
    UpdateBackendAuthIdentityPoolConfig (..),
    newUpdateBackendAuthIdentityPoolConfig,
    updateBackendAuthIdentityPoolConfig_unauthenticatedLogin,

    -- * UpdateBackendAuthMFAConfig
    UpdateBackendAuthMFAConfig (..),
    newUpdateBackendAuthMFAConfig,
    updateBackendAuthMFAConfig_settings,
    updateBackendAuthMFAConfig_mfaMode,

    -- * UpdateBackendAuthOAuthConfig
    UpdateBackendAuthOAuthConfig (..),
    newUpdateBackendAuthOAuthConfig,
    updateBackendAuthOAuthConfig_domainPrefix,
    updateBackendAuthOAuthConfig_redirectSignOutURIs,
    updateBackendAuthOAuthConfig_redirectSignInURIs,
    updateBackendAuthOAuthConfig_oAuthScopes,
    updateBackendAuthOAuthConfig_socialProviderSettings,
    updateBackendAuthOAuthConfig_oAuthGrantType,

    -- * UpdateBackendAuthPasswordPolicyConfig
    UpdateBackendAuthPasswordPolicyConfig (..),
    newUpdateBackendAuthPasswordPolicyConfig,
    updateBackendAuthPasswordPolicyConfig_additionalConstraints,
    updateBackendAuthPasswordPolicyConfig_minimumLength,

    -- * UpdateBackendAuthResourceConfig
    UpdateBackendAuthResourceConfig (..),
    newUpdateBackendAuthResourceConfig,
    updateBackendAuthResourceConfig_identityPoolConfigs,
    updateBackendAuthResourceConfig_authResources,
    updateBackendAuthResourceConfig_userPoolConfigs,
    updateBackendAuthResourceConfig_service,

    -- * UpdateBackendAuthUserPoolConfig
    UpdateBackendAuthUserPoolConfig (..),
    newUpdateBackendAuthUserPoolConfig,
    updateBackendAuthUserPoolConfig_oAuth,
    updateBackendAuthUserPoolConfig_passwordPolicy,
    updateBackendAuthUserPoolConfig_forgotPassword,
    updateBackendAuthUserPoolConfig_verificationMessage,
    updateBackendAuthUserPoolConfig_mfa,

    -- * UpdateBackendAuthVerificationMessageConfig
    UpdateBackendAuthVerificationMessageConfig (..),
    newUpdateBackendAuthVerificationMessageConfig,
    updateBackendAuthVerificationMessageConfig_emailSettings,
    updateBackendAuthVerificationMessageConfig_smsSettings,
    updateBackendAuthVerificationMessageConfig_deliveryMethod,

    -- * UpdateBackendStorageResourceConfig
    UpdateBackendStorageResourceConfig (..),
    newUpdateBackendStorageResourceConfig,
    updateBackendStorageResourceConfig_serviceName,
    updateBackendStorageResourceConfig_permissions,
  )
where

import Amazonka.AmplifyBackend.Types.AdditionalConstraintsElement
import Amazonka.AmplifyBackend.Types.AuthResources
import Amazonka.AmplifyBackend.Types.AuthenticatedElement
import Amazonka.AmplifyBackend.Types.BackendAPIAppSyncAuthSettings
import Amazonka.AmplifyBackend.Types.BackendAPIAuthType
import Amazonka.AmplifyBackend.Types.BackendAPIConflictResolution
import Amazonka.AmplifyBackend.Types.BackendAPIResourceConfig
import Amazonka.AmplifyBackend.Types.BackendAuthAppleProviderConfig
import Amazonka.AmplifyBackend.Types.BackendAuthSocialProviderConfig
import Amazonka.AmplifyBackend.Types.BackendJobRespObj
import Amazonka.AmplifyBackend.Types.BackendStoragePermissions
import Amazonka.AmplifyBackend.Types.CreateBackendAuthForgotPasswordConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthIdentityPoolConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthMFAConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthOAuthConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthPasswordPolicyConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthResourceConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthUserPoolConfig
import Amazonka.AmplifyBackend.Types.CreateBackendAuthVerificationMessageConfig
import Amazonka.AmplifyBackend.Types.CreateBackendStorageResourceConfig
import Amazonka.AmplifyBackend.Types.DeliveryMethod
import Amazonka.AmplifyBackend.Types.EmailSettings
import Amazonka.AmplifyBackend.Types.GetBackendStorageResourceConfig
import Amazonka.AmplifyBackend.Types.LoginAuthConfigReqObj
import Amazonka.AmplifyBackend.Types.MFAMode
import Amazonka.AmplifyBackend.Types.MfaTypesElement
import Amazonka.AmplifyBackend.Types.Mode
import Amazonka.AmplifyBackend.Types.OAuthGrantType
import Amazonka.AmplifyBackend.Types.OAuthScopesElement
import Amazonka.AmplifyBackend.Types.RequiredSignUpAttributesElement
import Amazonka.AmplifyBackend.Types.ResolutionStrategy
import Amazonka.AmplifyBackend.Types.ResourceConfig
import Amazonka.AmplifyBackend.Types.S3BucketInfo
import Amazonka.AmplifyBackend.Types.Service
import Amazonka.AmplifyBackend.Types.ServiceName
import Amazonka.AmplifyBackend.Types.Settings
import Amazonka.AmplifyBackend.Types.SignInMethod
import Amazonka.AmplifyBackend.Types.SmsSettings
import Amazonka.AmplifyBackend.Types.SocialProviderSettings
import Amazonka.AmplifyBackend.Types.Status
import Amazonka.AmplifyBackend.Types.UnAuthenticatedElement
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthForgotPasswordConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthIdentityPoolConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthMFAConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthOAuthConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthPasswordPolicyConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthResourceConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthUserPoolConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendAuthVerificationMessageConfig
import Amazonka.AmplifyBackend.Types.UpdateBackendStorageResourceConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-08-11@ of the Amazon AmplifyBackend SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "AmplifyBackend",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "amplifybackend",
      Core._serviceSigningName = "amplifybackend",
      Core._serviceVersion = "2020-08-11",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "AmplifyBackend",
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

-- | An error returned when a specific resource type is not found.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | An error returned if a request is not formed properly.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | An error returned if there\'s a temporary issue with the service.
_GatewayTimeoutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_GatewayTimeoutException =
  Core._MatchServiceError
    defaultService
    "GatewayTimeoutException"
    Prelude.. Core.hasStatus 504

-- | An error that is returned when a limit of a specific type has been
-- exceeded.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

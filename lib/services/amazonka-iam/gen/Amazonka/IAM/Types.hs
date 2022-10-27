{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IAM.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IAM.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _EntityTemporarilyUnmodifiableException,
    _ServiceNotSupportedException,
    _PolicyEvaluationException,
    _DuplicateCertificateException,
    _EntityAlreadyExistsException,
    _InvalidInputException,
    _PasswordPolicyViolationException,
    _InvalidCertificateException,
    _ConcurrentModificationException,
    _UnrecognizedPublicKeyEncodingException,
    _DuplicateSSHPublicKeyException,
    _CredentialReportNotPresentException,
    _NoSuchEntityException,
    _PolicyNotAttachableException,
    _LimitExceededException,
    _MalformedCertificateException,
    _KeyPairMismatchException,
    _CredentialReportNotReadyException,
    _UnmodifiableEntityException,
    _InvalidAuthenticationCodeException,
    _ReportGenerationLimitExceededException,
    _MalformedPolicyDocumentException,
    _InvalidUserTypeException,
    _CredentialReportExpiredException,
    _DeleteConflictException,
    _InvalidPublicKeyException,
    _ServiceFailureException,

    -- * AccessAdvisorUsageGranularityType
    AccessAdvisorUsageGranularityType (..),

    -- * AssignmentStatusType
    AssignmentStatusType (..),

    -- * ContextKeyTypeEnum
    ContextKeyTypeEnum (..),

    -- * DeletionTaskStatusType
    DeletionTaskStatusType (..),

    -- * EncodingType
    EncodingType (..),

    -- * EntityType
    EntityType (..),

    -- * GlobalEndpointTokenVersion
    GlobalEndpointTokenVersion (..),

    -- * JobStatusType
    JobStatusType (..),

    -- * PermissionsBoundaryAttachmentType
    PermissionsBoundaryAttachmentType (..),

    -- * PolicyEvaluationDecisionType
    PolicyEvaluationDecisionType (..),

    -- * PolicyOwnerEntityType
    PolicyOwnerEntityType (..),

    -- * PolicyScopeType
    PolicyScopeType (..),

    -- * PolicySourceType
    PolicySourceType (..),

    -- * PolicyType
    PolicyType (..),

    -- * PolicyUsageType
    PolicyUsageType (..),

    -- * ReportFormatType
    ReportFormatType (..),

    -- * ReportStateType
    ReportStateType (..),

    -- * SortKeyType
    SortKeyType (..),

    -- * StatusType
    StatusType (..),

    -- * SummaryKeyType
    SummaryKeyType (..),

    -- * AccessDetail
    AccessDetail (..),
    newAccessDetail,
    accessDetail_totalAuthenticatedEntities,
    accessDetail_entityPath,
    accessDetail_region,
    accessDetail_lastAuthenticatedTime,
    accessDetail_serviceName,
    accessDetail_serviceNamespace,

    -- * AccessKeyInfo
    AccessKeyInfo (..),
    newAccessKeyInfo,
    accessKeyInfo_createDate,
    accessKeyInfo_userName,
    accessKeyInfo_accessKeyId,
    accessKeyInfo_status,
    accessKeyInfo_secretAccessKey,

    -- * AccessKeyLastUsed
    AccessKeyLastUsed (..),
    newAccessKeyLastUsed,
    accessKeyLastUsed_lastUsedDate,
    accessKeyLastUsed_serviceName,
    accessKeyLastUsed_region,

    -- * AccessKeyMetadata
    AccessKeyMetadata (..),
    newAccessKeyMetadata,
    accessKeyMetadata_userName,
    accessKeyMetadata_status,
    accessKeyMetadata_createDate,
    accessKeyMetadata_accessKeyId,

    -- * AttachedPermissionsBoundary
    AttachedPermissionsBoundary (..),
    newAttachedPermissionsBoundary,
    attachedPermissionsBoundary_permissionsBoundaryType,
    attachedPermissionsBoundary_permissionsBoundaryArn,

    -- * AttachedPolicy
    AttachedPolicy (..),
    newAttachedPolicy,
    attachedPolicy_policyName,
    attachedPolicy_policyArn,

    -- * ContextEntry
    ContextEntry (..),
    newContextEntry,
    contextEntry_contextKeyName,
    contextEntry_contextKeyType,
    contextEntry_contextKeyValues,

    -- * DeletionTaskFailureReasonType
    DeletionTaskFailureReasonType (..),
    newDeletionTaskFailureReasonType,
    deletionTaskFailureReasonType_roleUsageList,
    deletionTaskFailureReasonType_reason,

    -- * EntityDetails
    EntityDetails (..),
    newEntityDetails,
    entityDetails_lastAuthenticated,
    entityDetails_entityInfo,

    -- * EntityInfo
    EntityInfo (..),
    newEntityInfo,
    entityInfo_path,
    entityInfo_arn,
    entityInfo_name,
    entityInfo_type,
    entityInfo_id,

    -- * ErrorDetails
    ErrorDetails (..),
    newErrorDetails,
    errorDetails_message,
    errorDetails_code,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,
    evaluationResult_evalResourceName,
    evaluationResult_permissionsBoundaryDecisionDetail,
    evaluationResult_missingContextValues,
    evaluationResult_resourceSpecificResults,
    evaluationResult_evalDecisionDetails,
    evaluationResult_matchedStatements,
    evaluationResult_organizationsDecisionDetail,
    evaluationResult_evalActionName,
    evaluationResult_evalDecision,

    -- * GetContextKeysForPolicyResponse
    GetContextKeysForPolicyResponse (..),
    newGetContextKeysForPolicyResponse,
    getContextKeysForPolicyResponse_contextKeyNames,

    -- * Group
    Group (..),
    newGroup,
    group_path,
    group_groupName,
    group_groupId,
    group_arn,
    group_createDate,

    -- * GroupDetail
    GroupDetail (..),
    newGroupDetail,
    groupDetail_arn,
    groupDetail_path,
    groupDetail_groupName,
    groupDetail_attachedManagedPolicies,
    groupDetail_createDate,
    groupDetail_groupId,
    groupDetail_groupPolicyList,

    -- * InstanceProfile
    InstanceProfile (..),
    newInstanceProfile,
    instanceProfile_tags,
    instanceProfile_path,
    instanceProfile_instanceProfileName,
    instanceProfile_instanceProfileId,
    instanceProfile_arn,
    instanceProfile_createDate,
    instanceProfile_roles,

    -- * ListPoliciesGrantingServiceAccessEntry
    ListPoliciesGrantingServiceAccessEntry (..),
    newListPoliciesGrantingServiceAccessEntry,
    listPoliciesGrantingServiceAccessEntry_serviceNamespace,
    listPoliciesGrantingServiceAccessEntry_policies,

    -- * LoginProfile
    LoginProfile (..),
    newLoginProfile,
    loginProfile_passwordResetRequired,
    loginProfile_userName,
    loginProfile_createDate,

    -- * MFADevice
    MFADevice (..),
    newMFADevice,
    mfaDevice_userName,
    mfaDevice_serialNumber,
    mfaDevice_enableDate,

    -- * ManagedPolicyDetail
    ManagedPolicyDetail (..),
    newManagedPolicyDetail,
    managedPolicyDetail_policyName,
    managedPolicyDetail_policyId,
    managedPolicyDetail_defaultVersionId,
    managedPolicyDetail_arn,
    managedPolicyDetail_path,
    managedPolicyDetail_updateDate,
    managedPolicyDetail_policyVersionList,
    managedPolicyDetail_description,
    managedPolicyDetail_createDate,
    managedPolicyDetail_attachmentCount,
    managedPolicyDetail_permissionsBoundaryUsageCount,
    managedPolicyDetail_isAttachable,

    -- * OpenIDConnectProviderListEntry
    OpenIDConnectProviderListEntry (..),
    newOpenIDConnectProviderListEntry,
    openIDConnectProviderListEntry_arn,

    -- * OrganizationsDecisionDetail
    OrganizationsDecisionDetail (..),
    newOrganizationsDecisionDetail,
    organizationsDecisionDetail_allowedByOrganizations,

    -- * PasswordPolicy
    PasswordPolicy (..),
    newPasswordPolicy,
    passwordPolicy_maxPasswordAge,
    passwordPolicy_minimumPasswordLength,
    passwordPolicy_allowUsersToChangePassword,
    passwordPolicy_passwordReusePrevention,
    passwordPolicy_requireNumbers,
    passwordPolicy_requireLowercaseCharacters,
    passwordPolicy_expirePasswords,
    passwordPolicy_requireSymbols,
    passwordPolicy_requireUppercaseCharacters,
    passwordPolicy_hardExpiry,

    -- * PermissionsBoundaryDecisionDetail
    PermissionsBoundaryDecisionDetail (..),
    newPermissionsBoundaryDecisionDetail,
    permissionsBoundaryDecisionDetail_allowedByPermissionsBoundary,

    -- * Policy
    Policy (..),
    newPolicy,
    policy_policyName,
    policy_tags,
    policy_policyId,
    policy_defaultVersionId,
    policy_arn,
    policy_path,
    policy_updateDate,
    policy_description,
    policy_createDate,
    policy_attachmentCount,
    policy_permissionsBoundaryUsageCount,
    policy_isAttachable,

    -- * PolicyDetail
    PolicyDetail (..),
    newPolicyDetail,
    policyDetail_policyName,
    policyDetail_policyDocument,

    -- * PolicyGrantingServiceAccess
    PolicyGrantingServiceAccess (..),
    newPolicyGrantingServiceAccess,
    policyGrantingServiceAccess_entityName,
    policyGrantingServiceAccess_entityType,
    policyGrantingServiceAccess_policyArn,
    policyGrantingServiceAccess_policyName,
    policyGrantingServiceAccess_policyType,

    -- * PolicyGroup
    PolicyGroup (..),
    newPolicyGroup,
    policyGroup_groupName,
    policyGroup_groupId,

    -- * PolicyRole
    PolicyRole (..),
    newPolicyRole,
    policyRole_roleName,
    policyRole_roleId,

    -- * PolicyUser
    PolicyUser (..),
    newPolicyUser,
    policyUser_userName,
    policyUser_userId,

    -- * PolicyVersion
    PolicyVersion (..),
    newPolicyVersion,
    policyVersion_isDefaultVersion,
    policyVersion_createDate,
    policyVersion_document,
    policyVersion_versionId,

    -- * Position
    Position (..),
    newPosition,
    position_line,
    position_column,

    -- * ResourceSpecificResult
    ResourceSpecificResult (..),
    newResourceSpecificResult,
    resourceSpecificResult_permissionsBoundaryDecisionDetail,
    resourceSpecificResult_missingContextValues,
    resourceSpecificResult_evalDecisionDetails,
    resourceSpecificResult_matchedStatements,
    resourceSpecificResult_evalResourceName,
    resourceSpecificResult_evalResourceDecision,

    -- * Role
    Role (..),
    newRole,
    role_tags,
    role_roleLastUsed,
    role_assumeRolePolicyDocument,
    role_description,
    role_permissionsBoundary,
    role_maxSessionDuration,
    role_path,
    role_roleName,
    role_roleId,
    role_arn,
    role_createDate,

    -- * RoleDetail
    RoleDetail (..),
    newRoleDetail,
    roleDetail_tags,
    roleDetail_roleLastUsed,
    roleDetail_roleName,
    roleDetail_arn,
    roleDetail_instanceProfileList,
    roleDetail_path,
    roleDetail_assumeRolePolicyDocument,
    roleDetail_attachedManagedPolicies,
    roleDetail_permissionsBoundary,
    roleDetail_createDate,
    roleDetail_roleId,
    roleDetail_rolePolicyList,

    -- * RoleLastUsed
    RoleLastUsed (..),
    newRoleLastUsed,
    roleLastUsed_lastUsedDate,
    roleLastUsed_region,

    -- * RoleUsageType
    RoleUsageType (..),
    newRoleUsageType,
    roleUsageType_region,
    roleUsageType_resources,

    -- * SAMLProviderListEntry
    SAMLProviderListEntry (..),
    newSAMLProviderListEntry,
    sAMLProviderListEntry_arn,
    sAMLProviderListEntry_createDate,
    sAMLProviderListEntry_validUntil,

    -- * SSHPublicKey
    SSHPublicKey (..),
    newSSHPublicKey,
    sSHPublicKey_uploadDate,
    sSHPublicKey_userName,
    sSHPublicKey_sSHPublicKeyId,
    sSHPublicKey_fingerprint,
    sSHPublicKey_sSHPublicKeyBody,
    sSHPublicKey_status,

    -- * SSHPublicKeyMetadata
    SSHPublicKeyMetadata (..),
    newSSHPublicKeyMetadata,
    sSHPublicKeyMetadata_userName,
    sSHPublicKeyMetadata_sSHPublicKeyId,
    sSHPublicKeyMetadata_status,
    sSHPublicKeyMetadata_uploadDate,

    -- * ServerCertificate
    ServerCertificate (..),
    newServerCertificate,
    serverCertificate_tags,
    serverCertificate_certificateChain,
    serverCertificate_serverCertificateMetadata,
    serverCertificate_certificateBody,

    -- * ServerCertificateMetadata
    ServerCertificateMetadata (..),
    newServerCertificateMetadata,
    serverCertificateMetadata_uploadDate,
    serverCertificateMetadata_expiration,
    serverCertificateMetadata_path,
    serverCertificateMetadata_serverCertificateName,
    serverCertificateMetadata_serverCertificateId,
    serverCertificateMetadata_arn,

    -- * ServiceLastAccessed
    ServiceLastAccessed (..),
    newServiceLastAccessed,
    serviceLastAccessed_lastAuthenticatedEntity,
    serviceLastAccessed_totalAuthenticatedEntities,
    serviceLastAccessed_lastAuthenticated,
    serviceLastAccessed_trackedActionsLastAccessed,
    serviceLastAccessed_lastAuthenticatedRegion,
    serviceLastAccessed_serviceName,
    serviceLastAccessed_serviceNamespace,

    -- * ServiceSpecificCredential
    ServiceSpecificCredential (..),
    newServiceSpecificCredential,
    serviceSpecificCredential_createDate,
    serviceSpecificCredential_serviceName,
    serviceSpecificCredential_serviceUserName,
    serviceSpecificCredential_servicePassword,
    serviceSpecificCredential_serviceSpecificCredentialId,
    serviceSpecificCredential_userName,
    serviceSpecificCredential_status,

    -- * ServiceSpecificCredentialMetadata
    ServiceSpecificCredentialMetadata (..),
    newServiceSpecificCredentialMetadata,
    serviceSpecificCredentialMetadata_userName,
    serviceSpecificCredentialMetadata_status,
    serviceSpecificCredentialMetadata_serviceUserName,
    serviceSpecificCredentialMetadata_createDate,
    serviceSpecificCredentialMetadata_serviceSpecificCredentialId,
    serviceSpecificCredentialMetadata_serviceName,

    -- * SigningCertificate
    SigningCertificate (..),
    newSigningCertificate,
    signingCertificate_uploadDate,
    signingCertificate_userName,
    signingCertificate_certificateId,
    signingCertificate_certificateBody,
    signingCertificate_status,

    -- * SimulatePolicyResponse
    SimulatePolicyResponse (..),
    newSimulatePolicyResponse,
    simulatePolicyResponse_evaluationResults,
    simulatePolicyResponse_marker,
    simulatePolicyResponse_isTruncated,

    -- * Statement
    Statement (..),
    newStatement,
    statement_sourcePolicyId,
    statement_startPosition,
    statement_endPosition,
    statement_sourcePolicyType,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TrackedActionLastAccessed
    TrackedActionLastAccessed (..),
    newTrackedActionLastAccessed,
    trackedActionLastAccessed_lastAccessedRegion,
    trackedActionLastAccessed_lastAccessedEntity,
    trackedActionLastAccessed_actionName,
    trackedActionLastAccessed_lastAccessedTime,

    -- * User
    User (..),
    newUser,
    user_tags,
    user_path,
    user_passwordLastUsed,
    user_permissionsBoundary,
    user_userName,
    user_userId,
    user_arn,
    user_createDate,

    -- * UserDetail
    UserDetail (..),
    newUserDetail,
    userDetail_tags,
    userDetail_userName,
    userDetail_arn,
    userDetail_path,
    userDetail_groupList,
    userDetail_attachedManagedPolicies,
    userDetail_permissionsBoundary,
    userDetail_userId,
    userDetail_createDate,
    userDetail_userPolicyList,

    -- * VirtualMFADevice
    VirtualMFADevice (..),
    newVirtualMFADevice,
    virtualMFADevice_tags,
    virtualMFADevice_user,
    virtualMFADevice_base32StringSeed,
    virtualMFADevice_enableDate,
    virtualMFADevice_qRCodePNG,
    virtualMFADevice_serialNumber,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types.AccessAdvisorUsageGranularityType
import Amazonka.IAM.Types.AccessDetail
import Amazonka.IAM.Types.AccessKeyInfo
import Amazonka.IAM.Types.AccessKeyLastUsed
import Amazonka.IAM.Types.AccessKeyMetadata
import Amazonka.IAM.Types.AssignmentStatusType
import Amazonka.IAM.Types.AttachedPermissionsBoundary
import Amazonka.IAM.Types.AttachedPolicy
import Amazonka.IAM.Types.ContextEntry
import Amazonka.IAM.Types.ContextKeyTypeEnum
import Amazonka.IAM.Types.DeletionTaskFailureReasonType
import Amazonka.IAM.Types.DeletionTaskStatusType
import Amazonka.IAM.Types.EncodingType
import Amazonka.IAM.Types.EntityDetails
import Amazonka.IAM.Types.EntityInfo
import Amazonka.IAM.Types.EntityType
import Amazonka.IAM.Types.ErrorDetails
import Amazonka.IAM.Types.EvaluationResult
import Amazonka.IAM.Types.GetContextKeysForPolicyResponse
import Amazonka.IAM.Types.GlobalEndpointTokenVersion
import Amazonka.IAM.Types.Group
import Amazonka.IAM.Types.GroupDetail
import Amazonka.IAM.Types.InstanceProfile
import Amazonka.IAM.Types.JobStatusType
import Amazonka.IAM.Types.ListPoliciesGrantingServiceAccessEntry
import Amazonka.IAM.Types.LoginProfile
import Amazonka.IAM.Types.MFADevice
import Amazonka.IAM.Types.ManagedPolicyDetail
import Amazonka.IAM.Types.OpenIDConnectProviderListEntry
import Amazonka.IAM.Types.OrganizationsDecisionDetail
import Amazonka.IAM.Types.PasswordPolicy
import Amazonka.IAM.Types.PermissionsBoundaryAttachmentType
import Amazonka.IAM.Types.PermissionsBoundaryDecisionDetail
import Amazonka.IAM.Types.Policy
import Amazonka.IAM.Types.PolicyDetail
import Amazonka.IAM.Types.PolicyEvaluationDecisionType
import Amazonka.IAM.Types.PolicyGrantingServiceAccess
import Amazonka.IAM.Types.PolicyGroup
import Amazonka.IAM.Types.PolicyOwnerEntityType
import Amazonka.IAM.Types.PolicyRole
import Amazonka.IAM.Types.PolicyScopeType
import Amazonka.IAM.Types.PolicySourceType
import Amazonka.IAM.Types.PolicyType
import Amazonka.IAM.Types.PolicyUsageType
import Amazonka.IAM.Types.PolicyUser
import Amazonka.IAM.Types.PolicyVersion
import Amazonka.IAM.Types.Position
import Amazonka.IAM.Types.ReportFormatType
import Amazonka.IAM.Types.ReportStateType
import Amazonka.IAM.Types.ResourceSpecificResult
import Amazonka.IAM.Types.Role
import Amazonka.IAM.Types.RoleDetail
import Amazonka.IAM.Types.RoleLastUsed
import Amazonka.IAM.Types.RoleUsageType
import Amazonka.IAM.Types.SAMLProviderListEntry
import Amazonka.IAM.Types.SSHPublicKey
import Amazonka.IAM.Types.SSHPublicKeyMetadata
import Amazonka.IAM.Types.ServerCertificate
import Amazonka.IAM.Types.ServerCertificateMetadata
import Amazonka.IAM.Types.ServiceLastAccessed
import Amazonka.IAM.Types.ServiceSpecificCredential
import Amazonka.IAM.Types.ServiceSpecificCredentialMetadata
import Amazonka.IAM.Types.SigningCertificate
import Amazonka.IAM.Types.SimulatePolicyResponse
import Amazonka.IAM.Types.SortKeyType
import Amazonka.IAM.Types.Statement
import Amazonka.IAM.Types.StatusType
import Amazonka.IAM.Types.SummaryKeyType
import Amazonka.IAM.Types.Tag
import Amazonka.IAM.Types.TrackedActionLastAccessed
import Amazonka.IAM.Types.User
import Amazonka.IAM.Types.UserDetail
import Amazonka.IAM.Types.VirtualMFADevice
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2010-05-08@ of the Amazon Identity and Access Management SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "IAM",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "iam",
      Core._serviceSigningName = "iam",
      Core._serviceVersion = "2010-05-08",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseXMLError "IAM",
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

-- | The request was rejected because it referenced an entity that is
-- temporarily unmodifiable, such as a user name that was deleted and then
-- recreated. The error indicates that the request is likely to succeed if
-- you try again after waiting several minutes. The error message describes
-- the entity.
_EntityTemporarilyUnmodifiableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EntityTemporarilyUnmodifiableException =
  Core._MatchServiceError
    defaultService
    "EntityTemporarilyUnmodifiable"
    Prelude.. Core.hasStatus 409

-- | The specified service does not support service-specific credentials.
_ServiceNotSupportedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceNotSupportedException =
  Core._MatchServiceError
    defaultService
    "NotSupportedService"
    Prelude.. Core.hasStatus 404

-- | The request failed because a provided policy could not be successfully
-- evaluated. An additional detailed message indicates the source of the
-- failure.
_PolicyEvaluationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PolicyEvaluationException =
  Core._MatchServiceError
    defaultService
    "PolicyEvaluation"
    Prelude.. Core.hasStatus 500

-- | The request was rejected because the same certificate is associated with
-- an IAM user in the account.
_DuplicateCertificateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DuplicateCertificateException =
  Core._MatchServiceError
    defaultService
    "DuplicateCertificate"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because it attempted to create a resource that
-- already exists.
_EntityAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EntityAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "EntityAlreadyExists"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because an invalid or out-of-range value was
-- supplied for an input parameter.
_InvalidInputException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidInputException =
  Core._MatchServiceError
    defaultService
    "InvalidInput"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the provided password did not meet the
-- requirements imposed by the account password policy.
_PasswordPolicyViolationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PasswordPolicyViolationException =
  Core._MatchServiceError
    defaultService
    "PasswordPolicyViolation"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the certificate is invalid.
_InvalidCertificateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCertificateException =
  Core._MatchServiceError
    defaultService
    "InvalidCertificate"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because multiple requests to change this object
-- were submitted simultaneously. Wait a few minutes and submit your
-- request again.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModification"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because the public key encoding format is
-- unsupported or unrecognized.
_UnrecognizedPublicKeyEncodingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnrecognizedPublicKeyEncodingException =
  Core._MatchServiceError
    defaultService
    "UnrecognizedPublicKeyEncoding"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the SSH public key is already
-- associated with the specified IAM user.
_DuplicateSSHPublicKeyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DuplicateSSHPublicKeyException =
  Core._MatchServiceError
    defaultService
    "DuplicateSSHPublicKey"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the credential report does not exist.
-- To generate a credential report, use GenerateCredentialReport.
_CredentialReportNotPresentException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CredentialReportNotPresentException =
  Core._MatchServiceError
    defaultService
    "ReportNotPresent"
    Prelude.. Core.hasStatus 410

-- | The request was rejected because it referenced a resource entity that
-- does not exist. The error message describes the resource.
_NoSuchEntityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchEntityException =
  Core._MatchServiceError
    defaultService
    "NoSuchEntity"
    Prelude.. Core.hasStatus 404

-- | The request failed because Amazon Web Services service role policies can
-- only be attached to the service-linked role for that service.
_PolicyNotAttachableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PolicyNotAttachableException =
  Core._MatchServiceError
    defaultService
    "PolicyNotAttachable"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because it attempted to create resources beyond
-- the current Amazon Web Services account limits. The error message
-- describes the limit exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because the certificate was malformed or
-- expired. The error message describes the specific error.
_MalformedCertificateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MalformedCertificateException =
  Core._MatchServiceError
    defaultService
    "MalformedCertificate"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the public key certificate and the
-- private key do not match.
_KeyPairMismatchException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KeyPairMismatchException =
  Core._MatchServiceError
    defaultService
    "KeyPairMismatch"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the credential report is still being
-- generated.
_CredentialReportNotReadyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CredentialReportNotReadyException =
  Core._MatchServiceError
    defaultService
    "ReportInProgress"
    Prelude.. Core.hasStatus 404

-- | The request was rejected because only the service that depends on the
-- service-linked role can modify or delete the role on your behalf. The
-- error message includes the name of the service that depends on this
-- service-linked role. You must request the change through that service.
_UnmodifiableEntityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnmodifiableEntityException =
  Core._MatchServiceError
    defaultService
    "UnmodifiableEntity"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the authentication code was not
-- recognized. The error message describes the specific error.
_InvalidAuthenticationCodeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidAuthenticationCodeException =
  Core._MatchServiceError
    defaultService
    "InvalidAuthenticationCode"
    Prelude.. Core.hasStatus 403

-- | The request failed because the maximum number of concurrent requests for
-- this account are already running.
_ReportGenerationLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ReportGenerationLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ReportGenerationLimitExceeded"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because the policy document was malformed. The
-- error message describes the specific error.
_MalformedPolicyDocumentException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MalformedPolicyDocumentException =
  Core._MatchServiceError
    defaultService
    "MalformedPolicyDocument"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the type of user for the transaction
-- was incorrect.
_InvalidUserTypeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidUserTypeException =
  Core._MatchServiceError
    defaultService
    "InvalidUserType"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the most recent credential report has
-- expired. To generate a new credential report, use
-- GenerateCredentialReport. For more information about credential report
-- expiration, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Getting credential reports>
-- in the /IAM User Guide/.
_CredentialReportExpiredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CredentialReportExpiredException =
  Core._MatchServiceError
    defaultService
    "ReportExpired"
    Prelude.. Core.hasStatus 410

-- | The request was rejected because it attempted to delete a resource that
-- has attached subordinate entities. The error message describes these
-- entities.
_DeleteConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DeleteConflictException =
  Core._MatchServiceError
    defaultService
    "DeleteConflict"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because the public key is malformed or
-- otherwise invalid.
_InvalidPublicKeyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidPublicKeyException =
  Core._MatchServiceError
    defaultService
    "InvalidPublicKey"
    Prelude.. Core.hasStatus 400

-- | The request processing has failed because of an unknown error, exception
-- or failure.
_ServiceFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceFailureException =
  Core._MatchServiceError
    defaultService
    "ServiceFailure"
    Prelude.. Core.hasStatus 500

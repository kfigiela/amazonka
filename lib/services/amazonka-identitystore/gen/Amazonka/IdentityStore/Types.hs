{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IdentityStore.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IdentityStore.Types
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

    -- * Address
    Address (..),
    newAddress,
    address_type,
    address_streetAddress,
    address_formatted,
    address_postalCode,
    address_country,
    address_region,
    address_locality,
    address_primary,

    -- * AlternateIdentifier
    AlternateIdentifier (..),
    newAlternateIdentifier,
    alternateIdentifier_externalId,
    alternateIdentifier_uniqueAttribute,

    -- * AttributeOperation
    AttributeOperation (..),
    newAttributeOperation,
    attributeOperation_attributeValue,
    attributeOperation_attributePath,

    -- * AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- * Email
    Email (..),
    newEmail,
    email_type,
    email_primary,
    email_value,

    -- * ExternalId
    ExternalId (..),
    newExternalId,
    externalId_issuer,
    externalId_id,

    -- * Filter
    Filter (..),
    newFilter,
    filter_attributePath,
    filter_attributeValue,

    -- * Group
    Group (..),
    newGroup,
    group_externalIds,
    group_displayName,
    group_description,
    group_groupId,
    group_identityStoreId,

    -- * GroupMembership
    GroupMembership (..),
    newGroupMembership,
    groupMembership_memberId,
    groupMembership_membershipId,
    groupMembership_groupId,
    groupMembership_identityStoreId,

    -- * GroupMembershipExistenceResult
    GroupMembershipExistenceResult (..),
    newGroupMembershipExistenceResult,
    groupMembershipExistenceResult_memberId,
    groupMembershipExistenceResult_membershipExists,
    groupMembershipExistenceResult_groupId,

    -- * MemberId
    MemberId (..),
    newMemberId,
    memberId_userId,

    -- * Name
    Name (..),
    newName,
    name_familyName,
    name_honorificPrefix,
    name_formatted,
    name_givenName,
    name_honorificSuffix,
    name_middleName,

    -- * PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,
    phoneNumber_type,
    phoneNumber_primary,
    phoneNumber_value,

    -- * UniqueAttribute
    UniqueAttribute (..),
    newUniqueAttribute,
    uniqueAttribute_attributePath,
    uniqueAttribute_attributeValue,

    -- * User
    User (..),
    newUser,
    user_name,
    user_externalIds,
    user_userName,
    user_locale,
    user_timezone,
    user_displayName,
    user_userType,
    user_profileUrl,
    user_preferredLanguage,
    user_title,
    user_emails,
    user_addresses,
    user_nickName,
    user_phoneNumbers,
    user_userId,
    user_identityStoreId,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IdentityStore.Types.Address
import Amazonka.IdentityStore.Types.AlternateIdentifier
import Amazonka.IdentityStore.Types.AttributeOperation
import Amazonka.IdentityStore.Types.AttributeValue
import Amazonka.IdentityStore.Types.Email
import Amazonka.IdentityStore.Types.ExternalId
import Amazonka.IdentityStore.Types.Filter
import Amazonka.IdentityStore.Types.Group
import Amazonka.IdentityStore.Types.GroupMembership
import Amazonka.IdentityStore.Types.GroupMembershipExistenceResult
import Amazonka.IdentityStore.Types.MemberId
import Amazonka.IdentityStore.Types.Name
import Amazonka.IdentityStore.Types.PhoneNumber
import Amazonka.IdentityStore.Types.UniqueAttribute
import Amazonka.IdentityStore.Types.User
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-06-15@ of the Amazon SSO Identity Store SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "IdentityStore",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "identitystore",
      Core._serviceSigningName = "identitystore",
      Core._serviceVersion = "2020-06-15",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "IdentityStore",
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

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | The request processing has failed because of an unknown error, exception
-- or failure with an internal server.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | The request would cause the number of users or groups in the identity
-- store to exceed the maximum allowed.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | Indicates that a requested resource is not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | This request cannot be completed for one of the following reasons:
--
-- -   Performing the requested operation would violate an existing
--     uniqueness claim in the identity store. Resolve the conflict before
--     retrying this request.
--
-- -   The requested resource was being concurrently modified by another
--     request.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | Indicates that the principal has crossed the throttling limits of the
-- API operations.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The request failed because it contains a syntax error.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

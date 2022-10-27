{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SNS.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SNS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _BatchEntryIdsNotDistinctException,
    _EmptyBatchRequestException,
    _PlatformApplicationDisabledException,
    _InternalErrorException,
    _NotFoundException,
    _UserErrorException,
    _OptedOutException,
    _ResourceNotFoundException,
    _TopicLimitExceededException,
    _KMSAccessDeniedException,
    _ConcurrentAccessException,
    _InvalidBatchEntryIdException,
    _BatchRequestTooLongException,
    _SubscriptionLimitExceededException,
    _InvalidSecurityException,
    _AuthorizationErrorException,
    _KMSDisabledException,
    _TooManyEntriesInBatchRequestException,
    _FilterPolicyLimitExceededException,
    _TagLimitExceededException,
    _KMSInvalidStateException,
    _ValidationException,
    _VerificationException,
    _KMSNotFoundException,
    _StaleTagException,
    _EndpointDisabledException,
    _ThrottledException,
    _KMSThrottlingException,
    _InvalidParameterValueException,
    _TagPolicyException,
    _KMSOptInRequired,
    _InvalidParameterException,

    -- * LanguageCodeString
    LanguageCodeString (..),

    -- * NumberCapability
    NumberCapability (..),

    -- * RouteType
    RouteType (..),

    -- * SMSSandboxPhoneNumberVerificationStatus
    SMSSandboxPhoneNumberVerificationStatus (..),

    -- * BatchResultErrorEntry
    BatchResultErrorEntry (..),
    newBatchResultErrorEntry,
    batchResultErrorEntry_message,
    batchResultErrorEntry_id,
    batchResultErrorEntry_code,
    batchResultErrorEntry_senderFault,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,
    endpoint_attributes,
    endpoint_endpointArn,

    -- * MessageAttributeValue
    MessageAttributeValue (..),
    newMessageAttributeValue,
    messageAttributeValue_binaryValue,
    messageAttributeValue_stringValue,
    messageAttributeValue_dataType,

    -- * PhoneNumberInformation
    PhoneNumberInformation (..),
    newPhoneNumberInformation,
    phoneNumberInformation_routeType,
    phoneNumberInformation_status,
    phoneNumberInformation_iso2CountryCode,
    phoneNumberInformation_numberCapabilities,
    phoneNumberInformation_phoneNumber,
    phoneNumberInformation_createdAt,

    -- * PlatformApplication
    PlatformApplication (..),
    newPlatformApplication,
    platformApplication_platformApplicationArn,
    platformApplication_attributes,

    -- * PublishBatchRequestEntry
    PublishBatchRequestEntry (..),
    newPublishBatchRequestEntry,
    publishBatchRequestEntry_messageDeduplicationId,
    publishBatchRequestEntry_messageGroupId,
    publishBatchRequestEntry_messageAttributes,
    publishBatchRequestEntry_messageStructure,
    publishBatchRequestEntry_subject,
    publishBatchRequestEntry_id,
    publishBatchRequestEntry_message,

    -- * PublishBatchResultEntry
    PublishBatchResultEntry (..),
    newPublishBatchResultEntry,
    publishBatchResultEntry_messageId,
    publishBatchResultEntry_id,
    publishBatchResultEntry_sequenceNumber,

    -- * SMSSandboxPhoneNumber
    SMSSandboxPhoneNumber (..),
    newSMSSandboxPhoneNumber,
    sMSSandboxPhoneNumber_status,
    sMSSandboxPhoneNumber_phoneNumber,

    -- * Subscription
    Subscription (..),
    newSubscription,
    subscription_subscriptionArn,
    subscription_topicArn,
    subscription_owner,
    subscription_protocol,
    subscription_endpoint,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * Topic
    Topic (..),
    newTopic,
    topic_topicArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SNS.Types.BatchResultErrorEntry
import Amazonka.SNS.Types.Endpoint
import Amazonka.SNS.Types.LanguageCodeString
import Amazonka.SNS.Types.MessageAttributeValue
import Amazonka.SNS.Types.NumberCapability
import Amazonka.SNS.Types.PhoneNumberInformation
import Amazonka.SNS.Types.PlatformApplication
import Amazonka.SNS.Types.PublishBatchRequestEntry
import Amazonka.SNS.Types.PublishBatchResultEntry
import Amazonka.SNS.Types.RouteType
import Amazonka.SNS.Types.SMSSandboxPhoneNumber
import Amazonka.SNS.Types.SMSSandboxPhoneNumberVerificationStatus
import Amazonka.SNS.Types.Subscription
import Amazonka.SNS.Types.Tag
import Amazonka.SNS.Types.Topic
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2010-03-31@ of the Amazon Simple Notification Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "SNS",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "sns",
      Core._serviceSigningName = "sns",
      Core._serviceVersion = "2010-03-31",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseXMLError "SNS",
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

-- | Two or more batch entries in the request have the same @Id@.
_BatchEntryIdsNotDistinctException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BatchEntryIdsNotDistinctException =
  Core._MatchServiceError
    defaultService
    "BatchEntryIdsNotDistinct"
    Prelude.. Core.hasStatus 400

-- | The batch request doesn\'t contain any entries.
_EmptyBatchRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EmptyBatchRequestException =
  Core._MatchServiceError
    defaultService
    "EmptyBatchRequest"
    Prelude.. Core.hasStatus 400

-- | Exception error indicating platform application disabled.
_PlatformApplicationDisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PlatformApplicationDisabledException =
  Core._MatchServiceError
    defaultService
    "PlatformApplicationDisabled"
    Prelude.. Core.hasStatus 400

-- | Indicates an internal service error.
_InternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalErrorException =
  Core._MatchServiceError
    defaultService
    "InternalError"
    Prelude.. Core.hasStatus 500

-- | Indicates that the requested resource does not exist.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError defaultService "NotFound"
    Prelude.. Core.hasStatus 404

-- | Indicates that a request parameter does not comply with the associated
-- constraints.
_UserErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UserErrorException =
  Core._MatchServiceError defaultService "UserError"
    Prelude.. Core.hasStatus 400

-- | Indicates that the specified phone number opted out of receiving SMS
-- messages from your Amazon Web Services account. You can\'t send SMS
-- messages to phone numbers that opt out.
_OptedOutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OptedOutException =
  Core._MatchServiceError defaultService "OptedOut"
    Prelude.. Core.hasStatus 400

-- | Can’t perform the action on the specified resource. Make sure that the
-- resource exists.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Core.hasStatus 404

-- | Indicates that the customer already owns the maximum allowed number of
-- topics.
_TopicLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TopicLimitExceededException =
  Core._MatchServiceError
    defaultService
    "TopicLimitExceeded"
    Prelude.. Core.hasStatus 403

-- | The ciphertext references a key that doesn\'t exist or that you don\'t
-- have access to.
_KMSAccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSAccessDeniedException =
  Core._MatchServiceError
    defaultService
    "KMSAccessDenied"
    Prelude.. Core.hasStatus 400

-- | Can\'t perform multiple operations on a tag simultaneously. Perform the
-- operations sequentially.
_ConcurrentAccessException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentAccessException =
  Core._MatchServiceError
    defaultService
    "ConcurrentAccess"
    Prelude.. Core.hasStatus 400

-- | The @Id@ of a batch entry in a batch request doesn\'t abide by the
-- specification.
_InvalidBatchEntryIdException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidBatchEntryIdException =
  Core._MatchServiceError
    defaultService
    "InvalidBatchEntryId"
    Prelude.. Core.hasStatus 400

-- | The length of all the batch messages put together is more than the
-- limit.
_BatchRequestTooLongException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BatchRequestTooLongException =
  Core._MatchServiceError
    defaultService
    "BatchRequestTooLong"
    Prelude.. Core.hasStatus 400

-- | Indicates that the customer already owns the maximum allowed number of
-- subscriptions.
_SubscriptionLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SubscriptionLimitExceededException =
  Core._MatchServiceError
    defaultService
    "SubscriptionLimitExceeded"
    Prelude.. Core.hasStatus 403

-- | The credential signature isn\'t valid. You must use an HTTPS endpoint
-- and sign your request using Signature Version 4.
_InvalidSecurityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSecurityException =
  Core._MatchServiceError
    defaultService
    "InvalidSecurity"
    Prelude.. Core.hasStatus 403

-- | Indicates that the user has been denied access to the requested
-- resource.
_AuthorizationErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AuthorizationErrorException =
  Core._MatchServiceError
    defaultService
    "AuthorizationError"
    Prelude.. Core.hasStatus 403

-- | The request was rejected because the specified customer master key (CMK)
-- isn\'t enabled.
_KMSDisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSDisabledException =
  Core._MatchServiceError
    defaultService
    "KMSDisabled"
    Prelude.. Core.hasStatus 400

-- | The batch request contains more entries than permissible.
_TooManyEntriesInBatchRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyEntriesInBatchRequestException =
  Core._MatchServiceError
    defaultService
    "TooManyEntriesInBatchRequest"
    Prelude.. Core.hasStatus 400

-- | Indicates that the number of filter polices in your Amazon Web Services
-- account exceeds the limit. To add more filter polices, submit an Amazon
-- SNS Limit Increase case in the Amazon Web Services Support Center.
_FilterPolicyLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FilterPolicyLimitExceededException =
  Core._MatchServiceError
    defaultService
    "FilterPolicyLimitExceeded"
    Prelude.. Core.hasStatus 403

-- | Can\'t add more than 50 tags to a topic.
_TagLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TagLimitExceededException =
  Core._MatchServiceError
    defaultService
    "TagLimitExceeded"
    Prelude.. Core.hasStatus 400

-- | The request was rejected because the state of the specified resource
-- isn\'t valid for this request. For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key>
-- in the /Key Management Service Developer Guide/.
_KMSInvalidStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSInvalidStateException =
  Core._MatchServiceError
    defaultService
    "KMSInvalidState"
    Prelude.. Core.hasStatus 400

-- | Indicates that a parameter in the request is invalid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the one-time password (OTP) used for verification is
-- invalid.
_VerificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_VerificationException =
  Core._MatchServiceError
    defaultService
    "VerificationException"

-- | The request was rejected because the specified entity or resource can\'t
-- be found.
_KMSNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSNotFoundException =
  Core._MatchServiceError
    defaultService
    "KMSNotFound"
    Prelude.. Core.hasStatus 400

-- | A tag has been added to a resource with the same ARN as a deleted
-- resource. Wait a short while and then retry the operation.
_StaleTagException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_StaleTagException =
  Core._MatchServiceError defaultService "StaleTag"
    Prelude.. Core.hasStatus 400

-- | Exception error indicating endpoint disabled.
_EndpointDisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EndpointDisabledException =
  Core._MatchServiceError
    defaultService
    "EndpointDisabled"
    Prelude.. Core.hasStatus 400

-- | Indicates that the rate at which requests have been submitted for this
-- action exceeds the limit for your Amazon Web Services account.
_ThrottledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottledException =
  Core._MatchServiceError defaultService "Throttled"
    Prelude.. Core.hasStatus 429

-- | The request was denied due to request throttling. For more information
-- about throttling, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second Limits>
-- in the /Key Management Service Developer Guide./
_KMSThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSThrottlingException =
  Core._MatchServiceError
    defaultService
    "KMSThrottling"
    Prelude.. Core.hasStatus 400

-- | Indicates that a request parameter does not comply with the associated
-- constraints.
_InvalidParameterValueException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterValueException =
  Core._MatchServiceError
    defaultService
    "ParameterValueInvalid"
    Prelude.. Core.hasStatus 400

-- | The request doesn\'t comply with the IAM tag policy. Correct your
-- request and then retry it.
_TagPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TagPolicyException =
  Core._MatchServiceError defaultService "TagPolicy"
    Prelude.. Core.hasStatus 400

-- | The Amazon Web Services access key ID needs a subscription for the
-- service.
_KMSOptInRequired :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSOptInRequired =
  Core._MatchServiceError
    defaultService
    "KMSOptInRequired"
    Prelude.. Core.hasStatus 403

-- | Indicates that a request parameter does not comply with the associated
-- constraints.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameter"
    Prelude.. Core.hasStatus 400

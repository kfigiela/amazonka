{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SmsVoice.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SmsVoice.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _AlreadyExistsException,
    _LimitExceededException,
    _BadRequestException,
    _InternalServiceErrorException,
    _TooManyRequestsException,

    -- * EventType
    EventType (..),

    -- * CallInstructionsMessageType
    CallInstructionsMessageType (..),
    newCallInstructionsMessageType,
    callInstructionsMessageType_text,

    -- * CloudWatchLogsDestination
    CloudWatchLogsDestination (..),
    newCloudWatchLogsDestination,
    cloudWatchLogsDestination_logGroupArn,
    cloudWatchLogsDestination_iamRoleArn,

    -- * EventDestination
    EventDestination (..),
    newEventDestination,
    eventDestination_name,
    eventDestination_cloudWatchLogsDestination,
    eventDestination_matchingEventTypes,
    eventDestination_snsDestination,
    eventDestination_enabled,
    eventDestination_kinesisFirehoseDestination,

    -- * EventDestinationDefinition
    EventDestinationDefinition (..),
    newEventDestinationDefinition,
    eventDestinationDefinition_cloudWatchLogsDestination,
    eventDestinationDefinition_matchingEventTypes,
    eventDestinationDefinition_snsDestination,
    eventDestinationDefinition_enabled,
    eventDestinationDefinition_kinesisFirehoseDestination,

    -- * KinesisFirehoseDestination
    KinesisFirehoseDestination (..),
    newKinesisFirehoseDestination,
    kinesisFirehoseDestination_deliveryStreamArn,
    kinesisFirehoseDestination_iamRoleArn,

    -- * PlainTextMessageType
    PlainTextMessageType (..),
    newPlainTextMessageType,
    plainTextMessageType_voiceId,
    plainTextMessageType_languageCode,
    plainTextMessageType_text,

    -- * SSMLMessageType
    SSMLMessageType (..),
    newSSMLMessageType,
    sSMLMessageType_voiceId,
    sSMLMessageType_languageCode,
    sSMLMessageType_text,

    -- * SnsDestination
    SnsDestination (..),
    newSnsDestination,
    snsDestination_topicArn,

    -- * VoiceMessageContent
    VoiceMessageContent (..),
    newVoiceMessageContent,
    voiceMessageContent_sSMLMessage,
    voiceMessageContent_callInstructionsMessage,
    voiceMessageContent_plainTextMessage,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign
import Amazonka.SmsVoice.Types.CallInstructionsMessageType
import Amazonka.SmsVoice.Types.CloudWatchLogsDestination
import Amazonka.SmsVoice.Types.EventDestination
import Amazonka.SmsVoice.Types.EventDestinationDefinition
import Amazonka.SmsVoice.Types.EventType
import Amazonka.SmsVoice.Types.KinesisFirehoseDestination
import Amazonka.SmsVoice.Types.PlainTextMessageType
import Amazonka.SmsVoice.Types.SSMLMessageType
import Amazonka.SmsVoice.Types.SnsDestination
import Amazonka.SmsVoice.Types.VoiceMessageContent

-- | API version @2018-09-05@ of the Amazon Pinpoint SMS and Voice Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "SmsVoice",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "sms-voice.pinpoint",
      Core._serviceSigningName = "sms-voice",
      Core._serviceVersion = "2018-09-05",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "SmsVoice",
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

-- | The resource you attempted to access doesn\'t exist.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | The resource specified in your request already exists.
_AlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "AlreadyExistsException"
    Prelude.. Core.hasStatus 409

-- | There are too many instances of the specified resource type.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 412

-- | The input you provided is invalid.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | The API encountered an unexpected error and couldn\'t complete the
-- request. You might be able to successfully issue the request again in
-- the future.
_InternalServiceErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServiceErrorException"
    Prelude.. Core.hasStatus 500

-- | You\'ve issued too many requests to the resource. Wait a few minutes,
-- and then try again.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

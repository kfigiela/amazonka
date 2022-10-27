{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ChimeSdkMeetings.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMeetings.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _UnauthorizedException,
    _TooManyTagsException,
    _NotFoundException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,
    _UnprocessableEntityException,
    _LimitExceededException,
    _ForbiddenException,
    _ConflictException,
    _ThrottlingException,
    _BadRequestException,
    _ServiceFailureException,

    -- * MediaCapabilities
    MediaCapabilities (..),

    -- * MeetingFeatureStatus
    MeetingFeatureStatus (..),

    -- * TranscribeContentIdentificationType
    TranscribeContentIdentificationType (..),

    -- * TranscribeContentRedactionType
    TranscribeContentRedactionType (..),

    -- * TranscribeLanguageCode
    TranscribeLanguageCode (..),

    -- * TranscribeMedicalContentIdentificationType
    TranscribeMedicalContentIdentificationType (..),

    -- * TranscribeMedicalLanguageCode
    TranscribeMedicalLanguageCode (..),

    -- * TranscribeMedicalRegion
    TranscribeMedicalRegion (..),

    -- * TranscribeMedicalSpecialty
    TranscribeMedicalSpecialty (..),

    -- * TranscribeMedicalType
    TranscribeMedicalType (..),

    -- * TranscribePartialResultsStability
    TranscribePartialResultsStability (..),

    -- * TranscribeRegion
    TranscribeRegion (..),

    -- * TranscribeVocabularyFilterMethod
    TranscribeVocabularyFilterMethod (..),

    -- * Attendee
    Attendee (..),
    newAttendee,
    attendee_externalUserId,
    attendee_attendeeId,
    attendee_capabilities,
    attendee_joinToken,

    -- * AttendeeCapabilities
    AttendeeCapabilities (..),
    newAttendeeCapabilities,
    attendeeCapabilities_audio,
    attendeeCapabilities_video,
    attendeeCapabilities_content,

    -- * AttendeeIdItem
    AttendeeIdItem (..),
    newAttendeeIdItem,
    attendeeIdItem_attendeeId,

    -- * AudioFeatures
    AudioFeatures (..),
    newAudioFeatures,
    audioFeatures_echoReduction,

    -- * CreateAttendeeError
    CreateAttendeeError (..),
    newCreateAttendeeError,
    createAttendeeError_externalUserId,
    createAttendeeError_errorMessage,
    createAttendeeError_errorCode,

    -- * CreateAttendeeRequestItem
    CreateAttendeeRequestItem (..),
    newCreateAttendeeRequestItem,
    createAttendeeRequestItem_capabilities,
    createAttendeeRequestItem_externalUserId,

    -- * EngineTranscribeMedicalSettings
    EngineTranscribeMedicalSettings (..),
    newEngineTranscribeMedicalSettings,
    engineTranscribeMedicalSettings_vocabularyName,
    engineTranscribeMedicalSettings_contentIdentificationType,
    engineTranscribeMedicalSettings_region,
    engineTranscribeMedicalSettings_languageCode,
    engineTranscribeMedicalSettings_specialty,
    engineTranscribeMedicalSettings_type,

    -- * EngineTranscribeSettings
    EngineTranscribeSettings (..),
    newEngineTranscribeSettings,
    engineTranscribeSettings_vocabularyFilterMethod,
    engineTranscribeSettings_vocabularyName,
    engineTranscribeSettings_contentIdentificationType,
    engineTranscribeSettings_enablePartialResultsStabilization,
    engineTranscribeSettings_languageModelName,
    engineTranscribeSettings_piiEntityTypes,
    engineTranscribeSettings_identifyLanguage,
    engineTranscribeSettings_preferredLanguage,
    engineTranscribeSettings_region,
    engineTranscribeSettings_languageCode,
    engineTranscribeSettings_vocabularyFilterName,
    engineTranscribeSettings_contentRedactionType,
    engineTranscribeSettings_partialResultsStability,
    engineTranscribeSettings_languageOptions,

    -- * MediaPlacement
    MediaPlacement (..),
    newMediaPlacement,
    mediaPlacement_signalingUrl,
    mediaPlacement_screenViewingUrl,
    mediaPlacement_eventIngestionUrl,
    mediaPlacement_audioHostUrl,
    mediaPlacement_screenSharingUrl,
    mediaPlacement_screenDataUrl,
    mediaPlacement_audioFallbackUrl,
    mediaPlacement_turnControlUrl,

    -- * Meeting
    Meeting (..),
    newMeeting,
    meeting_meetingFeatures,
    meeting_meetingHostId,
    meeting_mediaRegion,
    meeting_externalMeetingId,
    meeting_mediaPlacement,
    meeting_meetingId,
    meeting_tenantIds,
    meeting_meetingArn,
    meeting_primaryMeetingId,

    -- * MeetingFeaturesConfiguration
    MeetingFeaturesConfiguration (..),
    newMeetingFeaturesConfiguration,
    meetingFeaturesConfiguration_audio,

    -- * NotificationsConfiguration
    NotificationsConfiguration (..),
    newNotificationsConfiguration,
    notificationsConfiguration_lambdaFunctionArn,
    notificationsConfiguration_snsTopicArn,
    notificationsConfiguration_sqsQueueArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TranscriptionConfiguration
    TranscriptionConfiguration (..),
    newTranscriptionConfiguration,
    transcriptionConfiguration_engineTranscribeMedicalSettings,
    transcriptionConfiguration_engineTranscribeSettings,
  )
where

import Amazonka.ChimeSdkMeetings.Types.Attendee
import Amazonka.ChimeSdkMeetings.Types.AttendeeCapabilities
import Amazonka.ChimeSdkMeetings.Types.AttendeeIdItem
import Amazonka.ChimeSdkMeetings.Types.AudioFeatures
import Amazonka.ChimeSdkMeetings.Types.CreateAttendeeError
import Amazonka.ChimeSdkMeetings.Types.CreateAttendeeRequestItem
import Amazonka.ChimeSdkMeetings.Types.EngineTranscribeMedicalSettings
import Amazonka.ChimeSdkMeetings.Types.EngineTranscribeSettings
import Amazonka.ChimeSdkMeetings.Types.MediaCapabilities
import Amazonka.ChimeSdkMeetings.Types.MediaPlacement
import Amazonka.ChimeSdkMeetings.Types.Meeting
import Amazonka.ChimeSdkMeetings.Types.MeetingFeatureStatus
import Amazonka.ChimeSdkMeetings.Types.MeetingFeaturesConfiguration
import Amazonka.ChimeSdkMeetings.Types.NotificationsConfiguration
import Amazonka.ChimeSdkMeetings.Types.Tag
import Amazonka.ChimeSdkMeetings.Types.TranscribeContentIdentificationType
import Amazonka.ChimeSdkMeetings.Types.TranscribeContentRedactionType
import Amazonka.ChimeSdkMeetings.Types.TranscribeLanguageCode
import Amazonka.ChimeSdkMeetings.Types.TranscribeMedicalContentIdentificationType
import Amazonka.ChimeSdkMeetings.Types.TranscribeMedicalLanguageCode
import Amazonka.ChimeSdkMeetings.Types.TranscribeMedicalRegion
import Amazonka.ChimeSdkMeetings.Types.TranscribeMedicalSpecialty
import Amazonka.ChimeSdkMeetings.Types.TranscribeMedicalType
import Amazonka.ChimeSdkMeetings.Types.TranscribePartialResultsStability
import Amazonka.ChimeSdkMeetings.Types.TranscribeRegion
import Amazonka.ChimeSdkMeetings.Types.TranscribeVocabularyFilterMethod
import Amazonka.ChimeSdkMeetings.Types.TranscriptionConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-07-15@ of the Amazon Chime SDK Meetings SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ChimeSdkMeetings",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "meetings-chime",
      Core._serviceSigningName = "chime",
      Core._serviceVersion = "2021-07-15",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "ChimeSdkMeetings",
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

-- | The user isn\'t authorized to request a resource.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | Too many tags were added to the specified resource.
_TooManyTagsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyTagsException =
  Core._MatchServiceError
    defaultService
    "TooManyTagsException"
    Prelude.. Core.hasStatus 400

-- | One or more of the resources in the request does not exist in the
-- system.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | The service is currently unavailable.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | The resource that you want to tag couldn\'t be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The request was well-formed but was unable to be followed due to
-- semantic errors.
_UnprocessableEntityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnprocessableEntityException =
  Core._MatchServiceError
    defaultService
    "UnprocessableEntityException"
    Prelude.. Core.hasStatus 422

-- | The request exceeds the resource limit.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400

-- | The client is permanently forbidden from making the request.
_ForbiddenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ForbiddenException =
  Core._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Core.hasStatus 403

-- | Multiple instances of the same request have been made simultaneously.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The number of customer requests exceeds the request rate limit.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The input parameters don\'t match the service\'s restrictions.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | The service encountered an unexpected error.
_ServiceFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceFailureException =
  Core._MatchServiceError
    defaultService
    "ServiceFailureException"
    Prelude.. Core.hasStatus 500

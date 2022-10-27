{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ConnectParticipant.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ConnectParticipant.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * ArtifactStatus
    ArtifactStatus (..),

    -- * ChatItemType
    ChatItemType (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * ParticipantRole
    ParticipantRole (..),

    -- * ScanDirection
    ScanDirection (..),

    -- * SortKey
    SortKey (..),

    -- * AttachmentItem
    AttachmentItem (..),
    newAttachmentItem,
    attachmentItem_status,
    attachmentItem_attachmentId,
    attachmentItem_attachmentName,
    attachmentItem_contentType,

    -- * ConnectionCredentials
    ConnectionCredentials (..),
    newConnectionCredentials,
    connectionCredentials_expiry,
    connectionCredentials_connectionToken,

    -- * Item
    Item (..),
    newItem,
    item_type,
    item_participantId,
    item_displayName,
    item_id,
    item_absoluteTime,
    item_participantRole,
    item_attachments,
    item_content,
    item_contentType,

    -- * StartPosition
    StartPosition (..),
    newStartPosition,
    startPosition_id,
    startPosition_absoluteTime,
    startPosition_mostRecent,

    -- * UploadMetadata
    UploadMetadata (..),
    newUploadMetadata,
    uploadMetadata_url,
    uploadMetadata_headersToInclude,
    uploadMetadata_urlExpiry,

    -- * Websocket
    Websocket (..),
    newWebsocket,
    websocket_connectionExpiry,
    websocket_url,
  )
where

import Amazonka.ConnectParticipant.Types.ArtifactStatus
import Amazonka.ConnectParticipant.Types.AttachmentItem
import Amazonka.ConnectParticipant.Types.ChatItemType
import Amazonka.ConnectParticipant.Types.ConnectionCredentials
import Amazonka.ConnectParticipant.Types.ConnectionType
import Amazonka.ConnectParticipant.Types.Item
import Amazonka.ConnectParticipant.Types.ParticipantRole
import Amazonka.ConnectParticipant.Types.ScanDirection
import Amazonka.ConnectParticipant.Types.SortKey
import Amazonka.ConnectParticipant.Types.StartPosition
import Amazonka.ConnectParticipant.Types.UploadMetadata
import Amazonka.ConnectParticipant.Types.Websocket
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-09-07@ of the Amazon Connect Participant Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ConnectParticipant",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "participant.connect",
      Core._serviceSigningName = "execute-api",
      Core._serviceVersion = "2018-09-07",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "ConnectParticipant",
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
    Prelude.. Core.hasStatus 403

-- | This exception occurs when there is an internal failure in the Amazon
-- Connect service.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The number of attachments per contact exceeds the quota.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | An attachment with that identifier is already being uploaded.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The input fails to satisfy the constraints specified by Amazon Connect.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

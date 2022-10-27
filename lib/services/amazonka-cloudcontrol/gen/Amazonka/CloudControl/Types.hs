{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudControl.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudControl.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ConcurrentModificationException,
    _NotStabilizedException,
    _UnsupportedActionException,
    _PrivateTypeException,
    _NetworkFailureException,
    _ResourceNotFoundException,
    _GeneralServiceException,
    _NotUpdatableException,
    _AlreadyExistsException,
    _HandlerInternalFailureException,
    _ServiceInternalErrorException,
    _ThrottlingException,
    _ResourceConflictException,
    _TypeNotFoundException,
    _ServiceLimitExceededException,
    _ConcurrentOperationException,
    _RequestTokenNotFoundException,
    _HandlerFailureException,
    _InvalidRequestException,
    _InvalidCredentialsException,
    _ClientTokenConflictException,

    -- * HandlerErrorCode
    HandlerErrorCode (..),

    -- * Operation
    Operation (..),

    -- * OperationStatus
    OperationStatus (..),

    -- * ProgressEvent
    ProgressEvent (..),
    newProgressEvent,
    progressEvent_retryAfter,
    progressEvent_resourceModel,
    progressEvent_operationStatus,
    progressEvent_typeName,
    progressEvent_requestToken,
    progressEvent_identifier,
    progressEvent_errorCode,
    progressEvent_eventTime,
    progressEvent_statusMessage,
    progressEvent_operation,

    -- * ResourceDescription
    ResourceDescription (..),
    newResourceDescription,
    resourceDescription_properties,
    resourceDescription_identifier,

    -- * ResourceRequestStatusFilter
    ResourceRequestStatusFilter (..),
    newResourceRequestStatusFilter,
    resourceRequestStatusFilter_operations,
    resourceRequestStatusFilter_operationStatuses,
  )
where

import Amazonka.CloudControl.Types.HandlerErrorCode
import Amazonka.CloudControl.Types.Operation
import Amazonka.CloudControl.Types.OperationStatus
import Amazonka.CloudControl.Types.ProgressEvent
import Amazonka.CloudControl.Types.ResourceDescription
import Amazonka.CloudControl.Types.ResourceRequestStatusFilter
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-09-30@ of the Amazon Cloud Control API SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "CloudControl",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "cloudcontrolapi",
      Core._serviceSigningName = "cloudcontrolapi",
      Core._serviceVersion = "2021-09-30",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CloudControl",
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

-- | The resource is currently being modified by another operation.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The resource handler has returned that the downstream resource failed to
-- complete all of its ready-state checks.
_NotStabilizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotStabilizedException =
  Core._MatchServiceError
    defaultService
    "NotStabilizedException"

-- | The specified resource doesn\'t support this resource operation.
_UnsupportedActionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedActionException =
  Core._MatchServiceError
    defaultService
    "UnsupportedActionException"

-- | Cloud Control API hasn\'t received a valid response from the resource
-- handler, due to a configuration error. This includes issues such as the
-- resource handler returning an invalid response, or timing out.
_PrivateTypeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PrivateTypeException =
  Core._MatchServiceError
    defaultService
    "PrivateTypeException"

-- | The resource handler has returned that the request couldn\'t be
-- completed due to networking issues, such as a failure to receive a
-- response from the server.
_NetworkFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NetworkFailureException =
  Core._MatchServiceError
    defaultService
    "NetworkFailureException"

-- | A resource with the specified identifier can\'t be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The resource handler has returned that the downstream service generated
-- an error that doesn\'t map to any other handler error code.
_GeneralServiceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_GeneralServiceException =
  Core._MatchServiceError
    defaultService
    "GeneralServiceException"

-- | One or more properties included in this resource operation are defined
-- as create-only, and therefore can\'t be updated.
_NotUpdatableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotUpdatableException =
  Core._MatchServiceError
    defaultService
    "NotUpdatableException"

-- | The resource with the name requested already exists.
_AlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | The resource handler has returned that an unexpected error occurred
-- within the resource handler.
_HandlerInternalFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_HandlerInternalFailureException =
  Core._MatchServiceError
    defaultService
    "HandlerInternalFailureException"

-- | The resource handler has returned that the downstream service returned
-- an internal error, typically with a @5XX HTTP@ status code.
_ServiceInternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceInternalErrorException =
  Core._MatchServiceError
    defaultService
    "ServiceInternalErrorException"

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The resource is temporarily unavailable to be acted upon. For example,
-- if the resource is currently undergoing an operation and can\'t be acted
-- upon until that operation is finished.
_ResourceConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceConflictException =
  Core._MatchServiceError
    defaultService
    "ResourceConflictException"

-- | The specified extension doesn\'t exist in the CloudFormation registry.
_TypeNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TypeNotFoundException =
  Core._MatchServiceError
    defaultService
    "TypeNotFoundException"

-- | The resource handler has returned that a non-transient resource limit
-- was reached on the service side.
_ServiceLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceLimitExceededException"

-- | Another resource operation is currently being performed on this
-- resource.
_ConcurrentOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentOperationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentOperationException"

-- | A resource operation with the specified request token can\'t be found.
_RequestTokenNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestTokenNotFoundException =
  Core._MatchServiceError
    defaultService
    "RequestTokenNotFoundException"

-- | The resource handler has failed without a returning a more specific
-- error code. This can include timeouts.
_HandlerFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_HandlerFailureException =
  Core._MatchServiceError
    defaultService
    "HandlerFailureException"

-- | The resource handler has returned that invalid input from the user has
-- generated a generic exception.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | The resource handler has returned that the credentials provided by the
-- user are invalid.
_InvalidCredentialsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCredentialsException =
  Core._MatchServiceError
    defaultService
    "InvalidCredentialsException"

-- | The specified client token has already been used in another resource
-- request.
--
-- It\'s best practice for client tokens to be unique for each resource
-- operation request. However, client token expire after 36 hours.
_ClientTokenConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ClientTokenConflictException =
  Core._MatchServiceError
    defaultService
    "ClientTokenConflictException"

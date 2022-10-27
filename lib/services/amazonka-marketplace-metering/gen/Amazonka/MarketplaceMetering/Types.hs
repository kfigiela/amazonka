{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MarketplaceMetering.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MarketplaceMetering.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _CustomerNotEntitledException,
    _InvalidTokenException,
    _InvalidEndpointRegionException,
    _DisabledApiException,
    _InvalidCustomerIdentifierException,
    _InvalidProductCodeException,
    _ExpiredTokenException,
    _PlatformNotSupportedException,
    _InvalidUsageAllocationsException,
    _TimestampOutOfBoundsException,
    _InvalidRegionException,
    _InvalidUsageDimensionException,
    _ThrottlingException,
    _InvalidPublicKeyVersionException,
    _InvalidTagException,
    _DuplicateRequestException,
    _InternalServiceErrorException,

    -- * UsageRecordResultStatus
    UsageRecordResultStatus (..),

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * UsageAllocation
    UsageAllocation (..),
    newUsageAllocation,
    usageAllocation_tags,
    usageAllocation_allocatedUsageQuantity,

    -- * UsageRecord
    UsageRecord (..),
    newUsageRecord,
    usageRecord_quantity,
    usageRecord_usageAllocations,
    usageRecord_timestamp,
    usageRecord_customerIdentifier,
    usageRecord_dimension,

    -- * UsageRecordResult
    UsageRecordResult (..),
    newUsageRecordResult,
    usageRecordResult_status,
    usageRecordResult_meteringRecordId,
    usageRecordResult_usageRecord,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MarketplaceMetering.Types.Tag
import Amazonka.MarketplaceMetering.Types.UsageAllocation
import Amazonka.MarketplaceMetering.Types.UsageRecord
import Amazonka.MarketplaceMetering.Types.UsageRecordResult
import Amazonka.MarketplaceMetering.Types.UsageRecordResultStatus
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2016-01-14@ of the Amazon Marketplace Metering SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "MarketplaceMetering",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "metering.marketplace",
      Core._serviceSigningName = "aws-marketplace",
      Core._serviceVersion = "2016-01-14",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "MarketplaceMetering",
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

-- | Exception thrown when the customer does not have a valid subscription
-- for the product.
_CustomerNotEntitledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CustomerNotEntitledException =
  Core._MatchServiceError
    defaultService
    "CustomerNotEntitledException"

-- | Registration token is invalid.
_InvalidTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidTokenException"

-- | The endpoint being called is in a AWS Region different from your EC2
-- instance, ECS task, or EKS pod. The Region of the Metering Service
-- endpoint and the AWS Region of the resource must match.
_InvalidEndpointRegionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidEndpointRegionException =
  Core._MatchServiceError
    defaultService
    "InvalidEndpointRegionException"

-- | The API is disabled in the Region.
_DisabledApiException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DisabledApiException =
  Core._MatchServiceError
    defaultService
    "DisabledApiException"

-- | You have metered usage for a @CustomerIdentifier@ that does not exist.
_InvalidCustomerIdentifierException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCustomerIdentifierException =
  Core._MatchServiceError
    defaultService
    "InvalidCustomerIdentifierException"

-- | The product code passed does not match the product code used for
-- publishing the product.
_InvalidProductCodeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidProductCodeException =
  Core._MatchServiceError
    defaultService
    "InvalidProductCodeException"

-- | The submitted registration token has expired. This can happen if the
-- buyer\'s browser takes too long to redirect to your page, the buyer has
-- resubmitted the registration token, or your application has held on to
-- the registration token for too long. Your SaaS registration website
-- should redeem this token as soon as it is submitted by the buyer\'s
-- browser.
_ExpiredTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ExpiredTokenException =
  Core._MatchServiceError
    defaultService
    "ExpiredTokenException"

-- | AWS Marketplace does not support metering usage from the underlying
-- platform. Currently, Amazon ECS, Amazon EKS, and AWS Fargate are
-- supported.
_PlatformNotSupportedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PlatformNotSupportedException =
  Core._MatchServiceError
    defaultService
    "PlatformNotSupportedException"

-- | The usage allocation objects are invalid, or the number of allocations
-- is greater than 500 for a single usage record.
_InvalidUsageAllocationsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidUsageAllocationsException =
  Core._MatchServiceError
    defaultService
    "InvalidUsageAllocationsException"

-- | The @timestamp@ value passed in the @UsageRecord@ is out of allowed
-- range.
--
-- For @BatchMeterUsage@, if any of the records are outside of the allowed
-- range, the entire batch is not processed. You must remove invalid
-- records and try again.
_TimestampOutOfBoundsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TimestampOutOfBoundsException =
  Core._MatchServiceError
    defaultService
    "TimestampOutOfBoundsException"

-- | @RegisterUsage@ must be called in the same AWS Region the ECS task was
-- launched in. This prevents a container from hardcoding a Region (e.g.
-- withRegion(“us-east-1”) when calling @RegisterUsage@.
_InvalidRegionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRegionException =
  Core._MatchServiceError
    defaultService
    "InvalidRegionException"

-- | The usage dimension does not match one of the @UsageDimensions@
-- associated with products.
_InvalidUsageDimensionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidUsageDimensionException =
  Core._MatchServiceError
    defaultService
    "InvalidUsageDimensionException"

-- | The calls to the API are throttled.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | Public Key version is invalid.
_InvalidPublicKeyVersionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidPublicKeyVersionException =
  Core._MatchServiceError
    defaultService
    "InvalidPublicKeyVersionException"

-- | The tag is invalid, or the number of tags is greater than 5.
_InvalidTagException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTagException =
  Core._MatchServiceError
    defaultService
    "InvalidTagException"

-- | A metering record has already been emitted by the same EC2 instance, ECS
-- task, or EKS pod for the given {@usageDimension@, @timestamp@} with a
-- different @usageQuantity@.
_DuplicateRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DuplicateRequestException =
  Core._MatchServiceError
    defaultService
    "DuplicateRequestException"

-- | An internal error has occurred. Retry your request. If the problem
-- persists, post a message with details on the AWS forums.
_InternalServiceErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServiceErrorException"

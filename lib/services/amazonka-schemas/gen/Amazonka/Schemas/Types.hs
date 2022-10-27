{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Schemas.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Schemas.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _PreconditionFailedException,
    _UnauthorizedException,
    _NotFoundException,
    _ServiceUnavailableException,
    _InternalServerErrorException,
    _ForbiddenException,
    _ConflictException,
    _GoneException,
    _BadRequestException,
    _TooManyRequestsException,

    -- * CodeGenerationStatus
    CodeGenerationStatus (..),

    -- * DiscovererState
    DiscovererState (..),

    -- * Type
    Type (..),

    -- * DiscovererSummary
    DiscovererSummary (..),
    newDiscovererSummary,
    discovererSummary_tags,
    discovererSummary_discovererId,
    discovererSummary_sourceArn,
    discovererSummary_state,
    discovererSummary_crossAccount,
    discovererSummary_discovererArn,

    -- * RegistrySummary
    RegistrySummary (..),
    newRegistrySummary,
    registrySummary_tags,
    registrySummary_registryName,
    registrySummary_registryArn,

    -- * SchemaSummary
    SchemaSummary (..),
    newSchemaSummary,
    schemaSummary_tags,
    schemaSummary_schemaName,
    schemaSummary_schemaArn,
    schemaSummary_lastModified,
    schemaSummary_versionCount,

    -- * SchemaVersionSummary
    SchemaVersionSummary (..),
    newSchemaVersionSummary,
    schemaVersionSummary_type,
    schemaVersionSummary_schemaName,
    schemaVersionSummary_schemaArn,
    schemaVersionSummary_schemaVersion,

    -- * SearchSchemaSummary
    SearchSchemaSummary (..),
    newSearchSchemaSummary,
    searchSchemaSummary_registryName,
    searchSchemaSummary_schemaVersions,
    searchSchemaSummary_schemaName,
    searchSchemaSummary_schemaArn,

    -- * SearchSchemaVersionSummary
    SearchSchemaVersionSummary (..),
    newSearchSchemaVersionSummary,
    searchSchemaVersionSummary_type,
    searchSchemaVersionSummary_schemaVersion,
    searchSchemaVersionSummary_createdDate,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Schemas.Types.CodeGenerationStatus
import Amazonka.Schemas.Types.DiscovererState
import Amazonka.Schemas.Types.DiscovererSummary
import Amazonka.Schemas.Types.RegistrySummary
import Amazonka.Schemas.Types.SchemaSummary
import Amazonka.Schemas.Types.SchemaVersionSummary
import Amazonka.Schemas.Types.SearchSchemaSummary
import Amazonka.Schemas.Types.SearchSchemaVersionSummary
import Amazonka.Schemas.Types.Type
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-12-02@ of the Amazon Schemas SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Schemas",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "schemas",
      Core._serviceSigningName = "schemas",
      Core._serviceVersion = "2019-12-02",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Schemas",
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

-- | Prism for PreconditionFailedException' errors.
_PreconditionFailedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PreconditionFailedException =
  Core._MatchServiceError
    defaultService
    "PreconditionFailedException"
    Prelude.. Core.hasStatus 412

-- | Prism for UnauthorizedException' errors.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | Prism for NotFoundException' errors.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | Prism for ServiceUnavailableException' errors.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | Prism for InternalServerErrorException' errors.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | Prism for ForbiddenException' errors.
_ForbiddenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ForbiddenException =
  Core._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Core.hasStatus 403

-- | Prism for ConflictException' errors.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | Prism for GoneException' errors.
_GoneException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_GoneException =
  Core._MatchServiceError
    defaultService
    "GoneException"
    Prelude.. Core.hasStatus 410

-- | Prism for BadRequestException' errors.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | Prism for TooManyRequestsException' errors.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

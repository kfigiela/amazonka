{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GamesParks.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GamesParks.Types
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

    -- * DeploymentAction
    DeploymentAction (..),

    -- * DeploymentState
    DeploymentState (..),

    -- * GameState
    GameState (..),

    -- * GeneratedCodeJobState
    GeneratedCodeJobState (..),

    -- * Operation
    Operation (..),

    -- * ResultCode
    ResultCode (..),

    -- * StageState
    StageState (..),

    -- * Connection
    Connection (..),
    newConnection,
    connection_created,
    connection_id,

    -- * DeploymentResult
    DeploymentResult (..),
    newDeploymentResult,
    deploymentResult_message,
    deploymentResult_resultCode,

    -- * Document
    Document (..),
    newDocument,

    -- * ExtensionDetails
    ExtensionDetails (..),
    newExtensionDetails,
    extensionDetails_name,
    extensionDetails_description,
    extensionDetails_namespace,

    -- * ExtensionVersionDetails
    ExtensionVersionDetails (..),
    newExtensionVersionDetails,
    extensionVersionDetails_name,
    extensionVersionDetails_schema,
    extensionVersionDetails_namespace,
    extensionVersionDetails_version,

    -- * GameConfigurationDetails
    GameConfigurationDetails (..),
    newGameConfigurationDetails,
    gameConfigurationDetails_created,
    gameConfigurationDetails_sections,
    gameConfigurationDetails_lastUpdated,

    -- * GameDetails
    GameDetails (..),
    newGameDetails,
    gameDetails_tags,
    gameDetails_name,
    gameDetails_enableTerminationProtection,
    gameDetails_created,
    gameDetails_arn,
    gameDetails_state,
    gameDetails_description,
    gameDetails_lastUpdated,

    -- * GameSummary
    GameSummary (..),
    newGameSummary,
    gameSummary_tags,
    gameSummary_name,
    gameSummary_state,
    gameSummary_description,

    -- * GeneratedCodeJobDetails
    GeneratedCodeJobDetails (..),
    newGeneratedCodeJobDetails,
    generatedCodeJobDetails_expirationTime,
    generatedCodeJobDetails_generatedCodeJobId,
    generatedCodeJobDetails_status,
    generatedCodeJobDetails_description,
    generatedCodeJobDetails_s3Url,

    -- * Generator
    Generator (..),
    newGenerator,
    generator_targetPlatform,
    generator_gameSdkVersion,
    generator_language,

    -- * ImportGameConfigurationSource
    ImportGameConfigurationSource (..),
    newImportGameConfigurationSource,
    importGameConfigurationSource_file,

    -- * Section
    Section (..),
    newSection,
    section_name,
    section_size,
    section_attributes,

    -- * SectionModification
    SectionModification (..),
    newSectionModification,
    sectionModification_value,
    sectionModification_operation,
    sectionModification_path,
    sectionModification_section,

    -- * SnapshotDetails
    SnapshotDetails (..),
    newSnapshotDetails,
    snapshotDetails_created,
    snapshotDetails_sections,
    snapshotDetails_id,
    snapshotDetails_description,
    snapshotDetails_lastUpdated,

    -- * SnapshotSummary
    SnapshotSummary (..),
    newSnapshotSummary,
    snapshotSummary_created,
    snapshotSummary_id,
    snapshotSummary_description,
    snapshotSummary_lastUpdated,

    -- * StageDeploymentDetails
    StageDeploymentDetails (..),
    newStageDeploymentDetails,
    stageDeploymentDetails_deploymentState,
    stageDeploymentDetails_deploymentAction,
    stageDeploymentDetails_deploymentId,
    stageDeploymentDetails_deploymentResult,
    stageDeploymentDetails_created,
    stageDeploymentDetails_snapshotId,
    stageDeploymentDetails_lastUpdated,

    -- * StageDeploymentSummary
    StageDeploymentSummary (..),
    newStageDeploymentSummary,
    stageDeploymentSummary_deploymentState,
    stageDeploymentSummary_deploymentAction,
    stageDeploymentSummary_deploymentId,
    stageDeploymentSummary_deploymentResult,
    stageDeploymentSummary_snapshotId,
    stageDeploymentSummary_lastUpdated,

    -- * StageDetails
    StageDetails (..),
    newStageDetails,
    stageDetails_tags,
    stageDetails_name,
    stageDetails_logGroup,
    stageDetails_created,
    stageDetails_gameKey,
    stageDetails_arn,
    stageDetails_state,
    stageDetails_description,
    stageDetails_lastUpdated,
    stageDetails_role,

    -- * StageSummary
    StageSummary (..),
    newStageSummary,
    stageSummary_tags,
    stageSummary_name,
    stageSummary_gameKey,
    stageSummary_state,
    stageSummary_description,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GamesParks.Types.Connection
import Amazonka.GamesParks.Types.DeploymentAction
import Amazonka.GamesParks.Types.DeploymentResult
import Amazonka.GamesParks.Types.DeploymentState
import Amazonka.GamesParks.Types.Document
import Amazonka.GamesParks.Types.ExtensionDetails
import Amazonka.GamesParks.Types.ExtensionVersionDetails
import Amazonka.GamesParks.Types.GameConfigurationDetails
import Amazonka.GamesParks.Types.GameDetails
import Amazonka.GamesParks.Types.GameState
import Amazonka.GamesParks.Types.GameSummary
import Amazonka.GamesParks.Types.GeneratedCodeJobDetails
import Amazonka.GamesParks.Types.GeneratedCodeJobState
import Amazonka.GamesParks.Types.Generator
import Amazonka.GamesParks.Types.ImportGameConfigurationSource
import Amazonka.GamesParks.Types.Operation
import Amazonka.GamesParks.Types.ResultCode
import Amazonka.GamesParks.Types.Section
import Amazonka.GamesParks.Types.SectionModification
import Amazonka.GamesParks.Types.SnapshotDetails
import Amazonka.GamesParks.Types.SnapshotSummary
import Amazonka.GamesParks.Types.StageDeploymentDetails
import Amazonka.GamesParks.Types.StageDeploymentSummary
import Amazonka.GamesParks.Types.StageDetails
import Amazonka.GamesParks.Types.StageState
import Amazonka.GamesParks.Types.StageSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-08-17@ of the Amazon GameSparks SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "GamesParks",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "gamesparks",
      Core._serviceSigningName = "gamesparks",
      Core._serviceVersion = "2021-08-17",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "GamesParks",
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

-- | The service encountered an internal error.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The request would result in exceeding service quota.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The resource specified in the request does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The resource already exists, or another operation is in progress.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request throughput limit was exceeded.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | One of the parameters in the request is invalid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

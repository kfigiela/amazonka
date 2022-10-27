{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MachineLearning.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MachineLearning.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidInputException,
    _PredictorNotMountedException,
    _InternalServerException,
    _ResourceNotFoundException,
    _LimitExceededException,
    _TagLimitExceededException,
    _InvalidTagException,
    _IdempotentParameterMismatchException,

    -- * Algorithm
    Algorithm (..),

    -- * BatchPredictionFilterVariable
    BatchPredictionFilterVariable (..),

    -- * DataSourceFilterVariable
    DataSourceFilterVariable (..),

    -- * DetailsAttributes
    DetailsAttributes (..),

    -- * EntityStatus
    EntityStatus (..),

    -- * EvaluationFilterVariable
    EvaluationFilterVariable (..),

    -- * MLModelFilterVariable
    MLModelFilterVariable (..),

    -- * MLModelType
    MLModelType (..),

    -- * RealtimeEndpointStatus
    RealtimeEndpointStatus (..),

    -- * SortOrder
    SortOrder (..),

    -- * TaggableResourceType
    TaggableResourceType (..),

    -- * BatchPrediction
    BatchPrediction (..),
    newBatchPrediction,
    batchPrediction_invalidRecordCount,
    batchPrediction_message,
    batchPrediction_name,
    batchPrediction_totalRecordCount,
    batchPrediction_lastUpdatedAt,
    batchPrediction_batchPredictionDataSourceId,
    batchPrediction_finishedAt,
    batchPrediction_mLModelId,
    batchPrediction_status,
    batchPrediction_outputUri,
    batchPrediction_startedAt,
    batchPrediction_computeTime,
    batchPrediction_batchPredictionId,
    batchPrediction_createdAt,
    batchPrediction_inputDataLocationS3,
    batchPrediction_createdByIamUser,

    -- * DataSource
    DataSource (..),
    newDataSource,
    dataSource_dataSizeInBytes,
    dataSource_message,
    dataSource_name,
    dataSource_roleARN,
    dataSource_dataSourceId,
    dataSource_numberOfFiles,
    dataSource_rDSMetadata,
    dataSource_lastUpdatedAt,
    dataSource_finishedAt,
    dataSource_redshiftMetadata,
    dataSource_dataRearrangement,
    dataSource_dataLocationS3,
    dataSource_status,
    dataSource_startedAt,
    dataSource_computeTime,
    dataSource_computeStatistics,
    dataSource_createdAt,
    dataSource_createdByIamUser,

    -- * Evaluation
    Evaluation (..),
    newEvaluation,
    evaluation_message,
    evaluation_name,
    evaluation_lastUpdatedAt,
    evaluation_performanceMetrics,
    evaluation_finishedAt,
    evaluation_mLModelId,
    evaluation_status,
    evaluation_evaluationDataSourceId,
    evaluation_startedAt,
    evaluation_computeTime,
    evaluation_evaluationId,
    evaluation_createdAt,
    evaluation_inputDataLocationS3,
    evaluation_createdByIamUser,

    -- * MLModel
    MLModel (..),
    newMLModel,
    mLModel_message,
    mLModel_name,
    mLModel_trainingDataSourceId,
    mLModel_scoreThresholdLastUpdatedAt,
    mLModel_lastUpdatedAt,
    mLModel_finishedAt,
    mLModel_mLModelId,
    mLModel_scoreThreshold,
    mLModel_endpointInfo,
    mLModel_status,
    mLModel_mLModelType,
    mLModel_startedAt,
    mLModel_computeTime,
    mLModel_sizeInBytes,
    mLModel_algorithm,
    mLModel_createdAt,
    mLModel_inputDataLocationS3,
    mLModel_createdByIamUser,
    mLModel_trainingParameters,

    -- * PerformanceMetrics
    PerformanceMetrics (..),
    newPerformanceMetrics,
    performanceMetrics_properties,

    -- * Prediction
    Prediction (..),
    newPrediction,
    prediction_predictedScores,
    prediction_details,
    prediction_predictedLabel,
    prediction_predictedValue,

    -- * RDSDataSpec
    RDSDataSpec (..),
    newRDSDataSpec,
    rDSDataSpec_dataRearrangement,
    rDSDataSpec_dataSchema,
    rDSDataSpec_dataSchemaUri,
    rDSDataSpec_databaseInformation,
    rDSDataSpec_selectSqlQuery,
    rDSDataSpec_databaseCredentials,
    rDSDataSpec_s3StagingLocation,
    rDSDataSpec_resourceRole,
    rDSDataSpec_serviceRole,
    rDSDataSpec_subnetId,
    rDSDataSpec_securityGroupIds,

    -- * RDSDatabase
    RDSDatabase (..),
    newRDSDatabase,
    rDSDatabase_instanceIdentifier,
    rDSDatabase_databaseName,

    -- * RDSDatabaseCredentials
    RDSDatabaseCredentials (..),
    newRDSDatabaseCredentials,
    rDSDatabaseCredentials_username,
    rDSDatabaseCredentials_password,

    -- * RDSMetadata
    RDSMetadata (..),
    newRDSMetadata,
    rDSMetadata_databaseUserName,
    rDSMetadata_resourceRole,
    rDSMetadata_selectSqlQuery,
    rDSMetadata_serviceRole,
    rDSMetadata_database,
    rDSMetadata_dataPipelineId,

    -- * RealtimeEndpointInfo
    RealtimeEndpointInfo (..),
    newRealtimeEndpointInfo,
    realtimeEndpointInfo_peakRequestsPerSecond,
    realtimeEndpointInfo_endpointUrl,
    realtimeEndpointInfo_endpointStatus,
    realtimeEndpointInfo_createdAt,

    -- * RedshiftDataSpec
    RedshiftDataSpec (..),
    newRedshiftDataSpec,
    redshiftDataSpec_dataRearrangement,
    redshiftDataSpec_dataSchema,
    redshiftDataSpec_dataSchemaUri,
    redshiftDataSpec_databaseInformation,
    redshiftDataSpec_selectSqlQuery,
    redshiftDataSpec_databaseCredentials,
    redshiftDataSpec_s3StagingLocation,

    -- * RedshiftDatabase
    RedshiftDatabase (..),
    newRedshiftDatabase,
    redshiftDatabase_databaseName,
    redshiftDatabase_clusterIdentifier,

    -- * RedshiftDatabaseCredentials
    RedshiftDatabaseCredentials (..),
    newRedshiftDatabaseCredentials,
    redshiftDatabaseCredentials_username,
    redshiftDatabaseCredentials_password,

    -- * RedshiftMetadata
    RedshiftMetadata (..),
    newRedshiftMetadata,
    redshiftMetadata_databaseUserName,
    redshiftMetadata_selectSqlQuery,
    redshiftMetadata_redshiftDatabase,

    -- * S3DataSpec
    S3DataSpec (..),
    newS3DataSpec,
    s3DataSpec_dataSchemaLocationS3,
    s3DataSpec_dataRearrangement,
    s3DataSpec_dataSchema,
    s3DataSpec_dataLocationS3,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MachineLearning.Types.Algorithm
import Amazonka.MachineLearning.Types.BatchPrediction
import Amazonka.MachineLearning.Types.BatchPredictionFilterVariable
import Amazonka.MachineLearning.Types.DataSource
import Amazonka.MachineLearning.Types.DataSourceFilterVariable
import Amazonka.MachineLearning.Types.DetailsAttributes
import Amazonka.MachineLearning.Types.EntityStatus
import Amazonka.MachineLearning.Types.Evaluation
import Amazonka.MachineLearning.Types.EvaluationFilterVariable
import Amazonka.MachineLearning.Types.MLModel
import Amazonka.MachineLearning.Types.MLModelFilterVariable
import Amazonka.MachineLearning.Types.MLModelType
import Amazonka.MachineLearning.Types.PerformanceMetrics
import Amazonka.MachineLearning.Types.Prediction
import Amazonka.MachineLearning.Types.RDSDataSpec
import Amazonka.MachineLearning.Types.RDSDatabase
import Amazonka.MachineLearning.Types.RDSDatabaseCredentials
import Amazonka.MachineLearning.Types.RDSMetadata
import Amazonka.MachineLearning.Types.RealtimeEndpointInfo
import Amazonka.MachineLearning.Types.RealtimeEndpointStatus
import Amazonka.MachineLearning.Types.RedshiftDataSpec
import Amazonka.MachineLearning.Types.RedshiftDatabase
import Amazonka.MachineLearning.Types.RedshiftDatabaseCredentials
import Amazonka.MachineLearning.Types.RedshiftMetadata
import Amazonka.MachineLearning.Types.S3DataSpec
import Amazonka.MachineLearning.Types.SortOrder
import Amazonka.MachineLearning.Types.Tag
import Amazonka.MachineLearning.Types.TaggableResourceType
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2014-12-12@ of the Amazon Machine Learning SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "MachineLearning",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "machinelearning",
      Core._serviceSigningName = "machinelearning",
      Core._serviceVersion = "2014-12-12",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "MachineLearning",
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

-- | An error on the client occurred. Typically, the cause is an invalid
-- input value.
_InvalidInputException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidInputException =
  Core._MatchServiceError
    defaultService
    "InvalidInputException"

-- | The exception is thrown when a predict request is made to an unmounted
-- @MLModel@.
_PredictorNotMountedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PredictorNotMountedException =
  Core._MatchServiceError
    defaultService
    "PredictorNotMountedException"

-- | An error on the server occurred when trying to process a request.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | A specified resource cannot be located.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The subscriber exceeded the maximum number of operations. This exception
-- can occur when listing objects such as @DataSource@.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Prism for TagLimitExceededException' errors.
_TagLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TagLimitExceededException =
  Core._MatchServiceError
    defaultService
    "TagLimitExceededException"

-- | Prism for InvalidTagException' errors.
_InvalidTagException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTagException =
  Core._MatchServiceError
    defaultService
    "InvalidTagException"

-- | A second request to use or change an object was not allowed. This can
-- result from retrying a request using a parameter that was not present in
-- the original request.
_IdempotentParameterMismatchException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IdempotentParameterMismatchException =
  Core._MatchServiceError
    defaultService
    "IdempotentParameterMismatchException"

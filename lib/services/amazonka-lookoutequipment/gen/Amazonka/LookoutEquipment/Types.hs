{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LookoutEquipment.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutEquipment.Types
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

    -- * DataUploadFrequency
    DataUploadFrequency (..),

    -- * DatasetStatus
    DatasetStatus (..),

    -- * InferenceExecutionStatus
    InferenceExecutionStatus (..),

    -- * InferenceSchedulerStatus
    InferenceSchedulerStatus (..),

    -- * IngestionJobStatus
    IngestionJobStatus (..),

    -- * LabelRating
    LabelRating (..),

    -- * LatestInferenceResult
    LatestInferenceResult (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * Monotonicity
    Monotonicity (..),

    -- * StatisticalIssueStatus
    StatisticalIssueStatus (..),

    -- * TargetSamplingRate
    TargetSamplingRate (..),

    -- * CategoricalValues
    CategoricalValues (..),
    newCategoricalValues,
    categoricalValues_numberOfCategory,
    categoricalValues_status,

    -- * CountPercent
    CountPercent (..),
    newCountPercent,
    countPercent_count,
    countPercent_percentage,

    -- * DataIngestionJobSummary
    DataIngestionJobSummary (..),
    newDataIngestionJobSummary,
    dataIngestionJobSummary_datasetName,
    dataIngestionJobSummary_jobId,
    dataIngestionJobSummary_status,
    dataIngestionJobSummary_datasetArn,
    dataIngestionJobSummary_ingestionInputConfiguration,

    -- * DataPreProcessingConfiguration
    DataPreProcessingConfiguration (..),
    newDataPreProcessingConfiguration,
    dataPreProcessingConfiguration_targetSamplingRate,

    -- * DataQualitySummary
    DataQualitySummary (..),
    newDataQualitySummary,
    dataQualitySummary_insufficientSensorData,
    dataQualitySummary_missingSensorData,
    dataQualitySummary_invalidSensorData,
    dataQualitySummary_unsupportedTimestamps,
    dataQualitySummary_duplicateTimestamps,

    -- * DatasetSchema
    DatasetSchema (..),
    newDatasetSchema,
    datasetSchema_inlineDataSchema,

    -- * DatasetSummary
    DatasetSummary (..),
    newDatasetSummary,
    datasetSummary_datasetName,
    datasetSummary_status,
    datasetSummary_datasetArn,
    datasetSummary_createdAt,

    -- * DuplicateTimestamps
    DuplicateTimestamps (..),
    newDuplicateTimestamps,
    duplicateTimestamps_totalNumberOfDuplicateTimestamps,

    -- * InferenceEventSummary
    InferenceEventSummary (..),
    newInferenceEventSummary,
    inferenceEventSummary_inferenceSchedulerName,
    inferenceEventSummary_eventEndTime,
    inferenceEventSummary_eventDurationInSeconds,
    inferenceEventSummary_diagnostics,
    inferenceEventSummary_inferenceSchedulerArn,
    inferenceEventSummary_eventStartTime,

    -- * InferenceExecutionSummary
    InferenceExecutionSummary (..),
    newInferenceExecutionSummary,
    inferenceExecutionSummary_inferenceSchedulerName,
    inferenceExecutionSummary_scheduledStartTime,
    inferenceExecutionSummary_dataStartTime,
    inferenceExecutionSummary_failedReason,
    inferenceExecutionSummary_dataOutputConfiguration,
    inferenceExecutionSummary_dataEndTime,
    inferenceExecutionSummary_customerResultObject,
    inferenceExecutionSummary_status,
    inferenceExecutionSummary_modelArn,
    inferenceExecutionSummary_modelName,
    inferenceExecutionSummary_inferenceSchedulerArn,
    inferenceExecutionSummary_dataInputConfiguration,

    -- * InferenceInputConfiguration
    InferenceInputConfiguration (..),
    newInferenceInputConfiguration,
    inferenceInputConfiguration_inputTimeZoneOffset,
    inferenceInputConfiguration_s3InputConfiguration,
    inferenceInputConfiguration_inferenceInputNameConfiguration,

    -- * InferenceInputNameConfiguration
    InferenceInputNameConfiguration (..),
    newInferenceInputNameConfiguration,
    inferenceInputNameConfiguration_componentTimestampDelimiter,
    inferenceInputNameConfiguration_timestampFormat,

    -- * InferenceOutputConfiguration
    InferenceOutputConfiguration (..),
    newInferenceOutputConfiguration,
    inferenceOutputConfiguration_kmsKeyId,
    inferenceOutputConfiguration_s3OutputConfiguration,

    -- * InferenceS3InputConfiguration
    InferenceS3InputConfiguration (..),
    newInferenceS3InputConfiguration,
    inferenceS3InputConfiguration_prefix,
    inferenceS3InputConfiguration_bucket,

    -- * InferenceS3OutputConfiguration
    InferenceS3OutputConfiguration (..),
    newInferenceS3OutputConfiguration,
    inferenceS3OutputConfiguration_prefix,
    inferenceS3OutputConfiguration_bucket,

    -- * InferenceSchedulerSummary
    InferenceSchedulerSummary (..),
    newInferenceSchedulerSummary,
    inferenceSchedulerSummary_inferenceSchedulerName,
    inferenceSchedulerSummary_dataDelayOffsetInMinutes,
    inferenceSchedulerSummary_status,
    inferenceSchedulerSummary_modelArn,
    inferenceSchedulerSummary_latestInferenceResult,
    inferenceSchedulerSummary_modelName,
    inferenceSchedulerSummary_dataUploadFrequency,
    inferenceSchedulerSummary_inferenceSchedulerArn,

    -- * IngestedFilesSummary
    IngestedFilesSummary (..),
    newIngestedFilesSummary,
    ingestedFilesSummary_discardedFiles,
    ingestedFilesSummary_totalNumberOfFiles,
    ingestedFilesSummary_ingestedNumberOfFiles,

    -- * IngestionInputConfiguration
    IngestionInputConfiguration (..),
    newIngestionInputConfiguration,
    ingestionInputConfiguration_s3InputConfiguration,

    -- * IngestionS3InputConfiguration
    IngestionS3InputConfiguration (..),
    newIngestionS3InputConfiguration,
    ingestionS3InputConfiguration_keyPattern,
    ingestionS3InputConfiguration_prefix,
    ingestionS3InputConfiguration_bucket,

    -- * InsufficientSensorData
    InsufficientSensorData (..),
    newInsufficientSensorData,
    insufficientSensorData_missingCompleteSensorData,
    insufficientSensorData_sensorsWithShortDateRange,

    -- * InvalidSensorData
    InvalidSensorData (..),
    newInvalidSensorData,
    invalidSensorData_affectedSensorCount,
    invalidSensorData_totalNumberOfInvalidValues,

    -- * LabelGroupSummary
    LabelGroupSummary (..),
    newLabelGroupSummary,
    labelGroupSummary_labelGroupArn,
    labelGroupSummary_createdAt,
    labelGroupSummary_updatedAt,
    labelGroupSummary_labelGroupName,

    -- * LabelSummary
    LabelSummary (..),
    newLabelSummary,
    labelSummary_equipment,
    labelSummary_labelId,
    labelSummary_endTime,
    labelSummary_faultCode,
    labelSummary_labelGroupArn,
    labelSummary_rating,
    labelSummary_createdAt,
    labelSummary_startTime,
    labelSummary_labelGroupName,

    -- * LabelsInputConfiguration
    LabelsInputConfiguration (..),
    newLabelsInputConfiguration,
    labelsInputConfiguration_s3InputConfiguration,
    labelsInputConfiguration_labelGroupName,

    -- * LabelsS3InputConfiguration
    LabelsS3InputConfiguration (..),
    newLabelsS3InputConfiguration,
    labelsS3InputConfiguration_prefix,
    labelsS3InputConfiguration_bucket,

    -- * LargeTimestampGaps
    LargeTimestampGaps (..),
    newLargeTimestampGaps,
    largeTimestampGaps_maxTimestampGapInDays,
    largeTimestampGaps_numberOfLargeTimestampGaps,
    largeTimestampGaps_status,

    -- * MissingCompleteSensorData
    MissingCompleteSensorData (..),
    newMissingCompleteSensorData,
    missingCompleteSensorData_affectedSensorCount,

    -- * MissingSensorData
    MissingSensorData (..),
    newMissingSensorData,
    missingSensorData_affectedSensorCount,
    missingSensorData_totalNumberOfMissingValues,

    -- * ModelSummary
    ModelSummary (..),
    newModelSummary,
    modelSummary_datasetName,
    modelSummary_status,
    modelSummary_datasetArn,
    modelSummary_modelArn,
    modelSummary_modelName,
    modelSummary_createdAt,

    -- * MonotonicValues
    MonotonicValues (..),
    newMonotonicValues,
    monotonicValues_monotonicity,
    monotonicValues_status,

    -- * MultipleOperatingModes
    MultipleOperatingModes (..),
    newMultipleOperatingModes,
    multipleOperatingModes_status,

    -- * S3Object
    S3Object (..),
    newS3Object,
    s3Object_bucket,
    s3Object_key,

    -- * SensorStatisticsSummary
    SensorStatisticsSummary (..),
    newSensorStatisticsSummary,
    sensorStatisticsSummary_dataStartTime,
    sensorStatisticsSummary_multipleOperatingModes,
    sensorStatisticsSummary_categoricalValues,
    sensorStatisticsSummary_dataExists,
    sensorStatisticsSummary_invalidValues,
    sensorStatisticsSummary_missingValues,
    sensorStatisticsSummary_dataEndTime,
    sensorStatisticsSummary_componentName,
    sensorStatisticsSummary_duplicateTimestamps,
    sensorStatisticsSummary_largeTimestampGaps,
    sensorStatisticsSummary_monotonicValues,
    sensorStatisticsSummary_invalidDateEntries,
    sensorStatisticsSummary_sensorName,

    -- * SensorsWithShortDateRange
    SensorsWithShortDateRange (..),
    newSensorsWithShortDateRange,
    sensorsWithShortDateRange_affectedSensorCount,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * UnsupportedTimestamps
    UnsupportedTimestamps (..),
    newUnsupportedTimestamps,
    unsupportedTimestamps_totalNumberOfUnsupportedTimestamps,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types.CategoricalValues
import Amazonka.LookoutEquipment.Types.CountPercent
import Amazonka.LookoutEquipment.Types.DataIngestionJobSummary
import Amazonka.LookoutEquipment.Types.DataPreProcessingConfiguration
import Amazonka.LookoutEquipment.Types.DataQualitySummary
import Amazonka.LookoutEquipment.Types.DataUploadFrequency
import Amazonka.LookoutEquipment.Types.DatasetSchema
import Amazonka.LookoutEquipment.Types.DatasetStatus
import Amazonka.LookoutEquipment.Types.DatasetSummary
import Amazonka.LookoutEquipment.Types.DuplicateTimestamps
import Amazonka.LookoutEquipment.Types.InferenceEventSummary
import Amazonka.LookoutEquipment.Types.InferenceExecutionStatus
import Amazonka.LookoutEquipment.Types.InferenceExecutionSummary
import Amazonka.LookoutEquipment.Types.InferenceInputConfiguration
import Amazonka.LookoutEquipment.Types.InferenceInputNameConfiguration
import Amazonka.LookoutEquipment.Types.InferenceOutputConfiguration
import Amazonka.LookoutEquipment.Types.InferenceS3InputConfiguration
import Amazonka.LookoutEquipment.Types.InferenceS3OutputConfiguration
import Amazonka.LookoutEquipment.Types.InferenceSchedulerStatus
import Amazonka.LookoutEquipment.Types.InferenceSchedulerSummary
import Amazonka.LookoutEquipment.Types.IngestedFilesSummary
import Amazonka.LookoutEquipment.Types.IngestionInputConfiguration
import Amazonka.LookoutEquipment.Types.IngestionJobStatus
import Amazonka.LookoutEquipment.Types.IngestionS3InputConfiguration
import Amazonka.LookoutEquipment.Types.InsufficientSensorData
import Amazonka.LookoutEquipment.Types.InvalidSensorData
import Amazonka.LookoutEquipment.Types.LabelGroupSummary
import Amazonka.LookoutEquipment.Types.LabelRating
import Amazonka.LookoutEquipment.Types.LabelSummary
import Amazonka.LookoutEquipment.Types.LabelsInputConfiguration
import Amazonka.LookoutEquipment.Types.LabelsS3InputConfiguration
import Amazonka.LookoutEquipment.Types.LargeTimestampGaps
import Amazonka.LookoutEquipment.Types.LatestInferenceResult
import Amazonka.LookoutEquipment.Types.MissingCompleteSensorData
import Amazonka.LookoutEquipment.Types.MissingSensorData
import Amazonka.LookoutEquipment.Types.ModelStatus
import Amazonka.LookoutEquipment.Types.ModelSummary
import Amazonka.LookoutEquipment.Types.MonotonicValues
import Amazonka.LookoutEquipment.Types.Monotonicity
import Amazonka.LookoutEquipment.Types.MultipleOperatingModes
import Amazonka.LookoutEquipment.Types.S3Object
import Amazonka.LookoutEquipment.Types.SensorStatisticsSummary
import Amazonka.LookoutEquipment.Types.SensorsWithShortDateRange
import Amazonka.LookoutEquipment.Types.StatisticalIssueStatus
import Amazonka.LookoutEquipment.Types.Tag
import Amazonka.LookoutEquipment.Types.TargetSamplingRate
import Amazonka.LookoutEquipment.Types.UnsupportedTimestamps
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-12-15@ of the Amazon Lookout for Equipment SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "LookoutEquipment",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "lookoutequipment",
      Core._serviceSigningName = "lookoutequipment",
      Core._serviceVersion = "2020-12-15",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "LookoutEquipment",
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

-- | The request could not be completed because you do not have access to the
-- resource.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | Processing of the request has failed because of an unknown error,
-- exception or failure.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | Resource limitations have been exceeded.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | The resource requested could not be found. Verify the resource ID and
-- retry your request.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The request could not be completed due to a conflict with the current
-- state of the target resource.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The input fails to satisfy constraints specified by Amazon Lookout for
-- Equipment or a related AWS service that\'s being utilized.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

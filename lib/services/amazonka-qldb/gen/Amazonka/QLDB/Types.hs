{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.QLDB.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QLDB.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _ResourceNotFoundException,
    _ResourceInUseException,
    _LimitExceededException,
    _ResourcePreconditionNotMetException,
    _InvalidParameterException,

    -- * EncryptionStatus
    EncryptionStatus (..),

    -- * ErrorCause
    ErrorCause (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * LedgerState
    LedgerState (..),

    -- * OutputFormat
    OutputFormat (..),

    -- * PermissionsMode
    PermissionsMode (..),

    -- * S3ObjectEncryptionType
    S3ObjectEncryptionType (..),

    -- * StreamStatus
    StreamStatus (..),

    -- * JournalKinesisStreamDescription
    JournalKinesisStreamDescription (..),
    newJournalKinesisStreamDescription,
    journalKinesisStreamDescription_errorCause,
    journalKinesisStreamDescription_inclusiveStartTime,
    journalKinesisStreamDescription_arn,
    journalKinesisStreamDescription_exclusiveEndTime,
    journalKinesisStreamDescription_creationTime,
    journalKinesisStreamDescription_ledgerName,
    journalKinesisStreamDescription_roleArn,
    journalKinesisStreamDescription_streamId,
    journalKinesisStreamDescription_status,
    journalKinesisStreamDescription_kinesisConfiguration,
    journalKinesisStreamDescription_streamName,

    -- * JournalS3ExportDescription
    JournalS3ExportDescription (..),
    newJournalS3ExportDescription,
    journalS3ExportDescription_outputFormat,
    journalS3ExportDescription_ledgerName,
    journalS3ExportDescription_exportId,
    journalS3ExportDescription_exportCreationTime,
    journalS3ExportDescription_status,
    journalS3ExportDescription_inclusiveStartTime,
    journalS3ExportDescription_exclusiveEndTime,
    journalS3ExportDescription_s3ExportConfiguration,
    journalS3ExportDescription_roleArn,

    -- * KinesisConfiguration
    KinesisConfiguration (..),
    newKinesisConfiguration,
    kinesisConfiguration_aggregationEnabled,
    kinesisConfiguration_streamArn,

    -- * LedgerEncryptionDescription
    LedgerEncryptionDescription (..),
    newLedgerEncryptionDescription,
    ledgerEncryptionDescription_inaccessibleKmsKeyDateTime,
    ledgerEncryptionDescription_kmsKeyArn,
    ledgerEncryptionDescription_encryptionStatus,

    -- * LedgerSummary
    LedgerSummary (..),
    newLedgerSummary,
    ledgerSummary_name,
    ledgerSummary_creationDateTime,
    ledgerSummary_state,

    -- * S3EncryptionConfiguration
    S3EncryptionConfiguration (..),
    newS3EncryptionConfiguration,
    s3EncryptionConfiguration_kmsKeyArn,
    s3EncryptionConfiguration_objectEncryptionType,

    -- * S3ExportConfiguration
    S3ExportConfiguration (..),
    newS3ExportConfiguration,
    s3ExportConfiguration_bucket,
    s3ExportConfiguration_prefix,
    s3ExportConfiguration_encryptionConfiguration,

    -- * ValueHolder
    ValueHolder (..),
    newValueHolder,
    valueHolder_ionText,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QLDB.Types.EncryptionStatus
import Amazonka.QLDB.Types.ErrorCause
import Amazonka.QLDB.Types.ExportStatus
import Amazonka.QLDB.Types.JournalKinesisStreamDescription
import Amazonka.QLDB.Types.JournalS3ExportDescription
import Amazonka.QLDB.Types.KinesisConfiguration
import Amazonka.QLDB.Types.LedgerEncryptionDescription
import Amazonka.QLDB.Types.LedgerState
import Amazonka.QLDB.Types.LedgerSummary
import Amazonka.QLDB.Types.OutputFormat
import Amazonka.QLDB.Types.PermissionsMode
import Amazonka.QLDB.Types.S3EncryptionConfiguration
import Amazonka.QLDB.Types.S3ExportConfiguration
import Amazonka.QLDB.Types.S3ObjectEncryptionType
import Amazonka.QLDB.Types.StreamStatus
import Amazonka.QLDB.Types.ValueHolder
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-01-02@ of the Amazon QLDB SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "QLDB",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "qldb",
      Core._serviceSigningName = "qldb",
      Core._serviceVersion = "2019-01-02",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "QLDB",
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

-- | The specified resource already exists.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Core.hasStatus 409

-- | The specified resource doesn\'t exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The specified resource can\'t be modified at this time.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Core.hasStatus 409

-- | You have reached the limit on the maximum number of resources allowed.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400

-- | The operation failed because a condition wasn\'t satisfied in advance.
_ResourcePreconditionNotMetException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourcePreconditionNotMetException =
  Core._MatchServiceError
    defaultService
    "ResourcePreconditionNotMetException"
    Prelude.. Core.hasStatus 412

-- | One or more parameters in the request aren\'t valid.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"
    Prelude.. Core.hasStatus 400

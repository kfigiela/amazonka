{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.KeySpaces.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KeySpaces.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ValidationException,

    -- * EncryptionType
    EncryptionType (..),

    -- * PointInTimeRecoveryStatus
    PointInTimeRecoveryStatus (..),

    -- * SortOrder
    SortOrder (..),

    -- * TableStatus
    TableStatus (..),

    -- * ThroughputMode
    ThroughputMode (..),

    -- * TimeToLiveStatus
    TimeToLiveStatus (..),

    -- * CapacitySpecification
    CapacitySpecification (..),
    newCapacitySpecification,
    capacitySpecification_readCapacityUnits,
    capacitySpecification_writeCapacityUnits,
    capacitySpecification_throughputMode,

    -- * CapacitySpecificationSummary
    CapacitySpecificationSummary (..),
    newCapacitySpecificationSummary,
    capacitySpecificationSummary_readCapacityUnits,
    capacitySpecificationSummary_lastUpdateToPayPerRequestTimestamp,
    capacitySpecificationSummary_writeCapacityUnits,
    capacitySpecificationSummary_throughputMode,

    -- * ClusteringKey
    ClusteringKey (..),
    newClusteringKey,
    clusteringKey_name,
    clusteringKey_orderBy,

    -- * ColumnDefinition
    ColumnDefinition (..),
    newColumnDefinition,
    columnDefinition_name,
    columnDefinition_type,

    -- * Comment
    Comment (..),
    newComment,
    comment_message,

    -- * EncryptionSpecification
    EncryptionSpecification (..),
    newEncryptionSpecification,
    encryptionSpecification_kmsKeyIdentifier,
    encryptionSpecification_type,

    -- * KeyspaceSummary
    KeyspaceSummary (..),
    newKeyspaceSummary,
    keyspaceSummary_keyspaceName,
    keyspaceSummary_resourceArn,

    -- * PartitionKey
    PartitionKey (..),
    newPartitionKey,
    partitionKey_name,

    -- * PointInTimeRecovery
    PointInTimeRecovery (..),
    newPointInTimeRecovery,
    pointInTimeRecovery_status,

    -- * PointInTimeRecoverySummary
    PointInTimeRecoverySummary (..),
    newPointInTimeRecoverySummary,
    pointInTimeRecoverySummary_earliestRestorableTimestamp,
    pointInTimeRecoverySummary_status,

    -- * SchemaDefinition
    SchemaDefinition (..),
    newSchemaDefinition,
    schemaDefinition_clusteringKeys,
    schemaDefinition_staticColumns,
    schemaDefinition_allColumns,
    schemaDefinition_partitionKeys,

    -- * StaticColumn
    StaticColumn (..),
    newStaticColumn,
    staticColumn_name,

    -- * TableSummary
    TableSummary (..),
    newTableSummary,
    tableSummary_keyspaceName,
    tableSummary_tableName,
    tableSummary_resourceArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TimeToLive
    TimeToLive (..),
    newTimeToLive,
    timeToLive_status,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KeySpaces.Types.CapacitySpecification
import Amazonka.KeySpaces.Types.CapacitySpecificationSummary
import Amazonka.KeySpaces.Types.ClusteringKey
import Amazonka.KeySpaces.Types.ColumnDefinition
import Amazonka.KeySpaces.Types.Comment
import Amazonka.KeySpaces.Types.EncryptionSpecification
import Amazonka.KeySpaces.Types.EncryptionType
import Amazonka.KeySpaces.Types.KeyspaceSummary
import Amazonka.KeySpaces.Types.PartitionKey
import Amazonka.KeySpaces.Types.PointInTimeRecovery
import Amazonka.KeySpaces.Types.PointInTimeRecoveryStatus
import Amazonka.KeySpaces.Types.PointInTimeRecoverySummary
import Amazonka.KeySpaces.Types.SchemaDefinition
import Amazonka.KeySpaces.Types.SortOrder
import Amazonka.KeySpaces.Types.StaticColumn
import Amazonka.KeySpaces.Types.TableStatus
import Amazonka.KeySpaces.Types.TableSummary
import Amazonka.KeySpaces.Types.Tag
import Amazonka.KeySpaces.Types.ThroughputMode
import Amazonka.KeySpaces.Types.TimeToLive
import Amazonka.KeySpaces.Types.TimeToLiveStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2022-02-10@ of the Amazon Keyspaces SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "KeySpaces",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "cassandra",
      Core._serviceSigningName = "cassandra",
      Core._serviceVersion = "2022-02-10",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "KeySpaces",
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

-- | Amazon Keyspaces was unable to fully process this request because of an
-- internal server error.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | The operation exceeded the service quota for this resource. For more
-- information on service quotas, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/quotas.html Quotas>
-- in the /Amazon Keyspaces Developer Guide/.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | The operation tried to access a keyspace or table that doesn\'t exist.
-- The resource might not be specified correctly, or its status might not
-- be @ACTIVE@.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | Amazon Keyspaces could not complete the requested action. This error may
-- occur if you try to perform an action and the same or a different action
-- is already in progress, or if you try to create a resource that already
-- exists.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The operation failed due to an invalid or malformed request.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

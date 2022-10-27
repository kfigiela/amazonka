{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Discovery.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Discovery.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ConflictErrorException,
    _ResourceNotFoundException,
    _ServerInternalErrorException,
    _ResourceInUseException,
    _AuthorizationErrorException,
    _OperationNotPermittedException,
    _InvalidParameterValueException,
    _HomeRegionNotSetException,
    _InvalidParameterException,

    -- * AgentStatus
    AgentStatus (..),

    -- * BatchDeleteImportDataErrorCode
    BatchDeleteImportDataErrorCode (..),

    -- * ConfigurationItemType
    ConfigurationItemType (..),

    -- * ContinuousExportStatus
    ContinuousExportStatus (..),

    -- * DataSource
    DataSource (..),

    -- * ExportDataFormat
    ExportDataFormat (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * ImportTaskFilterName
    ImportTaskFilterName (..),

    -- * OrderString
    OrderString (..),

    -- * AgentConfigurationStatus
    AgentConfigurationStatus (..),
    newAgentConfigurationStatus,
    agentConfigurationStatus_description,
    agentConfigurationStatus_agentId,
    agentConfigurationStatus_operationSucceeded,

    -- * AgentInfo
    AgentInfo (..),
    newAgentInfo,
    agentInfo_agentType,
    agentInfo_collectionStatus,
    agentInfo_connectorId,
    agentInfo_lastHealthPingTime,
    agentInfo_hostName,
    agentInfo_agentId,
    agentInfo_health,
    agentInfo_agentNetworkInfoList,
    agentInfo_registeredTime,
    agentInfo_version,

    -- * AgentNetworkInfo
    AgentNetworkInfo (..),
    newAgentNetworkInfo,
    agentNetworkInfo_macAddress,
    agentNetworkInfo_ipAddress,

    -- * BatchDeleteImportDataError
    BatchDeleteImportDataError (..),
    newBatchDeleteImportDataError,
    batchDeleteImportDataError_importTaskId,
    batchDeleteImportDataError_errorCode,
    batchDeleteImportDataError_errorDescription,

    -- * ConfigurationTag
    ConfigurationTag (..),
    newConfigurationTag,
    configurationTag_key,
    configurationTag_timeOfCreation,
    configurationTag_configurationId,
    configurationTag_configurationType,
    configurationTag_value,

    -- * ContinuousExportDescription
    ContinuousExportDescription (..),
    newContinuousExportDescription,
    continuousExportDescription_s3Bucket,
    continuousExportDescription_stopTime,
    continuousExportDescription_statusDetail,
    continuousExportDescription_status,
    continuousExportDescription_schemaStorageConfig,
    continuousExportDescription_dataSource,
    continuousExportDescription_exportId,
    continuousExportDescription_startTime,

    -- * CustomerAgentInfo
    CustomerAgentInfo (..),
    newCustomerAgentInfo,
    customerAgentInfo_activeAgents,
    customerAgentInfo_healthyAgents,
    customerAgentInfo_blackListedAgents,
    customerAgentInfo_shutdownAgents,
    customerAgentInfo_unhealthyAgents,
    customerAgentInfo_totalAgents,
    customerAgentInfo_unknownAgents,

    -- * CustomerAgentlessCollectorInfo
    CustomerAgentlessCollectorInfo (..),
    newCustomerAgentlessCollectorInfo,
    customerAgentlessCollectorInfo_activeAgentlessCollectors,
    customerAgentlessCollectorInfo_healthyAgentlessCollectors,
    customerAgentlessCollectorInfo_denyListedAgentlessCollectors,
    customerAgentlessCollectorInfo_shutdownAgentlessCollectors,
    customerAgentlessCollectorInfo_unhealthyAgentlessCollectors,
    customerAgentlessCollectorInfo_totalAgentlessCollectors,
    customerAgentlessCollectorInfo_unknownAgentlessCollectors,

    -- * CustomerConnectorInfo
    CustomerConnectorInfo (..),
    newCustomerConnectorInfo,
    customerConnectorInfo_activeConnectors,
    customerConnectorInfo_healthyConnectors,
    customerConnectorInfo_blackListedConnectors,
    customerConnectorInfo_shutdownConnectors,
    customerConnectorInfo_unhealthyConnectors,
    customerConnectorInfo_totalConnectors,
    customerConnectorInfo_unknownConnectors,

    -- * CustomerMeCollectorInfo
    CustomerMeCollectorInfo (..),
    newCustomerMeCollectorInfo,
    customerMeCollectorInfo_activeMeCollectors,
    customerMeCollectorInfo_healthyMeCollectors,
    customerMeCollectorInfo_denyListedMeCollectors,
    customerMeCollectorInfo_shutdownMeCollectors,
    customerMeCollectorInfo_unhealthyMeCollectors,
    customerMeCollectorInfo_totalMeCollectors,
    customerMeCollectorInfo_unknownMeCollectors,

    -- * ExportFilter
    ExportFilter (..),
    newExportFilter,
    exportFilter_name,
    exportFilter_values,
    exportFilter_condition,

    -- * ExportInfo
    ExportInfo (..),
    newExportInfo,
    exportInfo_requestedEndTime,
    exportInfo_isTruncated,
    exportInfo_requestedStartTime,
    exportInfo_configurationsDownloadUrl,
    exportInfo_exportId,
    exportInfo_exportStatus,
    exportInfo_statusMessage,
    exportInfo_exportRequestTime,

    -- * Filter
    Filter (..),
    newFilter,
    filter_name,
    filter_values,
    filter_condition,

    -- * ImportTask
    ImportTask (..),
    newImportTask,
    importTask_name,
    importTask_serverImportFailure,
    importTask_clientRequestToken,
    importTask_importTaskId,
    importTask_status,
    importTask_serverImportSuccess,
    importTask_errorsAndFailedEntriesZip,
    importTask_applicationImportSuccess,
    importTask_applicationImportFailure,
    importTask_importCompletionTime,
    importTask_importRequestTime,
    importTask_importUrl,
    importTask_importDeletedTime,

    -- * ImportTaskFilter
    ImportTaskFilter (..),
    newImportTaskFilter,
    importTaskFilter_name,
    importTaskFilter_values,

    -- * NeighborConnectionDetail
    NeighborConnectionDetail (..),
    newNeighborConnectionDetail,
    neighborConnectionDetail_transportProtocol,
    neighborConnectionDetail_destinationPort,
    neighborConnectionDetail_sourceServerId,
    neighborConnectionDetail_destinationServerId,
    neighborConnectionDetail_connectionsCount,

    -- * OrderByElement
    OrderByElement (..),
    newOrderByElement,
    orderByElement_sortOrder,
    orderByElement_fieldName,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TagFilter
    TagFilter (..),
    newTagFilter,
    tagFilter_name,
    tagFilter_values,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Discovery.Types.AgentConfigurationStatus
import Amazonka.Discovery.Types.AgentInfo
import Amazonka.Discovery.Types.AgentNetworkInfo
import Amazonka.Discovery.Types.AgentStatus
import Amazonka.Discovery.Types.BatchDeleteImportDataError
import Amazonka.Discovery.Types.BatchDeleteImportDataErrorCode
import Amazonka.Discovery.Types.ConfigurationItemType
import Amazonka.Discovery.Types.ConfigurationTag
import Amazonka.Discovery.Types.ContinuousExportDescription
import Amazonka.Discovery.Types.ContinuousExportStatus
import Amazonka.Discovery.Types.CustomerAgentInfo
import Amazonka.Discovery.Types.CustomerAgentlessCollectorInfo
import Amazonka.Discovery.Types.CustomerConnectorInfo
import Amazonka.Discovery.Types.CustomerMeCollectorInfo
import Amazonka.Discovery.Types.DataSource
import Amazonka.Discovery.Types.ExportDataFormat
import Amazonka.Discovery.Types.ExportFilter
import Amazonka.Discovery.Types.ExportInfo
import Amazonka.Discovery.Types.ExportStatus
import Amazonka.Discovery.Types.Filter
import Amazonka.Discovery.Types.ImportStatus
import Amazonka.Discovery.Types.ImportTask
import Amazonka.Discovery.Types.ImportTaskFilter
import Amazonka.Discovery.Types.ImportTaskFilterName
import Amazonka.Discovery.Types.NeighborConnectionDetail
import Amazonka.Discovery.Types.OrderByElement
import Amazonka.Discovery.Types.OrderString
import Amazonka.Discovery.Types.Tag
import Amazonka.Discovery.Types.TagFilter
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2015-11-01@ of the Amazon Application Discovery Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Discovery",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "discovery",
      Core._serviceSigningName = "discovery",
      Core._serviceVersion = "2015-11-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Discovery",
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

-- |
_ConflictErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictErrorException =
  Core._MatchServiceError
    defaultService
    "ConflictErrorException"

-- | The specified configuration ID was not located. Verify the configuration
-- ID and try again.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The server experienced an internal error. Try again.
_ServerInternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServerInternalErrorException =
  Core._MatchServiceError
    defaultService
    "ServerInternalErrorException"

-- | This issue occurs when the same @clientRequestToken@ is used with the
-- @StartImportTask@ action, but with different parameters. For example,
-- you use the same request token but have two different import URLs, you
-- can encounter this issue. If the import tasks are meant to be different,
-- use a different @clientRequestToken@, and try again.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The Amazon Web Services user account does not have permission to perform
-- the action. Check the IAM policy associated with this account.
_AuthorizationErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AuthorizationErrorException =
  Core._MatchServiceError
    defaultService
    "AuthorizationErrorException"

-- | This operation is not permitted.
_OperationNotPermittedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OperationNotPermittedException =
  Core._MatchServiceError
    defaultService
    "OperationNotPermittedException"

-- | The value of one or more parameters are either invalid or out of range.
-- Verify the parameter values and try again.
_InvalidParameterValueException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterValueException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterValueException"

-- | The home region is not set. Set the home region to continue.
_HomeRegionNotSetException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_HomeRegionNotSetException =
  Core._MatchServiceError
    defaultService
    "HomeRegionNotSetException"

-- | One or more parameters are not valid. Verify the parameters and try
-- again.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"

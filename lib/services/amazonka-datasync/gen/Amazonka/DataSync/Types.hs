{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DataSync.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataSync.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalException,
    _InvalidRequestException,

    -- * AgentStatus
    AgentStatus (..),

    -- * Atime
    Atime (..),

    -- * EfsInTransitEncryption
    EfsInTransitEncryption (..),

    -- * EndpointType
    EndpointType (..),

    -- * FilterType
    FilterType (..),

    -- * Gid
    Gid (..),

    -- * HdfsAuthenticationType
    HdfsAuthenticationType (..),

    -- * HdfsDataTransferProtection
    HdfsDataTransferProtection (..),

    -- * HdfsRpcProtection
    HdfsRpcProtection (..),

    -- * LocationFilterName
    LocationFilterName (..),

    -- * LogLevel
    LogLevel (..),

    -- * Mtime
    Mtime (..),

    -- * NfsVersion
    NfsVersion (..),

    -- * ObjectStorageServerProtocol
    ObjectStorageServerProtocol (..),

    -- * ObjectTags
    ObjectTags (..),

    -- * Operator
    Operator (..),

    -- * OverwriteMode
    OverwriteMode (..),

    -- * PhaseStatus
    PhaseStatus (..),

    -- * PosixPermissions
    PosixPermissions (..),

    -- * PreserveDeletedFiles
    PreserveDeletedFiles (..),

    -- * PreserveDevices
    PreserveDevices (..),

    -- * S3StorageClass
    S3StorageClass (..),

    -- * SmbSecurityDescriptorCopyFlags
    SmbSecurityDescriptorCopyFlags (..),

    -- * SmbVersion
    SmbVersion (..),

    -- * TaskExecutionStatus
    TaskExecutionStatus (..),

    -- * TaskFilterName
    TaskFilterName (..),

    -- * TaskQueueing
    TaskQueueing (..),

    -- * TaskStatus
    TaskStatus (..),

    -- * TransferMode
    TransferMode (..),

    -- * Uid
    Uid (..),

    -- * VerifyMode
    VerifyMode (..),

    -- * AgentListEntry
    AgentListEntry (..),
    newAgentListEntry,
    agentListEntry_name,
    agentListEntry_status,
    agentListEntry_agentArn,

    -- * Ec2Config
    Ec2Config (..),
    newEc2Config,
    ec2Config_subnetArn,
    ec2Config_securityGroupArns,

    -- * FilterRule
    FilterRule (..),
    newFilterRule,
    filterRule_filterType,
    filterRule_value,

    -- * FsxProtocol
    FsxProtocol (..),
    newFsxProtocol,
    fsxProtocol_smb,
    fsxProtocol_nfs,

    -- * FsxProtocolNfs
    FsxProtocolNfs (..),
    newFsxProtocolNfs,
    fsxProtocolNfs_mountOptions,

    -- * FsxProtocolSmb
    FsxProtocolSmb (..),
    newFsxProtocolSmb,
    fsxProtocolSmb_domain,
    fsxProtocolSmb_mountOptions,
    fsxProtocolSmb_password,
    fsxProtocolSmb_user,

    -- * HdfsNameNode
    HdfsNameNode (..),
    newHdfsNameNode,
    hdfsNameNode_hostname,
    hdfsNameNode_port,

    -- * LocationFilter
    LocationFilter (..),
    newLocationFilter,
    locationFilter_name,
    locationFilter_values,
    locationFilter_operator,

    -- * LocationListEntry
    LocationListEntry (..),
    newLocationListEntry,
    locationListEntry_locationArn,
    locationListEntry_locationUri,

    -- * NfsMountOptions
    NfsMountOptions (..),
    newNfsMountOptions,
    nfsMountOptions_version,

    -- * OnPremConfig
    OnPremConfig (..),
    newOnPremConfig,
    onPremConfig_agentArns,

    -- * Options
    Options (..),
    newOptions,
    options_objectTags,
    options_gid,
    options_logLevel,
    options_taskQueueing,
    options_preserveDevices,
    options_overwriteMode,
    options_mtime,
    options_transferMode,
    options_uid,
    options_verifyMode,
    options_preserveDeletedFiles,
    options_atime,
    options_posixPermissions,
    options_securityDescriptorCopyFlags,
    options_bytesPerSecond,

    -- * PrivateLinkConfig
    PrivateLinkConfig (..),
    newPrivateLinkConfig,
    privateLinkConfig_subnetArns,
    privateLinkConfig_privateLinkEndpoint,
    privateLinkConfig_vpcEndpointId,
    privateLinkConfig_securityGroupArns,

    -- * QopConfiguration
    QopConfiguration (..),
    newQopConfiguration,
    qopConfiguration_dataTransferProtection,
    qopConfiguration_rpcProtection,

    -- * S3Config
    S3Config (..),
    newS3Config,
    s3Config_bucketAccessRoleArn,

    -- * SmbMountOptions
    SmbMountOptions (..),
    newSmbMountOptions,
    smbMountOptions_version,

    -- * TagListEntry
    TagListEntry (..),
    newTagListEntry,
    tagListEntry_value,
    tagListEntry_key,

    -- * TaskExecutionListEntry
    TaskExecutionListEntry (..),
    newTaskExecutionListEntry,
    taskExecutionListEntry_status,
    taskExecutionListEntry_taskExecutionArn,

    -- * TaskExecutionResultDetail
    TaskExecutionResultDetail (..),
    newTaskExecutionResultDetail,
    taskExecutionResultDetail_prepareStatus,
    taskExecutionResultDetail_totalDuration,
    taskExecutionResultDetail_transferStatus,
    taskExecutionResultDetail_verifyStatus,
    taskExecutionResultDetail_transferDuration,
    taskExecutionResultDetail_prepareDuration,
    taskExecutionResultDetail_errorCode,
    taskExecutionResultDetail_verifyDuration,
    taskExecutionResultDetail_errorDetail,

    -- * TaskFilter
    TaskFilter (..),
    newTaskFilter,
    taskFilter_name,
    taskFilter_values,
    taskFilter_operator,

    -- * TaskListEntry
    TaskListEntry (..),
    newTaskListEntry,
    taskListEntry_name,
    taskListEntry_taskArn,
    taskListEntry_status,

    -- * TaskSchedule
    TaskSchedule (..),
    newTaskSchedule,
    taskSchedule_scheduleExpression,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types.AgentListEntry
import Amazonka.DataSync.Types.AgentStatus
import Amazonka.DataSync.Types.Atime
import Amazonka.DataSync.Types.Ec2Config
import Amazonka.DataSync.Types.EfsInTransitEncryption
import Amazonka.DataSync.Types.EndpointType
import Amazonka.DataSync.Types.FilterRule
import Amazonka.DataSync.Types.FilterType
import Amazonka.DataSync.Types.FsxProtocol
import Amazonka.DataSync.Types.FsxProtocolNfs
import Amazonka.DataSync.Types.FsxProtocolSmb
import Amazonka.DataSync.Types.Gid
import Amazonka.DataSync.Types.HdfsAuthenticationType
import Amazonka.DataSync.Types.HdfsDataTransferProtection
import Amazonka.DataSync.Types.HdfsNameNode
import Amazonka.DataSync.Types.HdfsRpcProtection
import Amazonka.DataSync.Types.LocationFilter
import Amazonka.DataSync.Types.LocationFilterName
import Amazonka.DataSync.Types.LocationListEntry
import Amazonka.DataSync.Types.LogLevel
import Amazonka.DataSync.Types.Mtime
import Amazonka.DataSync.Types.NfsMountOptions
import Amazonka.DataSync.Types.NfsVersion
import Amazonka.DataSync.Types.ObjectStorageServerProtocol
import Amazonka.DataSync.Types.ObjectTags
import Amazonka.DataSync.Types.OnPremConfig
import Amazonka.DataSync.Types.Operator
import Amazonka.DataSync.Types.Options
import Amazonka.DataSync.Types.OverwriteMode
import Amazonka.DataSync.Types.PhaseStatus
import Amazonka.DataSync.Types.PosixPermissions
import Amazonka.DataSync.Types.PreserveDeletedFiles
import Amazonka.DataSync.Types.PreserveDevices
import Amazonka.DataSync.Types.PrivateLinkConfig
import Amazonka.DataSync.Types.QopConfiguration
import Amazonka.DataSync.Types.S3Config
import Amazonka.DataSync.Types.S3StorageClass
import Amazonka.DataSync.Types.SmbMountOptions
import Amazonka.DataSync.Types.SmbSecurityDescriptorCopyFlags
import Amazonka.DataSync.Types.SmbVersion
import Amazonka.DataSync.Types.TagListEntry
import Amazonka.DataSync.Types.TaskExecutionListEntry
import Amazonka.DataSync.Types.TaskExecutionResultDetail
import Amazonka.DataSync.Types.TaskExecutionStatus
import Amazonka.DataSync.Types.TaskFilter
import Amazonka.DataSync.Types.TaskFilterName
import Amazonka.DataSync.Types.TaskListEntry
import Amazonka.DataSync.Types.TaskQueueing
import Amazonka.DataSync.Types.TaskSchedule
import Amazonka.DataSync.Types.TaskStatus
import Amazonka.DataSync.Types.TransferMode
import Amazonka.DataSync.Types.Uid
import Amazonka.DataSync.Types.VerifyMode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-11-09@ of the Amazon DataSync SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "DataSync",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "datasync",
      Core._serviceSigningName = "datasync",
      Core._serviceVersion = "2018-11-09",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "DataSync",
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

-- | This exception is thrown when an error occurs in the DataSync service.
_InternalException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalException =
  Core._MatchServiceError
    defaultService
    "InternalException"

-- | This exception is thrown when the client submits a malformed request.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"

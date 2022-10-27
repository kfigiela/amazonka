{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.FSx.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _VolumeNotFound,
    _MissingVolumeConfiguration,
    _ResourceNotFound,
    _ServiceLimitExceeded,
    _SnapshotNotFound,
    _DataRepositoryAssociationNotFound,
    _ResourceDoesNotSupportTagging,
    _InvalidNetworkSettings,
    _BackupInProgress,
    _IncompatibleRegionForMultiAZ,
    _BadRequest,
    _IncompatibleParameterError,
    _FileSystemNotFound,
    _InvalidExportPath,
    _BackupRestoring,
    _InvalidPerUnitStorageThroughput,
    _InternalServerError,
    _InvalidDataRepositoryType,
    _ActiveDirectoryError,
    _InvalidDestinationKmsKey,
    _NotServiceResourceError,
    _MissingFileCacheConfiguration,
    _StorageVirtualMachineNotFound,
    _DataRepositoryTaskNotFound,
    _FileCacheNotFound,
    _InvalidImportPath,
    _BackupNotFound,
    _DataRepositoryTaskEnded,
    _UnsupportedOperation,
    _DataRepositoryTaskExecuting,
    _SourceBackupUnavailable,
    _MissingFileSystemConfiguration,
    _InvalidRegion,
    _BackupBeingCopied,
    _InvalidSourceKmsKey,

    -- * AdministrativeActionType
    AdministrativeActionType (..),

    -- * AliasLifecycle
    AliasLifecycle (..),

    -- * AutoImportPolicyType
    AutoImportPolicyType (..),

    -- * BackupLifecycle
    BackupLifecycle (..),

    -- * BackupType
    BackupType (..),

    -- * DataCompressionType
    DataCompressionType (..),

    -- * DataRepositoryLifecycle
    DataRepositoryLifecycle (..),

    -- * DataRepositoryTaskFilterName
    DataRepositoryTaskFilterName (..),

    -- * DataRepositoryTaskLifecycle
    DataRepositoryTaskLifecycle (..),

    -- * DataRepositoryTaskType
    DataRepositoryTaskType (..),

    -- * DeleteFileSystemOpenZFSOption
    DeleteFileSystemOpenZFSOption (..),

    -- * DeleteOpenZFSVolumeOption
    DeleteOpenZFSVolumeOption (..),

    -- * DiskIopsConfigurationMode
    DiskIopsConfigurationMode (..),

    -- * DriveCacheType
    DriveCacheType (..),

    -- * EventType
    EventType (..),

    -- * FileCacheLifecycle
    FileCacheLifecycle (..),

    -- * FileCacheLustreDeploymentType
    FileCacheLustreDeploymentType (..),

    -- * FileCacheType
    FileCacheType (..),

    -- * FileSystemLifecycle
    FileSystemLifecycle (..),

    -- * FileSystemMaintenanceOperation
    FileSystemMaintenanceOperation (..),

    -- * FileSystemType
    FileSystemType (..),

    -- * FilterName
    FilterName (..),

    -- * FlexCacheEndpointType
    FlexCacheEndpointType (..),

    -- * LustreAccessAuditLogLevel
    LustreAccessAuditLogLevel (..),

    -- * LustreDeploymentType
    LustreDeploymentType (..),

    -- * NfsVersion
    NfsVersion (..),

    -- * OntapDeploymentType
    OntapDeploymentType (..),

    -- * OntapVolumeType
    OntapVolumeType (..),

    -- * OpenZFSCopyStrategy
    OpenZFSCopyStrategy (..),

    -- * OpenZFSDataCompressionType
    OpenZFSDataCompressionType (..),

    -- * OpenZFSDeploymentType
    OpenZFSDeploymentType (..),

    -- * OpenZFSQuotaType
    OpenZFSQuotaType (..),

    -- * ReportFormat
    ReportFormat (..),

    -- * ReportScope
    ReportScope (..),

    -- * ResourceType
    ResourceType (..),

    -- * RestoreOpenZFSVolumeOption
    RestoreOpenZFSVolumeOption (..),

    -- * SecurityStyle
    SecurityStyle (..),

    -- * SnapshotFilterName
    SnapshotFilterName (..),

    -- * SnapshotLifecycle
    SnapshotLifecycle (..),

    -- * Status
    Status (..),

    -- * StorageType
    StorageType (..),

    -- * StorageVirtualMachineFilterName
    StorageVirtualMachineFilterName (..),

    -- * StorageVirtualMachineLifecycle
    StorageVirtualMachineLifecycle (..),

    -- * StorageVirtualMachineRootVolumeSecurityStyle
    StorageVirtualMachineRootVolumeSecurityStyle (..),

    -- * StorageVirtualMachineSubtype
    StorageVirtualMachineSubtype (..),

    -- * TieringPolicyName
    TieringPolicyName (..),

    -- * VolumeFilterName
    VolumeFilterName (..),

    -- * VolumeLifecycle
    VolumeLifecycle (..),

    -- * VolumeType
    VolumeType (..),

    -- * WindowsAccessAuditLogLevel
    WindowsAccessAuditLogLevel (..),

    -- * WindowsDeploymentType
    WindowsDeploymentType (..),

    -- * ActiveDirectoryBackupAttributes
    ActiveDirectoryBackupAttributes (..),
    newActiveDirectoryBackupAttributes,
    activeDirectoryBackupAttributes_activeDirectoryId,
    activeDirectoryBackupAttributes_domainName,
    activeDirectoryBackupAttributes_resourceARN,

    -- * AdministrativeAction
    AdministrativeAction (..),
    newAdministrativeAction,
    administrativeAction_targetFileSystemValues,
    administrativeAction_requestTime,
    administrativeAction_status,
    administrativeAction_targetVolumeValues,
    administrativeAction_failureDetails,
    administrativeAction_targetSnapshotValues,
    administrativeAction_progressPercent,
    administrativeAction_administrativeActionType,

    -- * AdministrativeActionFailureDetails
    AdministrativeActionFailureDetails (..),
    newAdministrativeActionFailureDetails,
    administrativeActionFailureDetails_message,

    -- * Alias
    Alias (..),
    newAlias,
    alias_name,
    alias_lifecycle,

    -- * AutoExportPolicy
    AutoExportPolicy (..),
    newAutoExportPolicy,
    autoExportPolicy_events,

    -- * AutoImportPolicy
    AutoImportPolicy (..),
    newAutoImportPolicy,
    autoImportPolicy_events,

    -- * Backup
    Backup (..),
    newBackup,
    backup_tags,
    backup_resourceType,
    backup_ownerId,
    backup_sourceBackupRegion,
    backup_failureDetails,
    backup_directoryInformation,
    backup_kmsKeyId,
    backup_volume,
    backup_resourceARN,
    backup_progressPercent,
    backup_sourceBackupId,
    backup_backupId,
    backup_lifecycle,
    backup_type,
    backup_creationTime,
    backup_fileSystem,

    -- * BackupFailureDetails
    BackupFailureDetails (..),
    newBackupFailureDetails,
    backupFailureDetails_message,

    -- * CompletionReport
    CompletionReport (..),
    newCompletionReport,
    completionReport_format,
    completionReport_path,
    completionReport_scope,
    completionReport_enabled,

    -- * CreateFileCacheLustreConfiguration
    CreateFileCacheLustreConfiguration (..),
    newCreateFileCacheLustreConfiguration,
    createFileCacheLustreConfiguration_weeklyMaintenanceStartTime,
    createFileCacheLustreConfiguration_perUnitStorageThroughput,
    createFileCacheLustreConfiguration_deploymentType,
    createFileCacheLustreConfiguration_metadataConfiguration,

    -- * CreateFileSystemLustreConfiguration
    CreateFileSystemLustreConfiguration (..),
    newCreateFileSystemLustreConfiguration,
    createFileSystemLustreConfiguration_copyTagsToBackups,
    createFileSystemLustreConfiguration_driveCacheType,
    createFileSystemLustreConfiguration_weeklyMaintenanceStartTime,
    createFileSystemLustreConfiguration_logConfiguration,
    createFileSystemLustreConfiguration_automaticBackupRetentionDays,
    createFileSystemLustreConfiguration_importedFileChunkSize,
    createFileSystemLustreConfiguration_importPath,
    createFileSystemLustreConfiguration_autoImportPolicy,
    createFileSystemLustreConfiguration_deploymentType,
    createFileSystemLustreConfiguration_exportPath,
    createFileSystemLustreConfiguration_dailyAutomaticBackupStartTime,
    createFileSystemLustreConfiguration_perUnitStorageThroughput,
    createFileSystemLustreConfiguration_dataCompressionType,
    createFileSystemLustreConfiguration_rootSquashConfiguration,

    -- * CreateFileSystemOntapConfiguration
    CreateFileSystemOntapConfiguration (..),
    newCreateFileSystemOntapConfiguration,
    createFileSystemOntapConfiguration_weeklyMaintenanceStartTime,
    createFileSystemOntapConfiguration_automaticBackupRetentionDays,
    createFileSystemOntapConfiguration_routeTableIds,
    createFileSystemOntapConfiguration_fsxAdminPassword,
    createFileSystemOntapConfiguration_endpointIpAddressRange,
    createFileSystemOntapConfiguration_diskIopsConfiguration,
    createFileSystemOntapConfiguration_dailyAutomaticBackupStartTime,
    createFileSystemOntapConfiguration_preferredSubnetId,
    createFileSystemOntapConfiguration_deploymentType,
    createFileSystemOntapConfiguration_throughputCapacity,

    -- * CreateFileSystemOpenZFSConfiguration
    CreateFileSystemOpenZFSConfiguration (..),
    newCreateFileSystemOpenZFSConfiguration,
    createFileSystemOpenZFSConfiguration_copyTagsToBackups,
    createFileSystemOpenZFSConfiguration_weeklyMaintenanceStartTime,
    createFileSystemOpenZFSConfiguration_automaticBackupRetentionDays,
    createFileSystemOpenZFSConfiguration_diskIopsConfiguration,
    createFileSystemOpenZFSConfiguration_dailyAutomaticBackupStartTime,
    createFileSystemOpenZFSConfiguration_copyTagsToVolumes,
    createFileSystemOpenZFSConfiguration_rootVolumeConfiguration,
    createFileSystemOpenZFSConfiguration_deploymentType,
    createFileSystemOpenZFSConfiguration_throughputCapacity,

    -- * CreateFileSystemWindowsConfiguration
    CreateFileSystemWindowsConfiguration (..),
    newCreateFileSystemWindowsConfiguration,
    createFileSystemWindowsConfiguration_copyTagsToBackups,
    createFileSystemWindowsConfiguration_weeklyMaintenanceStartTime,
    createFileSystemWindowsConfiguration_automaticBackupRetentionDays,
    createFileSystemWindowsConfiguration_activeDirectoryId,
    createFileSystemWindowsConfiguration_aliases,
    createFileSystemWindowsConfiguration_deploymentType,
    createFileSystemWindowsConfiguration_dailyAutomaticBackupStartTime,
    createFileSystemWindowsConfiguration_selfManagedActiveDirectoryConfiguration,
    createFileSystemWindowsConfiguration_auditLogConfiguration,
    createFileSystemWindowsConfiguration_preferredSubnetId,
    createFileSystemWindowsConfiguration_throughputCapacity,

    -- * CreateOntapVolumeConfiguration
    CreateOntapVolumeConfiguration (..),
    newCreateOntapVolumeConfiguration,
    createOntapVolumeConfiguration_tieringPolicy,
    createOntapVolumeConfiguration_securityStyle,
    createOntapVolumeConfiguration_junctionPath,
    createOntapVolumeConfiguration_sizeInMegabytes,
    createOntapVolumeConfiguration_storageEfficiencyEnabled,
    createOntapVolumeConfiguration_storageVirtualMachineId,

    -- * CreateOpenZFSOriginSnapshotConfiguration
    CreateOpenZFSOriginSnapshotConfiguration (..),
    newCreateOpenZFSOriginSnapshotConfiguration,
    createOpenZFSOriginSnapshotConfiguration_snapshotARN,
    createOpenZFSOriginSnapshotConfiguration_copyStrategy,

    -- * CreateOpenZFSVolumeConfiguration
    CreateOpenZFSVolumeConfiguration (..),
    newCreateOpenZFSVolumeConfiguration,
    createOpenZFSVolumeConfiguration_originSnapshot,
    createOpenZFSVolumeConfiguration_recordSizeKiB,
    createOpenZFSVolumeConfiguration_storageCapacityReservationGiB,
    createOpenZFSVolumeConfiguration_storageCapacityQuotaGiB,
    createOpenZFSVolumeConfiguration_readOnly,
    createOpenZFSVolumeConfiguration_nfsExports,
    createOpenZFSVolumeConfiguration_copyTagsToSnapshots,
    createOpenZFSVolumeConfiguration_dataCompressionType,
    createOpenZFSVolumeConfiguration_userAndGroupQuotas,
    createOpenZFSVolumeConfiguration_parentVolumeId,

    -- * CreateSvmActiveDirectoryConfiguration
    CreateSvmActiveDirectoryConfiguration (..),
    newCreateSvmActiveDirectoryConfiguration,
    createSvmActiveDirectoryConfiguration_selfManagedActiveDirectoryConfiguration,
    createSvmActiveDirectoryConfiguration_netBiosName,

    -- * DataRepositoryAssociation
    DataRepositoryAssociation (..),
    newDataRepositoryAssociation,
    dataRepositoryAssociation_tags,
    dataRepositoryAssociation_dataRepositorySubdirectories,
    dataRepositoryAssociation_lifecycle,
    dataRepositoryAssociation_s3,
    dataRepositoryAssociation_importedFileChunkSize,
    dataRepositoryAssociation_fileSystemPath,
    dataRepositoryAssociation_batchImportMetaDataOnCreate,
    dataRepositoryAssociation_dataRepositoryPath,
    dataRepositoryAssociation_fileCachePath,
    dataRepositoryAssociation_nfs,
    dataRepositoryAssociation_fileSystemId,
    dataRepositoryAssociation_fileCacheId,
    dataRepositoryAssociation_failureDetails,
    dataRepositoryAssociation_creationTime,
    dataRepositoryAssociation_resourceARN,
    dataRepositoryAssociation_associationId,

    -- * DataRepositoryConfiguration
    DataRepositoryConfiguration (..),
    newDataRepositoryConfiguration,
    dataRepositoryConfiguration_lifecycle,
    dataRepositoryConfiguration_importedFileChunkSize,
    dataRepositoryConfiguration_importPath,
    dataRepositoryConfiguration_autoImportPolicy,
    dataRepositoryConfiguration_exportPath,
    dataRepositoryConfiguration_failureDetails,

    -- * DataRepositoryFailureDetails
    DataRepositoryFailureDetails (..),
    newDataRepositoryFailureDetails,
    dataRepositoryFailureDetails_message,

    -- * DataRepositoryTask
    DataRepositoryTask (..),
    newDataRepositoryTask,
    dataRepositoryTask_tags,
    dataRepositoryTask_capacityToRelease,
    dataRepositoryTask_fileSystemId,
    dataRepositoryTask_status,
    dataRepositoryTask_endTime,
    dataRepositoryTask_fileCacheId,
    dataRepositoryTask_failureDetails,
    dataRepositoryTask_report,
    dataRepositoryTask_paths,
    dataRepositoryTask_resourceARN,
    dataRepositoryTask_startTime,
    dataRepositoryTask_taskId,
    dataRepositoryTask_lifecycle,
    dataRepositoryTask_type,
    dataRepositoryTask_creationTime,

    -- * DataRepositoryTaskFailureDetails
    DataRepositoryTaskFailureDetails (..),
    newDataRepositoryTaskFailureDetails,
    dataRepositoryTaskFailureDetails_message,

    -- * DataRepositoryTaskFilter
    DataRepositoryTaskFilter (..),
    newDataRepositoryTaskFilter,
    dataRepositoryTaskFilter_name,
    dataRepositoryTaskFilter_values,

    -- * DataRepositoryTaskStatus
    DataRepositoryTaskStatus (..),
    newDataRepositoryTaskStatus,
    dataRepositoryTaskStatus_succeededCount,
    dataRepositoryTaskStatus_failedCount,
    dataRepositoryTaskStatus_lastUpdatedTime,
    dataRepositoryTaskStatus_releasedCapacity,
    dataRepositoryTaskStatus_totalCount,

    -- * DeleteFileSystemLustreConfiguration
    DeleteFileSystemLustreConfiguration (..),
    newDeleteFileSystemLustreConfiguration,
    deleteFileSystemLustreConfiguration_skipFinalBackup,
    deleteFileSystemLustreConfiguration_finalBackupTags,

    -- * DeleteFileSystemLustreResponse
    DeleteFileSystemLustreResponse (..),
    newDeleteFileSystemLustreResponse,
    deleteFileSystemLustreResponse_finalBackupTags,
    deleteFileSystemLustreResponse_finalBackupId,

    -- * DeleteFileSystemOpenZFSConfiguration
    DeleteFileSystemOpenZFSConfiguration (..),
    newDeleteFileSystemOpenZFSConfiguration,
    deleteFileSystemOpenZFSConfiguration_skipFinalBackup,
    deleteFileSystemOpenZFSConfiguration_options,
    deleteFileSystemOpenZFSConfiguration_finalBackupTags,

    -- * DeleteFileSystemOpenZFSResponse
    DeleteFileSystemOpenZFSResponse (..),
    newDeleteFileSystemOpenZFSResponse,
    deleteFileSystemOpenZFSResponse_finalBackupTags,
    deleteFileSystemOpenZFSResponse_finalBackupId,

    -- * DeleteFileSystemWindowsConfiguration
    DeleteFileSystemWindowsConfiguration (..),
    newDeleteFileSystemWindowsConfiguration,
    deleteFileSystemWindowsConfiguration_skipFinalBackup,
    deleteFileSystemWindowsConfiguration_finalBackupTags,

    -- * DeleteFileSystemWindowsResponse
    DeleteFileSystemWindowsResponse (..),
    newDeleteFileSystemWindowsResponse,
    deleteFileSystemWindowsResponse_finalBackupTags,
    deleteFileSystemWindowsResponse_finalBackupId,

    -- * DeleteVolumeOntapConfiguration
    DeleteVolumeOntapConfiguration (..),
    newDeleteVolumeOntapConfiguration,
    deleteVolumeOntapConfiguration_skipFinalBackup,
    deleteVolumeOntapConfiguration_finalBackupTags,

    -- * DeleteVolumeOntapResponse
    DeleteVolumeOntapResponse (..),
    newDeleteVolumeOntapResponse,
    deleteVolumeOntapResponse_finalBackupTags,
    deleteVolumeOntapResponse_finalBackupId,

    -- * DeleteVolumeOpenZFSConfiguration
    DeleteVolumeOpenZFSConfiguration (..),
    newDeleteVolumeOpenZFSConfiguration,
    deleteVolumeOpenZFSConfiguration_options,

    -- * DiskIopsConfiguration
    DiskIopsConfiguration (..),
    newDiskIopsConfiguration,
    diskIopsConfiguration_mode,
    diskIopsConfiguration_iops,

    -- * FileCache
    FileCache (..),
    newFileCache,
    fileCache_ownerId,
    fileCache_lifecycle,
    fileCache_dataRepositoryAssociationIds,
    fileCache_storageCapacity,
    fileCache_fileCacheId,
    fileCache_failureDetails,
    fileCache_fileCacheTypeVersion,
    fileCache_fileCacheType,
    fileCache_kmsKeyId,
    fileCache_creationTime,
    fileCache_resourceARN,
    fileCache_dNSName,
    fileCache_vpcId,
    fileCache_networkInterfaceIds,
    fileCache_subnetIds,
    fileCache_lustreConfiguration,

    -- * FileCacheCreating
    FileCacheCreating (..),
    newFileCacheCreating,
    fileCacheCreating_tags,
    fileCacheCreating_ownerId,
    fileCacheCreating_lifecycle,
    fileCacheCreating_copyTagsToDataRepositoryAssociations,
    fileCacheCreating_dataRepositoryAssociationIds,
    fileCacheCreating_storageCapacity,
    fileCacheCreating_fileCacheId,
    fileCacheCreating_failureDetails,
    fileCacheCreating_fileCacheTypeVersion,
    fileCacheCreating_fileCacheType,
    fileCacheCreating_kmsKeyId,
    fileCacheCreating_creationTime,
    fileCacheCreating_resourceARN,
    fileCacheCreating_dNSName,
    fileCacheCreating_vpcId,
    fileCacheCreating_networkInterfaceIds,
    fileCacheCreating_subnetIds,
    fileCacheCreating_lustreConfiguration,

    -- * FileCacheDataRepositoryAssociation
    FileCacheDataRepositoryAssociation (..),
    newFileCacheDataRepositoryAssociation,
    fileCacheDataRepositoryAssociation_dataRepositorySubdirectories,
    fileCacheDataRepositoryAssociation_nfs,
    fileCacheDataRepositoryAssociation_fileCachePath,
    fileCacheDataRepositoryAssociation_dataRepositoryPath,

    -- * FileCacheFailureDetails
    FileCacheFailureDetails (..),
    newFileCacheFailureDetails,
    fileCacheFailureDetails_message,

    -- * FileCacheLustreConfiguration
    FileCacheLustreConfiguration (..),
    newFileCacheLustreConfiguration,
    fileCacheLustreConfiguration_metadataConfiguration,
    fileCacheLustreConfiguration_weeklyMaintenanceStartTime,
    fileCacheLustreConfiguration_logConfiguration,
    fileCacheLustreConfiguration_deploymentType,
    fileCacheLustreConfiguration_perUnitStorageThroughput,
    fileCacheLustreConfiguration_mountName,

    -- * FileCacheLustreMetadataConfiguration
    FileCacheLustreMetadataConfiguration (..),
    newFileCacheLustreMetadataConfiguration,
    fileCacheLustreMetadataConfiguration_storageCapacity,

    -- * FileCacheNFSConfiguration
    FileCacheNFSConfiguration (..),
    newFileCacheNFSConfiguration,
    fileCacheNFSConfiguration_dnsIps,
    fileCacheNFSConfiguration_version,

    -- * FileSystem
    FileSystem (..),
    newFileSystem,
    fileSystem_tags,
    fileSystem_ownerId,
    fileSystem_lifecycle,
    fileSystem_fileSystemTypeVersion,
    fileSystem_administrativeActions,
    fileSystem_openZFSConfiguration,
    fileSystem_fileSystemId,
    fileSystem_storageCapacity,
    fileSystem_storageType,
    fileSystem_ontapConfiguration,
    fileSystem_windowsConfiguration,
    fileSystem_failureDetails,
    fileSystem_kmsKeyId,
    fileSystem_creationTime,
    fileSystem_fileSystemType,
    fileSystem_resourceARN,
    fileSystem_dNSName,
    fileSystem_vpcId,
    fileSystem_networkInterfaceIds,
    fileSystem_subnetIds,
    fileSystem_lustreConfiguration,

    -- * FileSystemEndpoint
    FileSystemEndpoint (..),
    newFileSystemEndpoint,
    fileSystemEndpoint_dNSName,
    fileSystemEndpoint_ipAddresses,

    -- * FileSystemEndpoints
    FileSystemEndpoints (..),
    newFileSystemEndpoints,
    fileSystemEndpoints_intercluster,
    fileSystemEndpoints_management,

    -- * FileSystemFailureDetails
    FileSystemFailureDetails (..),
    newFileSystemFailureDetails,
    fileSystemFailureDetails_message,

    -- * Filter
    Filter (..),
    newFilter,
    filter_name,
    filter_values,

    -- * LifecycleTransitionReason
    LifecycleTransitionReason (..),
    newLifecycleTransitionReason,
    lifecycleTransitionReason_message,

    -- * LustreFileSystemConfiguration
    LustreFileSystemConfiguration (..),
    newLustreFileSystemConfiguration,
    lustreFileSystemConfiguration_copyTagsToBackups,
    lustreFileSystemConfiguration_driveCacheType,
    lustreFileSystemConfiguration_weeklyMaintenanceStartTime,
    lustreFileSystemConfiguration_logConfiguration,
    lustreFileSystemConfiguration_automaticBackupRetentionDays,
    lustreFileSystemConfiguration_deploymentType,
    lustreFileSystemConfiguration_dailyAutomaticBackupStartTime,
    lustreFileSystemConfiguration_perUnitStorageThroughput,
    lustreFileSystemConfiguration_dataCompressionType,
    lustreFileSystemConfiguration_mountName,
    lustreFileSystemConfiguration_rootSquashConfiguration,
    lustreFileSystemConfiguration_dataRepositoryConfiguration,

    -- * LustreLogConfiguration
    LustreLogConfiguration (..),
    newLustreLogConfiguration,
    lustreLogConfiguration_destination,
    lustreLogConfiguration_level,

    -- * LustreLogCreateConfiguration
    LustreLogCreateConfiguration (..),
    newLustreLogCreateConfiguration,
    lustreLogCreateConfiguration_destination,
    lustreLogCreateConfiguration_level,

    -- * LustreRootSquashConfiguration
    LustreRootSquashConfiguration (..),
    newLustreRootSquashConfiguration,
    lustreRootSquashConfiguration_rootSquash,
    lustreRootSquashConfiguration_noSquashNids,

    -- * NFSDataRepositoryConfiguration
    NFSDataRepositoryConfiguration (..),
    newNFSDataRepositoryConfiguration,
    nFSDataRepositoryConfiguration_autoExportPolicy,
    nFSDataRepositoryConfiguration_dnsIps,
    nFSDataRepositoryConfiguration_version,

    -- * OntapFileSystemConfiguration
    OntapFileSystemConfiguration (..),
    newOntapFileSystemConfiguration,
    ontapFileSystemConfiguration_weeklyMaintenanceStartTime,
    ontapFileSystemConfiguration_throughputCapacity,
    ontapFileSystemConfiguration_automaticBackupRetentionDays,
    ontapFileSystemConfiguration_routeTableIds,
    ontapFileSystemConfiguration_deploymentType,
    ontapFileSystemConfiguration_endpoints,
    ontapFileSystemConfiguration_endpointIpAddressRange,
    ontapFileSystemConfiguration_diskIopsConfiguration,
    ontapFileSystemConfiguration_dailyAutomaticBackupStartTime,
    ontapFileSystemConfiguration_preferredSubnetId,

    -- * OntapVolumeConfiguration
    OntapVolumeConfiguration (..),
    newOntapVolumeConfiguration,
    ontapVolumeConfiguration_storageEfficiencyEnabled,
    ontapVolumeConfiguration_tieringPolicy,
    ontapVolumeConfiguration_securityStyle,
    ontapVolumeConfiguration_storageVirtualMachineId,
    ontapVolumeConfiguration_storageVirtualMachineRoot,
    ontapVolumeConfiguration_uuid,
    ontapVolumeConfiguration_junctionPath,
    ontapVolumeConfiguration_flexCacheEndpointType,
    ontapVolumeConfiguration_ontapVolumeType,
    ontapVolumeConfiguration_sizeInMegabytes,

    -- * OpenZFSClientConfiguration
    OpenZFSClientConfiguration (..),
    newOpenZFSClientConfiguration,
    openZFSClientConfiguration_clients,
    openZFSClientConfiguration_options,

    -- * OpenZFSCreateRootVolumeConfiguration
    OpenZFSCreateRootVolumeConfiguration (..),
    newOpenZFSCreateRootVolumeConfiguration,
    openZFSCreateRootVolumeConfiguration_recordSizeKiB,
    openZFSCreateRootVolumeConfiguration_readOnly,
    openZFSCreateRootVolumeConfiguration_nfsExports,
    openZFSCreateRootVolumeConfiguration_copyTagsToSnapshots,
    openZFSCreateRootVolumeConfiguration_dataCompressionType,
    openZFSCreateRootVolumeConfiguration_userAndGroupQuotas,

    -- * OpenZFSFileSystemConfiguration
    OpenZFSFileSystemConfiguration (..),
    newOpenZFSFileSystemConfiguration,
    openZFSFileSystemConfiguration_copyTagsToBackups,
    openZFSFileSystemConfiguration_weeklyMaintenanceStartTime,
    openZFSFileSystemConfiguration_throughputCapacity,
    openZFSFileSystemConfiguration_automaticBackupRetentionDays,
    openZFSFileSystemConfiguration_deploymentType,
    openZFSFileSystemConfiguration_rootVolumeId,
    openZFSFileSystemConfiguration_diskIopsConfiguration,
    openZFSFileSystemConfiguration_dailyAutomaticBackupStartTime,
    openZFSFileSystemConfiguration_copyTagsToVolumes,

    -- * OpenZFSNfsExport
    OpenZFSNfsExport (..),
    newOpenZFSNfsExport,
    openZFSNfsExport_clientConfigurations,

    -- * OpenZFSOriginSnapshotConfiguration
    OpenZFSOriginSnapshotConfiguration (..),
    newOpenZFSOriginSnapshotConfiguration,
    openZFSOriginSnapshotConfiguration_copyStrategy,
    openZFSOriginSnapshotConfiguration_snapshotARN,

    -- * OpenZFSUserOrGroupQuota
    OpenZFSUserOrGroupQuota (..),
    newOpenZFSUserOrGroupQuota,
    openZFSUserOrGroupQuota_type,
    openZFSUserOrGroupQuota_id,
    openZFSUserOrGroupQuota_storageCapacityQuotaGiB,

    -- * OpenZFSVolumeConfiguration
    OpenZFSVolumeConfiguration (..),
    newOpenZFSVolumeConfiguration,
    openZFSVolumeConfiguration_originSnapshot,
    openZFSVolumeConfiguration_recordSizeKiB,
    openZFSVolumeConfiguration_storageCapacityReservationGiB,
    openZFSVolumeConfiguration_parentVolumeId,
    openZFSVolumeConfiguration_storageCapacityQuotaGiB,
    openZFSVolumeConfiguration_readOnly,
    openZFSVolumeConfiguration_nfsExports,
    openZFSVolumeConfiguration_copyTagsToSnapshots,
    openZFSVolumeConfiguration_dataCompressionType,
    openZFSVolumeConfiguration_userAndGroupQuotas,
    openZFSVolumeConfiguration_volumePath,

    -- * S3DataRepositoryConfiguration
    S3DataRepositoryConfiguration (..),
    newS3DataRepositoryConfiguration,
    s3DataRepositoryConfiguration_autoExportPolicy,
    s3DataRepositoryConfiguration_autoImportPolicy,

    -- * SelfManagedActiveDirectoryAttributes
    SelfManagedActiveDirectoryAttributes (..),
    newSelfManagedActiveDirectoryAttributes,
    selfManagedActiveDirectoryAttributes_domainName,
    selfManagedActiveDirectoryAttributes_dnsIps,
    selfManagedActiveDirectoryAttributes_userName,
    selfManagedActiveDirectoryAttributes_organizationalUnitDistinguishedName,
    selfManagedActiveDirectoryAttributes_fileSystemAdministratorsGroup,

    -- * SelfManagedActiveDirectoryConfiguration
    SelfManagedActiveDirectoryConfiguration (..),
    newSelfManagedActiveDirectoryConfiguration,
    selfManagedActiveDirectoryConfiguration_organizationalUnitDistinguishedName,
    selfManagedActiveDirectoryConfiguration_fileSystemAdministratorsGroup,
    selfManagedActiveDirectoryConfiguration_domainName,
    selfManagedActiveDirectoryConfiguration_userName,
    selfManagedActiveDirectoryConfiguration_password,
    selfManagedActiveDirectoryConfiguration_dnsIps,

    -- * SelfManagedActiveDirectoryConfigurationUpdates
    SelfManagedActiveDirectoryConfigurationUpdates (..),
    newSelfManagedActiveDirectoryConfigurationUpdates,
    selfManagedActiveDirectoryConfigurationUpdates_password,
    selfManagedActiveDirectoryConfigurationUpdates_dnsIps,
    selfManagedActiveDirectoryConfigurationUpdates_userName,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,
    snapshot_tags,
    snapshot_name,
    snapshot_lifecycle,
    snapshot_administrativeActions,
    snapshot_snapshotId,
    snapshot_creationTime,
    snapshot_volumeId,
    snapshot_resourceARN,
    snapshot_lifecycleTransitionReason,

    -- * SnapshotFilter
    SnapshotFilter (..),
    newSnapshotFilter,
    snapshotFilter_name,
    snapshotFilter_values,

    -- * StorageVirtualMachine
    StorageVirtualMachine (..),
    newStorageVirtualMachine,
    storageVirtualMachine_tags,
    storageVirtualMachine_name,
    storageVirtualMachine_activeDirectoryConfiguration,
    storageVirtualMachine_lifecycle,
    storageVirtualMachine_storageVirtualMachineId,
    storageVirtualMachine_uuid,
    storageVirtualMachine_fileSystemId,
    storageVirtualMachine_endpoints,
    storageVirtualMachine_subtype,
    storageVirtualMachine_rootVolumeSecurityStyle,
    storageVirtualMachine_creationTime,
    storageVirtualMachine_resourceARN,
    storageVirtualMachine_lifecycleTransitionReason,

    -- * StorageVirtualMachineFilter
    StorageVirtualMachineFilter (..),
    newStorageVirtualMachineFilter,
    storageVirtualMachineFilter_name,
    storageVirtualMachineFilter_values,

    -- * SvmActiveDirectoryConfiguration
    SvmActiveDirectoryConfiguration (..),
    newSvmActiveDirectoryConfiguration,
    svmActiveDirectoryConfiguration_netBiosName,
    svmActiveDirectoryConfiguration_selfManagedActiveDirectoryConfiguration,

    -- * SvmEndpoint
    SvmEndpoint (..),
    newSvmEndpoint,
    svmEndpoint_dNSName,
    svmEndpoint_ipAddresses,

    -- * SvmEndpoints
    SvmEndpoints (..),
    newSvmEndpoints,
    svmEndpoints_smb,
    svmEndpoints_iscsi,
    svmEndpoints_nfs,
    svmEndpoints_management,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TieringPolicy
    TieringPolicy (..),
    newTieringPolicy,
    tieringPolicy_name,
    tieringPolicy_coolingPeriod,

    -- * UpdateFileCacheLustreConfiguration
    UpdateFileCacheLustreConfiguration (..),
    newUpdateFileCacheLustreConfiguration,
    updateFileCacheLustreConfiguration_weeklyMaintenanceStartTime,

    -- * UpdateFileSystemLustreConfiguration
    UpdateFileSystemLustreConfiguration (..),
    newUpdateFileSystemLustreConfiguration,
    updateFileSystemLustreConfiguration_weeklyMaintenanceStartTime,
    updateFileSystemLustreConfiguration_logConfiguration,
    updateFileSystemLustreConfiguration_automaticBackupRetentionDays,
    updateFileSystemLustreConfiguration_autoImportPolicy,
    updateFileSystemLustreConfiguration_dailyAutomaticBackupStartTime,
    updateFileSystemLustreConfiguration_dataCompressionType,
    updateFileSystemLustreConfiguration_rootSquashConfiguration,

    -- * UpdateFileSystemOntapConfiguration
    UpdateFileSystemOntapConfiguration (..),
    newUpdateFileSystemOntapConfiguration,
    updateFileSystemOntapConfiguration_weeklyMaintenanceStartTime,
    updateFileSystemOntapConfiguration_throughputCapacity,
    updateFileSystemOntapConfiguration_automaticBackupRetentionDays,
    updateFileSystemOntapConfiguration_fsxAdminPassword,
    updateFileSystemOntapConfiguration_diskIopsConfiguration,
    updateFileSystemOntapConfiguration_dailyAutomaticBackupStartTime,

    -- * UpdateFileSystemOpenZFSConfiguration
    UpdateFileSystemOpenZFSConfiguration (..),
    newUpdateFileSystemOpenZFSConfiguration,
    updateFileSystemOpenZFSConfiguration_copyTagsToBackups,
    updateFileSystemOpenZFSConfiguration_weeklyMaintenanceStartTime,
    updateFileSystemOpenZFSConfiguration_throughputCapacity,
    updateFileSystemOpenZFSConfiguration_automaticBackupRetentionDays,
    updateFileSystemOpenZFSConfiguration_diskIopsConfiguration,
    updateFileSystemOpenZFSConfiguration_dailyAutomaticBackupStartTime,
    updateFileSystemOpenZFSConfiguration_copyTagsToVolumes,

    -- * UpdateFileSystemWindowsConfiguration
    UpdateFileSystemWindowsConfiguration (..),
    newUpdateFileSystemWindowsConfiguration,
    updateFileSystemWindowsConfiguration_weeklyMaintenanceStartTime,
    updateFileSystemWindowsConfiguration_throughputCapacity,
    updateFileSystemWindowsConfiguration_automaticBackupRetentionDays,
    updateFileSystemWindowsConfiguration_dailyAutomaticBackupStartTime,
    updateFileSystemWindowsConfiguration_selfManagedActiveDirectoryConfiguration,
    updateFileSystemWindowsConfiguration_auditLogConfiguration,

    -- * UpdateOntapVolumeConfiguration
    UpdateOntapVolumeConfiguration (..),
    newUpdateOntapVolumeConfiguration,
    updateOntapVolumeConfiguration_storageEfficiencyEnabled,
    updateOntapVolumeConfiguration_tieringPolicy,
    updateOntapVolumeConfiguration_securityStyle,
    updateOntapVolumeConfiguration_junctionPath,
    updateOntapVolumeConfiguration_sizeInMegabytes,

    -- * UpdateOpenZFSVolumeConfiguration
    UpdateOpenZFSVolumeConfiguration (..),
    newUpdateOpenZFSVolumeConfiguration,
    updateOpenZFSVolumeConfiguration_recordSizeKiB,
    updateOpenZFSVolumeConfiguration_storageCapacityReservationGiB,
    updateOpenZFSVolumeConfiguration_storageCapacityQuotaGiB,
    updateOpenZFSVolumeConfiguration_readOnly,
    updateOpenZFSVolumeConfiguration_nfsExports,
    updateOpenZFSVolumeConfiguration_dataCompressionType,
    updateOpenZFSVolumeConfiguration_userAndGroupQuotas,

    -- * UpdateSvmActiveDirectoryConfiguration
    UpdateSvmActiveDirectoryConfiguration (..),
    newUpdateSvmActiveDirectoryConfiguration,
    updateSvmActiveDirectoryConfiguration_selfManagedActiveDirectoryConfiguration,

    -- * Volume
    Volume (..),
    newVolume,
    volume_tags,
    volume_name,
    volume_lifecycle,
    volume_administrativeActions,
    volume_openZFSConfiguration,
    volume_volumeType,
    volume_fileSystemId,
    volume_ontapConfiguration,
    volume_creationTime,
    volume_volumeId,
    volume_resourceARN,
    volume_lifecycleTransitionReason,

    -- * VolumeFilter
    VolumeFilter (..),
    newVolumeFilter,
    volumeFilter_name,
    volumeFilter_values,

    -- * WindowsAuditLogConfiguration
    WindowsAuditLogConfiguration (..),
    newWindowsAuditLogConfiguration,
    windowsAuditLogConfiguration_auditLogDestination,
    windowsAuditLogConfiguration_fileAccessAuditLogLevel,
    windowsAuditLogConfiguration_fileShareAccessAuditLogLevel,

    -- * WindowsAuditLogCreateConfiguration
    WindowsAuditLogCreateConfiguration (..),
    newWindowsAuditLogCreateConfiguration,
    windowsAuditLogCreateConfiguration_auditLogDestination,
    windowsAuditLogCreateConfiguration_fileAccessAuditLogLevel,
    windowsAuditLogCreateConfiguration_fileShareAccessAuditLogLevel,

    -- * WindowsFileSystemConfiguration
    WindowsFileSystemConfiguration (..),
    newWindowsFileSystemConfiguration,
    windowsFileSystemConfiguration_copyTagsToBackups,
    windowsFileSystemConfiguration_weeklyMaintenanceStartTime,
    windowsFileSystemConfiguration_throughputCapacity,
    windowsFileSystemConfiguration_automaticBackupRetentionDays,
    windowsFileSystemConfiguration_activeDirectoryId,
    windowsFileSystemConfiguration_aliases,
    windowsFileSystemConfiguration_maintenanceOperationsInProgress,
    windowsFileSystemConfiguration_deploymentType,
    windowsFileSystemConfiguration_remoteAdministrationEndpoint,
    windowsFileSystemConfiguration_preferredFileServerIp,
    windowsFileSystemConfiguration_dailyAutomaticBackupStartTime,
    windowsFileSystemConfiguration_selfManagedActiveDirectoryConfiguration,
    windowsFileSystemConfiguration_auditLogConfiguration,
    windowsFileSystemConfiguration_preferredSubnetId,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types.ActiveDirectoryBackupAttributes
import Amazonka.FSx.Types.AdministrativeAction
import Amazonka.FSx.Types.AdministrativeActionFailureDetails
import Amazonka.FSx.Types.AdministrativeActionType
import Amazonka.FSx.Types.Alias
import Amazonka.FSx.Types.AliasLifecycle
import Amazonka.FSx.Types.AutoExportPolicy
import Amazonka.FSx.Types.AutoImportPolicy
import Amazonka.FSx.Types.AutoImportPolicyType
import Amazonka.FSx.Types.Backup
import Amazonka.FSx.Types.BackupFailureDetails
import Amazonka.FSx.Types.BackupLifecycle
import Amazonka.FSx.Types.BackupType
import Amazonka.FSx.Types.CompletionReport
import Amazonka.FSx.Types.CreateFileCacheLustreConfiguration
import Amazonka.FSx.Types.CreateFileSystemLustreConfiguration
import Amazonka.FSx.Types.CreateFileSystemOntapConfiguration
import Amazonka.FSx.Types.CreateFileSystemOpenZFSConfiguration
import Amazonka.FSx.Types.CreateFileSystemWindowsConfiguration
import Amazonka.FSx.Types.CreateOntapVolumeConfiguration
import Amazonka.FSx.Types.CreateOpenZFSOriginSnapshotConfiguration
import Amazonka.FSx.Types.CreateOpenZFSVolumeConfiguration
import Amazonka.FSx.Types.CreateSvmActiveDirectoryConfiguration
import Amazonka.FSx.Types.DataCompressionType
import Amazonka.FSx.Types.DataRepositoryAssociation
import Amazonka.FSx.Types.DataRepositoryConfiguration
import Amazonka.FSx.Types.DataRepositoryFailureDetails
import Amazonka.FSx.Types.DataRepositoryLifecycle
import Amazonka.FSx.Types.DataRepositoryTask
import Amazonka.FSx.Types.DataRepositoryTaskFailureDetails
import Amazonka.FSx.Types.DataRepositoryTaskFilter
import Amazonka.FSx.Types.DataRepositoryTaskFilterName
import Amazonka.FSx.Types.DataRepositoryTaskLifecycle
import Amazonka.FSx.Types.DataRepositoryTaskStatus
import Amazonka.FSx.Types.DataRepositoryTaskType
import Amazonka.FSx.Types.DeleteFileSystemLustreConfiguration
import Amazonka.FSx.Types.DeleteFileSystemLustreResponse
import Amazonka.FSx.Types.DeleteFileSystemOpenZFSConfiguration
import Amazonka.FSx.Types.DeleteFileSystemOpenZFSOption
import Amazonka.FSx.Types.DeleteFileSystemOpenZFSResponse
import Amazonka.FSx.Types.DeleteFileSystemWindowsConfiguration
import Amazonka.FSx.Types.DeleteFileSystemWindowsResponse
import Amazonka.FSx.Types.DeleteOpenZFSVolumeOption
import Amazonka.FSx.Types.DeleteVolumeOntapConfiguration
import Amazonka.FSx.Types.DeleteVolumeOntapResponse
import Amazonka.FSx.Types.DeleteVolumeOpenZFSConfiguration
import Amazonka.FSx.Types.DiskIopsConfiguration
import Amazonka.FSx.Types.DiskIopsConfigurationMode
import Amazonka.FSx.Types.DriveCacheType
import Amazonka.FSx.Types.EventType
import Amazonka.FSx.Types.FileCache
import Amazonka.FSx.Types.FileCacheCreating
import Amazonka.FSx.Types.FileCacheDataRepositoryAssociation
import Amazonka.FSx.Types.FileCacheFailureDetails
import Amazonka.FSx.Types.FileCacheLifecycle
import Amazonka.FSx.Types.FileCacheLustreConfiguration
import Amazonka.FSx.Types.FileCacheLustreDeploymentType
import Amazonka.FSx.Types.FileCacheLustreMetadataConfiguration
import Amazonka.FSx.Types.FileCacheNFSConfiguration
import Amazonka.FSx.Types.FileCacheType
import Amazonka.FSx.Types.FileSystem
import Amazonka.FSx.Types.FileSystemEndpoint
import Amazonka.FSx.Types.FileSystemEndpoints
import Amazonka.FSx.Types.FileSystemFailureDetails
import Amazonka.FSx.Types.FileSystemLifecycle
import Amazonka.FSx.Types.FileSystemMaintenanceOperation
import Amazonka.FSx.Types.FileSystemType
import Amazonka.FSx.Types.Filter
import Amazonka.FSx.Types.FilterName
import Amazonka.FSx.Types.FlexCacheEndpointType
import Amazonka.FSx.Types.LifecycleTransitionReason
import Amazonka.FSx.Types.LustreAccessAuditLogLevel
import Amazonka.FSx.Types.LustreDeploymentType
import Amazonka.FSx.Types.LustreFileSystemConfiguration
import Amazonka.FSx.Types.LustreLogConfiguration
import Amazonka.FSx.Types.LustreLogCreateConfiguration
import Amazonka.FSx.Types.LustreRootSquashConfiguration
import Amazonka.FSx.Types.NFSDataRepositoryConfiguration
import Amazonka.FSx.Types.NfsVersion
import Amazonka.FSx.Types.OntapDeploymentType
import Amazonka.FSx.Types.OntapFileSystemConfiguration
import Amazonka.FSx.Types.OntapVolumeConfiguration
import Amazonka.FSx.Types.OntapVolumeType
import Amazonka.FSx.Types.OpenZFSClientConfiguration
import Amazonka.FSx.Types.OpenZFSCopyStrategy
import Amazonka.FSx.Types.OpenZFSCreateRootVolumeConfiguration
import Amazonka.FSx.Types.OpenZFSDataCompressionType
import Amazonka.FSx.Types.OpenZFSDeploymentType
import Amazonka.FSx.Types.OpenZFSFileSystemConfiguration
import Amazonka.FSx.Types.OpenZFSNfsExport
import Amazonka.FSx.Types.OpenZFSOriginSnapshotConfiguration
import Amazonka.FSx.Types.OpenZFSQuotaType
import Amazonka.FSx.Types.OpenZFSUserOrGroupQuota
import Amazonka.FSx.Types.OpenZFSVolumeConfiguration
import Amazonka.FSx.Types.ReportFormat
import Amazonka.FSx.Types.ReportScope
import Amazonka.FSx.Types.ResourceType
import Amazonka.FSx.Types.RestoreOpenZFSVolumeOption
import Amazonka.FSx.Types.S3DataRepositoryConfiguration
import Amazonka.FSx.Types.SecurityStyle
import Amazonka.FSx.Types.SelfManagedActiveDirectoryAttributes
import Amazonka.FSx.Types.SelfManagedActiveDirectoryConfiguration
import Amazonka.FSx.Types.SelfManagedActiveDirectoryConfigurationUpdates
import Amazonka.FSx.Types.Snapshot
import Amazonka.FSx.Types.SnapshotFilter
import Amazonka.FSx.Types.SnapshotFilterName
import Amazonka.FSx.Types.SnapshotLifecycle
import Amazonka.FSx.Types.Status
import Amazonka.FSx.Types.StorageType
import Amazonka.FSx.Types.StorageVirtualMachine
import Amazonka.FSx.Types.StorageVirtualMachineFilter
import Amazonka.FSx.Types.StorageVirtualMachineFilterName
import Amazonka.FSx.Types.StorageVirtualMachineLifecycle
import Amazonka.FSx.Types.StorageVirtualMachineRootVolumeSecurityStyle
import Amazonka.FSx.Types.StorageVirtualMachineSubtype
import Amazonka.FSx.Types.SvmActiveDirectoryConfiguration
import Amazonka.FSx.Types.SvmEndpoint
import Amazonka.FSx.Types.SvmEndpoints
import Amazonka.FSx.Types.Tag
import Amazonka.FSx.Types.TieringPolicy
import Amazonka.FSx.Types.TieringPolicyName
import Amazonka.FSx.Types.UpdateFileCacheLustreConfiguration
import Amazonka.FSx.Types.UpdateFileSystemLustreConfiguration
import Amazonka.FSx.Types.UpdateFileSystemOntapConfiguration
import Amazonka.FSx.Types.UpdateFileSystemOpenZFSConfiguration
import Amazonka.FSx.Types.UpdateFileSystemWindowsConfiguration
import Amazonka.FSx.Types.UpdateOntapVolumeConfiguration
import Amazonka.FSx.Types.UpdateOpenZFSVolumeConfiguration
import Amazonka.FSx.Types.UpdateSvmActiveDirectoryConfiguration
import Amazonka.FSx.Types.Volume
import Amazonka.FSx.Types.VolumeFilter
import Amazonka.FSx.Types.VolumeFilterName
import Amazonka.FSx.Types.VolumeLifecycle
import Amazonka.FSx.Types.VolumeType
import Amazonka.FSx.Types.WindowsAccessAuditLogLevel
import Amazonka.FSx.Types.WindowsAuditLogConfiguration
import Amazonka.FSx.Types.WindowsAuditLogCreateConfiguration
import Amazonka.FSx.Types.WindowsDeploymentType
import Amazonka.FSx.Types.WindowsFileSystemConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-03-01@ of the Amazon FSx SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "FSx",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "fsx",
      Core._serviceSigningName = "fsx",
      Core._serviceVersion = "2018-03-01",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "FSx",
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

-- | No Amazon FSx volumes were found based upon the supplied parameters.
_VolumeNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_VolumeNotFound =
  Core._MatchServiceError
    defaultService
    "VolumeNotFound"

-- | A volume configuration is required for this operation.
_MissingVolumeConfiguration :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MissingVolumeConfiguration =
  Core._MatchServiceError
    defaultService
    "MissingVolumeConfiguration"

-- | The resource specified by the Amazon Resource Name (ARN) can\'t be
-- found.
_ResourceNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFound =
  Core._MatchServiceError
    defaultService
    "ResourceNotFound"

-- | An error indicating that a particular service limit was exceeded. You
-- can increase some service limits by contacting Amazon Web Services
-- Support.
_ServiceLimitExceeded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceLimitExceeded =
  Core._MatchServiceError
    defaultService
    "ServiceLimitExceeded"

-- | No Amazon FSx snapshots were found based on the supplied parameters.
_SnapshotNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SnapshotNotFound =
  Core._MatchServiceError
    defaultService
    "SnapshotNotFound"

-- | No data repository associations were found based upon the supplied
-- parameters.
_DataRepositoryAssociationNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DataRepositoryAssociationNotFound =
  Core._MatchServiceError
    defaultService
    "DataRepositoryAssociationNotFound"

-- | The resource specified does not support tagging.
_ResourceDoesNotSupportTagging :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceDoesNotSupportTagging =
  Core._MatchServiceError
    defaultService
    "ResourceDoesNotSupportTagging"

-- | One or more network settings specified in the request are invalid.
_InvalidNetworkSettings :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNetworkSettings =
  Core._MatchServiceError
    defaultService
    "InvalidNetworkSettings"

-- | Another backup is already under way. Wait for completion before
-- initiating additional backups of this file system.
_BackupInProgress :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BackupInProgress =
  Core._MatchServiceError
    defaultService
    "BackupInProgress"

-- | Amazon FSx doesn\'t support Multi-AZ Windows File Server copy backup in
-- the destination Region, so the copied backup can\'t be restored.
_IncompatibleRegionForMultiAZ :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncompatibleRegionForMultiAZ =
  Core._MatchServiceError
    defaultService
    "IncompatibleRegionForMultiAZ"

-- | A generic error indicating a failure with a client request.
_BadRequest :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequest =
  Core._MatchServiceError defaultService "BadRequest"

-- | The error returned when a second request is received with the same
-- client request token but different parameters settings. A client request
-- token should always uniquely identify a single request.
_IncompatibleParameterError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncompatibleParameterError =
  Core._MatchServiceError
    defaultService
    "IncompatibleParameterError"

-- | No Amazon FSx file systems were found based upon supplied parameters.
_FileSystemNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FileSystemNotFound =
  Core._MatchServiceError
    defaultService
    "FileSystemNotFound"

-- | The path provided for data repository export isn\'t valid.
_InvalidExportPath :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidExportPath =
  Core._MatchServiceError
    defaultService
    "InvalidExportPath"

-- | You can\'t delete a backup while it\'s being used to restore a file
-- system.
_BackupRestoring :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BackupRestoring =
  Core._MatchServiceError
    defaultService
    "BackupRestoring"

-- | An invalid value for @PerUnitStorageThroughput@ was provided. Please
-- create your file system again, using a valid value.
_InvalidPerUnitStorageThroughput :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidPerUnitStorageThroughput =
  Core._MatchServiceError
    defaultService
    "InvalidPerUnitStorageThroughput"

-- | A generic error indicating a server-side failure.
_InternalServerError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerError =
  Core._MatchServiceError
    defaultService
    "InternalServerError"

-- | You have filtered the response to a data repository type that is not
-- supported.
_InvalidDataRepositoryType :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidDataRepositoryType =
  Core._MatchServiceError
    defaultService
    "InvalidDataRepositoryType"

-- | An Active Directory error.
_ActiveDirectoryError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ActiveDirectoryError =
  Core._MatchServiceError
    defaultService
    "ActiveDirectoryError"

-- | The Key Management Service (KMS) key of the destination backup is not
-- valid.
_InvalidDestinationKmsKey :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidDestinationKmsKey =
  Core._MatchServiceError
    defaultService
    "InvalidDestinationKmsKey"

-- | The resource specified for the tagging operation is not a resource type
-- owned by Amazon FSx. Use the API of the relevant service to perform the
-- operation.
_NotServiceResourceError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotServiceResourceError =
  Core._MatchServiceError
    defaultService
    "NotServiceResourceError"

-- | A cache configuration is required for this operation.
_MissingFileCacheConfiguration :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MissingFileCacheConfiguration =
  Core._MatchServiceError
    defaultService
    "MissingFileCacheConfiguration"

-- | No FSx for ONTAP SVMs were found based upon the supplied parameters.
_StorageVirtualMachineNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_StorageVirtualMachineNotFound =
  Core._MatchServiceError
    defaultService
    "StorageVirtualMachineNotFound"

-- | The data repository task or tasks you specified could not be found.
_DataRepositoryTaskNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DataRepositoryTaskNotFound =
  Core._MatchServiceError
    defaultService
    "DataRepositoryTaskNotFound"

-- | No caches were found based upon supplied parameters.
_FileCacheNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FileCacheNotFound =
  Core._MatchServiceError
    defaultService
    "FileCacheNotFound"

-- | The path provided for data repository import isn\'t valid.
_InvalidImportPath :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidImportPath =
  Core._MatchServiceError
    defaultService
    "InvalidImportPath"

-- | No Amazon FSx backups were found based upon the supplied parameters.
_BackupNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BackupNotFound =
  Core._MatchServiceError
    defaultService
    "BackupNotFound"

-- | The data repository task could not be canceled because the task has
-- already ended.
_DataRepositoryTaskEnded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DataRepositoryTaskEnded =
  Core._MatchServiceError
    defaultService
    "DataRepositoryTaskEnded"

-- | The requested operation is not supported for this resource or API.
_UnsupportedOperation :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedOperation =
  Core._MatchServiceError
    defaultService
    "UnsupportedOperation"

-- | An existing data repository task is currently executing on the file
-- system. Wait until the existing task has completed, then create the new
-- task.
_DataRepositoryTaskExecuting :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DataRepositoryTaskExecuting =
  Core._MatchServiceError
    defaultService
    "DataRepositoryTaskExecuting"

-- | The request was rejected because the lifecycle status of the source
-- backup isn\'t @AVAILABLE@.
_SourceBackupUnavailable :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SourceBackupUnavailable =
  Core._MatchServiceError
    defaultService
    "SourceBackupUnavailable"

-- | A file system configuration is required for this operation.
_MissingFileSystemConfiguration :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MissingFileSystemConfiguration =
  Core._MatchServiceError
    defaultService
    "MissingFileSystemConfiguration"

-- | The Region provided for @SourceRegion@ is not valid or is in a different
-- Amazon Web Services partition.
_InvalidRegion :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRegion =
  Core._MatchServiceError
    defaultService
    "InvalidRegion"

-- | You can\'t delete a backup while it\'s being copied.
_BackupBeingCopied :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BackupBeingCopied =
  Core._MatchServiceError
    defaultService
    "BackupBeingCopied"

-- | The Key Management Service (KMS) key of the source backup is not valid.
_InvalidSourceKmsKey :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSourceKmsKey =
  Core._MatchServiceError
    defaultService
    "InvalidSourceKmsKey"

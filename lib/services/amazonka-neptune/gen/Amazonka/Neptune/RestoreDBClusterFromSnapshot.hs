{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Neptune.RestoreDBClusterFromSnapshot
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
--
-- If a DB snapshot is specified, the target DB cluster is created from the
-- source DB snapshot with a default configuration and default security
-- group.
--
-- If a DB cluster snapshot is specified, the target DB cluster is created
-- from the source DB cluster restore point with the same configuration as
-- the original source DB cluster, except that the new DB cluster is
-- created with the default security group.
module Amazonka.Neptune.RestoreDBClusterFromSnapshot
  ( -- * Creating a Request
    RestoreDBClusterFromSnapshot (..),
    newRestoreDBClusterFromSnapshot,

    -- * Request Lenses
    restoreDBClusterFromSnapshot_tags,
    restoreDBClusterFromSnapshot_port,
    restoreDBClusterFromSnapshot_serverlessV2ScalingConfiguration,
    restoreDBClusterFromSnapshot_vpcSecurityGroupIds,
    restoreDBClusterFromSnapshot_copyTagsToSnapshot,
    restoreDBClusterFromSnapshot_dbSubnetGroupName,
    restoreDBClusterFromSnapshot_databaseName,
    restoreDBClusterFromSnapshot_optionGroupName,
    restoreDBClusterFromSnapshot_availabilityZones,
    restoreDBClusterFromSnapshot_enableIAMDatabaseAuthentication,
    restoreDBClusterFromSnapshot_enableCloudwatchLogsExports,
    restoreDBClusterFromSnapshot_kmsKeyId,
    restoreDBClusterFromSnapshot_deletionProtection,
    restoreDBClusterFromSnapshot_dbClusterParameterGroupName,
    restoreDBClusterFromSnapshot_engineVersion,
    restoreDBClusterFromSnapshot_dbClusterIdentifier,
    restoreDBClusterFromSnapshot_snapshotIdentifier,
    restoreDBClusterFromSnapshot_engine,

    -- * Destructuring the Response
    RestoreDBClusterFromSnapshotResponse (..),
    newRestoreDBClusterFromSnapshotResponse,

    -- * Response Lenses
    restoreDBClusterFromSnapshotResponse_dbCluster,
    restoreDBClusterFromSnapshotResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Neptune.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRestoreDBClusterFromSnapshot' smart constructor.
data RestoreDBClusterFromSnapshot = RestoreDBClusterFromSnapshot'
  { -- | The tags to be assigned to the restored DB cluster.
    tags :: Prelude.Maybe [Tag],
    -- | The port number on which the new DB cluster accepts connections.
    --
    -- Constraints: Value must be @1150-65535@
    --
    -- Default: The same port as the original DB cluster.
    port :: Prelude.Maybe Prelude.Int,
    serverlessV2ScalingConfiguration :: Prelude.Maybe ServerlessV2ScalingConfiguration,
    -- | A list of VPC security groups that the new DB cluster will belong to.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | /If set to @true@, tags are copied to any snapshot of the restored DB
    -- cluster that is created./
    copyTagsToSnapshot :: Prelude.Maybe Prelude.Bool,
    -- | The name of the DB subnet group to use for the new DB cluster.
    --
    -- Constraints: If supplied, must match the name of an existing
    -- DBSubnetGroup.
    --
    -- Example: @mySubnetgroup@
    dbSubnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | Not supported.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | /(Not supported by Neptune)/
    optionGroupName :: Prelude.Maybe Prelude.Text,
    -- | Provides the list of EC2 Availability Zones that instances in the
    -- restored DB cluster can be created in.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | True to enable mapping of Amazon Identity and Access Management (IAM)
    -- accounts to database accounts, and otherwise false.
    --
    -- Default: @false@
    enableIAMDatabaseAuthentication :: Prelude.Maybe Prelude.Bool,
    -- | The list of logs that the restored DB cluster is to export to Amazon
    -- CloudWatch Logs.
    enableCloudwatchLogsExports :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon KMS key identifier to use when restoring an encrypted DB
    -- cluster from a DB snapshot or DB cluster snapshot.
    --
    -- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    -- encryption key. If you are restoring a DB cluster with the same Amazon
    -- account that owns the KMS encryption key used to encrypt the new DB
    -- cluster, then you can use the KMS key alias instead of the ARN for the
    -- KMS encryption key.
    --
    -- If you do not specify a value for the @KmsKeyId@ parameter, then the
    -- following will occur:
    --
    -- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
    --     encrypted, then the restored DB cluster is encrypted using the KMS
    --     key that was used to encrypt the DB snapshot or DB cluster snapshot.
    --
    -- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
    --     not encrypted, then the restored DB cluster is not encrypted.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether the DB cluster has deletion protection
    -- enabled. The database can\'t be deleted when deletion protection is
    -- enabled. By default, deletion protection is disabled.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | The name of the DB cluster parameter group to associate with the new DB
    -- cluster.
    --
    -- Constraints:
    --
    -- -   If supplied, must match the name of an existing
    --     DBClusterParameterGroup.
    dbClusterParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The version of the database engine to use for the new DB cluster.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB cluster to create from the DB snapshot or DB cluster
    -- snapshot. This parameter isn\'t case-sensitive.
    --
    -- Constraints:
    --
    -- -   Must contain from 1 to 63 letters, numbers, or hyphens
    --
    -- -   First character must be a letter
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens
    --
    -- Example: @my-snapshot-id@
    dbClusterIdentifier :: Prelude.Text,
    -- | The identifier for the DB snapshot or DB cluster snapshot to restore
    -- from.
    --
    -- You can use either the name or the Amazon Resource Name (ARN) to specify
    -- a DB cluster snapshot. However, you can use only the ARN to specify a DB
    -- snapshot.
    --
    -- Constraints:
    --
    -- -   Must match the identifier of an existing Snapshot.
    snapshotIdentifier :: Prelude.Text,
    -- | The database engine to use for the new DB cluster.
    --
    -- Default: The same as source
    --
    -- Constraint: Must be compatible with the engine of the source
    engine :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreDBClusterFromSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'restoreDBClusterFromSnapshot_tags' - The tags to be assigned to the restored DB cluster.
--
-- 'port', 'restoreDBClusterFromSnapshot_port' - The port number on which the new DB cluster accepts connections.
--
-- Constraints: Value must be @1150-65535@
--
-- Default: The same port as the original DB cluster.
--
-- 'serverlessV2ScalingConfiguration', 'restoreDBClusterFromSnapshot_serverlessV2ScalingConfiguration' - Undocumented member.
--
-- 'vpcSecurityGroupIds', 'restoreDBClusterFromSnapshot_vpcSecurityGroupIds' - A list of VPC security groups that the new DB cluster will belong to.
--
-- 'copyTagsToSnapshot', 'restoreDBClusterFromSnapshot_copyTagsToSnapshot' - /If set to @true@, tags are copied to any snapshot of the restored DB
-- cluster that is created./
--
-- 'dbSubnetGroupName', 'restoreDBClusterFromSnapshot_dbSubnetGroupName' - The name of the DB subnet group to use for the new DB cluster.
--
-- Constraints: If supplied, must match the name of an existing
-- DBSubnetGroup.
--
-- Example: @mySubnetgroup@
--
-- 'databaseName', 'restoreDBClusterFromSnapshot_databaseName' - Not supported.
--
-- 'optionGroupName', 'restoreDBClusterFromSnapshot_optionGroupName' - /(Not supported by Neptune)/
--
-- 'availabilityZones', 'restoreDBClusterFromSnapshot_availabilityZones' - Provides the list of EC2 Availability Zones that instances in the
-- restored DB cluster can be created in.
--
-- 'enableIAMDatabaseAuthentication', 'restoreDBClusterFromSnapshot_enableIAMDatabaseAuthentication' - True to enable mapping of Amazon Identity and Access Management (IAM)
-- accounts to database accounts, and otherwise false.
--
-- Default: @false@
--
-- 'enableCloudwatchLogsExports', 'restoreDBClusterFromSnapshot_enableCloudwatchLogsExports' - The list of logs that the restored DB cluster is to export to Amazon
-- CloudWatch Logs.
--
-- 'kmsKeyId', 'restoreDBClusterFromSnapshot_kmsKeyId' - The Amazon KMS key identifier to use when restoring an encrypted DB
-- cluster from a DB snapshot or DB cluster snapshot.
--
-- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
-- encryption key. If you are restoring a DB cluster with the same Amazon
-- account that owns the KMS encryption key used to encrypt the new DB
-- cluster, then you can use the KMS key alias instead of the ARN for the
-- KMS encryption key.
--
-- If you do not specify a value for the @KmsKeyId@ parameter, then the
-- following will occur:
--
-- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
--     encrypted, then the restored DB cluster is encrypted using the KMS
--     key that was used to encrypt the DB snapshot or DB cluster snapshot.
--
-- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
--     not encrypted, then the restored DB cluster is not encrypted.
--
-- 'deletionProtection', 'restoreDBClusterFromSnapshot_deletionProtection' - A value that indicates whether the DB cluster has deletion protection
-- enabled. The database can\'t be deleted when deletion protection is
-- enabled. By default, deletion protection is disabled.
--
-- 'dbClusterParameterGroupName', 'restoreDBClusterFromSnapshot_dbClusterParameterGroupName' - The name of the DB cluster parameter group to associate with the new DB
-- cluster.
--
-- Constraints:
--
-- -   If supplied, must match the name of an existing
--     DBClusterParameterGroup.
--
-- 'engineVersion', 'restoreDBClusterFromSnapshot_engineVersion' - The version of the database engine to use for the new DB cluster.
--
-- 'dbClusterIdentifier', 'restoreDBClusterFromSnapshot_dbClusterIdentifier' - The name of the DB cluster to create from the DB snapshot or DB cluster
-- snapshot. This parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens
--
-- -   First character must be a letter
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens
--
-- Example: @my-snapshot-id@
--
-- 'snapshotIdentifier', 'restoreDBClusterFromSnapshot_snapshotIdentifier' - The identifier for the DB snapshot or DB cluster snapshot to restore
-- from.
--
-- You can use either the name or the Amazon Resource Name (ARN) to specify
-- a DB cluster snapshot. However, you can use only the ARN to specify a DB
-- snapshot.
--
-- Constraints:
--
-- -   Must match the identifier of an existing Snapshot.
--
-- 'engine', 'restoreDBClusterFromSnapshot_engine' - The database engine to use for the new DB cluster.
--
-- Default: The same as source
--
-- Constraint: Must be compatible with the engine of the source
newRestoreDBClusterFromSnapshot ::
  -- | 'dbClusterIdentifier'
  Prelude.Text ->
  -- | 'snapshotIdentifier'
  Prelude.Text ->
  -- | 'engine'
  Prelude.Text ->
  RestoreDBClusterFromSnapshot
newRestoreDBClusterFromSnapshot
  pDBClusterIdentifier_
  pSnapshotIdentifier_
  pEngine_ =
    RestoreDBClusterFromSnapshot'
      { tags =
          Prelude.Nothing,
        port = Prelude.Nothing,
        serverlessV2ScalingConfiguration =
          Prelude.Nothing,
        vpcSecurityGroupIds = Prelude.Nothing,
        copyTagsToSnapshot = Prelude.Nothing,
        dbSubnetGroupName = Prelude.Nothing,
        databaseName = Prelude.Nothing,
        optionGroupName = Prelude.Nothing,
        availabilityZones = Prelude.Nothing,
        enableIAMDatabaseAuthentication =
          Prelude.Nothing,
        enableCloudwatchLogsExports = Prelude.Nothing,
        kmsKeyId = Prelude.Nothing,
        deletionProtection = Prelude.Nothing,
        dbClusterParameterGroupName = Prelude.Nothing,
        engineVersion = Prelude.Nothing,
        dbClusterIdentifier = pDBClusterIdentifier_,
        snapshotIdentifier = pSnapshotIdentifier_,
        engine = pEngine_
      }

-- | The tags to be assigned to the restored DB cluster.
restoreDBClusterFromSnapshot_tags :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe [Tag])
restoreDBClusterFromSnapshot_tags = Lens.lens (\RestoreDBClusterFromSnapshot' {tags} -> tags) (\s@RestoreDBClusterFromSnapshot' {} a -> s {tags = a} :: RestoreDBClusterFromSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | The port number on which the new DB cluster accepts connections.
--
-- Constraints: Value must be @1150-65535@
--
-- Default: The same port as the original DB cluster.
restoreDBClusterFromSnapshot_port :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Int)
restoreDBClusterFromSnapshot_port = Lens.lens (\RestoreDBClusterFromSnapshot' {port} -> port) (\s@RestoreDBClusterFromSnapshot' {} a -> s {port = a} :: RestoreDBClusterFromSnapshot)

-- | Undocumented member.
restoreDBClusterFromSnapshot_serverlessV2ScalingConfiguration :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe ServerlessV2ScalingConfiguration)
restoreDBClusterFromSnapshot_serverlessV2ScalingConfiguration = Lens.lens (\RestoreDBClusterFromSnapshot' {serverlessV2ScalingConfiguration} -> serverlessV2ScalingConfiguration) (\s@RestoreDBClusterFromSnapshot' {} a -> s {serverlessV2ScalingConfiguration = a} :: RestoreDBClusterFromSnapshot)

-- | A list of VPC security groups that the new DB cluster will belong to.
restoreDBClusterFromSnapshot_vpcSecurityGroupIds :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe [Prelude.Text])
restoreDBClusterFromSnapshot_vpcSecurityGroupIds = Lens.lens (\RestoreDBClusterFromSnapshot' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@RestoreDBClusterFromSnapshot' {} a -> s {vpcSecurityGroupIds = a} :: RestoreDBClusterFromSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | /If set to @true@, tags are copied to any snapshot of the restored DB
-- cluster that is created./
restoreDBClusterFromSnapshot_copyTagsToSnapshot :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Bool)
restoreDBClusterFromSnapshot_copyTagsToSnapshot = Lens.lens (\RestoreDBClusterFromSnapshot' {copyTagsToSnapshot} -> copyTagsToSnapshot) (\s@RestoreDBClusterFromSnapshot' {} a -> s {copyTagsToSnapshot = a} :: RestoreDBClusterFromSnapshot)

-- | The name of the DB subnet group to use for the new DB cluster.
--
-- Constraints: If supplied, must match the name of an existing
-- DBSubnetGroup.
--
-- Example: @mySubnetgroup@
restoreDBClusterFromSnapshot_dbSubnetGroupName :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_dbSubnetGroupName = Lens.lens (\RestoreDBClusterFromSnapshot' {dbSubnetGroupName} -> dbSubnetGroupName) (\s@RestoreDBClusterFromSnapshot' {} a -> s {dbSubnetGroupName = a} :: RestoreDBClusterFromSnapshot)

-- | Not supported.
restoreDBClusterFromSnapshot_databaseName :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_databaseName = Lens.lens (\RestoreDBClusterFromSnapshot' {databaseName} -> databaseName) (\s@RestoreDBClusterFromSnapshot' {} a -> s {databaseName = a} :: RestoreDBClusterFromSnapshot)

-- | /(Not supported by Neptune)/
restoreDBClusterFromSnapshot_optionGroupName :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_optionGroupName = Lens.lens (\RestoreDBClusterFromSnapshot' {optionGroupName} -> optionGroupName) (\s@RestoreDBClusterFromSnapshot' {} a -> s {optionGroupName = a} :: RestoreDBClusterFromSnapshot)

-- | Provides the list of EC2 Availability Zones that instances in the
-- restored DB cluster can be created in.
restoreDBClusterFromSnapshot_availabilityZones :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe [Prelude.Text])
restoreDBClusterFromSnapshot_availabilityZones = Lens.lens (\RestoreDBClusterFromSnapshot' {availabilityZones} -> availabilityZones) (\s@RestoreDBClusterFromSnapshot' {} a -> s {availabilityZones = a} :: RestoreDBClusterFromSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | True to enable mapping of Amazon Identity and Access Management (IAM)
-- accounts to database accounts, and otherwise false.
--
-- Default: @false@
restoreDBClusterFromSnapshot_enableIAMDatabaseAuthentication :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Bool)
restoreDBClusterFromSnapshot_enableIAMDatabaseAuthentication = Lens.lens (\RestoreDBClusterFromSnapshot' {enableIAMDatabaseAuthentication} -> enableIAMDatabaseAuthentication) (\s@RestoreDBClusterFromSnapshot' {} a -> s {enableIAMDatabaseAuthentication = a} :: RestoreDBClusterFromSnapshot)

-- | The list of logs that the restored DB cluster is to export to Amazon
-- CloudWatch Logs.
restoreDBClusterFromSnapshot_enableCloudwatchLogsExports :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe [Prelude.Text])
restoreDBClusterFromSnapshot_enableCloudwatchLogsExports = Lens.lens (\RestoreDBClusterFromSnapshot' {enableCloudwatchLogsExports} -> enableCloudwatchLogsExports) (\s@RestoreDBClusterFromSnapshot' {} a -> s {enableCloudwatchLogsExports = a} :: RestoreDBClusterFromSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon KMS key identifier to use when restoring an encrypted DB
-- cluster from a DB snapshot or DB cluster snapshot.
--
-- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
-- encryption key. If you are restoring a DB cluster with the same Amazon
-- account that owns the KMS encryption key used to encrypt the new DB
-- cluster, then you can use the KMS key alias instead of the ARN for the
-- KMS encryption key.
--
-- If you do not specify a value for the @KmsKeyId@ parameter, then the
-- following will occur:
--
-- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
--     encrypted, then the restored DB cluster is encrypted using the KMS
--     key that was used to encrypt the DB snapshot or DB cluster snapshot.
--
-- -   If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is
--     not encrypted, then the restored DB cluster is not encrypted.
restoreDBClusterFromSnapshot_kmsKeyId :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_kmsKeyId = Lens.lens (\RestoreDBClusterFromSnapshot' {kmsKeyId} -> kmsKeyId) (\s@RestoreDBClusterFromSnapshot' {} a -> s {kmsKeyId = a} :: RestoreDBClusterFromSnapshot)

-- | A value that indicates whether the DB cluster has deletion protection
-- enabled. The database can\'t be deleted when deletion protection is
-- enabled. By default, deletion protection is disabled.
restoreDBClusterFromSnapshot_deletionProtection :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Bool)
restoreDBClusterFromSnapshot_deletionProtection = Lens.lens (\RestoreDBClusterFromSnapshot' {deletionProtection} -> deletionProtection) (\s@RestoreDBClusterFromSnapshot' {} a -> s {deletionProtection = a} :: RestoreDBClusterFromSnapshot)

-- | The name of the DB cluster parameter group to associate with the new DB
-- cluster.
--
-- Constraints:
--
-- -   If supplied, must match the name of an existing
--     DBClusterParameterGroup.
restoreDBClusterFromSnapshot_dbClusterParameterGroupName :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_dbClusterParameterGroupName = Lens.lens (\RestoreDBClusterFromSnapshot' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@RestoreDBClusterFromSnapshot' {} a -> s {dbClusterParameterGroupName = a} :: RestoreDBClusterFromSnapshot)

-- | The version of the database engine to use for the new DB cluster.
restoreDBClusterFromSnapshot_engineVersion :: Lens.Lens' RestoreDBClusterFromSnapshot (Prelude.Maybe Prelude.Text)
restoreDBClusterFromSnapshot_engineVersion = Lens.lens (\RestoreDBClusterFromSnapshot' {engineVersion} -> engineVersion) (\s@RestoreDBClusterFromSnapshot' {} a -> s {engineVersion = a} :: RestoreDBClusterFromSnapshot)

-- | The name of the DB cluster to create from the DB snapshot or DB cluster
-- snapshot. This parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens
--
-- -   First character must be a letter
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens
--
-- Example: @my-snapshot-id@
restoreDBClusterFromSnapshot_dbClusterIdentifier :: Lens.Lens' RestoreDBClusterFromSnapshot Prelude.Text
restoreDBClusterFromSnapshot_dbClusterIdentifier = Lens.lens (\RestoreDBClusterFromSnapshot' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@RestoreDBClusterFromSnapshot' {} a -> s {dbClusterIdentifier = a} :: RestoreDBClusterFromSnapshot)

-- | The identifier for the DB snapshot or DB cluster snapshot to restore
-- from.
--
-- You can use either the name or the Amazon Resource Name (ARN) to specify
-- a DB cluster snapshot. However, you can use only the ARN to specify a DB
-- snapshot.
--
-- Constraints:
--
-- -   Must match the identifier of an existing Snapshot.
restoreDBClusterFromSnapshot_snapshotIdentifier :: Lens.Lens' RestoreDBClusterFromSnapshot Prelude.Text
restoreDBClusterFromSnapshot_snapshotIdentifier = Lens.lens (\RestoreDBClusterFromSnapshot' {snapshotIdentifier} -> snapshotIdentifier) (\s@RestoreDBClusterFromSnapshot' {} a -> s {snapshotIdentifier = a} :: RestoreDBClusterFromSnapshot)

-- | The database engine to use for the new DB cluster.
--
-- Default: The same as source
--
-- Constraint: Must be compatible with the engine of the source
restoreDBClusterFromSnapshot_engine :: Lens.Lens' RestoreDBClusterFromSnapshot Prelude.Text
restoreDBClusterFromSnapshot_engine = Lens.lens (\RestoreDBClusterFromSnapshot' {engine} -> engine) (\s@RestoreDBClusterFromSnapshot' {} a -> s {engine = a} :: RestoreDBClusterFromSnapshot)

instance Core.AWSRequest RestoreDBClusterFromSnapshot where
  type
    AWSResponse RestoreDBClusterFromSnapshot =
      RestoreDBClusterFromSnapshotResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "RestoreDBClusterFromSnapshotResult"
      ( \s h x ->
          RestoreDBClusterFromSnapshotResponse'
            Prelude.<$> (x Core..@? "DBCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    RestoreDBClusterFromSnapshot
  where
  hashWithSalt _salt RestoreDBClusterFromSnapshot' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` serverlessV2ScalingConfiguration
      `Prelude.hashWithSalt` vpcSecurityGroupIds
      `Prelude.hashWithSalt` copyTagsToSnapshot
      `Prelude.hashWithSalt` dbSubnetGroupName
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` optionGroupName
      `Prelude.hashWithSalt` availabilityZones
      `Prelude.hashWithSalt` enableIAMDatabaseAuthentication
      `Prelude.hashWithSalt` enableCloudwatchLogsExports
      `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` deletionProtection
      `Prelude.hashWithSalt` dbClusterParameterGroupName
      `Prelude.hashWithSalt` engineVersion
      `Prelude.hashWithSalt` dbClusterIdentifier
      `Prelude.hashWithSalt` snapshotIdentifier
      `Prelude.hashWithSalt` engine

instance Prelude.NFData RestoreDBClusterFromSnapshot where
  rnf RestoreDBClusterFromSnapshot' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf port
      `Prelude.seq` Prelude.rnf serverlessV2ScalingConfiguration
      `Prelude.seq` Prelude.rnf vpcSecurityGroupIds
      `Prelude.seq` Prelude.rnf copyTagsToSnapshot
      `Prelude.seq` Prelude.rnf dbSubnetGroupName
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf optionGroupName
      `Prelude.seq` Prelude.rnf availabilityZones
      `Prelude.seq` Prelude.rnf enableIAMDatabaseAuthentication
      `Prelude.seq` Prelude.rnf enableCloudwatchLogsExports
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf deletionProtection
      `Prelude.seq` Prelude.rnf dbClusterParameterGroupName
      `Prelude.seq` Prelude.rnf engineVersion
      `Prelude.seq` Prelude.rnf dbClusterIdentifier
      `Prelude.seq` Prelude.rnf snapshotIdentifier
      `Prelude.seq` Prelude.rnf engine

instance Core.ToHeaders RestoreDBClusterFromSnapshot where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath RestoreDBClusterFromSnapshot where
  toPath = Prelude.const "/"

instance Core.ToQuery RestoreDBClusterFromSnapshot where
  toQuery RestoreDBClusterFromSnapshot' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "RestoreDBClusterFromSnapshot" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "Port" Core.=: port,
        "ServerlessV2ScalingConfiguration"
          Core.=: serverlessV2ScalingConfiguration,
        "VpcSecurityGroupIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupIds
            ),
        "CopyTagsToSnapshot" Core.=: copyTagsToSnapshot,
        "DBSubnetGroupName" Core.=: dbSubnetGroupName,
        "DatabaseName" Core.=: databaseName,
        "OptionGroupName" Core.=: optionGroupName,
        "AvailabilityZones"
          Core.=: Core.toQuery
            ( Core.toQueryList "AvailabilityZone"
                Prelude.<$> availabilityZones
            ),
        "EnableIAMDatabaseAuthentication"
          Core.=: enableIAMDatabaseAuthentication,
        "EnableCloudwatchLogsExports"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> enableCloudwatchLogsExports
            ),
        "KmsKeyId" Core.=: kmsKeyId,
        "DeletionProtection" Core.=: deletionProtection,
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName,
        "EngineVersion" Core.=: engineVersion,
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "SnapshotIdentifier" Core.=: snapshotIdentifier,
        "Engine" Core.=: engine
      ]

-- | /See:/ 'newRestoreDBClusterFromSnapshotResponse' smart constructor.
data RestoreDBClusterFromSnapshotResponse = RestoreDBClusterFromSnapshotResponse'
  { dbCluster :: Prelude.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreDBClusterFromSnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbCluster', 'restoreDBClusterFromSnapshotResponse_dbCluster' - Undocumented member.
--
-- 'httpStatus', 'restoreDBClusterFromSnapshotResponse_httpStatus' - The response's http status code.
newRestoreDBClusterFromSnapshotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RestoreDBClusterFromSnapshotResponse
newRestoreDBClusterFromSnapshotResponse pHttpStatus_ =
  RestoreDBClusterFromSnapshotResponse'
    { dbCluster =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
restoreDBClusterFromSnapshotResponse_dbCluster :: Lens.Lens' RestoreDBClusterFromSnapshotResponse (Prelude.Maybe DBCluster)
restoreDBClusterFromSnapshotResponse_dbCluster = Lens.lens (\RestoreDBClusterFromSnapshotResponse' {dbCluster} -> dbCluster) (\s@RestoreDBClusterFromSnapshotResponse' {} a -> s {dbCluster = a} :: RestoreDBClusterFromSnapshotResponse)

-- | The response's http status code.
restoreDBClusterFromSnapshotResponse_httpStatus :: Lens.Lens' RestoreDBClusterFromSnapshotResponse Prelude.Int
restoreDBClusterFromSnapshotResponse_httpStatus = Lens.lens (\RestoreDBClusterFromSnapshotResponse' {httpStatus} -> httpStatus) (\s@RestoreDBClusterFromSnapshotResponse' {} a -> s {httpStatus = a} :: RestoreDBClusterFromSnapshotResponse)

instance
  Prelude.NFData
    RestoreDBClusterFromSnapshotResponse
  where
  rnf RestoreDBClusterFromSnapshotResponse' {..} =
    Prelude.rnf dbCluster
      `Prelude.seq` Prelude.rnf httpStatus

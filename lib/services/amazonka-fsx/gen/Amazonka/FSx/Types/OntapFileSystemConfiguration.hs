{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.FSx.Types.OntapFileSystemConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.OntapFileSystemConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types.DiskIopsConfiguration
import Amazonka.FSx.Types.FileSystemEndpoints
import Amazonka.FSx.Types.OntapDeploymentType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configuration for the FSx for NetApp ONTAP file system.
--
-- /See:/ 'newOntapFileSystemConfiguration' smart constructor.
data OntapFileSystemConfiguration = OntapFileSystemConfiguration'
  { weeklyMaintenanceStartTime :: Prelude.Maybe Prelude.Text,
    throughputCapacity :: Prelude.Maybe Prelude.Natural,
    automaticBackupRetentionDays :: Prelude.Maybe Prelude.Natural,
    -- | (Multi-AZ only) The VPC route tables in which your file system\'s
    -- endpoints are created.
    routeTableIds :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the FSx for ONTAP file system deployment type in use in the
    -- file system.
    --
    -- -   @MULTI_AZ_1@ - (Default) A high availability file system configured
    --     for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
    --     unavailability.
    --
    -- -   @SINGLE_AZ_1@ - A file system configured for Single-AZ redundancy.
    --
    -- For information about the use cases for Multi-AZ and Single-AZ
    -- deployments, refer to
    -- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html Choosing Multi-AZ or Single-AZ file system deployment>.
    deploymentType :: Prelude.Maybe OntapDeploymentType,
    -- | The @Management@ and @Intercluster@ endpoints that are used to access
    -- data or to manage the file system using the NetApp ONTAP CLI, REST API,
    -- or NetApp SnapMirror.
    endpoints :: Prelude.Maybe FileSystemEndpoints,
    -- | (Multi-AZ only) The IP address range in which the endpoints to access
    -- your file system are created.
    --
    -- The Endpoint IP address range you select for your file system must exist
    -- outside the VPC\'s CIDR range and must be at least \/30 or larger. If
    -- you do not specify this optional parameter, Amazon FSx will
    -- automatically select a CIDR block for you.
    endpointIpAddressRange :: Prelude.Maybe Prelude.Text,
    -- | The SSD IOPS configuration for the ONTAP file system, specifying the
    -- number of provisioned IOPS and the provision mode.
    diskIopsConfiguration :: Prelude.Maybe DiskIopsConfiguration,
    dailyAutomaticBackupStartTime :: Prelude.Maybe Prelude.Text,
    preferredSubnetId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OntapFileSystemConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'weeklyMaintenanceStartTime', 'ontapFileSystemConfiguration_weeklyMaintenanceStartTime' - Undocumented member.
--
-- 'throughputCapacity', 'ontapFileSystemConfiguration_throughputCapacity' - Undocumented member.
--
-- 'automaticBackupRetentionDays', 'ontapFileSystemConfiguration_automaticBackupRetentionDays' - Undocumented member.
--
-- 'routeTableIds', 'ontapFileSystemConfiguration_routeTableIds' - (Multi-AZ only) The VPC route tables in which your file system\'s
-- endpoints are created.
--
-- 'deploymentType', 'ontapFileSystemConfiguration_deploymentType' - Specifies the FSx for ONTAP file system deployment type in use in the
-- file system.
--
-- -   @MULTI_AZ_1@ - (Default) A high availability file system configured
--     for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
--     unavailability.
--
-- -   @SINGLE_AZ_1@ - A file system configured for Single-AZ redundancy.
--
-- For information about the use cases for Multi-AZ and Single-AZ
-- deployments, refer to
-- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html Choosing Multi-AZ or Single-AZ file system deployment>.
--
-- 'endpoints', 'ontapFileSystemConfiguration_endpoints' - The @Management@ and @Intercluster@ endpoints that are used to access
-- data or to manage the file system using the NetApp ONTAP CLI, REST API,
-- or NetApp SnapMirror.
--
-- 'endpointIpAddressRange', 'ontapFileSystemConfiguration_endpointIpAddressRange' - (Multi-AZ only) The IP address range in which the endpoints to access
-- your file system are created.
--
-- The Endpoint IP address range you select for your file system must exist
-- outside the VPC\'s CIDR range and must be at least \/30 or larger. If
-- you do not specify this optional parameter, Amazon FSx will
-- automatically select a CIDR block for you.
--
-- 'diskIopsConfiguration', 'ontapFileSystemConfiguration_diskIopsConfiguration' - The SSD IOPS configuration for the ONTAP file system, specifying the
-- number of provisioned IOPS and the provision mode.
--
-- 'dailyAutomaticBackupStartTime', 'ontapFileSystemConfiguration_dailyAutomaticBackupStartTime' - Undocumented member.
--
-- 'preferredSubnetId', 'ontapFileSystemConfiguration_preferredSubnetId' - Undocumented member.
newOntapFileSystemConfiguration ::
  OntapFileSystemConfiguration
newOntapFileSystemConfiguration =
  OntapFileSystemConfiguration'
    { weeklyMaintenanceStartTime =
        Prelude.Nothing,
      throughputCapacity = Prelude.Nothing,
      automaticBackupRetentionDays =
        Prelude.Nothing,
      routeTableIds = Prelude.Nothing,
      deploymentType = Prelude.Nothing,
      endpoints = Prelude.Nothing,
      endpointIpAddressRange = Prelude.Nothing,
      diskIopsConfiguration = Prelude.Nothing,
      dailyAutomaticBackupStartTime =
        Prelude.Nothing,
      preferredSubnetId = Prelude.Nothing
    }

-- | Undocumented member.
ontapFileSystemConfiguration_weeklyMaintenanceStartTime :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Text)
ontapFileSystemConfiguration_weeklyMaintenanceStartTime = Lens.lens (\OntapFileSystemConfiguration' {weeklyMaintenanceStartTime} -> weeklyMaintenanceStartTime) (\s@OntapFileSystemConfiguration' {} a -> s {weeklyMaintenanceStartTime = a} :: OntapFileSystemConfiguration)

-- | Undocumented member.
ontapFileSystemConfiguration_throughputCapacity :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Natural)
ontapFileSystemConfiguration_throughputCapacity = Lens.lens (\OntapFileSystemConfiguration' {throughputCapacity} -> throughputCapacity) (\s@OntapFileSystemConfiguration' {} a -> s {throughputCapacity = a} :: OntapFileSystemConfiguration)

-- | Undocumented member.
ontapFileSystemConfiguration_automaticBackupRetentionDays :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Natural)
ontapFileSystemConfiguration_automaticBackupRetentionDays = Lens.lens (\OntapFileSystemConfiguration' {automaticBackupRetentionDays} -> automaticBackupRetentionDays) (\s@OntapFileSystemConfiguration' {} a -> s {automaticBackupRetentionDays = a} :: OntapFileSystemConfiguration)

-- | (Multi-AZ only) The VPC route tables in which your file system\'s
-- endpoints are created.
ontapFileSystemConfiguration_routeTableIds :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe [Prelude.Text])
ontapFileSystemConfiguration_routeTableIds = Lens.lens (\OntapFileSystemConfiguration' {routeTableIds} -> routeTableIds) (\s@OntapFileSystemConfiguration' {} a -> s {routeTableIds = a} :: OntapFileSystemConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the FSx for ONTAP file system deployment type in use in the
-- file system.
--
-- -   @MULTI_AZ_1@ - (Default) A high availability file system configured
--     for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
--     unavailability.
--
-- -   @SINGLE_AZ_1@ - A file system configured for Single-AZ redundancy.
--
-- For information about the use cases for Multi-AZ and Single-AZ
-- deployments, refer to
-- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html Choosing Multi-AZ or Single-AZ file system deployment>.
ontapFileSystemConfiguration_deploymentType :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe OntapDeploymentType)
ontapFileSystemConfiguration_deploymentType = Lens.lens (\OntapFileSystemConfiguration' {deploymentType} -> deploymentType) (\s@OntapFileSystemConfiguration' {} a -> s {deploymentType = a} :: OntapFileSystemConfiguration)

-- | The @Management@ and @Intercluster@ endpoints that are used to access
-- data or to manage the file system using the NetApp ONTAP CLI, REST API,
-- or NetApp SnapMirror.
ontapFileSystemConfiguration_endpoints :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe FileSystemEndpoints)
ontapFileSystemConfiguration_endpoints = Lens.lens (\OntapFileSystemConfiguration' {endpoints} -> endpoints) (\s@OntapFileSystemConfiguration' {} a -> s {endpoints = a} :: OntapFileSystemConfiguration)

-- | (Multi-AZ only) The IP address range in which the endpoints to access
-- your file system are created.
--
-- The Endpoint IP address range you select for your file system must exist
-- outside the VPC\'s CIDR range and must be at least \/30 or larger. If
-- you do not specify this optional parameter, Amazon FSx will
-- automatically select a CIDR block for you.
ontapFileSystemConfiguration_endpointIpAddressRange :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Text)
ontapFileSystemConfiguration_endpointIpAddressRange = Lens.lens (\OntapFileSystemConfiguration' {endpointIpAddressRange} -> endpointIpAddressRange) (\s@OntapFileSystemConfiguration' {} a -> s {endpointIpAddressRange = a} :: OntapFileSystemConfiguration)

-- | The SSD IOPS configuration for the ONTAP file system, specifying the
-- number of provisioned IOPS and the provision mode.
ontapFileSystemConfiguration_diskIopsConfiguration :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe DiskIopsConfiguration)
ontapFileSystemConfiguration_diskIopsConfiguration = Lens.lens (\OntapFileSystemConfiguration' {diskIopsConfiguration} -> diskIopsConfiguration) (\s@OntapFileSystemConfiguration' {} a -> s {diskIopsConfiguration = a} :: OntapFileSystemConfiguration)

-- | Undocumented member.
ontapFileSystemConfiguration_dailyAutomaticBackupStartTime :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Text)
ontapFileSystemConfiguration_dailyAutomaticBackupStartTime = Lens.lens (\OntapFileSystemConfiguration' {dailyAutomaticBackupStartTime} -> dailyAutomaticBackupStartTime) (\s@OntapFileSystemConfiguration' {} a -> s {dailyAutomaticBackupStartTime = a} :: OntapFileSystemConfiguration)

-- | Undocumented member.
ontapFileSystemConfiguration_preferredSubnetId :: Lens.Lens' OntapFileSystemConfiguration (Prelude.Maybe Prelude.Text)
ontapFileSystemConfiguration_preferredSubnetId = Lens.lens (\OntapFileSystemConfiguration' {preferredSubnetId} -> preferredSubnetId) (\s@OntapFileSystemConfiguration' {} a -> s {preferredSubnetId = a} :: OntapFileSystemConfiguration)

instance Core.FromJSON OntapFileSystemConfiguration where
  parseJSON =
    Core.withObject
      "OntapFileSystemConfiguration"
      ( \x ->
          OntapFileSystemConfiguration'
            Prelude.<$> (x Core..:? "WeeklyMaintenanceStartTime")
            Prelude.<*> (x Core..:? "ThroughputCapacity")
            Prelude.<*> (x Core..:? "AutomaticBackupRetentionDays")
            Prelude.<*> (x Core..:? "RouteTableIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "DeploymentType")
            Prelude.<*> (x Core..:? "Endpoints")
            Prelude.<*> (x Core..:? "EndpointIpAddressRange")
            Prelude.<*> (x Core..:? "DiskIopsConfiguration")
            Prelude.<*> (x Core..:? "DailyAutomaticBackupStartTime")
            Prelude.<*> (x Core..:? "PreferredSubnetId")
      )

instance
  Prelude.Hashable
    OntapFileSystemConfiguration
  where
  hashWithSalt _salt OntapFileSystemConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` weeklyMaintenanceStartTime
      `Prelude.hashWithSalt` throughputCapacity
      `Prelude.hashWithSalt` automaticBackupRetentionDays
      `Prelude.hashWithSalt` routeTableIds
      `Prelude.hashWithSalt` deploymentType
      `Prelude.hashWithSalt` endpoints
      `Prelude.hashWithSalt` endpointIpAddressRange
      `Prelude.hashWithSalt` diskIopsConfiguration
      `Prelude.hashWithSalt` dailyAutomaticBackupStartTime
      `Prelude.hashWithSalt` preferredSubnetId

instance Prelude.NFData OntapFileSystemConfiguration where
  rnf OntapFileSystemConfiguration' {..} =
    Prelude.rnf weeklyMaintenanceStartTime
      `Prelude.seq` Prelude.rnf throughputCapacity
      `Prelude.seq` Prelude.rnf automaticBackupRetentionDays
      `Prelude.seq` Prelude.rnf routeTableIds
      `Prelude.seq` Prelude.rnf deploymentType
      `Prelude.seq` Prelude.rnf endpoints
      `Prelude.seq` Prelude.rnf endpointIpAddressRange
      `Prelude.seq` Prelude.rnf diskIopsConfiguration
      `Prelude.seq` Prelude.rnf dailyAutomaticBackupStartTime
      `Prelude.seq` Prelude.rnf preferredSubnetId

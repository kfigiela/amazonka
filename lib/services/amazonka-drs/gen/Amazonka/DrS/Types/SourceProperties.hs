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
-- Module      : Amazonka.DrS.Types.SourceProperties
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DrS.Types.SourceProperties where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types.CPU
import Amazonka.DrS.Types.Disk
import Amazonka.DrS.Types.IdentificationHints
import Amazonka.DrS.Types.NetworkInterface
import Amazonka.DrS.Types.OS
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Properties of the Source Server machine.
--
-- /See:/ 'newSourceProperties' smart constructor.
data SourceProperties = SourceProperties'
  { -- | Operating system.
    os :: Prelude.Maybe OS,
    -- | An array of CPUs.
    cpus :: Prelude.Maybe [CPU],
    -- | The amount of RAM in bytes.
    ramBytes :: Prelude.Maybe Prelude.Natural,
    -- | An array of disks.
    disks :: Prelude.Maybe [Disk],
    -- | Hints used to uniquely identify a machine.
    identificationHints :: Prelude.Maybe IdentificationHints,
    -- | The recommended EC2 instance type that will be used when recovering the
    -- Source Server.
    recommendedInstanceType :: Prelude.Maybe Prelude.Text,
    -- | The date and time the Source Properties were last updated on.
    lastUpdatedDateTime :: Prelude.Maybe Prelude.Text,
    -- | An array of network interfaces.
    networkInterfaces :: Prelude.Maybe [NetworkInterface]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'os', 'sourceProperties_os' - Operating system.
--
-- 'cpus', 'sourceProperties_cpus' - An array of CPUs.
--
-- 'ramBytes', 'sourceProperties_ramBytes' - The amount of RAM in bytes.
--
-- 'disks', 'sourceProperties_disks' - An array of disks.
--
-- 'identificationHints', 'sourceProperties_identificationHints' - Hints used to uniquely identify a machine.
--
-- 'recommendedInstanceType', 'sourceProperties_recommendedInstanceType' - The recommended EC2 instance type that will be used when recovering the
-- Source Server.
--
-- 'lastUpdatedDateTime', 'sourceProperties_lastUpdatedDateTime' - The date and time the Source Properties were last updated on.
--
-- 'networkInterfaces', 'sourceProperties_networkInterfaces' - An array of network interfaces.
newSourceProperties ::
  SourceProperties
newSourceProperties =
  SourceProperties'
    { os = Prelude.Nothing,
      cpus = Prelude.Nothing,
      ramBytes = Prelude.Nothing,
      disks = Prelude.Nothing,
      identificationHints = Prelude.Nothing,
      recommendedInstanceType = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      networkInterfaces = Prelude.Nothing
    }

-- | Operating system.
sourceProperties_os :: Lens.Lens' SourceProperties (Prelude.Maybe OS)
sourceProperties_os = Lens.lens (\SourceProperties' {os} -> os) (\s@SourceProperties' {} a -> s {os = a} :: SourceProperties)

-- | An array of CPUs.
sourceProperties_cpus :: Lens.Lens' SourceProperties (Prelude.Maybe [CPU])
sourceProperties_cpus = Lens.lens (\SourceProperties' {cpus} -> cpus) (\s@SourceProperties' {} a -> s {cpus = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | The amount of RAM in bytes.
sourceProperties_ramBytes :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Natural)
sourceProperties_ramBytes = Lens.lens (\SourceProperties' {ramBytes} -> ramBytes) (\s@SourceProperties' {} a -> s {ramBytes = a} :: SourceProperties)

-- | An array of disks.
sourceProperties_disks :: Lens.Lens' SourceProperties (Prelude.Maybe [Disk])
sourceProperties_disks = Lens.lens (\SourceProperties' {disks} -> disks) (\s@SourceProperties' {} a -> s {disks = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | Hints used to uniquely identify a machine.
sourceProperties_identificationHints :: Lens.Lens' SourceProperties (Prelude.Maybe IdentificationHints)
sourceProperties_identificationHints = Lens.lens (\SourceProperties' {identificationHints} -> identificationHints) (\s@SourceProperties' {} a -> s {identificationHints = a} :: SourceProperties)

-- | The recommended EC2 instance type that will be used when recovering the
-- Source Server.
sourceProperties_recommendedInstanceType :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_recommendedInstanceType = Lens.lens (\SourceProperties' {recommendedInstanceType} -> recommendedInstanceType) (\s@SourceProperties' {} a -> s {recommendedInstanceType = a} :: SourceProperties)

-- | The date and time the Source Properties were last updated on.
sourceProperties_lastUpdatedDateTime :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_lastUpdatedDateTime = Lens.lens (\SourceProperties' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@SourceProperties' {} a -> s {lastUpdatedDateTime = a} :: SourceProperties)

-- | An array of network interfaces.
sourceProperties_networkInterfaces :: Lens.Lens' SourceProperties (Prelude.Maybe [NetworkInterface])
sourceProperties_networkInterfaces = Lens.lens (\SourceProperties' {networkInterfaces} -> networkInterfaces) (\s@SourceProperties' {} a -> s {networkInterfaces = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SourceProperties where
  parseJSON =
    Core.withObject
      "SourceProperties"
      ( \x ->
          SourceProperties'
            Prelude.<$> (x Core..:? "os")
            Prelude.<*> (x Core..:? "cpus" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ramBytes")
            Prelude.<*> (x Core..:? "disks" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "identificationHints")
            Prelude.<*> (x Core..:? "recommendedInstanceType")
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> ( x Core..:? "networkInterfaces"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable SourceProperties where
  hashWithSalt _salt SourceProperties' {..} =
    _salt `Prelude.hashWithSalt` os
      `Prelude.hashWithSalt` cpus
      `Prelude.hashWithSalt` ramBytes
      `Prelude.hashWithSalt` disks
      `Prelude.hashWithSalt` identificationHints
      `Prelude.hashWithSalt` recommendedInstanceType
      `Prelude.hashWithSalt` lastUpdatedDateTime
      `Prelude.hashWithSalt` networkInterfaces

instance Prelude.NFData SourceProperties where
  rnf SourceProperties' {..} =
    Prelude.rnf os
      `Prelude.seq` Prelude.rnf cpus
      `Prelude.seq` Prelude.rnf ramBytes
      `Prelude.seq` Prelude.rnf disks
      `Prelude.seq` Prelude.rnf identificationHints
      `Prelude.seq` Prelude.rnf recommendedInstanceType
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf networkInterfaces

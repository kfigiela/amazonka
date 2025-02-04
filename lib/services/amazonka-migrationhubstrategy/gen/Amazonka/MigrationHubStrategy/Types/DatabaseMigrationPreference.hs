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
-- Module      : Amazonka.MigrationHubStrategy.Types.DatabaseMigrationPreference
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MigrationHubStrategy.Types.DatabaseMigrationPreference where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubStrategy.Types.Heterogeneous
import Amazonka.MigrationHubStrategy.Types.Homogeneous
import Amazonka.MigrationHubStrategy.Types.NoDatabaseMigrationPreference
import qualified Amazonka.Prelude as Prelude

-- | Preferences for migrating a database to AWS.
--
-- /See:/ 'newDatabaseMigrationPreference' smart constructor.
data DatabaseMigrationPreference = DatabaseMigrationPreference'
  { -- | Indicates whether you are interested in moving to the same type of
    -- database into AWS. For example, from SQL Server in your environment to
    -- SQL Server on AWS.
    homogeneous :: Prelude.Maybe Homogeneous,
    -- | Indicates whether you are interested in moving from one type of database
    -- to another. For example, from SQL Server to Amazon Aurora
    -- MySQL-Compatible Edition.
    heterogeneous :: Prelude.Maybe Heterogeneous,
    -- | Indicated that you do not prefer heterogeneous or homogeneous.
    noPreference :: Prelude.Maybe NoDatabaseMigrationPreference
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatabaseMigrationPreference' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'homogeneous', 'databaseMigrationPreference_homogeneous' - Indicates whether you are interested in moving to the same type of
-- database into AWS. For example, from SQL Server in your environment to
-- SQL Server on AWS.
--
-- 'heterogeneous', 'databaseMigrationPreference_heterogeneous' - Indicates whether you are interested in moving from one type of database
-- to another. For example, from SQL Server to Amazon Aurora
-- MySQL-Compatible Edition.
--
-- 'noPreference', 'databaseMigrationPreference_noPreference' - Indicated that you do not prefer heterogeneous or homogeneous.
newDatabaseMigrationPreference ::
  DatabaseMigrationPreference
newDatabaseMigrationPreference =
  DatabaseMigrationPreference'
    { homogeneous =
        Prelude.Nothing,
      heterogeneous = Prelude.Nothing,
      noPreference = Prelude.Nothing
    }

-- | Indicates whether you are interested in moving to the same type of
-- database into AWS. For example, from SQL Server in your environment to
-- SQL Server on AWS.
databaseMigrationPreference_homogeneous :: Lens.Lens' DatabaseMigrationPreference (Prelude.Maybe Homogeneous)
databaseMigrationPreference_homogeneous = Lens.lens (\DatabaseMigrationPreference' {homogeneous} -> homogeneous) (\s@DatabaseMigrationPreference' {} a -> s {homogeneous = a} :: DatabaseMigrationPreference)

-- | Indicates whether you are interested in moving from one type of database
-- to another. For example, from SQL Server to Amazon Aurora
-- MySQL-Compatible Edition.
databaseMigrationPreference_heterogeneous :: Lens.Lens' DatabaseMigrationPreference (Prelude.Maybe Heterogeneous)
databaseMigrationPreference_heterogeneous = Lens.lens (\DatabaseMigrationPreference' {heterogeneous} -> heterogeneous) (\s@DatabaseMigrationPreference' {} a -> s {heterogeneous = a} :: DatabaseMigrationPreference)

-- | Indicated that you do not prefer heterogeneous or homogeneous.
databaseMigrationPreference_noPreference :: Lens.Lens' DatabaseMigrationPreference (Prelude.Maybe NoDatabaseMigrationPreference)
databaseMigrationPreference_noPreference = Lens.lens (\DatabaseMigrationPreference' {noPreference} -> noPreference) (\s@DatabaseMigrationPreference' {} a -> s {noPreference = a} :: DatabaseMigrationPreference)

instance Core.FromJSON DatabaseMigrationPreference where
  parseJSON =
    Core.withObject
      "DatabaseMigrationPreference"
      ( \x ->
          DatabaseMigrationPreference'
            Prelude.<$> (x Core..:? "homogeneous")
            Prelude.<*> (x Core..:? "heterogeneous")
            Prelude.<*> (x Core..:? "noPreference")
      )

instance Prelude.Hashable DatabaseMigrationPreference where
  hashWithSalt _salt DatabaseMigrationPreference' {..} =
    _salt `Prelude.hashWithSalt` homogeneous
      `Prelude.hashWithSalt` heterogeneous
      `Prelude.hashWithSalt` noPreference

instance Prelude.NFData DatabaseMigrationPreference where
  rnf DatabaseMigrationPreference' {..} =
    Prelude.rnf homogeneous
      `Prelude.seq` Prelude.rnf heterogeneous
      `Prelude.seq` Prelude.rnf noPreference

instance Core.ToJSON DatabaseMigrationPreference where
  toJSON DatabaseMigrationPreference' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("homogeneous" Core..=) Prelude.<$> homogeneous,
            ("heterogeneous" Core..=) Prelude.<$> heterogeneous,
            ("noPreference" Core..=) Prelude.<$> noPreference
          ]
      )

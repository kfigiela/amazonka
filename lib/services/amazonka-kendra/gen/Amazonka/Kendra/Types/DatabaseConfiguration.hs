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
-- Module      : Amazonka.Kendra.Types.DatabaseConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.DatabaseConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.AclConfiguration
import Amazonka.Kendra.Types.ColumnConfiguration
import Amazonka.Kendra.Types.ConnectionConfiguration
import Amazonka.Kendra.Types.DataSourceVpcConfiguration
import Amazonka.Kendra.Types.DatabaseEngineType
import Amazonka.Kendra.Types.SqlConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information to connect to a index.
--
-- /See:/ 'newDatabaseConfiguration' smart constructor.
data DatabaseConfiguration = DatabaseConfiguration'
  { vpcConfiguration :: Prelude.Maybe DataSourceVpcConfiguration,
    -- | Information about the database column that provides information for user
    -- context filtering.
    aclConfiguration :: Prelude.Maybe AclConfiguration,
    -- | Provides information about how Amazon Kendra uses quote marks around SQL
    -- identifiers when querying a database data source.
    sqlConfiguration :: Prelude.Maybe SqlConfiguration,
    -- | The type of database engine that runs the database.
    databaseEngineType :: DatabaseEngineType,
    -- | Configuration information that\'s required to connect to a database.
    connectionConfiguration :: ConnectionConfiguration,
    -- | Information about where the index should get the document information
    -- from the database.
    columnConfiguration :: ColumnConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatabaseConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcConfiguration', 'databaseConfiguration_vpcConfiguration' - Undocumented member.
--
-- 'aclConfiguration', 'databaseConfiguration_aclConfiguration' - Information about the database column that provides information for user
-- context filtering.
--
-- 'sqlConfiguration', 'databaseConfiguration_sqlConfiguration' - Provides information about how Amazon Kendra uses quote marks around SQL
-- identifiers when querying a database data source.
--
-- 'databaseEngineType', 'databaseConfiguration_databaseEngineType' - The type of database engine that runs the database.
--
-- 'connectionConfiguration', 'databaseConfiguration_connectionConfiguration' - Configuration information that\'s required to connect to a database.
--
-- 'columnConfiguration', 'databaseConfiguration_columnConfiguration' - Information about where the index should get the document information
-- from the database.
newDatabaseConfiguration ::
  -- | 'databaseEngineType'
  DatabaseEngineType ->
  -- | 'connectionConfiguration'
  ConnectionConfiguration ->
  -- | 'columnConfiguration'
  ColumnConfiguration ->
  DatabaseConfiguration
newDatabaseConfiguration
  pDatabaseEngineType_
  pConnectionConfiguration_
  pColumnConfiguration_ =
    DatabaseConfiguration'
      { vpcConfiguration =
          Prelude.Nothing,
        aclConfiguration = Prelude.Nothing,
        sqlConfiguration = Prelude.Nothing,
        databaseEngineType = pDatabaseEngineType_,
        connectionConfiguration = pConnectionConfiguration_,
        columnConfiguration = pColumnConfiguration_
      }

-- | Undocumented member.
databaseConfiguration_vpcConfiguration :: Lens.Lens' DatabaseConfiguration (Prelude.Maybe DataSourceVpcConfiguration)
databaseConfiguration_vpcConfiguration = Lens.lens (\DatabaseConfiguration' {vpcConfiguration} -> vpcConfiguration) (\s@DatabaseConfiguration' {} a -> s {vpcConfiguration = a} :: DatabaseConfiguration)

-- | Information about the database column that provides information for user
-- context filtering.
databaseConfiguration_aclConfiguration :: Lens.Lens' DatabaseConfiguration (Prelude.Maybe AclConfiguration)
databaseConfiguration_aclConfiguration = Lens.lens (\DatabaseConfiguration' {aclConfiguration} -> aclConfiguration) (\s@DatabaseConfiguration' {} a -> s {aclConfiguration = a} :: DatabaseConfiguration)

-- | Provides information about how Amazon Kendra uses quote marks around SQL
-- identifiers when querying a database data source.
databaseConfiguration_sqlConfiguration :: Lens.Lens' DatabaseConfiguration (Prelude.Maybe SqlConfiguration)
databaseConfiguration_sqlConfiguration = Lens.lens (\DatabaseConfiguration' {sqlConfiguration} -> sqlConfiguration) (\s@DatabaseConfiguration' {} a -> s {sqlConfiguration = a} :: DatabaseConfiguration)

-- | The type of database engine that runs the database.
databaseConfiguration_databaseEngineType :: Lens.Lens' DatabaseConfiguration DatabaseEngineType
databaseConfiguration_databaseEngineType = Lens.lens (\DatabaseConfiguration' {databaseEngineType} -> databaseEngineType) (\s@DatabaseConfiguration' {} a -> s {databaseEngineType = a} :: DatabaseConfiguration)

-- | Configuration information that\'s required to connect to a database.
databaseConfiguration_connectionConfiguration :: Lens.Lens' DatabaseConfiguration ConnectionConfiguration
databaseConfiguration_connectionConfiguration = Lens.lens (\DatabaseConfiguration' {connectionConfiguration} -> connectionConfiguration) (\s@DatabaseConfiguration' {} a -> s {connectionConfiguration = a} :: DatabaseConfiguration)

-- | Information about where the index should get the document information
-- from the database.
databaseConfiguration_columnConfiguration :: Lens.Lens' DatabaseConfiguration ColumnConfiguration
databaseConfiguration_columnConfiguration = Lens.lens (\DatabaseConfiguration' {columnConfiguration} -> columnConfiguration) (\s@DatabaseConfiguration' {} a -> s {columnConfiguration = a} :: DatabaseConfiguration)

instance Core.FromJSON DatabaseConfiguration where
  parseJSON =
    Core.withObject
      "DatabaseConfiguration"
      ( \x ->
          DatabaseConfiguration'
            Prelude.<$> (x Core..:? "VpcConfiguration")
            Prelude.<*> (x Core..:? "AclConfiguration")
            Prelude.<*> (x Core..:? "SqlConfiguration")
            Prelude.<*> (x Core..: "DatabaseEngineType")
            Prelude.<*> (x Core..: "ConnectionConfiguration")
            Prelude.<*> (x Core..: "ColumnConfiguration")
      )

instance Prelude.Hashable DatabaseConfiguration where
  hashWithSalt _salt DatabaseConfiguration' {..} =
    _salt `Prelude.hashWithSalt` vpcConfiguration
      `Prelude.hashWithSalt` aclConfiguration
      `Prelude.hashWithSalt` sqlConfiguration
      `Prelude.hashWithSalt` databaseEngineType
      `Prelude.hashWithSalt` connectionConfiguration
      `Prelude.hashWithSalt` columnConfiguration

instance Prelude.NFData DatabaseConfiguration where
  rnf DatabaseConfiguration' {..} =
    Prelude.rnf vpcConfiguration
      `Prelude.seq` Prelude.rnf aclConfiguration
      `Prelude.seq` Prelude.rnf sqlConfiguration
      `Prelude.seq` Prelude.rnf databaseEngineType
      `Prelude.seq` Prelude.rnf connectionConfiguration
      `Prelude.seq` Prelude.rnf columnConfiguration

instance Core.ToJSON DatabaseConfiguration where
  toJSON DatabaseConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            ("AclConfiguration" Core..=)
              Prelude.<$> aclConfiguration,
            ("SqlConfiguration" Core..=)
              Prelude.<$> sqlConfiguration,
            Prelude.Just
              ("DatabaseEngineType" Core..= databaseEngineType),
            Prelude.Just
              ( "ConnectionConfiguration"
                  Core..= connectionConfiguration
              ),
            Prelude.Just
              ("ColumnConfiguration" Core..= columnConfiguration)
          ]
      )

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
-- Module      : Amazonka.SageMaker.Types.MonitoringDatasetFormat
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.MonitoringDatasetFormat where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.MonitoringCsvDatasetFormat
import Amazonka.SageMaker.Types.MonitoringJsonDatasetFormat
import Amazonka.SageMaker.Types.MonitoringParquetDatasetFormat

-- | Represents the dataset format used when running a monitoring job.
--
-- /See:/ 'newMonitoringDatasetFormat' smart constructor.
data MonitoringDatasetFormat = MonitoringDatasetFormat'
  { -- | The Parquet dataset used in the monitoring job
    parquet :: Prelude.Maybe MonitoringParquetDatasetFormat,
    -- | The JSON dataset used in the monitoring job
    json :: Prelude.Maybe MonitoringJsonDatasetFormat,
    -- | The CSV dataset used in the monitoring job.
    csv :: Prelude.Maybe MonitoringCsvDatasetFormat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonitoringDatasetFormat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parquet', 'monitoringDatasetFormat_parquet' - The Parquet dataset used in the monitoring job
--
-- 'json', 'monitoringDatasetFormat_json' - The JSON dataset used in the monitoring job
--
-- 'csv', 'monitoringDatasetFormat_csv' - The CSV dataset used in the monitoring job.
newMonitoringDatasetFormat ::
  MonitoringDatasetFormat
newMonitoringDatasetFormat =
  MonitoringDatasetFormat'
    { parquet = Prelude.Nothing,
      json = Prelude.Nothing,
      csv = Prelude.Nothing
    }

-- | The Parquet dataset used in the monitoring job
monitoringDatasetFormat_parquet :: Lens.Lens' MonitoringDatasetFormat (Prelude.Maybe MonitoringParquetDatasetFormat)
monitoringDatasetFormat_parquet = Lens.lens (\MonitoringDatasetFormat' {parquet} -> parquet) (\s@MonitoringDatasetFormat' {} a -> s {parquet = a} :: MonitoringDatasetFormat)

-- | The JSON dataset used in the monitoring job
monitoringDatasetFormat_json :: Lens.Lens' MonitoringDatasetFormat (Prelude.Maybe MonitoringJsonDatasetFormat)
monitoringDatasetFormat_json = Lens.lens (\MonitoringDatasetFormat' {json} -> json) (\s@MonitoringDatasetFormat' {} a -> s {json = a} :: MonitoringDatasetFormat)

-- | The CSV dataset used in the monitoring job.
monitoringDatasetFormat_csv :: Lens.Lens' MonitoringDatasetFormat (Prelude.Maybe MonitoringCsvDatasetFormat)
monitoringDatasetFormat_csv = Lens.lens (\MonitoringDatasetFormat' {csv} -> csv) (\s@MonitoringDatasetFormat' {} a -> s {csv = a} :: MonitoringDatasetFormat)

instance Core.FromJSON MonitoringDatasetFormat where
  parseJSON =
    Core.withObject
      "MonitoringDatasetFormat"
      ( \x ->
          MonitoringDatasetFormat'
            Prelude.<$> (x Core..:? "Parquet")
            Prelude.<*> (x Core..:? "Json")
            Prelude.<*> (x Core..:? "Csv")
      )

instance Prelude.Hashable MonitoringDatasetFormat where
  hashWithSalt _salt MonitoringDatasetFormat' {..} =
    _salt `Prelude.hashWithSalt` parquet
      `Prelude.hashWithSalt` json
      `Prelude.hashWithSalt` csv

instance Prelude.NFData MonitoringDatasetFormat where
  rnf MonitoringDatasetFormat' {..} =
    Prelude.rnf parquet
      `Prelude.seq` Prelude.rnf json
      `Prelude.seq` Prelude.rnf csv

instance Core.ToJSON MonitoringDatasetFormat where
  toJSON MonitoringDatasetFormat' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Parquet" Core..=) Prelude.<$> parquet,
            ("Json" Core..=) Prelude.<$> json,
            ("Csv" Core..=) Prelude.<$> csv
          ]
      )

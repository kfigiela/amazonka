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
-- Module      : Amazonka.Personalize.Types.DatasetExportJobOutput
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Personalize.Types.DatasetExportJobOutput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Personalize.Types.S3DataConfig
import qualified Amazonka.Prelude as Prelude

-- | The output configuration parameters of a dataset export job.
--
-- /See:/ 'newDatasetExportJobOutput' smart constructor.
data DatasetExportJobOutput = DatasetExportJobOutput'
  { s3DataDestination :: S3DataConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetExportJobOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3DataDestination', 'datasetExportJobOutput_s3DataDestination' - Undocumented member.
newDatasetExportJobOutput ::
  -- | 's3DataDestination'
  S3DataConfig ->
  DatasetExportJobOutput
newDatasetExportJobOutput pS3DataDestination_ =
  DatasetExportJobOutput'
    { s3DataDestination =
        pS3DataDestination_
    }

-- | Undocumented member.
datasetExportJobOutput_s3DataDestination :: Lens.Lens' DatasetExportJobOutput S3DataConfig
datasetExportJobOutput_s3DataDestination = Lens.lens (\DatasetExportJobOutput' {s3DataDestination} -> s3DataDestination) (\s@DatasetExportJobOutput' {} a -> s {s3DataDestination = a} :: DatasetExportJobOutput)

instance Core.FromJSON DatasetExportJobOutput where
  parseJSON =
    Core.withObject
      "DatasetExportJobOutput"
      ( \x ->
          DatasetExportJobOutput'
            Prelude.<$> (x Core..: "s3DataDestination")
      )

instance Prelude.Hashable DatasetExportJobOutput where
  hashWithSalt _salt DatasetExportJobOutput' {..} =
    _salt `Prelude.hashWithSalt` s3DataDestination

instance Prelude.NFData DatasetExportJobOutput where
  rnf DatasetExportJobOutput' {..} =
    Prelude.rnf s3DataDestination

instance Core.ToJSON DatasetExportJobOutput where
  toJSON DatasetExportJobOutput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("s3DataDestination" Core..= s3DataDestination)
          ]
      )

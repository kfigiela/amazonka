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
-- Module      : Amazonka.IoTFleetWise.Types.ModelManifestSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.ModelManifestSummary where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types.ManifestStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a vehicle model (model manifest). You can use the API
-- operation to return this information about multiple vehicle models.
--
-- /See:/ 'newModelManifestSummary' smart constructor.
data ModelManifestSummary = ModelManifestSummary'
  { -- | The name of the vehicle model.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the vehicle model.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the vehicle model. If the status is @ACTIVE@, the vehicle
    -- model can\'t be edited. If the status is @DRAFT@, you can edit the
    -- vehicle model.
    status :: Prelude.Maybe ManifestStatus,
    -- | A brief description of the vehicle model.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the signal catalog associated with the vehicle model.
    signalCatalogArn :: Prelude.Maybe Prelude.Text,
    -- | The time the vehicle model was created, in seconds since epoch (January
    -- 1, 1970 at midnight UTC time).
    creationTime :: Core.POSIX,
    -- | The time the vehicle model was last updated, in seconds since epoch
    -- (January 1, 1970 at midnight UTC time).
    lastModificationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelManifestSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'modelManifestSummary_name' - The name of the vehicle model.
--
-- 'arn', 'modelManifestSummary_arn' - The Amazon Resource Name (ARN) of the vehicle model.
--
-- 'status', 'modelManifestSummary_status' - The state of the vehicle model. If the status is @ACTIVE@, the vehicle
-- model can\'t be edited. If the status is @DRAFT@, you can edit the
-- vehicle model.
--
-- 'description', 'modelManifestSummary_description' - A brief description of the vehicle model.
--
-- 'signalCatalogArn', 'modelManifestSummary_signalCatalogArn' - The ARN of the signal catalog associated with the vehicle model.
--
-- 'creationTime', 'modelManifestSummary_creationTime' - The time the vehicle model was created, in seconds since epoch (January
-- 1, 1970 at midnight UTC time).
--
-- 'lastModificationTime', 'modelManifestSummary_lastModificationTime' - The time the vehicle model was last updated, in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
newModelManifestSummary ::
  -- | 'creationTime'
  Prelude.UTCTime ->
  -- | 'lastModificationTime'
  Prelude.UTCTime ->
  ModelManifestSummary
newModelManifestSummary
  pCreationTime_
  pLastModificationTime_ =
    ModelManifestSummary'
      { name = Prelude.Nothing,
        arn = Prelude.Nothing,
        status = Prelude.Nothing,
        description = Prelude.Nothing,
        signalCatalogArn = Prelude.Nothing,
        creationTime = Core._Time Lens.# pCreationTime_,
        lastModificationTime =
          Core._Time Lens.# pLastModificationTime_
      }

-- | The name of the vehicle model.
modelManifestSummary_name :: Lens.Lens' ModelManifestSummary (Prelude.Maybe Prelude.Text)
modelManifestSummary_name = Lens.lens (\ModelManifestSummary' {name} -> name) (\s@ModelManifestSummary' {} a -> s {name = a} :: ModelManifestSummary)

-- | The Amazon Resource Name (ARN) of the vehicle model.
modelManifestSummary_arn :: Lens.Lens' ModelManifestSummary (Prelude.Maybe Prelude.Text)
modelManifestSummary_arn = Lens.lens (\ModelManifestSummary' {arn} -> arn) (\s@ModelManifestSummary' {} a -> s {arn = a} :: ModelManifestSummary)

-- | The state of the vehicle model. If the status is @ACTIVE@, the vehicle
-- model can\'t be edited. If the status is @DRAFT@, you can edit the
-- vehicle model.
modelManifestSummary_status :: Lens.Lens' ModelManifestSummary (Prelude.Maybe ManifestStatus)
modelManifestSummary_status = Lens.lens (\ModelManifestSummary' {status} -> status) (\s@ModelManifestSummary' {} a -> s {status = a} :: ModelManifestSummary)

-- | A brief description of the vehicle model.
modelManifestSummary_description :: Lens.Lens' ModelManifestSummary (Prelude.Maybe Prelude.Text)
modelManifestSummary_description = Lens.lens (\ModelManifestSummary' {description} -> description) (\s@ModelManifestSummary' {} a -> s {description = a} :: ModelManifestSummary)

-- | The ARN of the signal catalog associated with the vehicle model.
modelManifestSummary_signalCatalogArn :: Lens.Lens' ModelManifestSummary (Prelude.Maybe Prelude.Text)
modelManifestSummary_signalCatalogArn = Lens.lens (\ModelManifestSummary' {signalCatalogArn} -> signalCatalogArn) (\s@ModelManifestSummary' {} a -> s {signalCatalogArn = a} :: ModelManifestSummary)

-- | The time the vehicle model was created, in seconds since epoch (January
-- 1, 1970 at midnight UTC time).
modelManifestSummary_creationTime :: Lens.Lens' ModelManifestSummary Prelude.UTCTime
modelManifestSummary_creationTime = Lens.lens (\ModelManifestSummary' {creationTime} -> creationTime) (\s@ModelManifestSummary' {} a -> s {creationTime = a} :: ModelManifestSummary) Prelude.. Core._Time

-- | The time the vehicle model was last updated, in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
modelManifestSummary_lastModificationTime :: Lens.Lens' ModelManifestSummary Prelude.UTCTime
modelManifestSummary_lastModificationTime = Lens.lens (\ModelManifestSummary' {lastModificationTime} -> lastModificationTime) (\s@ModelManifestSummary' {} a -> s {lastModificationTime = a} :: ModelManifestSummary) Prelude.. Core._Time

instance Core.FromJSON ModelManifestSummary where
  parseJSON =
    Core.withObject
      "ModelManifestSummary"
      ( \x ->
          ModelManifestSummary'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "signalCatalogArn")
            Prelude.<*> (x Core..: "creationTime")
            Prelude.<*> (x Core..: "lastModificationTime")
      )

instance Prelude.Hashable ModelManifestSummary where
  hashWithSalt _salt ModelManifestSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` signalCatalogArn
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` lastModificationTime

instance Prelude.NFData ModelManifestSummary where
  rnf ModelManifestSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf signalCatalogArn
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf lastModificationTime

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
-- Module      : Amazonka.IoTFleetWise.Types.DecoderManifestSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.DecoderManifestSummary where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types.ManifestStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a created decoder manifest. You can use the API
-- operation to return this information about multiple decoder manifests.
--
-- /See:/ 'newDecoderManifestSummary' smart constructor.
data DecoderManifestSummary = DecoderManifestSummary'
  { -- | The name of the decoder manifest.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of a vehicle model (model manifest) associated with the decoder
    -- manifest.
    modelManifestArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of a vehicle model (model manifest) associated with the decoder
    -- manifest.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the decoder manifest. If the status is @ACTIVE@, the
    -- decoder manifest can\'t be edited. If the status is marked @DRAFT@, you
    -- can edit the decoder manifest.
    status :: Prelude.Maybe ManifestStatus,
    -- | A brief description of the decoder manifest.
    description :: Prelude.Maybe Prelude.Text,
    -- | The time the decoder manifest was created in seconds since epoch
    -- (January 1, 1970 at midnight UTC time).
    creationTime :: Core.POSIX,
    -- | The time the decoder manifest was last updated in seconds since epoch
    -- (January 1, 1970 at midnight UTC time).
    lastModificationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DecoderManifestSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'decoderManifestSummary_name' - The name of the decoder manifest.
--
-- 'modelManifestArn', 'decoderManifestSummary_modelManifestArn' - The ARN of a vehicle model (model manifest) associated with the decoder
-- manifest.
--
-- 'arn', 'decoderManifestSummary_arn' - The ARN of a vehicle model (model manifest) associated with the decoder
-- manifest.
--
-- 'status', 'decoderManifestSummary_status' - The state of the decoder manifest. If the status is @ACTIVE@, the
-- decoder manifest can\'t be edited. If the status is marked @DRAFT@, you
-- can edit the decoder manifest.
--
-- 'description', 'decoderManifestSummary_description' - A brief description of the decoder manifest.
--
-- 'creationTime', 'decoderManifestSummary_creationTime' - The time the decoder manifest was created in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
--
-- 'lastModificationTime', 'decoderManifestSummary_lastModificationTime' - The time the decoder manifest was last updated in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
newDecoderManifestSummary ::
  -- | 'creationTime'
  Prelude.UTCTime ->
  -- | 'lastModificationTime'
  Prelude.UTCTime ->
  DecoderManifestSummary
newDecoderManifestSummary
  pCreationTime_
  pLastModificationTime_ =
    DecoderManifestSummary'
      { name = Prelude.Nothing,
        modelManifestArn = Prelude.Nothing,
        arn = Prelude.Nothing,
        status = Prelude.Nothing,
        description = Prelude.Nothing,
        creationTime = Core._Time Lens.# pCreationTime_,
        lastModificationTime =
          Core._Time Lens.# pLastModificationTime_
      }

-- | The name of the decoder manifest.
decoderManifestSummary_name :: Lens.Lens' DecoderManifestSummary (Prelude.Maybe Prelude.Text)
decoderManifestSummary_name = Lens.lens (\DecoderManifestSummary' {name} -> name) (\s@DecoderManifestSummary' {} a -> s {name = a} :: DecoderManifestSummary)

-- | The ARN of a vehicle model (model manifest) associated with the decoder
-- manifest.
decoderManifestSummary_modelManifestArn :: Lens.Lens' DecoderManifestSummary (Prelude.Maybe Prelude.Text)
decoderManifestSummary_modelManifestArn = Lens.lens (\DecoderManifestSummary' {modelManifestArn} -> modelManifestArn) (\s@DecoderManifestSummary' {} a -> s {modelManifestArn = a} :: DecoderManifestSummary)

-- | The ARN of a vehicle model (model manifest) associated with the decoder
-- manifest.
decoderManifestSummary_arn :: Lens.Lens' DecoderManifestSummary (Prelude.Maybe Prelude.Text)
decoderManifestSummary_arn = Lens.lens (\DecoderManifestSummary' {arn} -> arn) (\s@DecoderManifestSummary' {} a -> s {arn = a} :: DecoderManifestSummary)

-- | The state of the decoder manifest. If the status is @ACTIVE@, the
-- decoder manifest can\'t be edited. If the status is marked @DRAFT@, you
-- can edit the decoder manifest.
decoderManifestSummary_status :: Lens.Lens' DecoderManifestSummary (Prelude.Maybe ManifestStatus)
decoderManifestSummary_status = Lens.lens (\DecoderManifestSummary' {status} -> status) (\s@DecoderManifestSummary' {} a -> s {status = a} :: DecoderManifestSummary)

-- | A brief description of the decoder manifest.
decoderManifestSummary_description :: Lens.Lens' DecoderManifestSummary (Prelude.Maybe Prelude.Text)
decoderManifestSummary_description = Lens.lens (\DecoderManifestSummary' {description} -> description) (\s@DecoderManifestSummary' {} a -> s {description = a} :: DecoderManifestSummary)

-- | The time the decoder manifest was created in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
decoderManifestSummary_creationTime :: Lens.Lens' DecoderManifestSummary Prelude.UTCTime
decoderManifestSummary_creationTime = Lens.lens (\DecoderManifestSummary' {creationTime} -> creationTime) (\s@DecoderManifestSummary' {} a -> s {creationTime = a} :: DecoderManifestSummary) Prelude.. Core._Time

-- | The time the decoder manifest was last updated in seconds since epoch
-- (January 1, 1970 at midnight UTC time).
decoderManifestSummary_lastModificationTime :: Lens.Lens' DecoderManifestSummary Prelude.UTCTime
decoderManifestSummary_lastModificationTime = Lens.lens (\DecoderManifestSummary' {lastModificationTime} -> lastModificationTime) (\s@DecoderManifestSummary' {} a -> s {lastModificationTime = a} :: DecoderManifestSummary) Prelude.. Core._Time

instance Core.FromJSON DecoderManifestSummary where
  parseJSON =
    Core.withObject
      "DecoderManifestSummary"
      ( \x ->
          DecoderManifestSummary'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "modelManifestArn")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "creationTime")
            Prelude.<*> (x Core..: "lastModificationTime")
      )

instance Prelude.Hashable DecoderManifestSummary where
  hashWithSalt _salt DecoderManifestSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` modelManifestArn
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` lastModificationTime

instance Prelude.NFData DecoderManifestSummary where
  rnf DecoderManifestSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf modelManifestArn
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf lastModificationTime

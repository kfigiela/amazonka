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
-- Module      : Amazonka.ECR.Types.ImageScanStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECR.Types.ImageScanStatus where

import qualified Amazonka.Core as Core
import Amazonka.ECR.Types.ScanStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The current status of an image scan.
--
-- /See:/ 'newImageScanStatus' smart constructor.
data ImageScanStatus = ImageScanStatus'
  { -- | The current state of an image scan.
    status :: Prelude.Maybe ScanStatus,
    -- | The description of the image scan status.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageScanStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'imageScanStatus_status' - The current state of an image scan.
--
-- 'description', 'imageScanStatus_description' - The description of the image scan status.
newImageScanStatus ::
  ImageScanStatus
newImageScanStatus =
  ImageScanStatus'
    { status = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The current state of an image scan.
imageScanStatus_status :: Lens.Lens' ImageScanStatus (Prelude.Maybe ScanStatus)
imageScanStatus_status = Lens.lens (\ImageScanStatus' {status} -> status) (\s@ImageScanStatus' {} a -> s {status = a} :: ImageScanStatus)

-- | The description of the image scan status.
imageScanStatus_description :: Lens.Lens' ImageScanStatus (Prelude.Maybe Prelude.Text)
imageScanStatus_description = Lens.lens (\ImageScanStatus' {description} -> description) (\s@ImageScanStatus' {} a -> s {description = a} :: ImageScanStatus)

instance Core.FromJSON ImageScanStatus where
  parseJSON =
    Core.withObject
      "ImageScanStatus"
      ( \x ->
          ImageScanStatus'
            Prelude.<$> (x Core..:? "status")
            Prelude.<*> (x Core..:? "description")
      )

instance Prelude.Hashable ImageScanStatus where
  hashWithSalt _salt ImageScanStatus' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` description

instance Prelude.NFData ImageScanStatus where
  rnf ImageScanStatus' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf description

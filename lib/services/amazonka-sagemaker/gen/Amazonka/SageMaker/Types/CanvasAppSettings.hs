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
-- Module      : Amazonka.SageMaker.Types.CanvasAppSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.CanvasAppSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.TimeSeriesForecastingSettings

-- | The SageMaker Canvas app settings.
--
-- /See:/ 'newCanvasAppSettings' smart constructor.
data CanvasAppSettings = CanvasAppSettings'
  { -- | Time series forecast settings for the Canvas app.
    timeSeriesForecastingSettings :: Prelude.Maybe TimeSeriesForecastingSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CanvasAppSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeSeriesForecastingSettings', 'canvasAppSettings_timeSeriesForecastingSettings' - Time series forecast settings for the Canvas app.
newCanvasAppSettings ::
  CanvasAppSettings
newCanvasAppSettings =
  CanvasAppSettings'
    { timeSeriesForecastingSettings =
        Prelude.Nothing
    }

-- | Time series forecast settings for the Canvas app.
canvasAppSettings_timeSeriesForecastingSettings :: Lens.Lens' CanvasAppSettings (Prelude.Maybe TimeSeriesForecastingSettings)
canvasAppSettings_timeSeriesForecastingSettings = Lens.lens (\CanvasAppSettings' {timeSeriesForecastingSettings} -> timeSeriesForecastingSettings) (\s@CanvasAppSettings' {} a -> s {timeSeriesForecastingSettings = a} :: CanvasAppSettings)

instance Core.FromJSON CanvasAppSettings where
  parseJSON =
    Core.withObject
      "CanvasAppSettings"
      ( \x ->
          CanvasAppSettings'
            Prelude.<$> (x Core..:? "TimeSeriesForecastingSettings")
      )

instance Prelude.Hashable CanvasAppSettings where
  hashWithSalt _salt CanvasAppSettings' {..} =
    _salt
      `Prelude.hashWithSalt` timeSeriesForecastingSettings

instance Prelude.NFData CanvasAppSettings where
  rnf CanvasAppSettings' {..} =
    Prelude.rnf timeSeriesForecastingSettings

instance Core.ToJSON CanvasAppSettings where
  toJSON CanvasAppSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TimeSeriesForecastingSettings" Core..=)
              Prelude.<$> timeSeriesForecastingSettings
          ]
      )

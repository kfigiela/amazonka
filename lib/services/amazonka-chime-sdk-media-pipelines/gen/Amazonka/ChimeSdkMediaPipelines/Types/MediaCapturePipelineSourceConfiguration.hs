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
-- Module      : Amazonka.ChimeSdkMediaPipelines.Types.MediaCapturePipelineSourceConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMediaPipelines.Types.MediaCapturePipelineSourceConfiguration where

import Amazonka.ChimeSdkMediaPipelines.Types.ChimeSdkMeetingConcatenationConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The source configuration object of a media capture pipeline.
--
-- /See:/ 'newMediaCapturePipelineSourceConfiguration' smart constructor.
data MediaCapturePipelineSourceConfiguration = MediaCapturePipelineSourceConfiguration'
  { -- | The media pipeline ARN in the configuration object of a media capture
    -- pipeline.
    mediaPipelineArn :: Core.Sensitive Prelude.Text,
    -- | The meeting configuration settings in a media capture pipeline
    -- configuration object.
    chimeSdkMeetingConfiguration :: ChimeSdkMeetingConcatenationConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MediaCapturePipelineSourceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaPipelineArn', 'mediaCapturePipelineSourceConfiguration_mediaPipelineArn' - The media pipeline ARN in the configuration object of a media capture
-- pipeline.
--
-- 'chimeSdkMeetingConfiguration', 'mediaCapturePipelineSourceConfiguration_chimeSdkMeetingConfiguration' - The meeting configuration settings in a media capture pipeline
-- configuration object.
newMediaCapturePipelineSourceConfiguration ::
  -- | 'mediaPipelineArn'
  Prelude.Text ->
  -- | 'chimeSdkMeetingConfiguration'
  ChimeSdkMeetingConcatenationConfiguration ->
  MediaCapturePipelineSourceConfiguration
newMediaCapturePipelineSourceConfiguration
  pMediaPipelineArn_
  pChimeSdkMeetingConfiguration_ =
    MediaCapturePipelineSourceConfiguration'
      { mediaPipelineArn =
          Core._Sensitive
            Lens.# pMediaPipelineArn_,
        chimeSdkMeetingConfiguration =
          pChimeSdkMeetingConfiguration_
      }

-- | The media pipeline ARN in the configuration object of a media capture
-- pipeline.
mediaCapturePipelineSourceConfiguration_mediaPipelineArn :: Lens.Lens' MediaCapturePipelineSourceConfiguration Prelude.Text
mediaCapturePipelineSourceConfiguration_mediaPipelineArn = Lens.lens (\MediaCapturePipelineSourceConfiguration' {mediaPipelineArn} -> mediaPipelineArn) (\s@MediaCapturePipelineSourceConfiguration' {} a -> s {mediaPipelineArn = a} :: MediaCapturePipelineSourceConfiguration) Prelude.. Core._Sensitive

-- | The meeting configuration settings in a media capture pipeline
-- configuration object.
mediaCapturePipelineSourceConfiguration_chimeSdkMeetingConfiguration :: Lens.Lens' MediaCapturePipelineSourceConfiguration ChimeSdkMeetingConcatenationConfiguration
mediaCapturePipelineSourceConfiguration_chimeSdkMeetingConfiguration = Lens.lens (\MediaCapturePipelineSourceConfiguration' {chimeSdkMeetingConfiguration} -> chimeSdkMeetingConfiguration) (\s@MediaCapturePipelineSourceConfiguration' {} a -> s {chimeSdkMeetingConfiguration = a} :: MediaCapturePipelineSourceConfiguration)

instance
  Core.FromJSON
    MediaCapturePipelineSourceConfiguration
  where
  parseJSON =
    Core.withObject
      "MediaCapturePipelineSourceConfiguration"
      ( \x ->
          MediaCapturePipelineSourceConfiguration'
            Prelude.<$> (x Core..: "MediaPipelineArn")
            Prelude.<*> (x Core..: "ChimeSdkMeetingConfiguration")
      )

instance
  Prelude.Hashable
    MediaCapturePipelineSourceConfiguration
  where
  hashWithSalt
    _salt
    MediaCapturePipelineSourceConfiguration' {..} =
      _salt `Prelude.hashWithSalt` mediaPipelineArn
        `Prelude.hashWithSalt` chimeSdkMeetingConfiguration

instance
  Prelude.NFData
    MediaCapturePipelineSourceConfiguration
  where
  rnf MediaCapturePipelineSourceConfiguration' {..} =
    Prelude.rnf mediaPipelineArn
      `Prelude.seq` Prelude.rnf chimeSdkMeetingConfiguration

instance
  Core.ToJSON
    MediaCapturePipelineSourceConfiguration
  where
  toJSON MediaCapturePipelineSourceConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("MediaPipelineArn" Core..= mediaPipelineArn),
            Prelude.Just
              ( "ChimeSdkMeetingConfiguration"
                  Core..= chimeSdkMeetingConfiguration
              )
          ]
      )

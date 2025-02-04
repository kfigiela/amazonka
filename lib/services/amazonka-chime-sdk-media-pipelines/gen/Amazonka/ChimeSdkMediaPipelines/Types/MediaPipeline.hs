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
-- Module      : Amazonka.ChimeSdkMediaPipelines.Types.MediaPipeline
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMediaPipelines.Types.MediaPipeline where

import Amazonka.ChimeSdkMediaPipelines.Types.MediaCapturePipeline
import Amazonka.ChimeSdkMediaPipelines.Types.MediaConcatenationPipeline
import Amazonka.ChimeSdkMediaPipelines.Types.MediaLiveConnectorPipeline
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A pipeline consisting of a media capture, media concatenation, or
-- live-streaming pipeline.
--
-- /See:/ 'newMediaPipeline' smart constructor.
data MediaPipeline = MediaPipeline'
  { -- | The media concatenation pipeline in a media pipeline.
    mediaConcatenationPipeline :: Prelude.Maybe MediaConcatenationPipeline,
    -- | A pipeline that enables users to capture audio and video.
    mediaCapturePipeline :: Prelude.Maybe MediaCapturePipeline,
    -- | The connector pipeline of the media pipeline.
    mediaLiveConnectorPipeline :: Prelude.Maybe MediaLiveConnectorPipeline
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MediaPipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaConcatenationPipeline', 'mediaPipeline_mediaConcatenationPipeline' - The media concatenation pipeline in a media pipeline.
--
-- 'mediaCapturePipeline', 'mediaPipeline_mediaCapturePipeline' - A pipeline that enables users to capture audio and video.
--
-- 'mediaLiveConnectorPipeline', 'mediaPipeline_mediaLiveConnectorPipeline' - The connector pipeline of the media pipeline.
newMediaPipeline ::
  MediaPipeline
newMediaPipeline =
  MediaPipeline'
    { mediaConcatenationPipeline =
        Prelude.Nothing,
      mediaCapturePipeline = Prelude.Nothing,
      mediaLiveConnectorPipeline = Prelude.Nothing
    }

-- | The media concatenation pipeline in a media pipeline.
mediaPipeline_mediaConcatenationPipeline :: Lens.Lens' MediaPipeline (Prelude.Maybe MediaConcatenationPipeline)
mediaPipeline_mediaConcatenationPipeline = Lens.lens (\MediaPipeline' {mediaConcatenationPipeline} -> mediaConcatenationPipeline) (\s@MediaPipeline' {} a -> s {mediaConcatenationPipeline = a} :: MediaPipeline)

-- | A pipeline that enables users to capture audio and video.
mediaPipeline_mediaCapturePipeline :: Lens.Lens' MediaPipeline (Prelude.Maybe MediaCapturePipeline)
mediaPipeline_mediaCapturePipeline = Lens.lens (\MediaPipeline' {mediaCapturePipeline} -> mediaCapturePipeline) (\s@MediaPipeline' {} a -> s {mediaCapturePipeline = a} :: MediaPipeline)

-- | The connector pipeline of the media pipeline.
mediaPipeline_mediaLiveConnectorPipeline :: Lens.Lens' MediaPipeline (Prelude.Maybe MediaLiveConnectorPipeline)
mediaPipeline_mediaLiveConnectorPipeline = Lens.lens (\MediaPipeline' {mediaLiveConnectorPipeline} -> mediaLiveConnectorPipeline) (\s@MediaPipeline' {} a -> s {mediaLiveConnectorPipeline = a} :: MediaPipeline)

instance Core.FromJSON MediaPipeline where
  parseJSON =
    Core.withObject
      "MediaPipeline"
      ( \x ->
          MediaPipeline'
            Prelude.<$> (x Core..:? "MediaConcatenationPipeline")
            Prelude.<*> (x Core..:? "MediaCapturePipeline")
            Prelude.<*> (x Core..:? "MediaLiveConnectorPipeline")
      )

instance Prelude.Hashable MediaPipeline where
  hashWithSalt _salt MediaPipeline' {..} =
    _salt
      `Prelude.hashWithSalt` mediaConcatenationPipeline
      `Prelude.hashWithSalt` mediaCapturePipeline
      `Prelude.hashWithSalt` mediaLiveConnectorPipeline

instance Prelude.NFData MediaPipeline where
  rnf MediaPipeline' {..} =
    Prelude.rnf mediaConcatenationPipeline
      `Prelude.seq` Prelude.rnf mediaCapturePipeline
      `Prelude.seq` Prelude.rnf mediaLiveConnectorPipeline

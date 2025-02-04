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
-- Module      : Amazonka.ChimeSdkMediaPipelines.Types.ArtifactsConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMediaPipelines.Types.ArtifactsConfiguration where

import Amazonka.ChimeSdkMediaPipelines.Types.AudioArtifactsConfiguration
import Amazonka.ChimeSdkMediaPipelines.Types.CompositedVideoArtifactsConfiguration
import Amazonka.ChimeSdkMediaPipelines.Types.ContentArtifactsConfiguration
import Amazonka.ChimeSdkMediaPipelines.Types.VideoArtifactsConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration for the artifacts.
--
-- /See:/ 'newArtifactsConfiguration' smart constructor.
data ArtifactsConfiguration = ArtifactsConfiguration'
  { -- | Enables video compositing.
    compositedVideo :: Prelude.Maybe CompositedVideoArtifactsConfiguration,
    -- | The configuration for the audio artifacts.
    audio :: AudioArtifactsConfiguration,
    -- | The configuration for the video artifacts.
    video :: VideoArtifactsConfiguration,
    -- | The configuration for the content artifacts.
    content :: ContentArtifactsConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ArtifactsConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compositedVideo', 'artifactsConfiguration_compositedVideo' - Enables video compositing.
--
-- 'audio', 'artifactsConfiguration_audio' - The configuration for the audio artifacts.
--
-- 'video', 'artifactsConfiguration_video' - The configuration for the video artifacts.
--
-- 'content', 'artifactsConfiguration_content' - The configuration for the content artifacts.
newArtifactsConfiguration ::
  -- | 'audio'
  AudioArtifactsConfiguration ->
  -- | 'video'
  VideoArtifactsConfiguration ->
  -- | 'content'
  ContentArtifactsConfiguration ->
  ArtifactsConfiguration
newArtifactsConfiguration pAudio_ pVideo_ pContent_ =
  ArtifactsConfiguration'
    { compositedVideo =
        Prelude.Nothing,
      audio = pAudio_,
      video = pVideo_,
      content = pContent_
    }

-- | Enables video compositing.
artifactsConfiguration_compositedVideo :: Lens.Lens' ArtifactsConfiguration (Prelude.Maybe CompositedVideoArtifactsConfiguration)
artifactsConfiguration_compositedVideo = Lens.lens (\ArtifactsConfiguration' {compositedVideo} -> compositedVideo) (\s@ArtifactsConfiguration' {} a -> s {compositedVideo = a} :: ArtifactsConfiguration)

-- | The configuration for the audio artifacts.
artifactsConfiguration_audio :: Lens.Lens' ArtifactsConfiguration AudioArtifactsConfiguration
artifactsConfiguration_audio = Lens.lens (\ArtifactsConfiguration' {audio} -> audio) (\s@ArtifactsConfiguration' {} a -> s {audio = a} :: ArtifactsConfiguration)

-- | The configuration for the video artifacts.
artifactsConfiguration_video :: Lens.Lens' ArtifactsConfiguration VideoArtifactsConfiguration
artifactsConfiguration_video = Lens.lens (\ArtifactsConfiguration' {video} -> video) (\s@ArtifactsConfiguration' {} a -> s {video = a} :: ArtifactsConfiguration)

-- | The configuration for the content artifacts.
artifactsConfiguration_content :: Lens.Lens' ArtifactsConfiguration ContentArtifactsConfiguration
artifactsConfiguration_content = Lens.lens (\ArtifactsConfiguration' {content} -> content) (\s@ArtifactsConfiguration' {} a -> s {content = a} :: ArtifactsConfiguration)

instance Core.FromJSON ArtifactsConfiguration where
  parseJSON =
    Core.withObject
      "ArtifactsConfiguration"
      ( \x ->
          ArtifactsConfiguration'
            Prelude.<$> (x Core..:? "CompositedVideo")
            Prelude.<*> (x Core..: "Audio")
            Prelude.<*> (x Core..: "Video")
            Prelude.<*> (x Core..: "Content")
      )

instance Prelude.Hashable ArtifactsConfiguration where
  hashWithSalt _salt ArtifactsConfiguration' {..} =
    _salt `Prelude.hashWithSalt` compositedVideo
      `Prelude.hashWithSalt` audio
      `Prelude.hashWithSalt` video
      `Prelude.hashWithSalt` content

instance Prelude.NFData ArtifactsConfiguration where
  rnf ArtifactsConfiguration' {..} =
    Prelude.rnf compositedVideo
      `Prelude.seq` Prelude.rnf audio
      `Prelude.seq` Prelude.rnf video
      `Prelude.seq` Prelude.rnf content

instance Core.ToJSON ArtifactsConfiguration where
  toJSON ArtifactsConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CompositedVideo" Core..=)
              Prelude.<$> compositedVideo,
            Prelude.Just ("Audio" Core..= audio),
            Prelude.Just ("Video" Core..= video),
            Prelude.Just ("Content" Core..= content)
          ]
      )

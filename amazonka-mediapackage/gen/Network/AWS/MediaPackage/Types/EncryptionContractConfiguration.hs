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
-- Module      : Network.AWS.MediaPackage.Types.EncryptionContractConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.EncryptionContractConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackage.Types.PresetSpeke20Audio
import Network.AWS.MediaPackage.Types.PresetSpeke20Video
import qualified Network.AWS.Prelude as Prelude

-- | Use encryptionContractConfiguration to configure one or more content
-- encryption keys for your endpoints that use SPEKE 2.0. The encryption
-- contract defines which content keys are used to encrypt the audio and
-- video tracks in your stream. To configure the encryption contract,
-- specify which audio and video encryption presets to use. Note the
-- following considerations when using encryptionContractConfiguration:
-- encryptionContractConfiguration can be used for DASH or CMAF endpoints
-- that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification. You
-- must disable key rotation for this endpoint by setting
-- keyRotationIntervalSeconds to 0.
--
-- /See:/ 'newEncryptionContractConfiguration' smart constructor.
data EncryptionContractConfiguration = EncryptionContractConfiguration'
  { -- | A collection of audio encryption presets.
    presetSpeke20Audio :: PresetSpeke20Audio,
    -- | A collection of video encryption presets.
    presetSpeke20Video :: PresetSpeke20Video
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncryptionContractConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'presetSpeke20Audio', 'encryptionContractConfiguration_presetSpeke20Audio' - A collection of audio encryption presets.
--
-- 'presetSpeke20Video', 'encryptionContractConfiguration_presetSpeke20Video' - A collection of video encryption presets.
newEncryptionContractConfiguration ::
  -- | 'presetSpeke20Audio'
  PresetSpeke20Audio ->
  -- | 'presetSpeke20Video'
  PresetSpeke20Video ->
  EncryptionContractConfiguration
newEncryptionContractConfiguration
  pPresetSpeke20Audio_
  pPresetSpeke20Video_ =
    EncryptionContractConfiguration'
      { presetSpeke20Audio =
          pPresetSpeke20Audio_,
        presetSpeke20Video = pPresetSpeke20Video_
      }

-- | A collection of audio encryption presets.
encryptionContractConfiguration_presetSpeke20Audio :: Lens.Lens' EncryptionContractConfiguration PresetSpeke20Audio
encryptionContractConfiguration_presetSpeke20Audio = Lens.lens (\EncryptionContractConfiguration' {presetSpeke20Audio} -> presetSpeke20Audio) (\s@EncryptionContractConfiguration' {} a -> s {presetSpeke20Audio = a} :: EncryptionContractConfiguration)

-- | A collection of video encryption presets.
encryptionContractConfiguration_presetSpeke20Video :: Lens.Lens' EncryptionContractConfiguration PresetSpeke20Video
encryptionContractConfiguration_presetSpeke20Video = Lens.lens (\EncryptionContractConfiguration' {presetSpeke20Video} -> presetSpeke20Video) (\s@EncryptionContractConfiguration' {} a -> s {presetSpeke20Video = a} :: EncryptionContractConfiguration)

instance
  Core.FromJSON
    EncryptionContractConfiguration
  where
  parseJSON =
    Core.withObject
      "EncryptionContractConfiguration"
      ( \x ->
          EncryptionContractConfiguration'
            Prelude.<$> (x Core..: "presetSpeke20Audio")
            Prelude.<*> (x Core..: "presetSpeke20Video")
      )

instance
  Prelude.Hashable
    EncryptionContractConfiguration

instance
  Prelude.NFData
    EncryptionContractConfiguration

instance Core.ToJSON EncryptionContractConfiguration where
  toJSON EncryptionContractConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("presetSpeke20Audio" Core..= presetSpeke20Audio),
            Prelude.Just
              ("presetSpeke20Video" Core..= presetSpeke20Video)
          ]
      )

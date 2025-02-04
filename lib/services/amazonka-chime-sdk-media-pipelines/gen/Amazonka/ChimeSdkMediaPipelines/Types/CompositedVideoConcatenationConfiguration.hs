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
-- Module      : Amazonka.ChimeSdkMediaPipelines.Types.CompositedVideoConcatenationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMediaPipelines.Types.CompositedVideoConcatenationConfiguration where

import Amazonka.ChimeSdkMediaPipelines.Types.ArtifactsConcatenationState
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The composited video configuration object for a specified media
-- pipeline. @SourceType@ must be @ChimeSdkMeeting@.
--
-- /See:/ 'newCompositedVideoConcatenationConfiguration' smart constructor.
data CompositedVideoConcatenationConfiguration = CompositedVideoConcatenationConfiguration'
  { -- | Enables or disables the configuration object.
    state :: ArtifactsConcatenationState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompositedVideoConcatenationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'compositedVideoConcatenationConfiguration_state' - Enables or disables the configuration object.
newCompositedVideoConcatenationConfiguration ::
  -- | 'state'
  ArtifactsConcatenationState ->
  CompositedVideoConcatenationConfiguration
newCompositedVideoConcatenationConfiguration pState_ =
  CompositedVideoConcatenationConfiguration'
    { state =
        pState_
    }

-- | Enables or disables the configuration object.
compositedVideoConcatenationConfiguration_state :: Lens.Lens' CompositedVideoConcatenationConfiguration ArtifactsConcatenationState
compositedVideoConcatenationConfiguration_state = Lens.lens (\CompositedVideoConcatenationConfiguration' {state} -> state) (\s@CompositedVideoConcatenationConfiguration' {} a -> s {state = a} :: CompositedVideoConcatenationConfiguration)

instance
  Core.FromJSON
    CompositedVideoConcatenationConfiguration
  where
  parseJSON =
    Core.withObject
      "CompositedVideoConcatenationConfiguration"
      ( \x ->
          CompositedVideoConcatenationConfiguration'
            Prelude.<$> (x Core..: "State")
      )

instance
  Prelude.Hashable
    CompositedVideoConcatenationConfiguration
  where
  hashWithSalt
    _salt
    CompositedVideoConcatenationConfiguration' {..} =
      _salt `Prelude.hashWithSalt` state

instance
  Prelude.NFData
    CompositedVideoConcatenationConfiguration
  where
  rnf CompositedVideoConcatenationConfiguration' {..} =
    Prelude.rnf state

instance
  Core.ToJSON
    CompositedVideoConcatenationConfiguration
  where
  toJSON CompositedVideoConcatenationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("State" Core..= state)]
      )

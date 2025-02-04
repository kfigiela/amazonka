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
-- Module      : Amazonka.GamesParks.Types.GameSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GamesParks.Types.GameSummary where

import qualified Amazonka.Core as Core
import Amazonka.GamesParks.Types.GameState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The summary of the properties of a game.
--
-- /See:/ 'newGameSummary' smart constructor.
data GameSummary = GameSummary'
  { -- | The tags associated with the game.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the game.
    name :: Prelude.Maybe Prelude.Text,
    -- | The state of the game.
    state :: Prelude.Maybe GameState,
    -- | The description of the game.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GameSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'gameSummary_tags' - The tags associated with the game.
--
-- 'name', 'gameSummary_name' - The name of the game.
--
-- 'state', 'gameSummary_state' - The state of the game.
--
-- 'description', 'gameSummary_description' - The description of the game.
newGameSummary ::
  GameSummary
newGameSummary =
  GameSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      state = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The tags associated with the game.
gameSummary_tags :: Lens.Lens' GameSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
gameSummary_tags = Lens.lens (\GameSummary' {tags} -> tags) (\s@GameSummary' {} a -> s {tags = a} :: GameSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the game.
gameSummary_name :: Lens.Lens' GameSummary (Prelude.Maybe Prelude.Text)
gameSummary_name = Lens.lens (\GameSummary' {name} -> name) (\s@GameSummary' {} a -> s {name = a} :: GameSummary)

-- | The state of the game.
gameSummary_state :: Lens.Lens' GameSummary (Prelude.Maybe GameState)
gameSummary_state = Lens.lens (\GameSummary' {state} -> state) (\s@GameSummary' {} a -> s {state = a} :: GameSummary)

-- | The description of the game.
gameSummary_description :: Lens.Lens' GameSummary (Prelude.Maybe Prelude.Text)
gameSummary_description = Lens.lens (\GameSummary' {description} -> description) (\s@GameSummary' {} a -> s {description = a} :: GameSummary)

instance Core.FromJSON GameSummary where
  parseJSON =
    Core.withObject
      "GameSummary"
      ( \x ->
          GameSummary'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable GameSummary where
  hashWithSalt _salt GameSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` description

instance Prelude.NFData GameSummary where
  rnf GameSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf description

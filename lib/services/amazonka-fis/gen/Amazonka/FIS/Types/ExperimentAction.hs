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
-- Module      : Amazonka.FIS.Types.ExperimentAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FIS.Types.ExperimentAction where

import qualified Amazonka.Core as Core
import Amazonka.FIS.Types.ExperimentActionState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the action for an experiment.
--
-- /See:/ 'newExperimentAction' smart constructor.
data ExperimentAction = ExperimentAction'
  { -- | The name of the action that must be completed before this action starts.
    startAfter :: Prelude.Maybe [Prelude.Text],
    -- | The state of the action.
    state :: Prelude.Maybe ExperimentActionState,
    -- | The targets for the action.
    targets :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The description for the action.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the action.
    actionId :: Prelude.Maybe Prelude.Text,
    -- | The parameters for the action.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExperimentAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startAfter', 'experimentAction_startAfter' - The name of the action that must be completed before this action starts.
--
-- 'state', 'experimentAction_state' - The state of the action.
--
-- 'targets', 'experimentAction_targets' - The targets for the action.
--
-- 'description', 'experimentAction_description' - The description for the action.
--
-- 'actionId', 'experimentAction_actionId' - The ID of the action.
--
-- 'parameters', 'experimentAction_parameters' - The parameters for the action.
newExperimentAction ::
  ExperimentAction
newExperimentAction =
  ExperimentAction'
    { startAfter = Prelude.Nothing,
      state = Prelude.Nothing,
      targets = Prelude.Nothing,
      description = Prelude.Nothing,
      actionId = Prelude.Nothing,
      parameters = Prelude.Nothing
    }

-- | The name of the action that must be completed before this action starts.
experimentAction_startAfter :: Lens.Lens' ExperimentAction (Prelude.Maybe [Prelude.Text])
experimentAction_startAfter = Lens.lens (\ExperimentAction' {startAfter} -> startAfter) (\s@ExperimentAction' {} a -> s {startAfter = a} :: ExperimentAction) Prelude.. Lens.mapping Lens.coerced

-- | The state of the action.
experimentAction_state :: Lens.Lens' ExperimentAction (Prelude.Maybe ExperimentActionState)
experimentAction_state = Lens.lens (\ExperimentAction' {state} -> state) (\s@ExperimentAction' {} a -> s {state = a} :: ExperimentAction)

-- | The targets for the action.
experimentAction_targets :: Lens.Lens' ExperimentAction (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experimentAction_targets = Lens.lens (\ExperimentAction' {targets} -> targets) (\s@ExperimentAction' {} a -> s {targets = a} :: ExperimentAction) Prelude.. Lens.mapping Lens.coerced

-- | The description for the action.
experimentAction_description :: Lens.Lens' ExperimentAction (Prelude.Maybe Prelude.Text)
experimentAction_description = Lens.lens (\ExperimentAction' {description} -> description) (\s@ExperimentAction' {} a -> s {description = a} :: ExperimentAction)

-- | The ID of the action.
experimentAction_actionId :: Lens.Lens' ExperimentAction (Prelude.Maybe Prelude.Text)
experimentAction_actionId = Lens.lens (\ExperimentAction' {actionId} -> actionId) (\s@ExperimentAction' {} a -> s {actionId = a} :: ExperimentAction)

-- | The parameters for the action.
experimentAction_parameters :: Lens.Lens' ExperimentAction (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experimentAction_parameters = Lens.lens (\ExperimentAction' {parameters} -> parameters) (\s@ExperimentAction' {} a -> s {parameters = a} :: ExperimentAction) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ExperimentAction where
  parseJSON =
    Core.withObject
      "ExperimentAction"
      ( \x ->
          ExperimentAction'
            Prelude.<$> (x Core..:? "startAfter" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "targets" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "actionId")
            Prelude.<*> (x Core..:? "parameters" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ExperimentAction where
  hashWithSalt _salt ExperimentAction' {..} =
    _salt `Prelude.hashWithSalt` startAfter
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` targets
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` actionId
      `Prelude.hashWithSalt` parameters

instance Prelude.NFData ExperimentAction where
  rnf ExperimentAction' {..} =
    Prelude.rnf startAfter
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf targets
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf actionId
      `Prelude.seq` Prelude.rnf parameters

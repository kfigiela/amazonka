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
-- Module      : Amazonka.M2.Types.ScriptBatchJobDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.M2.Types.ScriptBatchJobDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A batch job definition contained in a script.
--
-- /See:/ 'newScriptBatchJobDefinition' smart constructor.
data ScriptBatchJobDefinition = ScriptBatchJobDefinition'
  { -- | The name of the script containing the batch job definition.
    scriptName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScriptBatchJobDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scriptName', 'scriptBatchJobDefinition_scriptName' - The name of the script containing the batch job definition.
newScriptBatchJobDefinition ::
  -- | 'scriptName'
  Prelude.Text ->
  ScriptBatchJobDefinition
newScriptBatchJobDefinition pScriptName_ =
  ScriptBatchJobDefinition'
    { scriptName =
        pScriptName_
    }

-- | The name of the script containing the batch job definition.
scriptBatchJobDefinition_scriptName :: Lens.Lens' ScriptBatchJobDefinition Prelude.Text
scriptBatchJobDefinition_scriptName = Lens.lens (\ScriptBatchJobDefinition' {scriptName} -> scriptName) (\s@ScriptBatchJobDefinition' {} a -> s {scriptName = a} :: ScriptBatchJobDefinition)

instance Core.FromJSON ScriptBatchJobDefinition where
  parseJSON =
    Core.withObject
      "ScriptBatchJobDefinition"
      ( \x ->
          ScriptBatchJobDefinition'
            Prelude.<$> (x Core..: "scriptName")
      )

instance Prelude.Hashable ScriptBatchJobDefinition where
  hashWithSalt _salt ScriptBatchJobDefinition' {..} =
    _salt `Prelude.hashWithSalt` scriptName

instance Prelude.NFData ScriptBatchJobDefinition where
  rnf ScriptBatchJobDefinition' {..} =
    Prelude.rnf scriptName
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
-- Module      : Amazonka.Greengrass.Types.FunctionDefaultConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Greengrass.Types.FunctionDefaultConfig where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types.FunctionDefaultExecutionConfig
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The default configuration that applies to all Lambda functions in the
-- group. Individual Lambda functions can override these settings.
--
-- /See:/ 'newFunctionDefaultConfig' smart constructor.
data FunctionDefaultConfig = FunctionDefaultConfig'
  { execution :: Prelude.Maybe FunctionDefaultExecutionConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FunctionDefaultConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'execution', 'functionDefaultConfig_execution' - Undocumented member.
newFunctionDefaultConfig ::
  FunctionDefaultConfig
newFunctionDefaultConfig =
  FunctionDefaultConfig' {execution = Prelude.Nothing}

-- | Undocumented member.
functionDefaultConfig_execution :: Lens.Lens' FunctionDefaultConfig (Prelude.Maybe FunctionDefaultExecutionConfig)
functionDefaultConfig_execution = Lens.lens (\FunctionDefaultConfig' {execution} -> execution) (\s@FunctionDefaultConfig' {} a -> s {execution = a} :: FunctionDefaultConfig)

instance Core.FromJSON FunctionDefaultConfig where
  parseJSON =
    Core.withObject
      "FunctionDefaultConfig"
      ( \x ->
          FunctionDefaultConfig'
            Prelude.<$> (x Core..:? "Execution")
      )

instance Prelude.Hashable FunctionDefaultConfig where
  hashWithSalt _salt FunctionDefaultConfig' {..} =
    _salt `Prelude.hashWithSalt` execution

instance Prelude.NFData FunctionDefaultConfig where
  rnf FunctionDefaultConfig' {..} =
    Prelude.rnf execution

instance Core.ToJSON FunctionDefaultConfig where
  toJSON FunctionDefaultConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Execution" Core..=) Prelude.<$> execution]
      )

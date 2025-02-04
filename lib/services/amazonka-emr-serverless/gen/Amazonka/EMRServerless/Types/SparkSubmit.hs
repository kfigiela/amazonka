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
-- Module      : Amazonka.EMRServerless.Types.SparkSubmit
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRServerless.Types.SparkSubmit where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configurations for the Spark submit job driver.
--
-- /See:/ 'newSparkSubmit' smart constructor.
data SparkSubmit = SparkSubmit'
  { -- | The arguments for the Spark submit job run.
    entryPointArguments :: Prelude.Maybe [Core.Sensitive Prelude.Text],
    -- | The parameters for the Spark submit job run.
    sparkSubmitParameters :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The entry point for the Spark submit job run.
    entryPoint :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SparkSubmit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entryPointArguments', 'sparkSubmit_entryPointArguments' - The arguments for the Spark submit job run.
--
-- 'sparkSubmitParameters', 'sparkSubmit_sparkSubmitParameters' - The parameters for the Spark submit job run.
--
-- 'entryPoint', 'sparkSubmit_entryPoint' - The entry point for the Spark submit job run.
newSparkSubmit ::
  -- | 'entryPoint'
  Prelude.Text ->
  SparkSubmit
newSparkSubmit pEntryPoint_ =
  SparkSubmit'
    { entryPointArguments = Prelude.Nothing,
      sparkSubmitParameters = Prelude.Nothing,
      entryPoint = Core._Sensitive Lens.# pEntryPoint_
    }

-- | The arguments for the Spark submit job run.
sparkSubmit_entryPointArguments :: Lens.Lens' SparkSubmit (Prelude.Maybe [Prelude.Text])
sparkSubmit_entryPointArguments = Lens.lens (\SparkSubmit' {entryPointArguments} -> entryPointArguments) (\s@SparkSubmit' {} a -> s {entryPointArguments = a} :: SparkSubmit) Prelude.. Lens.mapping Lens.coerced

-- | The parameters for the Spark submit job run.
sparkSubmit_sparkSubmitParameters :: Lens.Lens' SparkSubmit (Prelude.Maybe Prelude.Text)
sparkSubmit_sparkSubmitParameters = Lens.lens (\SparkSubmit' {sparkSubmitParameters} -> sparkSubmitParameters) (\s@SparkSubmit' {} a -> s {sparkSubmitParameters = a} :: SparkSubmit) Prelude.. Lens.mapping Core._Sensitive

-- | The entry point for the Spark submit job run.
sparkSubmit_entryPoint :: Lens.Lens' SparkSubmit Prelude.Text
sparkSubmit_entryPoint = Lens.lens (\SparkSubmit' {entryPoint} -> entryPoint) (\s@SparkSubmit' {} a -> s {entryPoint = a} :: SparkSubmit) Prelude.. Core._Sensitive

instance Core.FromJSON SparkSubmit where
  parseJSON =
    Core.withObject
      "SparkSubmit"
      ( \x ->
          SparkSubmit'
            Prelude.<$> ( x Core..:? "entryPointArguments"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "sparkSubmitParameters")
            Prelude.<*> (x Core..: "entryPoint")
      )

instance Prelude.Hashable SparkSubmit where
  hashWithSalt _salt SparkSubmit' {..} =
    _salt `Prelude.hashWithSalt` entryPointArguments
      `Prelude.hashWithSalt` sparkSubmitParameters
      `Prelude.hashWithSalt` entryPoint

instance Prelude.NFData SparkSubmit where
  rnf SparkSubmit' {..} =
    Prelude.rnf entryPointArguments
      `Prelude.seq` Prelude.rnf sparkSubmitParameters
      `Prelude.seq` Prelude.rnf entryPoint

instance Core.ToJSON SparkSubmit where
  toJSON SparkSubmit' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("entryPointArguments" Core..=)
              Prelude.<$> entryPointArguments,
            ("sparkSubmitParameters" Core..=)
              Prelude.<$> sparkSubmitParameters,
            Prelude.Just ("entryPoint" Core..= entryPoint)
          ]
      )

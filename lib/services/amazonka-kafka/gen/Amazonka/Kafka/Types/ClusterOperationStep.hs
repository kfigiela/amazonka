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
-- Module      : Amazonka.Kafka.Types.ClusterOperationStep
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kafka.Types.ClusterOperationStep where

import qualified Amazonka.Core as Core
import Amazonka.Kafka.Types.ClusterOperationStepInfo
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Step taken during a cluster operation.
--
-- /See:/ 'newClusterOperationStep' smart constructor.
data ClusterOperationStep = ClusterOperationStep'
  { -- | The name of the step.
    stepName :: Prelude.Maybe Prelude.Text,
    -- | Information about the step and its status.
    stepInfo :: Prelude.Maybe ClusterOperationStepInfo
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterOperationStep' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stepName', 'clusterOperationStep_stepName' - The name of the step.
--
-- 'stepInfo', 'clusterOperationStep_stepInfo' - Information about the step and its status.
newClusterOperationStep ::
  ClusterOperationStep
newClusterOperationStep =
  ClusterOperationStep'
    { stepName = Prelude.Nothing,
      stepInfo = Prelude.Nothing
    }

-- | The name of the step.
clusterOperationStep_stepName :: Lens.Lens' ClusterOperationStep (Prelude.Maybe Prelude.Text)
clusterOperationStep_stepName = Lens.lens (\ClusterOperationStep' {stepName} -> stepName) (\s@ClusterOperationStep' {} a -> s {stepName = a} :: ClusterOperationStep)

-- | Information about the step and its status.
clusterOperationStep_stepInfo :: Lens.Lens' ClusterOperationStep (Prelude.Maybe ClusterOperationStepInfo)
clusterOperationStep_stepInfo = Lens.lens (\ClusterOperationStep' {stepInfo} -> stepInfo) (\s@ClusterOperationStep' {} a -> s {stepInfo = a} :: ClusterOperationStep)

instance Core.FromJSON ClusterOperationStep where
  parseJSON =
    Core.withObject
      "ClusterOperationStep"
      ( \x ->
          ClusterOperationStep'
            Prelude.<$> (x Core..:? "stepName")
            Prelude.<*> (x Core..:? "stepInfo")
      )

instance Prelude.Hashable ClusterOperationStep where
  hashWithSalt _salt ClusterOperationStep' {..} =
    _salt `Prelude.hashWithSalt` stepName
      `Prelude.hashWithSalt` stepInfo

instance Prelude.NFData ClusterOperationStep where
  rnf ClusterOperationStep' {..} =
    Prelude.rnf stepName
      `Prelude.seq` Prelude.rnf stepInfo

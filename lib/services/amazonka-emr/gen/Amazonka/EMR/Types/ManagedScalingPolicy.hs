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
-- Module      : Amazonka.EMR.Types.ManagedScalingPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.ManagedScalingPolicy where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types.ComputeLimits
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Managed scaling policy for an Amazon EMR cluster. The policy specifies
-- the limits for resources that can be added or terminated from a cluster.
-- The policy only applies to the core and task nodes. The master node
-- cannot be scaled after initial configuration.
--
-- /See:/ 'newManagedScalingPolicy' smart constructor.
data ManagedScalingPolicy = ManagedScalingPolicy'
  { -- | The EC2 unit limits for a managed scaling policy. The managed scaling
    -- activity of a cluster is not allowed to go above or below these limits.
    -- The limit only applies to the core and task nodes. The master node
    -- cannot be scaled after initial configuration.
    computeLimits :: Prelude.Maybe ComputeLimits
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ManagedScalingPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'computeLimits', 'managedScalingPolicy_computeLimits' - The EC2 unit limits for a managed scaling policy. The managed scaling
-- activity of a cluster is not allowed to go above or below these limits.
-- The limit only applies to the core and task nodes. The master node
-- cannot be scaled after initial configuration.
newManagedScalingPolicy ::
  ManagedScalingPolicy
newManagedScalingPolicy =
  ManagedScalingPolicy'
    { computeLimits =
        Prelude.Nothing
    }

-- | The EC2 unit limits for a managed scaling policy. The managed scaling
-- activity of a cluster is not allowed to go above or below these limits.
-- The limit only applies to the core and task nodes. The master node
-- cannot be scaled after initial configuration.
managedScalingPolicy_computeLimits :: Lens.Lens' ManagedScalingPolicy (Prelude.Maybe ComputeLimits)
managedScalingPolicy_computeLimits = Lens.lens (\ManagedScalingPolicy' {computeLimits} -> computeLimits) (\s@ManagedScalingPolicy' {} a -> s {computeLimits = a} :: ManagedScalingPolicy)

instance Core.FromJSON ManagedScalingPolicy where
  parseJSON =
    Core.withObject
      "ManagedScalingPolicy"
      ( \x ->
          ManagedScalingPolicy'
            Prelude.<$> (x Core..:? "ComputeLimits")
      )

instance Prelude.Hashable ManagedScalingPolicy where
  hashWithSalt _salt ManagedScalingPolicy' {..} =
    _salt `Prelude.hashWithSalt` computeLimits

instance Prelude.NFData ManagedScalingPolicy where
  rnf ManagedScalingPolicy' {..} =
    Prelude.rnf computeLimits

instance Core.ToJSON ManagedScalingPolicy where
  toJSON ManagedScalingPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ComputeLimits" Core..=)
              Prelude.<$> computeLimits
          ]
      )

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
-- Module      : Amazonka.Redshift.Types.ReservedNodeConfigurationOption
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.ReservedNodeConfigurationOption where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal
import Amazonka.Redshift.Types.ReservedNode
import Amazonka.Redshift.Types.ReservedNodeOffering

-- | Details for a reserved-node exchange. Examples include the node type for
-- a reserved node, the price for a node, the node\'s state, and other
-- details.
--
-- /See:/ 'newReservedNodeConfigurationOption' smart constructor.
data ReservedNodeConfigurationOption = ReservedNodeConfigurationOption'
  { -- | The target reserved-node count.
    targetReservedNodeCount :: Prelude.Maybe Prelude.Int,
    sourceReservedNode :: Prelude.Maybe ReservedNode,
    targetReservedNodeOffering :: Prelude.Maybe ReservedNodeOffering
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReservedNodeConfigurationOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetReservedNodeCount', 'reservedNodeConfigurationOption_targetReservedNodeCount' - The target reserved-node count.
--
-- 'sourceReservedNode', 'reservedNodeConfigurationOption_sourceReservedNode' - Undocumented member.
--
-- 'targetReservedNodeOffering', 'reservedNodeConfigurationOption_targetReservedNodeOffering' - Undocumented member.
newReservedNodeConfigurationOption ::
  ReservedNodeConfigurationOption
newReservedNodeConfigurationOption =
  ReservedNodeConfigurationOption'
    { targetReservedNodeCount =
        Prelude.Nothing,
      sourceReservedNode = Prelude.Nothing,
      targetReservedNodeOffering =
        Prelude.Nothing
    }

-- | The target reserved-node count.
reservedNodeConfigurationOption_targetReservedNodeCount :: Lens.Lens' ReservedNodeConfigurationOption (Prelude.Maybe Prelude.Int)
reservedNodeConfigurationOption_targetReservedNodeCount = Lens.lens (\ReservedNodeConfigurationOption' {targetReservedNodeCount} -> targetReservedNodeCount) (\s@ReservedNodeConfigurationOption' {} a -> s {targetReservedNodeCount = a} :: ReservedNodeConfigurationOption)

-- | Undocumented member.
reservedNodeConfigurationOption_sourceReservedNode :: Lens.Lens' ReservedNodeConfigurationOption (Prelude.Maybe ReservedNode)
reservedNodeConfigurationOption_sourceReservedNode = Lens.lens (\ReservedNodeConfigurationOption' {sourceReservedNode} -> sourceReservedNode) (\s@ReservedNodeConfigurationOption' {} a -> s {sourceReservedNode = a} :: ReservedNodeConfigurationOption)

-- | Undocumented member.
reservedNodeConfigurationOption_targetReservedNodeOffering :: Lens.Lens' ReservedNodeConfigurationOption (Prelude.Maybe ReservedNodeOffering)
reservedNodeConfigurationOption_targetReservedNodeOffering = Lens.lens (\ReservedNodeConfigurationOption' {targetReservedNodeOffering} -> targetReservedNodeOffering) (\s@ReservedNodeConfigurationOption' {} a -> s {targetReservedNodeOffering = a} :: ReservedNodeConfigurationOption)

instance Core.FromXML ReservedNodeConfigurationOption where
  parseXML x =
    ReservedNodeConfigurationOption'
      Prelude.<$> (x Core..@? "TargetReservedNodeCount")
      Prelude.<*> (x Core..@? "SourceReservedNode")
      Prelude.<*> (x Core..@? "TargetReservedNodeOffering")

instance
  Prelude.Hashable
    ReservedNodeConfigurationOption
  where
  hashWithSalt
    _salt
    ReservedNodeConfigurationOption' {..} =
      _salt
        `Prelude.hashWithSalt` targetReservedNodeCount
        `Prelude.hashWithSalt` sourceReservedNode
        `Prelude.hashWithSalt` targetReservedNodeOffering

instance
  Prelude.NFData
    ReservedNodeConfigurationOption
  where
  rnf ReservedNodeConfigurationOption' {..} =
    Prelude.rnf targetReservedNodeCount
      `Prelude.seq` Prelude.rnf sourceReservedNode
      `Prelude.seq` Prelude.rnf targetReservedNodeOffering
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
-- Module      : Amazonka.PrivateNetworks.Types.NetworkResourceDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.NetworkResourceDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.PrivateNetworks.Types.NameValuePair
import Amazonka.PrivateNetworks.Types.NetworkResourceDefinitionType

-- | Information about a network resource definition.
--
-- /See:/ 'newNetworkResourceDefinition' smart constructor.
data NetworkResourceDefinition = NetworkResourceDefinition'
  { -- | The options in the network resource definition.
    options :: Prelude.Maybe [NameValuePair],
    -- | The count in the network resource definition.
    count :: Prelude.Natural,
    -- | The type in the network resource definition.
    type' :: NetworkResourceDefinitionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkResourceDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'networkResourceDefinition_options' - The options in the network resource definition.
--
-- 'count', 'networkResourceDefinition_count' - The count in the network resource definition.
--
-- 'type'', 'networkResourceDefinition_type' - The type in the network resource definition.
newNetworkResourceDefinition ::
  -- | 'count'
  Prelude.Natural ->
  -- | 'type''
  NetworkResourceDefinitionType ->
  NetworkResourceDefinition
newNetworkResourceDefinition pCount_ pType_ =
  NetworkResourceDefinition'
    { options =
        Prelude.Nothing,
      count = pCount_,
      type' = pType_
    }

-- | The options in the network resource definition.
networkResourceDefinition_options :: Lens.Lens' NetworkResourceDefinition (Prelude.Maybe [NameValuePair])
networkResourceDefinition_options = Lens.lens (\NetworkResourceDefinition' {options} -> options) (\s@NetworkResourceDefinition' {} a -> s {options = a} :: NetworkResourceDefinition) Prelude.. Lens.mapping Lens.coerced

-- | The count in the network resource definition.
networkResourceDefinition_count :: Lens.Lens' NetworkResourceDefinition Prelude.Natural
networkResourceDefinition_count = Lens.lens (\NetworkResourceDefinition' {count} -> count) (\s@NetworkResourceDefinition' {} a -> s {count = a} :: NetworkResourceDefinition)

-- | The type in the network resource definition.
networkResourceDefinition_type :: Lens.Lens' NetworkResourceDefinition NetworkResourceDefinitionType
networkResourceDefinition_type = Lens.lens (\NetworkResourceDefinition' {type'} -> type') (\s@NetworkResourceDefinition' {} a -> s {type' = a} :: NetworkResourceDefinition)

instance Core.FromJSON NetworkResourceDefinition where
  parseJSON =
    Core.withObject
      "NetworkResourceDefinition"
      ( \x ->
          NetworkResourceDefinition'
            Prelude.<$> (x Core..:? "options" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "count")
            Prelude.<*> (x Core..: "type")
      )

instance Prelude.Hashable NetworkResourceDefinition where
  hashWithSalt _salt NetworkResourceDefinition' {..} =
    _salt `Prelude.hashWithSalt` options
      `Prelude.hashWithSalt` count
      `Prelude.hashWithSalt` type'

instance Prelude.NFData NetworkResourceDefinition where
  rnf NetworkResourceDefinition' {..} =
    Prelude.rnf options
      `Prelude.seq` Prelude.rnf count
      `Prelude.seq` Prelude.rnf type'

instance Core.ToJSON NetworkResourceDefinition where
  toJSON NetworkResourceDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("options" Core..=) Prelude.<$> options,
            Prelude.Just ("count" Core..= count),
            Prelude.Just ("type" Core..= type')
          ]
      )

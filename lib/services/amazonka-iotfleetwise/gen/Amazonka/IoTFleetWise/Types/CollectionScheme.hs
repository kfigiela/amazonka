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
-- Module      : Amazonka.IoTFleetWise.Types.CollectionScheme
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.CollectionScheme where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types.ConditionBasedCollectionScheme
import Amazonka.IoTFleetWise.Types.TimeBasedCollectionScheme
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies what data to collect and how often or when to collect it.
--
-- /See:/ 'newCollectionScheme' smart constructor.
data CollectionScheme = CollectionScheme'
  { -- | Information about a collection scheme that uses a time period to decide
    -- how often to collect data.
    timeBasedCollectionScheme :: Prelude.Maybe TimeBasedCollectionScheme,
    -- | Information about a collection scheme that uses a simple logical
    -- expression to recognize what data to collect.
    conditionBasedCollectionScheme :: Prelude.Maybe ConditionBasedCollectionScheme
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CollectionScheme' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeBasedCollectionScheme', 'collectionScheme_timeBasedCollectionScheme' - Information about a collection scheme that uses a time period to decide
-- how often to collect data.
--
-- 'conditionBasedCollectionScheme', 'collectionScheme_conditionBasedCollectionScheme' - Information about a collection scheme that uses a simple logical
-- expression to recognize what data to collect.
newCollectionScheme ::
  CollectionScheme
newCollectionScheme =
  CollectionScheme'
    { timeBasedCollectionScheme =
        Prelude.Nothing,
      conditionBasedCollectionScheme = Prelude.Nothing
    }

-- | Information about a collection scheme that uses a time period to decide
-- how often to collect data.
collectionScheme_timeBasedCollectionScheme :: Lens.Lens' CollectionScheme (Prelude.Maybe TimeBasedCollectionScheme)
collectionScheme_timeBasedCollectionScheme = Lens.lens (\CollectionScheme' {timeBasedCollectionScheme} -> timeBasedCollectionScheme) (\s@CollectionScheme' {} a -> s {timeBasedCollectionScheme = a} :: CollectionScheme)

-- | Information about a collection scheme that uses a simple logical
-- expression to recognize what data to collect.
collectionScheme_conditionBasedCollectionScheme :: Lens.Lens' CollectionScheme (Prelude.Maybe ConditionBasedCollectionScheme)
collectionScheme_conditionBasedCollectionScheme = Lens.lens (\CollectionScheme' {conditionBasedCollectionScheme} -> conditionBasedCollectionScheme) (\s@CollectionScheme' {} a -> s {conditionBasedCollectionScheme = a} :: CollectionScheme)

instance Core.FromJSON CollectionScheme where
  parseJSON =
    Core.withObject
      "CollectionScheme"
      ( \x ->
          CollectionScheme'
            Prelude.<$> (x Core..:? "timeBasedCollectionScheme")
            Prelude.<*> (x Core..:? "conditionBasedCollectionScheme")
      )

instance Prelude.Hashable CollectionScheme where
  hashWithSalt _salt CollectionScheme' {..} =
    _salt
      `Prelude.hashWithSalt` timeBasedCollectionScheme
      `Prelude.hashWithSalt` conditionBasedCollectionScheme

instance Prelude.NFData CollectionScheme where
  rnf CollectionScheme' {..} =
    Prelude.rnf timeBasedCollectionScheme
      `Prelude.seq` Prelude.rnf conditionBasedCollectionScheme

instance Core.ToJSON CollectionScheme where
  toJSON CollectionScheme' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("timeBasedCollectionScheme" Core..=)
              Prelude.<$> timeBasedCollectionScheme,
            ("conditionBasedCollectionScheme" Core..=)
              Prelude.<$> conditionBasedCollectionScheme
          ]
      )

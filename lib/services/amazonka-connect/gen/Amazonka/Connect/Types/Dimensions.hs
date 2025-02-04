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
-- Module      : Amazonka.Connect.Types.Dimensions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.Dimensions where

import Amazonka.Connect.Types.Channel
import Amazonka.Connect.Types.QueueReference
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the dimensions for a set of metrics.
--
-- /See:/ 'newDimensions' smart constructor.
data Dimensions = Dimensions'
  { -- | The channel used for grouping and filters.
    channel :: Prelude.Maybe Channel,
    -- | Information about the queue for which metrics are returned.
    queue :: Prelude.Maybe QueueReference
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Dimensions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channel', 'dimensions_channel' - The channel used for grouping and filters.
--
-- 'queue', 'dimensions_queue' - Information about the queue for which metrics are returned.
newDimensions ::
  Dimensions
newDimensions =
  Dimensions'
    { channel = Prelude.Nothing,
      queue = Prelude.Nothing
    }

-- | The channel used for grouping and filters.
dimensions_channel :: Lens.Lens' Dimensions (Prelude.Maybe Channel)
dimensions_channel = Lens.lens (\Dimensions' {channel} -> channel) (\s@Dimensions' {} a -> s {channel = a} :: Dimensions)

-- | Information about the queue for which metrics are returned.
dimensions_queue :: Lens.Lens' Dimensions (Prelude.Maybe QueueReference)
dimensions_queue = Lens.lens (\Dimensions' {queue} -> queue) (\s@Dimensions' {} a -> s {queue = a} :: Dimensions)

instance Core.FromJSON Dimensions where
  parseJSON =
    Core.withObject
      "Dimensions"
      ( \x ->
          Dimensions'
            Prelude.<$> (x Core..:? "Channel")
            Prelude.<*> (x Core..:? "Queue")
      )

instance Prelude.Hashable Dimensions where
  hashWithSalt _salt Dimensions' {..} =
    _salt `Prelude.hashWithSalt` channel
      `Prelude.hashWithSalt` queue

instance Prelude.NFData Dimensions where
  rnf Dimensions' {..} =
    Prelude.rnf channel `Prelude.seq` Prelude.rnf queue

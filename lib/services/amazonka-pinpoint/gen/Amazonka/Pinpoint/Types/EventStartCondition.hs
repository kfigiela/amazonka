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
-- Module      : Amazonka.Pinpoint.Types.EventStartCondition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.EventStartCondition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Pinpoint.Types.EventFilter
import qualified Amazonka.Prelude as Prelude

-- | Specifies the settings for an event that causes a journey activity to
-- start.
--
-- /See:/ 'newEventStartCondition' smart constructor.
data EventStartCondition = EventStartCondition'
  { eventFilter :: Prelude.Maybe EventFilter,
    segmentId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventStartCondition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventFilter', 'eventStartCondition_eventFilter' - Undocumented member.
--
-- 'segmentId', 'eventStartCondition_segmentId' - Undocumented member.
newEventStartCondition ::
  EventStartCondition
newEventStartCondition =
  EventStartCondition'
    { eventFilter = Prelude.Nothing,
      segmentId = Prelude.Nothing
    }

-- | Undocumented member.
eventStartCondition_eventFilter :: Lens.Lens' EventStartCondition (Prelude.Maybe EventFilter)
eventStartCondition_eventFilter = Lens.lens (\EventStartCondition' {eventFilter} -> eventFilter) (\s@EventStartCondition' {} a -> s {eventFilter = a} :: EventStartCondition)

-- | Undocumented member.
eventStartCondition_segmentId :: Lens.Lens' EventStartCondition (Prelude.Maybe Prelude.Text)
eventStartCondition_segmentId = Lens.lens (\EventStartCondition' {segmentId} -> segmentId) (\s@EventStartCondition' {} a -> s {segmentId = a} :: EventStartCondition)

instance Core.FromJSON EventStartCondition where
  parseJSON =
    Core.withObject
      "EventStartCondition"
      ( \x ->
          EventStartCondition'
            Prelude.<$> (x Core..:? "EventFilter")
            Prelude.<*> (x Core..:? "SegmentId")
      )

instance Prelude.Hashable EventStartCondition where
  hashWithSalt _salt EventStartCondition' {..} =
    _salt `Prelude.hashWithSalt` eventFilter
      `Prelude.hashWithSalt` segmentId

instance Prelude.NFData EventStartCondition where
  rnf EventStartCondition' {..} =
    Prelude.rnf eventFilter
      `Prelude.seq` Prelude.rnf segmentId

instance Core.ToJSON EventStartCondition where
  toJSON EventStartCondition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EventFilter" Core..=) Prelude.<$> eventFilter,
            ("SegmentId" Core..=) Prelude.<$> segmentId
          ]
      )

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
-- Module      : Amazonka.IoTFleetWise.Types.FleetSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.FleetSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a fleet.
--
-- You can use the API operation to return this information about multiple
-- fleets.
--
-- /See:/ 'newFleetSummary' smart constructor.
data FleetSummary = FleetSummary'
  { -- | The time the fleet was last updated in seconds since epoch (January 1,
    -- 1970 at midnight UTC time).
    lastModificationTime :: Prelude.Maybe Core.POSIX,
    -- | A brief description of the fleet.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique ID of the fleet.
    id :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the fleet.
    arn :: Prelude.Text,
    -- | The ARN of the signal catalog associated with the fleet.
    signalCatalogArn :: Prelude.Text,
    -- | The time the fleet was created, in seconds since epoch (January 1, 1970
    -- at midnight UTC time).
    creationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModificationTime', 'fleetSummary_lastModificationTime' - The time the fleet was last updated in seconds since epoch (January 1,
-- 1970 at midnight UTC time).
--
-- 'description', 'fleetSummary_description' - A brief description of the fleet.
--
-- 'id', 'fleetSummary_id' - The unique ID of the fleet.
--
-- 'arn', 'fleetSummary_arn' - The Amazon Resource Name (ARN) of the fleet.
--
-- 'signalCatalogArn', 'fleetSummary_signalCatalogArn' - The ARN of the signal catalog associated with the fleet.
--
-- 'creationTime', 'fleetSummary_creationTime' - The time the fleet was created, in seconds since epoch (January 1, 1970
-- at midnight UTC time).
newFleetSummary ::
  -- | 'id'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'signalCatalogArn'
  Prelude.Text ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  FleetSummary
newFleetSummary
  pId_
  pArn_
  pSignalCatalogArn_
  pCreationTime_ =
    FleetSummary'
      { lastModificationTime =
          Prelude.Nothing,
        description = Prelude.Nothing,
        id = pId_,
        arn = pArn_,
        signalCatalogArn = pSignalCatalogArn_,
        creationTime = Core._Time Lens.# pCreationTime_
      }

-- | The time the fleet was last updated in seconds since epoch (January 1,
-- 1970 at midnight UTC time).
fleetSummary_lastModificationTime :: Lens.Lens' FleetSummary (Prelude.Maybe Prelude.UTCTime)
fleetSummary_lastModificationTime = Lens.lens (\FleetSummary' {lastModificationTime} -> lastModificationTime) (\s@FleetSummary' {} a -> s {lastModificationTime = a} :: FleetSummary) Prelude.. Lens.mapping Core._Time

-- | A brief description of the fleet.
fleetSummary_description :: Lens.Lens' FleetSummary (Prelude.Maybe Prelude.Text)
fleetSummary_description = Lens.lens (\FleetSummary' {description} -> description) (\s@FleetSummary' {} a -> s {description = a} :: FleetSummary)

-- | The unique ID of the fleet.
fleetSummary_id :: Lens.Lens' FleetSummary Prelude.Text
fleetSummary_id = Lens.lens (\FleetSummary' {id} -> id) (\s@FleetSummary' {} a -> s {id = a} :: FleetSummary)

-- | The Amazon Resource Name (ARN) of the fleet.
fleetSummary_arn :: Lens.Lens' FleetSummary Prelude.Text
fleetSummary_arn = Lens.lens (\FleetSummary' {arn} -> arn) (\s@FleetSummary' {} a -> s {arn = a} :: FleetSummary)

-- | The ARN of the signal catalog associated with the fleet.
fleetSummary_signalCatalogArn :: Lens.Lens' FleetSummary Prelude.Text
fleetSummary_signalCatalogArn = Lens.lens (\FleetSummary' {signalCatalogArn} -> signalCatalogArn) (\s@FleetSummary' {} a -> s {signalCatalogArn = a} :: FleetSummary)

-- | The time the fleet was created, in seconds since epoch (January 1, 1970
-- at midnight UTC time).
fleetSummary_creationTime :: Lens.Lens' FleetSummary Prelude.UTCTime
fleetSummary_creationTime = Lens.lens (\FleetSummary' {creationTime} -> creationTime) (\s@FleetSummary' {} a -> s {creationTime = a} :: FleetSummary) Prelude.. Core._Time

instance Core.FromJSON FleetSummary where
  parseJSON =
    Core.withObject
      "FleetSummary"
      ( \x ->
          FleetSummary'
            Prelude.<$> (x Core..:? "lastModificationTime")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "signalCatalogArn")
            Prelude.<*> (x Core..: "creationTime")
      )

instance Prelude.Hashable FleetSummary where
  hashWithSalt _salt FleetSummary' {..} =
    _salt `Prelude.hashWithSalt` lastModificationTime
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` signalCatalogArn
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData FleetSummary where
  rnf FleetSummary' {..} =
    Prelude.rnf lastModificationTime
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf signalCatalogArn
      `Prelude.seq` Prelude.rnf creationTime

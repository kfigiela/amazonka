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
-- Module      : Amazonka.PrivateNetworks.Types.NetworkSite
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.NetworkSite where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.PrivateNetworks.Types.NetworkSiteStatus
import Amazonka.PrivateNetworks.Types.SitePlan

-- | Information about a network site.
--
-- /See:/ 'newNetworkSite' smart constructor.
data NetworkSite = NetworkSite'
  { -- | The status reason of the network site.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The description of the network site.
    description :: Prelude.Maybe Prelude.Text,
    -- | The parent Availability Zone for the network site.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The pending plan of the network site.
    pendingPlan :: Prelude.Maybe SitePlan,
    -- | The current plan of the network site.
    currentPlan :: Prelude.Maybe SitePlan,
    -- | The creation time of the network site.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The parent Availability Zone ID for the network site.
    availabilityZoneId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the network to which the network site
    -- belongs.
    networkArn :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the network site.
    networkSiteArn :: Prelude.Text,
    -- | The name of the network site.
    networkSiteName :: Prelude.Text,
    -- | The status of the network site.
    status :: NetworkSiteStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkSite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'networkSite_statusReason' - The status reason of the network site.
--
-- 'description', 'networkSite_description' - The description of the network site.
--
-- 'availabilityZone', 'networkSite_availabilityZone' - The parent Availability Zone for the network site.
--
-- 'pendingPlan', 'networkSite_pendingPlan' - The pending plan of the network site.
--
-- 'currentPlan', 'networkSite_currentPlan' - The current plan of the network site.
--
-- 'createdAt', 'networkSite_createdAt' - The creation time of the network site.
--
-- 'availabilityZoneId', 'networkSite_availabilityZoneId' - The parent Availability Zone ID for the network site.
--
-- 'networkArn', 'networkSite_networkArn' - The Amazon Resource Name (ARN) of the network to which the network site
-- belongs.
--
-- 'networkSiteArn', 'networkSite_networkSiteArn' - The Amazon Resource Name (ARN) of the network site.
--
-- 'networkSiteName', 'networkSite_networkSiteName' - The name of the network site.
--
-- 'status', 'networkSite_status' - The status of the network site.
newNetworkSite ::
  -- | 'networkArn'
  Prelude.Text ->
  -- | 'networkSiteArn'
  Prelude.Text ->
  -- | 'networkSiteName'
  Prelude.Text ->
  -- | 'status'
  NetworkSiteStatus ->
  NetworkSite
newNetworkSite
  pNetworkArn_
  pNetworkSiteArn_
  pNetworkSiteName_
  pStatus_ =
    NetworkSite'
      { statusReason = Prelude.Nothing,
        description = Prelude.Nothing,
        availabilityZone = Prelude.Nothing,
        pendingPlan = Prelude.Nothing,
        currentPlan = Prelude.Nothing,
        createdAt = Prelude.Nothing,
        availabilityZoneId = Prelude.Nothing,
        networkArn = pNetworkArn_,
        networkSiteArn = pNetworkSiteArn_,
        networkSiteName = pNetworkSiteName_,
        status = pStatus_
      }

-- | The status reason of the network site.
networkSite_statusReason :: Lens.Lens' NetworkSite (Prelude.Maybe Prelude.Text)
networkSite_statusReason = Lens.lens (\NetworkSite' {statusReason} -> statusReason) (\s@NetworkSite' {} a -> s {statusReason = a} :: NetworkSite)

-- | The description of the network site.
networkSite_description :: Lens.Lens' NetworkSite (Prelude.Maybe Prelude.Text)
networkSite_description = Lens.lens (\NetworkSite' {description} -> description) (\s@NetworkSite' {} a -> s {description = a} :: NetworkSite)

-- | The parent Availability Zone for the network site.
networkSite_availabilityZone :: Lens.Lens' NetworkSite (Prelude.Maybe Prelude.Text)
networkSite_availabilityZone = Lens.lens (\NetworkSite' {availabilityZone} -> availabilityZone) (\s@NetworkSite' {} a -> s {availabilityZone = a} :: NetworkSite)

-- | The pending plan of the network site.
networkSite_pendingPlan :: Lens.Lens' NetworkSite (Prelude.Maybe SitePlan)
networkSite_pendingPlan = Lens.lens (\NetworkSite' {pendingPlan} -> pendingPlan) (\s@NetworkSite' {} a -> s {pendingPlan = a} :: NetworkSite)

-- | The current plan of the network site.
networkSite_currentPlan :: Lens.Lens' NetworkSite (Prelude.Maybe SitePlan)
networkSite_currentPlan = Lens.lens (\NetworkSite' {currentPlan} -> currentPlan) (\s@NetworkSite' {} a -> s {currentPlan = a} :: NetworkSite)

-- | The creation time of the network site.
networkSite_createdAt :: Lens.Lens' NetworkSite (Prelude.Maybe Prelude.UTCTime)
networkSite_createdAt = Lens.lens (\NetworkSite' {createdAt} -> createdAt) (\s@NetworkSite' {} a -> s {createdAt = a} :: NetworkSite) Prelude.. Lens.mapping Core._Time

-- | The parent Availability Zone ID for the network site.
networkSite_availabilityZoneId :: Lens.Lens' NetworkSite (Prelude.Maybe Prelude.Text)
networkSite_availabilityZoneId = Lens.lens (\NetworkSite' {availabilityZoneId} -> availabilityZoneId) (\s@NetworkSite' {} a -> s {availabilityZoneId = a} :: NetworkSite)

-- | The Amazon Resource Name (ARN) of the network to which the network site
-- belongs.
networkSite_networkArn :: Lens.Lens' NetworkSite Prelude.Text
networkSite_networkArn = Lens.lens (\NetworkSite' {networkArn} -> networkArn) (\s@NetworkSite' {} a -> s {networkArn = a} :: NetworkSite)

-- | The Amazon Resource Name (ARN) of the network site.
networkSite_networkSiteArn :: Lens.Lens' NetworkSite Prelude.Text
networkSite_networkSiteArn = Lens.lens (\NetworkSite' {networkSiteArn} -> networkSiteArn) (\s@NetworkSite' {} a -> s {networkSiteArn = a} :: NetworkSite)

-- | The name of the network site.
networkSite_networkSiteName :: Lens.Lens' NetworkSite Prelude.Text
networkSite_networkSiteName = Lens.lens (\NetworkSite' {networkSiteName} -> networkSiteName) (\s@NetworkSite' {} a -> s {networkSiteName = a} :: NetworkSite)

-- | The status of the network site.
networkSite_status :: Lens.Lens' NetworkSite NetworkSiteStatus
networkSite_status = Lens.lens (\NetworkSite' {status} -> status) (\s@NetworkSite' {} a -> s {status = a} :: NetworkSite)

instance Core.FromJSON NetworkSite where
  parseJSON =
    Core.withObject
      "NetworkSite"
      ( \x ->
          NetworkSite'
            Prelude.<$> (x Core..:? "statusReason")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "availabilityZone")
            Prelude.<*> (x Core..:? "pendingPlan")
            Prelude.<*> (x Core..:? "currentPlan")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "availabilityZoneId")
            Prelude.<*> (x Core..: "networkArn")
            Prelude.<*> (x Core..: "networkSiteArn")
            Prelude.<*> (x Core..: "networkSiteName")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable NetworkSite where
  hashWithSalt _salt NetworkSite' {..} =
    _salt `Prelude.hashWithSalt` statusReason
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` pendingPlan
      `Prelude.hashWithSalt` currentPlan
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` availabilityZoneId
      `Prelude.hashWithSalt` networkArn
      `Prelude.hashWithSalt` networkSiteArn
      `Prelude.hashWithSalt` networkSiteName
      `Prelude.hashWithSalt` status

instance Prelude.NFData NetworkSite where
  rnf NetworkSite' {..} =
    Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf pendingPlan
      `Prelude.seq` Prelude.rnf currentPlan
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf availabilityZoneId
      `Prelude.seq` Prelude.rnf networkArn
      `Prelude.seq` Prelude.rnf networkSiteArn
      `Prelude.seq` Prelude.rnf networkSiteName
      `Prelude.seq` Prelude.rnf status

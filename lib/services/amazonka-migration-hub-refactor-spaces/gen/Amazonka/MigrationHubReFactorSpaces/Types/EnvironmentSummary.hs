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
-- Module      : Amazonka.MigrationHubReFactorSpaces.Types.EnvironmentSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MigrationHubReFactorSpaces.Types.EnvironmentSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubReFactorSpaces.Types.EnvironmentState
import Amazonka.MigrationHubReFactorSpaces.Types.ErrorResponse
import Amazonka.MigrationHubReFactorSpaces.Types.NetworkFabricType
import qualified Amazonka.Prelude as Prelude

-- | The summary information for environments as a response to
-- @ListEnvironments@.
--
-- /See:/ 'newEnvironmentSummary' smart constructor.
data EnvironmentSummary = EnvironmentSummary'
  { -- | The tags assigned to the environment.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The name of the environment.
    name :: Prelude.Maybe Prelude.Text,
    -- | A timestamp that indicates when the environment is created.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the transit gateway set up by the environment.
    transitGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the environment.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the environment.
    state :: Prelude.Maybe EnvironmentState,
    -- | A timestamp that indicates when the environment was last updated.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | A description of the environment.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID of the environment owner.
    ownerAccountId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the environment.
    environmentId :: Prelude.Maybe Prelude.Text,
    -- | Any error associated with the environment resource.
    error :: Prelude.Maybe ErrorResponse,
    -- | The network fabric type of the environment.
    networkFabricType :: Prelude.Maybe NetworkFabricType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'environmentSummary_tags' - The tags assigned to the environment.
--
-- 'name', 'environmentSummary_name' - The name of the environment.
--
-- 'createdTime', 'environmentSummary_createdTime' - A timestamp that indicates when the environment is created.
--
-- 'transitGatewayId', 'environmentSummary_transitGatewayId' - The ID of the transit gateway set up by the environment.
--
-- 'arn', 'environmentSummary_arn' - The Amazon Resource Name (ARN) of the environment.
--
-- 'state', 'environmentSummary_state' - The current state of the environment.
--
-- 'lastUpdatedTime', 'environmentSummary_lastUpdatedTime' - A timestamp that indicates when the environment was last updated.
--
-- 'description', 'environmentSummary_description' - A description of the environment.
--
-- 'ownerAccountId', 'environmentSummary_ownerAccountId' - The Amazon Web Services account ID of the environment owner.
--
-- 'environmentId', 'environmentSummary_environmentId' - The unique identifier of the environment.
--
-- 'error', 'environmentSummary_error' - Any error associated with the environment resource.
--
-- 'networkFabricType', 'environmentSummary_networkFabricType' - The network fabric type of the environment.
newEnvironmentSummary ::
  EnvironmentSummary
newEnvironmentSummary =
  EnvironmentSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      transitGatewayId = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      description = Prelude.Nothing,
      ownerAccountId = Prelude.Nothing,
      environmentId = Prelude.Nothing,
      error = Prelude.Nothing,
      networkFabricType = Prelude.Nothing
    }

-- | The tags assigned to the environment.
environmentSummary_tags :: Lens.Lens' EnvironmentSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
environmentSummary_tags = Lens.lens (\EnvironmentSummary' {tags} -> tags) (\s@EnvironmentSummary' {} a -> s {tags = a} :: EnvironmentSummary) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The name of the environment.
environmentSummary_name :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_name = Lens.lens (\EnvironmentSummary' {name} -> name) (\s@EnvironmentSummary' {} a -> s {name = a} :: EnvironmentSummary)

-- | A timestamp that indicates when the environment is created.
environmentSummary_createdTime :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.UTCTime)
environmentSummary_createdTime = Lens.lens (\EnvironmentSummary' {createdTime} -> createdTime) (\s@EnvironmentSummary' {} a -> s {createdTime = a} :: EnvironmentSummary) Prelude.. Lens.mapping Core._Time

-- | The ID of the transit gateway set up by the environment.
environmentSummary_transitGatewayId :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_transitGatewayId = Lens.lens (\EnvironmentSummary' {transitGatewayId} -> transitGatewayId) (\s@EnvironmentSummary' {} a -> s {transitGatewayId = a} :: EnvironmentSummary)

-- | The Amazon Resource Name (ARN) of the environment.
environmentSummary_arn :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_arn = Lens.lens (\EnvironmentSummary' {arn} -> arn) (\s@EnvironmentSummary' {} a -> s {arn = a} :: EnvironmentSummary)

-- | The current state of the environment.
environmentSummary_state :: Lens.Lens' EnvironmentSummary (Prelude.Maybe EnvironmentState)
environmentSummary_state = Lens.lens (\EnvironmentSummary' {state} -> state) (\s@EnvironmentSummary' {} a -> s {state = a} :: EnvironmentSummary)

-- | A timestamp that indicates when the environment was last updated.
environmentSummary_lastUpdatedTime :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.UTCTime)
environmentSummary_lastUpdatedTime = Lens.lens (\EnvironmentSummary' {lastUpdatedTime} -> lastUpdatedTime) (\s@EnvironmentSummary' {} a -> s {lastUpdatedTime = a} :: EnvironmentSummary) Prelude.. Lens.mapping Core._Time

-- | A description of the environment.
environmentSummary_description :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_description = Lens.lens (\EnvironmentSummary' {description} -> description) (\s@EnvironmentSummary' {} a -> s {description = a} :: EnvironmentSummary)

-- | The Amazon Web Services account ID of the environment owner.
environmentSummary_ownerAccountId :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_ownerAccountId = Lens.lens (\EnvironmentSummary' {ownerAccountId} -> ownerAccountId) (\s@EnvironmentSummary' {} a -> s {ownerAccountId = a} :: EnvironmentSummary)

-- | The unique identifier of the environment.
environmentSummary_environmentId :: Lens.Lens' EnvironmentSummary (Prelude.Maybe Prelude.Text)
environmentSummary_environmentId = Lens.lens (\EnvironmentSummary' {environmentId} -> environmentId) (\s@EnvironmentSummary' {} a -> s {environmentId = a} :: EnvironmentSummary)

-- | Any error associated with the environment resource.
environmentSummary_error :: Lens.Lens' EnvironmentSummary (Prelude.Maybe ErrorResponse)
environmentSummary_error = Lens.lens (\EnvironmentSummary' {error} -> error) (\s@EnvironmentSummary' {} a -> s {error = a} :: EnvironmentSummary)

-- | The network fabric type of the environment.
environmentSummary_networkFabricType :: Lens.Lens' EnvironmentSummary (Prelude.Maybe NetworkFabricType)
environmentSummary_networkFabricType = Lens.lens (\EnvironmentSummary' {networkFabricType} -> networkFabricType) (\s@EnvironmentSummary' {} a -> s {networkFabricType = a} :: EnvironmentSummary)

instance Core.FromJSON EnvironmentSummary where
  parseJSON =
    Core.withObject
      "EnvironmentSummary"
      ( \x ->
          EnvironmentSummary'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "CreatedTime")
            Prelude.<*> (x Core..:? "TransitGatewayId")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "LastUpdatedTime")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "OwnerAccountId")
            Prelude.<*> (x Core..:? "EnvironmentId")
            Prelude.<*> (x Core..:? "Error")
            Prelude.<*> (x Core..:? "NetworkFabricType")
      )

instance Prelude.Hashable EnvironmentSummary where
  hashWithSalt _salt EnvironmentSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` transitGatewayId
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` ownerAccountId
      `Prelude.hashWithSalt` environmentId
      `Prelude.hashWithSalt` error
      `Prelude.hashWithSalt` networkFabricType

instance Prelude.NFData EnvironmentSummary where
  rnf EnvironmentSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf transitGatewayId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf ownerAccountId
      `Prelude.seq` Prelude.rnf environmentId
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf networkFabricType

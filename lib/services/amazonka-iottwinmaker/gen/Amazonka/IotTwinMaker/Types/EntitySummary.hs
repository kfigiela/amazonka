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
-- Module      : Amazonka.IotTwinMaker.Types.EntitySummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IotTwinMaker.Types.EntitySummary where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types.Status
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that contains information about an entity.
--
-- /See:/ 'newEntitySummary' smart constructor.
data EntitySummary = EntitySummary'
  { -- | A Boolean value that specifies whether the entity has child entities or
    -- not.
    hasChildEntities :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the parent entity.
    parentEntityId :: Prelude.Maybe Prelude.Text,
    -- | The description of the entity.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the entity.
    arn :: Prelude.Text,
    -- | The date and time when the entity was created.
    creationDateTime :: Core.POSIX,
    -- | The ID of the entity.
    entityId :: Prelude.Text,
    -- | The name of the entity.
    entityName :: Prelude.Text,
    -- | The current status of the entity.
    status :: Status,
    -- | The last date and time when the entity was updated.
    updateDateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EntitySummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hasChildEntities', 'entitySummary_hasChildEntities' - A Boolean value that specifies whether the entity has child entities or
-- not.
--
-- 'parentEntityId', 'entitySummary_parentEntityId' - The ID of the parent entity.
--
-- 'description', 'entitySummary_description' - The description of the entity.
--
-- 'arn', 'entitySummary_arn' - The ARN of the entity.
--
-- 'creationDateTime', 'entitySummary_creationDateTime' - The date and time when the entity was created.
--
-- 'entityId', 'entitySummary_entityId' - The ID of the entity.
--
-- 'entityName', 'entitySummary_entityName' - The name of the entity.
--
-- 'status', 'entitySummary_status' - The current status of the entity.
--
-- 'updateDateTime', 'entitySummary_updateDateTime' - The last date and time when the entity was updated.
newEntitySummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'creationDateTime'
  Prelude.UTCTime ->
  -- | 'entityId'
  Prelude.Text ->
  -- | 'entityName'
  Prelude.Text ->
  -- | 'status'
  Status ->
  -- | 'updateDateTime'
  Prelude.UTCTime ->
  EntitySummary
newEntitySummary
  pArn_
  pCreationDateTime_
  pEntityId_
  pEntityName_
  pStatus_
  pUpdateDateTime_ =
    EntitySummary'
      { hasChildEntities = Prelude.Nothing,
        parentEntityId = Prelude.Nothing,
        description = Prelude.Nothing,
        arn = pArn_,
        creationDateTime =
          Core._Time Lens.# pCreationDateTime_,
        entityId = pEntityId_,
        entityName = pEntityName_,
        status = pStatus_,
        updateDateTime = Core._Time Lens.# pUpdateDateTime_
      }

-- | A Boolean value that specifies whether the entity has child entities or
-- not.
entitySummary_hasChildEntities :: Lens.Lens' EntitySummary (Prelude.Maybe Prelude.Bool)
entitySummary_hasChildEntities = Lens.lens (\EntitySummary' {hasChildEntities} -> hasChildEntities) (\s@EntitySummary' {} a -> s {hasChildEntities = a} :: EntitySummary)

-- | The ID of the parent entity.
entitySummary_parentEntityId :: Lens.Lens' EntitySummary (Prelude.Maybe Prelude.Text)
entitySummary_parentEntityId = Lens.lens (\EntitySummary' {parentEntityId} -> parentEntityId) (\s@EntitySummary' {} a -> s {parentEntityId = a} :: EntitySummary)

-- | The description of the entity.
entitySummary_description :: Lens.Lens' EntitySummary (Prelude.Maybe Prelude.Text)
entitySummary_description = Lens.lens (\EntitySummary' {description} -> description) (\s@EntitySummary' {} a -> s {description = a} :: EntitySummary)

-- | The ARN of the entity.
entitySummary_arn :: Lens.Lens' EntitySummary Prelude.Text
entitySummary_arn = Lens.lens (\EntitySummary' {arn} -> arn) (\s@EntitySummary' {} a -> s {arn = a} :: EntitySummary)

-- | The date and time when the entity was created.
entitySummary_creationDateTime :: Lens.Lens' EntitySummary Prelude.UTCTime
entitySummary_creationDateTime = Lens.lens (\EntitySummary' {creationDateTime} -> creationDateTime) (\s@EntitySummary' {} a -> s {creationDateTime = a} :: EntitySummary) Prelude.. Core._Time

-- | The ID of the entity.
entitySummary_entityId :: Lens.Lens' EntitySummary Prelude.Text
entitySummary_entityId = Lens.lens (\EntitySummary' {entityId} -> entityId) (\s@EntitySummary' {} a -> s {entityId = a} :: EntitySummary)

-- | The name of the entity.
entitySummary_entityName :: Lens.Lens' EntitySummary Prelude.Text
entitySummary_entityName = Lens.lens (\EntitySummary' {entityName} -> entityName) (\s@EntitySummary' {} a -> s {entityName = a} :: EntitySummary)

-- | The current status of the entity.
entitySummary_status :: Lens.Lens' EntitySummary Status
entitySummary_status = Lens.lens (\EntitySummary' {status} -> status) (\s@EntitySummary' {} a -> s {status = a} :: EntitySummary)

-- | The last date and time when the entity was updated.
entitySummary_updateDateTime :: Lens.Lens' EntitySummary Prelude.UTCTime
entitySummary_updateDateTime = Lens.lens (\EntitySummary' {updateDateTime} -> updateDateTime) (\s@EntitySummary' {} a -> s {updateDateTime = a} :: EntitySummary) Prelude.. Core._Time

instance Core.FromJSON EntitySummary where
  parseJSON =
    Core.withObject
      "EntitySummary"
      ( \x ->
          EntitySummary'
            Prelude.<$> (x Core..:? "hasChildEntities")
            Prelude.<*> (x Core..:? "parentEntityId")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "creationDateTime")
            Prelude.<*> (x Core..: "entityId")
            Prelude.<*> (x Core..: "entityName")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "updateDateTime")
      )

instance Prelude.Hashable EntitySummary where
  hashWithSalt _salt EntitySummary' {..} =
    _salt `Prelude.hashWithSalt` hasChildEntities
      `Prelude.hashWithSalt` parentEntityId
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` creationDateTime
      `Prelude.hashWithSalt` entityId
      `Prelude.hashWithSalt` entityName
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` updateDateTime

instance Prelude.NFData EntitySummary where
  rnf EntitySummary' {..} =
    Prelude.rnf hasChildEntities
      `Prelude.seq` Prelude.rnf parentEntityId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf entityId
      `Prelude.seq` Prelude.rnf entityName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf updateDateTime

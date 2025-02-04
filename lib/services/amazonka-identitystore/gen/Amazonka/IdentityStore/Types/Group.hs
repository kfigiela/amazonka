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
-- Module      : Amazonka.IdentityStore.Types.Group
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IdentityStore.Types.Group where

import qualified Amazonka.Core as Core
import Amazonka.IdentityStore.Types.ExternalId
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A group object that contains a specified group’s metadata and
-- attributes.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group'
  { -- | A list of @ExternalId@ objects that contains the identifiers issued to
    -- this resource by an external identity provider.
    externalIds :: Prelude.Maybe (Prelude.NonEmpty ExternalId),
    -- | The group’s display name value. The length limit is 1,024 characters.
    -- This value can consist of letters, accented characters, symbols,
    -- numbers, punctuation, tab, new line, carriage return, space, and
    -- nonbreaking space in this attribute. This value is specified at the time
    -- the group is created and stored as an attribute of the group object in
    -- the identity store.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A string containing a description of the specified group.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The identifier for a group in the identity store.
    groupId :: Prelude.Text,
    -- | The globally unique identifier for the identity store.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Group' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'externalIds', 'group_externalIds' - A list of @ExternalId@ objects that contains the identifiers issued to
-- this resource by an external identity provider.
--
-- 'displayName', 'group_displayName' - The group’s display name value. The length limit is 1,024 characters.
-- This value can consist of letters, accented characters, symbols,
-- numbers, punctuation, tab, new line, carriage return, space, and
-- nonbreaking space in this attribute. This value is specified at the time
-- the group is created and stored as an attribute of the group object in
-- the identity store.
--
-- 'description', 'group_description' - A string containing a description of the specified group.
--
-- 'groupId', 'group_groupId' - The identifier for a group in the identity store.
--
-- 'identityStoreId', 'group_identityStoreId' - The globally unique identifier for the identity store.
newGroup ::
  -- | 'groupId'
  Prelude.Text ->
  -- | 'identityStoreId'
  Prelude.Text ->
  Group
newGroup pGroupId_ pIdentityStoreId_ =
  Group'
    { externalIds = Prelude.Nothing,
      displayName = Prelude.Nothing,
      description = Prelude.Nothing,
      groupId = pGroupId_,
      identityStoreId = pIdentityStoreId_
    }

-- | A list of @ExternalId@ objects that contains the identifiers issued to
-- this resource by an external identity provider.
group_externalIds :: Lens.Lens' Group (Prelude.Maybe (Prelude.NonEmpty ExternalId))
group_externalIds = Lens.lens (\Group' {externalIds} -> externalIds) (\s@Group' {} a -> s {externalIds = a} :: Group) Prelude.. Lens.mapping Lens.coerced

-- | The group’s display name value. The length limit is 1,024 characters.
-- This value can consist of letters, accented characters, symbols,
-- numbers, punctuation, tab, new line, carriage return, space, and
-- nonbreaking space in this attribute. This value is specified at the time
-- the group is created and stored as an attribute of the group object in
-- the identity store.
group_displayName :: Lens.Lens' Group (Prelude.Maybe Prelude.Text)
group_displayName = Lens.lens (\Group' {displayName} -> displayName) (\s@Group' {} a -> s {displayName = a} :: Group) Prelude.. Lens.mapping Core._Sensitive

-- | A string containing a description of the specified group.
group_description :: Lens.Lens' Group (Prelude.Maybe Prelude.Text)
group_description = Lens.lens (\Group' {description} -> description) (\s@Group' {} a -> s {description = a} :: Group) Prelude.. Lens.mapping Core._Sensitive

-- | The identifier for a group in the identity store.
group_groupId :: Lens.Lens' Group Prelude.Text
group_groupId = Lens.lens (\Group' {groupId} -> groupId) (\s@Group' {} a -> s {groupId = a} :: Group)

-- | The globally unique identifier for the identity store.
group_identityStoreId :: Lens.Lens' Group Prelude.Text
group_identityStoreId = Lens.lens (\Group' {identityStoreId} -> identityStoreId) (\s@Group' {} a -> s {identityStoreId = a} :: Group)

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \x ->
          Group'
            Prelude.<$> (x Core..:? "ExternalIds")
            Prelude.<*> (x Core..:? "DisplayName")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..: "GroupId")
            Prelude.<*> (x Core..: "IdentityStoreId")
      )

instance Prelude.Hashable Group where
  hashWithSalt _salt Group' {..} =
    _salt `Prelude.hashWithSalt` externalIds
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` groupId
      `Prelude.hashWithSalt` identityStoreId

instance Prelude.NFData Group where
  rnf Group' {..} =
    Prelude.rnf externalIds
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf groupId
      `Prelude.seq` Prelude.rnf identityStoreId

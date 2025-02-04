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
-- Module      : Amazonka.Kendra.Types.PersonasSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.PersonasSummary where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.Persona
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information for users or groups in your IAM Identity Center
-- identity source. This applies to users and groups with specific
-- permissions that define their level of access to your Amazon Kendra
-- experience. You can create an Amazon Kendra experience such as a search
-- application. For more information on creating a search application
-- experience, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html Building a search experience with no code>.
--
-- /See:/ 'newPersonasSummary' smart constructor.
data PersonasSummary = PersonasSummary'
  { -- | The identifier of a user or group in your IAM Identity Center identity
    -- source. For example, a user ID could be an email.
    entityId :: Prelude.Maybe Prelude.Text,
    -- | The persona that defines the specific permissions of the user or group
    -- in your IAM Identity Center identity source. The available personas or
    -- access roles are @Owner@ and @Viewer@. For more information on these
    -- personas, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience Providing access to your search page>.
    persona :: Prelude.Maybe Persona,
    -- | The date-time the summary information was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The date-time the summary information was last updated.
    updatedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PersonasSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entityId', 'personasSummary_entityId' - The identifier of a user or group in your IAM Identity Center identity
-- source. For example, a user ID could be an email.
--
-- 'persona', 'personasSummary_persona' - The persona that defines the specific permissions of the user or group
-- in your IAM Identity Center identity source. The available personas or
-- access roles are @Owner@ and @Viewer@. For more information on these
-- personas, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience Providing access to your search page>.
--
-- 'createdAt', 'personasSummary_createdAt' - The date-time the summary information was created.
--
-- 'updatedAt', 'personasSummary_updatedAt' - The date-time the summary information was last updated.
newPersonasSummary ::
  PersonasSummary
newPersonasSummary =
  PersonasSummary'
    { entityId = Prelude.Nothing,
      persona = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      updatedAt = Prelude.Nothing
    }

-- | The identifier of a user or group in your IAM Identity Center identity
-- source. For example, a user ID could be an email.
personasSummary_entityId :: Lens.Lens' PersonasSummary (Prelude.Maybe Prelude.Text)
personasSummary_entityId = Lens.lens (\PersonasSummary' {entityId} -> entityId) (\s@PersonasSummary' {} a -> s {entityId = a} :: PersonasSummary)

-- | The persona that defines the specific permissions of the user or group
-- in your IAM Identity Center identity source. The available personas or
-- access roles are @Owner@ and @Viewer@. For more information on these
-- personas, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience Providing access to your search page>.
personasSummary_persona :: Lens.Lens' PersonasSummary (Prelude.Maybe Persona)
personasSummary_persona = Lens.lens (\PersonasSummary' {persona} -> persona) (\s@PersonasSummary' {} a -> s {persona = a} :: PersonasSummary)

-- | The date-time the summary information was created.
personasSummary_createdAt :: Lens.Lens' PersonasSummary (Prelude.Maybe Prelude.UTCTime)
personasSummary_createdAt = Lens.lens (\PersonasSummary' {createdAt} -> createdAt) (\s@PersonasSummary' {} a -> s {createdAt = a} :: PersonasSummary) Prelude.. Lens.mapping Core._Time

-- | The date-time the summary information was last updated.
personasSummary_updatedAt :: Lens.Lens' PersonasSummary (Prelude.Maybe Prelude.UTCTime)
personasSummary_updatedAt = Lens.lens (\PersonasSummary' {updatedAt} -> updatedAt) (\s@PersonasSummary' {} a -> s {updatedAt = a} :: PersonasSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON PersonasSummary where
  parseJSON =
    Core.withObject
      "PersonasSummary"
      ( \x ->
          PersonasSummary'
            Prelude.<$> (x Core..:? "EntityId")
            Prelude.<*> (x Core..:? "Persona")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "UpdatedAt")
      )

instance Prelude.Hashable PersonasSummary where
  hashWithSalt _salt PersonasSummary' {..} =
    _salt `Prelude.hashWithSalt` entityId
      `Prelude.hashWithSalt` persona
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` updatedAt

instance Prelude.NFData PersonasSummary where
  rnf PersonasSummary' {..} =
    Prelude.rnf entityId
      `Prelude.seq` Prelude.rnf persona
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt

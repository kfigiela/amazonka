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
-- Module      : Amazonka.Kendra.Types.JsonTokenTypeConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.JsonTokenTypeConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information for the JSON token type.
--
-- /See:/ 'newJsonTokenTypeConfiguration' smart constructor.
data JsonTokenTypeConfiguration = JsonTokenTypeConfiguration'
  { -- | The user name attribute field.
    userNameAttributeField :: Prelude.Text,
    -- | The group attribute field.
    groupAttributeField :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JsonTokenTypeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userNameAttributeField', 'jsonTokenTypeConfiguration_userNameAttributeField' - The user name attribute field.
--
-- 'groupAttributeField', 'jsonTokenTypeConfiguration_groupAttributeField' - The group attribute field.
newJsonTokenTypeConfiguration ::
  -- | 'userNameAttributeField'
  Prelude.Text ->
  -- | 'groupAttributeField'
  Prelude.Text ->
  JsonTokenTypeConfiguration
newJsonTokenTypeConfiguration
  pUserNameAttributeField_
  pGroupAttributeField_ =
    JsonTokenTypeConfiguration'
      { userNameAttributeField =
          pUserNameAttributeField_,
        groupAttributeField = pGroupAttributeField_
      }

-- | The user name attribute field.
jsonTokenTypeConfiguration_userNameAttributeField :: Lens.Lens' JsonTokenTypeConfiguration Prelude.Text
jsonTokenTypeConfiguration_userNameAttributeField = Lens.lens (\JsonTokenTypeConfiguration' {userNameAttributeField} -> userNameAttributeField) (\s@JsonTokenTypeConfiguration' {} a -> s {userNameAttributeField = a} :: JsonTokenTypeConfiguration)

-- | The group attribute field.
jsonTokenTypeConfiguration_groupAttributeField :: Lens.Lens' JsonTokenTypeConfiguration Prelude.Text
jsonTokenTypeConfiguration_groupAttributeField = Lens.lens (\JsonTokenTypeConfiguration' {groupAttributeField} -> groupAttributeField) (\s@JsonTokenTypeConfiguration' {} a -> s {groupAttributeField = a} :: JsonTokenTypeConfiguration)

instance Core.FromJSON JsonTokenTypeConfiguration where
  parseJSON =
    Core.withObject
      "JsonTokenTypeConfiguration"
      ( \x ->
          JsonTokenTypeConfiguration'
            Prelude.<$> (x Core..: "UserNameAttributeField")
            Prelude.<*> (x Core..: "GroupAttributeField")
      )

instance Prelude.Hashable JsonTokenTypeConfiguration where
  hashWithSalt _salt JsonTokenTypeConfiguration' {..} =
    _salt `Prelude.hashWithSalt` userNameAttributeField
      `Prelude.hashWithSalt` groupAttributeField

instance Prelude.NFData JsonTokenTypeConfiguration where
  rnf JsonTokenTypeConfiguration' {..} =
    Prelude.rnf userNameAttributeField
      `Prelude.seq` Prelude.rnf groupAttributeField

instance Core.ToJSON JsonTokenTypeConfiguration where
  toJSON JsonTokenTypeConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "UserNameAttributeField"
                  Core..= userNameAttributeField
              ),
            Prelude.Just
              ("GroupAttributeField" Core..= groupAttributeField)
          ]
      )

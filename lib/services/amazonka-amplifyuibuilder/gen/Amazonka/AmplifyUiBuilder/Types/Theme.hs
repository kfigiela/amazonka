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
-- Module      : Amazonka.AmplifyUiBuilder.Types.Theme
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AmplifyUiBuilder.Types.Theme where

import Amazonka.AmplifyUiBuilder.Types.ThemeValues
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A theme is a collection of style settings that apply globally to the
-- components associated with an Amplify application.
--
-- /See:/ 'newTheme' smart constructor.
data Theme = Theme'
  { -- | One or more key-value pairs to use when tagging the theme.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The time that the theme was modified.
    modifiedAt :: Prelude.Maybe Core.POSIX,
    -- | Describes the properties that can be overriden to customize a theme.
    overrides :: Prelude.Maybe [ThemeValues],
    -- | The unique ID for the Amplify app associated with the theme.
    appId :: Prelude.Text,
    -- | The time that the theme was created.
    createdAt :: Core.POSIX,
    -- | The name of the backend environment that is a part of the Amplify app.
    environmentName :: Prelude.Text,
    -- | The ID for the theme.
    id :: Prelude.Text,
    -- | The name of the theme.
    name :: Prelude.Text,
    -- | A list of key-value pairs that defines the properties of the theme.
    values :: [ThemeValues]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Theme' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'theme_tags' - One or more key-value pairs to use when tagging the theme.
--
-- 'modifiedAt', 'theme_modifiedAt' - The time that the theme was modified.
--
-- 'overrides', 'theme_overrides' - Describes the properties that can be overriden to customize a theme.
--
-- 'appId', 'theme_appId' - The unique ID for the Amplify app associated with the theme.
--
-- 'createdAt', 'theme_createdAt' - The time that the theme was created.
--
-- 'environmentName', 'theme_environmentName' - The name of the backend environment that is a part of the Amplify app.
--
-- 'id', 'theme_id' - The ID for the theme.
--
-- 'name', 'theme_name' - The name of the theme.
--
-- 'values', 'theme_values' - A list of key-value pairs that defines the properties of the theme.
newTheme ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'environmentName'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  Theme
newTheme
  pAppId_
  pCreatedAt_
  pEnvironmentName_
  pId_
  pName_ =
    Theme'
      { tags = Prelude.Nothing,
        modifiedAt = Prelude.Nothing,
        overrides = Prelude.Nothing,
        appId = pAppId_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        environmentName = pEnvironmentName_,
        id = pId_,
        name = pName_,
        values = Prelude.mempty
      }

-- | One or more key-value pairs to use when tagging the theme.
theme_tags :: Lens.Lens' Theme (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
theme_tags = Lens.lens (\Theme' {tags} -> tags) (\s@Theme' {} a -> s {tags = a} :: Theme) Prelude.. Lens.mapping Lens.coerced

-- | The time that the theme was modified.
theme_modifiedAt :: Lens.Lens' Theme (Prelude.Maybe Prelude.UTCTime)
theme_modifiedAt = Lens.lens (\Theme' {modifiedAt} -> modifiedAt) (\s@Theme' {} a -> s {modifiedAt = a} :: Theme) Prelude.. Lens.mapping Core._Time

-- | Describes the properties that can be overriden to customize a theme.
theme_overrides :: Lens.Lens' Theme (Prelude.Maybe [ThemeValues])
theme_overrides = Lens.lens (\Theme' {overrides} -> overrides) (\s@Theme' {} a -> s {overrides = a} :: Theme) Prelude.. Lens.mapping Lens.coerced

-- | The unique ID for the Amplify app associated with the theme.
theme_appId :: Lens.Lens' Theme Prelude.Text
theme_appId = Lens.lens (\Theme' {appId} -> appId) (\s@Theme' {} a -> s {appId = a} :: Theme)

-- | The time that the theme was created.
theme_createdAt :: Lens.Lens' Theme Prelude.UTCTime
theme_createdAt = Lens.lens (\Theme' {createdAt} -> createdAt) (\s@Theme' {} a -> s {createdAt = a} :: Theme) Prelude.. Core._Time

-- | The name of the backend environment that is a part of the Amplify app.
theme_environmentName :: Lens.Lens' Theme Prelude.Text
theme_environmentName = Lens.lens (\Theme' {environmentName} -> environmentName) (\s@Theme' {} a -> s {environmentName = a} :: Theme)

-- | The ID for the theme.
theme_id :: Lens.Lens' Theme Prelude.Text
theme_id = Lens.lens (\Theme' {id} -> id) (\s@Theme' {} a -> s {id = a} :: Theme)

-- | The name of the theme.
theme_name :: Lens.Lens' Theme Prelude.Text
theme_name = Lens.lens (\Theme' {name} -> name) (\s@Theme' {} a -> s {name = a} :: Theme)

-- | A list of key-value pairs that defines the properties of the theme.
theme_values :: Lens.Lens' Theme [ThemeValues]
theme_values = Lens.lens (\Theme' {values} -> values) (\s@Theme' {} a -> s {values = a} :: Theme) Prelude.. Lens.coerced

instance Core.FromJSON Theme where
  parseJSON =
    Core.withObject
      "Theme"
      ( \x ->
          Theme'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "modifiedAt")
            Prelude.<*> (x Core..:? "overrides" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "appId")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "environmentName")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..:? "values" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Theme where
  hashWithSalt _salt Theme' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` modifiedAt
      `Prelude.hashWithSalt` overrides
      `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` environmentName
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` values

instance Prelude.NFData Theme where
  rnf Theme' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf modifiedAt
      `Prelude.seq` Prelude.rnf overrides
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf environmentName
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf values

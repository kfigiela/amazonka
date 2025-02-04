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
-- Module      : Amazonka.Firehose.Types.Tag
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.Tag where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Metadata that you can assign to a delivery stream, consisting of a
-- key-value pair.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | An optional string, which you can use to describe or define the tag.
    -- Maximum length: 256 characters. Valid characters: Unicode letters,
    -- digits, white space, _ . \/ = + - % \@
    value :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the tag. Maximum length: 128 characters. Valid
    -- characters: Unicode letters, digits, white space, _ . \/ = + - % \@
    key :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'tag_value' - An optional string, which you can use to describe or define the tag.
-- Maximum length: 256 characters. Valid characters: Unicode letters,
-- digits, white space, _ . \/ = + - % \@
--
-- 'key', 'tag_key' - A unique identifier for the tag. Maximum length: 128 characters. Valid
-- characters: Unicode letters, digits, white space, _ . \/ = + - % \@
newTag ::
  -- | 'key'
  Prelude.Text ->
  Tag
newTag pKey_ =
  Tag' {value = Prelude.Nothing, key = pKey_}

-- | An optional string, which you can use to describe or define the tag.
-- Maximum length: 256 characters. Valid characters: Unicode letters,
-- digits, white space, _ . \/ = + - % \@
tag_value :: Lens.Lens' Tag (Prelude.Maybe Prelude.Text)
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

-- | A unique identifier for the tag. Maximum length: 128 characters. Valid
-- characters: Unicode letters, digits, white space, _ . \/ = + - % \@
tag_key :: Lens.Lens' Tag Prelude.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

instance Core.FromJSON Tag where
  parseJSON =
    Core.withObject
      "Tag"
      ( \x ->
          Tag'
            Prelude.<$> (x Core..:? "Value") Prelude.<*> (x Core..: "Key")
      )

instance Prelude.Hashable Tag where
  hashWithSalt _salt Tag' {..} =
    _salt `Prelude.hashWithSalt` value
      `Prelude.hashWithSalt` key

instance Prelude.NFData Tag where
  rnf Tag' {..} =
    Prelude.rnf value `Prelude.seq` Prelude.rnf key

instance Core.ToJSON Tag where
  toJSON Tag' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Value" Core..=) Prelude.<$> value,
            Prelude.Just ("Key" Core..= key)
          ]
      )

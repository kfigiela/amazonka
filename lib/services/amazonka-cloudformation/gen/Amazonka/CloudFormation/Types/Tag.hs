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
-- Module      : Amazonka.CloudFormation.Types.Tag
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.Tag where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The Tag type enables you to specify a key-value pair that can be used to
-- store information about an CloudFormation stack.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | /Required/. A string used to identify this tag. You can specify a
    -- maximum of 128 characters for a tag key. Tags owned by Amazon Web
    -- Services (Amazon Web Services) have the reserved prefix: @aws:@.
    key :: Prelude.Text,
    -- | /Required/. A string containing the value for this tag. You can specify
    -- a maximum of 256 characters for a tag value.
    value :: Prelude.Text
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
-- 'key', 'tag_key' - /Required/. A string used to identify this tag. You can specify a
-- maximum of 128 characters for a tag key. Tags owned by Amazon Web
-- Services (Amazon Web Services) have the reserved prefix: @aws:@.
--
-- 'value', 'tag_value' - /Required/. A string containing the value for this tag. You can specify
-- a maximum of 256 characters for a tag value.
newTag ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | /Required/. A string used to identify this tag. You can specify a
-- maximum of 128 characters for a tag key. Tags owned by Amazon Web
-- Services (Amazon Web Services) have the reserved prefix: @aws:@.
tag_key :: Lens.Lens' Tag Prelude.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | /Required/. A string containing the value for this tag. You can specify
-- a maximum of 256 characters for a tag value.
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

instance Core.FromXML Tag where
  parseXML x =
    Tag'
      Prelude.<$> (x Core..@ "Key") Prelude.<*> (x Core..@ "Value")

instance Prelude.Hashable Tag where
  hashWithSalt _salt Tag' {..} =
    _salt `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` value

instance Prelude.NFData Tag where
  rnf Tag' {..} =
    Prelude.rnf key `Prelude.seq` Prelude.rnf value

instance Core.ToQuery Tag where
  toQuery Tag' {..} =
    Prelude.mconcat
      ["Key" Core.=: key, "Value" Core.=: value]

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
-- Module      : Amazonka.M2.Types.Definition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.M2.Types.Definition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The application definition for a particular application.
--
-- /See:/ 'newDefinition' smart constructor.
data Definition = Definition'
  { -- | The S3 bucket that contains the application definition.
    s3Location :: Prelude.Maybe Prelude.Text,
    -- | The content of the application definition. This is a JSON object that
    -- contains the resource configuration\/definitions that identify an
    -- application.
    content :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Definition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Location', 'definition_s3Location' - The S3 bucket that contains the application definition.
--
-- 'content', 'definition_content' - The content of the application definition. This is a JSON object that
-- contains the resource configuration\/definitions that identify an
-- application.
newDefinition ::
  Definition
newDefinition =
  Definition'
    { s3Location = Prelude.Nothing,
      content = Prelude.Nothing
    }

-- | The S3 bucket that contains the application definition.
definition_s3Location :: Lens.Lens' Definition (Prelude.Maybe Prelude.Text)
definition_s3Location = Lens.lens (\Definition' {s3Location} -> s3Location) (\s@Definition' {} a -> s {s3Location = a} :: Definition)

-- | The content of the application definition. This is a JSON object that
-- contains the resource configuration\/definitions that identify an
-- application.
definition_content :: Lens.Lens' Definition (Prelude.Maybe Prelude.Text)
definition_content = Lens.lens (\Definition' {content} -> content) (\s@Definition' {} a -> s {content = a} :: Definition)

instance Prelude.Hashable Definition where
  hashWithSalt _salt Definition' {..} =
    _salt `Prelude.hashWithSalt` s3Location
      `Prelude.hashWithSalt` content

instance Prelude.NFData Definition where
  rnf Definition' {..} =
    Prelude.rnf s3Location
      `Prelude.seq` Prelude.rnf content

instance Core.ToJSON Definition where
  toJSON Definition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("s3Location" Core..=) Prelude.<$> s3Location,
            ("content" Core..=) Prelude.<$> content
          ]
      )

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
-- Module      : Amazonka.Comprehend.Types.PiiEntity
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Comprehend.Types.PiiEntity where

import Amazonka.Comprehend.Types.PiiEntityType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a PII entity.
--
-- /See:/ 'newPiiEntity' smart constructor.
data PiiEntity = PiiEntity'
  { -- | The zero-based offset from the beginning of the source text to the first
    -- character in the entity.
    beginOffset :: Prelude.Maybe Prelude.Int,
    -- | The entity\'s type.
    type' :: Prelude.Maybe PiiEntityType,
    -- | The level of confidence that Amazon Comprehend has in the accuracy of
    -- the detection.
    score :: Prelude.Maybe Prelude.Double,
    -- | The zero-based offset from the beginning of the source text to the last
    -- character in the entity.
    endOffset :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PiiEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'beginOffset', 'piiEntity_beginOffset' - The zero-based offset from the beginning of the source text to the first
-- character in the entity.
--
-- 'type'', 'piiEntity_type' - The entity\'s type.
--
-- 'score', 'piiEntity_score' - The level of confidence that Amazon Comprehend has in the accuracy of
-- the detection.
--
-- 'endOffset', 'piiEntity_endOffset' - The zero-based offset from the beginning of the source text to the last
-- character in the entity.
newPiiEntity ::
  PiiEntity
newPiiEntity =
  PiiEntity'
    { beginOffset = Prelude.Nothing,
      type' = Prelude.Nothing,
      score = Prelude.Nothing,
      endOffset = Prelude.Nothing
    }

-- | The zero-based offset from the beginning of the source text to the first
-- character in the entity.
piiEntity_beginOffset :: Lens.Lens' PiiEntity (Prelude.Maybe Prelude.Int)
piiEntity_beginOffset = Lens.lens (\PiiEntity' {beginOffset} -> beginOffset) (\s@PiiEntity' {} a -> s {beginOffset = a} :: PiiEntity)

-- | The entity\'s type.
piiEntity_type :: Lens.Lens' PiiEntity (Prelude.Maybe PiiEntityType)
piiEntity_type = Lens.lens (\PiiEntity' {type'} -> type') (\s@PiiEntity' {} a -> s {type' = a} :: PiiEntity)

-- | The level of confidence that Amazon Comprehend has in the accuracy of
-- the detection.
piiEntity_score :: Lens.Lens' PiiEntity (Prelude.Maybe Prelude.Double)
piiEntity_score = Lens.lens (\PiiEntity' {score} -> score) (\s@PiiEntity' {} a -> s {score = a} :: PiiEntity)

-- | The zero-based offset from the beginning of the source text to the last
-- character in the entity.
piiEntity_endOffset :: Lens.Lens' PiiEntity (Prelude.Maybe Prelude.Int)
piiEntity_endOffset = Lens.lens (\PiiEntity' {endOffset} -> endOffset) (\s@PiiEntity' {} a -> s {endOffset = a} :: PiiEntity)

instance Core.FromJSON PiiEntity where
  parseJSON =
    Core.withObject
      "PiiEntity"
      ( \x ->
          PiiEntity'
            Prelude.<$> (x Core..:? "BeginOffset")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Score")
            Prelude.<*> (x Core..:? "EndOffset")
      )

instance Prelude.Hashable PiiEntity where
  hashWithSalt _salt PiiEntity' {..} =
    _salt `Prelude.hashWithSalt` beginOffset
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` score
      `Prelude.hashWithSalt` endOffset

instance Prelude.NFData PiiEntity where
  rnf PiiEntity' {..} =
    Prelude.rnf beginOffset
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf score
      `Prelude.seq` Prelude.rnf endOffset

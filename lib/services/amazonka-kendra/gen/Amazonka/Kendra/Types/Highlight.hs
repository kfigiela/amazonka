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
-- Module      : Amazonka.Kendra.Types.Highlight
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.Highlight where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.HighlightType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information that you can use to highlight a search result so
-- that your users can quickly identify terms in the response.
--
-- /See:/ 'newHighlight' smart constructor.
data Highlight = Highlight'
  { -- | The highlight type.
    type' :: Prelude.Maybe HighlightType,
    -- | Indicates whether the response is the best response. True if this is the
    -- best response; otherwise, false.
    topAnswer :: Prelude.Maybe Prelude.Bool,
    -- | The zero-based location in the response string where the highlight
    -- starts.
    beginOffset :: Prelude.Int,
    -- | The zero-based location in the response string where the highlight ends.
    endOffset :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Highlight' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'highlight_type' - The highlight type.
--
-- 'topAnswer', 'highlight_topAnswer' - Indicates whether the response is the best response. True if this is the
-- best response; otherwise, false.
--
-- 'beginOffset', 'highlight_beginOffset' - The zero-based location in the response string where the highlight
-- starts.
--
-- 'endOffset', 'highlight_endOffset' - The zero-based location in the response string where the highlight ends.
newHighlight ::
  -- | 'beginOffset'
  Prelude.Int ->
  -- | 'endOffset'
  Prelude.Int ->
  Highlight
newHighlight pBeginOffset_ pEndOffset_ =
  Highlight'
    { type' = Prelude.Nothing,
      topAnswer = Prelude.Nothing,
      beginOffset = pBeginOffset_,
      endOffset = pEndOffset_
    }

-- | The highlight type.
highlight_type :: Lens.Lens' Highlight (Prelude.Maybe HighlightType)
highlight_type = Lens.lens (\Highlight' {type'} -> type') (\s@Highlight' {} a -> s {type' = a} :: Highlight)

-- | Indicates whether the response is the best response. True if this is the
-- best response; otherwise, false.
highlight_topAnswer :: Lens.Lens' Highlight (Prelude.Maybe Prelude.Bool)
highlight_topAnswer = Lens.lens (\Highlight' {topAnswer} -> topAnswer) (\s@Highlight' {} a -> s {topAnswer = a} :: Highlight)

-- | The zero-based location in the response string where the highlight
-- starts.
highlight_beginOffset :: Lens.Lens' Highlight Prelude.Int
highlight_beginOffset = Lens.lens (\Highlight' {beginOffset} -> beginOffset) (\s@Highlight' {} a -> s {beginOffset = a} :: Highlight)

-- | The zero-based location in the response string where the highlight ends.
highlight_endOffset :: Lens.Lens' Highlight Prelude.Int
highlight_endOffset = Lens.lens (\Highlight' {endOffset} -> endOffset) (\s@Highlight' {} a -> s {endOffset = a} :: Highlight)

instance Core.FromJSON Highlight where
  parseJSON =
    Core.withObject
      "Highlight"
      ( \x ->
          Highlight'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "TopAnswer")
            Prelude.<*> (x Core..: "BeginOffset")
            Prelude.<*> (x Core..: "EndOffset")
      )

instance Prelude.Hashable Highlight where
  hashWithSalt _salt Highlight' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` topAnswer
      `Prelude.hashWithSalt` beginOffset
      `Prelude.hashWithSalt` endOffset

instance Prelude.NFData Highlight where
  rnf Highlight' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf topAnswer
      `Prelude.seq` Prelude.rnf beginOffset
      `Prelude.seq` Prelude.rnf endOffset

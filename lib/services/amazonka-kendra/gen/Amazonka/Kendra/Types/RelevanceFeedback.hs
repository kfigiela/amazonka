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
-- Module      : Amazonka.Kendra.Types.RelevanceFeedback
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.RelevanceFeedback where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.RelevanceType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides feedback on how relevant a document is to a search. Your
-- application uses the @SubmitFeedback@ API to provide relevance
-- information.
--
-- /See:/ 'newRelevanceFeedback' smart constructor.
data RelevanceFeedback = RelevanceFeedback'
  { -- | The unique identifier of the search result that the user provided
    -- relevance feedback for.
    resultId :: Prelude.Text,
    -- | Whether to document was relevant or not relevant to the search.
    relevanceValue :: RelevanceType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RelevanceFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resultId', 'relevanceFeedback_resultId' - The unique identifier of the search result that the user provided
-- relevance feedback for.
--
-- 'relevanceValue', 'relevanceFeedback_relevanceValue' - Whether to document was relevant or not relevant to the search.
newRelevanceFeedback ::
  -- | 'resultId'
  Prelude.Text ->
  -- | 'relevanceValue'
  RelevanceType ->
  RelevanceFeedback
newRelevanceFeedback pResultId_ pRelevanceValue_ =
  RelevanceFeedback'
    { resultId = pResultId_,
      relevanceValue = pRelevanceValue_
    }

-- | The unique identifier of the search result that the user provided
-- relevance feedback for.
relevanceFeedback_resultId :: Lens.Lens' RelevanceFeedback Prelude.Text
relevanceFeedback_resultId = Lens.lens (\RelevanceFeedback' {resultId} -> resultId) (\s@RelevanceFeedback' {} a -> s {resultId = a} :: RelevanceFeedback)

-- | Whether to document was relevant or not relevant to the search.
relevanceFeedback_relevanceValue :: Lens.Lens' RelevanceFeedback RelevanceType
relevanceFeedback_relevanceValue = Lens.lens (\RelevanceFeedback' {relevanceValue} -> relevanceValue) (\s@RelevanceFeedback' {} a -> s {relevanceValue = a} :: RelevanceFeedback)

instance Prelude.Hashable RelevanceFeedback where
  hashWithSalt _salt RelevanceFeedback' {..} =
    _salt `Prelude.hashWithSalt` resultId
      `Prelude.hashWithSalt` relevanceValue

instance Prelude.NFData RelevanceFeedback where
  rnf RelevanceFeedback' {..} =
    Prelude.rnf resultId
      `Prelude.seq` Prelude.rnf relevanceValue

instance Core.ToJSON RelevanceFeedback where
  toJSON RelevanceFeedback' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ResultId" Core..= resultId),
            Prelude.Just
              ("RelevanceValue" Core..= relevanceValue)
          ]
      )

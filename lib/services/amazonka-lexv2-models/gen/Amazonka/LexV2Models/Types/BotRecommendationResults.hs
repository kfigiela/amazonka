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
-- Module      : Amazonka.LexV2Models.Types.BotRecommendationResults
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexV2Models.Types.BotRecommendationResults where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types.BotRecommendationResultStatistics
import qualified Amazonka.Prelude as Prelude

-- | The object representing the URL of the bot definition, the URL of the
-- associated transcript, and a statistical summary of the bot
-- recommendation results.
--
-- /See:/ 'newBotRecommendationResults' smart constructor.
data BotRecommendationResults = BotRecommendationResults'
  { -- | The presigned URL link of the recommended bot definition.
    botLocaleExportUrl :: Prelude.Maybe Prelude.Text,
    -- | The statistical summary of the bot recommendation results.
    statistics :: Prelude.Maybe BotRecommendationResultStatistics,
    -- | The presigned url link of the associated transcript.
    associatedTranscriptsUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BotRecommendationResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botLocaleExportUrl', 'botRecommendationResults_botLocaleExportUrl' - The presigned URL link of the recommended bot definition.
--
-- 'statistics', 'botRecommendationResults_statistics' - The statistical summary of the bot recommendation results.
--
-- 'associatedTranscriptsUrl', 'botRecommendationResults_associatedTranscriptsUrl' - The presigned url link of the associated transcript.
newBotRecommendationResults ::
  BotRecommendationResults
newBotRecommendationResults =
  BotRecommendationResults'
    { botLocaleExportUrl =
        Prelude.Nothing,
      statistics = Prelude.Nothing,
      associatedTranscriptsUrl = Prelude.Nothing
    }

-- | The presigned URL link of the recommended bot definition.
botRecommendationResults_botLocaleExportUrl :: Lens.Lens' BotRecommendationResults (Prelude.Maybe Prelude.Text)
botRecommendationResults_botLocaleExportUrl = Lens.lens (\BotRecommendationResults' {botLocaleExportUrl} -> botLocaleExportUrl) (\s@BotRecommendationResults' {} a -> s {botLocaleExportUrl = a} :: BotRecommendationResults)

-- | The statistical summary of the bot recommendation results.
botRecommendationResults_statistics :: Lens.Lens' BotRecommendationResults (Prelude.Maybe BotRecommendationResultStatistics)
botRecommendationResults_statistics = Lens.lens (\BotRecommendationResults' {statistics} -> statistics) (\s@BotRecommendationResults' {} a -> s {statistics = a} :: BotRecommendationResults)

-- | The presigned url link of the associated transcript.
botRecommendationResults_associatedTranscriptsUrl :: Lens.Lens' BotRecommendationResults (Prelude.Maybe Prelude.Text)
botRecommendationResults_associatedTranscriptsUrl = Lens.lens (\BotRecommendationResults' {associatedTranscriptsUrl} -> associatedTranscriptsUrl) (\s@BotRecommendationResults' {} a -> s {associatedTranscriptsUrl = a} :: BotRecommendationResults)

instance Core.FromJSON BotRecommendationResults where
  parseJSON =
    Core.withObject
      "BotRecommendationResults"
      ( \x ->
          BotRecommendationResults'
            Prelude.<$> (x Core..:? "botLocaleExportUrl")
            Prelude.<*> (x Core..:? "statistics")
            Prelude.<*> (x Core..:? "associatedTranscriptsUrl")
      )

instance Prelude.Hashable BotRecommendationResults where
  hashWithSalt _salt BotRecommendationResults' {..} =
    _salt `Prelude.hashWithSalt` botLocaleExportUrl
      `Prelude.hashWithSalt` statistics
      `Prelude.hashWithSalt` associatedTranscriptsUrl

instance Prelude.NFData BotRecommendationResults where
  rnf BotRecommendationResults' {..} =
    Prelude.rnf botLocaleExportUrl
      `Prelude.seq` Prelude.rnf statistics
      `Prelude.seq` Prelude.rnf associatedTranscriptsUrl

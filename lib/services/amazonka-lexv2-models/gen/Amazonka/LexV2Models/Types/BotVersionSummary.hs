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
-- Module      : Amazonka.LexV2Models.Types.BotVersionSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexV2Models.Types.BotVersionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types.BotStatus
import qualified Amazonka.Prelude as Prelude

-- | Summary information about a bot version returned by the
-- <https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotVersions.html ListBotVersions>
-- operation.
--
-- /See:/ 'newBotVersionSummary' smart constructor.
data BotVersionSummary = BotVersionSummary'
  { -- | The numeric version of the bot, or @DRAFT@ to indicate that this is the
    -- version of the bot that can be updated..
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | A timestamp of the date and time that the version was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The description of the version.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the bot associated with the version.
    botName :: Prelude.Maybe Prelude.Text,
    -- | The status of the bot. When the status is available, the version of the
    -- bot is ready for use.
    botStatus :: Prelude.Maybe BotStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BotVersionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botVersion', 'botVersionSummary_botVersion' - The numeric version of the bot, or @DRAFT@ to indicate that this is the
-- version of the bot that can be updated..
--
-- 'creationDateTime', 'botVersionSummary_creationDateTime' - A timestamp of the date and time that the version was created.
--
-- 'description', 'botVersionSummary_description' - The description of the version.
--
-- 'botName', 'botVersionSummary_botName' - The name of the bot associated with the version.
--
-- 'botStatus', 'botVersionSummary_botStatus' - The status of the bot. When the status is available, the version of the
-- bot is ready for use.
newBotVersionSummary ::
  BotVersionSummary
newBotVersionSummary =
  BotVersionSummary'
    { botVersion = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      description = Prelude.Nothing,
      botName = Prelude.Nothing,
      botStatus = Prelude.Nothing
    }

-- | The numeric version of the bot, or @DRAFT@ to indicate that this is the
-- version of the bot that can be updated..
botVersionSummary_botVersion :: Lens.Lens' BotVersionSummary (Prelude.Maybe Prelude.Text)
botVersionSummary_botVersion = Lens.lens (\BotVersionSummary' {botVersion} -> botVersion) (\s@BotVersionSummary' {} a -> s {botVersion = a} :: BotVersionSummary)

-- | A timestamp of the date and time that the version was created.
botVersionSummary_creationDateTime :: Lens.Lens' BotVersionSummary (Prelude.Maybe Prelude.UTCTime)
botVersionSummary_creationDateTime = Lens.lens (\BotVersionSummary' {creationDateTime} -> creationDateTime) (\s@BotVersionSummary' {} a -> s {creationDateTime = a} :: BotVersionSummary) Prelude.. Lens.mapping Core._Time

-- | The description of the version.
botVersionSummary_description :: Lens.Lens' BotVersionSummary (Prelude.Maybe Prelude.Text)
botVersionSummary_description = Lens.lens (\BotVersionSummary' {description} -> description) (\s@BotVersionSummary' {} a -> s {description = a} :: BotVersionSummary)

-- | The name of the bot associated with the version.
botVersionSummary_botName :: Lens.Lens' BotVersionSummary (Prelude.Maybe Prelude.Text)
botVersionSummary_botName = Lens.lens (\BotVersionSummary' {botName} -> botName) (\s@BotVersionSummary' {} a -> s {botName = a} :: BotVersionSummary)

-- | The status of the bot. When the status is available, the version of the
-- bot is ready for use.
botVersionSummary_botStatus :: Lens.Lens' BotVersionSummary (Prelude.Maybe BotStatus)
botVersionSummary_botStatus = Lens.lens (\BotVersionSummary' {botStatus} -> botStatus) (\s@BotVersionSummary' {} a -> s {botStatus = a} :: BotVersionSummary)

instance Core.FromJSON BotVersionSummary where
  parseJSON =
    Core.withObject
      "BotVersionSummary"
      ( \x ->
          BotVersionSummary'
            Prelude.<$> (x Core..:? "botVersion")
            Prelude.<*> (x Core..:? "creationDateTime")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "botName")
            Prelude.<*> (x Core..:? "botStatus")
      )

instance Prelude.Hashable BotVersionSummary where
  hashWithSalt _salt BotVersionSummary' {..} =
    _salt `Prelude.hashWithSalt` botVersion
      `Prelude.hashWithSalt` creationDateTime
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` botName
      `Prelude.hashWithSalt` botStatus

instance Prelude.NFData BotVersionSummary where
  rnf BotVersionSummary' {..} =
    Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf botName
      `Prelude.seq` Prelude.rnf botStatus

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
-- Module      : Amazonka.Rum.Types.CwLog
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rum.Types.CwLog where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure that contains the information about whether the app monitor
-- stores copies of the data that RUM collects in CloudWatch Logs. If it
-- does, this structure also contains the name of the log group.
--
-- /See:/ 'newCwLog' smart constructor.
data CwLog = CwLog'
  { -- | The name of the log group where the copies are stored.
    cwLogGroup :: Prelude.Maybe Prelude.Text,
    -- | Indicated whether the app monitor stores copies of the data that RUM
    -- collects in CloudWatch Logs.
    cwLogEnabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CwLog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cwLogGroup', 'cwLog_cwLogGroup' - The name of the log group where the copies are stored.
--
-- 'cwLogEnabled', 'cwLog_cwLogEnabled' - Indicated whether the app monitor stores copies of the data that RUM
-- collects in CloudWatch Logs.
newCwLog ::
  CwLog
newCwLog =
  CwLog'
    { cwLogGroup = Prelude.Nothing,
      cwLogEnabled = Prelude.Nothing
    }

-- | The name of the log group where the copies are stored.
cwLog_cwLogGroup :: Lens.Lens' CwLog (Prelude.Maybe Prelude.Text)
cwLog_cwLogGroup = Lens.lens (\CwLog' {cwLogGroup} -> cwLogGroup) (\s@CwLog' {} a -> s {cwLogGroup = a} :: CwLog)

-- | Indicated whether the app monitor stores copies of the data that RUM
-- collects in CloudWatch Logs.
cwLog_cwLogEnabled :: Lens.Lens' CwLog (Prelude.Maybe Prelude.Bool)
cwLog_cwLogEnabled = Lens.lens (\CwLog' {cwLogEnabled} -> cwLogEnabled) (\s@CwLog' {} a -> s {cwLogEnabled = a} :: CwLog)

instance Core.FromJSON CwLog where
  parseJSON =
    Core.withObject
      "CwLog"
      ( \x ->
          CwLog'
            Prelude.<$> (x Core..:? "CwLogGroup")
            Prelude.<*> (x Core..:? "CwLogEnabled")
      )

instance Prelude.Hashable CwLog where
  hashWithSalt _salt CwLog' {..} =
    _salt `Prelude.hashWithSalt` cwLogGroup
      `Prelude.hashWithSalt` cwLogEnabled

instance Prelude.NFData CwLog where
  rnf CwLog' {..} =
    Prelude.rnf cwLogGroup
      `Prelude.seq` Prelude.rnf cwLogEnabled

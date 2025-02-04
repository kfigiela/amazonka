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
-- Module      : Amazonka.ResilienceHub.Types.AppVersionSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResilienceHub.Types.AppVersionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The version of the application.
--
-- /See:/ 'newAppVersionSummary' smart constructor.
data AppVersionSummary = AppVersionSummary'
  { -- | The version of the application.
    appVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppVersionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appVersion', 'appVersionSummary_appVersion' - The version of the application.
newAppVersionSummary ::
  -- | 'appVersion'
  Prelude.Text ->
  AppVersionSummary
newAppVersionSummary pAppVersion_ =
  AppVersionSummary' {appVersion = pAppVersion_}

-- | The version of the application.
appVersionSummary_appVersion :: Lens.Lens' AppVersionSummary Prelude.Text
appVersionSummary_appVersion = Lens.lens (\AppVersionSummary' {appVersion} -> appVersion) (\s@AppVersionSummary' {} a -> s {appVersion = a} :: AppVersionSummary)

instance Core.FromJSON AppVersionSummary where
  parseJSON =
    Core.withObject
      "AppVersionSummary"
      ( \x ->
          AppVersionSummary'
            Prelude.<$> (x Core..: "appVersion")
      )

instance Prelude.Hashable AppVersionSummary where
  hashWithSalt _salt AppVersionSummary' {..} =
    _salt `Prelude.hashWithSalt` appVersion

instance Prelude.NFData AppVersionSummary where
  rnf AppVersionSummary' {..} = Prelude.rnf appVersion

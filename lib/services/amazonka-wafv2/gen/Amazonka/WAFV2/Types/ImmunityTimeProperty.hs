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
-- Module      : Amazonka.WAFV2.Types.ImmunityTimeProperty
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.ImmunityTimeProperty where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Determines how long a @CAPTCHA@ token remains valid after the client
-- successfully solves a @CAPTCHA@ puzzle.
--
-- /See:/ 'newImmunityTimeProperty' smart constructor.
data ImmunityTimeProperty = ImmunityTimeProperty'
  { -- | The amount of time, in seconds, that a @CAPTCHA@ token is valid. The
    -- default setting is 300.
    immunityTime :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImmunityTimeProperty' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'immunityTime', 'immunityTimeProperty_immunityTime' - The amount of time, in seconds, that a @CAPTCHA@ token is valid. The
-- default setting is 300.
newImmunityTimeProperty ::
  -- | 'immunityTime'
  Prelude.Natural ->
  ImmunityTimeProperty
newImmunityTimeProperty pImmunityTime_ =
  ImmunityTimeProperty'
    { immunityTime =
        pImmunityTime_
    }

-- | The amount of time, in seconds, that a @CAPTCHA@ token is valid. The
-- default setting is 300.
immunityTimeProperty_immunityTime :: Lens.Lens' ImmunityTimeProperty Prelude.Natural
immunityTimeProperty_immunityTime = Lens.lens (\ImmunityTimeProperty' {immunityTime} -> immunityTime) (\s@ImmunityTimeProperty' {} a -> s {immunityTime = a} :: ImmunityTimeProperty)

instance Core.FromJSON ImmunityTimeProperty where
  parseJSON =
    Core.withObject
      "ImmunityTimeProperty"
      ( \x ->
          ImmunityTimeProperty'
            Prelude.<$> (x Core..: "ImmunityTime")
      )

instance Prelude.Hashable ImmunityTimeProperty where
  hashWithSalt _salt ImmunityTimeProperty' {..} =
    _salt `Prelude.hashWithSalt` immunityTime

instance Prelude.NFData ImmunityTimeProperty where
  rnf ImmunityTimeProperty' {..} =
    Prelude.rnf immunityTime

instance Core.ToJSON ImmunityTimeProperty where
  toJSON ImmunityTimeProperty' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ImmunityTime" Core..= immunityTime)]
      )

{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Budgets.Types.TimeUnit
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Budgets.Types.TimeUnit
  ( TimeUnit
      ( ..,
        TimeUnit_ANNUALLY,
        TimeUnit_DAILY,
        TimeUnit_MONTHLY,
        TimeUnit_QUARTERLY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The time unit of the budget, such as MONTHLY or QUARTERLY.
newtype TimeUnit = TimeUnit'
  { fromTimeUnit ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern TimeUnit_ANNUALLY :: TimeUnit
pattern TimeUnit_ANNUALLY = TimeUnit' "ANNUALLY"

pattern TimeUnit_DAILY :: TimeUnit
pattern TimeUnit_DAILY = TimeUnit' "DAILY"

pattern TimeUnit_MONTHLY :: TimeUnit
pattern TimeUnit_MONTHLY = TimeUnit' "MONTHLY"

pattern TimeUnit_QUARTERLY :: TimeUnit
pattern TimeUnit_QUARTERLY = TimeUnit' "QUARTERLY"

{-# COMPLETE
  TimeUnit_ANNUALLY,
  TimeUnit_DAILY,
  TimeUnit_MONTHLY,
  TimeUnit_QUARTERLY,
  TimeUnit'
  #-}

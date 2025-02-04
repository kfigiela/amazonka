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
-- Module      : Amazonka.WAFV2.Types.ActionValue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.ActionValue
  ( ActionValue
      ( ..,
        ActionValue_ALLOW,
        ActionValue_BLOCK,
        ActionValue_CAPTCHA,
        ActionValue_COUNT,
        ActionValue_EXCLUDED_AS_COUNT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ActionValue = ActionValue'
  { fromActionValue ::
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

pattern ActionValue_ALLOW :: ActionValue
pattern ActionValue_ALLOW = ActionValue' "ALLOW"

pattern ActionValue_BLOCK :: ActionValue
pattern ActionValue_BLOCK = ActionValue' "BLOCK"

pattern ActionValue_CAPTCHA :: ActionValue
pattern ActionValue_CAPTCHA = ActionValue' "CAPTCHA"

pattern ActionValue_COUNT :: ActionValue
pattern ActionValue_COUNT = ActionValue' "COUNT"

pattern ActionValue_EXCLUDED_AS_COUNT :: ActionValue
pattern ActionValue_EXCLUDED_AS_COUNT = ActionValue' "EXCLUDED_AS_COUNT"

{-# COMPLETE
  ActionValue_ALLOW,
  ActionValue_BLOCK,
  ActionValue_CAPTCHA,
  ActionValue_COUNT,
  ActionValue_EXCLUDED_AS_COUNT,
  ActionValue'
  #-}

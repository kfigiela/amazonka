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
-- Module      : Amazonka.CodeDeploy.Types.TrafficRoutingType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeDeploy.Types.TrafficRoutingType
  ( TrafficRoutingType
      ( ..,
        TrafficRoutingType_AllAtOnce,
        TrafficRoutingType_TimeBasedCanary,
        TrafficRoutingType_TimeBasedLinear
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype TrafficRoutingType = TrafficRoutingType'
  { fromTrafficRoutingType ::
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

pattern TrafficRoutingType_AllAtOnce :: TrafficRoutingType
pattern TrafficRoutingType_AllAtOnce = TrafficRoutingType' "AllAtOnce"

pattern TrafficRoutingType_TimeBasedCanary :: TrafficRoutingType
pattern TrafficRoutingType_TimeBasedCanary = TrafficRoutingType' "TimeBasedCanary"

pattern TrafficRoutingType_TimeBasedLinear :: TrafficRoutingType
pattern TrafficRoutingType_TimeBasedLinear = TrafficRoutingType' "TimeBasedLinear"

{-# COMPLETE
  TrafficRoutingType_AllAtOnce,
  TrafficRoutingType_TimeBasedCanary,
  TrafficRoutingType_TimeBasedLinear,
  TrafficRoutingType'
  #-}

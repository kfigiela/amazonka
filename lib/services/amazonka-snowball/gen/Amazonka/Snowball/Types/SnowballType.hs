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
-- Module      : Amazonka.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Snowball.Types.SnowballType
  ( SnowballType
      ( ..,
        SnowballType_EDGE,
        SnowballType_EDGE_C,
        SnowballType_EDGE_CG,
        SnowballType_EDGE_S,
        SnowballType_SNC1_HDD,
        SnowballType_SNC1_SSD,
        SnowballType_STANDARD,
        SnowballType_V3_5C
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SnowballType = SnowballType'
  { fromSnowballType ::
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

pattern SnowballType_EDGE :: SnowballType
pattern SnowballType_EDGE = SnowballType' "EDGE"

pattern SnowballType_EDGE_C :: SnowballType
pattern SnowballType_EDGE_C = SnowballType' "EDGE_C"

pattern SnowballType_EDGE_CG :: SnowballType
pattern SnowballType_EDGE_CG = SnowballType' "EDGE_CG"

pattern SnowballType_EDGE_S :: SnowballType
pattern SnowballType_EDGE_S = SnowballType' "EDGE_S"

pattern SnowballType_SNC1_HDD :: SnowballType
pattern SnowballType_SNC1_HDD = SnowballType' "SNC1_HDD"

pattern SnowballType_SNC1_SSD :: SnowballType
pattern SnowballType_SNC1_SSD = SnowballType' "SNC1_SSD"

pattern SnowballType_STANDARD :: SnowballType
pattern SnowballType_STANDARD = SnowballType' "STANDARD"

pattern SnowballType_V3_5C :: SnowballType
pattern SnowballType_V3_5C = SnowballType' "V3_5C"

{-# COMPLETE
  SnowballType_EDGE,
  SnowballType_EDGE_C,
  SnowballType_EDGE_CG,
  SnowballType_EDGE_S,
  SnowballType_SNC1_HDD,
  SnowballType_SNC1_SSD,
  SnowballType_STANDARD,
  SnowballType_V3_5C,
  SnowballType'
  #-}

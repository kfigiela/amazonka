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
-- Module      : Amazonka.CloudDirectory.Types.ObjectType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudDirectory.Types.ObjectType
  ( ObjectType
      ( ..,
        ObjectType_INDEX,
        ObjectType_LEAF_NODE,
        ObjectType_NODE,
        ObjectType_POLICY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ObjectType = ObjectType'
  { fromObjectType ::
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

pattern ObjectType_INDEX :: ObjectType
pattern ObjectType_INDEX = ObjectType' "INDEX"

pattern ObjectType_LEAF_NODE :: ObjectType
pattern ObjectType_LEAF_NODE = ObjectType' "LEAF_NODE"

pattern ObjectType_NODE :: ObjectType
pattern ObjectType_NODE = ObjectType' "NODE"

pattern ObjectType_POLICY :: ObjectType
pattern ObjectType_POLICY = ObjectType' "POLICY"

{-# COMPLETE
  ObjectType_INDEX,
  ObjectType_LEAF_NODE,
  ObjectType_NODE,
  ObjectType_POLICY,
  ObjectType'
  #-}

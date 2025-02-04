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
-- Module      : Amazonka.ECS.Types.Compatibility
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.Compatibility
  ( Compatibility
      ( ..,
        Compatibility_EC2,
        Compatibility_EXTERNAL,
        Compatibility_FARGATE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Compatibility = Compatibility'
  { fromCompatibility ::
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

pattern Compatibility_EC2 :: Compatibility
pattern Compatibility_EC2 = Compatibility' "EC2"

pattern Compatibility_EXTERNAL :: Compatibility
pattern Compatibility_EXTERNAL = Compatibility' "EXTERNAL"

pattern Compatibility_FARGATE :: Compatibility
pattern Compatibility_FARGATE = Compatibility' "FARGATE"

{-# COMPLETE
  Compatibility_EC2,
  Compatibility_EXTERNAL,
  Compatibility_FARGATE,
  Compatibility'
  #-}

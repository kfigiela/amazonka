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
-- Module      : Amazonka.Shield.Types.Unit
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Shield.Types.Unit
  ( Unit
      ( ..,
        Unit_BITS,
        Unit_BYTES,
        Unit_PACKETS,
        Unit_REQUESTS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Unit = Unit' {fromUnit :: Core.Text}
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

pattern Unit_BITS :: Unit
pattern Unit_BITS = Unit' "BITS"

pattern Unit_BYTES :: Unit
pattern Unit_BYTES = Unit' "BYTES"

pattern Unit_PACKETS :: Unit
pattern Unit_PACKETS = Unit' "PACKETS"

pattern Unit_REQUESTS :: Unit
pattern Unit_REQUESTS = Unit' "REQUESTS"

{-# COMPLETE
  Unit_BITS,
  Unit_BYTES,
  Unit_PACKETS,
  Unit_REQUESTS,
  Unit'
  #-}

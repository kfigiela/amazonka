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
-- Module      : Amazonka.Detective.Types.MemberDisabledReason
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Detective.Types.MemberDisabledReason
  ( MemberDisabledReason
      ( ..,
        MemberDisabledReason_VOLUME_TOO_HIGH,
        MemberDisabledReason_VOLUME_UNKNOWN
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype MemberDisabledReason = MemberDisabledReason'
  { fromMemberDisabledReason ::
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

pattern MemberDisabledReason_VOLUME_TOO_HIGH :: MemberDisabledReason
pattern MemberDisabledReason_VOLUME_TOO_HIGH = MemberDisabledReason' "VOLUME_TOO_HIGH"

pattern MemberDisabledReason_VOLUME_UNKNOWN :: MemberDisabledReason
pattern MemberDisabledReason_VOLUME_UNKNOWN = MemberDisabledReason' "VOLUME_UNKNOWN"

{-# COMPLETE
  MemberDisabledReason_VOLUME_TOO_HIGH,
  MemberDisabledReason_VOLUME_UNKNOWN,
  MemberDisabledReason'
  #-}

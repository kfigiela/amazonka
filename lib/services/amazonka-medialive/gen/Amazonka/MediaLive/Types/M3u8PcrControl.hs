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
-- Module      : Amazonka.MediaLive.Types.M3u8PcrControl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.M3u8PcrControl
  ( M3u8PcrControl
      ( ..,
        M3u8PcrControl_CONFIGURED_PCR_PERIOD,
        M3u8PcrControl_PCR_EVERY_PES_PACKET
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | M3u8 Pcr Control
newtype M3u8PcrControl = M3u8PcrControl'
  { fromM3u8PcrControl ::
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

pattern M3u8PcrControl_CONFIGURED_PCR_PERIOD :: M3u8PcrControl
pattern M3u8PcrControl_CONFIGURED_PCR_PERIOD = M3u8PcrControl' "CONFIGURED_PCR_PERIOD"

pattern M3u8PcrControl_PCR_EVERY_PES_PACKET :: M3u8PcrControl
pattern M3u8PcrControl_PCR_EVERY_PES_PACKET = M3u8PcrControl' "PCR_EVERY_PES_PACKET"

{-# COMPLETE
  M3u8PcrControl_CONFIGURED_PCR_PERIOD,
  M3u8PcrControl_PCR_EVERY_PES_PACKET,
  M3u8PcrControl'
  #-}

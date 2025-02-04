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
-- Module      : Amazonka.MediaLive.Types.Smpte2038DataPreference
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Smpte2038DataPreference
  ( Smpte2038DataPreference
      ( ..,
        Smpte2038DataPreference_IGNORE,
        Smpte2038DataPreference_PREFER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Smpte2038 Data Preference
newtype Smpte2038DataPreference = Smpte2038DataPreference'
  { fromSmpte2038DataPreference ::
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

pattern Smpte2038DataPreference_IGNORE :: Smpte2038DataPreference
pattern Smpte2038DataPreference_IGNORE = Smpte2038DataPreference' "IGNORE"

pattern Smpte2038DataPreference_PREFER :: Smpte2038DataPreference
pattern Smpte2038DataPreference_PREFER = Smpte2038DataPreference' "PREFER"

{-# COMPLETE
  Smpte2038DataPreference_IGNORE,
  Smpte2038DataPreference_PREFER,
  Smpte2038DataPreference'
  #-}

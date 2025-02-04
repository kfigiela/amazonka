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
-- Module      : Amazonka.MediaConvert.Types.InputDeblockFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.InputDeblockFilter
  ( InputDeblockFilter
      ( ..,
        InputDeblockFilter_DISABLED,
        InputDeblockFilter_ENABLED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Enable Deblock (InputDeblockFilter) to produce smoother motion in the
-- output. Default is disabled. Only manually controllable for MPEG2 and
-- uncompressed video inputs.
newtype InputDeblockFilter = InputDeblockFilter'
  { fromInputDeblockFilter ::
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

pattern InputDeblockFilter_DISABLED :: InputDeblockFilter
pattern InputDeblockFilter_DISABLED = InputDeblockFilter' "DISABLED"

pattern InputDeblockFilter_ENABLED :: InputDeblockFilter
pattern InputDeblockFilter_ENABLED = InputDeblockFilter' "ENABLED"

{-# COMPLETE
  InputDeblockFilter_DISABLED,
  InputDeblockFilter_ENABLED,
  InputDeblockFilter'
  #-}

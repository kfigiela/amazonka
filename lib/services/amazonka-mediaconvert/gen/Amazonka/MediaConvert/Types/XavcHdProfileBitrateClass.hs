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
-- Module      : Amazonka.MediaConvert.Types.XavcHdProfileBitrateClass
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.XavcHdProfileBitrateClass
  ( XavcHdProfileBitrateClass
      ( ..,
        XavcHdProfileBitrateClass_BITRATE_CLASS_25,
        XavcHdProfileBitrateClass_BITRATE_CLASS_35,
        XavcHdProfileBitrateClass_BITRATE_CLASS_50
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your
-- output. Outputs of the same class have similar image quality over the
-- operating points that are valid for that class.
newtype XavcHdProfileBitrateClass = XavcHdProfileBitrateClass'
  { fromXavcHdProfileBitrateClass ::
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

pattern XavcHdProfileBitrateClass_BITRATE_CLASS_25 :: XavcHdProfileBitrateClass
pattern XavcHdProfileBitrateClass_BITRATE_CLASS_25 = XavcHdProfileBitrateClass' "BITRATE_CLASS_25"

pattern XavcHdProfileBitrateClass_BITRATE_CLASS_35 :: XavcHdProfileBitrateClass
pattern XavcHdProfileBitrateClass_BITRATE_CLASS_35 = XavcHdProfileBitrateClass' "BITRATE_CLASS_35"

pattern XavcHdProfileBitrateClass_BITRATE_CLASS_50 :: XavcHdProfileBitrateClass
pattern XavcHdProfileBitrateClass_BITRATE_CLASS_50 = XavcHdProfileBitrateClass' "BITRATE_CLASS_50"

{-# COMPLETE
  XavcHdProfileBitrateClass_BITRATE_CLASS_25,
  XavcHdProfileBitrateClass_BITRATE_CLASS_35,
  XavcHdProfileBitrateClass_BITRATE_CLASS_50,
  XavcHdProfileBitrateClass'
  #-}

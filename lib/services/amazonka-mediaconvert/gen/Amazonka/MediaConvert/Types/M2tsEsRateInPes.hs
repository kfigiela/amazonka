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
-- Module      : Amazonka.MediaConvert.Types.M2tsEsRateInPes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.M2tsEsRateInPes
  ( M2tsEsRateInPes
      ( ..,
        M2tsEsRateInPes_EXCLUDE,
        M2tsEsRateInPes_INCLUDE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Controls whether to include the ES Rate field in the PES header.
newtype M2tsEsRateInPes = M2tsEsRateInPes'
  { fromM2tsEsRateInPes ::
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

pattern M2tsEsRateInPes_EXCLUDE :: M2tsEsRateInPes
pattern M2tsEsRateInPes_EXCLUDE = M2tsEsRateInPes' "EXCLUDE"

pattern M2tsEsRateInPes_INCLUDE :: M2tsEsRateInPes
pattern M2tsEsRateInPes_INCLUDE = M2tsEsRateInPes' "INCLUDE"

{-# COMPLETE
  M2tsEsRateInPes_EXCLUDE,
  M2tsEsRateInPes_INCLUDE,
  M2tsEsRateInPes'
  #-}

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
-- Module      : Amazonka.MediaConvert.Types.ProresScanTypeConversionMode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.ProresScanTypeConversionMode
  ( ProresScanTypeConversionMode
      ( ..,
        ProresScanTypeConversionMode_INTERLACED,
        ProresScanTypeConversionMode_INTERLACED_OPTIMIZE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Use this setting for interlaced outputs, when your output frame rate is
-- half of your input frame rate. In this situation, choose Optimized
-- interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced
-- output. In this case, each progressive frame from the input corresponds
-- to an interlaced field in the output. Keep the default value, Basic
-- interlacing (INTERLACED), for all other output frame rates. With basic
-- interlacing, MediaConvert performs any frame rate conversion first and
-- then interlaces the frames. When you choose Optimized interlacing and
-- you set your output frame rate to a value that isn\'t suitable for
-- optimized interlacing, MediaConvert automatically falls back to basic
-- interlacing. Required settings: To use optimized interlacing, you must
-- set Telecine (telecine) to None (NONE) or Soft (SOFT). You can\'t use
-- optimized interlacing for hard telecine outputs. You must also set
-- Interlace mode (interlaceMode) to a value other than Progressive
-- (PROGRESSIVE).
newtype ProresScanTypeConversionMode = ProresScanTypeConversionMode'
  { fromProresScanTypeConversionMode ::
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

pattern ProresScanTypeConversionMode_INTERLACED :: ProresScanTypeConversionMode
pattern ProresScanTypeConversionMode_INTERLACED = ProresScanTypeConversionMode' "INTERLACED"

pattern ProresScanTypeConversionMode_INTERLACED_OPTIMIZE :: ProresScanTypeConversionMode
pattern ProresScanTypeConversionMode_INTERLACED_OPTIMIZE = ProresScanTypeConversionMode' "INTERLACED_OPTIMIZE"

{-# COMPLETE
  ProresScanTypeConversionMode_INTERLACED,
  ProresScanTypeConversionMode_INTERLACED_OPTIMIZE,
  ProresScanTypeConversionMode'
  #-}

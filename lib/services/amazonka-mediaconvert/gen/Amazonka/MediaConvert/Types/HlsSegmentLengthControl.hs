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
-- Module      : Amazonka.MediaConvert.Types.HlsSegmentLengthControl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.HlsSegmentLengthControl
  ( HlsSegmentLengthControl
      ( ..,
        HlsSegmentLengthControl_EXACT,
        HlsSegmentLengthControl_GOP_MULTIPLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Specify how you want MediaConvert to determine the segment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Segment length (SegmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
newtype HlsSegmentLengthControl = HlsSegmentLengthControl'
  { fromHlsSegmentLengthControl ::
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

pattern HlsSegmentLengthControl_EXACT :: HlsSegmentLengthControl
pattern HlsSegmentLengthControl_EXACT = HlsSegmentLengthControl' "EXACT"

pattern HlsSegmentLengthControl_GOP_MULTIPLE :: HlsSegmentLengthControl
pattern HlsSegmentLengthControl_GOP_MULTIPLE = HlsSegmentLengthControl' "GOP_MULTIPLE"

{-# COMPLETE
  HlsSegmentLengthControl_EXACT,
  HlsSegmentLengthControl_GOP_MULTIPLE,
  HlsSegmentLengthControl'
  #-}

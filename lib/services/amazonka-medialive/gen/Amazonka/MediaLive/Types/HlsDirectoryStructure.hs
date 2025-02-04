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
-- Module      : Amazonka.MediaLive.Types.HlsDirectoryStructure
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsDirectoryStructure
  ( HlsDirectoryStructure
      ( ..,
        HlsDirectoryStructure_SINGLE_DIRECTORY,
        HlsDirectoryStructure_SUBDIRECTORY_PER_STREAM
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Hls Directory Structure
newtype HlsDirectoryStructure = HlsDirectoryStructure'
  { fromHlsDirectoryStructure ::
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

pattern HlsDirectoryStructure_SINGLE_DIRECTORY :: HlsDirectoryStructure
pattern HlsDirectoryStructure_SINGLE_DIRECTORY = HlsDirectoryStructure' "SINGLE_DIRECTORY"

pattern HlsDirectoryStructure_SUBDIRECTORY_PER_STREAM :: HlsDirectoryStructure
pattern HlsDirectoryStructure_SUBDIRECTORY_PER_STREAM = HlsDirectoryStructure' "SUBDIRECTORY_PER_STREAM"

{-# COMPLETE
  HlsDirectoryStructure_SINGLE_DIRECTORY,
  HlsDirectoryStructure_SUBDIRECTORY_PER_STREAM,
  HlsDirectoryStructure'
  #-}

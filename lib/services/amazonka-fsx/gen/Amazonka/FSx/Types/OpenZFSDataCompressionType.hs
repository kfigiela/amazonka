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
-- Module      : Amazonka.FSx.Types.OpenZFSDataCompressionType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.OpenZFSDataCompressionType
  ( OpenZFSDataCompressionType
      ( ..,
        OpenZFSDataCompressionType_LZ4,
        OpenZFSDataCompressionType_NONE,
        OpenZFSDataCompressionType_ZSTD
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype OpenZFSDataCompressionType = OpenZFSDataCompressionType'
  { fromOpenZFSDataCompressionType ::
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

pattern OpenZFSDataCompressionType_LZ4 :: OpenZFSDataCompressionType
pattern OpenZFSDataCompressionType_LZ4 = OpenZFSDataCompressionType' "LZ4"

pattern OpenZFSDataCompressionType_NONE :: OpenZFSDataCompressionType
pattern OpenZFSDataCompressionType_NONE = OpenZFSDataCompressionType' "NONE"

pattern OpenZFSDataCompressionType_ZSTD :: OpenZFSDataCompressionType
pattern OpenZFSDataCompressionType_ZSTD = OpenZFSDataCompressionType' "ZSTD"

{-# COMPLETE
  OpenZFSDataCompressionType_LZ4,
  OpenZFSDataCompressionType_NONE,
  OpenZFSDataCompressionType_ZSTD,
  OpenZFSDataCompressionType'
  #-}

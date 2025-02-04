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
-- Module      : Amazonka.LexModels.Types.MergeStrategy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types.MergeStrategy
  ( MergeStrategy
      ( ..,
        MergeStrategy_FAIL_ON_CONFLICT,
        MergeStrategy_OVERWRITE_LATEST
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype MergeStrategy = MergeStrategy'
  { fromMergeStrategy ::
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

pattern MergeStrategy_FAIL_ON_CONFLICT :: MergeStrategy
pattern MergeStrategy_FAIL_ON_CONFLICT = MergeStrategy' "FAIL_ON_CONFLICT"

pattern MergeStrategy_OVERWRITE_LATEST :: MergeStrategy
pattern MergeStrategy_OVERWRITE_LATEST = MergeStrategy' "OVERWRITE_LATEST"

{-# COMPLETE
  MergeStrategy_FAIL_ON_CONFLICT,
  MergeStrategy_OVERWRITE_LATEST,
  MergeStrategy'
  #-}

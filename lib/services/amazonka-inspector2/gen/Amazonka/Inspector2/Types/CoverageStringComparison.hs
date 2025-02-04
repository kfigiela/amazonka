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
-- Module      : Amazonka.Inspector2.Types.CoverageStringComparison
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.CoverageStringComparison
  ( CoverageStringComparison
      ( ..,
        CoverageStringComparison_EQUALS,
        CoverageStringComparison_NOT_EQUALS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype CoverageStringComparison = CoverageStringComparison'
  { fromCoverageStringComparison ::
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

pattern CoverageStringComparison_EQUALS :: CoverageStringComparison
pattern CoverageStringComparison_EQUALS = CoverageStringComparison' "EQUALS"

pattern CoverageStringComparison_NOT_EQUALS :: CoverageStringComparison
pattern CoverageStringComparison_NOT_EQUALS = CoverageStringComparison' "NOT_EQUALS"

{-# COMPLETE
  CoverageStringComparison_EQUALS,
  CoverageStringComparison_NOT_EQUALS,
  CoverageStringComparison'
  #-}

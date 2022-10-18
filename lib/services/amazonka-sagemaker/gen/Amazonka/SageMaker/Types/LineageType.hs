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
-- Module      : Amazonka.SageMaker.Types.LineageType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.LineageType
  ( LineageType
      ( ..,
        LineageType_Action,
        LineageType_Artifact,
        LineageType_Context,
        LineageType_TrialComponent
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype LineageType = LineageType'
  { fromLineageType ::
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

pattern LineageType_Action :: LineageType
pattern LineageType_Action = LineageType' "Action"

pattern LineageType_Artifact :: LineageType
pattern LineageType_Artifact = LineageType' "Artifact"

pattern LineageType_Context :: LineageType
pattern LineageType_Context = LineageType' "Context"

pattern LineageType_TrialComponent :: LineageType
pattern LineageType_TrialComponent = LineageType' "TrialComponent"

{-# COMPLETE
  LineageType_Action,
  LineageType_Artifact,
  LineageType_Context,
  LineageType_TrialComponent,
  LineageType'
  #-}
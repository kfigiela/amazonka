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
-- Module      : Amazonka.LookoutEquipment.Types.InferenceExecutionStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutEquipment.Types.InferenceExecutionStatus
  ( InferenceExecutionStatus
      ( ..,
        InferenceExecutionStatus_FAILED,
        InferenceExecutionStatus_IN_PROGRESS,
        InferenceExecutionStatus_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype InferenceExecutionStatus = InferenceExecutionStatus'
  { fromInferenceExecutionStatus ::
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

pattern InferenceExecutionStatus_FAILED :: InferenceExecutionStatus
pattern InferenceExecutionStatus_FAILED = InferenceExecutionStatus' "FAILED"

pattern InferenceExecutionStatus_IN_PROGRESS :: InferenceExecutionStatus
pattern InferenceExecutionStatus_IN_PROGRESS = InferenceExecutionStatus' "IN_PROGRESS"

pattern InferenceExecutionStatus_SUCCESS :: InferenceExecutionStatus
pattern InferenceExecutionStatus_SUCCESS = InferenceExecutionStatus' "SUCCESS"

{-# COMPLETE
  InferenceExecutionStatus_FAILED,
  InferenceExecutionStatus_IN_PROGRESS,
  InferenceExecutionStatus_SUCCESS,
  InferenceExecutionStatus'
  #-}

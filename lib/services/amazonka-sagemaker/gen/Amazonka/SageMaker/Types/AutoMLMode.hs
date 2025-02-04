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
-- Module      : Amazonka.SageMaker.Types.AutoMLMode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AutoMLMode
  ( AutoMLMode
      ( ..,
        AutoMLMode_AUTO,
        AutoMLMode_ENSEMBLING,
        AutoMLMode_HYPERPARAMETER_TUNING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AutoMLMode = AutoMLMode'
  { fromAutoMLMode ::
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

pattern AutoMLMode_AUTO :: AutoMLMode
pattern AutoMLMode_AUTO = AutoMLMode' "AUTO"

pattern AutoMLMode_ENSEMBLING :: AutoMLMode
pattern AutoMLMode_ENSEMBLING = AutoMLMode' "ENSEMBLING"

pattern AutoMLMode_HYPERPARAMETER_TUNING :: AutoMLMode
pattern AutoMLMode_HYPERPARAMETER_TUNING = AutoMLMode' "HYPERPARAMETER_TUNING"

{-# COMPLETE
  AutoMLMode_AUTO,
  AutoMLMode_ENSEMBLING,
  AutoMLMode_HYPERPARAMETER_TUNING,
  AutoMLMode'
  #-}

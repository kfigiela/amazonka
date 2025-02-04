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
-- Module      : Amazonka.M2.Types.DataSetTaskLifecycle
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.M2.Types.DataSetTaskLifecycle
  ( DataSetTaskLifecycle
      ( ..,
        DataSetTaskLifecycle_Completed,
        DataSetTaskLifecycle_Creating,
        DataSetTaskLifecycle_Running
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DataSetTaskLifecycle = DataSetTaskLifecycle'
  { fromDataSetTaskLifecycle ::
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

pattern DataSetTaskLifecycle_Completed :: DataSetTaskLifecycle
pattern DataSetTaskLifecycle_Completed = DataSetTaskLifecycle' "Completed"

pattern DataSetTaskLifecycle_Creating :: DataSetTaskLifecycle
pattern DataSetTaskLifecycle_Creating = DataSetTaskLifecycle' "Creating"

pattern DataSetTaskLifecycle_Running :: DataSetTaskLifecycle
pattern DataSetTaskLifecycle_Running = DataSetTaskLifecycle' "Running"

{-# COMPLETE
  DataSetTaskLifecycle_Completed,
  DataSetTaskLifecycle_Creating,
  DataSetTaskLifecycle_Running,
  DataSetTaskLifecycle'
  #-}

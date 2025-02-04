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
-- Module      : Amazonka.MediaStore.Types.ContainerLevelMetrics
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaStore.Types.ContainerLevelMetrics
  ( ContainerLevelMetrics
      ( ..,
        ContainerLevelMetrics_DISABLED,
        ContainerLevelMetrics_ENABLED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ContainerLevelMetrics = ContainerLevelMetrics'
  { fromContainerLevelMetrics ::
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

pattern ContainerLevelMetrics_DISABLED :: ContainerLevelMetrics
pattern ContainerLevelMetrics_DISABLED = ContainerLevelMetrics' "DISABLED"

pattern ContainerLevelMetrics_ENABLED :: ContainerLevelMetrics
pattern ContainerLevelMetrics_ENABLED = ContainerLevelMetrics' "ENABLED"

{-# COMPLETE
  ContainerLevelMetrics_DISABLED,
  ContainerLevelMetrics_ENABLED,
  ContainerLevelMetrics'
  #-}

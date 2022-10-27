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
-- Module      : Amazonka.Panorama.Types.NodeInstanceStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Panorama.Types.NodeInstanceStatus
  ( NodeInstanceStatus
      ( ..,
        NodeInstanceStatus_ERROR,
        NodeInstanceStatus_NOT_AVAILABLE,
        NodeInstanceStatus_PAUSED,
        NodeInstanceStatus_RUNNING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype NodeInstanceStatus = NodeInstanceStatus'
  { fromNodeInstanceStatus ::
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

pattern NodeInstanceStatus_ERROR :: NodeInstanceStatus
pattern NodeInstanceStatus_ERROR = NodeInstanceStatus' "ERROR"

pattern NodeInstanceStatus_NOT_AVAILABLE :: NodeInstanceStatus
pattern NodeInstanceStatus_NOT_AVAILABLE = NodeInstanceStatus' "NOT_AVAILABLE"

pattern NodeInstanceStatus_PAUSED :: NodeInstanceStatus
pattern NodeInstanceStatus_PAUSED = NodeInstanceStatus' "PAUSED"

pattern NodeInstanceStatus_RUNNING :: NodeInstanceStatus
pattern NodeInstanceStatus_RUNNING = NodeInstanceStatus' "RUNNING"

{-# COMPLETE
  NodeInstanceStatus_ERROR,
  NodeInstanceStatus_NOT_AVAILABLE,
  NodeInstanceStatus_PAUSED,
  NodeInstanceStatus_RUNNING,
  NodeInstanceStatus'
  #-}

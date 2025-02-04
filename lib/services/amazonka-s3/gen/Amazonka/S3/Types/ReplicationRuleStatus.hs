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
-- Module      : Amazonka.S3.Types.ReplicationRuleStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.ReplicationRuleStatus
  ( ReplicationRuleStatus
      ( ..,
        ReplicationRuleStatus_Disabled,
        ReplicationRuleStatus_Enabled
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

newtype ReplicationRuleStatus = ReplicationRuleStatus'
  { fromReplicationRuleStatus ::
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

pattern ReplicationRuleStatus_Disabled :: ReplicationRuleStatus
pattern ReplicationRuleStatus_Disabled = ReplicationRuleStatus' "Disabled"

pattern ReplicationRuleStatus_Enabled :: ReplicationRuleStatus
pattern ReplicationRuleStatus_Enabled = ReplicationRuleStatus' "Enabled"

{-# COMPLETE
  ReplicationRuleStatus_Disabled,
  ReplicationRuleStatus_Enabled,
  ReplicationRuleStatus'
  #-}

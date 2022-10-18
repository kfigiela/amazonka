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
-- Module      : Amazonka.EC2.Types.LaunchTemplateAutoRecoveryState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LaunchTemplateAutoRecoveryState
  ( LaunchTemplateAutoRecoveryState
      ( ..,
        LaunchTemplateAutoRecoveryState_Default,
        LaunchTemplateAutoRecoveryState_Disabled
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype LaunchTemplateAutoRecoveryState = LaunchTemplateAutoRecoveryState'
  { fromLaunchTemplateAutoRecoveryState ::
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

pattern LaunchTemplateAutoRecoveryState_Default :: LaunchTemplateAutoRecoveryState
pattern LaunchTemplateAutoRecoveryState_Default = LaunchTemplateAutoRecoveryState' "default"

pattern LaunchTemplateAutoRecoveryState_Disabled :: LaunchTemplateAutoRecoveryState
pattern LaunchTemplateAutoRecoveryState_Disabled = LaunchTemplateAutoRecoveryState' "disabled"

{-# COMPLETE
  LaunchTemplateAutoRecoveryState_Default,
  LaunchTemplateAutoRecoveryState_Disabled,
  LaunchTemplateAutoRecoveryState'
  #-}
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
-- Module      : Amazonka.Panorama.Types.DeviceAggregatedStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Panorama.Types.DeviceAggregatedStatus
  ( DeviceAggregatedStatus
      ( ..,
        DeviceAggregatedStatus_AWAITING_PROVISIONING,
        DeviceAggregatedStatus_DELETING,
        DeviceAggregatedStatus_ERROR,
        DeviceAggregatedStatus_FAILED,
        DeviceAggregatedStatus_LEASE_EXPIRED,
        DeviceAggregatedStatus_OFFLINE,
        DeviceAggregatedStatus_ONLINE,
        DeviceAggregatedStatus_PENDING,
        DeviceAggregatedStatus_UPDATE_NEEDED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DeviceAggregatedStatus = DeviceAggregatedStatus'
  { fromDeviceAggregatedStatus ::
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

pattern DeviceAggregatedStatus_AWAITING_PROVISIONING :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_AWAITING_PROVISIONING = DeviceAggregatedStatus' "AWAITING_PROVISIONING"

pattern DeviceAggregatedStatus_DELETING :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_DELETING = DeviceAggregatedStatus' "DELETING"

pattern DeviceAggregatedStatus_ERROR :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_ERROR = DeviceAggregatedStatus' "ERROR"

pattern DeviceAggregatedStatus_FAILED :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_FAILED = DeviceAggregatedStatus' "FAILED"

pattern DeviceAggregatedStatus_LEASE_EXPIRED :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_LEASE_EXPIRED = DeviceAggregatedStatus' "LEASE_EXPIRED"

pattern DeviceAggregatedStatus_OFFLINE :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_OFFLINE = DeviceAggregatedStatus' "OFFLINE"

pattern DeviceAggregatedStatus_ONLINE :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_ONLINE = DeviceAggregatedStatus' "ONLINE"

pattern DeviceAggregatedStatus_PENDING :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_PENDING = DeviceAggregatedStatus' "PENDING"

pattern DeviceAggregatedStatus_UPDATE_NEEDED :: DeviceAggregatedStatus
pattern DeviceAggregatedStatus_UPDATE_NEEDED = DeviceAggregatedStatus' "UPDATE_NEEDED"

{-# COMPLETE
  DeviceAggregatedStatus_AWAITING_PROVISIONING,
  DeviceAggregatedStatus_DELETING,
  DeviceAggregatedStatus_ERROR,
  DeviceAggregatedStatus_FAILED,
  DeviceAggregatedStatus_LEASE_EXPIRED,
  DeviceAggregatedStatus_OFFLINE,
  DeviceAggregatedStatus_ONLINE,
  DeviceAggregatedStatus_PENDING,
  DeviceAggregatedStatus_UPDATE_NEEDED,
  DeviceAggregatedStatus'
  #-}

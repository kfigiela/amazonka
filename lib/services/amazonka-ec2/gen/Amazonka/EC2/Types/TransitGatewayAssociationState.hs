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
-- Module      : Amazonka.EC2.Types.TransitGatewayAssociationState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TransitGatewayAssociationState
  ( TransitGatewayAssociationState
      ( ..,
        TransitGatewayAssociationState_Associated,
        TransitGatewayAssociationState_Associating,
        TransitGatewayAssociationState_Disassociated,
        TransitGatewayAssociationState_Disassociating
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype TransitGatewayAssociationState = TransitGatewayAssociationState'
  { fromTransitGatewayAssociationState ::
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

pattern TransitGatewayAssociationState_Associated :: TransitGatewayAssociationState
pattern TransitGatewayAssociationState_Associated = TransitGatewayAssociationState' "associated"

pattern TransitGatewayAssociationState_Associating :: TransitGatewayAssociationState
pattern TransitGatewayAssociationState_Associating = TransitGatewayAssociationState' "associating"

pattern TransitGatewayAssociationState_Disassociated :: TransitGatewayAssociationState
pattern TransitGatewayAssociationState_Disassociated = TransitGatewayAssociationState' "disassociated"

pattern TransitGatewayAssociationState_Disassociating :: TransitGatewayAssociationState
pattern TransitGatewayAssociationState_Disassociating = TransitGatewayAssociationState' "disassociating"

{-# COMPLETE
  TransitGatewayAssociationState_Associated,
  TransitGatewayAssociationState_Associating,
  TransitGatewayAssociationState_Disassociated,
  TransitGatewayAssociationState_Disassociating,
  TransitGatewayAssociationState'
  #-}

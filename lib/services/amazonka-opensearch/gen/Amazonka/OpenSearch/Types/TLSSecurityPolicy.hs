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
-- Module      : Amazonka.OpenSearch.Types.TLSSecurityPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.TLSSecurityPolicy
  ( TLSSecurityPolicy
      ( ..,
        TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07,
        TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype TLSSecurityPolicy = TLSSecurityPolicy'
  { fromTLSSecurityPolicy ::
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

pattern TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07 :: TLSSecurityPolicy
pattern TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07 = TLSSecurityPolicy' "Policy-Min-TLS-1-0-2019-07"

pattern TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07 :: TLSSecurityPolicy
pattern TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07 = TLSSecurityPolicy' "Policy-Min-TLS-1-2-2019-07"

{-# COMPLETE
  TLSSecurityPolicy_Policy_Min_TLS_1_0_2019_07,
  TLSSecurityPolicy_Policy_Min_TLS_1_2_2019_07,
  TLSSecurityPolicy'
  #-}

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
-- Module      : Amazonka.Config.Types.ConfigRuleComplianceSummaryGroupKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.ConfigRuleComplianceSummaryGroupKey
  ( ConfigRuleComplianceSummaryGroupKey
      ( ..,
        ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID,
        ConfigRuleComplianceSummaryGroupKey_AWS_REGION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ConfigRuleComplianceSummaryGroupKey = ConfigRuleComplianceSummaryGroupKey'
  { fromConfigRuleComplianceSummaryGroupKey ::
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

pattern ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID :: ConfigRuleComplianceSummaryGroupKey
pattern ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID = ConfigRuleComplianceSummaryGroupKey' "ACCOUNT_ID"

pattern ConfigRuleComplianceSummaryGroupKey_AWS_REGION :: ConfigRuleComplianceSummaryGroupKey
pattern ConfigRuleComplianceSummaryGroupKey_AWS_REGION = ConfigRuleComplianceSummaryGroupKey' "AWS_REGION"

{-# COMPLETE
  ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID,
  ConfigRuleComplianceSummaryGroupKey_AWS_REGION,
  ConfigRuleComplianceSummaryGroupKey'
  #-}

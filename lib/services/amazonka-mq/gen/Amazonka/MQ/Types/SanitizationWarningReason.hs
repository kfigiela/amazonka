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
-- Module      : Amazonka.MQ.Types.SanitizationWarningReason
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MQ.Types.SanitizationWarningReason
  ( SanitizationWarningReason
      ( ..,
        SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED,
        SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED,
        SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The reason for which the XML elements or attributes were sanitized.
newtype SanitizationWarningReason = SanitizationWarningReason'
  { fromSanitizationWarningReason ::
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

pattern SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED = SanitizationWarningReason' "DISALLOWED_ATTRIBUTE_REMOVED"

pattern SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED = SanitizationWarningReason' "DISALLOWED_ELEMENT_REMOVED"

pattern SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED = SanitizationWarningReason' "INVALID_ATTRIBUTE_VALUE_REMOVED"

{-# COMPLETE
  SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED,
  SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED,
  SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED,
  SanitizationWarningReason'
  #-}

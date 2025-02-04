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
-- Module      : Amazonka.MechanicalTurk.Types.ReviewActionStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MechanicalTurk.Types.ReviewActionStatus
  ( ReviewActionStatus
      ( ..,
        ReviewActionStatus_Cancelled,
        ReviewActionStatus_Failed,
        ReviewActionStatus_Intended,
        ReviewActionStatus_Succeeded
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ReviewActionStatus = ReviewActionStatus'
  { fromReviewActionStatus ::
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

pattern ReviewActionStatus_Cancelled :: ReviewActionStatus
pattern ReviewActionStatus_Cancelled = ReviewActionStatus' "Cancelled"

pattern ReviewActionStatus_Failed :: ReviewActionStatus
pattern ReviewActionStatus_Failed = ReviewActionStatus' "Failed"

pattern ReviewActionStatus_Intended :: ReviewActionStatus
pattern ReviewActionStatus_Intended = ReviewActionStatus' "Intended"

pattern ReviewActionStatus_Succeeded :: ReviewActionStatus
pattern ReviewActionStatus_Succeeded = ReviewActionStatus' "Succeeded"

{-# COMPLETE
  ReviewActionStatus_Cancelled,
  ReviewActionStatus_Failed,
  ReviewActionStatus_Intended,
  ReviewActionStatus_Succeeded,
  ReviewActionStatus'
  #-}

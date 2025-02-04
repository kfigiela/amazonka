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
-- Module      : Amazonka.Kendra.Types.ExperienceStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.ExperienceStatus
  ( ExperienceStatus
      ( ..,
        ExperienceStatus_ACTIVE,
        ExperienceStatus_CREATING,
        ExperienceStatus_DELETING,
        ExperienceStatus_FAILED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ExperienceStatus = ExperienceStatus'
  { fromExperienceStatus ::
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

pattern ExperienceStatus_ACTIVE :: ExperienceStatus
pattern ExperienceStatus_ACTIVE = ExperienceStatus' "ACTIVE"

pattern ExperienceStatus_CREATING :: ExperienceStatus
pattern ExperienceStatus_CREATING = ExperienceStatus' "CREATING"

pattern ExperienceStatus_DELETING :: ExperienceStatus
pattern ExperienceStatus_DELETING = ExperienceStatus' "DELETING"

pattern ExperienceStatus_FAILED :: ExperienceStatus
pattern ExperienceStatus_FAILED = ExperienceStatus' "FAILED"

{-# COMPLETE
  ExperienceStatus_ACTIVE,
  ExperienceStatus_CREATING,
  ExperienceStatus_DELETING,
  ExperienceStatus_FAILED,
  ExperienceStatus'
  #-}

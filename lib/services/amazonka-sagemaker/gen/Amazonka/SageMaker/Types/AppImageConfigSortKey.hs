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
-- Module      : Amazonka.SageMaker.Types.AppImageConfigSortKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AppImageConfigSortKey
  ( AppImageConfigSortKey
      ( ..,
        AppImageConfigSortKey_CreationTime,
        AppImageConfigSortKey_LastModifiedTime,
        AppImageConfigSortKey_Name
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AppImageConfigSortKey = AppImageConfigSortKey'
  { fromAppImageConfigSortKey ::
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

pattern AppImageConfigSortKey_CreationTime :: AppImageConfigSortKey
pattern AppImageConfigSortKey_CreationTime = AppImageConfigSortKey' "CreationTime"

pattern AppImageConfigSortKey_LastModifiedTime :: AppImageConfigSortKey
pattern AppImageConfigSortKey_LastModifiedTime = AppImageConfigSortKey' "LastModifiedTime"

pattern AppImageConfigSortKey_Name :: AppImageConfigSortKey
pattern AppImageConfigSortKey_Name = AppImageConfigSortKey' "Name"

{-# COMPLETE
  AppImageConfigSortKey_CreationTime,
  AppImageConfigSortKey_LastModifiedTime,
  AppImageConfigSortKey_Name,
  AppImageConfigSortKey'
  #-}

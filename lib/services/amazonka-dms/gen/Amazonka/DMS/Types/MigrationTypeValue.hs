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
-- Module      : Amazonka.DMS.Types.MigrationTypeValue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.MigrationTypeValue
  ( MigrationTypeValue
      ( ..,
        MigrationTypeValue_Cdc,
        MigrationTypeValue_Full_load,
        MigrationTypeValue_Full_load_and_cdc
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype MigrationTypeValue = MigrationTypeValue'
  { fromMigrationTypeValue ::
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

pattern MigrationTypeValue_Cdc :: MigrationTypeValue
pattern MigrationTypeValue_Cdc = MigrationTypeValue' "cdc"

pattern MigrationTypeValue_Full_load :: MigrationTypeValue
pattern MigrationTypeValue_Full_load = MigrationTypeValue' "full-load"

pattern MigrationTypeValue_Full_load_and_cdc :: MigrationTypeValue
pattern MigrationTypeValue_Full_load_and_cdc = MigrationTypeValue' "full-load-and-cdc"

{-# COMPLETE
  MigrationTypeValue_Cdc,
  MigrationTypeValue_Full_load,
  MigrationTypeValue_Full_load_and_cdc,
  MigrationTypeValue'
  #-}

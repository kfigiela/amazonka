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
-- Module      : Amazonka.GreengrassV2.Types.InstalledComponentTopologyFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GreengrassV2.Types.InstalledComponentTopologyFilter
  ( InstalledComponentTopologyFilter
      ( ..,
        InstalledComponentTopologyFilter_ALL,
        InstalledComponentTopologyFilter_ROOT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype InstalledComponentTopologyFilter = InstalledComponentTopologyFilter'
  { fromInstalledComponentTopologyFilter ::
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

pattern InstalledComponentTopologyFilter_ALL :: InstalledComponentTopologyFilter
pattern InstalledComponentTopologyFilter_ALL = InstalledComponentTopologyFilter' "ALL"

pattern InstalledComponentTopologyFilter_ROOT :: InstalledComponentTopologyFilter
pattern InstalledComponentTopologyFilter_ROOT = InstalledComponentTopologyFilter' "ROOT"

{-# COMPLETE
  InstalledComponentTopologyFilter_ALL,
  InstalledComponentTopologyFilter_ROOT,
  InstalledComponentTopologyFilter'
  #-}

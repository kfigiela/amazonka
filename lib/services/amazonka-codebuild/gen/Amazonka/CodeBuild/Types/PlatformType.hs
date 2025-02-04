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
-- Module      : Amazonka.CodeBuild.Types.PlatformType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeBuild.Types.PlatformType
  ( PlatformType
      ( ..,
        PlatformType_AMAZON_LINUX,
        PlatformType_DEBIAN,
        PlatformType_UBUNTU,
        PlatformType_WINDOWS_SERVER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PlatformType = PlatformType'
  { fromPlatformType ::
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

pattern PlatformType_AMAZON_LINUX :: PlatformType
pattern PlatformType_AMAZON_LINUX = PlatformType' "AMAZON_LINUX"

pattern PlatformType_DEBIAN :: PlatformType
pattern PlatformType_DEBIAN = PlatformType' "DEBIAN"

pattern PlatformType_UBUNTU :: PlatformType
pattern PlatformType_UBUNTU = PlatformType' "UBUNTU"

pattern PlatformType_WINDOWS_SERVER :: PlatformType
pattern PlatformType_WINDOWS_SERVER = PlatformType' "WINDOWS_SERVER"

{-# COMPLETE
  PlatformType_AMAZON_LINUX,
  PlatformType_DEBIAN,
  PlatformType_UBUNTU,
  PlatformType_WINDOWS_SERVER,
  PlatformType'
  #-}

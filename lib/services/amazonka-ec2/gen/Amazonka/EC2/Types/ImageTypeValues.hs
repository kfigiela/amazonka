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
-- Module      : Amazonka.EC2.Types.ImageTypeValues
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ImageTypeValues
  ( ImageTypeValues
      ( ..,
        ImageTypeValues_Kernel,
        ImageTypeValues_Machine,
        ImageTypeValues_Ramdisk
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype ImageTypeValues = ImageTypeValues'
  { fromImageTypeValues ::
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

pattern ImageTypeValues_Kernel :: ImageTypeValues
pattern ImageTypeValues_Kernel = ImageTypeValues' "kernel"

pattern ImageTypeValues_Machine :: ImageTypeValues
pattern ImageTypeValues_Machine = ImageTypeValues' "machine"

pattern ImageTypeValues_Ramdisk :: ImageTypeValues
pattern ImageTypeValues_Ramdisk = ImageTypeValues' "ramdisk"

{-# COMPLETE
  ImageTypeValues_Kernel,
  ImageTypeValues_Machine,
  ImageTypeValues_Ramdisk,
  ImageTypeValues'
  #-}

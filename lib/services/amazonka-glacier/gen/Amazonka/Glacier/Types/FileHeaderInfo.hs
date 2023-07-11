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
-- Module      : Amazonka.Glacier.Types.FileHeaderInfo
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glacier.Types.FileHeaderInfo
  ( FileHeaderInfo
      ( ..,
        FileHeaderInfo_IGNORE,
        FileHeaderInfo_NONE,
        FileHeaderInfo_USE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype FileHeaderInfo = FileHeaderInfo'
  { fromFileHeaderInfo ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern FileHeaderInfo_IGNORE :: FileHeaderInfo
pattern FileHeaderInfo_IGNORE = FileHeaderInfo' "IGNORE"

pattern FileHeaderInfo_NONE :: FileHeaderInfo
pattern FileHeaderInfo_NONE = FileHeaderInfo' "NONE"

pattern FileHeaderInfo_USE :: FileHeaderInfo
pattern FileHeaderInfo_USE = FileHeaderInfo' "USE"

{-# COMPLETE
  FileHeaderInfo_IGNORE,
  FileHeaderInfo_NONE,
  FileHeaderInfo_USE,
  FileHeaderInfo'
  #-}

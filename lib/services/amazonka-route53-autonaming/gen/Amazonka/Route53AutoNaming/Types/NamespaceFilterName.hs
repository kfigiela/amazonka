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
-- Module      : Amazonka.Route53AutoNaming.Types.NamespaceFilterName
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53AutoNaming.Types.NamespaceFilterName
  ( NamespaceFilterName
      ( ..,
        NamespaceFilterName_HTTP_NAME,
        NamespaceFilterName_NAME,
        NamespaceFilterName_TYPE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype NamespaceFilterName = NamespaceFilterName'
  { fromNamespaceFilterName ::
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

pattern NamespaceFilterName_HTTP_NAME :: NamespaceFilterName
pattern NamespaceFilterName_HTTP_NAME = NamespaceFilterName' "HTTP_NAME"

pattern NamespaceFilterName_NAME :: NamespaceFilterName
pattern NamespaceFilterName_NAME = NamespaceFilterName' "NAME"

pattern NamespaceFilterName_TYPE :: NamespaceFilterName
pattern NamespaceFilterName_TYPE = NamespaceFilterName' "TYPE"

{-# COMPLETE
  NamespaceFilterName_HTTP_NAME,
  NamespaceFilterName_NAME,
  NamespaceFilterName_TYPE,
  NamespaceFilterName'
  #-}

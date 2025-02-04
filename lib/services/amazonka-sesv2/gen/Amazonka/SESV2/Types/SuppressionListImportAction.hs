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
-- Module      : Amazonka.SESV2.Types.SuppressionListImportAction
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.SuppressionListImportAction
  ( SuppressionListImportAction
      ( ..,
        SuppressionListImportAction_DELETE,
        SuppressionListImportAction_PUT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The type of action to perform on the address. The following are possible
-- values:
--
-- -   PUT: add the addresses to the suppression list.
--
-- -   DELETE: remove the address from the suppression list.
newtype SuppressionListImportAction = SuppressionListImportAction'
  { fromSuppressionListImportAction ::
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

pattern SuppressionListImportAction_DELETE :: SuppressionListImportAction
pattern SuppressionListImportAction_DELETE = SuppressionListImportAction' "DELETE"

pattern SuppressionListImportAction_PUT :: SuppressionListImportAction
pattern SuppressionListImportAction_PUT = SuppressionListImportAction' "PUT"

{-# COMPLETE
  SuppressionListImportAction_DELETE,
  SuppressionListImportAction_PUT,
  SuppressionListImportAction'
  #-}

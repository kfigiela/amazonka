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
-- Module      : Amazonka.Kendra.Types.SalesforceKnowledgeArticleState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.SalesforceKnowledgeArticleState
  ( SalesforceKnowledgeArticleState
      ( ..,
        SalesforceKnowledgeArticleState_ARCHIVED,
        SalesforceKnowledgeArticleState_DRAFT,
        SalesforceKnowledgeArticleState_PUBLISHED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SalesforceKnowledgeArticleState = SalesforceKnowledgeArticleState'
  { fromSalesforceKnowledgeArticleState ::
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

pattern SalesforceKnowledgeArticleState_ARCHIVED :: SalesforceKnowledgeArticleState
pattern SalesforceKnowledgeArticleState_ARCHIVED = SalesforceKnowledgeArticleState' "ARCHIVED"

pattern SalesforceKnowledgeArticleState_DRAFT :: SalesforceKnowledgeArticleState
pattern SalesforceKnowledgeArticleState_DRAFT = SalesforceKnowledgeArticleState' "DRAFT"

pattern SalesforceKnowledgeArticleState_PUBLISHED :: SalesforceKnowledgeArticleState
pattern SalesforceKnowledgeArticleState_PUBLISHED = SalesforceKnowledgeArticleState' "PUBLISHED"

{-# COMPLETE
  SalesforceKnowledgeArticleState_ARCHIVED,
  SalesforceKnowledgeArticleState_DRAFT,
  SalesforceKnowledgeArticleState_PUBLISHED,
  SalesforceKnowledgeArticleState'
  #-}

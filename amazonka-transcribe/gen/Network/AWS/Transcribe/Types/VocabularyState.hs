{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.VocabularyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.VocabularyState
  ( VocabularyState
      ( ..,
        VocabularyState_FAILED,
        VocabularyState_PENDING,
        VocabularyState_READY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VocabularyState = VocabularyState'
  { fromVocabularyState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern VocabularyState_FAILED :: VocabularyState
pattern VocabularyState_FAILED = VocabularyState' "FAILED"

pattern VocabularyState_PENDING :: VocabularyState
pattern VocabularyState_PENDING = VocabularyState' "PENDING"

pattern VocabularyState_READY :: VocabularyState
pattern VocabularyState_READY = VocabularyState' "READY"

{-# COMPLETE
  VocabularyState_FAILED,
  VocabularyState_PENDING,
  VocabularyState_READY,
  VocabularyState'
  #-}
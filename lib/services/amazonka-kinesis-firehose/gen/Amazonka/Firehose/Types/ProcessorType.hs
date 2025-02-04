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
-- Module      : Amazonka.Firehose.Types.ProcessorType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.ProcessorType
  ( ProcessorType
      ( ..,
        ProcessorType_AppendDelimiterToRecord,
        ProcessorType_Lambda,
        ProcessorType_MetadataExtraction,
        ProcessorType_RecordDeAggregation
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ProcessorType = ProcessorType'
  { fromProcessorType ::
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

pattern ProcessorType_AppendDelimiterToRecord :: ProcessorType
pattern ProcessorType_AppendDelimiterToRecord = ProcessorType' "AppendDelimiterToRecord"

pattern ProcessorType_Lambda :: ProcessorType
pattern ProcessorType_Lambda = ProcessorType' "Lambda"

pattern ProcessorType_MetadataExtraction :: ProcessorType
pattern ProcessorType_MetadataExtraction = ProcessorType' "MetadataExtraction"

pattern ProcessorType_RecordDeAggregation :: ProcessorType
pattern ProcessorType_RecordDeAggregation = ProcessorType' "RecordDeAggregation"

{-# COMPLETE
  ProcessorType_AppendDelimiterToRecord,
  ProcessorType_Lambda,
  ProcessorType_MetadataExtraction,
  ProcessorType_RecordDeAggregation,
  ProcessorType'
  #-}

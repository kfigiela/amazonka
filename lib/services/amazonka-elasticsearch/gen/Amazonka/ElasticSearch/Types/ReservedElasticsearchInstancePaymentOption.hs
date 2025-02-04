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
-- Module      : Amazonka.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
  ( ReservedElasticsearchInstancePaymentOption
      ( ..,
        ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT,
        ReservedElasticsearchInstancePaymentOption_NO_UPFRONT,
        ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ReservedElasticsearchInstancePaymentOption = ReservedElasticsearchInstancePaymentOption'
  { fromReservedElasticsearchInstancePaymentOption ::
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

pattern ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT = ReservedElasticsearchInstancePaymentOption' "ALL_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOption_NO_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_NO_UPFRONT = ReservedElasticsearchInstancePaymentOption' "NO_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT = ReservedElasticsearchInstancePaymentOption' "PARTIAL_UPFRONT"

{-# COMPLETE
  ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT,
  ReservedElasticsearchInstancePaymentOption_NO_UPFRONT,
  ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT,
  ReservedElasticsearchInstancePaymentOption'
  #-}

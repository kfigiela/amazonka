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
-- Module      : Amazonka.Discovery.Types.ExportStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Discovery.Types.ExportStatus
  ( ExportStatus
      ( ..,
        ExportStatus_FAILED,
        ExportStatus_IN_PROGRESS,
        ExportStatus_SUCCEEDED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ExportStatus = ExportStatus'
  { fromExportStatus ::
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

pattern ExportStatus_FAILED :: ExportStatus
pattern ExportStatus_FAILED = ExportStatus' "FAILED"

pattern ExportStatus_IN_PROGRESS :: ExportStatus
pattern ExportStatus_IN_PROGRESS = ExportStatus' "IN_PROGRESS"

pattern ExportStatus_SUCCEEDED :: ExportStatus
pattern ExportStatus_SUCCEEDED = ExportStatus' "SUCCEEDED"

{-# COMPLETE
  ExportStatus_FAILED,
  ExportStatus_IN_PROGRESS,
  ExportStatus_SUCCEEDED,
  ExportStatus'
  #-}

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53.Waiters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53.GetChange
import Amazonka.Route53.Lens
import Amazonka.Route53.Types

-- | Polls 'Amazonka.Route53.GetChange' every 30 seconds until a successful state is reached. An error is returned after 60 failed checks.
newResourceRecordSetsChanged :: Core.Wait GetChange
newResourceRecordSetsChanged =
  Core.Wait
    { Core._waitName =
        "ResourceRecordSetsChanged",
      Core._waitAttempts = 60,
      Core._waitDelay = 30,
      Core._waitAcceptors =
        [ Core.matchAll
            "INSYNC"
            Core.AcceptSuccess
            ( getChangeResponse_changeInfo
                Prelude.. changeInfo_status
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

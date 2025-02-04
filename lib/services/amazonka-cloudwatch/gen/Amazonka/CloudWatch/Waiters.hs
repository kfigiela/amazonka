{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudWatch.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Waiters where

import Amazonka.CloudWatch.DescribeAlarms
import Amazonka.CloudWatch.Lens
import Amazonka.CloudWatch.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.CloudWatch.DescribeAlarms' every 5 seconds until a successful state is reached. An error is returned after 40 failed checks.
newCompositeAlarmExists :: Core.Wait DescribeAlarms
newCompositeAlarmExists =
  Core.Wait
    { Core._waitName = "CompositeAlarmExists",
      Core._waitAttempts = 40,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchNonEmpty
            Prelude.True
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeAlarmsResponse_compositeAlarms
                        Prelude.. Lens._Just
                    )
                )
            )
        ]
    }

-- | Polls 'Amazonka.CloudWatch.DescribeAlarms' every 5 seconds until a successful state is reached. An error is returned after 40 failed checks.
newAlarmExists :: Core.Wait DescribeAlarms
newAlarmExists =
  Core.Wait
    { Core._waitName = "AlarmExists",
      Core._waitAttempts = 40,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchNonEmpty
            Prelude.True
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeAlarmsResponse_metricAlarms
                        Prelude.. Lens._Just
                    )
                )
            )
        ]
    }

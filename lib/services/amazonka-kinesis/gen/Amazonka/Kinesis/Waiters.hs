{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Kinesis.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kinesis.Waiters where

import qualified Amazonka.Core as Core
import Amazonka.Kinesis.DescribeStream
import Amazonka.Kinesis.Lens
import Amazonka.Kinesis.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.Kinesis.DescribeStream' every 10 seconds until a successful state is reached. An error is returned after 18 failed checks.
newStreamExists :: Core.Wait DescribeStream
newStreamExists =
  Core.Wait
    { Core._waitName = "StreamExists",
      Core._waitAttempts = 18,
      Core._waitDelay = 10,
      Core._waitAcceptors =
        [ Core.matchAll
            "ACTIVE"
            Core.AcceptSuccess
            ( describeStreamResponse_streamDescription
                Prelude.. streamDescription_streamStatus
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.Kinesis.DescribeStream' every 10 seconds until a successful state is reached. An error is returned after 18 failed checks.
newStreamNotExists :: Core.Wait DescribeStream
newStreamNotExists =
  Core.Wait
    { Core._waitName = "StreamNotExists",
      Core._waitAttempts = 18,
      Core._waitDelay = 10,
      Core._waitAcceptors =
        [ Core.matchError
            "ResourceNotFoundException"
            Core.AcceptSuccess
        ]
    }

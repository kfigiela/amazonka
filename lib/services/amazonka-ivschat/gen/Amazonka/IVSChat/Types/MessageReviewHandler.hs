{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IVSChat.Types.MessageReviewHandler
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVSChat.Types.MessageReviewHandler where

import qualified Amazonka.Core as Core
import Amazonka.IVSChat.Types.FallbackResult
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for optional message review.
--
-- /See:/ 'newMessageReviewHandler' smart constructor.
data MessageReviewHandler = MessageReviewHandler'
  { -- | Identifier of the message review handler. Currently this must be an ARN
    -- of a lambda function.
    uri :: Prelude.Maybe Prelude.Text,
    -- | Specifies the fallback behavior (whether the message is allowed or
    -- denied) if the handler does not return a valid response, encounters an
    -- error, or times out. (For the timeout period, see
    -- <https://docs.aws.amazon.com/ivs/latest/userguide/service-quotas.html Service Quotas>.)
    -- If allowed, the message is delivered with returned content to all users
    -- connected to the room. If denied, the message is not delivered to any
    -- user. Default: @ALLOW@.
    fallbackResult :: Prelude.Maybe FallbackResult
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MessageReviewHandler' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uri', 'messageReviewHandler_uri' - Identifier of the message review handler. Currently this must be an ARN
-- of a lambda function.
--
-- 'fallbackResult', 'messageReviewHandler_fallbackResult' - Specifies the fallback behavior (whether the message is allowed or
-- denied) if the handler does not return a valid response, encounters an
-- error, or times out. (For the timeout period, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/service-quotas.html Service Quotas>.)
-- If allowed, the message is delivered with returned content to all users
-- connected to the room. If denied, the message is not delivered to any
-- user. Default: @ALLOW@.
newMessageReviewHandler ::
  MessageReviewHandler
newMessageReviewHandler =
  MessageReviewHandler'
    { uri = Prelude.Nothing,
      fallbackResult = Prelude.Nothing
    }

-- | Identifier of the message review handler. Currently this must be an ARN
-- of a lambda function.
messageReviewHandler_uri :: Lens.Lens' MessageReviewHandler (Prelude.Maybe Prelude.Text)
messageReviewHandler_uri = Lens.lens (\MessageReviewHandler' {uri} -> uri) (\s@MessageReviewHandler' {} a -> s {uri = a} :: MessageReviewHandler)

-- | Specifies the fallback behavior (whether the message is allowed or
-- denied) if the handler does not return a valid response, encounters an
-- error, or times out. (For the timeout period, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/service-quotas.html Service Quotas>.)
-- If allowed, the message is delivered with returned content to all users
-- connected to the room. If denied, the message is not delivered to any
-- user. Default: @ALLOW@.
messageReviewHandler_fallbackResult :: Lens.Lens' MessageReviewHandler (Prelude.Maybe FallbackResult)
messageReviewHandler_fallbackResult = Lens.lens (\MessageReviewHandler' {fallbackResult} -> fallbackResult) (\s@MessageReviewHandler' {} a -> s {fallbackResult = a} :: MessageReviewHandler)

instance Core.FromJSON MessageReviewHandler where
  parseJSON =
    Core.withObject
      "MessageReviewHandler"
      ( \x ->
          MessageReviewHandler'
            Prelude.<$> (x Core..:? "uri")
            Prelude.<*> (x Core..:? "fallbackResult")
      )

instance Prelude.Hashable MessageReviewHandler where
  hashWithSalt _salt MessageReviewHandler' {..} =
    _salt `Prelude.hashWithSalt` uri
      `Prelude.hashWithSalt` fallbackResult

instance Prelude.NFData MessageReviewHandler where
  rnf MessageReviewHandler' {..} =
    Prelude.rnf uri
      `Prelude.seq` Prelude.rnf fallbackResult

instance Core.ToJSON MessageReviewHandler where
  toJSON MessageReviewHandler' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("uri" Core..=) Prelude.<$> uri,
            ("fallbackResult" Core..=)
              Prelude.<$> fallbackResult
          ]
      )

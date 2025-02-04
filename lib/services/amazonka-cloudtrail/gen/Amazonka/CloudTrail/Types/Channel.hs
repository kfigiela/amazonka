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
-- Module      : Amazonka.CloudTrail.Types.Channel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudTrail.Types.Channel where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a returned CloudTrail channel.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel'
  { -- | The name of the CloudTrail channel. For service-linked channels, the
    -- name is @aws-service-channel\/service-name\/custom-suffix@ where
    -- @service-name@ represents the name of the Amazon Web Services service
    -- that created the channel and @custom-suffix@ represents the suffix
    -- created by the Amazon Web Services service.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the channel.
    channelArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Channel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'channel_name' - The name of the CloudTrail channel. For service-linked channels, the
-- name is @aws-service-channel\/service-name\/custom-suffix@ where
-- @service-name@ represents the name of the Amazon Web Services service
-- that created the channel and @custom-suffix@ represents the suffix
-- created by the Amazon Web Services service.
--
-- 'channelArn', 'channel_channelArn' - The Amazon Resource Name (ARN) of the channel.
newChannel ::
  Channel
newChannel =
  Channel'
    { name = Prelude.Nothing,
      channelArn = Prelude.Nothing
    }

-- | The name of the CloudTrail channel. For service-linked channels, the
-- name is @aws-service-channel\/service-name\/custom-suffix@ where
-- @service-name@ represents the name of the Amazon Web Services service
-- that created the channel and @custom-suffix@ represents the suffix
-- created by the Amazon Web Services service.
channel_name :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_name = Lens.lens (\Channel' {name} -> name) (\s@Channel' {} a -> s {name = a} :: Channel)

-- | The Amazon Resource Name (ARN) of the channel.
channel_channelArn :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_channelArn = Lens.lens (\Channel' {channelArn} -> channelArn) (\s@Channel' {} a -> s {channelArn = a} :: Channel)

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \x ->
          Channel'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ChannelArn")
      )

instance Prelude.Hashable Channel where
  hashWithSalt _salt Channel' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` channelArn

instance Prelude.NFData Channel where
  rnf Channel' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf channelArn

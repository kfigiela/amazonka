{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IVS.UpdateChannel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a channel\'s configuration. This does not affect an ongoing
-- stream of this channel. You must stop and restart the stream for the
-- changes to take effect.
module Amazonka.IVS.UpdateChannel
  ( -- * Creating a Request
    UpdateChannel (..),
    newUpdateChannel,

    -- * Request Lenses
    updateChannel_name,
    updateChannel_type,
    updateChannel_latencyMode,
    updateChannel_authorized,
    updateChannel_recordingConfigurationArn,
    updateChannel_arn,

    -- * Destructuring the Response
    UpdateChannelResponse (..),
    newUpdateChannelResponse,

    -- * Response Lenses
    updateChannelResponse_channel,
    updateChannelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateChannel' smart constructor.
data UpdateChannel = UpdateChannel'
  { -- | Channel name.
    name :: Prelude.Maybe Prelude.Text,
    -- | Channel type, which determines the allowable resolution and bitrate. /If
    -- you exceed the allowable resolution or bitrate, the stream probably will
    -- disconnect immediately/. Valid values:
    --
    -- -   @STANDARD@: Video is transcoded: multiple qualities are generated
    --     from the original input, to automatically give viewers the best
    --     experience for their devices and network conditions. Transcoding
    --     allows higher playback quality across a range of download speeds.
    --     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
    --     Audio is transcoded only for renditions 360p and below; above that,
    --     audio is passed through. This is the default.
    --
    -- -   @BASIC@: Video is transmuxed: Amazon IVS delivers the original input
    --     to viewers. The viewer’s video-quality choice is limited to the
    --     original input. Resolution can be up to 1080p and bitrate can be up
    --     to 1.5 Mbps for 480p and up to 3.5 Mbps for resolutions between 480p
    --     and 1080p.
    type' :: Prelude.Maybe ChannelType,
    -- | Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
    -- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
    -- (Note: In the Amazon IVS console, @LOW@ and @NORMAL@ correspond to
    -- Ultra-low and Standard, respectively.)
    latencyMode :: Prelude.Maybe ChannelLatencyMode,
    -- | Whether the channel is private (enabled for playback authorization).
    authorized :: Prelude.Maybe Prelude.Bool,
    -- | Recording-configuration ARN. If this is set to an empty string,
    -- recording is disabled. A value other than an empty string indicates that
    -- recording is enabled
    recordingConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | ARN of the channel to be updated.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateChannel_name' - Channel name.
--
-- 'type'', 'updateChannel_type' - Channel type, which determines the allowable resolution and bitrate. /If
-- you exceed the allowable resolution or bitrate, the stream probably will
-- disconnect immediately/. Valid values:
--
-- -   @STANDARD@: Video is transcoded: multiple qualities are generated
--     from the original input, to automatically give viewers the best
--     experience for their devices and network conditions. Transcoding
--     allows higher playback quality across a range of download speeds.
--     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
--     Audio is transcoded only for renditions 360p and below; above that,
--     audio is passed through. This is the default.
--
-- -   @BASIC@: Video is transmuxed: Amazon IVS delivers the original input
--     to viewers. The viewer’s video-quality choice is limited to the
--     original input. Resolution can be up to 1080p and bitrate can be up
--     to 1.5 Mbps for 480p and up to 3.5 Mbps for resolutions between 480p
--     and 1080p.
--
-- 'latencyMode', 'updateChannel_latencyMode' - Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
-- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
-- (Note: In the Amazon IVS console, @LOW@ and @NORMAL@ correspond to
-- Ultra-low and Standard, respectively.)
--
-- 'authorized', 'updateChannel_authorized' - Whether the channel is private (enabled for playback authorization).
--
-- 'recordingConfigurationArn', 'updateChannel_recordingConfigurationArn' - Recording-configuration ARN. If this is set to an empty string,
-- recording is disabled. A value other than an empty string indicates that
-- recording is enabled
--
-- 'arn', 'updateChannel_arn' - ARN of the channel to be updated.
newUpdateChannel ::
  -- | 'arn'
  Prelude.Text ->
  UpdateChannel
newUpdateChannel pArn_ =
  UpdateChannel'
    { name = Prelude.Nothing,
      type' = Prelude.Nothing,
      latencyMode = Prelude.Nothing,
      authorized = Prelude.Nothing,
      recordingConfigurationArn = Prelude.Nothing,
      arn = pArn_
    }

-- | Channel name.
updateChannel_name :: Lens.Lens' UpdateChannel (Prelude.Maybe Prelude.Text)
updateChannel_name = Lens.lens (\UpdateChannel' {name} -> name) (\s@UpdateChannel' {} a -> s {name = a} :: UpdateChannel)

-- | Channel type, which determines the allowable resolution and bitrate. /If
-- you exceed the allowable resolution or bitrate, the stream probably will
-- disconnect immediately/. Valid values:
--
-- -   @STANDARD@: Video is transcoded: multiple qualities are generated
--     from the original input, to automatically give viewers the best
--     experience for their devices and network conditions. Transcoding
--     allows higher playback quality across a range of download speeds.
--     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
--     Audio is transcoded only for renditions 360p and below; above that,
--     audio is passed through. This is the default.
--
-- -   @BASIC@: Video is transmuxed: Amazon IVS delivers the original input
--     to viewers. The viewer’s video-quality choice is limited to the
--     original input. Resolution can be up to 1080p and bitrate can be up
--     to 1.5 Mbps for 480p and up to 3.5 Mbps for resolutions between 480p
--     and 1080p.
updateChannel_type :: Lens.Lens' UpdateChannel (Prelude.Maybe ChannelType)
updateChannel_type = Lens.lens (\UpdateChannel' {type'} -> type') (\s@UpdateChannel' {} a -> s {type' = a} :: UpdateChannel)

-- | Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
-- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
-- (Note: In the Amazon IVS console, @LOW@ and @NORMAL@ correspond to
-- Ultra-low and Standard, respectively.)
updateChannel_latencyMode :: Lens.Lens' UpdateChannel (Prelude.Maybe ChannelLatencyMode)
updateChannel_latencyMode = Lens.lens (\UpdateChannel' {latencyMode} -> latencyMode) (\s@UpdateChannel' {} a -> s {latencyMode = a} :: UpdateChannel)

-- | Whether the channel is private (enabled for playback authorization).
updateChannel_authorized :: Lens.Lens' UpdateChannel (Prelude.Maybe Prelude.Bool)
updateChannel_authorized = Lens.lens (\UpdateChannel' {authorized} -> authorized) (\s@UpdateChannel' {} a -> s {authorized = a} :: UpdateChannel)

-- | Recording-configuration ARN. If this is set to an empty string,
-- recording is disabled. A value other than an empty string indicates that
-- recording is enabled
updateChannel_recordingConfigurationArn :: Lens.Lens' UpdateChannel (Prelude.Maybe Prelude.Text)
updateChannel_recordingConfigurationArn = Lens.lens (\UpdateChannel' {recordingConfigurationArn} -> recordingConfigurationArn) (\s@UpdateChannel' {} a -> s {recordingConfigurationArn = a} :: UpdateChannel)

-- | ARN of the channel to be updated.
updateChannel_arn :: Lens.Lens' UpdateChannel Prelude.Text
updateChannel_arn = Lens.lens (\UpdateChannel' {arn} -> arn) (\s@UpdateChannel' {} a -> s {arn = a} :: UpdateChannel)

instance Core.AWSRequest UpdateChannel where
  type
    AWSResponse UpdateChannel =
      UpdateChannelResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            Prelude.<$> (x Core..?> "channel")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateChannel where
  hashWithSalt _salt UpdateChannel' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` latencyMode
      `Prelude.hashWithSalt` authorized
      `Prelude.hashWithSalt` recordingConfigurationArn
      `Prelude.hashWithSalt` arn

instance Prelude.NFData UpdateChannel where
  rnf UpdateChannel' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf latencyMode
      `Prelude.seq` Prelude.rnf authorized
      `Prelude.seq` Prelude.rnf recordingConfigurationArn
      `Prelude.seq` Prelude.rnf arn

instance Core.ToHeaders UpdateChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateChannel where
  toJSON UpdateChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("type" Core..=) Prelude.<$> type',
            ("latencyMode" Core..=) Prelude.<$> latencyMode,
            ("authorized" Core..=) Prelude.<$> authorized,
            ("recordingConfigurationArn" Core..=)
              Prelude.<$> recordingConfigurationArn,
            Prelude.Just ("arn" Core..= arn)
          ]
      )

instance Core.ToPath UpdateChannel where
  toPath = Prelude.const "/UpdateChannel"

instance Core.ToQuery UpdateChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateChannelResponse' smart constructor.
data UpdateChannelResponse = UpdateChannelResponse'
  { channel :: Prelude.Maybe Channel,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channel', 'updateChannelResponse_channel' - Undocumented member.
--
-- 'httpStatus', 'updateChannelResponse_httpStatus' - The response's http status code.
newUpdateChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateChannelResponse
newUpdateChannelResponse pHttpStatus_ =
  UpdateChannelResponse'
    { channel = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateChannelResponse_channel :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Channel)
updateChannelResponse_channel = Lens.lens (\UpdateChannelResponse' {channel} -> channel) (\s@UpdateChannelResponse' {} a -> s {channel = a} :: UpdateChannelResponse)

-- | The response's http status code.
updateChannelResponse_httpStatus :: Lens.Lens' UpdateChannelResponse Prelude.Int
updateChannelResponse_httpStatus = Lens.lens (\UpdateChannelResponse' {httpStatus} -> httpStatus) (\s@UpdateChannelResponse' {} a -> s {httpStatus = a} :: UpdateChannelResponse)

instance Prelude.NFData UpdateChannelResponse where
  rnf UpdateChannelResponse' {..} =
    Prelude.rnf channel
      `Prelude.seq` Prelude.rnf httpStatus

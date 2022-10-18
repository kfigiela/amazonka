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
-- Module      : Amazonka.MediaTailor.UpdateChannel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing channel.
module Amazonka.MediaTailor.UpdateChannel
  ( -- * Creating a Request
    UpdateChannel (..),
    newUpdateChannel,

    -- * Request Lenses
    updateChannel_fillerSlate,
    updateChannel_channelName,
    updateChannel_outputs,

    -- * Destructuring the Response
    UpdateChannelResponse (..),
    newUpdateChannelResponse,

    -- * Response Lenses
    updateChannelResponse_tags,
    updateChannelResponse_channelName,
    updateChannelResponse_fillerSlate,
    updateChannelResponse_arn,
    updateChannelResponse_lastModifiedTime,
    updateChannelResponse_tier,
    updateChannelResponse_outputs,
    updateChannelResponse_creationTime,
    updateChannelResponse_playbackMode,
    updateChannelResponse_channelState,
    updateChannelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateChannel' smart constructor.
data UpdateChannel = UpdateChannel'
  { -- | The slate used to fill gaps between programs in the schedule. You must
    -- configure filler slate if your channel uses the LINEAR PlaybackMode.
    -- MediaTailor doesn\'t support filler slate for channels using the LOOP
    -- PlaybackMode.
    fillerSlate :: Prelude.Maybe SlateSource,
    -- | The identifier for the channel you are working on.
    channelName :: Prelude.Text,
    -- | The channel\'s output properties.
    outputs :: [RequestOutputItem]
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
-- 'fillerSlate', 'updateChannel_fillerSlate' - The slate used to fill gaps between programs in the schedule. You must
-- configure filler slate if your channel uses the LINEAR PlaybackMode.
-- MediaTailor doesn\'t support filler slate for channels using the LOOP
-- PlaybackMode.
--
-- 'channelName', 'updateChannel_channelName' - The identifier for the channel you are working on.
--
-- 'outputs', 'updateChannel_outputs' - The channel\'s output properties.
newUpdateChannel ::
  -- | 'channelName'
  Prelude.Text ->
  UpdateChannel
newUpdateChannel pChannelName_ =
  UpdateChannel'
    { fillerSlate = Prelude.Nothing,
      channelName = pChannelName_,
      outputs = Prelude.mempty
    }

-- | The slate used to fill gaps between programs in the schedule. You must
-- configure filler slate if your channel uses the LINEAR PlaybackMode.
-- MediaTailor doesn\'t support filler slate for channels using the LOOP
-- PlaybackMode.
updateChannel_fillerSlate :: Lens.Lens' UpdateChannel (Prelude.Maybe SlateSource)
updateChannel_fillerSlate = Lens.lens (\UpdateChannel' {fillerSlate} -> fillerSlate) (\s@UpdateChannel' {} a -> s {fillerSlate = a} :: UpdateChannel)

-- | The identifier for the channel you are working on.
updateChannel_channelName :: Lens.Lens' UpdateChannel Prelude.Text
updateChannel_channelName = Lens.lens (\UpdateChannel' {channelName} -> channelName) (\s@UpdateChannel' {} a -> s {channelName = a} :: UpdateChannel)

-- | The channel\'s output properties.
updateChannel_outputs :: Lens.Lens' UpdateChannel [RequestOutputItem]
updateChannel_outputs = Lens.lens (\UpdateChannel' {outputs} -> outputs) (\s@UpdateChannel' {} a -> s {outputs = a} :: UpdateChannel) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateChannel where
  type
    AWSResponse UpdateChannel =
      UpdateChannelResponse
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ChannelName")
            Prelude.<*> (x Core..?> "FillerSlate")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "Tier")
            Prelude.<*> (x Core..?> "Outputs" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "PlaybackMode")
            Prelude.<*> (x Core..?> "ChannelState")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService UpdateChannel where
  service _proxy = defaultService

instance Prelude.Hashable UpdateChannel where
  hashWithSalt _salt UpdateChannel' {..} =
    _salt `Prelude.hashWithSalt` fillerSlate
      `Prelude.hashWithSalt` channelName
      `Prelude.hashWithSalt` outputs

instance Prelude.NFData UpdateChannel where
  rnf UpdateChannel' {..} =
    Prelude.rnf fillerSlate
      `Prelude.seq` Prelude.rnf channelName
      `Prelude.seq` Prelude.rnf outputs

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
          [ ("FillerSlate" Core..=) Prelude.<$> fillerSlate,
            Prelude.Just ("Outputs" Core..= outputs)
          ]
      )

instance Core.ToPath UpdateChannel where
  toPath UpdateChannel' {..} =
    Prelude.mconcat
      ["/channel/", Core.toBS channelName]

instance Core.ToQuery UpdateChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateChannelResponse' smart constructor.
data UpdateChannelResponse = UpdateChannelResponse'
  { -- | The tags assigned to the channel.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the channel.
    channelName :: Prelude.Maybe Prelude.Text,
    -- | Contains information about the slate used to fill gaps between programs
    -- in the schedule.
    fillerSlate :: Prelude.Maybe SlateSource,
    -- | The ARN of the channel.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of when the channel was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The channel\'s tier.
    tier :: Prelude.Maybe Prelude.Text,
    -- | The channel\'s output properties.
    outputs :: Prelude.Maybe [ResponseOutputItem],
    -- | The timestamp of when the channel was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The channel\'s playback mode.
    playbackMode :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the channel is in a running state or not.
    channelState :: Prelude.Maybe ChannelState,
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
-- 'tags', 'updateChannelResponse_tags' - The tags assigned to the channel.
--
-- 'channelName', 'updateChannelResponse_channelName' - The name of the channel.
--
-- 'fillerSlate', 'updateChannelResponse_fillerSlate' - Contains information about the slate used to fill gaps between programs
-- in the schedule.
--
-- 'arn', 'updateChannelResponse_arn' - The ARN of the channel.
--
-- 'lastModifiedTime', 'updateChannelResponse_lastModifiedTime' - The timestamp of when the channel was last modified.
--
-- 'tier', 'updateChannelResponse_tier' - The channel\'s tier.
--
-- 'outputs', 'updateChannelResponse_outputs' - The channel\'s output properties.
--
-- 'creationTime', 'updateChannelResponse_creationTime' - The timestamp of when the channel was created.
--
-- 'playbackMode', 'updateChannelResponse_playbackMode' - The channel\'s playback mode.
--
-- 'channelState', 'updateChannelResponse_channelState' - Indicates whether the channel is in a running state or not.
--
-- 'httpStatus', 'updateChannelResponse_httpStatus' - The response's http status code.
newUpdateChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateChannelResponse
newUpdateChannelResponse pHttpStatus_ =
  UpdateChannelResponse'
    { tags = Prelude.Nothing,
      channelName = Prelude.Nothing,
      fillerSlate = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      tier = Prelude.Nothing,
      outputs = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      playbackMode = Prelude.Nothing,
      channelState = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the channel.
updateChannelResponse_tags :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateChannelResponse_tags = Lens.lens (\UpdateChannelResponse' {tags} -> tags) (\s@UpdateChannelResponse' {} a -> s {tags = a} :: UpdateChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the channel.
updateChannelResponse_channelName :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.Text)
updateChannelResponse_channelName = Lens.lens (\UpdateChannelResponse' {channelName} -> channelName) (\s@UpdateChannelResponse' {} a -> s {channelName = a} :: UpdateChannelResponse)

-- | Contains information about the slate used to fill gaps between programs
-- in the schedule.
updateChannelResponse_fillerSlate :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe SlateSource)
updateChannelResponse_fillerSlate = Lens.lens (\UpdateChannelResponse' {fillerSlate} -> fillerSlate) (\s@UpdateChannelResponse' {} a -> s {fillerSlate = a} :: UpdateChannelResponse)

-- | The ARN of the channel.
updateChannelResponse_arn :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.Text)
updateChannelResponse_arn = Lens.lens (\UpdateChannelResponse' {arn} -> arn) (\s@UpdateChannelResponse' {} a -> s {arn = a} :: UpdateChannelResponse)

-- | The timestamp of when the channel was last modified.
updateChannelResponse_lastModifiedTime :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.UTCTime)
updateChannelResponse_lastModifiedTime = Lens.lens (\UpdateChannelResponse' {lastModifiedTime} -> lastModifiedTime) (\s@UpdateChannelResponse' {} a -> s {lastModifiedTime = a} :: UpdateChannelResponse) Prelude.. Lens.mapping Core._Time

-- | The channel\'s tier.
updateChannelResponse_tier :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.Text)
updateChannelResponse_tier = Lens.lens (\UpdateChannelResponse' {tier} -> tier) (\s@UpdateChannelResponse' {} a -> s {tier = a} :: UpdateChannelResponse)

-- | The channel\'s output properties.
updateChannelResponse_outputs :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe [ResponseOutputItem])
updateChannelResponse_outputs = Lens.lens (\UpdateChannelResponse' {outputs} -> outputs) (\s@UpdateChannelResponse' {} a -> s {outputs = a} :: UpdateChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The timestamp of when the channel was created.
updateChannelResponse_creationTime :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.UTCTime)
updateChannelResponse_creationTime = Lens.lens (\UpdateChannelResponse' {creationTime} -> creationTime) (\s@UpdateChannelResponse' {} a -> s {creationTime = a} :: UpdateChannelResponse) Prelude.. Lens.mapping Core._Time

-- | The channel\'s playback mode.
updateChannelResponse_playbackMode :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.Text)
updateChannelResponse_playbackMode = Lens.lens (\UpdateChannelResponse' {playbackMode} -> playbackMode) (\s@UpdateChannelResponse' {} a -> s {playbackMode = a} :: UpdateChannelResponse)

-- | Indicates whether the channel is in a running state or not.
updateChannelResponse_channelState :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe ChannelState)
updateChannelResponse_channelState = Lens.lens (\UpdateChannelResponse' {channelState} -> channelState) (\s@UpdateChannelResponse' {} a -> s {channelState = a} :: UpdateChannelResponse)

-- | The response's http status code.
updateChannelResponse_httpStatus :: Lens.Lens' UpdateChannelResponse Prelude.Int
updateChannelResponse_httpStatus = Lens.lens (\UpdateChannelResponse' {httpStatus} -> httpStatus) (\s@UpdateChannelResponse' {} a -> s {httpStatus = a} :: UpdateChannelResponse)

instance Prelude.NFData UpdateChannelResponse where
  rnf UpdateChannelResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf channelName
      `Prelude.seq` Prelude.rnf fillerSlate
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf tier
      `Prelude.seq` Prelude.rnf outputs
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf playbackMode
      `Prelude.seq` Prelude.rnf channelState
      `Prelude.seq` Prelude.rnf httpStatus

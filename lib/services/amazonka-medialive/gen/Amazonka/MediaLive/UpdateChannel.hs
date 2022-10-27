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
-- Module      : Amazonka.MediaLive.UpdateChannel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a channel.
module Amazonka.MediaLive.UpdateChannel
  ( -- * Creating a Request
    UpdateChannel' (..),
    newUpdateChannel',

    -- * Request Lenses
    updateChannel'_name,
    updateChannel'_maintenance,
    updateChannel'_roleArn,
    updateChannel'_logLevel,
    updateChannel'_inputSpecification,
    updateChannel'_cdiInputSpecification,
    updateChannel'_inputAttachments,
    updateChannel'_destinations,
    updateChannel'_encoderSettings,
    updateChannel'_channelId,

    -- * Destructuring the Response
    UpdateChannelResponse (..),
    newUpdateChannelResponse,

    -- * Response Lenses
    updateChannelResponse_channel,
    updateChannelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to update a channel.
--
-- /See:/ 'newUpdateChannel'' smart constructor.
data UpdateChannel' = UpdateChannel''
  { -- | The name of the channel.
    name :: Prelude.Maybe Prelude.Text,
    -- | Maintenance settings for this channel.
    maintenance :: Prelude.Maybe MaintenanceUpdateSettings,
    -- | An optional Amazon Resource Name (ARN) of the role to assume when
    -- running the Channel. If you do not specify this on an update call but
    -- the role was previously set that role will be removed.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The log level to write to CloudWatch Logs.
    logLevel :: Prelude.Maybe LogLevel,
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Prelude.Maybe InputSpecification,
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Prelude.Maybe CdiInputSpecification,
    inputAttachments :: Prelude.Maybe [InputAttachment],
    -- | A list of output destinations for this channel.
    destinations :: Prelude.Maybe [OutputDestination],
    -- | The encoder settings for this channel.
    encoderSettings :: Prelude.Maybe EncoderSettings,
    -- | channel ID
    channelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannel'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateChannel'_name' - The name of the channel.
--
-- 'maintenance', 'updateChannel'_maintenance' - Maintenance settings for this channel.
--
-- 'roleArn', 'updateChannel'_roleArn' - An optional Amazon Resource Name (ARN) of the role to assume when
-- running the Channel. If you do not specify this on an update call but
-- the role was previously set that role will be removed.
--
-- 'logLevel', 'updateChannel'_logLevel' - The log level to write to CloudWatch Logs.
--
-- 'inputSpecification', 'updateChannel'_inputSpecification' - Specification of network and file inputs for this channel
--
-- 'cdiInputSpecification', 'updateChannel'_cdiInputSpecification' - Specification of CDI inputs for this channel
--
-- 'inputAttachments', 'updateChannel'_inputAttachments' - Undocumented member.
--
-- 'destinations', 'updateChannel'_destinations' - A list of output destinations for this channel.
--
-- 'encoderSettings', 'updateChannel'_encoderSettings' - The encoder settings for this channel.
--
-- 'channelId', 'updateChannel'_channelId' - channel ID
newUpdateChannel' ::
  -- | 'channelId'
  Prelude.Text ->
  UpdateChannel'
newUpdateChannel' pChannelId_ =
  UpdateChannel''
    { name = Prelude.Nothing,
      maintenance = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      logLevel = Prelude.Nothing,
      inputSpecification = Prelude.Nothing,
      cdiInputSpecification = Prelude.Nothing,
      inputAttachments = Prelude.Nothing,
      destinations = Prelude.Nothing,
      encoderSettings = Prelude.Nothing,
      channelId = pChannelId_
    }

-- | The name of the channel.
updateChannel'_name :: Lens.Lens' UpdateChannel' (Prelude.Maybe Prelude.Text)
updateChannel'_name = Lens.lens (\UpdateChannel'' {name} -> name) (\s@UpdateChannel'' {} a -> s {name = a} :: UpdateChannel')

-- | Maintenance settings for this channel.
updateChannel'_maintenance :: Lens.Lens' UpdateChannel' (Prelude.Maybe MaintenanceUpdateSettings)
updateChannel'_maintenance = Lens.lens (\UpdateChannel'' {maintenance} -> maintenance) (\s@UpdateChannel'' {} a -> s {maintenance = a} :: UpdateChannel')

-- | An optional Amazon Resource Name (ARN) of the role to assume when
-- running the Channel. If you do not specify this on an update call but
-- the role was previously set that role will be removed.
updateChannel'_roleArn :: Lens.Lens' UpdateChannel' (Prelude.Maybe Prelude.Text)
updateChannel'_roleArn = Lens.lens (\UpdateChannel'' {roleArn} -> roleArn) (\s@UpdateChannel'' {} a -> s {roleArn = a} :: UpdateChannel')

-- | The log level to write to CloudWatch Logs.
updateChannel'_logLevel :: Lens.Lens' UpdateChannel' (Prelude.Maybe LogLevel)
updateChannel'_logLevel = Lens.lens (\UpdateChannel'' {logLevel} -> logLevel) (\s@UpdateChannel'' {} a -> s {logLevel = a} :: UpdateChannel')

-- | Specification of network and file inputs for this channel
updateChannel'_inputSpecification :: Lens.Lens' UpdateChannel' (Prelude.Maybe InputSpecification)
updateChannel'_inputSpecification = Lens.lens (\UpdateChannel'' {inputSpecification} -> inputSpecification) (\s@UpdateChannel'' {} a -> s {inputSpecification = a} :: UpdateChannel')

-- | Specification of CDI inputs for this channel
updateChannel'_cdiInputSpecification :: Lens.Lens' UpdateChannel' (Prelude.Maybe CdiInputSpecification)
updateChannel'_cdiInputSpecification = Lens.lens (\UpdateChannel'' {cdiInputSpecification} -> cdiInputSpecification) (\s@UpdateChannel'' {} a -> s {cdiInputSpecification = a} :: UpdateChannel')

-- | Undocumented member.
updateChannel'_inputAttachments :: Lens.Lens' UpdateChannel' (Prelude.Maybe [InputAttachment])
updateChannel'_inputAttachments = Lens.lens (\UpdateChannel'' {inputAttachments} -> inputAttachments) (\s@UpdateChannel'' {} a -> s {inputAttachments = a} :: UpdateChannel') Prelude.. Lens.mapping Lens.coerced

-- | A list of output destinations for this channel.
updateChannel'_destinations :: Lens.Lens' UpdateChannel' (Prelude.Maybe [OutputDestination])
updateChannel'_destinations = Lens.lens (\UpdateChannel'' {destinations} -> destinations) (\s@UpdateChannel'' {} a -> s {destinations = a} :: UpdateChannel') Prelude.. Lens.mapping Lens.coerced

-- | The encoder settings for this channel.
updateChannel'_encoderSettings :: Lens.Lens' UpdateChannel' (Prelude.Maybe EncoderSettings)
updateChannel'_encoderSettings = Lens.lens (\UpdateChannel'' {encoderSettings} -> encoderSettings) (\s@UpdateChannel'' {} a -> s {encoderSettings = a} :: UpdateChannel')

-- | channel ID
updateChannel'_channelId :: Lens.Lens' UpdateChannel' Prelude.Text
updateChannel'_channelId = Lens.lens (\UpdateChannel'' {channelId} -> channelId) (\s@UpdateChannel'' {} a -> s {channelId = a} :: UpdateChannel')

instance Core.AWSRequest UpdateChannel' where
  type
    AWSResponse UpdateChannel' =
      UpdateChannelResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            Prelude.<$> (x Core..?> "channel")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateChannel' where
  hashWithSalt _salt UpdateChannel'' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` maintenance
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` logLevel
      `Prelude.hashWithSalt` inputSpecification
      `Prelude.hashWithSalt` cdiInputSpecification
      `Prelude.hashWithSalt` inputAttachments
      `Prelude.hashWithSalt` destinations
      `Prelude.hashWithSalt` encoderSettings
      `Prelude.hashWithSalt` channelId

instance Prelude.NFData UpdateChannel' where
  rnf UpdateChannel'' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf maintenance
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf logLevel
      `Prelude.seq` Prelude.rnf inputSpecification
      `Prelude.seq` Prelude.rnf cdiInputSpecification
      `Prelude.seq` Prelude.rnf inputAttachments
      `Prelude.seq` Prelude.rnf destinations
      `Prelude.seq` Prelude.rnf encoderSettings
      `Prelude.seq` Prelude.rnf channelId

instance Core.ToHeaders UpdateChannel' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateChannel' where
  toJSON UpdateChannel'' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("maintenance" Core..=) Prelude.<$> maintenance,
            ("roleArn" Core..=) Prelude.<$> roleArn,
            ("logLevel" Core..=) Prelude.<$> logLevel,
            ("inputSpecification" Core..=)
              Prelude.<$> inputSpecification,
            ("cdiInputSpecification" Core..=)
              Prelude.<$> cdiInputSpecification,
            ("inputAttachments" Core..=)
              Prelude.<$> inputAttachments,
            ("destinations" Core..=) Prelude.<$> destinations,
            ("encoderSettings" Core..=)
              Prelude.<$> encoderSettings
          ]
      )

instance Core.ToPath UpdateChannel' where
  toPath UpdateChannel'' {..} =
    Prelude.mconcat
      ["/prod/channels/", Core.toBS channelId]

instance Core.ToQuery UpdateChannel' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for UpdateChannelResponse
--
-- /See:/ 'newUpdateChannelResponse' smart constructor.
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

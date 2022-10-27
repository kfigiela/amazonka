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
-- Module      : Amazonka.MediaLive.StopChannel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running channel
module Amazonka.MediaLive.StopChannel
  ( -- * Creating a Request
    StopChannel (..),
    newStopChannel,

    -- * Request Lenses
    stopChannel_channelId,

    -- * Destructuring the Response
    StopChannelResponse (..),
    newStopChannelResponse,

    -- * Response Lenses
    stopChannelResponse_tags,
    stopChannelResponse_name,
    stopChannelResponse_maintenance,
    stopChannelResponse_roleArn,
    stopChannelResponse_vpc,
    stopChannelResponse_logLevel,
    stopChannelResponse_arn,
    stopChannelResponse_state,
    stopChannelResponse_inputSpecification,
    stopChannelResponse_channelClass,
    stopChannelResponse_id,
    stopChannelResponse_pipelineDetails,
    stopChannelResponse_cdiInputSpecification,
    stopChannelResponse_inputAttachments,
    stopChannelResponse_pipelinesRunningCount,
    stopChannelResponse_destinations,
    stopChannelResponse_encoderSettings,
    stopChannelResponse_egressEndpoints,
    stopChannelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Placeholder documentation for StopChannelRequest
--
-- /See:/ 'newStopChannel' smart constructor.
data StopChannel = StopChannel'
  { -- | A request to stop a running channel
    channelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelId', 'stopChannel_channelId' - A request to stop a running channel
newStopChannel ::
  -- | 'channelId'
  Prelude.Text ->
  StopChannel
newStopChannel pChannelId_ =
  StopChannel' {channelId = pChannelId_}

-- | A request to stop a running channel
stopChannel_channelId :: Lens.Lens' StopChannel Prelude.Text
stopChannel_channelId = Lens.lens (\StopChannel' {channelId} -> channelId) (\s@StopChannel' {} a -> s {channelId = a} :: StopChannel)

instance Core.AWSRequest StopChannel where
  type AWSResponse StopChannel = StopChannelResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StopChannelResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "maintenance")
            Prelude.<*> (x Core..?> "roleArn")
            Prelude.<*> (x Core..?> "vpc")
            Prelude.<*> (x Core..?> "logLevel")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "state")
            Prelude.<*> (x Core..?> "inputSpecification")
            Prelude.<*> (x Core..?> "channelClass")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> ( x Core..?> "pipelineDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "cdiInputSpecification")
            Prelude.<*> ( x Core..?> "inputAttachments"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "pipelinesRunningCount")
            Prelude.<*> (x Core..?> "destinations" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "encoderSettings")
            Prelude.<*> ( x Core..?> "egressEndpoints"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopChannel where
  hashWithSalt _salt StopChannel' {..} =
    _salt `Prelude.hashWithSalt` channelId

instance Prelude.NFData StopChannel where
  rnf StopChannel' {..} = Prelude.rnf channelId

instance Core.ToHeaders StopChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopChannel where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StopChannel where
  toPath StopChannel' {..} =
    Prelude.mconcat
      ["/prod/channels/", Core.toBS channelId, "/stop"]

instance Core.ToQuery StopChannel where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for StopChannelResponse
--
-- /See:/ 'newStopChannelResponse' smart constructor.
data StopChannelResponse = StopChannelResponse'
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the channel. (user-mutable)
    name :: Prelude.Maybe Prelude.Text,
    -- | Maintenance settings for this channel.
    maintenance :: Prelude.Maybe MaintenanceStatus,
    -- | The Amazon Resource Name (ARN) of the role assumed when running the
    -- Channel.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Settings for VPC output
    vpc :: Prelude.Maybe VpcOutputSettingsDescription,
    -- | The log level being written to CloudWatch Logs.
    logLevel :: Prelude.Maybe LogLevel,
    -- | The unique arn of the channel.
    arn :: Prelude.Maybe Prelude.Text,
    state :: Prelude.Maybe ChannelState,
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Prelude.Maybe InputSpecification,
    -- | The class for this channel. STANDARD for a channel with two pipelines or
    -- SINGLE_PIPELINE for a channel with one pipeline.
    channelClass :: Prelude.Maybe ChannelClass,
    -- | The unique id of the channel.
    id :: Prelude.Maybe Prelude.Text,
    -- | Runtime details for the pipelines of a running channel.
    pipelineDetails :: Prelude.Maybe [PipelineDetail],
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Prelude.Maybe CdiInputSpecification,
    -- | List of input attachments for channel.
    inputAttachments :: Prelude.Maybe [InputAttachment],
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Prelude.Maybe Prelude.Int,
    -- | A list of destinations of the channel. For UDP outputs, there is one
    -- destination per output. For other types (HLS, for example), there is one
    -- destination per packager.
    destinations :: Prelude.Maybe [OutputDestination],
    encoderSettings :: Prelude.Maybe EncoderSettings,
    -- | The endpoints where outgoing connections initiate from
    egressEndpoints :: Prelude.Maybe [ChannelEgressEndpoint],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'stopChannelResponse_tags' - A collection of key-value pairs.
--
-- 'name', 'stopChannelResponse_name' - The name of the channel. (user-mutable)
--
-- 'maintenance', 'stopChannelResponse_maintenance' - Maintenance settings for this channel.
--
-- 'roleArn', 'stopChannelResponse_roleArn' - The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
--
-- 'vpc', 'stopChannelResponse_vpc' - Settings for VPC output
--
-- 'logLevel', 'stopChannelResponse_logLevel' - The log level being written to CloudWatch Logs.
--
-- 'arn', 'stopChannelResponse_arn' - The unique arn of the channel.
--
-- 'state', 'stopChannelResponse_state' - Undocumented member.
--
-- 'inputSpecification', 'stopChannelResponse_inputSpecification' - Specification of network and file inputs for this channel
--
-- 'channelClass', 'stopChannelResponse_channelClass' - The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
--
-- 'id', 'stopChannelResponse_id' - The unique id of the channel.
--
-- 'pipelineDetails', 'stopChannelResponse_pipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- 'cdiInputSpecification', 'stopChannelResponse_cdiInputSpecification' - Specification of CDI inputs for this channel
--
-- 'inputAttachments', 'stopChannelResponse_inputAttachments' - List of input attachments for channel.
--
-- 'pipelinesRunningCount', 'stopChannelResponse_pipelinesRunningCount' - The number of currently healthy pipelines.
--
-- 'destinations', 'stopChannelResponse_destinations' - A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
--
-- 'encoderSettings', 'stopChannelResponse_encoderSettings' - Undocumented member.
--
-- 'egressEndpoints', 'stopChannelResponse_egressEndpoints' - The endpoints where outgoing connections initiate from
--
-- 'httpStatus', 'stopChannelResponse_httpStatus' - The response's http status code.
newStopChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopChannelResponse
newStopChannelResponse pHttpStatus_ =
  StopChannelResponse'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      maintenance = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      vpc = Prelude.Nothing,
      logLevel = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      inputSpecification = Prelude.Nothing,
      channelClass = Prelude.Nothing,
      id = Prelude.Nothing,
      pipelineDetails = Prelude.Nothing,
      cdiInputSpecification = Prelude.Nothing,
      inputAttachments = Prelude.Nothing,
      pipelinesRunningCount = Prelude.Nothing,
      destinations = Prelude.Nothing,
      encoderSettings = Prelude.Nothing,
      egressEndpoints = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of key-value pairs.
stopChannelResponse_tags :: Lens.Lens' StopChannelResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
stopChannelResponse_tags = Lens.lens (\StopChannelResponse' {tags} -> tags) (\s@StopChannelResponse' {} a -> s {tags = a} :: StopChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the channel. (user-mutable)
stopChannelResponse_name :: Lens.Lens' StopChannelResponse (Prelude.Maybe Prelude.Text)
stopChannelResponse_name = Lens.lens (\StopChannelResponse' {name} -> name) (\s@StopChannelResponse' {} a -> s {name = a} :: StopChannelResponse)

-- | Maintenance settings for this channel.
stopChannelResponse_maintenance :: Lens.Lens' StopChannelResponse (Prelude.Maybe MaintenanceStatus)
stopChannelResponse_maintenance = Lens.lens (\StopChannelResponse' {maintenance} -> maintenance) (\s@StopChannelResponse' {} a -> s {maintenance = a} :: StopChannelResponse)

-- | The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
stopChannelResponse_roleArn :: Lens.Lens' StopChannelResponse (Prelude.Maybe Prelude.Text)
stopChannelResponse_roleArn = Lens.lens (\StopChannelResponse' {roleArn} -> roleArn) (\s@StopChannelResponse' {} a -> s {roleArn = a} :: StopChannelResponse)

-- | Settings for VPC output
stopChannelResponse_vpc :: Lens.Lens' StopChannelResponse (Prelude.Maybe VpcOutputSettingsDescription)
stopChannelResponse_vpc = Lens.lens (\StopChannelResponse' {vpc} -> vpc) (\s@StopChannelResponse' {} a -> s {vpc = a} :: StopChannelResponse)

-- | The log level being written to CloudWatch Logs.
stopChannelResponse_logLevel :: Lens.Lens' StopChannelResponse (Prelude.Maybe LogLevel)
stopChannelResponse_logLevel = Lens.lens (\StopChannelResponse' {logLevel} -> logLevel) (\s@StopChannelResponse' {} a -> s {logLevel = a} :: StopChannelResponse)

-- | The unique arn of the channel.
stopChannelResponse_arn :: Lens.Lens' StopChannelResponse (Prelude.Maybe Prelude.Text)
stopChannelResponse_arn = Lens.lens (\StopChannelResponse' {arn} -> arn) (\s@StopChannelResponse' {} a -> s {arn = a} :: StopChannelResponse)

-- | Undocumented member.
stopChannelResponse_state :: Lens.Lens' StopChannelResponse (Prelude.Maybe ChannelState)
stopChannelResponse_state = Lens.lens (\StopChannelResponse' {state} -> state) (\s@StopChannelResponse' {} a -> s {state = a} :: StopChannelResponse)

-- | Specification of network and file inputs for this channel
stopChannelResponse_inputSpecification :: Lens.Lens' StopChannelResponse (Prelude.Maybe InputSpecification)
stopChannelResponse_inputSpecification = Lens.lens (\StopChannelResponse' {inputSpecification} -> inputSpecification) (\s@StopChannelResponse' {} a -> s {inputSpecification = a} :: StopChannelResponse)

-- | The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
stopChannelResponse_channelClass :: Lens.Lens' StopChannelResponse (Prelude.Maybe ChannelClass)
stopChannelResponse_channelClass = Lens.lens (\StopChannelResponse' {channelClass} -> channelClass) (\s@StopChannelResponse' {} a -> s {channelClass = a} :: StopChannelResponse)

-- | The unique id of the channel.
stopChannelResponse_id :: Lens.Lens' StopChannelResponse (Prelude.Maybe Prelude.Text)
stopChannelResponse_id = Lens.lens (\StopChannelResponse' {id} -> id) (\s@StopChannelResponse' {} a -> s {id = a} :: StopChannelResponse)

-- | Runtime details for the pipelines of a running channel.
stopChannelResponse_pipelineDetails :: Lens.Lens' StopChannelResponse (Prelude.Maybe [PipelineDetail])
stopChannelResponse_pipelineDetails = Lens.lens (\StopChannelResponse' {pipelineDetails} -> pipelineDetails) (\s@StopChannelResponse' {} a -> s {pipelineDetails = a} :: StopChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | Specification of CDI inputs for this channel
stopChannelResponse_cdiInputSpecification :: Lens.Lens' StopChannelResponse (Prelude.Maybe CdiInputSpecification)
stopChannelResponse_cdiInputSpecification = Lens.lens (\StopChannelResponse' {cdiInputSpecification} -> cdiInputSpecification) (\s@StopChannelResponse' {} a -> s {cdiInputSpecification = a} :: StopChannelResponse)

-- | List of input attachments for channel.
stopChannelResponse_inputAttachments :: Lens.Lens' StopChannelResponse (Prelude.Maybe [InputAttachment])
stopChannelResponse_inputAttachments = Lens.lens (\StopChannelResponse' {inputAttachments} -> inputAttachments) (\s@StopChannelResponse' {} a -> s {inputAttachments = a} :: StopChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The number of currently healthy pipelines.
stopChannelResponse_pipelinesRunningCount :: Lens.Lens' StopChannelResponse (Prelude.Maybe Prelude.Int)
stopChannelResponse_pipelinesRunningCount = Lens.lens (\StopChannelResponse' {pipelinesRunningCount} -> pipelinesRunningCount) (\s@StopChannelResponse' {} a -> s {pipelinesRunningCount = a} :: StopChannelResponse)

-- | A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
stopChannelResponse_destinations :: Lens.Lens' StopChannelResponse (Prelude.Maybe [OutputDestination])
stopChannelResponse_destinations = Lens.lens (\StopChannelResponse' {destinations} -> destinations) (\s@StopChannelResponse' {} a -> s {destinations = a} :: StopChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
stopChannelResponse_encoderSettings :: Lens.Lens' StopChannelResponse (Prelude.Maybe EncoderSettings)
stopChannelResponse_encoderSettings = Lens.lens (\StopChannelResponse' {encoderSettings} -> encoderSettings) (\s@StopChannelResponse' {} a -> s {encoderSettings = a} :: StopChannelResponse)

-- | The endpoints where outgoing connections initiate from
stopChannelResponse_egressEndpoints :: Lens.Lens' StopChannelResponse (Prelude.Maybe [ChannelEgressEndpoint])
stopChannelResponse_egressEndpoints = Lens.lens (\StopChannelResponse' {egressEndpoints} -> egressEndpoints) (\s@StopChannelResponse' {} a -> s {egressEndpoints = a} :: StopChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
stopChannelResponse_httpStatus :: Lens.Lens' StopChannelResponse Prelude.Int
stopChannelResponse_httpStatus = Lens.lens (\StopChannelResponse' {httpStatus} -> httpStatus) (\s@StopChannelResponse' {} a -> s {httpStatus = a} :: StopChannelResponse)

instance Prelude.NFData StopChannelResponse where
  rnf StopChannelResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf maintenance
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf vpc
      `Prelude.seq` Prelude.rnf logLevel
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf inputSpecification
      `Prelude.seq` Prelude.rnf channelClass
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf pipelineDetails
      `Prelude.seq` Prelude.rnf cdiInputSpecification
      `Prelude.seq` Prelude.rnf inputAttachments
      `Prelude.seq` Prelude.rnf pipelinesRunningCount
      `Prelude.seq` Prelude.rnf destinations
      `Prelude.seq` Prelude.rnf encoderSettings
      `Prelude.seq` Prelude.rnf egressEndpoints
      `Prelude.seq` Prelude.rnf httpStatus

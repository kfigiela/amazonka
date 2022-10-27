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
-- Module      : Amazonka.PinpointSmsVoiceV2.CreateEventDestination
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new event destination in a configuration set.
--
-- An event destination is a location where you send message events. The
-- event options are Amazon CloudWatch, Amazon Kinesis Data Firehose, or
-- Amazon SNS. For example, when a message is delivered successfully, you
-- can send information about that event to an event destination, or send
-- notifications to endpoints that are subscribed to an Amazon SNS topic.
--
-- Each configuration set can contain between 0 and 5 event destinations.
-- Each event destination can contain a reference to a single destination,
-- such as a CloudWatch or Kinesis Data Firehose destination.
module Amazonka.PinpointSmsVoiceV2.CreateEventDestination
  ( -- * Creating a Request
    CreateEventDestination (..),
    newCreateEventDestination,

    -- * Request Lenses
    createEventDestination_clientToken,
    createEventDestination_cloudWatchLogsDestination,
    createEventDestination_snsDestination,
    createEventDestination_kinesisFirehoseDestination,
    createEventDestination_configurationSetName,
    createEventDestination_eventDestinationName,
    createEventDestination_matchingEventTypes,

    -- * Destructuring the Response
    CreateEventDestinationResponse (..),
    newCreateEventDestinationResponse,

    -- * Response Lenses
    createEventDestinationResponse_configurationSetName,
    createEventDestinationResponse_eventDestination,
    createEventDestinationResponse_configurationSetArn,
    createEventDestinationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.PinpointSmsVoiceV2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateEventDestination' smart constructor.
data CreateEventDestination = CreateEventDestination'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don\'t specify a client token, a
    -- randomly generated token is used for the request to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | An object that contains information about an event destination for
    -- logging to Amazon CloudWatch logs.
    cloudWatchLogsDestination :: Prelude.Maybe CloudWatchLogsDestination,
    -- | An object that contains information about an event destination for
    -- logging to Amazon SNS.
    snsDestination :: Prelude.Maybe SnsDestination,
    -- | An object that contains information about an event destination for
    -- logging to Amazon Kinesis Data Firehose.
    kinesisFirehoseDestination :: Prelude.Maybe KinesisFirehoseDestination,
    -- | Either the name of the configuration set or the configuration set ARN to
    -- apply event logging to. The ConfigurateSetName and ConfigurationSetArn
    -- can be found using the DescribeConfigurationSets action.
    configurationSetName :: Prelude.Text,
    -- | The name that identifies the event destination.
    eventDestinationName :: Prelude.Text,
    -- | An array of event types that determine which events to log. If \"ALL\"
    -- is used, then Amazon Pinpoint logs every event type.
    matchingEventTypes :: Prelude.NonEmpty EventType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEventDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createEventDestination_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don\'t specify a client token, a
-- randomly generated token is used for the request to ensure idempotency.
--
-- 'cloudWatchLogsDestination', 'createEventDestination_cloudWatchLogsDestination' - An object that contains information about an event destination for
-- logging to Amazon CloudWatch logs.
--
-- 'snsDestination', 'createEventDestination_snsDestination' - An object that contains information about an event destination for
-- logging to Amazon SNS.
--
-- 'kinesisFirehoseDestination', 'createEventDestination_kinesisFirehoseDestination' - An object that contains information about an event destination for
-- logging to Amazon Kinesis Data Firehose.
--
-- 'configurationSetName', 'createEventDestination_configurationSetName' - Either the name of the configuration set or the configuration set ARN to
-- apply event logging to. The ConfigurateSetName and ConfigurationSetArn
-- can be found using the DescribeConfigurationSets action.
--
-- 'eventDestinationName', 'createEventDestination_eventDestinationName' - The name that identifies the event destination.
--
-- 'matchingEventTypes', 'createEventDestination_matchingEventTypes' - An array of event types that determine which events to log. If \"ALL\"
-- is used, then Amazon Pinpoint logs every event type.
newCreateEventDestination ::
  -- | 'configurationSetName'
  Prelude.Text ->
  -- | 'eventDestinationName'
  Prelude.Text ->
  -- | 'matchingEventTypes'
  Prelude.NonEmpty EventType ->
  CreateEventDestination
newCreateEventDestination
  pConfigurationSetName_
  pEventDestinationName_
  pMatchingEventTypes_ =
    CreateEventDestination'
      { clientToken =
          Prelude.Nothing,
        cloudWatchLogsDestination = Prelude.Nothing,
        snsDestination = Prelude.Nothing,
        kinesisFirehoseDestination = Prelude.Nothing,
        configurationSetName = pConfigurationSetName_,
        eventDestinationName = pEventDestinationName_,
        matchingEventTypes =
          Lens.coerced Lens.# pMatchingEventTypes_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don\'t specify a client token, a
-- randomly generated token is used for the request to ensure idempotency.
createEventDestination_clientToken :: Lens.Lens' CreateEventDestination (Prelude.Maybe Prelude.Text)
createEventDestination_clientToken = Lens.lens (\CreateEventDestination' {clientToken} -> clientToken) (\s@CreateEventDestination' {} a -> s {clientToken = a} :: CreateEventDestination)

-- | An object that contains information about an event destination for
-- logging to Amazon CloudWatch logs.
createEventDestination_cloudWatchLogsDestination :: Lens.Lens' CreateEventDestination (Prelude.Maybe CloudWatchLogsDestination)
createEventDestination_cloudWatchLogsDestination = Lens.lens (\CreateEventDestination' {cloudWatchLogsDestination} -> cloudWatchLogsDestination) (\s@CreateEventDestination' {} a -> s {cloudWatchLogsDestination = a} :: CreateEventDestination)

-- | An object that contains information about an event destination for
-- logging to Amazon SNS.
createEventDestination_snsDestination :: Lens.Lens' CreateEventDestination (Prelude.Maybe SnsDestination)
createEventDestination_snsDestination = Lens.lens (\CreateEventDestination' {snsDestination} -> snsDestination) (\s@CreateEventDestination' {} a -> s {snsDestination = a} :: CreateEventDestination)

-- | An object that contains information about an event destination for
-- logging to Amazon Kinesis Data Firehose.
createEventDestination_kinesisFirehoseDestination :: Lens.Lens' CreateEventDestination (Prelude.Maybe KinesisFirehoseDestination)
createEventDestination_kinesisFirehoseDestination = Lens.lens (\CreateEventDestination' {kinesisFirehoseDestination} -> kinesisFirehoseDestination) (\s@CreateEventDestination' {} a -> s {kinesisFirehoseDestination = a} :: CreateEventDestination)

-- | Either the name of the configuration set or the configuration set ARN to
-- apply event logging to. The ConfigurateSetName and ConfigurationSetArn
-- can be found using the DescribeConfigurationSets action.
createEventDestination_configurationSetName :: Lens.Lens' CreateEventDestination Prelude.Text
createEventDestination_configurationSetName = Lens.lens (\CreateEventDestination' {configurationSetName} -> configurationSetName) (\s@CreateEventDestination' {} a -> s {configurationSetName = a} :: CreateEventDestination)

-- | The name that identifies the event destination.
createEventDestination_eventDestinationName :: Lens.Lens' CreateEventDestination Prelude.Text
createEventDestination_eventDestinationName = Lens.lens (\CreateEventDestination' {eventDestinationName} -> eventDestinationName) (\s@CreateEventDestination' {} a -> s {eventDestinationName = a} :: CreateEventDestination)

-- | An array of event types that determine which events to log. If \"ALL\"
-- is used, then Amazon Pinpoint logs every event type.
createEventDestination_matchingEventTypes :: Lens.Lens' CreateEventDestination (Prelude.NonEmpty EventType)
createEventDestination_matchingEventTypes = Lens.lens (\CreateEventDestination' {matchingEventTypes} -> matchingEventTypes) (\s@CreateEventDestination' {} a -> s {matchingEventTypes = a} :: CreateEventDestination) Prelude.. Lens.coerced

instance Core.AWSRequest CreateEventDestination where
  type
    AWSResponse CreateEventDestination =
      CreateEventDestinationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateEventDestinationResponse'
            Prelude.<$> (x Core..?> "ConfigurationSetName")
            Prelude.<*> (x Core..?> "EventDestination")
            Prelude.<*> (x Core..?> "ConfigurationSetArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateEventDestination where
  hashWithSalt _salt CreateEventDestination' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` cloudWatchLogsDestination
      `Prelude.hashWithSalt` snsDestination
      `Prelude.hashWithSalt` kinesisFirehoseDestination
      `Prelude.hashWithSalt` configurationSetName
      `Prelude.hashWithSalt` eventDestinationName
      `Prelude.hashWithSalt` matchingEventTypes

instance Prelude.NFData CreateEventDestination where
  rnf CreateEventDestination' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf cloudWatchLogsDestination
      `Prelude.seq` Prelude.rnf snsDestination
      `Prelude.seq` Prelude.rnf kinesisFirehoseDestination
      `Prelude.seq` Prelude.rnf configurationSetName
      `Prelude.seq` Prelude.rnf eventDestinationName
      `Prelude.seq` Prelude.rnf matchingEventTypes

instance Core.ToHeaders CreateEventDestination where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PinpointSMSVoiceV2.CreateEventDestination" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateEventDestination where
  toJSON CreateEventDestination' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("CloudWatchLogsDestination" Core..=)
              Prelude.<$> cloudWatchLogsDestination,
            ("SnsDestination" Core..=)
              Prelude.<$> snsDestination,
            ("KinesisFirehoseDestination" Core..=)
              Prelude.<$> kinesisFirehoseDestination,
            Prelude.Just
              ( "ConfigurationSetName"
                  Core..= configurationSetName
              ),
            Prelude.Just
              ( "EventDestinationName"
                  Core..= eventDestinationName
              ),
            Prelude.Just
              ("MatchingEventTypes" Core..= matchingEventTypes)
          ]
      )

instance Core.ToPath CreateEventDestination where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateEventDestination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateEventDestinationResponse' smart constructor.
data CreateEventDestinationResponse = CreateEventDestinationResponse'
  { -- | The name of the configuration set.
    configurationSetName :: Prelude.Maybe Prelude.Text,
    -- | The details of the destination where events are logged.
    eventDestination :: Prelude.Maybe EventDestination,
    -- | The ARN of the configuration set.
    configurationSetArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEventDestinationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationSetName', 'createEventDestinationResponse_configurationSetName' - The name of the configuration set.
--
-- 'eventDestination', 'createEventDestinationResponse_eventDestination' - The details of the destination where events are logged.
--
-- 'configurationSetArn', 'createEventDestinationResponse_configurationSetArn' - The ARN of the configuration set.
--
-- 'httpStatus', 'createEventDestinationResponse_httpStatus' - The response's http status code.
newCreateEventDestinationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateEventDestinationResponse
newCreateEventDestinationResponse pHttpStatus_ =
  CreateEventDestinationResponse'
    { configurationSetName =
        Prelude.Nothing,
      eventDestination = Prelude.Nothing,
      configurationSetArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the configuration set.
createEventDestinationResponse_configurationSetName :: Lens.Lens' CreateEventDestinationResponse (Prelude.Maybe Prelude.Text)
createEventDestinationResponse_configurationSetName = Lens.lens (\CreateEventDestinationResponse' {configurationSetName} -> configurationSetName) (\s@CreateEventDestinationResponse' {} a -> s {configurationSetName = a} :: CreateEventDestinationResponse)

-- | The details of the destination where events are logged.
createEventDestinationResponse_eventDestination :: Lens.Lens' CreateEventDestinationResponse (Prelude.Maybe EventDestination)
createEventDestinationResponse_eventDestination = Lens.lens (\CreateEventDestinationResponse' {eventDestination} -> eventDestination) (\s@CreateEventDestinationResponse' {} a -> s {eventDestination = a} :: CreateEventDestinationResponse)

-- | The ARN of the configuration set.
createEventDestinationResponse_configurationSetArn :: Lens.Lens' CreateEventDestinationResponse (Prelude.Maybe Prelude.Text)
createEventDestinationResponse_configurationSetArn = Lens.lens (\CreateEventDestinationResponse' {configurationSetArn} -> configurationSetArn) (\s@CreateEventDestinationResponse' {} a -> s {configurationSetArn = a} :: CreateEventDestinationResponse)

-- | The response's http status code.
createEventDestinationResponse_httpStatus :: Lens.Lens' CreateEventDestinationResponse Prelude.Int
createEventDestinationResponse_httpStatus = Lens.lens (\CreateEventDestinationResponse' {httpStatus} -> httpStatus) (\s@CreateEventDestinationResponse' {} a -> s {httpStatus = a} :: CreateEventDestinationResponse)

instance
  Prelude.NFData
    CreateEventDestinationResponse
  where
  rnf CreateEventDestinationResponse' {..} =
    Prelude.rnf configurationSetName
      `Prelude.seq` Prelude.rnf eventDestination
      `Prelude.seq` Prelude.rnf configurationSetArn
      `Prelude.seq` Prelude.rnf httpStatus

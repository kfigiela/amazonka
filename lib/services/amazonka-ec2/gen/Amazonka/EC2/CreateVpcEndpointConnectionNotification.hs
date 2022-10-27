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
-- Module      : Amazonka.EC2.CreateVpcEndpointConnectionNotification
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connection notification for a specified VPC endpoint or VPC
-- endpoint service. A connection notification notifies you of specific
-- endpoint events. You must create an SNS topic to receive notifications.
-- For more information, see
-- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Create a Topic>
-- in the /Amazon Simple Notification Service Developer Guide/.
--
-- You can create a connection notification for interface endpoints only.
module Amazonka.EC2.CreateVpcEndpointConnectionNotification
  ( -- * Creating a Request
    CreateVpcEndpointConnectionNotification (..),
    newCreateVpcEndpointConnectionNotification,

    -- * Request Lenses
    createVpcEndpointConnectionNotification_clientToken,
    createVpcEndpointConnectionNotification_vpcEndpointId,
    createVpcEndpointConnectionNotification_dryRun,
    createVpcEndpointConnectionNotification_serviceId,
    createVpcEndpointConnectionNotification_connectionNotificationArn,
    createVpcEndpointConnectionNotification_connectionEvents,

    -- * Destructuring the Response
    CreateVpcEndpointConnectionNotificationResponse (..),
    newCreateVpcEndpointConnectionNotificationResponse,

    -- * Response Lenses
    createVpcEndpointConnectionNotificationResponse_connectionNotification,
    createVpcEndpointConnectionNotificationResponse_clientToken,
    createVpcEndpointConnectionNotificationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateVpcEndpointConnectionNotification' smart constructor.
data CreateVpcEndpointConnectionNotification = CreateVpcEndpointConnectionNotification'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the endpoint.
    vpcEndpointId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the endpoint service.
    serviceId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the SNS topic for the notifications.
    connectionNotificationArn :: Prelude.Text,
    -- | One or more endpoint events for which to receive notifications. Valid
    -- values are @Accept@, @Connect@, @Delete@, and @Reject@.
    connectionEvents :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVpcEndpointConnectionNotification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createVpcEndpointConnectionNotification_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
--
-- 'vpcEndpointId', 'createVpcEndpointConnectionNotification_vpcEndpointId' - The ID of the endpoint.
--
-- 'dryRun', 'createVpcEndpointConnectionNotification_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'serviceId', 'createVpcEndpointConnectionNotification_serviceId' - The ID of the endpoint service.
--
-- 'connectionNotificationArn', 'createVpcEndpointConnectionNotification_connectionNotificationArn' - The ARN of the SNS topic for the notifications.
--
-- 'connectionEvents', 'createVpcEndpointConnectionNotification_connectionEvents' - One or more endpoint events for which to receive notifications. Valid
-- values are @Accept@, @Connect@, @Delete@, and @Reject@.
newCreateVpcEndpointConnectionNotification ::
  -- | 'connectionNotificationArn'
  Prelude.Text ->
  CreateVpcEndpointConnectionNotification
newCreateVpcEndpointConnectionNotification
  pConnectionNotificationArn_ =
    CreateVpcEndpointConnectionNotification'
      { clientToken =
          Prelude.Nothing,
        vpcEndpointId = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        serviceId = Prelude.Nothing,
        connectionNotificationArn =
          pConnectionNotificationArn_,
        connectionEvents = Prelude.mempty
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
createVpcEndpointConnectionNotification_clientToken :: Lens.Lens' CreateVpcEndpointConnectionNotification (Prelude.Maybe Prelude.Text)
createVpcEndpointConnectionNotification_clientToken = Lens.lens (\CreateVpcEndpointConnectionNotification' {clientToken} -> clientToken) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {clientToken = a} :: CreateVpcEndpointConnectionNotification)

-- | The ID of the endpoint.
createVpcEndpointConnectionNotification_vpcEndpointId :: Lens.Lens' CreateVpcEndpointConnectionNotification (Prelude.Maybe Prelude.Text)
createVpcEndpointConnectionNotification_vpcEndpointId = Lens.lens (\CreateVpcEndpointConnectionNotification' {vpcEndpointId} -> vpcEndpointId) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {vpcEndpointId = a} :: CreateVpcEndpointConnectionNotification)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createVpcEndpointConnectionNotification_dryRun :: Lens.Lens' CreateVpcEndpointConnectionNotification (Prelude.Maybe Prelude.Bool)
createVpcEndpointConnectionNotification_dryRun = Lens.lens (\CreateVpcEndpointConnectionNotification' {dryRun} -> dryRun) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {dryRun = a} :: CreateVpcEndpointConnectionNotification)

-- | The ID of the endpoint service.
createVpcEndpointConnectionNotification_serviceId :: Lens.Lens' CreateVpcEndpointConnectionNotification (Prelude.Maybe Prelude.Text)
createVpcEndpointConnectionNotification_serviceId = Lens.lens (\CreateVpcEndpointConnectionNotification' {serviceId} -> serviceId) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {serviceId = a} :: CreateVpcEndpointConnectionNotification)

-- | The ARN of the SNS topic for the notifications.
createVpcEndpointConnectionNotification_connectionNotificationArn :: Lens.Lens' CreateVpcEndpointConnectionNotification Prelude.Text
createVpcEndpointConnectionNotification_connectionNotificationArn = Lens.lens (\CreateVpcEndpointConnectionNotification' {connectionNotificationArn} -> connectionNotificationArn) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {connectionNotificationArn = a} :: CreateVpcEndpointConnectionNotification)

-- | One or more endpoint events for which to receive notifications. Valid
-- values are @Accept@, @Connect@, @Delete@, and @Reject@.
createVpcEndpointConnectionNotification_connectionEvents :: Lens.Lens' CreateVpcEndpointConnectionNotification [Prelude.Text]
createVpcEndpointConnectionNotification_connectionEvents = Lens.lens (\CreateVpcEndpointConnectionNotification' {connectionEvents} -> connectionEvents) (\s@CreateVpcEndpointConnectionNotification' {} a -> s {connectionEvents = a} :: CreateVpcEndpointConnectionNotification) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    CreateVpcEndpointConnectionNotification
  where
  type
    AWSResponse
      CreateVpcEndpointConnectionNotification =
      CreateVpcEndpointConnectionNotificationResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateVpcEndpointConnectionNotificationResponse'
            Prelude.<$> (x Core..@? "connectionNotification")
              Prelude.<*> (x Core..@? "clientToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateVpcEndpointConnectionNotification
  where
  hashWithSalt
    _salt
    CreateVpcEndpointConnectionNotification' {..} =
      _salt `Prelude.hashWithSalt` clientToken
        `Prelude.hashWithSalt` vpcEndpointId
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` serviceId
        `Prelude.hashWithSalt` connectionNotificationArn
        `Prelude.hashWithSalt` connectionEvents

instance
  Prelude.NFData
    CreateVpcEndpointConnectionNotification
  where
  rnf CreateVpcEndpointConnectionNotification' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf vpcEndpointId
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf serviceId
      `Prelude.seq` Prelude.rnf connectionNotificationArn
      `Prelude.seq` Prelude.rnf connectionEvents

instance
  Core.ToHeaders
    CreateVpcEndpointConnectionNotification
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    CreateVpcEndpointConnectionNotification
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    CreateVpcEndpointConnectionNotification
  where
  toQuery CreateVpcEndpointConnectionNotification' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "CreateVpcEndpointConnectionNotification" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "ClientToken" Core.=: clientToken,
        "VpcEndpointId" Core.=: vpcEndpointId,
        "DryRun" Core.=: dryRun,
        "ServiceId" Core.=: serviceId,
        "ConnectionNotificationArn"
          Core.=: connectionNotificationArn,
        Core.toQueryList "ConnectionEvents" connectionEvents
      ]

-- | /See:/ 'newCreateVpcEndpointConnectionNotificationResponse' smart constructor.
data CreateVpcEndpointConnectionNotificationResponse = CreateVpcEndpointConnectionNotificationResponse'
  { -- | Information about the notification.
    connectionNotification :: Prelude.Maybe ConnectionNotification,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVpcEndpointConnectionNotificationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionNotification', 'createVpcEndpointConnectionNotificationResponse_connectionNotification' - Information about the notification.
--
-- 'clientToken', 'createVpcEndpointConnectionNotificationResponse_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'httpStatus', 'createVpcEndpointConnectionNotificationResponse_httpStatus' - The response's http status code.
newCreateVpcEndpointConnectionNotificationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateVpcEndpointConnectionNotificationResponse
newCreateVpcEndpointConnectionNotificationResponse
  pHttpStatus_ =
    CreateVpcEndpointConnectionNotificationResponse'
      { connectionNotification =
          Prelude.Nothing,
        clientToken =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the notification.
createVpcEndpointConnectionNotificationResponse_connectionNotification :: Lens.Lens' CreateVpcEndpointConnectionNotificationResponse (Prelude.Maybe ConnectionNotification)
createVpcEndpointConnectionNotificationResponse_connectionNotification = Lens.lens (\CreateVpcEndpointConnectionNotificationResponse' {connectionNotification} -> connectionNotification) (\s@CreateVpcEndpointConnectionNotificationResponse' {} a -> s {connectionNotification = a} :: CreateVpcEndpointConnectionNotificationResponse)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createVpcEndpointConnectionNotificationResponse_clientToken :: Lens.Lens' CreateVpcEndpointConnectionNotificationResponse (Prelude.Maybe Prelude.Text)
createVpcEndpointConnectionNotificationResponse_clientToken = Lens.lens (\CreateVpcEndpointConnectionNotificationResponse' {clientToken} -> clientToken) (\s@CreateVpcEndpointConnectionNotificationResponse' {} a -> s {clientToken = a} :: CreateVpcEndpointConnectionNotificationResponse)

-- | The response's http status code.
createVpcEndpointConnectionNotificationResponse_httpStatus :: Lens.Lens' CreateVpcEndpointConnectionNotificationResponse Prelude.Int
createVpcEndpointConnectionNotificationResponse_httpStatus = Lens.lens (\CreateVpcEndpointConnectionNotificationResponse' {httpStatus} -> httpStatus) (\s@CreateVpcEndpointConnectionNotificationResponse' {} a -> s {httpStatus = a} :: CreateVpcEndpointConnectionNotificationResponse)

instance
  Prelude.NFData
    CreateVpcEndpointConnectionNotificationResponse
  where
  rnf
    CreateVpcEndpointConnectionNotificationResponse' {..} =
      Prelude.rnf connectionNotification
        `Prelude.seq` Prelude.rnf clientToken
        `Prelude.seq` Prelude.rnf httpStatus

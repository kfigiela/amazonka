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
-- Module      : Amazonka.ChimeSDKIdentity.RegisterAppInstanceUserEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an endpoint under an Amazon Chime @AppInstanceUser@. The
-- endpoint receives messages for a user. For push notifications, the
-- endpoint is a mobile device used to receive mobile push notifications
-- for a user.
module Amazonka.ChimeSDKIdentity.RegisterAppInstanceUserEndpoint
  ( -- * Creating a Request
    RegisterAppInstanceUserEndpoint (..),
    newRegisterAppInstanceUserEndpoint,

    -- * Request Lenses
    registerAppInstanceUserEndpoint_name,
    registerAppInstanceUserEndpoint_allowMessages,
    registerAppInstanceUserEndpoint_appInstanceUserArn,
    registerAppInstanceUserEndpoint_type,
    registerAppInstanceUserEndpoint_resourceArn,
    registerAppInstanceUserEndpoint_endpointAttributes,
    registerAppInstanceUserEndpoint_clientRequestToken,

    -- * Destructuring the Response
    RegisterAppInstanceUserEndpointResponse (..),
    newRegisterAppInstanceUserEndpointResponse,

    -- * Response Lenses
    registerAppInstanceUserEndpointResponse_endpointId,
    registerAppInstanceUserEndpointResponse_appInstanceUserArn,
    registerAppInstanceUserEndpointResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKIdentity.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRegisterAppInstanceUserEndpoint' smart constructor.
data RegisterAppInstanceUserEndpoint = RegisterAppInstanceUserEndpoint'
  { -- | The name of the @AppInstanceUserEndpoint@.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Boolean that controls whether the AppInstanceUserEndpoint is opted in to
    -- receive messages. @ALL@ indicates the endpoint receives all messages.
    -- @NONE@ indicates the endpoint receives no messages.
    allowMessages :: Prelude.Maybe AllowMessages,
    -- | The ARN of the @AppInstanceUser@.
    appInstanceUserArn :: Core.Sensitive Prelude.Text,
    -- | The type of the @AppInstanceUserEndpoint@. Supported types:
    --
    -- -   @APNS@: The mobile notification service for an Apple device.
    --
    -- -   @APNS_SANDBOX@: The sandbox environment of the mobile notification
    --     service for an Apple device.
    --
    -- -   @GCM@: The mobile notification service for an Android device.
    --
    -- Populate the @ResourceArn@ value of each type as @PinpointAppArn@.
    type' :: AppInstanceUserEndpointType,
    -- | The ARN of the resource to which the endpoint belongs.
    resourceArn :: Core.Sensitive Prelude.Text,
    -- | The attributes of an @Endpoint@.
    endpointAttributes :: EndpointAttributes,
    -- | The idempotency token for each client request.
    clientRequestToken :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterAppInstanceUserEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'registerAppInstanceUserEndpoint_name' - The name of the @AppInstanceUserEndpoint@.
--
-- 'allowMessages', 'registerAppInstanceUserEndpoint_allowMessages' - Boolean that controls whether the AppInstanceUserEndpoint is opted in to
-- receive messages. @ALL@ indicates the endpoint receives all messages.
-- @NONE@ indicates the endpoint receives no messages.
--
-- 'appInstanceUserArn', 'registerAppInstanceUserEndpoint_appInstanceUserArn' - The ARN of the @AppInstanceUser@.
--
-- 'type'', 'registerAppInstanceUserEndpoint_type' - The type of the @AppInstanceUserEndpoint@. Supported types:
--
-- -   @APNS@: The mobile notification service for an Apple device.
--
-- -   @APNS_SANDBOX@: The sandbox environment of the mobile notification
--     service for an Apple device.
--
-- -   @GCM@: The mobile notification service for an Android device.
--
-- Populate the @ResourceArn@ value of each type as @PinpointAppArn@.
--
-- 'resourceArn', 'registerAppInstanceUserEndpoint_resourceArn' - The ARN of the resource to which the endpoint belongs.
--
-- 'endpointAttributes', 'registerAppInstanceUserEndpoint_endpointAttributes' - The attributes of an @Endpoint@.
--
-- 'clientRequestToken', 'registerAppInstanceUserEndpoint_clientRequestToken' - The idempotency token for each client request.
newRegisterAppInstanceUserEndpoint ::
  -- | 'appInstanceUserArn'
  Prelude.Text ->
  -- | 'type''
  AppInstanceUserEndpointType ->
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'endpointAttributes'
  EndpointAttributes ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  RegisterAppInstanceUserEndpoint
newRegisterAppInstanceUserEndpoint
  pAppInstanceUserArn_
  pType_
  pResourceArn_
  pEndpointAttributes_
  pClientRequestToken_ =
    RegisterAppInstanceUserEndpoint'
      { name =
          Prelude.Nothing,
        allowMessages = Prelude.Nothing,
        appInstanceUserArn =
          Core._Sensitive
            Lens.# pAppInstanceUserArn_,
        type' = pType_,
        resourceArn =
          Core._Sensitive Lens.# pResourceArn_,
        endpointAttributes = pEndpointAttributes_,
        clientRequestToken =
          Core._Sensitive
            Lens.# pClientRequestToken_
      }

-- | The name of the @AppInstanceUserEndpoint@.
registerAppInstanceUserEndpoint_name :: Lens.Lens' RegisterAppInstanceUserEndpoint (Prelude.Maybe Prelude.Text)
registerAppInstanceUserEndpoint_name = Lens.lens (\RegisterAppInstanceUserEndpoint' {name} -> name) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {name = a} :: RegisterAppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Sensitive

-- | Boolean that controls whether the AppInstanceUserEndpoint is opted in to
-- receive messages. @ALL@ indicates the endpoint receives all messages.
-- @NONE@ indicates the endpoint receives no messages.
registerAppInstanceUserEndpoint_allowMessages :: Lens.Lens' RegisterAppInstanceUserEndpoint (Prelude.Maybe AllowMessages)
registerAppInstanceUserEndpoint_allowMessages = Lens.lens (\RegisterAppInstanceUserEndpoint' {allowMessages} -> allowMessages) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {allowMessages = a} :: RegisterAppInstanceUserEndpoint)

-- | The ARN of the @AppInstanceUser@.
registerAppInstanceUserEndpoint_appInstanceUserArn :: Lens.Lens' RegisterAppInstanceUserEndpoint Prelude.Text
registerAppInstanceUserEndpoint_appInstanceUserArn = Lens.lens (\RegisterAppInstanceUserEndpoint' {appInstanceUserArn} -> appInstanceUserArn) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {appInstanceUserArn = a} :: RegisterAppInstanceUserEndpoint) Prelude.. Core._Sensitive

-- | The type of the @AppInstanceUserEndpoint@. Supported types:
--
-- -   @APNS@: The mobile notification service for an Apple device.
--
-- -   @APNS_SANDBOX@: The sandbox environment of the mobile notification
--     service for an Apple device.
--
-- -   @GCM@: The mobile notification service for an Android device.
--
-- Populate the @ResourceArn@ value of each type as @PinpointAppArn@.
registerAppInstanceUserEndpoint_type :: Lens.Lens' RegisterAppInstanceUserEndpoint AppInstanceUserEndpointType
registerAppInstanceUserEndpoint_type = Lens.lens (\RegisterAppInstanceUserEndpoint' {type'} -> type') (\s@RegisterAppInstanceUserEndpoint' {} a -> s {type' = a} :: RegisterAppInstanceUserEndpoint)

-- | The ARN of the resource to which the endpoint belongs.
registerAppInstanceUserEndpoint_resourceArn :: Lens.Lens' RegisterAppInstanceUserEndpoint Prelude.Text
registerAppInstanceUserEndpoint_resourceArn = Lens.lens (\RegisterAppInstanceUserEndpoint' {resourceArn} -> resourceArn) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {resourceArn = a} :: RegisterAppInstanceUserEndpoint) Prelude.. Core._Sensitive

-- | The attributes of an @Endpoint@.
registerAppInstanceUserEndpoint_endpointAttributes :: Lens.Lens' RegisterAppInstanceUserEndpoint EndpointAttributes
registerAppInstanceUserEndpoint_endpointAttributes = Lens.lens (\RegisterAppInstanceUserEndpoint' {endpointAttributes} -> endpointAttributes) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {endpointAttributes = a} :: RegisterAppInstanceUserEndpoint)

-- | The idempotency token for each client request.
registerAppInstanceUserEndpoint_clientRequestToken :: Lens.Lens' RegisterAppInstanceUserEndpoint Prelude.Text
registerAppInstanceUserEndpoint_clientRequestToken = Lens.lens (\RegisterAppInstanceUserEndpoint' {clientRequestToken} -> clientRequestToken) (\s@RegisterAppInstanceUserEndpoint' {} a -> s {clientRequestToken = a} :: RegisterAppInstanceUserEndpoint) Prelude.. Core._Sensitive

instance
  Core.AWSRequest
    RegisterAppInstanceUserEndpoint
  where
  type
    AWSResponse RegisterAppInstanceUserEndpoint =
      RegisterAppInstanceUserEndpointResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterAppInstanceUserEndpointResponse'
            Prelude.<$> (x Core..?> "EndpointId")
            Prelude.<*> (x Core..?> "AppInstanceUserArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    RegisterAppInstanceUserEndpoint
  where
  hashWithSalt
    _salt
    RegisterAppInstanceUserEndpoint' {..} =
      _salt `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` allowMessages
        `Prelude.hashWithSalt` appInstanceUserArn
        `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` resourceArn
        `Prelude.hashWithSalt` endpointAttributes
        `Prelude.hashWithSalt` clientRequestToken

instance
  Prelude.NFData
    RegisterAppInstanceUserEndpoint
  where
  rnf RegisterAppInstanceUserEndpoint' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf allowMessages
      `Prelude.seq` Prelude.rnf appInstanceUserArn
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf endpointAttributes
      `Prelude.seq` Prelude.rnf clientRequestToken

instance
  Core.ToHeaders
    RegisterAppInstanceUserEndpoint
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON RegisterAppInstanceUserEndpoint where
  toJSON RegisterAppInstanceUserEndpoint' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("AllowMessages" Core..=) Prelude.<$> allowMessages,
            Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("ResourceArn" Core..= resourceArn),
            Prelude.Just
              ("EndpointAttributes" Core..= endpointAttributes),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath RegisterAppInstanceUserEndpoint where
  toPath RegisterAppInstanceUserEndpoint' {..} =
    Prelude.mconcat
      [ "/app-instance-users/",
        Core.toBS appInstanceUserArn,
        "/endpoints"
      ]

instance Core.ToQuery RegisterAppInstanceUserEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRegisterAppInstanceUserEndpointResponse' smart constructor.
data RegisterAppInstanceUserEndpointResponse = RegisterAppInstanceUserEndpointResponse'
  { -- | The unique identifier of the @AppInstanceUserEndpoint@.
    endpointId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ARN of the @AppInstanceUser@.
    appInstanceUserArn :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterAppInstanceUserEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointId', 'registerAppInstanceUserEndpointResponse_endpointId' - The unique identifier of the @AppInstanceUserEndpoint@.
--
-- 'appInstanceUserArn', 'registerAppInstanceUserEndpointResponse_appInstanceUserArn' - The ARN of the @AppInstanceUser@.
--
-- 'httpStatus', 'registerAppInstanceUserEndpointResponse_httpStatus' - The response's http status code.
newRegisterAppInstanceUserEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RegisterAppInstanceUserEndpointResponse
newRegisterAppInstanceUserEndpointResponse
  pHttpStatus_ =
    RegisterAppInstanceUserEndpointResponse'
      { endpointId =
          Prelude.Nothing,
        appInstanceUserArn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The unique identifier of the @AppInstanceUserEndpoint@.
registerAppInstanceUserEndpointResponse_endpointId :: Lens.Lens' RegisterAppInstanceUserEndpointResponse (Prelude.Maybe Prelude.Text)
registerAppInstanceUserEndpointResponse_endpointId = Lens.lens (\RegisterAppInstanceUserEndpointResponse' {endpointId} -> endpointId) (\s@RegisterAppInstanceUserEndpointResponse' {} a -> s {endpointId = a} :: RegisterAppInstanceUserEndpointResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The ARN of the @AppInstanceUser@.
registerAppInstanceUserEndpointResponse_appInstanceUserArn :: Lens.Lens' RegisterAppInstanceUserEndpointResponse (Prelude.Maybe Prelude.Text)
registerAppInstanceUserEndpointResponse_appInstanceUserArn = Lens.lens (\RegisterAppInstanceUserEndpointResponse' {appInstanceUserArn} -> appInstanceUserArn) (\s@RegisterAppInstanceUserEndpointResponse' {} a -> s {appInstanceUserArn = a} :: RegisterAppInstanceUserEndpointResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The response's http status code.
registerAppInstanceUserEndpointResponse_httpStatus :: Lens.Lens' RegisterAppInstanceUserEndpointResponse Prelude.Int
registerAppInstanceUserEndpointResponse_httpStatus = Lens.lens (\RegisterAppInstanceUserEndpointResponse' {httpStatus} -> httpStatus) (\s@RegisterAppInstanceUserEndpointResponse' {} a -> s {httpStatus = a} :: RegisterAppInstanceUserEndpointResponse)

instance
  Prelude.NFData
    RegisterAppInstanceUserEndpointResponse
  where
  rnf RegisterAppInstanceUserEndpointResponse' {..} =
    Prelude.rnf endpointId
      `Prelude.seq` Prelude.rnf appInstanceUserArn
      `Prelude.seq` Prelude.rnf httpStatus

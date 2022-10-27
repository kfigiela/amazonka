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
-- Module      : Amazonka.PinpointSmsVoiceV2.CreatePool
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new pool and associates the specified origination identity to
-- the pool. A pool can include one or more phone numbers and SenderIds
-- that are associated with your Amazon Web Services account.
--
-- The new pool inherits its configuration from the specified origination
-- identity. This includes keywords, message type, opt-out list, two-way
-- configuration, and self-managed opt-out configuration. Deletion
-- protection isn\'t inherited from the origination identity and defaults
-- to false.
--
-- If the origination identity is a phone number and is already associated
-- with another pool, an Error is returned. A sender ID can be associated
-- with multiple pools.
module Amazonka.PinpointSmsVoiceV2.CreatePool
  ( -- * Creating a Request
    CreatePool (..),
    newCreatePool,

    -- * Request Lenses
    createPool_deletionProtectionEnabled,
    createPool_tags,
    createPool_clientToken,
    createPool_originationIdentity,
    createPool_isoCountryCode,
    createPool_messageType,

    -- * Destructuring the Response
    CreatePoolResponse (..),
    newCreatePoolResponse,

    -- * Response Lenses
    createPoolResponse_deletionProtectionEnabled,
    createPoolResponse_tags,
    createPoolResponse_poolArn,
    createPoolResponse_messageType,
    createPoolResponse_selfManagedOptOutsEnabled,
    createPoolResponse_createdTimestamp,
    createPoolResponse_status,
    createPoolResponse_twoWayEnabled,
    createPoolResponse_optOutListName,
    createPoolResponse_poolId,
    createPoolResponse_twoWayChannelArn,
    createPoolResponse_sharedRoutesEnabled,
    createPoolResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.PinpointSmsVoiceV2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreatePool' smart constructor.
data CreatePool = CreatePool'
  { -- | By default this is set to false. When set to true the pool can\'t be
    -- deleted. You can change this value using the UpdatePool action.
    deletionProtectionEnabled :: Prelude.Maybe Prelude.Bool,
    -- | An array of tags (key and value pairs) associated with the pool.
    tags :: Prelude.Maybe [Tag],
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don\'t specify a client token, a
    -- randomly generated token is used for the request to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The origination identity to use such as a PhoneNumberId, PhoneNumberArn,
    -- SenderId or SenderIdArn. You can use DescribePhoneNumbers to find the
    -- values for PhoneNumberId and PhoneNumberArn while DescribeSenderIds can
    -- be used to get the values for SenderId and SenderIdArn.
    originationIdentity :: Prelude.Text,
    -- | The new two-character code, in ISO 3166-1 alpha-2 format, for the
    -- country or region of the new pool.
    isoCountryCode :: Prelude.Text,
    -- | The type of message. Valid values are TRANSACTIONAL for messages that
    -- are critical or time-sensitive and PROMOTIONAL for messages that aren\'t
    -- critical or time-sensitive.
    messageType :: MessageType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deletionProtectionEnabled', 'createPool_deletionProtectionEnabled' - By default this is set to false. When set to true the pool can\'t be
-- deleted. You can change this value using the UpdatePool action.
--
-- 'tags', 'createPool_tags' - An array of tags (key and value pairs) associated with the pool.
--
-- 'clientToken', 'createPool_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don\'t specify a client token, a
-- randomly generated token is used for the request to ensure idempotency.
--
-- 'originationIdentity', 'createPool_originationIdentity' - The origination identity to use such as a PhoneNumberId, PhoneNumberArn,
-- SenderId or SenderIdArn. You can use DescribePhoneNumbers to find the
-- values for PhoneNumberId and PhoneNumberArn while DescribeSenderIds can
-- be used to get the values for SenderId and SenderIdArn.
--
-- 'isoCountryCode', 'createPool_isoCountryCode' - The new two-character code, in ISO 3166-1 alpha-2 format, for the
-- country or region of the new pool.
--
-- 'messageType', 'createPool_messageType' - The type of message. Valid values are TRANSACTIONAL for messages that
-- are critical or time-sensitive and PROMOTIONAL for messages that aren\'t
-- critical or time-sensitive.
newCreatePool ::
  -- | 'originationIdentity'
  Prelude.Text ->
  -- | 'isoCountryCode'
  Prelude.Text ->
  -- | 'messageType'
  MessageType ->
  CreatePool
newCreatePool
  pOriginationIdentity_
  pIsoCountryCode_
  pMessageType_ =
    CreatePool'
      { deletionProtectionEnabled =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        originationIdentity = pOriginationIdentity_,
        isoCountryCode = pIsoCountryCode_,
        messageType = pMessageType_
      }

-- | By default this is set to false. When set to true the pool can\'t be
-- deleted. You can change this value using the UpdatePool action.
createPool_deletionProtectionEnabled :: Lens.Lens' CreatePool (Prelude.Maybe Prelude.Bool)
createPool_deletionProtectionEnabled = Lens.lens (\CreatePool' {deletionProtectionEnabled} -> deletionProtectionEnabled) (\s@CreatePool' {} a -> s {deletionProtectionEnabled = a} :: CreatePool)

-- | An array of tags (key and value pairs) associated with the pool.
createPool_tags :: Lens.Lens' CreatePool (Prelude.Maybe [Tag])
createPool_tags = Lens.lens (\CreatePool' {tags} -> tags) (\s@CreatePool' {} a -> s {tags = a} :: CreatePool) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don\'t specify a client token, a
-- randomly generated token is used for the request to ensure idempotency.
createPool_clientToken :: Lens.Lens' CreatePool (Prelude.Maybe Prelude.Text)
createPool_clientToken = Lens.lens (\CreatePool' {clientToken} -> clientToken) (\s@CreatePool' {} a -> s {clientToken = a} :: CreatePool)

-- | The origination identity to use such as a PhoneNumberId, PhoneNumberArn,
-- SenderId or SenderIdArn. You can use DescribePhoneNumbers to find the
-- values for PhoneNumberId and PhoneNumberArn while DescribeSenderIds can
-- be used to get the values for SenderId and SenderIdArn.
createPool_originationIdentity :: Lens.Lens' CreatePool Prelude.Text
createPool_originationIdentity = Lens.lens (\CreatePool' {originationIdentity} -> originationIdentity) (\s@CreatePool' {} a -> s {originationIdentity = a} :: CreatePool)

-- | The new two-character code, in ISO 3166-1 alpha-2 format, for the
-- country or region of the new pool.
createPool_isoCountryCode :: Lens.Lens' CreatePool Prelude.Text
createPool_isoCountryCode = Lens.lens (\CreatePool' {isoCountryCode} -> isoCountryCode) (\s@CreatePool' {} a -> s {isoCountryCode = a} :: CreatePool)

-- | The type of message. Valid values are TRANSACTIONAL for messages that
-- are critical or time-sensitive and PROMOTIONAL for messages that aren\'t
-- critical or time-sensitive.
createPool_messageType :: Lens.Lens' CreatePool MessageType
createPool_messageType = Lens.lens (\CreatePool' {messageType} -> messageType) (\s@CreatePool' {} a -> s {messageType = a} :: CreatePool)

instance Core.AWSRequest CreatePool where
  type AWSResponse CreatePool = CreatePoolResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePoolResponse'
            Prelude.<$> (x Core..?> "DeletionProtectionEnabled")
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "PoolArn")
            Prelude.<*> (x Core..?> "MessageType")
            Prelude.<*> (x Core..?> "SelfManagedOptOutsEnabled")
            Prelude.<*> (x Core..?> "CreatedTimestamp")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "TwoWayEnabled")
            Prelude.<*> (x Core..?> "OptOutListName")
            Prelude.<*> (x Core..?> "PoolId")
            Prelude.<*> (x Core..?> "TwoWayChannelArn")
            Prelude.<*> (x Core..?> "SharedRoutesEnabled")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreatePool where
  hashWithSalt _salt CreatePool' {..} =
    _salt
      `Prelude.hashWithSalt` deletionProtectionEnabled
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` originationIdentity
      `Prelude.hashWithSalt` isoCountryCode
      `Prelude.hashWithSalt` messageType

instance Prelude.NFData CreatePool where
  rnf CreatePool' {..} =
    Prelude.rnf deletionProtectionEnabled
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf originationIdentity
      `Prelude.seq` Prelude.rnf isoCountryCode
      `Prelude.seq` Prelude.rnf messageType

instance Core.ToHeaders CreatePool where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PinpointSMSVoiceV2.CreatePool" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePool where
  toJSON CreatePool' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeletionProtectionEnabled" Core..=)
              Prelude.<$> deletionProtectionEnabled,
            ("Tags" Core..=) Prelude.<$> tags,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ("OriginationIdentity" Core..= originationIdentity),
            Prelude.Just
              ("IsoCountryCode" Core..= isoCountryCode),
            Prelude.Just ("MessageType" Core..= messageType)
          ]
      )

instance Core.ToPath CreatePool where
  toPath = Prelude.const "/"

instance Core.ToQuery CreatePool where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreatePoolResponse' smart constructor.
data CreatePoolResponse = CreatePoolResponse'
  { -- | When set to true deletion protection is enabled. By default this is set
    -- to false.
    deletionProtectionEnabled :: Prelude.Maybe Prelude.Bool,
    -- | An array of tags (key and value pairs) associated with the pool.
    tags :: Prelude.Maybe [Tag],
    -- | The Amazon Resource Name (ARN) for the pool.
    poolArn :: Prelude.Maybe Prelude.Text,
    -- | The type of message for the pool to use.
    messageType :: Prelude.Maybe MessageType,
    -- | By default this is set to false. When an end recipient sends a message
    -- that begins with HELP or STOP to one of your dedicated numbers, Amazon
    -- Pinpoint automatically replies with a customizable message and adds the
    -- end recipient to the OptOutList. When set to true you\'re responsible
    -- for responding to HELP and STOP requests. You\'re also responsible for
    -- tracking and honoring opt-out requests.
    selfManagedOptOutsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The time when the pool was created, in
    -- <https://www.epochconverter.com/ UNIX epoch time> format.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The current status of the pool.
    --
    -- -   CREATING: The pool is currently being created and isn\'t yet
    --     available for use.
    --
    -- -   ACTIVE: The pool is active and available for use.
    --
    -- -   DELETING: The pool is being deleted.
    status :: Prelude.Maybe PoolStatus,
    -- | By default this is set to false. When set to true you can receive
    -- incoming text messages from your end recipients.
    twoWayEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The name of the OptOutList associated with the pool.
    optOutListName :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the pool.
    poolId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the two way channel.
    twoWayChannelArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether shared routes are enabled for the pool.
    sharedRoutesEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePoolResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deletionProtectionEnabled', 'createPoolResponse_deletionProtectionEnabled' - When set to true deletion protection is enabled. By default this is set
-- to false.
--
-- 'tags', 'createPoolResponse_tags' - An array of tags (key and value pairs) associated with the pool.
--
-- 'poolArn', 'createPoolResponse_poolArn' - The Amazon Resource Name (ARN) for the pool.
--
-- 'messageType', 'createPoolResponse_messageType' - The type of message for the pool to use.
--
-- 'selfManagedOptOutsEnabled', 'createPoolResponse_selfManagedOptOutsEnabled' - By default this is set to false. When an end recipient sends a message
-- that begins with HELP or STOP to one of your dedicated numbers, Amazon
-- Pinpoint automatically replies with a customizable message and adds the
-- end recipient to the OptOutList. When set to true you\'re responsible
-- for responding to HELP and STOP requests. You\'re also responsible for
-- tracking and honoring opt-out requests.
--
-- 'createdTimestamp', 'createPoolResponse_createdTimestamp' - The time when the pool was created, in
-- <https://www.epochconverter.com/ UNIX epoch time> format.
--
-- 'status', 'createPoolResponse_status' - The current status of the pool.
--
-- -   CREATING: The pool is currently being created and isn\'t yet
--     available for use.
--
-- -   ACTIVE: The pool is active and available for use.
--
-- -   DELETING: The pool is being deleted.
--
-- 'twoWayEnabled', 'createPoolResponse_twoWayEnabled' - By default this is set to false. When set to true you can receive
-- incoming text messages from your end recipients.
--
-- 'optOutListName', 'createPoolResponse_optOutListName' - The name of the OptOutList associated with the pool.
--
-- 'poolId', 'createPoolResponse_poolId' - The unique identifier for the pool.
--
-- 'twoWayChannelArn', 'createPoolResponse_twoWayChannelArn' - The Amazon Resource Name (ARN) of the two way channel.
--
-- 'sharedRoutesEnabled', 'createPoolResponse_sharedRoutesEnabled' - Indicates whether shared routes are enabled for the pool.
--
-- 'httpStatus', 'createPoolResponse_httpStatus' - The response's http status code.
newCreatePoolResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreatePoolResponse
newCreatePoolResponse pHttpStatus_ =
  CreatePoolResponse'
    { deletionProtectionEnabled =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      poolArn = Prelude.Nothing,
      messageType = Prelude.Nothing,
      selfManagedOptOutsEnabled = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      status = Prelude.Nothing,
      twoWayEnabled = Prelude.Nothing,
      optOutListName = Prelude.Nothing,
      poolId = Prelude.Nothing,
      twoWayChannelArn = Prelude.Nothing,
      sharedRoutesEnabled = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | When set to true deletion protection is enabled. By default this is set
-- to false.
createPoolResponse_deletionProtectionEnabled :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Bool)
createPoolResponse_deletionProtectionEnabled = Lens.lens (\CreatePoolResponse' {deletionProtectionEnabled} -> deletionProtectionEnabled) (\s@CreatePoolResponse' {} a -> s {deletionProtectionEnabled = a} :: CreatePoolResponse)

-- | An array of tags (key and value pairs) associated with the pool.
createPoolResponse_tags :: Lens.Lens' CreatePoolResponse (Prelude.Maybe [Tag])
createPoolResponse_tags = Lens.lens (\CreatePoolResponse' {tags} -> tags) (\s@CreatePoolResponse' {} a -> s {tags = a} :: CreatePoolResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) for the pool.
createPoolResponse_poolArn :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Text)
createPoolResponse_poolArn = Lens.lens (\CreatePoolResponse' {poolArn} -> poolArn) (\s@CreatePoolResponse' {} a -> s {poolArn = a} :: CreatePoolResponse)

-- | The type of message for the pool to use.
createPoolResponse_messageType :: Lens.Lens' CreatePoolResponse (Prelude.Maybe MessageType)
createPoolResponse_messageType = Lens.lens (\CreatePoolResponse' {messageType} -> messageType) (\s@CreatePoolResponse' {} a -> s {messageType = a} :: CreatePoolResponse)

-- | By default this is set to false. When an end recipient sends a message
-- that begins with HELP or STOP to one of your dedicated numbers, Amazon
-- Pinpoint automatically replies with a customizable message and adds the
-- end recipient to the OptOutList. When set to true you\'re responsible
-- for responding to HELP and STOP requests. You\'re also responsible for
-- tracking and honoring opt-out requests.
createPoolResponse_selfManagedOptOutsEnabled :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Bool)
createPoolResponse_selfManagedOptOutsEnabled = Lens.lens (\CreatePoolResponse' {selfManagedOptOutsEnabled} -> selfManagedOptOutsEnabled) (\s@CreatePoolResponse' {} a -> s {selfManagedOptOutsEnabled = a} :: CreatePoolResponse)

-- | The time when the pool was created, in
-- <https://www.epochconverter.com/ UNIX epoch time> format.
createPoolResponse_createdTimestamp :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.UTCTime)
createPoolResponse_createdTimestamp = Lens.lens (\CreatePoolResponse' {createdTimestamp} -> createdTimestamp) (\s@CreatePoolResponse' {} a -> s {createdTimestamp = a} :: CreatePoolResponse) Prelude.. Lens.mapping Core._Time

-- | The current status of the pool.
--
-- -   CREATING: The pool is currently being created and isn\'t yet
--     available for use.
--
-- -   ACTIVE: The pool is active and available for use.
--
-- -   DELETING: The pool is being deleted.
createPoolResponse_status :: Lens.Lens' CreatePoolResponse (Prelude.Maybe PoolStatus)
createPoolResponse_status = Lens.lens (\CreatePoolResponse' {status} -> status) (\s@CreatePoolResponse' {} a -> s {status = a} :: CreatePoolResponse)

-- | By default this is set to false. When set to true you can receive
-- incoming text messages from your end recipients.
createPoolResponse_twoWayEnabled :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Bool)
createPoolResponse_twoWayEnabled = Lens.lens (\CreatePoolResponse' {twoWayEnabled} -> twoWayEnabled) (\s@CreatePoolResponse' {} a -> s {twoWayEnabled = a} :: CreatePoolResponse)

-- | The name of the OptOutList associated with the pool.
createPoolResponse_optOutListName :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Text)
createPoolResponse_optOutListName = Lens.lens (\CreatePoolResponse' {optOutListName} -> optOutListName) (\s@CreatePoolResponse' {} a -> s {optOutListName = a} :: CreatePoolResponse)

-- | The unique identifier for the pool.
createPoolResponse_poolId :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Text)
createPoolResponse_poolId = Lens.lens (\CreatePoolResponse' {poolId} -> poolId) (\s@CreatePoolResponse' {} a -> s {poolId = a} :: CreatePoolResponse)

-- | The Amazon Resource Name (ARN) of the two way channel.
createPoolResponse_twoWayChannelArn :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Text)
createPoolResponse_twoWayChannelArn = Lens.lens (\CreatePoolResponse' {twoWayChannelArn} -> twoWayChannelArn) (\s@CreatePoolResponse' {} a -> s {twoWayChannelArn = a} :: CreatePoolResponse)

-- | Indicates whether shared routes are enabled for the pool.
createPoolResponse_sharedRoutesEnabled :: Lens.Lens' CreatePoolResponse (Prelude.Maybe Prelude.Bool)
createPoolResponse_sharedRoutesEnabled = Lens.lens (\CreatePoolResponse' {sharedRoutesEnabled} -> sharedRoutesEnabled) (\s@CreatePoolResponse' {} a -> s {sharedRoutesEnabled = a} :: CreatePoolResponse)

-- | The response's http status code.
createPoolResponse_httpStatus :: Lens.Lens' CreatePoolResponse Prelude.Int
createPoolResponse_httpStatus = Lens.lens (\CreatePoolResponse' {httpStatus} -> httpStatus) (\s@CreatePoolResponse' {} a -> s {httpStatus = a} :: CreatePoolResponse)

instance Prelude.NFData CreatePoolResponse where
  rnf CreatePoolResponse' {..} =
    Prelude.rnf deletionProtectionEnabled
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf poolArn
      `Prelude.seq` Prelude.rnf messageType
      `Prelude.seq` Prelude.rnf selfManagedOptOutsEnabled
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf twoWayEnabled
      `Prelude.seq` Prelude.rnf optOutListName
      `Prelude.seq` Prelude.rnf poolId
      `Prelude.seq` Prelude.rnf twoWayChannelArn
      `Prelude.seq` Prelude.rnf sharedRoutesEnabled
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.PinpointSmsVoiceV2.DeletePool
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing pool. Deleting a pool disassociates all origination
-- identities from that pool.
--
-- If the pool status isn\'t active or if deletion protection is enabled,
-- an Error is returned.
--
-- A pool is a collection of phone numbers and SenderIds. A pool can
-- include one or more phone numbers and SenderIds that are associated with
-- your Amazon Web Services account.
module Amazonka.PinpointSmsVoiceV2.DeletePool
  ( -- * Creating a Request
    DeletePool (..),
    newDeletePool,

    -- * Request Lenses
    deletePool_poolId,

    -- * Destructuring the Response
    DeletePoolResponse (..),
    newDeletePoolResponse,

    -- * Response Lenses
    deletePoolResponse_poolArn,
    deletePoolResponse_messageType,
    deletePoolResponse_selfManagedOptOutsEnabled,
    deletePoolResponse_createdTimestamp,
    deletePoolResponse_status,
    deletePoolResponse_twoWayEnabled,
    deletePoolResponse_optOutListName,
    deletePoolResponse_poolId,
    deletePoolResponse_twoWayChannelArn,
    deletePoolResponse_sharedRoutesEnabled,
    deletePoolResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.PinpointSmsVoiceV2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeletePool' smart constructor.
data DeletePool = DeletePool'
  { -- | The PoolId or PoolArn of the pool to delete. You can use DescribePools
    -- to find the values for PoolId and PoolArn .
    poolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolId', 'deletePool_poolId' - The PoolId or PoolArn of the pool to delete. You can use DescribePools
-- to find the values for PoolId and PoolArn .
newDeletePool ::
  -- | 'poolId'
  Prelude.Text ->
  DeletePool
newDeletePool pPoolId_ =
  DeletePool' {poolId = pPoolId_}

-- | The PoolId or PoolArn of the pool to delete. You can use DescribePools
-- to find the values for PoolId and PoolArn .
deletePool_poolId :: Lens.Lens' DeletePool Prelude.Text
deletePool_poolId = Lens.lens (\DeletePool' {poolId} -> poolId) (\s@DeletePool' {} a -> s {poolId = a} :: DeletePool)

instance Core.AWSRequest DeletePool where
  type AWSResponse DeletePool = DeletePoolResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeletePoolResponse'
            Prelude.<$> (x Core..?> "PoolArn")
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

instance Prelude.Hashable DeletePool where
  hashWithSalt _salt DeletePool' {..} =
    _salt `Prelude.hashWithSalt` poolId

instance Prelude.NFData DeletePool where
  rnf DeletePool' {..} = Prelude.rnf poolId

instance Core.ToHeaders DeletePool where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PinpointSMSVoiceV2.DeletePool" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeletePool where
  toJSON DeletePool' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("PoolId" Core..= poolId)]
      )

instance Core.ToPath DeletePool where
  toPath = Prelude.const "/"

instance Core.ToQuery DeletePool where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePoolResponse' smart constructor.
data DeletePoolResponse = DeletePoolResponse'
  { -- | The Amazon Resource Name (ARN) of the pool that was deleted.
    poolArn :: Prelude.Maybe Prelude.Text,
    -- | The message type that was associated with the deleted pool.
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
    -- | The name of the OptOutList that was associated with the deleted pool.
    optOutListName :: Prelude.Maybe Prelude.Text,
    -- | The PoolId of the pool that was deleted.
    poolId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the TwoWayChannel.
    twoWayChannelArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether shared routes are enabled for the pool.
    sharedRoutesEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePoolResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolArn', 'deletePoolResponse_poolArn' - The Amazon Resource Name (ARN) of the pool that was deleted.
--
-- 'messageType', 'deletePoolResponse_messageType' - The message type that was associated with the deleted pool.
--
-- 'selfManagedOptOutsEnabled', 'deletePoolResponse_selfManagedOptOutsEnabled' - By default this is set to false. When an end recipient sends a message
-- that begins with HELP or STOP to one of your dedicated numbers, Amazon
-- Pinpoint automatically replies with a customizable message and adds the
-- end recipient to the OptOutList. When set to true you\'re responsible
-- for responding to HELP and STOP requests. You\'re also responsible for
-- tracking and honoring opt-out requests.
--
-- 'createdTimestamp', 'deletePoolResponse_createdTimestamp' - The time when the pool was created, in
-- <https://www.epochconverter.com/ UNIX epoch time> format.
--
-- 'status', 'deletePoolResponse_status' - The current status of the pool.
--
-- -   CREATING: The pool is currently being created and isn\'t yet
--     available for use.
--
-- -   ACTIVE: The pool is active and available for use.
--
-- -   DELETING: The pool is being deleted.
--
-- 'twoWayEnabled', 'deletePoolResponse_twoWayEnabled' - By default this is set to false. When set to true you can receive
-- incoming text messages from your end recipients.
--
-- 'optOutListName', 'deletePoolResponse_optOutListName' - The name of the OptOutList that was associated with the deleted pool.
--
-- 'poolId', 'deletePoolResponse_poolId' - The PoolId of the pool that was deleted.
--
-- 'twoWayChannelArn', 'deletePoolResponse_twoWayChannelArn' - The Amazon Resource Name (ARN) of the TwoWayChannel.
--
-- 'sharedRoutesEnabled', 'deletePoolResponse_sharedRoutesEnabled' - Indicates whether shared routes are enabled for the pool.
--
-- 'httpStatus', 'deletePoolResponse_httpStatus' - The response's http status code.
newDeletePoolResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePoolResponse
newDeletePoolResponse pHttpStatus_ =
  DeletePoolResponse'
    { poolArn = Prelude.Nothing,
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

-- | The Amazon Resource Name (ARN) of the pool that was deleted.
deletePoolResponse_poolArn :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Text)
deletePoolResponse_poolArn = Lens.lens (\DeletePoolResponse' {poolArn} -> poolArn) (\s@DeletePoolResponse' {} a -> s {poolArn = a} :: DeletePoolResponse)

-- | The message type that was associated with the deleted pool.
deletePoolResponse_messageType :: Lens.Lens' DeletePoolResponse (Prelude.Maybe MessageType)
deletePoolResponse_messageType = Lens.lens (\DeletePoolResponse' {messageType} -> messageType) (\s@DeletePoolResponse' {} a -> s {messageType = a} :: DeletePoolResponse)

-- | By default this is set to false. When an end recipient sends a message
-- that begins with HELP or STOP to one of your dedicated numbers, Amazon
-- Pinpoint automatically replies with a customizable message and adds the
-- end recipient to the OptOutList. When set to true you\'re responsible
-- for responding to HELP and STOP requests. You\'re also responsible for
-- tracking and honoring opt-out requests.
deletePoolResponse_selfManagedOptOutsEnabled :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Bool)
deletePoolResponse_selfManagedOptOutsEnabled = Lens.lens (\DeletePoolResponse' {selfManagedOptOutsEnabled} -> selfManagedOptOutsEnabled) (\s@DeletePoolResponse' {} a -> s {selfManagedOptOutsEnabled = a} :: DeletePoolResponse)

-- | The time when the pool was created, in
-- <https://www.epochconverter.com/ UNIX epoch time> format.
deletePoolResponse_createdTimestamp :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.UTCTime)
deletePoolResponse_createdTimestamp = Lens.lens (\DeletePoolResponse' {createdTimestamp} -> createdTimestamp) (\s@DeletePoolResponse' {} a -> s {createdTimestamp = a} :: DeletePoolResponse) Prelude.. Lens.mapping Core._Time

-- | The current status of the pool.
--
-- -   CREATING: The pool is currently being created and isn\'t yet
--     available for use.
--
-- -   ACTIVE: The pool is active and available for use.
--
-- -   DELETING: The pool is being deleted.
deletePoolResponse_status :: Lens.Lens' DeletePoolResponse (Prelude.Maybe PoolStatus)
deletePoolResponse_status = Lens.lens (\DeletePoolResponse' {status} -> status) (\s@DeletePoolResponse' {} a -> s {status = a} :: DeletePoolResponse)

-- | By default this is set to false. When set to true you can receive
-- incoming text messages from your end recipients.
deletePoolResponse_twoWayEnabled :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Bool)
deletePoolResponse_twoWayEnabled = Lens.lens (\DeletePoolResponse' {twoWayEnabled} -> twoWayEnabled) (\s@DeletePoolResponse' {} a -> s {twoWayEnabled = a} :: DeletePoolResponse)

-- | The name of the OptOutList that was associated with the deleted pool.
deletePoolResponse_optOutListName :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Text)
deletePoolResponse_optOutListName = Lens.lens (\DeletePoolResponse' {optOutListName} -> optOutListName) (\s@DeletePoolResponse' {} a -> s {optOutListName = a} :: DeletePoolResponse)

-- | The PoolId of the pool that was deleted.
deletePoolResponse_poolId :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Text)
deletePoolResponse_poolId = Lens.lens (\DeletePoolResponse' {poolId} -> poolId) (\s@DeletePoolResponse' {} a -> s {poolId = a} :: DeletePoolResponse)

-- | The Amazon Resource Name (ARN) of the TwoWayChannel.
deletePoolResponse_twoWayChannelArn :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Text)
deletePoolResponse_twoWayChannelArn = Lens.lens (\DeletePoolResponse' {twoWayChannelArn} -> twoWayChannelArn) (\s@DeletePoolResponse' {} a -> s {twoWayChannelArn = a} :: DeletePoolResponse)

-- | Indicates whether shared routes are enabled for the pool.
deletePoolResponse_sharedRoutesEnabled :: Lens.Lens' DeletePoolResponse (Prelude.Maybe Prelude.Bool)
deletePoolResponse_sharedRoutesEnabled = Lens.lens (\DeletePoolResponse' {sharedRoutesEnabled} -> sharedRoutesEnabled) (\s@DeletePoolResponse' {} a -> s {sharedRoutesEnabled = a} :: DeletePoolResponse)

-- | The response's http status code.
deletePoolResponse_httpStatus :: Lens.Lens' DeletePoolResponse Prelude.Int
deletePoolResponse_httpStatus = Lens.lens (\DeletePoolResponse' {httpStatus} -> httpStatus) (\s@DeletePoolResponse' {} a -> s {httpStatus = a} :: DeletePoolResponse)

instance Prelude.NFData DeletePoolResponse where
  rnf DeletePoolResponse' {..} =
    Prelude.rnf poolArn
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

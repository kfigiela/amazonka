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
-- Module      : Amazonka.IVSChat.GetRoom
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified room.
module Amazonka.IVSChat.GetRoom
  ( -- * Creating a Request
    GetRoom (..),
    newGetRoom,

    -- * Request Lenses
    getRoom_identifier,

    -- * Destructuring the Response
    GetRoomResponse (..),
    newGetRoomResponse,

    -- * Response Lenses
    getRoomResponse_tags,
    getRoomResponse_name,
    getRoomResponse_messageReviewHandler,
    getRoomResponse_arn,
    getRoomResponse_id,
    getRoomResponse_maximumMessageRatePerSecond,
    getRoomResponse_maximumMessageLength,
    getRoomResponse_updateTime,
    getRoomResponse_createTime,
    getRoomResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVSChat.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRoom' smart constructor.
data GetRoom = GetRoom'
  { -- | Identifier of the room for which the configuration is to be retrieved.
    -- Currently this must be an ARN.
    identifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRoom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identifier', 'getRoom_identifier' - Identifier of the room for which the configuration is to be retrieved.
-- Currently this must be an ARN.
newGetRoom ::
  -- | 'identifier'
  Prelude.Text ->
  GetRoom
newGetRoom pIdentifier_ =
  GetRoom' {identifier = pIdentifier_}

-- | Identifier of the room for which the configuration is to be retrieved.
-- Currently this must be an ARN.
getRoom_identifier :: Lens.Lens' GetRoom Prelude.Text
getRoom_identifier = Lens.lens (\GetRoom' {identifier} -> identifier) (\s@GetRoom' {} a -> s {identifier = a} :: GetRoom)

instance Core.AWSRequest GetRoom where
  type AWSResponse GetRoom = GetRoomResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRoomResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "messageReviewHandler")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "maximumMessageRatePerSecond")
            Prelude.<*> (x Core..?> "maximumMessageLength")
            Prelude.<*> (x Core..?> "updateTime")
            Prelude.<*> (x Core..?> "createTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRoom where
  hashWithSalt _salt GetRoom' {..} =
    _salt `Prelude.hashWithSalt` identifier

instance Prelude.NFData GetRoom where
  rnf GetRoom' {..} = Prelude.rnf identifier

instance Core.ToHeaders GetRoom where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRoom where
  toJSON GetRoom' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("identifier" Core..= identifier)]
      )

instance Core.ToPath GetRoom where
  toPath = Prelude.const "/GetRoom"

instance Core.ToQuery GetRoom where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRoomResponse' smart constructor.
data GetRoomResponse = GetRoomResponse'
  { -- | Tags attached to the resource. Array of maps, each of the form
    -- @string:string (key:value)@.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Room name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | Configuration information for optional review of messages.
    messageReviewHandler :: Prelude.Maybe MessageReviewHandler,
    -- | Room ARN, from the request (if @identifier@ was an ARN).
    arn :: Prelude.Maybe Prelude.Text,
    -- | Room ID, generated by the system. This is a relative identifier, the
    -- part of the ARN that uniquely identifies the room.
    id :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of messages per second that can be sent to the room (by
    -- all clients). Default: 10.
    maximumMessageRatePerSecond :: Prelude.Maybe Prelude.Natural,
    -- | Maximum number of characters in a single message. Messages are expected
    -- to be UTF-8 encoded and this limit applies specifically to
    -- rune\/code-point count, not number of bytes. Default: 500.
    maximumMessageLength :: Prelude.Maybe Prelude.Natural,
    -- | Time of the room’s last update. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/.
    updateTime :: Prelude.Maybe Core.POSIX,
    -- | Time when the room was created. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/.
    createTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRoomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getRoomResponse_tags' - Tags attached to the resource. Array of maps, each of the form
-- @string:string (key:value)@.
--
-- 'name', 'getRoomResponse_name' - Room name. The value does not need to be unique.
--
-- 'messageReviewHandler', 'getRoomResponse_messageReviewHandler' - Configuration information for optional review of messages.
--
-- 'arn', 'getRoomResponse_arn' - Room ARN, from the request (if @identifier@ was an ARN).
--
-- 'id', 'getRoomResponse_id' - Room ID, generated by the system. This is a relative identifier, the
-- part of the ARN that uniquely identifies the room.
--
-- 'maximumMessageRatePerSecond', 'getRoomResponse_maximumMessageRatePerSecond' - Maximum number of messages per second that can be sent to the room (by
-- all clients). Default: 10.
--
-- 'maximumMessageLength', 'getRoomResponse_maximumMessageLength' - Maximum number of characters in a single message. Messages are expected
-- to be UTF-8 encoded and this limit applies specifically to
-- rune\/code-point count, not number of bytes. Default: 500.
--
-- 'updateTime', 'getRoomResponse_updateTime' - Time of the room’s last update. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
--
-- 'createTime', 'getRoomResponse_createTime' - Time when the room was created. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
--
-- 'httpStatus', 'getRoomResponse_httpStatus' - The response's http status code.
newGetRoomResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRoomResponse
newGetRoomResponse pHttpStatus_ =
  GetRoomResponse'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      messageReviewHandler = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      maximumMessageRatePerSecond = Prelude.Nothing,
      maximumMessageLength = Prelude.Nothing,
      updateTime = Prelude.Nothing,
      createTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Tags attached to the resource. Array of maps, each of the form
-- @string:string (key:value)@.
getRoomResponse_tags :: Lens.Lens' GetRoomResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRoomResponse_tags = Lens.lens (\GetRoomResponse' {tags} -> tags) (\s@GetRoomResponse' {} a -> s {tags = a} :: GetRoomResponse) Prelude.. Lens.mapping Lens.coerced

-- | Room name. The value does not need to be unique.
getRoomResponse_name :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.Text)
getRoomResponse_name = Lens.lens (\GetRoomResponse' {name} -> name) (\s@GetRoomResponse' {} a -> s {name = a} :: GetRoomResponse)

-- | Configuration information for optional review of messages.
getRoomResponse_messageReviewHandler :: Lens.Lens' GetRoomResponse (Prelude.Maybe MessageReviewHandler)
getRoomResponse_messageReviewHandler = Lens.lens (\GetRoomResponse' {messageReviewHandler} -> messageReviewHandler) (\s@GetRoomResponse' {} a -> s {messageReviewHandler = a} :: GetRoomResponse)

-- | Room ARN, from the request (if @identifier@ was an ARN).
getRoomResponse_arn :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.Text)
getRoomResponse_arn = Lens.lens (\GetRoomResponse' {arn} -> arn) (\s@GetRoomResponse' {} a -> s {arn = a} :: GetRoomResponse)

-- | Room ID, generated by the system. This is a relative identifier, the
-- part of the ARN that uniquely identifies the room.
getRoomResponse_id :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.Text)
getRoomResponse_id = Lens.lens (\GetRoomResponse' {id} -> id) (\s@GetRoomResponse' {} a -> s {id = a} :: GetRoomResponse)

-- | Maximum number of messages per second that can be sent to the room (by
-- all clients). Default: 10.
getRoomResponse_maximumMessageRatePerSecond :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.Natural)
getRoomResponse_maximumMessageRatePerSecond = Lens.lens (\GetRoomResponse' {maximumMessageRatePerSecond} -> maximumMessageRatePerSecond) (\s@GetRoomResponse' {} a -> s {maximumMessageRatePerSecond = a} :: GetRoomResponse)

-- | Maximum number of characters in a single message. Messages are expected
-- to be UTF-8 encoded and this limit applies specifically to
-- rune\/code-point count, not number of bytes. Default: 500.
getRoomResponse_maximumMessageLength :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.Natural)
getRoomResponse_maximumMessageLength = Lens.lens (\GetRoomResponse' {maximumMessageLength} -> maximumMessageLength) (\s@GetRoomResponse' {} a -> s {maximumMessageLength = a} :: GetRoomResponse)

-- | Time of the room’s last update. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
getRoomResponse_updateTime :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.UTCTime)
getRoomResponse_updateTime = Lens.lens (\GetRoomResponse' {updateTime} -> updateTime) (\s@GetRoomResponse' {} a -> s {updateTime = a} :: GetRoomResponse) Prelude.. Lens.mapping Core._Time

-- | Time when the room was created. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
getRoomResponse_createTime :: Lens.Lens' GetRoomResponse (Prelude.Maybe Prelude.UTCTime)
getRoomResponse_createTime = Lens.lens (\GetRoomResponse' {createTime} -> createTime) (\s@GetRoomResponse' {} a -> s {createTime = a} :: GetRoomResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getRoomResponse_httpStatus :: Lens.Lens' GetRoomResponse Prelude.Int
getRoomResponse_httpStatus = Lens.lens (\GetRoomResponse' {httpStatus} -> httpStatus) (\s@GetRoomResponse' {} a -> s {httpStatus = a} :: GetRoomResponse)

instance Prelude.NFData GetRoomResponse where
  rnf GetRoomResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf messageReviewHandler
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf maximumMessageRatePerSecond
      `Prelude.seq` Prelude.rnf maximumMessageLength
      `Prelude.seq` Prelude.rnf updateTime
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf httpStatus

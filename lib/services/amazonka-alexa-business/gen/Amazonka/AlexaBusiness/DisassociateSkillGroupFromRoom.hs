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
-- Module      : Amazonka.AlexaBusiness.DisassociateSkillGroupFromRoom
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a skill group from a specified room. This disables all
-- skills in the skill group on all devices in the room.
module Amazonka.AlexaBusiness.DisassociateSkillGroupFromRoom
  ( -- * Creating a Request
    DisassociateSkillGroupFromRoom (..),
    newDisassociateSkillGroupFromRoom,

    -- * Request Lenses
    disassociateSkillGroupFromRoom_skillGroupArn,
    disassociateSkillGroupFromRoom_roomArn,

    -- * Destructuring the Response
    DisassociateSkillGroupFromRoomResponse (..),
    newDisassociateSkillGroupFromRoomResponse,

    -- * Response Lenses
    disassociateSkillGroupFromRoomResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisassociateSkillGroupFromRoom' smart constructor.
data DisassociateSkillGroupFromRoom = DisassociateSkillGroupFromRoom'
  { -- | The ARN of the skill group to disassociate from a room. Required.
    skillGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the room from which the skill group is to be disassociated.
    -- Required.
    roomArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateSkillGroupFromRoom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'skillGroupArn', 'disassociateSkillGroupFromRoom_skillGroupArn' - The ARN of the skill group to disassociate from a room. Required.
--
-- 'roomArn', 'disassociateSkillGroupFromRoom_roomArn' - The ARN of the room from which the skill group is to be disassociated.
-- Required.
newDisassociateSkillGroupFromRoom ::
  DisassociateSkillGroupFromRoom
newDisassociateSkillGroupFromRoom =
  DisassociateSkillGroupFromRoom'
    { skillGroupArn =
        Prelude.Nothing,
      roomArn = Prelude.Nothing
    }

-- | The ARN of the skill group to disassociate from a room. Required.
disassociateSkillGroupFromRoom_skillGroupArn :: Lens.Lens' DisassociateSkillGroupFromRoom (Prelude.Maybe Prelude.Text)
disassociateSkillGroupFromRoom_skillGroupArn = Lens.lens (\DisassociateSkillGroupFromRoom' {skillGroupArn} -> skillGroupArn) (\s@DisassociateSkillGroupFromRoom' {} a -> s {skillGroupArn = a} :: DisassociateSkillGroupFromRoom)

-- | The ARN of the room from which the skill group is to be disassociated.
-- Required.
disassociateSkillGroupFromRoom_roomArn :: Lens.Lens' DisassociateSkillGroupFromRoom (Prelude.Maybe Prelude.Text)
disassociateSkillGroupFromRoom_roomArn = Lens.lens (\DisassociateSkillGroupFromRoom' {roomArn} -> roomArn) (\s@DisassociateSkillGroupFromRoom' {} a -> s {roomArn = a} :: DisassociateSkillGroupFromRoom)

instance
  Core.AWSRequest
    DisassociateSkillGroupFromRoom
  where
  type
    AWSResponse DisassociateSkillGroupFromRoom =
      DisassociateSkillGroupFromRoomResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateSkillGroupFromRoomResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateSkillGroupFromRoom
  where
  hashWithSalt
    _salt
    DisassociateSkillGroupFromRoom' {..} =
      _salt `Prelude.hashWithSalt` skillGroupArn
        `Prelude.hashWithSalt` roomArn

instance
  Prelude.NFData
    DisassociateSkillGroupFromRoom
  where
  rnf DisassociateSkillGroupFromRoom' {..} =
    Prelude.rnf skillGroupArn
      `Prelude.seq` Prelude.rnf roomArn

instance
  Core.ToHeaders
    DisassociateSkillGroupFromRoom
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.DisassociateSkillGroupFromRoom" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateSkillGroupFromRoom where
  toJSON DisassociateSkillGroupFromRoom' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SkillGroupArn" Core..=) Prelude.<$> skillGroupArn,
            ("RoomArn" Core..=) Prelude.<$> roomArn
          ]
      )

instance Core.ToPath DisassociateSkillGroupFromRoom where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateSkillGroupFromRoom where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateSkillGroupFromRoomResponse' smart constructor.
data DisassociateSkillGroupFromRoomResponse = DisassociateSkillGroupFromRoomResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateSkillGroupFromRoomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateSkillGroupFromRoomResponse_httpStatus' - The response's http status code.
newDisassociateSkillGroupFromRoomResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateSkillGroupFromRoomResponse
newDisassociateSkillGroupFromRoomResponse
  pHttpStatus_ =
    DisassociateSkillGroupFromRoomResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateSkillGroupFromRoomResponse_httpStatus :: Lens.Lens' DisassociateSkillGroupFromRoomResponse Prelude.Int
disassociateSkillGroupFromRoomResponse_httpStatus = Lens.lens (\DisassociateSkillGroupFromRoomResponse' {httpStatus} -> httpStatus) (\s@DisassociateSkillGroupFromRoomResponse' {} a -> s {httpStatus = a} :: DisassociateSkillGroupFromRoomResponse)

instance
  Prelude.NFData
    DisassociateSkillGroupFromRoomResponse
  where
  rnf DisassociateSkillGroupFromRoomResponse' {..} =
    Prelude.rnf httpStatus

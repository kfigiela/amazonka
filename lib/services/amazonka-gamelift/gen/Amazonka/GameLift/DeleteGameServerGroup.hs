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
-- Module      : Amazonka.GameLift.DeleteGameServerGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __This operation is used with the GameLift FleetIQ solution and game
-- server groups.__
--
-- Terminates a game server group and permanently deletes the game server
-- group record. You have several options for how these resources are
-- impacted when deleting the game server group. Depending on the type of
-- delete operation selected, this operation might affect these resources:
--
-- -   The game server group
--
-- -   The corresponding Auto Scaling group
--
-- -   All game servers that are currently running in the group
--
-- To delete a game server group, identify the game server group to delete
-- and specify the type of delete operation to initiate. Game server groups
-- can only be deleted if they are in @ACTIVE@ or @ERROR@ status.
--
-- If the delete request is successful, a series of operations are kicked
-- off. The game server group status is changed to @DELETE_SCHEDULED@,
-- which prevents new game servers from being registered and stops
-- automatic scaling activity. Once all game servers in the game server
-- group are deregistered, GameLift FleetIQ can begin deleting resources.
-- If any of the delete operations fail, the game server group is placed in
-- @ERROR@ status.
--
-- GameLift FleetIQ emits delete events to Amazon CloudWatch.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html GameLift FleetIQ Guide>
--
-- __Related actions__
--
-- CreateGameServerGroup | ListGameServerGroups | DescribeGameServerGroup |
-- UpdateGameServerGroup | DeleteGameServerGroup | ResumeGameServerGroup |
-- SuspendGameServerGroup | DescribeGameServerInstances |
-- <https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html All APIs by task>
module Amazonka.GameLift.DeleteGameServerGroup
  ( -- * Creating a Request
    DeleteGameServerGroup (..),
    newDeleteGameServerGroup,

    -- * Request Lenses
    deleteGameServerGroup_deleteOption,
    deleteGameServerGroup_gameServerGroupName,

    -- * Destructuring the Response
    DeleteGameServerGroupResponse (..),
    newDeleteGameServerGroupResponse,

    -- * Response Lenses
    deleteGameServerGroupResponse_gameServerGroup,
    deleteGameServerGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GameLift.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteGameServerGroup' smart constructor.
data DeleteGameServerGroup = DeleteGameServerGroup'
  { -- | The type of delete to perform. Options include the following:
    --
    -- -   @SAFE_DELETE@ – (default) Terminates the game server group and
    --     Amazon EC2 Auto Scaling group only when it has no game servers that
    --     are in @UTILIZED@ status.
    --
    -- -   @FORCE_DELETE@ – Terminates the game server group, including all
    --     active game servers regardless of their utilization status, and the
    --     Amazon EC2 Auto Scaling group.
    --
    -- -   @RETAIN@ – Does a safe delete of the game server group but retains
    --     the Amazon EC2 Auto Scaling group as is.
    deleteOption :: Prelude.Maybe GameServerGroupDeleteOption,
    -- | A unique identifier for the game server group. Use either the
    -- GameServerGroup name or ARN value.
    gameServerGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGameServerGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deleteOption', 'deleteGameServerGroup_deleteOption' - The type of delete to perform. Options include the following:
--
-- -   @SAFE_DELETE@ – (default) Terminates the game server group and
--     Amazon EC2 Auto Scaling group only when it has no game servers that
--     are in @UTILIZED@ status.
--
-- -   @FORCE_DELETE@ – Terminates the game server group, including all
--     active game servers regardless of their utilization status, and the
--     Amazon EC2 Auto Scaling group.
--
-- -   @RETAIN@ – Does a safe delete of the game server group but retains
--     the Amazon EC2 Auto Scaling group as is.
--
-- 'gameServerGroupName', 'deleteGameServerGroup_gameServerGroupName' - A unique identifier for the game server group. Use either the
-- GameServerGroup name or ARN value.
newDeleteGameServerGroup ::
  -- | 'gameServerGroupName'
  Prelude.Text ->
  DeleteGameServerGroup
newDeleteGameServerGroup pGameServerGroupName_ =
  DeleteGameServerGroup'
    { deleteOption =
        Prelude.Nothing,
      gameServerGroupName = pGameServerGroupName_
    }

-- | The type of delete to perform. Options include the following:
--
-- -   @SAFE_DELETE@ – (default) Terminates the game server group and
--     Amazon EC2 Auto Scaling group only when it has no game servers that
--     are in @UTILIZED@ status.
--
-- -   @FORCE_DELETE@ – Terminates the game server group, including all
--     active game servers regardless of their utilization status, and the
--     Amazon EC2 Auto Scaling group.
--
-- -   @RETAIN@ – Does a safe delete of the game server group but retains
--     the Amazon EC2 Auto Scaling group as is.
deleteGameServerGroup_deleteOption :: Lens.Lens' DeleteGameServerGroup (Prelude.Maybe GameServerGroupDeleteOption)
deleteGameServerGroup_deleteOption = Lens.lens (\DeleteGameServerGroup' {deleteOption} -> deleteOption) (\s@DeleteGameServerGroup' {} a -> s {deleteOption = a} :: DeleteGameServerGroup)

-- | A unique identifier for the game server group. Use either the
-- GameServerGroup name or ARN value.
deleteGameServerGroup_gameServerGroupName :: Lens.Lens' DeleteGameServerGroup Prelude.Text
deleteGameServerGroup_gameServerGroupName = Lens.lens (\DeleteGameServerGroup' {gameServerGroupName} -> gameServerGroupName) (\s@DeleteGameServerGroup' {} a -> s {gameServerGroupName = a} :: DeleteGameServerGroup)

instance Core.AWSRequest DeleteGameServerGroup where
  type
    AWSResponse DeleteGameServerGroup =
      DeleteGameServerGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteGameServerGroupResponse'
            Prelude.<$> (x Core..?> "GameServerGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteGameServerGroup where
  hashWithSalt _salt DeleteGameServerGroup' {..} =
    _salt `Prelude.hashWithSalt` deleteOption
      `Prelude.hashWithSalt` gameServerGroupName

instance Prelude.NFData DeleteGameServerGroup where
  rnf DeleteGameServerGroup' {..} =
    Prelude.rnf deleteOption
      `Prelude.seq` Prelude.rnf gameServerGroupName

instance Core.ToHeaders DeleteGameServerGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GameLift.DeleteGameServerGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteGameServerGroup where
  toJSON DeleteGameServerGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeleteOption" Core..=) Prelude.<$> deleteOption,
            Prelude.Just
              ("GameServerGroupName" Core..= gameServerGroupName)
          ]
      )

instance Core.ToPath DeleteGameServerGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteGameServerGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteGameServerGroupResponse' smart constructor.
data DeleteGameServerGroupResponse = DeleteGameServerGroupResponse'
  { -- | An object that describes the deleted game server group resource, with
    -- status updated to @DELETE_SCHEDULED@.
    gameServerGroup :: Prelude.Maybe GameServerGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGameServerGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gameServerGroup', 'deleteGameServerGroupResponse_gameServerGroup' - An object that describes the deleted game server group resource, with
-- status updated to @DELETE_SCHEDULED@.
--
-- 'httpStatus', 'deleteGameServerGroupResponse_httpStatus' - The response's http status code.
newDeleteGameServerGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteGameServerGroupResponse
newDeleteGameServerGroupResponse pHttpStatus_ =
  DeleteGameServerGroupResponse'
    { gameServerGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An object that describes the deleted game server group resource, with
-- status updated to @DELETE_SCHEDULED@.
deleteGameServerGroupResponse_gameServerGroup :: Lens.Lens' DeleteGameServerGroupResponse (Prelude.Maybe GameServerGroup)
deleteGameServerGroupResponse_gameServerGroup = Lens.lens (\DeleteGameServerGroupResponse' {gameServerGroup} -> gameServerGroup) (\s@DeleteGameServerGroupResponse' {} a -> s {gameServerGroup = a} :: DeleteGameServerGroupResponse)

-- | The response's http status code.
deleteGameServerGroupResponse_httpStatus :: Lens.Lens' DeleteGameServerGroupResponse Prelude.Int
deleteGameServerGroupResponse_httpStatus = Lens.lens (\DeleteGameServerGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteGameServerGroupResponse' {} a -> s {httpStatus = a} :: DeleteGameServerGroupResponse)

instance Prelude.NFData DeleteGameServerGroupResponse where
  rnf DeleteGameServerGroupResponse' {..} =
    Prelude.rnf gameServerGroup
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.AutoScaling.DeleteAutoScalingGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Auto Scaling group.
--
-- If the group has instances or scaling activities in progress, you must
-- specify the option to force the deletion in order for it to succeed.
--
-- If the group has policies, deleting the group deletes the policies, the
-- underlying alarm actions, and any alarm that no longer has an associated
-- action.
--
-- To remove instances from the Auto Scaling group before deleting it, call
-- the DetachInstances API with the list of instances and the option to
-- decrement the desired capacity. This ensures that Amazon EC2 Auto
-- Scaling does not launch replacement instances.
--
-- To terminate all instances before deleting the Auto Scaling group, call
-- the UpdateAutoScalingGroup API and set the minimum size and desired
-- capacity of the Auto Scaling group to zero.
module Amazonka.AutoScaling.DeleteAutoScalingGroup
  ( -- * Creating a Request
    DeleteAutoScalingGroup (..),
    newDeleteAutoScalingGroup,

    -- * Request Lenses
    deleteAutoScalingGroup_forceDelete,
    deleteAutoScalingGroup_autoScalingGroupName,

    -- * Destructuring the Response
    DeleteAutoScalingGroupResponse (..),
    newDeleteAutoScalingGroupResponse,
  )
where

import Amazonka.AutoScaling.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteAutoScalingGroup' smart constructor.
data DeleteAutoScalingGroup = DeleteAutoScalingGroup'
  { -- | Specifies that the group is to be deleted along with all instances
    -- associated with the group, without waiting for all instances to be
    -- terminated. This action also deletes any outstanding lifecycle actions
    -- associated with the group.
    forceDelete :: Prelude.Maybe Prelude.Bool,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAutoScalingGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceDelete', 'deleteAutoScalingGroup_forceDelete' - Specifies that the group is to be deleted along with all instances
-- associated with the group, without waiting for all instances to be
-- terminated. This action also deletes any outstanding lifecycle actions
-- associated with the group.
--
-- 'autoScalingGroupName', 'deleteAutoScalingGroup_autoScalingGroupName' - The name of the Auto Scaling group.
newDeleteAutoScalingGroup ::
  -- | 'autoScalingGroupName'
  Prelude.Text ->
  DeleteAutoScalingGroup
newDeleteAutoScalingGroup pAutoScalingGroupName_ =
  DeleteAutoScalingGroup'
    { forceDelete =
        Prelude.Nothing,
      autoScalingGroupName = pAutoScalingGroupName_
    }

-- | Specifies that the group is to be deleted along with all instances
-- associated with the group, without waiting for all instances to be
-- terminated. This action also deletes any outstanding lifecycle actions
-- associated with the group.
deleteAutoScalingGroup_forceDelete :: Lens.Lens' DeleteAutoScalingGroup (Prelude.Maybe Prelude.Bool)
deleteAutoScalingGroup_forceDelete = Lens.lens (\DeleteAutoScalingGroup' {forceDelete} -> forceDelete) (\s@DeleteAutoScalingGroup' {} a -> s {forceDelete = a} :: DeleteAutoScalingGroup)

-- | The name of the Auto Scaling group.
deleteAutoScalingGroup_autoScalingGroupName :: Lens.Lens' DeleteAutoScalingGroup Prelude.Text
deleteAutoScalingGroup_autoScalingGroupName = Lens.lens (\DeleteAutoScalingGroup' {autoScalingGroupName} -> autoScalingGroupName) (\s@DeleteAutoScalingGroup' {} a -> s {autoScalingGroupName = a} :: DeleteAutoScalingGroup)

instance Core.AWSRequest DeleteAutoScalingGroup where
  type
    AWSResponse DeleteAutoScalingGroup =
      DeleteAutoScalingGroupResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveNull
      DeleteAutoScalingGroupResponse'

instance Prelude.Hashable DeleteAutoScalingGroup where
  hashWithSalt _salt DeleteAutoScalingGroup' {..} =
    _salt `Prelude.hashWithSalt` forceDelete
      `Prelude.hashWithSalt` autoScalingGroupName

instance Prelude.NFData DeleteAutoScalingGroup where
  rnf DeleteAutoScalingGroup' {..} =
    Prelude.rnf forceDelete
      `Prelude.seq` Prelude.rnf autoScalingGroupName

instance Core.ToHeaders DeleteAutoScalingGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteAutoScalingGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteAutoScalingGroup where
  toQuery DeleteAutoScalingGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteAutoScalingGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "ForceDelete" Core.=: forceDelete,
        "AutoScalingGroupName" Core.=: autoScalingGroupName
      ]

-- | /See:/ 'newDeleteAutoScalingGroupResponse' smart constructor.
data DeleteAutoScalingGroupResponse = DeleteAutoScalingGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAutoScalingGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAutoScalingGroupResponse ::
  DeleteAutoScalingGroupResponse
newDeleteAutoScalingGroupResponse =
  DeleteAutoScalingGroupResponse'

instance
  Prelude.NFData
    DeleteAutoScalingGroupResponse
  where
  rnf _ = ()

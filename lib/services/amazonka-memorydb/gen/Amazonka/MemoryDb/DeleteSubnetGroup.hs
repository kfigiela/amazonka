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
-- Module      : Amazonka.MemoryDb.DeleteSubnetGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subnet group. You cannot delete a default subnet group or one
-- that is associated with any clusters.
module Amazonka.MemoryDb.DeleteSubnetGroup
  ( -- * Creating a Request
    DeleteSubnetGroup (..),
    newDeleteSubnetGroup,

    -- * Request Lenses
    deleteSubnetGroup_subnetGroupName,

    -- * Destructuring the Response
    DeleteSubnetGroupResponse (..),
    newDeleteSubnetGroupResponse,

    -- * Response Lenses
    deleteSubnetGroupResponse_subnetGroup,
    deleteSubnetGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MemoryDb.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteSubnetGroup' smart constructor.
data DeleteSubnetGroup = DeleteSubnetGroup'
  { -- | The name of the subnet group to delete
    subnetGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetGroupName', 'deleteSubnetGroup_subnetGroupName' - The name of the subnet group to delete
newDeleteSubnetGroup ::
  -- | 'subnetGroupName'
  Prelude.Text ->
  DeleteSubnetGroup
newDeleteSubnetGroup pSubnetGroupName_ =
  DeleteSubnetGroup'
    { subnetGroupName =
        pSubnetGroupName_
    }

-- | The name of the subnet group to delete
deleteSubnetGroup_subnetGroupName :: Lens.Lens' DeleteSubnetGroup Prelude.Text
deleteSubnetGroup_subnetGroupName = Lens.lens (\DeleteSubnetGroup' {subnetGroupName} -> subnetGroupName) (\s@DeleteSubnetGroup' {} a -> s {subnetGroupName = a} :: DeleteSubnetGroup)

instance Core.AWSRequest DeleteSubnetGroup where
  type
    AWSResponse DeleteSubnetGroup =
      DeleteSubnetGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteSubnetGroupResponse'
            Prelude.<$> (x Core..?> "SubnetGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSubnetGroup where
  hashWithSalt _salt DeleteSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` subnetGroupName

instance Prelude.NFData DeleteSubnetGroup where
  rnf DeleteSubnetGroup' {..} =
    Prelude.rnf subnetGroupName

instance Core.ToHeaders DeleteSubnetGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonMemoryDB.DeleteSubnetGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteSubnetGroup where
  toJSON DeleteSubnetGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("SubnetGroupName" Core..= subnetGroupName)
          ]
      )

instance Core.ToPath DeleteSubnetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSubnetGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSubnetGroupResponse' smart constructor.
data DeleteSubnetGroupResponse = DeleteSubnetGroupResponse'
  { -- | The subnet group object that has been deleted.
    subnetGroup :: Prelude.Maybe SubnetGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetGroup', 'deleteSubnetGroupResponse_subnetGroup' - The subnet group object that has been deleted.
--
-- 'httpStatus', 'deleteSubnetGroupResponse_httpStatus' - The response's http status code.
newDeleteSubnetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSubnetGroupResponse
newDeleteSubnetGroupResponse pHttpStatus_ =
  DeleteSubnetGroupResponse'
    { subnetGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The subnet group object that has been deleted.
deleteSubnetGroupResponse_subnetGroup :: Lens.Lens' DeleteSubnetGroupResponse (Prelude.Maybe SubnetGroup)
deleteSubnetGroupResponse_subnetGroup = Lens.lens (\DeleteSubnetGroupResponse' {subnetGroup} -> subnetGroup) (\s@DeleteSubnetGroupResponse' {} a -> s {subnetGroup = a} :: DeleteSubnetGroupResponse)

-- | The response's http status code.
deleteSubnetGroupResponse_httpStatus :: Lens.Lens' DeleteSubnetGroupResponse Prelude.Int
deleteSubnetGroupResponse_httpStatus = Lens.lens (\DeleteSubnetGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteSubnetGroupResponse' {} a -> s {httpStatus = a} :: DeleteSubnetGroupResponse)

instance Prelude.NFData DeleteSubnetGroupResponse where
  rnf DeleteSubnetGroupResponse' {..} =
    Prelude.rnf subnetGroup
      `Prelude.seq` Prelude.rnf httpStatus

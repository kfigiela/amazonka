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
-- Module      : Amazonka.FinSpaceData.UpdatePermissionGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the details of a permission group. You cannot modify a
-- @permissionGroupID@.
module Amazonka.FinSpaceData.UpdatePermissionGroup
  ( -- * Creating a Request
    UpdatePermissionGroup (..),
    newUpdatePermissionGroup,

    -- * Request Lenses
    updatePermissionGroup_name,
    updatePermissionGroup_clientToken,
    updatePermissionGroup_description,
    updatePermissionGroup_applicationPermissions,
    updatePermissionGroup_permissionGroupId,

    -- * Destructuring the Response
    UpdatePermissionGroupResponse (..),
    newUpdatePermissionGroupResponse,

    -- * Response Lenses
    updatePermissionGroupResponse_permissionGroupId,
    updatePermissionGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdatePermissionGroup' smart constructor.
data UpdatePermissionGroup = UpdatePermissionGroup'
  { -- | The name of the permission group.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A token that ensures idempotency. This token expires in 10 minutes.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A brief description for the permission group.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The permissions that are granted to a specific group for accessing the
    -- FinSpace application.
    --
    -- When assigning application permissions, be aware that the permission
    -- @ManageUsersAndGroups@ allows users to grant themselves or others access
    -- to any functionality in their FinSpace environment\'s application. It
    -- should only be granted to trusted users.
    --
    -- -   @CreateDataset@ – Group members can create new datasets.
    --
    -- -   @ManageClusters@ – Group members can manage Apache Spark clusters
    --     from FinSpace notebooks.
    --
    -- -   @ManageUsersAndGroups@ – Group members can manage users and
    --     permission groups. This is a privileged permission that allows users
    --     to grant themselves or others access to any functionality in the
    --     application. It should only be granted to trusted users.
    --
    -- -   @ManageAttributeSets@ – Group members can manage attribute sets.
    --
    -- -   @ViewAuditData@ – Group members can view audit data.
    --
    -- -   @AccessNotebooks@ – Group members will have access to FinSpace
    --     notebooks.
    --
    -- -   @GetTemporaryCredentials@ – Group members can get temporary API
    --     credentials.
    applicationPermissions :: Prelude.Maybe [ApplicationPermission],
    -- | The unique identifier for the permission group to update.
    permissionGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePermissionGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updatePermissionGroup_name' - The name of the permission group.
--
-- 'clientToken', 'updatePermissionGroup_clientToken' - A token that ensures idempotency. This token expires in 10 minutes.
--
-- 'description', 'updatePermissionGroup_description' - A brief description for the permission group.
--
-- 'applicationPermissions', 'updatePermissionGroup_applicationPermissions' - The permissions that are granted to a specific group for accessing the
-- FinSpace application.
--
-- When assigning application permissions, be aware that the permission
-- @ManageUsersAndGroups@ allows users to grant themselves or others access
-- to any functionality in their FinSpace environment\'s application. It
-- should only be granted to trusted users.
--
-- -   @CreateDataset@ – Group members can create new datasets.
--
-- -   @ManageClusters@ – Group members can manage Apache Spark clusters
--     from FinSpace notebooks.
--
-- -   @ManageUsersAndGroups@ – Group members can manage users and
--     permission groups. This is a privileged permission that allows users
--     to grant themselves or others access to any functionality in the
--     application. It should only be granted to trusted users.
--
-- -   @ManageAttributeSets@ – Group members can manage attribute sets.
--
-- -   @ViewAuditData@ – Group members can view audit data.
--
-- -   @AccessNotebooks@ – Group members will have access to FinSpace
--     notebooks.
--
-- -   @GetTemporaryCredentials@ – Group members can get temporary API
--     credentials.
--
-- 'permissionGroupId', 'updatePermissionGroup_permissionGroupId' - The unique identifier for the permission group to update.
newUpdatePermissionGroup ::
  -- | 'permissionGroupId'
  Prelude.Text ->
  UpdatePermissionGroup
newUpdatePermissionGroup pPermissionGroupId_ =
  UpdatePermissionGroup'
    { name = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      description = Prelude.Nothing,
      applicationPermissions = Prelude.Nothing,
      permissionGroupId = pPermissionGroupId_
    }

-- | The name of the permission group.
updatePermissionGroup_name :: Lens.Lens' UpdatePermissionGroup (Prelude.Maybe Prelude.Text)
updatePermissionGroup_name = Lens.lens (\UpdatePermissionGroup' {name} -> name) (\s@UpdatePermissionGroup' {} a -> s {name = a} :: UpdatePermissionGroup) Prelude.. Lens.mapping Core._Sensitive

-- | A token that ensures idempotency. This token expires in 10 minutes.
updatePermissionGroup_clientToken :: Lens.Lens' UpdatePermissionGroup (Prelude.Maybe Prelude.Text)
updatePermissionGroup_clientToken = Lens.lens (\UpdatePermissionGroup' {clientToken} -> clientToken) (\s@UpdatePermissionGroup' {} a -> s {clientToken = a} :: UpdatePermissionGroup)

-- | A brief description for the permission group.
updatePermissionGroup_description :: Lens.Lens' UpdatePermissionGroup (Prelude.Maybe Prelude.Text)
updatePermissionGroup_description = Lens.lens (\UpdatePermissionGroup' {description} -> description) (\s@UpdatePermissionGroup' {} a -> s {description = a} :: UpdatePermissionGroup) Prelude.. Lens.mapping Core._Sensitive

-- | The permissions that are granted to a specific group for accessing the
-- FinSpace application.
--
-- When assigning application permissions, be aware that the permission
-- @ManageUsersAndGroups@ allows users to grant themselves or others access
-- to any functionality in their FinSpace environment\'s application. It
-- should only be granted to trusted users.
--
-- -   @CreateDataset@ – Group members can create new datasets.
--
-- -   @ManageClusters@ – Group members can manage Apache Spark clusters
--     from FinSpace notebooks.
--
-- -   @ManageUsersAndGroups@ – Group members can manage users and
--     permission groups. This is a privileged permission that allows users
--     to grant themselves or others access to any functionality in the
--     application. It should only be granted to trusted users.
--
-- -   @ManageAttributeSets@ – Group members can manage attribute sets.
--
-- -   @ViewAuditData@ – Group members can view audit data.
--
-- -   @AccessNotebooks@ – Group members will have access to FinSpace
--     notebooks.
--
-- -   @GetTemporaryCredentials@ – Group members can get temporary API
--     credentials.
updatePermissionGroup_applicationPermissions :: Lens.Lens' UpdatePermissionGroup (Prelude.Maybe [ApplicationPermission])
updatePermissionGroup_applicationPermissions = Lens.lens (\UpdatePermissionGroup' {applicationPermissions} -> applicationPermissions) (\s@UpdatePermissionGroup' {} a -> s {applicationPermissions = a} :: UpdatePermissionGroup) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for the permission group to update.
updatePermissionGroup_permissionGroupId :: Lens.Lens' UpdatePermissionGroup Prelude.Text
updatePermissionGroup_permissionGroupId = Lens.lens (\UpdatePermissionGroup' {permissionGroupId} -> permissionGroupId) (\s@UpdatePermissionGroup' {} a -> s {permissionGroupId = a} :: UpdatePermissionGroup)

instance Core.AWSRequest UpdatePermissionGroup where
  type
    AWSResponse UpdatePermissionGroup =
      UpdatePermissionGroupResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePermissionGroupResponse'
            Prelude.<$> (x Core..?> "permissionGroupId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePermissionGroup where
  hashWithSalt _salt UpdatePermissionGroup' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` applicationPermissions
      `Prelude.hashWithSalt` permissionGroupId

instance Prelude.NFData UpdatePermissionGroup where
  rnf UpdatePermissionGroup' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf applicationPermissions
      `Prelude.seq` Prelude.rnf permissionGroupId

instance Core.ToHeaders UpdatePermissionGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePermissionGroup where
  toJSON UpdatePermissionGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            ("description" Core..=) Prelude.<$> description,
            ("applicationPermissions" Core..=)
              Prelude.<$> applicationPermissions
          ]
      )

instance Core.ToPath UpdatePermissionGroup where
  toPath UpdatePermissionGroup' {..} =
    Prelude.mconcat
      ["/permission-group/", Core.toBS permissionGroupId]

instance Core.ToQuery UpdatePermissionGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePermissionGroupResponse' smart constructor.
data UpdatePermissionGroupResponse = UpdatePermissionGroupResponse'
  { -- | The unique identifier for the updated permission group.
    permissionGroupId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePermissionGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionGroupId', 'updatePermissionGroupResponse_permissionGroupId' - The unique identifier for the updated permission group.
--
-- 'httpStatus', 'updatePermissionGroupResponse_httpStatus' - The response's http status code.
newUpdatePermissionGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePermissionGroupResponse
newUpdatePermissionGroupResponse pHttpStatus_ =
  UpdatePermissionGroupResponse'
    { permissionGroupId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier for the updated permission group.
updatePermissionGroupResponse_permissionGroupId :: Lens.Lens' UpdatePermissionGroupResponse (Prelude.Maybe Prelude.Text)
updatePermissionGroupResponse_permissionGroupId = Lens.lens (\UpdatePermissionGroupResponse' {permissionGroupId} -> permissionGroupId) (\s@UpdatePermissionGroupResponse' {} a -> s {permissionGroupId = a} :: UpdatePermissionGroupResponse)

-- | The response's http status code.
updatePermissionGroupResponse_httpStatus :: Lens.Lens' UpdatePermissionGroupResponse Prelude.Int
updatePermissionGroupResponse_httpStatus = Lens.lens (\UpdatePermissionGroupResponse' {httpStatus} -> httpStatus) (\s@UpdatePermissionGroupResponse' {} a -> s {httpStatus = a} :: UpdatePermissionGroupResponse)

instance Prelude.NFData UpdatePermissionGroupResponse where
  rnf UpdatePermissionGroupResponse' {..} =
    Prelude.rnf permissionGroupId
      `Prelude.seq` Prelude.rnf httpStatus

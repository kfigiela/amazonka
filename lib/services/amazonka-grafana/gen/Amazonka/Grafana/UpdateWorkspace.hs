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
-- Module      : Amazonka.Grafana.UpdateWorkspace
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing Amazon Managed Grafana workspace. If you use this
-- operation and omit any optional parameters, the existing values of those
-- parameters are not changed.
--
-- To modify the user authentication methods that the workspace uses, such
-- as SAML or Amazon Web Services SSO, use
-- <https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html UpdateWorkspaceAuthentication>.
--
-- To modify which users in the workspace have the @Admin@ and @Editor@
-- Grafana roles, use
-- <https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html UpdatePermissions>.
module Amazonka.Grafana.UpdateWorkspace
  ( -- * Creating a Request
    UpdateWorkspace (..),
    newUpdateWorkspace,

    -- * Request Lenses
    updateWorkspace_permissionType,
    updateWorkspace_organizationRoleName,
    updateWorkspace_workspaceOrganizationalUnits,
    updateWorkspace_stackSetName,
    updateWorkspace_workspaceRoleArn,
    updateWorkspace_workspaceNotificationDestinations,
    updateWorkspace_workspaceDataSources,
    updateWorkspace_workspaceName,
    updateWorkspace_accountAccessType,
    updateWorkspace_workspaceDescription,
    updateWorkspace_workspaceId,

    -- * Destructuring the Response
    UpdateWorkspaceResponse (..),
    newUpdateWorkspaceResponse,

    -- * Response Lenses
    updateWorkspaceResponse_httpStatus,
    updateWorkspaceResponse_workspace,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Grafana.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateWorkspace' smart constructor.
data UpdateWorkspace = UpdateWorkspace'
  { -- | If you specify @Service Managed@, Amazon Managed Grafana automatically
    -- creates the IAM roles and provisions the permissions that the workspace
    -- needs to use Amazon Web Services data sources and notification channels.
    --
    -- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
    -- permissions yourself. If you are creating this workspace in a member
    -- account of an organization and that account is not a delegated
    -- administrator account, and you want the workspace to access data sources
    -- in other Amazon Web Services accounts in the organization, you must
    -- choose @CUSTOMER_MANAGED@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>
    permissionType :: Prelude.Maybe PermissionType,
    -- | The name of an IAM role that already exists to use to access resources
    -- through Organizations.
    organizationRoleName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specifies the organizational units that this workspace is allowed to use
    -- data sources from, if this workspace is in an account that is part of an
    -- organization.
    workspaceOrganizationalUnits :: Prelude.Maybe (Core.Sensitive [Prelude.Text]),
    -- | The name of the CloudFormation stack set to use to generate IAM roles to
    -- be used for this workspace.
    stackSetName :: Prelude.Maybe Prelude.Text,
    -- | The workspace needs an IAM role that grants permissions to the Amazon
    -- Web Services resources that the workspace will view data from. If you
    -- already have a role that you want to use, specify it here. If you omit
    -- this field and you specify some Amazon Web Services resources in
    -- @workspaceDataSources@ or @workspaceNotificationDestinations@, a new IAM
    -- role with the necessary permissions is automatically created.
    workspaceRoleArn :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specify the Amazon Web Services notification channels that you plan to
    -- use in this workspace. Specifying these data sources here enables Amazon
    -- Managed Grafana to create IAM roles and permissions that allow Amazon
    -- Managed Grafana to use these channels.
    workspaceNotificationDestinations :: Prelude.Maybe [NotificationDestinationType],
    -- | Specify the Amazon Web Services data sources that you want to be queried
    -- in this workspace. Specifying these data sources here enables Amazon
    -- Managed Grafana to create IAM roles and permissions that allow Amazon
    -- Managed Grafana to read data from these sources. You must still add them
    -- as data sources in the Grafana console in the workspace.
    --
    -- If you don\'t specify a data source here, you can still add it as a data
    -- source later in the workspace console. However, you will then have to
    -- manually configure permissions for it.
    workspaceDataSources :: Prelude.Maybe [DataSourceType],
    -- | A new name for the workspace to update.
    workspaceName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specifies whether the workspace can access Amazon Web Services resources
    -- in this Amazon Web Services account only, or whether it can also access
    -- Amazon Web Services resources in other accounts in the same
    -- organization. If you specify @ORGANIZATION@, you must specify which
    -- organizational units the workspace can access in the
    -- @workspaceOrganizationalUnits@ parameter.
    accountAccessType :: Prelude.Maybe AccountAccessType,
    -- | A description for the workspace. This is used only to help you identify
    -- this workspace.
    workspaceDescription :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ID of the workspace to update.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkspace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionType', 'updateWorkspace_permissionType' - If you specify @Service Managed@, Amazon Managed Grafana automatically
-- creates the IAM roles and provisions the permissions that the workspace
-- needs to use Amazon Web Services data sources and notification channels.
--
-- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
-- permissions yourself. If you are creating this workspace in a member
-- account of an organization and that account is not a delegated
-- administrator account, and you want the workspace to access data sources
-- in other Amazon Web Services accounts in the organization, you must
-- choose @CUSTOMER_MANAGED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>
--
-- 'organizationRoleName', 'updateWorkspace_organizationRoleName' - The name of an IAM role that already exists to use to access resources
-- through Organizations.
--
-- 'workspaceOrganizationalUnits', 'updateWorkspace_workspaceOrganizationalUnits' - Specifies the organizational units that this workspace is allowed to use
-- data sources from, if this workspace is in an account that is part of an
-- organization.
--
-- 'stackSetName', 'updateWorkspace_stackSetName' - The name of the CloudFormation stack set to use to generate IAM roles to
-- be used for this workspace.
--
-- 'workspaceRoleArn', 'updateWorkspace_workspaceRoleArn' - The workspace needs an IAM role that grants permissions to the Amazon
-- Web Services resources that the workspace will view data from. If you
-- already have a role that you want to use, specify it here. If you omit
-- this field and you specify some Amazon Web Services resources in
-- @workspaceDataSources@ or @workspaceNotificationDestinations@, a new IAM
-- role with the necessary permissions is automatically created.
--
-- 'workspaceNotificationDestinations', 'updateWorkspace_workspaceNotificationDestinations' - Specify the Amazon Web Services notification channels that you plan to
-- use in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to use these channels.
--
-- 'workspaceDataSources', 'updateWorkspace_workspaceDataSources' - Specify the Amazon Web Services data sources that you want to be queried
-- in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to read data from these sources. You must still add them
-- as data sources in the Grafana console in the workspace.
--
-- If you don\'t specify a data source here, you can still add it as a data
-- source later in the workspace console. However, you will then have to
-- manually configure permissions for it.
--
-- 'workspaceName', 'updateWorkspace_workspaceName' - A new name for the workspace to update.
--
-- 'accountAccessType', 'updateWorkspace_accountAccessType' - Specifies whether the workspace can access Amazon Web Services resources
-- in this Amazon Web Services account only, or whether it can also access
-- Amazon Web Services resources in other accounts in the same
-- organization. If you specify @ORGANIZATION@, you must specify which
-- organizational units the workspace can access in the
-- @workspaceOrganizationalUnits@ parameter.
--
-- 'workspaceDescription', 'updateWorkspace_workspaceDescription' - A description for the workspace. This is used only to help you identify
-- this workspace.
--
-- 'workspaceId', 'updateWorkspace_workspaceId' - The ID of the workspace to update.
newUpdateWorkspace ::
  -- | 'workspaceId'
  Prelude.Text ->
  UpdateWorkspace
newUpdateWorkspace pWorkspaceId_ =
  UpdateWorkspace'
    { permissionType = Prelude.Nothing,
      organizationRoleName = Prelude.Nothing,
      workspaceOrganizationalUnits = Prelude.Nothing,
      stackSetName = Prelude.Nothing,
      workspaceRoleArn = Prelude.Nothing,
      workspaceNotificationDestinations = Prelude.Nothing,
      workspaceDataSources = Prelude.Nothing,
      workspaceName = Prelude.Nothing,
      accountAccessType = Prelude.Nothing,
      workspaceDescription = Prelude.Nothing,
      workspaceId = pWorkspaceId_
    }

-- | If you specify @Service Managed@, Amazon Managed Grafana automatically
-- creates the IAM roles and provisions the permissions that the workspace
-- needs to use Amazon Web Services data sources and notification channels.
--
-- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
-- permissions yourself. If you are creating this workspace in a member
-- account of an organization and that account is not a delegated
-- administrator account, and you want the workspace to access data sources
-- in other Amazon Web Services accounts in the organization, you must
-- choose @CUSTOMER_MANAGED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>
updateWorkspace_permissionType :: Lens.Lens' UpdateWorkspace (Prelude.Maybe PermissionType)
updateWorkspace_permissionType = Lens.lens (\UpdateWorkspace' {permissionType} -> permissionType) (\s@UpdateWorkspace' {} a -> s {permissionType = a} :: UpdateWorkspace)

-- | The name of an IAM role that already exists to use to access resources
-- through Organizations.
updateWorkspace_organizationRoleName :: Lens.Lens' UpdateWorkspace (Prelude.Maybe Prelude.Text)
updateWorkspace_organizationRoleName = Lens.lens (\UpdateWorkspace' {organizationRoleName} -> organizationRoleName) (\s@UpdateWorkspace' {} a -> s {organizationRoleName = a} :: UpdateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies the organizational units that this workspace is allowed to use
-- data sources from, if this workspace is in an account that is part of an
-- organization.
updateWorkspace_workspaceOrganizationalUnits :: Lens.Lens' UpdateWorkspace (Prelude.Maybe [Prelude.Text])
updateWorkspace_workspaceOrganizationalUnits = Lens.lens (\UpdateWorkspace' {workspaceOrganizationalUnits} -> workspaceOrganizationalUnits) (\s@UpdateWorkspace' {} a -> s {workspaceOrganizationalUnits = a} :: UpdateWorkspace) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The name of the CloudFormation stack set to use to generate IAM roles to
-- be used for this workspace.
updateWorkspace_stackSetName :: Lens.Lens' UpdateWorkspace (Prelude.Maybe Prelude.Text)
updateWorkspace_stackSetName = Lens.lens (\UpdateWorkspace' {stackSetName} -> stackSetName) (\s@UpdateWorkspace' {} a -> s {stackSetName = a} :: UpdateWorkspace)

-- | The workspace needs an IAM role that grants permissions to the Amazon
-- Web Services resources that the workspace will view data from. If you
-- already have a role that you want to use, specify it here. If you omit
-- this field and you specify some Amazon Web Services resources in
-- @workspaceDataSources@ or @workspaceNotificationDestinations@, a new IAM
-- role with the necessary permissions is automatically created.
updateWorkspace_workspaceRoleArn :: Lens.Lens' UpdateWorkspace (Prelude.Maybe Prelude.Text)
updateWorkspace_workspaceRoleArn = Lens.lens (\UpdateWorkspace' {workspaceRoleArn} -> workspaceRoleArn) (\s@UpdateWorkspace' {} a -> s {workspaceRoleArn = a} :: UpdateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specify the Amazon Web Services notification channels that you plan to
-- use in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to use these channels.
updateWorkspace_workspaceNotificationDestinations :: Lens.Lens' UpdateWorkspace (Prelude.Maybe [NotificationDestinationType])
updateWorkspace_workspaceNotificationDestinations = Lens.lens (\UpdateWorkspace' {workspaceNotificationDestinations} -> workspaceNotificationDestinations) (\s@UpdateWorkspace' {} a -> s {workspaceNotificationDestinations = a} :: UpdateWorkspace) Prelude.. Lens.mapping Lens.coerced

-- | Specify the Amazon Web Services data sources that you want to be queried
-- in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to read data from these sources. You must still add them
-- as data sources in the Grafana console in the workspace.
--
-- If you don\'t specify a data source here, you can still add it as a data
-- source later in the workspace console. However, you will then have to
-- manually configure permissions for it.
updateWorkspace_workspaceDataSources :: Lens.Lens' UpdateWorkspace (Prelude.Maybe [DataSourceType])
updateWorkspace_workspaceDataSources = Lens.lens (\UpdateWorkspace' {workspaceDataSources} -> workspaceDataSources) (\s@UpdateWorkspace' {} a -> s {workspaceDataSources = a} :: UpdateWorkspace) Prelude.. Lens.mapping Lens.coerced

-- | A new name for the workspace to update.
updateWorkspace_workspaceName :: Lens.Lens' UpdateWorkspace (Prelude.Maybe Prelude.Text)
updateWorkspace_workspaceName = Lens.lens (\UpdateWorkspace' {workspaceName} -> workspaceName) (\s@UpdateWorkspace' {} a -> s {workspaceName = a} :: UpdateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies whether the workspace can access Amazon Web Services resources
-- in this Amazon Web Services account only, or whether it can also access
-- Amazon Web Services resources in other accounts in the same
-- organization. If you specify @ORGANIZATION@, you must specify which
-- organizational units the workspace can access in the
-- @workspaceOrganizationalUnits@ parameter.
updateWorkspace_accountAccessType :: Lens.Lens' UpdateWorkspace (Prelude.Maybe AccountAccessType)
updateWorkspace_accountAccessType = Lens.lens (\UpdateWorkspace' {accountAccessType} -> accountAccessType) (\s@UpdateWorkspace' {} a -> s {accountAccessType = a} :: UpdateWorkspace)

-- | A description for the workspace. This is used only to help you identify
-- this workspace.
updateWorkspace_workspaceDescription :: Lens.Lens' UpdateWorkspace (Prelude.Maybe Prelude.Text)
updateWorkspace_workspaceDescription = Lens.lens (\UpdateWorkspace' {workspaceDescription} -> workspaceDescription) (\s@UpdateWorkspace' {} a -> s {workspaceDescription = a} :: UpdateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | The ID of the workspace to update.
updateWorkspace_workspaceId :: Lens.Lens' UpdateWorkspace Prelude.Text
updateWorkspace_workspaceId = Lens.lens (\UpdateWorkspace' {workspaceId} -> workspaceId) (\s@UpdateWorkspace' {} a -> s {workspaceId = a} :: UpdateWorkspace)

instance Core.AWSRequest UpdateWorkspace where
  type
    AWSResponse UpdateWorkspace =
      UpdateWorkspaceResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorkspaceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "workspace")
      )

instance Prelude.Hashable UpdateWorkspace where
  hashWithSalt _salt UpdateWorkspace' {..} =
    _salt `Prelude.hashWithSalt` permissionType
      `Prelude.hashWithSalt` organizationRoleName
      `Prelude.hashWithSalt` workspaceOrganizationalUnits
      `Prelude.hashWithSalt` stackSetName
      `Prelude.hashWithSalt` workspaceRoleArn
      `Prelude.hashWithSalt` workspaceNotificationDestinations
      `Prelude.hashWithSalt` workspaceDataSources
      `Prelude.hashWithSalt` workspaceName
      `Prelude.hashWithSalt` accountAccessType
      `Prelude.hashWithSalt` workspaceDescription
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData UpdateWorkspace where
  rnf UpdateWorkspace' {..} =
    Prelude.rnf permissionType
      `Prelude.seq` Prelude.rnf organizationRoleName
      `Prelude.seq` Prelude.rnf workspaceOrganizationalUnits
      `Prelude.seq` Prelude.rnf stackSetName
      `Prelude.seq` Prelude.rnf workspaceRoleArn
      `Prelude.seq` Prelude.rnf workspaceNotificationDestinations
      `Prelude.seq` Prelude.rnf workspaceDataSources
      `Prelude.seq` Prelude.rnf workspaceName
      `Prelude.seq` Prelude.rnf accountAccessType
      `Prelude.seq` Prelude.rnf workspaceDescription
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders UpdateWorkspace where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorkspace where
  toJSON UpdateWorkspace' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("permissionType" Core..=)
              Prelude.<$> permissionType,
            ("organizationRoleName" Core..=)
              Prelude.<$> organizationRoleName,
            ("workspaceOrganizationalUnits" Core..=)
              Prelude.<$> workspaceOrganizationalUnits,
            ("stackSetName" Core..=) Prelude.<$> stackSetName,
            ("workspaceRoleArn" Core..=)
              Prelude.<$> workspaceRoleArn,
            ("workspaceNotificationDestinations" Core..=)
              Prelude.<$> workspaceNotificationDestinations,
            ("workspaceDataSources" Core..=)
              Prelude.<$> workspaceDataSources,
            ("workspaceName" Core..=) Prelude.<$> workspaceName,
            ("accountAccessType" Core..=)
              Prelude.<$> accountAccessType,
            ("workspaceDescription" Core..=)
              Prelude.<$> workspaceDescription
          ]
      )

instance Core.ToPath UpdateWorkspace where
  toPath UpdateWorkspace' {..} =
    Prelude.mconcat
      ["/workspaces/", Core.toBS workspaceId]

instance Core.ToQuery UpdateWorkspace where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateWorkspaceResponse' smart constructor.
data UpdateWorkspaceResponse = UpdateWorkspaceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A structure containing data about the workspace that was created.
    workspace :: WorkspaceDescription
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkspaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateWorkspaceResponse_httpStatus' - The response's http status code.
--
-- 'workspace', 'updateWorkspaceResponse_workspace' - A structure containing data about the workspace that was created.
newUpdateWorkspaceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workspace'
  WorkspaceDescription ->
  UpdateWorkspaceResponse
newUpdateWorkspaceResponse pHttpStatus_ pWorkspace_ =
  UpdateWorkspaceResponse'
    { httpStatus = pHttpStatus_,
      workspace = pWorkspace_
    }

-- | The response's http status code.
updateWorkspaceResponse_httpStatus :: Lens.Lens' UpdateWorkspaceResponse Prelude.Int
updateWorkspaceResponse_httpStatus = Lens.lens (\UpdateWorkspaceResponse' {httpStatus} -> httpStatus) (\s@UpdateWorkspaceResponse' {} a -> s {httpStatus = a} :: UpdateWorkspaceResponse)

-- | A structure containing data about the workspace that was created.
updateWorkspaceResponse_workspace :: Lens.Lens' UpdateWorkspaceResponse WorkspaceDescription
updateWorkspaceResponse_workspace = Lens.lens (\UpdateWorkspaceResponse' {workspace} -> workspace) (\s@UpdateWorkspaceResponse' {} a -> s {workspace = a} :: UpdateWorkspaceResponse)

instance Prelude.NFData UpdateWorkspaceResponse where
  rnf UpdateWorkspaceResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf workspace

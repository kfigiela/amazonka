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
-- Module      : Amazonka.Grafana.CreateWorkspace
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a /workspace/. In a workspace, you can create Grafana dashboards
-- and visualizations to analyze your metrics, logs, and traces. You don\'t
-- have to build, package, or deploy any hardware to run the Grafana
-- server.
--
-- Don\'t use @CreateWorkspace@ to modify an existing workspace. Instead,
-- use
-- <https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html UpdateWorkspace>.
module Amazonka.Grafana.CreateWorkspace
  ( -- * Creating a Request
    CreateWorkspace (..),
    newCreateWorkspace,

    -- * Request Lenses
    createWorkspace_tags,
    createWorkspace_clientToken,
    createWorkspace_organizationRoleName,
    createWorkspace_workspaceOrganizationalUnits,
    createWorkspace_stackSetName,
    createWorkspace_workspaceRoleArn,
    createWorkspace_workspaceNotificationDestinations,
    createWorkspace_workspaceDataSources,
    createWorkspace_workspaceName,
    createWorkspace_workspaceDescription,
    createWorkspace_accountAccessType,
    createWorkspace_authenticationProviders,
    createWorkspace_permissionType,

    -- * Destructuring the Response
    CreateWorkspaceResponse (..),
    newCreateWorkspaceResponse,

    -- * Response Lenses
    createWorkspaceResponse_httpStatus,
    createWorkspaceResponse_workspace,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Grafana.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateWorkspace' smart constructor.
data CreateWorkspace = CreateWorkspace'
  { -- | The list of tags associated with the workspace.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A unique, case-sensitive, user-provided identifier to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of an IAM role that already exists to use with Organizations to
    -- access Amazon Web Services data sources and notification channels in
    -- other accounts in an organization.
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
    -- already have a role that you want to use, specify it here. The
    -- permission type should be set to @CUSTOMER_MANAGED@.
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
    -- source in the workspace console later. However, you will then have to
    -- manually configure permissions for it.
    workspaceDataSources :: Prelude.Maybe [DataSourceType],
    -- | The name for the workspace. It does not have to be unique.
    workspaceName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A description for the workspace. This is used only to help you identify
    -- this workspace.
    --
    -- Pattern: @^[\\\\p{L}\\\\p{Z}\\\\p{N}\\\\p{P}]{0,2048}$@
    workspaceDescription :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specifies whether the workspace can access Amazon Web Services resources
    -- in this Amazon Web Services account only, or whether it can also access
    -- Amazon Web Services resources in other accounts in the same
    -- organization. If you specify @ORGANIZATION@, you must specify which
    -- organizational units the workspace can access in the
    -- @workspaceOrganizationalUnits@ parameter.
    accountAccessType :: AccountAccessType,
    -- | Specifies whether this workspace uses SAML 2.0, Amazon Web Services
    -- Single Sign On, or both to authenticate users for using the Grafana
    -- console within a workspace. For more information, see
    -- <https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html User authentication in Amazon Managed Grafana>.
    authenticationProviders :: [AuthenticationProviderTypes],
    -- | If you specify @SERVICE_MANAGED@ on AWS Grafana console, Amazon Managed
    -- Grafana automatically creates the IAM roles and provisions the
    -- permissions that the workspace needs to use Amazon Web Services data
    -- sources and notification channels. In CLI mode, the permissionType
    -- @SERVICE_MANAGED@ will not create the IAM role for you.
    --
    -- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
    -- permissions yourself. If you are creating this workspace in a member
    -- account of an organization that is not a delegated administrator
    -- account, and you want the workspace to access data sources in other
    -- Amazon Web Services accounts in the organization, you must choose
    -- @CUSTOMER_MANAGED@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>.
    permissionType :: PermissionType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkspace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWorkspace_tags' - The list of tags associated with the workspace.
--
-- 'clientToken', 'createWorkspace_clientToken' - A unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
--
-- 'organizationRoleName', 'createWorkspace_organizationRoleName' - The name of an IAM role that already exists to use with Organizations to
-- access Amazon Web Services data sources and notification channels in
-- other accounts in an organization.
--
-- 'workspaceOrganizationalUnits', 'createWorkspace_workspaceOrganizationalUnits' - Specifies the organizational units that this workspace is allowed to use
-- data sources from, if this workspace is in an account that is part of an
-- organization.
--
-- 'stackSetName', 'createWorkspace_stackSetName' - The name of the CloudFormation stack set to use to generate IAM roles to
-- be used for this workspace.
--
-- 'workspaceRoleArn', 'createWorkspace_workspaceRoleArn' - The workspace needs an IAM role that grants permissions to the Amazon
-- Web Services resources that the workspace will view data from. If you
-- already have a role that you want to use, specify it here. The
-- permission type should be set to @CUSTOMER_MANAGED@.
--
-- 'workspaceNotificationDestinations', 'createWorkspace_workspaceNotificationDestinations' - Specify the Amazon Web Services notification channels that you plan to
-- use in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to use these channels.
--
-- 'workspaceDataSources', 'createWorkspace_workspaceDataSources' - Specify the Amazon Web Services data sources that you want to be queried
-- in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to read data from these sources. You must still add them
-- as data sources in the Grafana console in the workspace.
--
-- If you don\'t specify a data source here, you can still add it as a data
-- source in the workspace console later. However, you will then have to
-- manually configure permissions for it.
--
-- 'workspaceName', 'createWorkspace_workspaceName' - The name for the workspace. It does not have to be unique.
--
-- 'workspaceDescription', 'createWorkspace_workspaceDescription' - A description for the workspace. This is used only to help you identify
-- this workspace.
--
-- Pattern: @^[\\\\p{L}\\\\p{Z}\\\\p{N}\\\\p{P}]{0,2048}$@
--
-- 'accountAccessType', 'createWorkspace_accountAccessType' - Specifies whether the workspace can access Amazon Web Services resources
-- in this Amazon Web Services account only, or whether it can also access
-- Amazon Web Services resources in other accounts in the same
-- organization. If you specify @ORGANIZATION@, you must specify which
-- organizational units the workspace can access in the
-- @workspaceOrganizationalUnits@ parameter.
--
-- 'authenticationProviders', 'createWorkspace_authenticationProviders' - Specifies whether this workspace uses SAML 2.0, Amazon Web Services
-- Single Sign On, or both to authenticate users for using the Grafana
-- console within a workspace. For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html User authentication in Amazon Managed Grafana>.
--
-- 'permissionType', 'createWorkspace_permissionType' - If you specify @SERVICE_MANAGED@ on AWS Grafana console, Amazon Managed
-- Grafana automatically creates the IAM roles and provisions the
-- permissions that the workspace needs to use Amazon Web Services data
-- sources and notification channels. In CLI mode, the permissionType
-- @SERVICE_MANAGED@ will not create the IAM role for you.
--
-- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
-- permissions yourself. If you are creating this workspace in a member
-- account of an organization that is not a delegated administrator
-- account, and you want the workspace to access data sources in other
-- Amazon Web Services accounts in the organization, you must choose
-- @CUSTOMER_MANAGED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>.
newCreateWorkspace ::
  -- | 'accountAccessType'
  AccountAccessType ->
  -- | 'permissionType'
  PermissionType ->
  CreateWorkspace
newCreateWorkspace
  pAccountAccessType_
  pPermissionType_ =
    CreateWorkspace'
      { tags = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        organizationRoleName = Prelude.Nothing,
        workspaceOrganizationalUnits = Prelude.Nothing,
        stackSetName = Prelude.Nothing,
        workspaceRoleArn = Prelude.Nothing,
        workspaceNotificationDestinations = Prelude.Nothing,
        workspaceDataSources = Prelude.Nothing,
        workspaceName = Prelude.Nothing,
        workspaceDescription = Prelude.Nothing,
        accountAccessType = pAccountAccessType_,
        authenticationProviders = Prelude.mempty,
        permissionType = pPermissionType_
      }

-- | The list of tags associated with the workspace.
createWorkspace_tags :: Lens.Lens' CreateWorkspace (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorkspace_tags = Lens.lens (\CreateWorkspace' {tags} -> tags) (\s@CreateWorkspace' {} a -> s {tags = a} :: CreateWorkspace) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
createWorkspace_clientToken :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_clientToken = Lens.lens (\CreateWorkspace' {clientToken} -> clientToken) (\s@CreateWorkspace' {} a -> s {clientToken = a} :: CreateWorkspace)

-- | The name of an IAM role that already exists to use with Organizations to
-- access Amazon Web Services data sources and notification channels in
-- other accounts in an organization.
createWorkspace_organizationRoleName :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_organizationRoleName = Lens.lens (\CreateWorkspace' {organizationRoleName} -> organizationRoleName) (\s@CreateWorkspace' {} a -> s {organizationRoleName = a} :: CreateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies the organizational units that this workspace is allowed to use
-- data sources from, if this workspace is in an account that is part of an
-- organization.
createWorkspace_workspaceOrganizationalUnits :: Lens.Lens' CreateWorkspace (Prelude.Maybe [Prelude.Text])
createWorkspace_workspaceOrganizationalUnits = Lens.lens (\CreateWorkspace' {workspaceOrganizationalUnits} -> workspaceOrganizationalUnits) (\s@CreateWorkspace' {} a -> s {workspaceOrganizationalUnits = a} :: CreateWorkspace) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The name of the CloudFormation stack set to use to generate IAM roles to
-- be used for this workspace.
createWorkspace_stackSetName :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_stackSetName = Lens.lens (\CreateWorkspace' {stackSetName} -> stackSetName) (\s@CreateWorkspace' {} a -> s {stackSetName = a} :: CreateWorkspace)

-- | The workspace needs an IAM role that grants permissions to the Amazon
-- Web Services resources that the workspace will view data from. If you
-- already have a role that you want to use, specify it here. The
-- permission type should be set to @CUSTOMER_MANAGED@.
createWorkspace_workspaceRoleArn :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_workspaceRoleArn = Lens.lens (\CreateWorkspace' {workspaceRoleArn} -> workspaceRoleArn) (\s@CreateWorkspace' {} a -> s {workspaceRoleArn = a} :: CreateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specify the Amazon Web Services notification channels that you plan to
-- use in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to use these channels.
createWorkspace_workspaceNotificationDestinations :: Lens.Lens' CreateWorkspace (Prelude.Maybe [NotificationDestinationType])
createWorkspace_workspaceNotificationDestinations = Lens.lens (\CreateWorkspace' {workspaceNotificationDestinations} -> workspaceNotificationDestinations) (\s@CreateWorkspace' {} a -> s {workspaceNotificationDestinations = a} :: CreateWorkspace) Prelude.. Lens.mapping Lens.coerced

-- | Specify the Amazon Web Services data sources that you want to be queried
-- in this workspace. Specifying these data sources here enables Amazon
-- Managed Grafana to create IAM roles and permissions that allow Amazon
-- Managed Grafana to read data from these sources. You must still add them
-- as data sources in the Grafana console in the workspace.
--
-- If you don\'t specify a data source here, you can still add it as a data
-- source in the workspace console later. However, you will then have to
-- manually configure permissions for it.
createWorkspace_workspaceDataSources :: Lens.Lens' CreateWorkspace (Prelude.Maybe [DataSourceType])
createWorkspace_workspaceDataSources = Lens.lens (\CreateWorkspace' {workspaceDataSources} -> workspaceDataSources) (\s@CreateWorkspace' {} a -> s {workspaceDataSources = a} :: CreateWorkspace) Prelude.. Lens.mapping Lens.coerced

-- | The name for the workspace. It does not have to be unique.
createWorkspace_workspaceName :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_workspaceName = Lens.lens (\CreateWorkspace' {workspaceName} -> workspaceName) (\s@CreateWorkspace' {} a -> s {workspaceName = a} :: CreateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | A description for the workspace. This is used only to help you identify
-- this workspace.
--
-- Pattern: @^[\\\\p{L}\\\\p{Z}\\\\p{N}\\\\p{P}]{0,2048}$@
createWorkspace_workspaceDescription :: Lens.Lens' CreateWorkspace (Prelude.Maybe Prelude.Text)
createWorkspace_workspaceDescription = Lens.lens (\CreateWorkspace' {workspaceDescription} -> workspaceDescription) (\s@CreateWorkspace' {} a -> s {workspaceDescription = a} :: CreateWorkspace) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies whether the workspace can access Amazon Web Services resources
-- in this Amazon Web Services account only, or whether it can also access
-- Amazon Web Services resources in other accounts in the same
-- organization. If you specify @ORGANIZATION@, you must specify which
-- organizational units the workspace can access in the
-- @workspaceOrganizationalUnits@ parameter.
createWorkspace_accountAccessType :: Lens.Lens' CreateWorkspace AccountAccessType
createWorkspace_accountAccessType = Lens.lens (\CreateWorkspace' {accountAccessType} -> accountAccessType) (\s@CreateWorkspace' {} a -> s {accountAccessType = a} :: CreateWorkspace)

-- | Specifies whether this workspace uses SAML 2.0, Amazon Web Services
-- Single Sign On, or both to authenticate users for using the Grafana
-- console within a workspace. For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html User authentication in Amazon Managed Grafana>.
createWorkspace_authenticationProviders :: Lens.Lens' CreateWorkspace [AuthenticationProviderTypes]
createWorkspace_authenticationProviders = Lens.lens (\CreateWorkspace' {authenticationProviders} -> authenticationProviders) (\s@CreateWorkspace' {} a -> s {authenticationProviders = a} :: CreateWorkspace) Prelude.. Lens.coerced

-- | If you specify @SERVICE_MANAGED@ on AWS Grafana console, Amazon Managed
-- Grafana automatically creates the IAM roles and provisions the
-- permissions that the workspace needs to use Amazon Web Services data
-- sources and notification channels. In CLI mode, the permissionType
-- @SERVICE_MANAGED@ will not create the IAM role for you.
--
-- If you specify @CUSTOMER_MANAGED@, you will manage those roles and
-- permissions yourself. If you are creating this workspace in a member
-- account of an organization that is not a delegated administrator
-- account, and you want the workspace to access data sources in other
-- Amazon Web Services accounts in the organization, you must choose
-- @CUSTOMER_MANAGED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html Amazon Managed Grafana permissions and policies for Amazon Web Services data sources and notification channels>.
createWorkspace_permissionType :: Lens.Lens' CreateWorkspace PermissionType
createWorkspace_permissionType = Lens.lens (\CreateWorkspace' {permissionType} -> permissionType) (\s@CreateWorkspace' {} a -> s {permissionType = a} :: CreateWorkspace)

instance Core.AWSRequest CreateWorkspace where
  type
    AWSResponse CreateWorkspace =
      CreateWorkspaceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkspaceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "workspace")
      )

instance Prelude.Hashable CreateWorkspace where
  hashWithSalt _salt CreateWorkspace' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` organizationRoleName
      `Prelude.hashWithSalt` workspaceOrganizationalUnits
      `Prelude.hashWithSalt` stackSetName
      `Prelude.hashWithSalt` workspaceRoleArn
      `Prelude.hashWithSalt` workspaceNotificationDestinations
      `Prelude.hashWithSalt` workspaceDataSources
      `Prelude.hashWithSalt` workspaceName
      `Prelude.hashWithSalt` workspaceDescription
      `Prelude.hashWithSalt` accountAccessType
      `Prelude.hashWithSalt` authenticationProviders
      `Prelude.hashWithSalt` permissionType

instance Prelude.NFData CreateWorkspace where
  rnf CreateWorkspace' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf organizationRoleName
      `Prelude.seq` Prelude.rnf workspaceOrganizationalUnits
      `Prelude.seq` Prelude.rnf stackSetName
      `Prelude.seq` Prelude.rnf workspaceRoleArn
      `Prelude.seq` Prelude.rnf workspaceNotificationDestinations
      `Prelude.seq` Prelude.rnf workspaceDataSources
      `Prelude.seq` Prelude.rnf workspaceName
      `Prelude.seq` Prelude.rnf workspaceDescription
      `Prelude.seq` Prelude.rnf accountAccessType
      `Prelude.seq` Prelude.rnf authenticationProviders
      `Prelude.seq` Prelude.rnf permissionType

instance Core.ToHeaders CreateWorkspace where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorkspace where
  toJSON CreateWorkspace' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
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
            ("workspaceDescription" Core..=)
              Prelude.<$> workspaceDescription,
            Prelude.Just
              ("accountAccessType" Core..= accountAccessType),
            Prelude.Just
              ( "authenticationProviders"
                  Core..= authenticationProviders
              ),
            Prelude.Just
              ("permissionType" Core..= permissionType)
          ]
      )

instance Core.ToPath CreateWorkspace where
  toPath = Prelude.const "/workspaces"

instance Core.ToQuery CreateWorkspace where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorkspaceResponse' smart constructor.
data CreateWorkspaceResponse = CreateWorkspaceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A structure containing data about the workspace that was created.
    workspace :: WorkspaceDescription
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkspaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createWorkspaceResponse_httpStatus' - The response's http status code.
--
-- 'workspace', 'createWorkspaceResponse_workspace' - A structure containing data about the workspace that was created.
newCreateWorkspaceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workspace'
  WorkspaceDescription ->
  CreateWorkspaceResponse
newCreateWorkspaceResponse pHttpStatus_ pWorkspace_ =
  CreateWorkspaceResponse'
    { httpStatus = pHttpStatus_,
      workspace = pWorkspace_
    }

-- | The response's http status code.
createWorkspaceResponse_httpStatus :: Lens.Lens' CreateWorkspaceResponse Prelude.Int
createWorkspaceResponse_httpStatus = Lens.lens (\CreateWorkspaceResponse' {httpStatus} -> httpStatus) (\s@CreateWorkspaceResponse' {} a -> s {httpStatus = a} :: CreateWorkspaceResponse)

-- | A structure containing data about the workspace that was created.
createWorkspaceResponse_workspace :: Lens.Lens' CreateWorkspaceResponse WorkspaceDescription
createWorkspaceResponse_workspace = Lens.lens (\CreateWorkspaceResponse' {workspace} -> workspace) (\s@CreateWorkspaceResponse' {} a -> s {workspace = a} :: CreateWorkspaceResponse)

instance Prelude.NFData CreateWorkspaceResponse where
  rnf CreateWorkspaceResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf workspace

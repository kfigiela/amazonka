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
-- Module      : Amazonka.CloudFormation.CreateStackInstances
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates stack instances for the specified accounts, within the specified
-- Amazon Web Services Regions. A stack instance refers to a stack in a
-- specific account and Region. You must specify at least one value for
-- either @Accounts@ or @DeploymentTargets@, and you must specify at least
-- one value for @Regions@.
module Amazonka.CloudFormation.CreateStackInstances
  ( -- * Creating a Request
    CreateStackInstances (..),
    newCreateStackInstances,

    -- * Request Lenses
    createStackInstances_operationPreferences,
    createStackInstances_callAs,
    createStackInstances_parameterOverrides,
    createStackInstances_operationId,
    createStackInstances_accounts,
    createStackInstances_deploymentTargets,
    createStackInstances_stackSetName,
    createStackInstances_regions,

    -- * Destructuring the Response
    CreateStackInstancesResponse (..),
    newCreateStackInstancesResponse,

    -- * Response Lenses
    createStackInstancesResponse_operationId,
    createStackInstancesResponse_httpStatus,
  )
where

import Amazonka.CloudFormation.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateStackInstances' smart constructor.
data CreateStackInstances = CreateStackInstances'
  { -- | Preferences for how CloudFormation performs this stack set operation.
    operationPreferences :: Prelude.Maybe StackSetOperationPreferences,
    -- | [Service-managed permissions] Specifies whether you are acting as an
    -- account administrator in the organization\'s management account or as a
    -- delegated administrator in a member account.
    --
    -- By default, @SELF@ is specified. Use @SELF@ for stack sets with
    -- self-managed permissions.
    --
    -- -   If you are signed in to the management account, specify @SELF@.
    --
    -- -   If you are signed in to a delegated administrator account, specify
    --     @DELEGATED_ADMIN@.
    --
    --     Your Amazon Web Services account must be registered as a delegated
    --     administrator in the management account. For more information, see
    --     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
    --     in the /CloudFormation User Guide/.
    callAs :: Prelude.Maybe CallAs,
    -- | A list of stack set parameters whose values you want to override in the
    -- selected stack instances.
    --
    -- Any overridden parameter values will be applied to all stack instances
    -- in the specified accounts and Amazon Web Services Regions. When
    -- specifying parameters and their values, be aware of how CloudFormation
    -- sets parameter values during stack instance operations:
    --
    -- -   To override the current value for a parameter, include the parameter
    --     and specify its value.
    --
    -- -   To leave an overridden parameter set to its present value, include
    --     the parameter and specify @UsePreviousValue@ as @true@. (You can\'t
    --     specify both a value and set @UsePreviousValue@ to @true@.)
    --
    -- -   To set an overridden parameter back to the value specified in the
    --     stack set, specify a parameter list but don\'t include the parameter
    --     in the list.
    --
    -- -   To leave all parameters set to their present values, don\'t specify
    --     this property at all.
    --
    -- During stack set updates, any parameter values overridden for a stack
    -- instance aren\'t updated, but retain their overridden value.
    --
    -- You can only override the parameter /values/ that are specified in the
    -- stack set; to add or delete a parameter itself, use
    -- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html UpdateStackSet>
    -- to update the stack set template.
    parameterOverrides :: Prelude.Maybe [Parameter],
    -- | The unique identifier for this stack set operation.
    --
    -- The operation ID also functions as an idempotency token, to ensure that
    -- CloudFormation performs the stack set operation only once, even if you
    -- retry the request multiple times. You might retry stack set operation
    -- requests to ensure that CloudFormation successfully received them.
    --
    -- If you don\'t specify an operation ID, the SDK generates one
    -- automatically.
    --
    -- Repeating this stack set operation with a new operation ID retries all
    -- stack instances whose status is @OUTDATED@.
    operationId :: Prelude.Maybe Prelude.Text,
    -- | [Self-managed permissions] The names of one or more Amazon Web Services
    -- accounts that you want to create stack instances in the specified
    -- Region(s) for.
    --
    -- You can specify @Accounts@ or @DeploymentTargets@, but not both.
    accounts :: Prelude.Maybe [Prelude.Text],
    -- | [Service-managed permissions] The Organizations accounts for which to
    -- create stack instances in the specified Amazon Web Services Regions.
    --
    -- You can specify @Accounts@ or @DeploymentTargets@, but not both.
    deploymentTargets :: Prelude.Maybe DeploymentTargets,
    -- | The name or unique ID of the stack set that you want to create stack
    -- instances from.
    stackSetName :: Prelude.Text,
    -- | The names of one or more Amazon Web Services Regions where you want to
    -- create stack instances using the specified Amazon Web Services accounts.
    regions :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStackInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operationPreferences', 'createStackInstances_operationPreferences' - Preferences for how CloudFormation performs this stack set operation.
--
-- 'callAs', 'createStackInstances_callAs' - [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the organization\'s management account or as a
-- delegated administrator in a member account.
--
-- By default, @SELF@ is specified. Use @SELF@ for stack sets with
-- self-managed permissions.
--
-- -   If you are signed in to the management account, specify @SELF@.
--
-- -   If you are signed in to a delegated administrator account, specify
--     @DELEGATED_ADMIN@.
--
--     Your Amazon Web Services account must be registered as a delegated
--     administrator in the management account. For more information, see
--     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
--     in the /CloudFormation User Guide/.
--
-- 'parameterOverrides', 'createStackInstances_parameterOverrides' - A list of stack set parameters whose values you want to override in the
-- selected stack instances.
--
-- Any overridden parameter values will be applied to all stack instances
-- in the specified accounts and Amazon Web Services Regions. When
-- specifying parameters and their values, be aware of how CloudFormation
-- sets parameter values during stack instance operations:
--
-- -   To override the current value for a parameter, include the parameter
--     and specify its value.
--
-- -   To leave an overridden parameter set to its present value, include
--     the parameter and specify @UsePreviousValue@ as @true@. (You can\'t
--     specify both a value and set @UsePreviousValue@ to @true@.)
--
-- -   To set an overridden parameter back to the value specified in the
--     stack set, specify a parameter list but don\'t include the parameter
--     in the list.
--
-- -   To leave all parameters set to their present values, don\'t specify
--     this property at all.
--
-- During stack set updates, any parameter values overridden for a stack
-- instance aren\'t updated, but retain their overridden value.
--
-- You can only override the parameter /values/ that are specified in the
-- stack set; to add or delete a parameter itself, use
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html UpdateStackSet>
-- to update the stack set template.
--
-- 'operationId', 'createStackInstances_operationId' - The unique identifier for this stack set operation.
--
-- The operation ID also functions as an idempotency token, to ensure that
-- CloudFormation performs the stack set operation only once, even if you
-- retry the request multiple times. You might retry stack set operation
-- requests to ensure that CloudFormation successfully received them.
--
-- If you don\'t specify an operation ID, the SDK generates one
-- automatically.
--
-- Repeating this stack set operation with a new operation ID retries all
-- stack instances whose status is @OUTDATED@.
--
-- 'accounts', 'createStackInstances_accounts' - [Self-managed permissions] The names of one or more Amazon Web Services
-- accounts that you want to create stack instances in the specified
-- Region(s) for.
--
-- You can specify @Accounts@ or @DeploymentTargets@, but not both.
--
-- 'deploymentTargets', 'createStackInstances_deploymentTargets' - [Service-managed permissions] The Organizations accounts for which to
-- create stack instances in the specified Amazon Web Services Regions.
--
-- You can specify @Accounts@ or @DeploymentTargets@, but not both.
--
-- 'stackSetName', 'createStackInstances_stackSetName' - The name or unique ID of the stack set that you want to create stack
-- instances from.
--
-- 'regions', 'createStackInstances_regions' - The names of one or more Amazon Web Services Regions where you want to
-- create stack instances using the specified Amazon Web Services accounts.
newCreateStackInstances ::
  -- | 'stackSetName'
  Prelude.Text ->
  CreateStackInstances
newCreateStackInstances pStackSetName_ =
  CreateStackInstances'
    { operationPreferences =
        Prelude.Nothing,
      callAs = Prelude.Nothing,
      parameterOverrides = Prelude.Nothing,
      operationId = Prelude.Nothing,
      accounts = Prelude.Nothing,
      deploymentTargets = Prelude.Nothing,
      stackSetName = pStackSetName_,
      regions = Prelude.mempty
    }

-- | Preferences for how CloudFormation performs this stack set operation.
createStackInstances_operationPreferences :: Lens.Lens' CreateStackInstances (Prelude.Maybe StackSetOperationPreferences)
createStackInstances_operationPreferences = Lens.lens (\CreateStackInstances' {operationPreferences} -> operationPreferences) (\s@CreateStackInstances' {} a -> s {operationPreferences = a} :: CreateStackInstances)

-- | [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the organization\'s management account or as a
-- delegated administrator in a member account.
--
-- By default, @SELF@ is specified. Use @SELF@ for stack sets with
-- self-managed permissions.
--
-- -   If you are signed in to the management account, specify @SELF@.
--
-- -   If you are signed in to a delegated administrator account, specify
--     @DELEGATED_ADMIN@.
--
--     Your Amazon Web Services account must be registered as a delegated
--     administrator in the management account. For more information, see
--     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
--     in the /CloudFormation User Guide/.
createStackInstances_callAs :: Lens.Lens' CreateStackInstances (Prelude.Maybe CallAs)
createStackInstances_callAs = Lens.lens (\CreateStackInstances' {callAs} -> callAs) (\s@CreateStackInstances' {} a -> s {callAs = a} :: CreateStackInstances)

-- | A list of stack set parameters whose values you want to override in the
-- selected stack instances.
--
-- Any overridden parameter values will be applied to all stack instances
-- in the specified accounts and Amazon Web Services Regions. When
-- specifying parameters and their values, be aware of how CloudFormation
-- sets parameter values during stack instance operations:
--
-- -   To override the current value for a parameter, include the parameter
--     and specify its value.
--
-- -   To leave an overridden parameter set to its present value, include
--     the parameter and specify @UsePreviousValue@ as @true@. (You can\'t
--     specify both a value and set @UsePreviousValue@ to @true@.)
--
-- -   To set an overridden parameter back to the value specified in the
--     stack set, specify a parameter list but don\'t include the parameter
--     in the list.
--
-- -   To leave all parameters set to their present values, don\'t specify
--     this property at all.
--
-- During stack set updates, any parameter values overridden for a stack
-- instance aren\'t updated, but retain their overridden value.
--
-- You can only override the parameter /values/ that are specified in the
-- stack set; to add or delete a parameter itself, use
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html UpdateStackSet>
-- to update the stack set template.
createStackInstances_parameterOverrides :: Lens.Lens' CreateStackInstances (Prelude.Maybe [Parameter])
createStackInstances_parameterOverrides = Lens.lens (\CreateStackInstances' {parameterOverrides} -> parameterOverrides) (\s@CreateStackInstances' {} a -> s {parameterOverrides = a} :: CreateStackInstances) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for this stack set operation.
--
-- The operation ID also functions as an idempotency token, to ensure that
-- CloudFormation performs the stack set operation only once, even if you
-- retry the request multiple times. You might retry stack set operation
-- requests to ensure that CloudFormation successfully received them.
--
-- If you don\'t specify an operation ID, the SDK generates one
-- automatically.
--
-- Repeating this stack set operation with a new operation ID retries all
-- stack instances whose status is @OUTDATED@.
createStackInstances_operationId :: Lens.Lens' CreateStackInstances (Prelude.Maybe Prelude.Text)
createStackInstances_operationId = Lens.lens (\CreateStackInstances' {operationId} -> operationId) (\s@CreateStackInstances' {} a -> s {operationId = a} :: CreateStackInstances)

-- | [Self-managed permissions] The names of one or more Amazon Web Services
-- accounts that you want to create stack instances in the specified
-- Region(s) for.
--
-- You can specify @Accounts@ or @DeploymentTargets@, but not both.
createStackInstances_accounts :: Lens.Lens' CreateStackInstances (Prelude.Maybe [Prelude.Text])
createStackInstances_accounts = Lens.lens (\CreateStackInstances' {accounts} -> accounts) (\s@CreateStackInstances' {} a -> s {accounts = a} :: CreateStackInstances) Prelude.. Lens.mapping Lens.coerced

-- | [Service-managed permissions] The Organizations accounts for which to
-- create stack instances in the specified Amazon Web Services Regions.
--
-- You can specify @Accounts@ or @DeploymentTargets@, but not both.
createStackInstances_deploymentTargets :: Lens.Lens' CreateStackInstances (Prelude.Maybe DeploymentTargets)
createStackInstances_deploymentTargets = Lens.lens (\CreateStackInstances' {deploymentTargets} -> deploymentTargets) (\s@CreateStackInstances' {} a -> s {deploymentTargets = a} :: CreateStackInstances)

-- | The name or unique ID of the stack set that you want to create stack
-- instances from.
createStackInstances_stackSetName :: Lens.Lens' CreateStackInstances Prelude.Text
createStackInstances_stackSetName = Lens.lens (\CreateStackInstances' {stackSetName} -> stackSetName) (\s@CreateStackInstances' {} a -> s {stackSetName = a} :: CreateStackInstances)

-- | The names of one or more Amazon Web Services Regions where you want to
-- create stack instances using the specified Amazon Web Services accounts.
createStackInstances_regions :: Lens.Lens' CreateStackInstances [Prelude.Text]
createStackInstances_regions = Lens.lens (\CreateStackInstances' {regions} -> regions) (\s@CreateStackInstances' {} a -> s {regions = a} :: CreateStackInstances) Prelude.. Lens.coerced

instance Core.AWSRequest CreateStackInstances where
  type
    AWSResponse CreateStackInstances =
      CreateStackInstancesResponse
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateStackInstancesResult"
      ( \s h x ->
          CreateStackInstancesResponse'
            Prelude.<$> (x Core..@? "OperationId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateStackInstances where
  service _proxy = defaultService

instance Prelude.Hashable CreateStackInstances where
  hashWithSalt _salt CreateStackInstances' {..} =
    _salt `Prelude.hashWithSalt` operationPreferences
      `Prelude.hashWithSalt` callAs
      `Prelude.hashWithSalt` parameterOverrides
      `Prelude.hashWithSalt` operationId
      `Prelude.hashWithSalt` accounts
      `Prelude.hashWithSalt` deploymentTargets
      `Prelude.hashWithSalt` stackSetName
      `Prelude.hashWithSalt` regions

instance Prelude.NFData CreateStackInstances where
  rnf CreateStackInstances' {..} =
    Prelude.rnf operationPreferences
      `Prelude.seq` Prelude.rnf callAs
      `Prelude.seq` Prelude.rnf parameterOverrides
      `Prelude.seq` Prelude.rnf operationId
      `Prelude.seq` Prelude.rnf accounts
      `Prelude.seq` Prelude.rnf deploymentTargets
      `Prelude.seq` Prelude.rnf stackSetName
      `Prelude.seq` Prelude.rnf regions

instance Core.ToHeaders CreateStackInstances where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateStackInstances where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateStackInstances where
  toQuery CreateStackInstances' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateStackInstances" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-15" :: Prelude.ByteString),
        "OperationPreferences" Core.=: operationPreferences,
        "CallAs" Core.=: callAs,
        "ParameterOverrides"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> parameterOverrides
            ),
        "OperationId" Core.=: operationId,
        "Accounts"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> accounts),
        "DeploymentTargets" Core.=: deploymentTargets,
        "StackSetName" Core.=: stackSetName,
        "Regions" Core.=: Core.toQueryList "member" regions
      ]

-- | /See:/ 'newCreateStackInstancesResponse' smart constructor.
data CreateStackInstancesResponse = CreateStackInstancesResponse'
  { -- | The unique identifier for this stack set operation.
    operationId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStackInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operationId', 'createStackInstancesResponse_operationId' - The unique identifier for this stack set operation.
--
-- 'httpStatus', 'createStackInstancesResponse_httpStatus' - The response's http status code.
newCreateStackInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateStackInstancesResponse
newCreateStackInstancesResponse pHttpStatus_ =
  CreateStackInstancesResponse'
    { operationId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier for this stack set operation.
createStackInstancesResponse_operationId :: Lens.Lens' CreateStackInstancesResponse (Prelude.Maybe Prelude.Text)
createStackInstancesResponse_operationId = Lens.lens (\CreateStackInstancesResponse' {operationId} -> operationId) (\s@CreateStackInstancesResponse' {} a -> s {operationId = a} :: CreateStackInstancesResponse)

-- | The response's http status code.
createStackInstancesResponse_httpStatus :: Lens.Lens' CreateStackInstancesResponse Prelude.Int
createStackInstancesResponse_httpStatus = Lens.lens (\CreateStackInstancesResponse' {httpStatus} -> httpStatus) (\s@CreateStackInstancesResponse' {} a -> s {httpStatus = a} :: CreateStackInstancesResponse)

instance Prelude.NFData CreateStackInstancesResponse where
  rnf CreateStackInstancesResponse' {..} =
    Prelude.rnf operationId
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.EC2.UpdateSecurityGroupRuleDescriptionsIngress
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description of an ingress (inbound) security group rule. You
-- can replace an existing description, or add a description to a rule that
-- did not have one previously. You can remove a description for a security
-- group rule by omitting the description parameter in the request.
module Amazonka.EC2.UpdateSecurityGroupRuleDescriptionsIngress
  ( -- * Creating a Request
    UpdateSecurityGroupRuleDescriptionsIngress (..),
    newUpdateSecurityGroupRuleDescriptionsIngress,

    -- * Request Lenses
    updateSecurityGroupRuleDescriptionsIngress_ipPermissions,
    updateSecurityGroupRuleDescriptionsIngress_groupName,
    updateSecurityGroupRuleDescriptionsIngress_dryRun,
    updateSecurityGroupRuleDescriptionsIngress_securityGroupRuleDescriptions,
    updateSecurityGroupRuleDescriptionsIngress_groupId,

    -- * Destructuring the Response
    UpdateSecurityGroupRuleDescriptionsIngressResponse (..),
    newUpdateSecurityGroupRuleDescriptionsIngressResponse,

    -- * Response Lenses
    updateSecurityGroupRuleDescriptionsIngressResponse_return,
    updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsIngress' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngress = UpdateSecurityGroupRuleDescriptionsIngress'
  { -- | The IP permissions for the security group rule. You must specify either
    -- IP permissions or a description.
    ipPermissions :: Prelude.Maybe [IpPermission],
    -- | [EC2-Classic, default VPC] The name of the security group. You must
    -- specify either the security group ID or the security group name in the
    -- request. For security groups in a nondefault VPC, you must specify the
    -- security group ID.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | [VPC only] The description for the ingress security group rules. You
    -- must specify either a description or IP permissions.
    securityGroupRuleDescriptions :: Prelude.Maybe [SecurityGroupRuleDescription],
    -- | The ID of the security group. You must specify either the security group
    -- ID or the security group name in the request. For security groups in a
    -- nondefault VPC, you must specify the security group ID.
    groupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsIngress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipPermissions', 'updateSecurityGroupRuleDescriptionsIngress_ipPermissions' - The IP permissions for the security group rule. You must specify either
-- IP permissions or a description.
--
-- 'groupName', 'updateSecurityGroupRuleDescriptionsIngress_groupName' - [EC2-Classic, default VPC] The name of the security group. You must
-- specify either the security group ID or the security group name in the
-- request. For security groups in a nondefault VPC, you must specify the
-- security group ID.
--
-- 'dryRun', 'updateSecurityGroupRuleDescriptionsIngress_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'securityGroupRuleDescriptions', 'updateSecurityGroupRuleDescriptionsIngress_securityGroupRuleDescriptions' - [VPC only] The description for the ingress security group rules. You
-- must specify either a description or IP permissions.
--
-- 'groupId', 'updateSecurityGroupRuleDescriptionsIngress_groupId' - The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
newUpdateSecurityGroupRuleDescriptionsIngress ::
  UpdateSecurityGroupRuleDescriptionsIngress
newUpdateSecurityGroupRuleDescriptionsIngress =
  UpdateSecurityGroupRuleDescriptionsIngress'
    { ipPermissions =
        Prelude.Nothing,
      groupName = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      securityGroupRuleDescriptions =
        Prelude.Nothing,
      groupId = Prelude.Nothing
    }

-- | The IP permissions for the security group rule. You must specify either
-- IP permissions or a description.
updateSecurityGroupRuleDescriptionsIngress_ipPermissions :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Prelude.Maybe [IpPermission])
updateSecurityGroupRuleDescriptionsIngress_ipPermissions = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {ipPermissions} -> ipPermissions) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {ipPermissions = a} :: UpdateSecurityGroupRuleDescriptionsIngress) Prelude.. Lens.mapping Lens.coerced

-- | [EC2-Classic, default VPC] The name of the security group. You must
-- specify either the security group ID or the security group name in the
-- request. For security groups in a nondefault VPC, you must specify the
-- security group ID.
updateSecurityGroupRuleDescriptionsIngress_groupName :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Prelude.Maybe Prelude.Text)
updateSecurityGroupRuleDescriptionsIngress_groupName = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {groupName} -> groupName) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {groupName = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
updateSecurityGroupRuleDescriptionsIngress_dryRun :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Prelude.Maybe Prelude.Bool)
updateSecurityGroupRuleDescriptionsIngress_dryRun = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {dryRun} -> dryRun) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {dryRun = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

-- | [VPC only] The description for the ingress security group rules. You
-- must specify either a description or IP permissions.
updateSecurityGroupRuleDescriptionsIngress_securityGroupRuleDescriptions :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Prelude.Maybe [SecurityGroupRuleDescription])
updateSecurityGroupRuleDescriptionsIngress_securityGroupRuleDescriptions = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {securityGroupRuleDescriptions} -> securityGroupRuleDescriptions) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {securityGroupRuleDescriptions = a} :: UpdateSecurityGroupRuleDescriptionsIngress) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
updateSecurityGroupRuleDescriptionsIngress_groupId :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Prelude.Maybe Prelude.Text)
updateSecurityGroupRuleDescriptionsIngress_groupId = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {groupId} -> groupId) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {groupId = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

instance
  Core.AWSRequest
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  type
    AWSResponse
      UpdateSecurityGroupRuleDescriptionsIngress =
      UpdateSecurityGroupRuleDescriptionsIngressResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          UpdateSecurityGroupRuleDescriptionsIngressResponse'
            Prelude.<$> (x Core..@? "return")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  hashWithSalt
    _salt
    UpdateSecurityGroupRuleDescriptionsIngress' {..} =
      _salt `Prelude.hashWithSalt` ipPermissions
        `Prelude.hashWithSalt` groupName
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` securityGroupRuleDescriptions
        `Prelude.hashWithSalt` groupId

instance
  Prelude.NFData
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  rnf UpdateSecurityGroupRuleDescriptionsIngress' {..} =
    Prelude.rnf ipPermissions
      `Prelude.seq` Prelude.rnf groupName
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf securityGroupRuleDescriptions
      `Prelude.seq` Prelude.rnf groupId

instance
  Core.ToHeaders
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toQuery
    UpdateSecurityGroupRuleDescriptionsIngress' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "UpdateSecurityGroupRuleDescriptionsIngress" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          Core.toQuery
            ( Core.toQueryList "IpPermissions"
                Prelude.<$> ipPermissions
            ),
          "GroupName" Core.=: groupName,
          "DryRun" Core.=: dryRun,
          Core.toQuery
            ( Core.toQueryList "SecurityGroupRuleDescription"
                Prelude.<$> securityGroupRuleDescriptions
            ),
          "GroupId" Core.=: groupId
        ]

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsIngressResponse' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngressResponse = UpdateSecurityGroupRuleDescriptionsIngressResponse'
  { -- | Returns @true@ if the request succeeds; otherwise, returns an error.
    return' :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsIngressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'return'', 'updateSecurityGroupRuleDescriptionsIngressResponse_return' - Returns @true@ if the request succeeds; otherwise, returns an error.
--
-- 'httpStatus', 'updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus' - The response's http status code.
newUpdateSecurityGroupRuleDescriptionsIngressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSecurityGroupRuleDescriptionsIngressResponse
newUpdateSecurityGroupRuleDescriptionsIngressResponse
  pHttpStatus_ =
    UpdateSecurityGroupRuleDescriptionsIngressResponse'
      { return' =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, returns an error.
updateSecurityGroupRuleDescriptionsIngressResponse_return :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse (Prelude.Maybe Prelude.Bool)
updateSecurityGroupRuleDescriptionsIngressResponse_return = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngressResponse' {return'} -> return') (\s@UpdateSecurityGroupRuleDescriptionsIngressResponse' {} a -> s {return' = a} :: UpdateSecurityGroupRuleDescriptionsIngressResponse)

-- | The response's http status code.
updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse Prelude.Int
updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngressResponse' {httpStatus} -> httpStatus) (\s@UpdateSecurityGroupRuleDescriptionsIngressResponse' {} a -> s {httpStatus = a} :: UpdateSecurityGroupRuleDescriptionsIngressResponse)

instance
  Prelude.NFData
    UpdateSecurityGroupRuleDescriptionsIngressResponse
  where
  rnf
    UpdateSecurityGroupRuleDescriptionsIngressResponse' {..} =
      Prelude.rnf return'
        `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.AppStream.AssociateApplicationToEntitlement
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an application to entitle.
module Amazonka.AppStream.AssociateApplicationToEntitlement
  ( -- * Creating a Request
    AssociateApplicationToEntitlement (..),
    newAssociateApplicationToEntitlement,

    -- * Request Lenses
    associateApplicationToEntitlement_stackName,
    associateApplicationToEntitlement_entitlementName,
    associateApplicationToEntitlement_applicationIdentifier,

    -- * Destructuring the Response
    AssociateApplicationToEntitlementResponse (..),
    newAssociateApplicationToEntitlementResponse,

    -- * Response Lenses
    associateApplicationToEntitlementResponse_httpStatus,
  )
where

import Amazonka.AppStream.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newAssociateApplicationToEntitlement' smart constructor.
data AssociateApplicationToEntitlement = AssociateApplicationToEntitlement'
  { -- | The name of the stack.
    stackName :: Prelude.Text,
    -- | The name of the entitlement.
    entitlementName :: Prelude.Text,
    -- | The identifier of the application.
    applicationIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateApplicationToEntitlement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackName', 'associateApplicationToEntitlement_stackName' - The name of the stack.
--
-- 'entitlementName', 'associateApplicationToEntitlement_entitlementName' - The name of the entitlement.
--
-- 'applicationIdentifier', 'associateApplicationToEntitlement_applicationIdentifier' - The identifier of the application.
newAssociateApplicationToEntitlement ::
  -- | 'stackName'
  Prelude.Text ->
  -- | 'entitlementName'
  Prelude.Text ->
  -- | 'applicationIdentifier'
  Prelude.Text ->
  AssociateApplicationToEntitlement
newAssociateApplicationToEntitlement
  pStackName_
  pEntitlementName_
  pApplicationIdentifier_ =
    AssociateApplicationToEntitlement'
      { stackName =
          pStackName_,
        entitlementName = pEntitlementName_,
        applicationIdentifier =
          pApplicationIdentifier_
      }

-- | The name of the stack.
associateApplicationToEntitlement_stackName :: Lens.Lens' AssociateApplicationToEntitlement Prelude.Text
associateApplicationToEntitlement_stackName = Lens.lens (\AssociateApplicationToEntitlement' {stackName} -> stackName) (\s@AssociateApplicationToEntitlement' {} a -> s {stackName = a} :: AssociateApplicationToEntitlement)

-- | The name of the entitlement.
associateApplicationToEntitlement_entitlementName :: Lens.Lens' AssociateApplicationToEntitlement Prelude.Text
associateApplicationToEntitlement_entitlementName = Lens.lens (\AssociateApplicationToEntitlement' {entitlementName} -> entitlementName) (\s@AssociateApplicationToEntitlement' {} a -> s {entitlementName = a} :: AssociateApplicationToEntitlement)

-- | The identifier of the application.
associateApplicationToEntitlement_applicationIdentifier :: Lens.Lens' AssociateApplicationToEntitlement Prelude.Text
associateApplicationToEntitlement_applicationIdentifier = Lens.lens (\AssociateApplicationToEntitlement' {applicationIdentifier} -> applicationIdentifier) (\s@AssociateApplicationToEntitlement' {} a -> s {applicationIdentifier = a} :: AssociateApplicationToEntitlement)

instance
  Core.AWSRequest
    AssociateApplicationToEntitlement
  where
  type
    AWSResponse AssociateApplicationToEntitlement =
      AssociateApplicationToEntitlementResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateApplicationToEntitlementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Core.AWSService
    AssociateApplicationToEntitlement
  where
  service _proxy = defaultService

instance
  Prelude.Hashable
    AssociateApplicationToEntitlement
  where
  hashWithSalt
    _salt
    AssociateApplicationToEntitlement' {..} =
      _salt `Prelude.hashWithSalt` stackName
        `Prelude.hashWithSalt` entitlementName
        `Prelude.hashWithSalt` applicationIdentifier

instance
  Prelude.NFData
    AssociateApplicationToEntitlement
  where
  rnf AssociateApplicationToEntitlement' {..} =
    Prelude.rnf stackName
      `Prelude.seq` Prelude.rnf entitlementName
      `Prelude.seq` Prelude.rnf applicationIdentifier

instance
  Core.ToHeaders
    AssociateApplicationToEntitlement
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.AssociateApplicationToEntitlement" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    AssociateApplicationToEntitlement
  where
  toJSON AssociateApplicationToEntitlement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("StackName" Core..= stackName),
            Prelude.Just
              ("EntitlementName" Core..= entitlementName),
            Prelude.Just
              ( "ApplicationIdentifier"
                  Core..= applicationIdentifier
              )
          ]
      )

instance
  Core.ToPath
    AssociateApplicationToEntitlement
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    AssociateApplicationToEntitlement
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateApplicationToEntitlementResponse' smart constructor.
data AssociateApplicationToEntitlementResponse = AssociateApplicationToEntitlementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateApplicationToEntitlementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateApplicationToEntitlementResponse_httpStatus' - The response's http status code.
newAssociateApplicationToEntitlementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateApplicationToEntitlementResponse
newAssociateApplicationToEntitlementResponse
  pHttpStatus_ =
    AssociateApplicationToEntitlementResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
associateApplicationToEntitlementResponse_httpStatus :: Lens.Lens' AssociateApplicationToEntitlementResponse Prelude.Int
associateApplicationToEntitlementResponse_httpStatus = Lens.lens (\AssociateApplicationToEntitlementResponse' {httpStatus} -> httpStatus) (\s@AssociateApplicationToEntitlementResponse' {} a -> s {httpStatus = a} :: AssociateApplicationToEntitlementResponse)

instance
  Prelude.NFData
    AssociateApplicationToEntitlementResponse
  where
  rnf AssociateApplicationToEntitlementResponse' {..} =
    Prelude.rnf httpStatus

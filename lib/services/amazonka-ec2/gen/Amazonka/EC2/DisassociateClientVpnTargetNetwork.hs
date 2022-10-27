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
-- Module      : Amazonka.EC2.DisassociateClientVpnTargetNetwork
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a target network from the specified Client VPN endpoint.
-- When you disassociate the last target network from a Client VPN, the
-- following happens:
--
-- -   The route that was automatically added for the VPC is deleted
--
-- -   All active client connections are terminated
--
-- -   New client connections are disallowed
--
-- -   The Client VPN endpoint\'s status changes to @pending-associate@
module Amazonka.EC2.DisassociateClientVpnTargetNetwork
  ( -- * Creating a Request
    DisassociateClientVpnTargetNetwork (..),
    newDisassociateClientVpnTargetNetwork,

    -- * Request Lenses
    disassociateClientVpnTargetNetwork_dryRun,
    disassociateClientVpnTargetNetwork_clientVpnEndpointId,
    disassociateClientVpnTargetNetwork_associationId,

    -- * Destructuring the Response
    DisassociateClientVpnTargetNetworkResponse (..),
    newDisassociateClientVpnTargetNetworkResponse,

    -- * Response Lenses
    disassociateClientVpnTargetNetworkResponse_status,
    disassociateClientVpnTargetNetworkResponse_associationId,
    disassociateClientVpnTargetNetworkResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisassociateClientVpnTargetNetwork' smart constructor.
data DisassociateClientVpnTargetNetwork = DisassociateClientVpnTargetNetwork'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the Client VPN endpoint from which to disassociate the target
    -- network.
    clientVpnEndpointId :: Prelude.Text,
    -- | The ID of the target network association.
    associationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateClientVpnTargetNetwork' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'disassociateClientVpnTargetNetwork_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'clientVpnEndpointId', 'disassociateClientVpnTargetNetwork_clientVpnEndpointId' - The ID of the Client VPN endpoint from which to disassociate the target
-- network.
--
-- 'associationId', 'disassociateClientVpnTargetNetwork_associationId' - The ID of the target network association.
newDisassociateClientVpnTargetNetwork ::
  -- | 'clientVpnEndpointId'
  Prelude.Text ->
  -- | 'associationId'
  Prelude.Text ->
  DisassociateClientVpnTargetNetwork
newDisassociateClientVpnTargetNetwork
  pClientVpnEndpointId_
  pAssociationId_ =
    DisassociateClientVpnTargetNetwork'
      { dryRun =
          Prelude.Nothing,
        clientVpnEndpointId =
          pClientVpnEndpointId_,
        associationId = pAssociationId_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disassociateClientVpnTargetNetwork_dryRun :: Lens.Lens' DisassociateClientVpnTargetNetwork (Prelude.Maybe Prelude.Bool)
disassociateClientVpnTargetNetwork_dryRun = Lens.lens (\DisassociateClientVpnTargetNetwork' {dryRun} -> dryRun) (\s@DisassociateClientVpnTargetNetwork' {} a -> s {dryRun = a} :: DisassociateClientVpnTargetNetwork)

-- | The ID of the Client VPN endpoint from which to disassociate the target
-- network.
disassociateClientVpnTargetNetwork_clientVpnEndpointId :: Lens.Lens' DisassociateClientVpnTargetNetwork Prelude.Text
disassociateClientVpnTargetNetwork_clientVpnEndpointId = Lens.lens (\DisassociateClientVpnTargetNetwork' {clientVpnEndpointId} -> clientVpnEndpointId) (\s@DisassociateClientVpnTargetNetwork' {} a -> s {clientVpnEndpointId = a} :: DisassociateClientVpnTargetNetwork)

-- | The ID of the target network association.
disassociateClientVpnTargetNetwork_associationId :: Lens.Lens' DisassociateClientVpnTargetNetwork Prelude.Text
disassociateClientVpnTargetNetwork_associationId = Lens.lens (\DisassociateClientVpnTargetNetwork' {associationId} -> associationId) (\s@DisassociateClientVpnTargetNetwork' {} a -> s {associationId = a} :: DisassociateClientVpnTargetNetwork)

instance
  Core.AWSRequest
    DisassociateClientVpnTargetNetwork
  where
  type
    AWSResponse DisassociateClientVpnTargetNetwork =
      DisassociateClientVpnTargetNetworkResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DisassociateClientVpnTargetNetworkResponse'
            Prelude.<$> (x Core..@? "status")
              Prelude.<*> (x Core..@? "associationId")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateClientVpnTargetNetwork
  where
  hashWithSalt
    _salt
    DisassociateClientVpnTargetNetwork' {..} =
      _salt `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` clientVpnEndpointId
        `Prelude.hashWithSalt` associationId

instance
  Prelude.NFData
    DisassociateClientVpnTargetNetwork
  where
  rnf DisassociateClientVpnTargetNetwork' {..} =
    Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf clientVpnEndpointId
      `Prelude.seq` Prelude.rnf associationId

instance
  Core.ToHeaders
    DisassociateClientVpnTargetNetwork
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DisassociateClientVpnTargetNetwork
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DisassociateClientVpnTargetNetwork
  where
  toQuery DisassociateClientVpnTargetNetwork' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DisassociateClientVpnTargetNetwork" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        "ClientVpnEndpointId" Core.=: clientVpnEndpointId,
        "AssociationId" Core.=: associationId
      ]

-- | /See:/ 'newDisassociateClientVpnTargetNetworkResponse' smart constructor.
data DisassociateClientVpnTargetNetworkResponse = DisassociateClientVpnTargetNetworkResponse'
  { -- | The current state of the target network association.
    status :: Prelude.Maybe AssociationStatus,
    -- | The ID of the target network association.
    associationId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateClientVpnTargetNetworkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'disassociateClientVpnTargetNetworkResponse_status' - The current state of the target network association.
--
-- 'associationId', 'disassociateClientVpnTargetNetworkResponse_associationId' - The ID of the target network association.
--
-- 'httpStatus', 'disassociateClientVpnTargetNetworkResponse_httpStatus' - The response's http status code.
newDisassociateClientVpnTargetNetworkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateClientVpnTargetNetworkResponse
newDisassociateClientVpnTargetNetworkResponse
  pHttpStatus_ =
    DisassociateClientVpnTargetNetworkResponse'
      { status =
          Prelude.Nothing,
        associationId = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The current state of the target network association.
disassociateClientVpnTargetNetworkResponse_status :: Lens.Lens' DisassociateClientVpnTargetNetworkResponse (Prelude.Maybe AssociationStatus)
disassociateClientVpnTargetNetworkResponse_status = Lens.lens (\DisassociateClientVpnTargetNetworkResponse' {status} -> status) (\s@DisassociateClientVpnTargetNetworkResponse' {} a -> s {status = a} :: DisassociateClientVpnTargetNetworkResponse)

-- | The ID of the target network association.
disassociateClientVpnTargetNetworkResponse_associationId :: Lens.Lens' DisassociateClientVpnTargetNetworkResponse (Prelude.Maybe Prelude.Text)
disassociateClientVpnTargetNetworkResponse_associationId = Lens.lens (\DisassociateClientVpnTargetNetworkResponse' {associationId} -> associationId) (\s@DisassociateClientVpnTargetNetworkResponse' {} a -> s {associationId = a} :: DisassociateClientVpnTargetNetworkResponse)

-- | The response's http status code.
disassociateClientVpnTargetNetworkResponse_httpStatus :: Lens.Lens' DisassociateClientVpnTargetNetworkResponse Prelude.Int
disassociateClientVpnTargetNetworkResponse_httpStatus = Lens.lens (\DisassociateClientVpnTargetNetworkResponse' {httpStatus} -> httpStatus) (\s@DisassociateClientVpnTargetNetworkResponse' {} a -> s {httpStatus = a} :: DisassociateClientVpnTargetNetworkResponse)

instance
  Prelude.NFData
    DisassociateClientVpnTargetNetworkResponse
  where
  rnf DisassociateClientVpnTargetNetworkResponse' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf associationId
      `Prelude.seq` Prelude.rnf httpStatus

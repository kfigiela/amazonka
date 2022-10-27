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
-- Module      : Amazonka.EC2.DisassociateTransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified subnets from the transit gateway multicast
-- domain.
module Amazonka.EC2.DisassociateTransitGatewayMulticastDomain
  ( -- * Creating a Request
    DisassociateTransitGatewayMulticastDomain (..),
    newDisassociateTransitGatewayMulticastDomain,

    -- * Request Lenses
    disassociateTransitGatewayMulticastDomain_transitGatewayAttachmentId,
    disassociateTransitGatewayMulticastDomain_dryRun,
    disassociateTransitGatewayMulticastDomain_transitGatewayMulticastDomainId,
    disassociateTransitGatewayMulticastDomain_subnetIds,

    -- * Destructuring the Response
    DisassociateTransitGatewayMulticastDomainResponse (..),
    newDisassociateTransitGatewayMulticastDomainResponse,

    -- * Response Lenses
    disassociateTransitGatewayMulticastDomainResponse_associations,
    disassociateTransitGatewayMulticastDomainResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisassociateTransitGatewayMulticastDomain' smart constructor.
data DisassociateTransitGatewayMulticastDomain = DisassociateTransitGatewayMulticastDomain'
  { -- | The ID of the attachment.
    transitGatewayAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the transit gateway multicast domain.
    transitGatewayMulticastDomainId :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the subnets;
    subnetIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateTransitGatewayMulticastDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transitGatewayAttachmentId', 'disassociateTransitGatewayMulticastDomain_transitGatewayAttachmentId' - The ID of the attachment.
--
-- 'dryRun', 'disassociateTransitGatewayMulticastDomain_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'transitGatewayMulticastDomainId', 'disassociateTransitGatewayMulticastDomain_transitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- 'subnetIds', 'disassociateTransitGatewayMulticastDomain_subnetIds' - The IDs of the subnets;
newDisassociateTransitGatewayMulticastDomain ::
  DisassociateTransitGatewayMulticastDomain
newDisassociateTransitGatewayMulticastDomain =
  DisassociateTransitGatewayMulticastDomain'
    { transitGatewayAttachmentId =
        Prelude.Nothing,
      dryRun = Prelude.Nothing,
      transitGatewayMulticastDomainId =
        Prelude.Nothing,
      subnetIds = Prelude.Nothing
    }

-- | The ID of the attachment.
disassociateTransitGatewayMulticastDomain_transitGatewayAttachmentId :: Lens.Lens' DisassociateTransitGatewayMulticastDomain (Prelude.Maybe Prelude.Text)
disassociateTransitGatewayMulticastDomain_transitGatewayAttachmentId = Lens.lens (\DisassociateTransitGatewayMulticastDomain' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@DisassociateTransitGatewayMulticastDomain' {} a -> s {transitGatewayAttachmentId = a} :: DisassociateTransitGatewayMulticastDomain)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disassociateTransitGatewayMulticastDomain_dryRun :: Lens.Lens' DisassociateTransitGatewayMulticastDomain (Prelude.Maybe Prelude.Bool)
disassociateTransitGatewayMulticastDomain_dryRun = Lens.lens (\DisassociateTransitGatewayMulticastDomain' {dryRun} -> dryRun) (\s@DisassociateTransitGatewayMulticastDomain' {} a -> s {dryRun = a} :: DisassociateTransitGatewayMulticastDomain)

-- | The ID of the transit gateway multicast domain.
disassociateTransitGatewayMulticastDomain_transitGatewayMulticastDomainId :: Lens.Lens' DisassociateTransitGatewayMulticastDomain (Prelude.Maybe Prelude.Text)
disassociateTransitGatewayMulticastDomain_transitGatewayMulticastDomainId = Lens.lens (\DisassociateTransitGatewayMulticastDomain' {transitGatewayMulticastDomainId} -> transitGatewayMulticastDomainId) (\s@DisassociateTransitGatewayMulticastDomain' {} a -> s {transitGatewayMulticastDomainId = a} :: DisassociateTransitGatewayMulticastDomain)

-- | The IDs of the subnets;
disassociateTransitGatewayMulticastDomain_subnetIds :: Lens.Lens' DisassociateTransitGatewayMulticastDomain (Prelude.Maybe [Prelude.Text])
disassociateTransitGatewayMulticastDomain_subnetIds = Lens.lens (\DisassociateTransitGatewayMulticastDomain' {subnetIds} -> subnetIds) (\s@DisassociateTransitGatewayMulticastDomain' {} a -> s {subnetIds = a} :: DisassociateTransitGatewayMulticastDomain) Prelude.. Lens.mapping Lens.coerced

instance
  Core.AWSRequest
    DisassociateTransitGatewayMulticastDomain
  where
  type
    AWSResponse
      DisassociateTransitGatewayMulticastDomain =
      DisassociateTransitGatewayMulticastDomainResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DisassociateTransitGatewayMulticastDomainResponse'
            Prelude.<$> (x Core..@? "associations")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateTransitGatewayMulticastDomain
  where
  hashWithSalt
    _salt
    DisassociateTransitGatewayMulticastDomain' {..} =
      _salt
        `Prelude.hashWithSalt` transitGatewayAttachmentId
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` transitGatewayMulticastDomainId
        `Prelude.hashWithSalt` subnetIds

instance
  Prelude.NFData
    DisassociateTransitGatewayMulticastDomain
  where
  rnf DisassociateTransitGatewayMulticastDomain' {..} =
    Prelude.rnf transitGatewayAttachmentId
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf transitGatewayMulticastDomainId
      `Prelude.seq` Prelude.rnf subnetIds

instance
  Core.ToHeaders
    DisassociateTransitGatewayMulticastDomain
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DisassociateTransitGatewayMulticastDomain
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DisassociateTransitGatewayMulticastDomain
  where
  toQuery
    DisassociateTransitGatewayMulticastDomain' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "DisassociateTransitGatewayMulticastDomain" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          "TransitGatewayAttachmentId"
            Core.=: transitGatewayAttachmentId,
          "DryRun" Core.=: dryRun,
          "TransitGatewayMulticastDomainId"
            Core.=: transitGatewayMulticastDomainId,
          Core.toQuery
            (Core.toQueryList "SubnetIds" Prelude.<$> subnetIds)
        ]

-- | /See:/ 'newDisassociateTransitGatewayMulticastDomainResponse' smart constructor.
data DisassociateTransitGatewayMulticastDomainResponse = DisassociateTransitGatewayMulticastDomainResponse'
  { -- | Information about the association.
    associations :: Prelude.Maybe TransitGatewayMulticastDomainAssociations,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateTransitGatewayMulticastDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associations', 'disassociateTransitGatewayMulticastDomainResponse_associations' - Information about the association.
--
-- 'httpStatus', 'disassociateTransitGatewayMulticastDomainResponse_httpStatus' - The response's http status code.
newDisassociateTransitGatewayMulticastDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateTransitGatewayMulticastDomainResponse
newDisassociateTransitGatewayMulticastDomainResponse
  pHttpStatus_ =
    DisassociateTransitGatewayMulticastDomainResponse'
      { associations =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Information about the association.
disassociateTransitGatewayMulticastDomainResponse_associations :: Lens.Lens' DisassociateTransitGatewayMulticastDomainResponse (Prelude.Maybe TransitGatewayMulticastDomainAssociations)
disassociateTransitGatewayMulticastDomainResponse_associations = Lens.lens (\DisassociateTransitGatewayMulticastDomainResponse' {associations} -> associations) (\s@DisassociateTransitGatewayMulticastDomainResponse' {} a -> s {associations = a} :: DisassociateTransitGatewayMulticastDomainResponse)

-- | The response's http status code.
disassociateTransitGatewayMulticastDomainResponse_httpStatus :: Lens.Lens' DisassociateTransitGatewayMulticastDomainResponse Prelude.Int
disassociateTransitGatewayMulticastDomainResponse_httpStatus = Lens.lens (\DisassociateTransitGatewayMulticastDomainResponse' {httpStatus} -> httpStatus) (\s@DisassociateTransitGatewayMulticastDomainResponse' {} a -> s {httpStatus = a} :: DisassociateTransitGatewayMulticastDomainResponse)

instance
  Prelude.NFData
    DisassociateTransitGatewayMulticastDomainResponse
  where
  rnf
    DisassociateTransitGatewayMulticastDomainResponse' {..} =
      Prelude.rnf associations
        `Prelude.seq` Prelude.rnf httpStatus

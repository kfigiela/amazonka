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
-- Module      : Amazonka.EC2.DisableTransitGatewayRouteTablePropagation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified resource attachment from propagating routes to
-- the specified propagation route table.
module Amazonka.EC2.DisableTransitGatewayRouteTablePropagation
  ( -- * Creating a Request
    DisableTransitGatewayRouteTablePropagation (..),
    newDisableTransitGatewayRouteTablePropagation,

    -- * Request Lenses
    disableTransitGatewayRouteTablePropagation_transitGatewayAttachmentId,
    disableTransitGatewayRouteTablePropagation_dryRun,
    disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableAnnouncementId,
    disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableId,

    -- * Destructuring the Response
    DisableTransitGatewayRouteTablePropagationResponse (..),
    newDisableTransitGatewayRouteTablePropagationResponse,

    -- * Response Lenses
    disableTransitGatewayRouteTablePropagationResponse_propagation,
    disableTransitGatewayRouteTablePropagationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisableTransitGatewayRouteTablePropagation' smart constructor.
data DisableTransitGatewayRouteTablePropagation = DisableTransitGatewayRouteTablePropagation'
  { -- | The ID of the attachment.
    transitGatewayAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the route table announcement.
    transitGatewayRouteTableAnnouncementId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the propagation route table.
    transitGatewayRouteTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableTransitGatewayRouteTablePropagation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transitGatewayAttachmentId', 'disableTransitGatewayRouteTablePropagation_transitGatewayAttachmentId' - The ID of the attachment.
--
-- 'dryRun', 'disableTransitGatewayRouteTablePropagation_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'transitGatewayRouteTableAnnouncementId', 'disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableAnnouncementId' - The ID of the route table announcement.
--
-- 'transitGatewayRouteTableId', 'disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableId' - The ID of the propagation route table.
newDisableTransitGatewayRouteTablePropagation ::
  -- | 'transitGatewayRouteTableId'
  Prelude.Text ->
  DisableTransitGatewayRouteTablePropagation
newDisableTransitGatewayRouteTablePropagation
  pTransitGatewayRouteTableId_ =
    DisableTransitGatewayRouteTablePropagation'
      { transitGatewayAttachmentId =
          Prelude.Nothing,
        dryRun = Prelude.Nothing,
        transitGatewayRouteTableAnnouncementId =
          Prelude.Nothing,
        transitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | The ID of the attachment.
disableTransitGatewayRouteTablePropagation_transitGatewayAttachmentId :: Lens.Lens' DisableTransitGatewayRouteTablePropagation (Prelude.Maybe Prelude.Text)
disableTransitGatewayRouteTablePropagation_transitGatewayAttachmentId = Lens.lens (\DisableTransitGatewayRouteTablePropagation' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@DisableTransitGatewayRouteTablePropagation' {} a -> s {transitGatewayAttachmentId = a} :: DisableTransitGatewayRouteTablePropagation)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disableTransitGatewayRouteTablePropagation_dryRun :: Lens.Lens' DisableTransitGatewayRouteTablePropagation (Prelude.Maybe Prelude.Bool)
disableTransitGatewayRouteTablePropagation_dryRun = Lens.lens (\DisableTransitGatewayRouteTablePropagation' {dryRun} -> dryRun) (\s@DisableTransitGatewayRouteTablePropagation' {} a -> s {dryRun = a} :: DisableTransitGatewayRouteTablePropagation)

-- | The ID of the route table announcement.
disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableAnnouncementId :: Lens.Lens' DisableTransitGatewayRouteTablePropagation (Prelude.Maybe Prelude.Text)
disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableAnnouncementId = Lens.lens (\DisableTransitGatewayRouteTablePropagation' {transitGatewayRouteTableAnnouncementId} -> transitGatewayRouteTableAnnouncementId) (\s@DisableTransitGatewayRouteTablePropagation' {} a -> s {transitGatewayRouteTableAnnouncementId = a} :: DisableTransitGatewayRouteTablePropagation)

-- | The ID of the propagation route table.
disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableId :: Lens.Lens' DisableTransitGatewayRouteTablePropagation Prelude.Text
disableTransitGatewayRouteTablePropagation_transitGatewayRouteTableId = Lens.lens (\DisableTransitGatewayRouteTablePropagation' {transitGatewayRouteTableId} -> transitGatewayRouteTableId) (\s@DisableTransitGatewayRouteTablePropagation' {} a -> s {transitGatewayRouteTableId = a} :: DisableTransitGatewayRouteTablePropagation)

instance
  Core.AWSRequest
    DisableTransitGatewayRouteTablePropagation
  where
  type
    AWSResponse
      DisableTransitGatewayRouteTablePropagation =
      DisableTransitGatewayRouteTablePropagationResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DisableTransitGatewayRouteTablePropagationResponse'
            Prelude.<$> (x Core..@? "propagation")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisableTransitGatewayRouteTablePropagation
  where
  hashWithSalt
    _salt
    DisableTransitGatewayRouteTablePropagation' {..} =
      _salt
        `Prelude.hashWithSalt` transitGatewayAttachmentId
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` transitGatewayRouteTableAnnouncementId
        `Prelude.hashWithSalt` transitGatewayRouteTableId

instance
  Prelude.NFData
    DisableTransitGatewayRouteTablePropagation
  where
  rnf DisableTransitGatewayRouteTablePropagation' {..} =
    Prelude.rnf transitGatewayAttachmentId
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf transitGatewayRouteTableAnnouncementId
      `Prelude.seq` Prelude.rnf transitGatewayRouteTableId

instance
  Core.ToHeaders
    DisableTransitGatewayRouteTablePropagation
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DisableTransitGatewayRouteTablePropagation
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DisableTransitGatewayRouteTablePropagation
  where
  toQuery
    DisableTransitGatewayRouteTablePropagation' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "DisableTransitGatewayRouteTablePropagation" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          "TransitGatewayAttachmentId"
            Core.=: transitGatewayAttachmentId,
          "DryRun" Core.=: dryRun,
          "TransitGatewayRouteTableAnnouncementId"
            Core.=: transitGatewayRouteTableAnnouncementId,
          "TransitGatewayRouteTableId"
            Core.=: transitGatewayRouteTableId
        ]

-- | /See:/ 'newDisableTransitGatewayRouteTablePropagationResponse' smart constructor.
data DisableTransitGatewayRouteTablePropagationResponse = DisableTransitGatewayRouteTablePropagationResponse'
  { -- | Information about route propagation.
    propagation :: Prelude.Maybe TransitGatewayPropagation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableTransitGatewayRouteTablePropagationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'propagation', 'disableTransitGatewayRouteTablePropagationResponse_propagation' - Information about route propagation.
--
-- 'httpStatus', 'disableTransitGatewayRouteTablePropagationResponse_httpStatus' - The response's http status code.
newDisableTransitGatewayRouteTablePropagationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisableTransitGatewayRouteTablePropagationResponse
newDisableTransitGatewayRouteTablePropagationResponse
  pHttpStatus_ =
    DisableTransitGatewayRouteTablePropagationResponse'
      { propagation =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Information about route propagation.
disableTransitGatewayRouteTablePropagationResponse_propagation :: Lens.Lens' DisableTransitGatewayRouteTablePropagationResponse (Prelude.Maybe TransitGatewayPropagation)
disableTransitGatewayRouteTablePropagationResponse_propagation = Lens.lens (\DisableTransitGatewayRouteTablePropagationResponse' {propagation} -> propagation) (\s@DisableTransitGatewayRouteTablePropagationResponse' {} a -> s {propagation = a} :: DisableTransitGatewayRouteTablePropagationResponse)

-- | The response's http status code.
disableTransitGatewayRouteTablePropagationResponse_httpStatus :: Lens.Lens' DisableTransitGatewayRouteTablePropagationResponse Prelude.Int
disableTransitGatewayRouteTablePropagationResponse_httpStatus = Lens.lens (\DisableTransitGatewayRouteTablePropagationResponse' {httpStatus} -> httpStatus) (\s@DisableTransitGatewayRouteTablePropagationResponse' {} a -> s {httpStatus = a} :: DisableTransitGatewayRouteTablePropagationResponse)

instance
  Prelude.NFData
    DisableTransitGatewayRouteTablePropagationResponse
  where
  rnf
    DisableTransitGatewayRouteTablePropagationResponse' {..} =
      Prelude.rnf propagation
        `Prelude.seq` Prelude.rnf httpStatus

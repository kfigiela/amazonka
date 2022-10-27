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
-- Module      : Amazonka.EC2.DisassociateAddress
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an Elastic IP address from the instance or network
-- interface it\'s associated with.
--
-- An Elastic IP address is for use in either the EC2-Classic platform or
-- in a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- We are retiring EC2-Classic. We recommend that you migrate from
-- EC2-Classic to a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html Migrate from EC2-Classic to a VPC>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- This is an idempotent operation. If you perform the operation more than
-- once, Amazon EC2 doesn\'t return an error.
module Amazonka.EC2.DisassociateAddress
  ( -- * Creating a Request
    DisassociateAddress (..),
    newDisassociateAddress,

    -- * Request Lenses
    disassociateAddress_publicIp,
    disassociateAddress_dryRun,
    disassociateAddress_associationId,

    -- * Destructuring the Response
    DisassociateAddressResponse (..),
    newDisassociateAddressResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisassociateAddress' smart constructor.
data DisassociateAddress = DisassociateAddress'
  { -- | [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
    publicIp :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | [EC2-VPC] The association ID. Required for EC2-VPC.
    associationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicIp', 'disassociateAddress_publicIp' - [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
--
-- 'dryRun', 'disassociateAddress_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'associationId', 'disassociateAddress_associationId' - [EC2-VPC] The association ID. Required for EC2-VPC.
newDisassociateAddress ::
  DisassociateAddress
newDisassociateAddress =
  DisassociateAddress'
    { publicIp = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      associationId = Prelude.Nothing
    }

-- | [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
disassociateAddress_publicIp :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Text)
disassociateAddress_publicIp = Lens.lens (\DisassociateAddress' {publicIp} -> publicIp) (\s@DisassociateAddress' {} a -> s {publicIp = a} :: DisassociateAddress)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disassociateAddress_dryRun :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Bool)
disassociateAddress_dryRun = Lens.lens (\DisassociateAddress' {dryRun} -> dryRun) (\s@DisassociateAddress' {} a -> s {dryRun = a} :: DisassociateAddress)

-- | [EC2-VPC] The association ID. Required for EC2-VPC.
disassociateAddress_associationId :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Text)
disassociateAddress_associationId = Lens.lens (\DisassociateAddress' {associationId} -> associationId) (\s@DisassociateAddress' {} a -> s {associationId = a} :: DisassociateAddress)

instance Core.AWSRequest DisassociateAddress where
  type
    AWSResponse DisassociateAddress =
      DisassociateAddressResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveNull DisassociateAddressResponse'

instance Prelude.Hashable DisassociateAddress where
  hashWithSalt _salt DisassociateAddress' {..} =
    _salt `Prelude.hashWithSalt` publicIp
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` associationId

instance Prelude.NFData DisassociateAddress where
  rnf DisassociateAddress' {..} =
    Prelude.rnf publicIp
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf associationId

instance Core.ToHeaders DisassociateAddress where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DisassociateAddress where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateAddress where
  toQuery DisassociateAddress' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DisassociateAddress" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "PublicIp" Core.=: publicIp,
        "DryRun" Core.=: dryRun,
        "AssociationId" Core.=: associationId
      ]

-- | /See:/ 'newDisassociateAddressResponse' smart constructor.
data DisassociateAddressResponse = DisassociateAddressResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAddressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateAddressResponse ::
  DisassociateAddressResponse
newDisassociateAddressResponse =
  DisassociateAddressResponse'

instance Prelude.NFData DisassociateAddressResponse where
  rnf _ = ()

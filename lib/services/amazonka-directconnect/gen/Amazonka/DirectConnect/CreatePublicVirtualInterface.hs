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
-- Module      : Amazonka.DirectConnect.CreatePublicVirtualInterface
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a public virtual interface. A virtual interface is the VLAN that
-- transports Direct Connect traffic. A public virtual interface supports
-- sending traffic to public services of Amazon Web Services such as Amazon
-- S3.
--
-- When creating an IPv6 public virtual interface (@addressFamily@ is
-- @ipv6@), leave the @customer@ and @amazon@ address fields blank to use
-- auto-assigned IPv6 space. Custom IPv6 addresses are not supported.
module Amazonka.DirectConnect.CreatePublicVirtualInterface
  ( -- * Creating a Request
    CreatePublicVirtualInterface (..),
    newCreatePublicVirtualInterface,

    -- * Request Lenses
    createPublicVirtualInterface_connectionId,
    createPublicVirtualInterface_newPublicVirtualInterface,

    -- * Destructuring the Response
    VirtualInterface (..),
    newVirtualInterface,

    -- * Response Lenses
    virtualInterface_tags,
    virtualInterface_addressFamily,
    virtualInterface_authKey,
    virtualInterface_directConnectGatewayId,
    virtualInterface_virtualInterfaceType,
    virtualInterface_jumboFrameCapable,
    virtualInterface_routeFilterPrefixes,
    virtualInterface_virtualGatewayId,
    virtualInterface_vlan,
    virtualInterface_connectionId,
    virtualInterface_customerAddress,
    virtualInterface_virtualInterfaceState,
    virtualInterface_asn,
    virtualInterface_location,
    virtualInterface_region,
    virtualInterface_siteLinkEnabled,
    virtualInterface_amazonAddress,
    virtualInterface_virtualInterfaceId,
    virtualInterface_bgpPeers,
    virtualInterface_customerRouterConfig,
    virtualInterface_amazonSideAsn,
    virtualInterface_mtu,
    virtualInterface_ownerAccount,
    virtualInterface_awsLogicalDeviceId,
    virtualInterface_virtualInterfaceName,
    virtualInterface_awsDeviceV2,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreatePublicVirtualInterface' smart constructor.
data CreatePublicVirtualInterface = CreatePublicVirtualInterface'
  { -- | The ID of the connection.
    connectionId :: Prelude.Text,
    -- | Information about the public virtual interface.
    newPublicVirtualInterface' :: NewPublicVirtualInterface
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePublicVirtualInterface' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionId', 'createPublicVirtualInterface_connectionId' - The ID of the connection.
--
-- 'newPublicVirtualInterface'', 'createPublicVirtualInterface_newPublicVirtualInterface' - Information about the public virtual interface.
newCreatePublicVirtualInterface ::
  -- | 'connectionId'
  Prelude.Text ->
  -- | 'newPublicVirtualInterface''
  NewPublicVirtualInterface ->
  CreatePublicVirtualInterface
newCreatePublicVirtualInterface
  pConnectionId_
  pNewPublicVirtualInterface_ =
    CreatePublicVirtualInterface'
      { connectionId =
          pConnectionId_,
        newPublicVirtualInterface' =
          pNewPublicVirtualInterface_
      }

-- | The ID of the connection.
createPublicVirtualInterface_connectionId :: Lens.Lens' CreatePublicVirtualInterface Prelude.Text
createPublicVirtualInterface_connectionId = Lens.lens (\CreatePublicVirtualInterface' {connectionId} -> connectionId) (\s@CreatePublicVirtualInterface' {} a -> s {connectionId = a} :: CreatePublicVirtualInterface)

-- | Information about the public virtual interface.
createPublicVirtualInterface_newPublicVirtualInterface :: Lens.Lens' CreatePublicVirtualInterface NewPublicVirtualInterface
createPublicVirtualInterface_newPublicVirtualInterface = Lens.lens (\CreatePublicVirtualInterface' {newPublicVirtualInterface'} -> newPublicVirtualInterface') (\s@CreatePublicVirtualInterface' {} a -> s {newPublicVirtualInterface' = a} :: CreatePublicVirtualInterface)

instance Core.AWSRequest CreatePublicVirtualInterface where
  type
    AWSResponse CreatePublicVirtualInterface =
      VirtualInterface
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance
  Prelude.Hashable
    CreatePublicVirtualInterface
  where
  hashWithSalt _salt CreatePublicVirtualInterface' {..} =
    _salt `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` newPublicVirtualInterface'

instance Prelude.NFData CreatePublicVirtualInterface where
  rnf CreatePublicVirtualInterface' {..} =
    Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf newPublicVirtualInterface'

instance Core.ToHeaders CreatePublicVirtualInterface where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.CreatePublicVirtualInterface" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePublicVirtualInterface where
  toJSON CreatePublicVirtualInterface' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("connectionId" Core..= connectionId),
            Prelude.Just
              ( "newPublicVirtualInterface"
                  Core..= newPublicVirtualInterface'
              )
          ]
      )

instance Core.ToPath CreatePublicVirtualInterface where
  toPath = Prelude.const "/"

instance Core.ToQuery CreatePublicVirtualInterface where
  toQuery = Prelude.const Prelude.mempty

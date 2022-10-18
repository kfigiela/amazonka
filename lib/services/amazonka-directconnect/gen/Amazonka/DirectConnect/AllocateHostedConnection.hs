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
-- Module      : Amazonka.DirectConnect.AllocateHostedConnection
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a hosted connection on the specified interconnect or a link
-- aggregation group (LAG) of interconnects.
--
-- Allocates a VLAN number and a specified amount of capacity (bandwidth)
-- for use by a hosted connection on the specified interconnect or LAG of
-- interconnects. Amazon Web Services polices the hosted connection for the
-- specified capacity and the Direct Connect Partner must also police the
-- hosted connection for the specified capacity.
--
-- Intended for use by Direct Connect Partners only.
module Amazonka.DirectConnect.AllocateHostedConnection
  ( -- * Creating a Request
    AllocateHostedConnection (..),
    newAllocateHostedConnection,

    -- * Request Lenses
    allocateHostedConnection_tags,
    allocateHostedConnection_connectionId,
    allocateHostedConnection_ownerAccount,
    allocateHostedConnection_bandwidth,
    allocateHostedConnection_connectionName,
    allocateHostedConnection_vlan,

    -- * Destructuring the Response
    Connection (..),
    newConnection,

    -- * Response Lenses
    connection_tags,
    connection_macSecKeys,
    connection_macSecCapable,
    connection_providerName,
    connection_bandwidth,
    connection_jumboFrameCapable,
    connection_portEncryptionStatus,
    connection_lagId,
    connection_connectionState,
    connection_hasLogicalRedundancy,
    connection_vlan,
    connection_loaIssueTime,
    connection_awsDevice,
    connection_connectionId,
    connection_location,
    connection_region,
    connection_partnerName,
    connection_ownerAccount,
    connection_awsLogicalDeviceId,
    connection_encryptionMode,
    connection_connectionName,
    connection_awsDeviceV2,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newAllocateHostedConnection' smart constructor.
data AllocateHostedConnection = AllocateHostedConnection'
  { -- | The tags associated with the connection.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The ID of the interconnect or LAG.
    connectionId :: Prelude.Text,
    -- | The ID of the Amazon Web Services account ID of the customer for the
    -- connection.
    ownerAccount :: Prelude.Text,
    -- | The bandwidth of the connection. The possible values are 50Mbps,
    -- 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
    -- 10Gbps. Note that only those Direct Connect Partners who have met
    -- specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
    -- 10Gbps hosted connection.
    bandwidth :: Prelude.Text,
    -- | The name of the hosted connection.
    connectionName :: Prelude.Text,
    -- | The dedicated VLAN provisioned to the hosted connection.
    vlan :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AllocateHostedConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'allocateHostedConnection_tags' - The tags associated with the connection.
--
-- 'connectionId', 'allocateHostedConnection_connectionId' - The ID of the interconnect or LAG.
--
-- 'ownerAccount', 'allocateHostedConnection_ownerAccount' - The ID of the Amazon Web Services account ID of the customer for the
-- connection.
--
-- 'bandwidth', 'allocateHostedConnection_bandwidth' - The bandwidth of the connection. The possible values are 50Mbps,
-- 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
-- 10Gbps. Note that only those Direct Connect Partners who have met
-- specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
-- 10Gbps hosted connection.
--
-- 'connectionName', 'allocateHostedConnection_connectionName' - The name of the hosted connection.
--
-- 'vlan', 'allocateHostedConnection_vlan' - The dedicated VLAN provisioned to the hosted connection.
newAllocateHostedConnection ::
  -- | 'connectionId'
  Prelude.Text ->
  -- | 'ownerAccount'
  Prelude.Text ->
  -- | 'bandwidth'
  Prelude.Text ->
  -- | 'connectionName'
  Prelude.Text ->
  -- | 'vlan'
  Prelude.Int ->
  AllocateHostedConnection
newAllocateHostedConnection
  pConnectionId_
  pOwnerAccount_
  pBandwidth_
  pConnectionName_
  pVlan_ =
    AllocateHostedConnection'
      { tags = Prelude.Nothing,
        connectionId = pConnectionId_,
        ownerAccount = pOwnerAccount_,
        bandwidth = pBandwidth_,
        connectionName = pConnectionName_,
        vlan = pVlan_
      }

-- | The tags associated with the connection.
allocateHostedConnection_tags :: Lens.Lens' AllocateHostedConnection (Prelude.Maybe (Prelude.NonEmpty Tag))
allocateHostedConnection_tags = Lens.lens (\AllocateHostedConnection' {tags} -> tags) (\s@AllocateHostedConnection' {} a -> s {tags = a} :: AllocateHostedConnection) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the interconnect or LAG.
allocateHostedConnection_connectionId :: Lens.Lens' AllocateHostedConnection Prelude.Text
allocateHostedConnection_connectionId = Lens.lens (\AllocateHostedConnection' {connectionId} -> connectionId) (\s@AllocateHostedConnection' {} a -> s {connectionId = a} :: AllocateHostedConnection)

-- | The ID of the Amazon Web Services account ID of the customer for the
-- connection.
allocateHostedConnection_ownerAccount :: Lens.Lens' AllocateHostedConnection Prelude.Text
allocateHostedConnection_ownerAccount = Lens.lens (\AllocateHostedConnection' {ownerAccount} -> ownerAccount) (\s@AllocateHostedConnection' {} a -> s {ownerAccount = a} :: AllocateHostedConnection)

-- | The bandwidth of the connection. The possible values are 50Mbps,
-- 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
-- 10Gbps. Note that only those Direct Connect Partners who have met
-- specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
-- 10Gbps hosted connection.
allocateHostedConnection_bandwidth :: Lens.Lens' AllocateHostedConnection Prelude.Text
allocateHostedConnection_bandwidth = Lens.lens (\AllocateHostedConnection' {bandwidth} -> bandwidth) (\s@AllocateHostedConnection' {} a -> s {bandwidth = a} :: AllocateHostedConnection)

-- | The name of the hosted connection.
allocateHostedConnection_connectionName :: Lens.Lens' AllocateHostedConnection Prelude.Text
allocateHostedConnection_connectionName = Lens.lens (\AllocateHostedConnection' {connectionName} -> connectionName) (\s@AllocateHostedConnection' {} a -> s {connectionName = a} :: AllocateHostedConnection)

-- | The dedicated VLAN provisioned to the hosted connection.
allocateHostedConnection_vlan :: Lens.Lens' AllocateHostedConnection Prelude.Int
allocateHostedConnection_vlan = Lens.lens (\AllocateHostedConnection' {vlan} -> vlan) (\s@AllocateHostedConnection' {} a -> s {vlan = a} :: AllocateHostedConnection)

instance Core.AWSRequest AllocateHostedConnection where
  type
    AWSResponse AllocateHostedConnection =
      Connection
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.AWSService AllocateHostedConnection where
  service _proxy = defaultService

instance Prelude.Hashable AllocateHostedConnection where
  hashWithSalt _salt AllocateHostedConnection' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` ownerAccount
      `Prelude.hashWithSalt` bandwidth
      `Prelude.hashWithSalt` connectionName
      `Prelude.hashWithSalt` vlan

instance Prelude.NFData AllocateHostedConnection where
  rnf AllocateHostedConnection' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf ownerAccount
      `Prelude.seq` Prelude.rnf bandwidth
      `Prelude.seq` Prelude.rnf connectionName
      `Prelude.seq` Prelude.rnf vlan

instance Core.ToHeaders AllocateHostedConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.AllocateHostedConnection" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AllocateHostedConnection where
  toJSON AllocateHostedConnection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("connectionId" Core..= connectionId),
            Prelude.Just ("ownerAccount" Core..= ownerAccount),
            Prelude.Just ("bandwidth" Core..= bandwidth),
            Prelude.Just
              ("connectionName" Core..= connectionName),
            Prelude.Just ("vlan" Core..= vlan)
          ]
      )

instance Core.ToPath AllocateHostedConnection where
  toPath = Prelude.const "/"

instance Core.ToQuery AllocateHostedConnection where
  toQuery = Prelude.const Prelude.mempty

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
-- Module      : Amazonka.DirectConnect.CreateConnection
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connection between a customer network and a specific Direct
-- Connect location.
--
-- A connection links your internal network to an Direct Connect location
-- over a standard Ethernet fiber-optic cable. One end of the cable is
-- connected to your router, the other to an Direct Connect router.
--
-- To find the locations for your Region, use DescribeLocations.
--
-- You can automatically add the new connection to a link aggregation group
-- (LAG) by specifying a LAG ID in the request. This ensures that the new
-- connection is allocated on the same Direct Connect endpoint that hosts
-- the specified LAG. If there are no available ports on the endpoint, the
-- request fails and no connection is created.
module Amazonka.DirectConnect.CreateConnection
  ( -- * Creating a Request
    CreateConnection (..),
    newCreateConnection,

    -- * Request Lenses
    createConnection_tags,
    createConnection_providerName,
    createConnection_lagId,
    createConnection_requestMACSec,
    createConnection_location,
    createConnection_bandwidth,
    createConnection_connectionName,

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

-- | /See:/ 'newCreateConnection' smart constructor.
data CreateConnection = CreateConnection'
  { -- | The tags to associate with the lag.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The name of the service provider associated with the requested
    -- connection.
    providerName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the LAG.
    lagId :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether you want the connection to support MAC Security
    -- (MACsec).
    --
    -- MAC Security (MACsec) is only available on dedicated connections. For
    -- information about MAC Security (MACsec) prerequisties, see
    -- <https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites MACsec prerequisties>
    -- in the /Direct Connect User Guide/.
    requestMACSec :: Prelude.Maybe Prelude.Bool,
    -- | The location of the connection.
    location :: Prelude.Text,
    -- | The bandwidth of the connection.
    bandwidth :: Prelude.Text,
    -- | The name of the connection.
    connectionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createConnection_tags' - The tags to associate with the lag.
--
-- 'providerName', 'createConnection_providerName' - The name of the service provider associated with the requested
-- connection.
--
-- 'lagId', 'createConnection_lagId' - The ID of the LAG.
--
-- 'requestMACSec', 'createConnection_requestMACSec' - Indicates whether you want the connection to support MAC Security
-- (MACsec).
--
-- MAC Security (MACsec) is only available on dedicated connections. For
-- information about MAC Security (MACsec) prerequisties, see
-- <https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites MACsec prerequisties>
-- in the /Direct Connect User Guide/.
--
-- 'location', 'createConnection_location' - The location of the connection.
--
-- 'bandwidth', 'createConnection_bandwidth' - The bandwidth of the connection.
--
-- 'connectionName', 'createConnection_connectionName' - The name of the connection.
newCreateConnection ::
  -- | 'location'
  Prelude.Text ->
  -- | 'bandwidth'
  Prelude.Text ->
  -- | 'connectionName'
  Prelude.Text ->
  CreateConnection
newCreateConnection
  pLocation_
  pBandwidth_
  pConnectionName_ =
    CreateConnection'
      { tags = Prelude.Nothing,
        providerName = Prelude.Nothing,
        lagId = Prelude.Nothing,
        requestMACSec = Prelude.Nothing,
        location = pLocation_,
        bandwidth = pBandwidth_,
        connectionName = pConnectionName_
      }

-- | The tags to associate with the lag.
createConnection_tags :: Lens.Lens' CreateConnection (Prelude.Maybe (Prelude.NonEmpty Tag))
createConnection_tags = Lens.lens (\CreateConnection' {tags} -> tags) (\s@CreateConnection' {} a -> s {tags = a} :: CreateConnection) Prelude.. Lens.mapping Lens.coerced

-- | The name of the service provider associated with the requested
-- connection.
createConnection_providerName :: Lens.Lens' CreateConnection (Prelude.Maybe Prelude.Text)
createConnection_providerName = Lens.lens (\CreateConnection' {providerName} -> providerName) (\s@CreateConnection' {} a -> s {providerName = a} :: CreateConnection)

-- | The ID of the LAG.
createConnection_lagId :: Lens.Lens' CreateConnection (Prelude.Maybe Prelude.Text)
createConnection_lagId = Lens.lens (\CreateConnection' {lagId} -> lagId) (\s@CreateConnection' {} a -> s {lagId = a} :: CreateConnection)

-- | Indicates whether you want the connection to support MAC Security
-- (MACsec).
--
-- MAC Security (MACsec) is only available on dedicated connections. For
-- information about MAC Security (MACsec) prerequisties, see
-- <https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites MACsec prerequisties>
-- in the /Direct Connect User Guide/.
createConnection_requestMACSec :: Lens.Lens' CreateConnection (Prelude.Maybe Prelude.Bool)
createConnection_requestMACSec = Lens.lens (\CreateConnection' {requestMACSec} -> requestMACSec) (\s@CreateConnection' {} a -> s {requestMACSec = a} :: CreateConnection)

-- | The location of the connection.
createConnection_location :: Lens.Lens' CreateConnection Prelude.Text
createConnection_location = Lens.lens (\CreateConnection' {location} -> location) (\s@CreateConnection' {} a -> s {location = a} :: CreateConnection)

-- | The bandwidth of the connection.
createConnection_bandwidth :: Lens.Lens' CreateConnection Prelude.Text
createConnection_bandwidth = Lens.lens (\CreateConnection' {bandwidth} -> bandwidth) (\s@CreateConnection' {} a -> s {bandwidth = a} :: CreateConnection)

-- | The name of the connection.
createConnection_connectionName :: Lens.Lens' CreateConnection Prelude.Text
createConnection_connectionName = Lens.lens (\CreateConnection' {connectionName} -> connectionName) (\s@CreateConnection' {} a -> s {connectionName = a} :: CreateConnection)

instance Core.AWSRequest CreateConnection where
  type AWSResponse CreateConnection = Connection
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateConnection where
  hashWithSalt _salt CreateConnection' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` providerName
      `Prelude.hashWithSalt` lagId
      `Prelude.hashWithSalt` requestMACSec
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` bandwidth
      `Prelude.hashWithSalt` connectionName

instance Prelude.NFData CreateConnection where
  rnf CreateConnection' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf providerName
      `Prelude.seq` Prelude.rnf lagId
      `Prelude.seq` Prelude.rnf requestMACSec
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf bandwidth
      `Prelude.seq` Prelude.rnf connectionName

instance Core.ToHeaders CreateConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.CreateConnection" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateConnection where
  toJSON CreateConnection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("providerName" Core..=) Prelude.<$> providerName,
            ("lagId" Core..=) Prelude.<$> lagId,
            ("requestMACSec" Core..=) Prelude.<$> requestMACSec,
            Prelude.Just ("location" Core..= location),
            Prelude.Just ("bandwidth" Core..= bandwidth),
            Prelude.Just
              ("connectionName" Core..= connectionName)
          ]
      )

instance Core.ToPath CreateConnection where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateConnection where
  toQuery = Prelude.const Prelude.mempty

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
-- Module      : Amazonka.DirectConnect.DisassociateConnectionFromLag
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a connection from a link aggregation group (LAG). The
-- connection is interrupted and re-established as a standalone connection
-- (the connection is not deleted; to delete the connection, use the
-- DeleteConnection request). If the LAG has associated virtual interfaces
-- or hosted connections, they remain associated with the LAG. A
-- disassociated connection owned by an Direct Connect Partner is
-- automatically converted to an interconnect.
--
-- If disassociating the connection would cause the LAG to fall below its
-- setting for minimum number of operational connections, the request
-- fails, except when it\'s the last member of the LAG. If all connections
-- are disassociated, the LAG continues to exist as an empty LAG with no
-- physical connections.
module Amazonka.DirectConnect.DisassociateConnectionFromLag
  ( -- * Creating a Request
    DisassociateConnectionFromLag (..),
    newDisassociateConnectionFromLag,

    -- * Request Lenses
    disassociateConnectionFromLag_connectionId,
    disassociateConnectionFromLag_lagId,

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

-- | /See:/ 'newDisassociateConnectionFromLag' smart constructor.
data DisassociateConnectionFromLag = DisassociateConnectionFromLag'
  { -- | The ID of the connection.
    connectionId :: Prelude.Text,
    -- | The ID of the LAG.
    lagId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateConnectionFromLag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionId', 'disassociateConnectionFromLag_connectionId' - The ID of the connection.
--
-- 'lagId', 'disassociateConnectionFromLag_lagId' - The ID of the LAG.
newDisassociateConnectionFromLag ::
  -- | 'connectionId'
  Prelude.Text ->
  -- | 'lagId'
  Prelude.Text ->
  DisassociateConnectionFromLag
newDisassociateConnectionFromLag
  pConnectionId_
  pLagId_ =
    DisassociateConnectionFromLag'
      { connectionId =
          pConnectionId_,
        lagId = pLagId_
      }

-- | The ID of the connection.
disassociateConnectionFromLag_connectionId :: Lens.Lens' DisassociateConnectionFromLag Prelude.Text
disassociateConnectionFromLag_connectionId = Lens.lens (\DisassociateConnectionFromLag' {connectionId} -> connectionId) (\s@DisassociateConnectionFromLag' {} a -> s {connectionId = a} :: DisassociateConnectionFromLag)

-- | The ID of the LAG.
disassociateConnectionFromLag_lagId :: Lens.Lens' DisassociateConnectionFromLag Prelude.Text
disassociateConnectionFromLag_lagId = Lens.lens (\DisassociateConnectionFromLag' {lagId} -> lagId) (\s@DisassociateConnectionFromLag' {} a -> s {lagId = a} :: DisassociateConnectionFromLag)

instance
  Core.AWSRequest
    DisassociateConnectionFromLag
  where
  type
    AWSResponse DisassociateConnectionFromLag =
      Connection
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance
  Prelude.Hashable
    DisassociateConnectionFromLag
  where
  hashWithSalt _salt DisassociateConnectionFromLag' {..} =
    _salt `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` lagId

instance Prelude.NFData DisassociateConnectionFromLag where
  rnf DisassociateConnectionFromLag' {..} =
    Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf lagId

instance Core.ToHeaders DisassociateConnectionFromLag where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.DisassociateConnectionFromLag" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateConnectionFromLag where
  toJSON DisassociateConnectionFromLag' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("connectionId" Core..= connectionId),
            Prelude.Just ("lagId" Core..= lagId)
          ]
      )

instance Core.ToPath DisassociateConnectionFromLag where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateConnectionFromLag where
  toQuery = Prelude.const Prelude.mempty

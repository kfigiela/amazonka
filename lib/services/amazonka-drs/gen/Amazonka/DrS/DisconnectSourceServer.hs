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
-- Module      : Amazonka.DrS.DisconnectSourceServer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disconnects a specific Source Server from Elastic Disaster Recovery.
-- Data replication is stopped immediately. All AWS resources created by
-- Elastic Disaster Recovery for enabling the replication of the Source
-- Server will be terminated \/ deleted within 90 minutes. You cannot
-- disconnect a Source Server if it has a Recovery Instance. If the agent
-- on the Source Server has not been prevented from communicating with the
-- Elastic Disaster Recovery service, then it will receive a command to
-- uninstall itself (within approximately 10 minutes). The following
-- properties of the SourceServer will be changed immediately:
-- dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
-- The totalStorageBytes property for each of
-- dataReplicationInfo.replicatedDisks will be set to zero;
-- dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will
-- be nullified.
module Amazonka.DrS.DisconnectSourceServer
  ( -- * Creating a Request
    DisconnectSourceServer (..),
    newDisconnectSourceServer,

    -- * Request Lenses
    disconnectSourceServer_sourceServerID,

    -- * Destructuring the Response
    SourceServer (..),
    newSourceServer,

    -- * Response Lenses
    sourceServer_tags,
    sourceServer_lifeCycle,
    sourceServer_recoveryInstanceId,
    sourceServer_arn,
    sourceServer_lastLaunchResult,
    sourceServer_dataReplicationInfo,
    sourceServer_stagingArea,
    sourceServer_sourceServerID,
    sourceServer_sourceProperties,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisconnectSourceServer' smart constructor.
data DisconnectSourceServer = DisconnectSourceServer'
  { -- | The ID of the Source Server to disconnect.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisconnectSourceServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'disconnectSourceServer_sourceServerID' - The ID of the Source Server to disconnect.
newDisconnectSourceServer ::
  -- | 'sourceServerID'
  Prelude.Text ->
  DisconnectSourceServer
newDisconnectSourceServer pSourceServerID_ =
  DisconnectSourceServer'
    { sourceServerID =
        pSourceServerID_
    }

-- | The ID of the Source Server to disconnect.
disconnectSourceServer_sourceServerID :: Lens.Lens' DisconnectSourceServer Prelude.Text
disconnectSourceServer_sourceServerID = Lens.lens (\DisconnectSourceServer' {sourceServerID} -> sourceServerID) (\s@DisconnectSourceServer' {} a -> s {sourceServerID = a} :: DisconnectSourceServer)

instance Core.AWSRequest DisconnectSourceServer where
  type
    AWSResponse DisconnectSourceServer =
      SourceServer
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable DisconnectSourceServer where
  hashWithSalt _salt DisconnectSourceServer' {..} =
    _salt `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData DisconnectSourceServer where
  rnf DisconnectSourceServer' {..} =
    Prelude.rnf sourceServerID

instance Core.ToHeaders DisconnectSourceServer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisconnectSourceServer where
  toJSON DisconnectSourceServer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath DisconnectSourceServer where
  toPath = Prelude.const "/DisconnectSourceServer"

instance Core.ToQuery DisconnectSourceServer where
  toQuery = Prelude.const Prelude.mempty

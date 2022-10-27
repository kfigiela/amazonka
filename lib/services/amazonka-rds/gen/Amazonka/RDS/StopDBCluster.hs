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
-- Module      : Amazonka.RDS.StopDBCluster
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
-- retains the DB cluster\'s metadata, including its endpoints and DB
-- parameter groups. Aurora also retains the transaction logs so you can do
-- a point-in-time restore if necessary.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html Stopping and Starting an Aurora Cluster>
-- in the /Amazon Aurora User Guide/.
--
-- This action only applies to Aurora DB clusters.
module Amazonka.RDS.StopDBCluster
  ( -- * Creating a Request
    StopDBCluster (..),
    newStopDBCluster,

    -- * Request Lenses
    stopDBCluster_dbClusterIdentifier,

    -- * Destructuring the Response
    StopDBClusterResponse (..),
    newStopDBClusterResponse,

    -- * Response Lenses
    stopDBClusterResponse_dbCluster,
    stopDBClusterResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStopDBCluster' smart constructor.
data StopDBCluster = StopDBCluster'
  { -- | The DB cluster identifier of the Amazon Aurora DB cluster to be stopped.
    -- This parameter is stored as a lowercase string.
    dbClusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterIdentifier', 'stopDBCluster_dbClusterIdentifier' - The DB cluster identifier of the Amazon Aurora DB cluster to be stopped.
-- This parameter is stored as a lowercase string.
newStopDBCluster ::
  -- | 'dbClusterIdentifier'
  Prelude.Text ->
  StopDBCluster
newStopDBCluster pDBClusterIdentifier_ =
  StopDBCluster'
    { dbClusterIdentifier =
        pDBClusterIdentifier_
    }

-- | The DB cluster identifier of the Amazon Aurora DB cluster to be stopped.
-- This parameter is stored as a lowercase string.
stopDBCluster_dbClusterIdentifier :: Lens.Lens' StopDBCluster Prelude.Text
stopDBCluster_dbClusterIdentifier = Lens.lens (\StopDBCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@StopDBCluster' {} a -> s {dbClusterIdentifier = a} :: StopDBCluster)

instance Core.AWSRequest StopDBCluster where
  type
    AWSResponse StopDBCluster =
      StopDBClusterResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "StopDBClusterResult"
      ( \s h x ->
          StopDBClusterResponse'
            Prelude.<$> (x Core..@? "DBCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopDBCluster where
  hashWithSalt _salt StopDBCluster' {..} =
    _salt `Prelude.hashWithSalt` dbClusterIdentifier

instance Prelude.NFData StopDBCluster where
  rnf StopDBCluster' {..} =
    Prelude.rnf dbClusterIdentifier

instance Core.ToHeaders StopDBCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath StopDBCluster where
  toPath = Prelude.const "/"

instance Core.ToQuery StopDBCluster where
  toQuery StopDBCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("StopDBCluster" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterIdentifier" Core.=: dbClusterIdentifier
      ]

-- | /See:/ 'newStopDBClusterResponse' smart constructor.
data StopDBClusterResponse = StopDBClusterResponse'
  { dbCluster :: Prelude.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbCluster', 'stopDBClusterResponse_dbCluster' - Undocumented member.
--
-- 'httpStatus', 'stopDBClusterResponse_httpStatus' - The response's http status code.
newStopDBClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopDBClusterResponse
newStopDBClusterResponse pHttpStatus_ =
  StopDBClusterResponse'
    { dbCluster = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
stopDBClusterResponse_dbCluster :: Lens.Lens' StopDBClusterResponse (Prelude.Maybe DBCluster)
stopDBClusterResponse_dbCluster = Lens.lens (\StopDBClusterResponse' {dbCluster} -> dbCluster) (\s@StopDBClusterResponse' {} a -> s {dbCluster = a} :: StopDBClusterResponse)

-- | The response's http status code.
stopDBClusterResponse_httpStatus :: Lens.Lens' StopDBClusterResponse Prelude.Int
stopDBClusterResponse_httpStatus = Lens.lens (\StopDBClusterResponse' {httpStatus} -> httpStatus) (\s@StopDBClusterResponse' {} a -> s {httpStatus = a} :: StopDBClusterResponse)

instance Prelude.NFData StopDBClusterResponse where
  rnf StopDBClusterResponse' {..} =
    Prelude.rnf dbCluster
      `Prelude.seq` Prelude.rnf httpStatus

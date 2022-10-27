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
-- Module      : Amazonka.Redshift.CancelResize
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a resize operation for a cluster.
module Amazonka.Redshift.CancelResize
  ( -- * Creating a Request
    CancelResize (..),
    newCancelResize,

    -- * Request Lenses
    cancelResize_clusterIdentifier,

    -- * Destructuring the Response
    ResizeProgressMessage (..),
    newResizeProgressMessage,

    -- * Response Lenses
    resizeProgressMessage_message,
    resizeProgressMessage_targetEncryptionType,
    resizeProgressMessage_avgResizeRateInMegaBytesPerSecond,
    resizeProgressMessage_targetClusterType,
    resizeProgressMessage_dataTransferProgressPercent,
    resizeProgressMessage_targetNumberOfNodes,
    resizeProgressMessage_totalResizeDataInMegaBytes,
    resizeProgressMessage_importTablesNotStarted,
    resizeProgressMessage_status,
    resizeProgressMessage_elapsedTimeInSeconds,
    resizeProgressMessage_importTablesCompleted,
    resizeProgressMessage_progressInMegaBytes,
    resizeProgressMessage_importTablesInProgress,
    resizeProgressMessage_estimatedTimeToCompletionInSeconds,
    resizeProgressMessage_targetNodeType,
    resizeProgressMessage_resizeType,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCancelResize' smart constructor.
data CancelResize = CancelResize'
  { -- | The unique identifier for the cluster that you want to cancel a resize
    -- operation for.
    clusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelResize' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterIdentifier', 'cancelResize_clusterIdentifier' - The unique identifier for the cluster that you want to cancel a resize
-- operation for.
newCancelResize ::
  -- | 'clusterIdentifier'
  Prelude.Text ->
  CancelResize
newCancelResize pClusterIdentifier_ =
  CancelResize'
    { clusterIdentifier =
        pClusterIdentifier_
    }

-- | The unique identifier for the cluster that you want to cancel a resize
-- operation for.
cancelResize_clusterIdentifier :: Lens.Lens' CancelResize Prelude.Text
cancelResize_clusterIdentifier = Lens.lens (\CancelResize' {clusterIdentifier} -> clusterIdentifier) (\s@CancelResize' {} a -> s {clusterIdentifier = a} :: CancelResize)

instance Core.AWSRequest CancelResize where
  type AWSResponse CancelResize = ResizeProgressMessage
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CancelResizeResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable CancelResize where
  hashWithSalt _salt CancelResize' {..} =
    _salt `Prelude.hashWithSalt` clusterIdentifier

instance Prelude.NFData CancelResize where
  rnf CancelResize' {..} = Prelude.rnf clusterIdentifier

instance Core.ToHeaders CancelResize where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CancelResize where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelResize where
  toQuery CancelResize' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CancelResize" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "ClusterIdentifier" Core.=: clusterIdentifier
      ]

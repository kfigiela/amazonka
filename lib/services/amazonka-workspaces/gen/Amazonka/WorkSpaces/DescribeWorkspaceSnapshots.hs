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
-- Module      : Amazonka.WorkSpaces.DescribeWorkspaceSnapshots
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the snapshots for the specified WorkSpace.
module Amazonka.WorkSpaces.DescribeWorkspaceSnapshots
  ( -- * Creating a Request
    DescribeWorkspaceSnapshots (..),
    newDescribeWorkspaceSnapshots,

    -- * Request Lenses
    describeWorkspaceSnapshots_workspaceId,

    -- * Destructuring the Response
    DescribeWorkspaceSnapshotsResponse (..),
    newDescribeWorkspaceSnapshotsResponse,

    -- * Response Lenses
    describeWorkspaceSnapshotsResponse_restoreSnapshots,
    describeWorkspaceSnapshotsResponse_rebuildSnapshots,
    describeWorkspaceSnapshotsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpaces.Types

-- | /See:/ 'newDescribeWorkspaceSnapshots' smart constructor.
data DescribeWorkspaceSnapshots = DescribeWorkspaceSnapshots'
  { -- | The identifier of the WorkSpace.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkspaceSnapshots' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workspaceId', 'describeWorkspaceSnapshots_workspaceId' - The identifier of the WorkSpace.
newDescribeWorkspaceSnapshots ::
  -- | 'workspaceId'
  Prelude.Text ->
  DescribeWorkspaceSnapshots
newDescribeWorkspaceSnapshots pWorkspaceId_ =
  DescribeWorkspaceSnapshots'
    { workspaceId =
        pWorkspaceId_
    }

-- | The identifier of the WorkSpace.
describeWorkspaceSnapshots_workspaceId :: Lens.Lens' DescribeWorkspaceSnapshots Prelude.Text
describeWorkspaceSnapshots_workspaceId = Lens.lens (\DescribeWorkspaceSnapshots' {workspaceId} -> workspaceId) (\s@DescribeWorkspaceSnapshots' {} a -> s {workspaceId = a} :: DescribeWorkspaceSnapshots)

instance Core.AWSRequest DescribeWorkspaceSnapshots where
  type
    AWSResponse DescribeWorkspaceSnapshots =
      DescribeWorkspaceSnapshotsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorkspaceSnapshotsResponse'
            Prelude.<$> ( x Core..?> "RestoreSnapshots"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "RebuildSnapshots"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeWorkspaceSnapshots where
  hashWithSalt _salt DescribeWorkspaceSnapshots' {..} =
    _salt `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData DescribeWorkspaceSnapshots where
  rnf DescribeWorkspaceSnapshots' {..} =
    Prelude.rnf workspaceId

instance Core.ToHeaders DescribeWorkspaceSnapshots where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkspacesService.DescribeWorkspaceSnapshots" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeWorkspaceSnapshots where
  toJSON DescribeWorkspaceSnapshots' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("WorkspaceId" Core..= workspaceId)]
      )

instance Core.ToPath DescribeWorkspaceSnapshots where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeWorkspaceSnapshots where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWorkspaceSnapshotsResponse' smart constructor.
data DescribeWorkspaceSnapshotsResponse = DescribeWorkspaceSnapshotsResponse'
  { -- | Information about the snapshots that can be used to restore a WorkSpace.
    -- These snapshots include both the root volume and the user volume.
    restoreSnapshots :: Prelude.Maybe [Snapshot],
    -- | Information about the snapshots that can be used to rebuild a WorkSpace.
    -- These snapshots include the user volume.
    rebuildSnapshots :: Prelude.Maybe [Snapshot],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkspaceSnapshotsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'restoreSnapshots', 'describeWorkspaceSnapshotsResponse_restoreSnapshots' - Information about the snapshots that can be used to restore a WorkSpace.
-- These snapshots include both the root volume and the user volume.
--
-- 'rebuildSnapshots', 'describeWorkspaceSnapshotsResponse_rebuildSnapshots' - Information about the snapshots that can be used to rebuild a WorkSpace.
-- These snapshots include the user volume.
--
-- 'httpStatus', 'describeWorkspaceSnapshotsResponse_httpStatus' - The response's http status code.
newDescribeWorkspaceSnapshotsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeWorkspaceSnapshotsResponse
newDescribeWorkspaceSnapshotsResponse pHttpStatus_ =
  DescribeWorkspaceSnapshotsResponse'
    { restoreSnapshots =
        Prelude.Nothing,
      rebuildSnapshots = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the snapshots that can be used to restore a WorkSpace.
-- These snapshots include both the root volume and the user volume.
describeWorkspaceSnapshotsResponse_restoreSnapshots :: Lens.Lens' DescribeWorkspaceSnapshotsResponse (Prelude.Maybe [Snapshot])
describeWorkspaceSnapshotsResponse_restoreSnapshots = Lens.lens (\DescribeWorkspaceSnapshotsResponse' {restoreSnapshots} -> restoreSnapshots) (\s@DescribeWorkspaceSnapshotsResponse' {} a -> s {restoreSnapshots = a} :: DescribeWorkspaceSnapshotsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Information about the snapshots that can be used to rebuild a WorkSpace.
-- These snapshots include the user volume.
describeWorkspaceSnapshotsResponse_rebuildSnapshots :: Lens.Lens' DescribeWorkspaceSnapshotsResponse (Prelude.Maybe [Snapshot])
describeWorkspaceSnapshotsResponse_rebuildSnapshots = Lens.lens (\DescribeWorkspaceSnapshotsResponse' {rebuildSnapshots} -> rebuildSnapshots) (\s@DescribeWorkspaceSnapshotsResponse' {} a -> s {rebuildSnapshots = a} :: DescribeWorkspaceSnapshotsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeWorkspaceSnapshotsResponse_httpStatus :: Lens.Lens' DescribeWorkspaceSnapshotsResponse Prelude.Int
describeWorkspaceSnapshotsResponse_httpStatus = Lens.lens (\DescribeWorkspaceSnapshotsResponse' {httpStatus} -> httpStatus) (\s@DescribeWorkspaceSnapshotsResponse' {} a -> s {httpStatus = a} :: DescribeWorkspaceSnapshotsResponse)

instance
  Prelude.NFData
    DescribeWorkspaceSnapshotsResponse
  where
  rnf DescribeWorkspaceSnapshotsResponse' {..} =
    Prelude.rnf restoreSnapshots
      `Prelude.seq` Prelude.rnf rebuildSnapshots
      `Prelude.seq` Prelude.rnf httpStatus

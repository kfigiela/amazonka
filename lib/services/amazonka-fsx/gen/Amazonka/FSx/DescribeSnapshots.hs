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
-- Module      : Amazonka.FSx.DescribeSnapshots
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of specific Amazon FSx for OpenZFS snapshots, if
-- a @SnapshotIds@ value is provided. Otherwise, this operation returns all
-- snapshots owned by your Amazon Web Services account in the Amazon Web
-- Services Region of the endpoint that you\'re calling.
--
-- When retrieving all snapshots, you can optionally specify the
-- @MaxResults@ parameter to limit the number of snapshots in a response.
-- If more backups remain, Amazon FSx returns a @NextToken@ value in the
-- response. In this case, send a later request with the @NextToken@
-- request parameter set to the value of @NextToken@ from the last
-- response.
--
-- Use this operation in an iterative process to retrieve a list of your
-- snapshots. @DescribeSnapshots@ is called first without a @NextToken@
-- value. Then the operation continues to be called with the @NextToken@
-- parameter set to the value of the last @NextToken@ value until a
-- response has no @NextToken@ value.
--
-- When using this operation, keep the following in mind:
--
-- -   The operation might return fewer than the @MaxResults@ value of
--     snapshot descriptions while still including a @NextToken@ value.
--
-- -   The order of snapshots returned in the response of one
--     @DescribeSnapshots@ call and the order of backups returned across
--     the responses of a multi-call iteration is unspecified.
module Amazonka.FSx.DescribeSnapshots
  ( -- * Creating a Request
    DescribeSnapshots (..),
    newDescribeSnapshots,

    -- * Request Lenses
    describeSnapshots_nextToken,
    describeSnapshots_filters,
    describeSnapshots_snapshotIds,
    describeSnapshots_maxResults,

    -- * Destructuring the Response
    DescribeSnapshotsResponse (..),
    newDescribeSnapshotsResponse,

    -- * Response Lenses
    describeSnapshotsResponse_nextToken,
    describeSnapshotsResponse_snapshots,
    describeSnapshotsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeSnapshots' smart constructor.
data DescribeSnapshots = DescribeSnapshots'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters structure. The supported names are @file-system-id@ or
    -- @volume-id@.
    filters :: Prelude.Maybe [SnapshotFilter],
    -- | The IDs of the snapshots that you want to retrieve. This parameter value
    -- overrides any filters. If any IDs aren\'t found, a @SnapshotNotFound@
    -- error occurs.
    snapshotIds :: Prelude.Maybe [Prelude.Text],
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSnapshots' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSnapshots_nextToken' - Undocumented member.
--
-- 'filters', 'describeSnapshots_filters' - The filters structure. The supported names are @file-system-id@ or
-- @volume-id@.
--
-- 'snapshotIds', 'describeSnapshots_snapshotIds' - The IDs of the snapshots that you want to retrieve. This parameter value
-- overrides any filters. If any IDs aren\'t found, a @SnapshotNotFound@
-- error occurs.
--
-- 'maxResults', 'describeSnapshots_maxResults' - Undocumented member.
newDescribeSnapshots ::
  DescribeSnapshots
newDescribeSnapshots =
  DescribeSnapshots'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      snapshotIds = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Undocumented member.
describeSnapshots_nextToken :: Lens.Lens' DescribeSnapshots (Prelude.Maybe Prelude.Text)
describeSnapshots_nextToken = Lens.lens (\DescribeSnapshots' {nextToken} -> nextToken) (\s@DescribeSnapshots' {} a -> s {nextToken = a} :: DescribeSnapshots)

-- | The filters structure. The supported names are @file-system-id@ or
-- @volume-id@.
describeSnapshots_filters :: Lens.Lens' DescribeSnapshots (Prelude.Maybe [SnapshotFilter])
describeSnapshots_filters = Lens.lens (\DescribeSnapshots' {filters} -> filters) (\s@DescribeSnapshots' {} a -> s {filters = a} :: DescribeSnapshots) Prelude.. Lens.mapping Lens.coerced

-- | The IDs of the snapshots that you want to retrieve. This parameter value
-- overrides any filters. If any IDs aren\'t found, a @SnapshotNotFound@
-- error occurs.
describeSnapshots_snapshotIds :: Lens.Lens' DescribeSnapshots (Prelude.Maybe [Prelude.Text])
describeSnapshots_snapshotIds = Lens.lens (\DescribeSnapshots' {snapshotIds} -> snapshotIds) (\s@DescribeSnapshots' {} a -> s {snapshotIds = a} :: DescribeSnapshots) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeSnapshots_maxResults :: Lens.Lens' DescribeSnapshots (Prelude.Maybe Prelude.Natural)
describeSnapshots_maxResults = Lens.lens (\DescribeSnapshots' {maxResults} -> maxResults) (\s@DescribeSnapshots' {} a -> s {maxResults = a} :: DescribeSnapshots)

instance Core.AWSRequest DescribeSnapshots where
  type
    AWSResponse DescribeSnapshots =
      DescribeSnapshotsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSnapshotsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Snapshots" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSnapshots where
  hashWithSalt _salt DescribeSnapshots' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` snapshotIds
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeSnapshots where
  rnf DescribeSnapshots' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf snapshotIds
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeSnapshots where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSimbaAPIService_v20180301.DescribeSnapshots" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSnapshots where
  toJSON DescribeSnapshots' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("SnapshotIds" Core..=) Prelude.<$> snapshotIds,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeSnapshots where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSnapshots where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSnapshotsResponse' smart constructor.
data DescribeSnapshotsResponse = DescribeSnapshotsResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of snapshots.
    snapshots :: Prelude.Maybe [Snapshot],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSnapshotsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSnapshotsResponse_nextToken' - Undocumented member.
--
-- 'snapshots', 'describeSnapshotsResponse_snapshots' - An array of snapshots.
--
-- 'httpStatus', 'describeSnapshotsResponse_httpStatus' - The response's http status code.
newDescribeSnapshotsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSnapshotsResponse
newDescribeSnapshotsResponse pHttpStatus_ =
  DescribeSnapshotsResponse'
    { nextToken =
        Prelude.Nothing,
      snapshots = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeSnapshotsResponse_nextToken :: Lens.Lens' DescribeSnapshotsResponse (Prelude.Maybe Prelude.Text)
describeSnapshotsResponse_nextToken = Lens.lens (\DescribeSnapshotsResponse' {nextToken} -> nextToken) (\s@DescribeSnapshotsResponse' {} a -> s {nextToken = a} :: DescribeSnapshotsResponse)

-- | An array of snapshots.
describeSnapshotsResponse_snapshots :: Lens.Lens' DescribeSnapshotsResponse (Prelude.Maybe [Snapshot])
describeSnapshotsResponse_snapshots = Lens.lens (\DescribeSnapshotsResponse' {snapshots} -> snapshots) (\s@DescribeSnapshotsResponse' {} a -> s {snapshots = a} :: DescribeSnapshotsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeSnapshotsResponse_httpStatus :: Lens.Lens' DescribeSnapshotsResponse Prelude.Int
describeSnapshotsResponse_httpStatus = Lens.lens (\DescribeSnapshotsResponse' {httpStatus} -> httpStatus) (\s@DescribeSnapshotsResponse' {} a -> s {httpStatus = a} :: DescribeSnapshotsResponse)

instance Prelude.NFData DescribeSnapshotsResponse where
  rnf DescribeSnapshotsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf snapshots
      `Prelude.seq` Prelude.rnf httpStatus

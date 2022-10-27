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
-- Module      : Amazonka.DMS.DescribeReplicationTasks
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication tasks for your account in the
-- current region.
--
-- This operation returns paginated results.
module Amazonka.DMS.DescribeReplicationTasks
  ( -- * Creating a Request
    DescribeReplicationTasks (..),
    newDescribeReplicationTasks,

    -- * Request Lenses
    describeReplicationTasks_marker,
    describeReplicationTasks_filters,
    describeReplicationTasks_maxRecords,
    describeReplicationTasks_withoutSettings,

    -- * Destructuring the Response
    DescribeReplicationTasksResponse (..),
    newDescribeReplicationTasksResponse,

    -- * Response Lenses
    describeReplicationTasksResponse_marker,
    describeReplicationTasksResponse_replicationTasks,
    describeReplicationTasksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeReplicationTasks' smart constructor.
data DescribeReplicationTasks = DescribeReplicationTasks'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Filters applied to replication tasks.
    --
    -- Valid filter names: replication-task-arn | replication-task-id |
    -- migration-type | endpoint-arn | replication-instance-arn
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that the remaining
    -- results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | An option to set to avoid returning information about settings. Use this
    -- to reduce overhead when setting information is too large. To use this
    -- option, choose @true@; otherwise, choose @false@ (the default).
    withoutSettings :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationTasks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeReplicationTasks_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'filters', 'describeReplicationTasks_filters' - Filters applied to replication tasks.
--
-- Valid filter names: replication-task-arn | replication-task-id |
-- migration-type | endpoint-arn | replication-instance-arn
--
-- 'maxRecords', 'describeReplicationTasks_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
--
-- 'withoutSettings', 'describeReplicationTasks_withoutSettings' - An option to set to avoid returning information about settings. Use this
-- to reduce overhead when setting information is too large. To use this
-- option, choose @true@; otherwise, choose @false@ (the default).
newDescribeReplicationTasks ::
  DescribeReplicationTasks
newDescribeReplicationTasks =
  DescribeReplicationTasks'
    { marker = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      withoutSettings = Prelude.Nothing
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeReplicationTasks_marker :: Lens.Lens' DescribeReplicationTasks (Prelude.Maybe Prelude.Text)
describeReplicationTasks_marker = Lens.lens (\DescribeReplicationTasks' {marker} -> marker) (\s@DescribeReplicationTasks' {} a -> s {marker = a} :: DescribeReplicationTasks)

-- | Filters applied to replication tasks.
--
-- Valid filter names: replication-task-arn | replication-task-id |
-- migration-type | endpoint-arn | replication-instance-arn
describeReplicationTasks_filters :: Lens.Lens' DescribeReplicationTasks (Prelude.Maybe [Filter])
describeReplicationTasks_filters = Lens.lens (\DescribeReplicationTasks' {filters} -> filters) (\s@DescribeReplicationTasks' {} a -> s {filters = a} :: DescribeReplicationTasks) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeReplicationTasks_maxRecords :: Lens.Lens' DescribeReplicationTasks (Prelude.Maybe Prelude.Int)
describeReplicationTasks_maxRecords = Lens.lens (\DescribeReplicationTasks' {maxRecords} -> maxRecords) (\s@DescribeReplicationTasks' {} a -> s {maxRecords = a} :: DescribeReplicationTasks)

-- | An option to set to avoid returning information about settings. Use this
-- to reduce overhead when setting information is too large. To use this
-- option, choose @true@; otherwise, choose @false@ (the default).
describeReplicationTasks_withoutSettings :: Lens.Lens' DescribeReplicationTasks (Prelude.Maybe Prelude.Bool)
describeReplicationTasks_withoutSettings = Lens.lens (\DescribeReplicationTasks' {withoutSettings} -> withoutSettings) (\s@DescribeReplicationTasks' {} a -> s {withoutSettings = a} :: DescribeReplicationTasks)

instance Core.AWSPager DescribeReplicationTasks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeReplicationTasksResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeReplicationTasksResponse_replicationTasks
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeReplicationTasks_marker
          Lens..~ rs
          Lens.^? describeReplicationTasksResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeReplicationTasks where
  type
    AWSResponse DescribeReplicationTasks =
      DescribeReplicationTasksResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplicationTasksResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> ( x Core..?> "ReplicationTasks"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeReplicationTasks where
  hashWithSalt _salt DescribeReplicationTasks' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` withoutSettings

instance Prelude.NFData DescribeReplicationTasks where
  rnf DescribeReplicationTasks' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf withoutSettings

instance Core.ToHeaders DescribeReplicationTasks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.DescribeReplicationTasks" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeReplicationTasks where
  toJSON DescribeReplicationTasks' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Marker" Core..=) Prelude.<$> marker,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxRecords" Core..=) Prelude.<$> maxRecords,
            ("WithoutSettings" Core..=)
              Prelude.<$> withoutSettings
          ]
      )

instance Core.ToPath DescribeReplicationTasks where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeReplicationTasks where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newDescribeReplicationTasksResponse' smart constructor.
data DescribeReplicationTasksResponse = DescribeReplicationTasksResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A description of the replication tasks.
    replicationTasks :: Prelude.Maybe [ReplicationTask],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationTasksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeReplicationTasksResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'replicationTasks', 'describeReplicationTasksResponse_replicationTasks' - A description of the replication tasks.
--
-- 'httpStatus', 'describeReplicationTasksResponse_httpStatus' - The response's http status code.
newDescribeReplicationTasksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReplicationTasksResponse
newDescribeReplicationTasksResponse pHttpStatus_ =
  DescribeReplicationTasksResponse'
    { marker =
        Prelude.Nothing,
      replicationTasks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeReplicationTasksResponse_marker :: Lens.Lens' DescribeReplicationTasksResponse (Prelude.Maybe Prelude.Text)
describeReplicationTasksResponse_marker = Lens.lens (\DescribeReplicationTasksResponse' {marker} -> marker) (\s@DescribeReplicationTasksResponse' {} a -> s {marker = a} :: DescribeReplicationTasksResponse)

-- | A description of the replication tasks.
describeReplicationTasksResponse_replicationTasks :: Lens.Lens' DescribeReplicationTasksResponse (Prelude.Maybe [ReplicationTask])
describeReplicationTasksResponse_replicationTasks = Lens.lens (\DescribeReplicationTasksResponse' {replicationTasks} -> replicationTasks) (\s@DescribeReplicationTasksResponse' {} a -> s {replicationTasks = a} :: DescribeReplicationTasksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeReplicationTasksResponse_httpStatus :: Lens.Lens' DescribeReplicationTasksResponse Prelude.Int
describeReplicationTasksResponse_httpStatus = Lens.lens (\DescribeReplicationTasksResponse' {httpStatus} -> httpStatus) (\s@DescribeReplicationTasksResponse' {} a -> s {httpStatus = a} :: DescribeReplicationTasksResponse)

instance
  Prelude.NFData
    DescribeReplicationTasksResponse
  where
  rnf DescribeReplicationTasksResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf replicationTasks
      `Prelude.seq` Prelude.rnf httpStatus

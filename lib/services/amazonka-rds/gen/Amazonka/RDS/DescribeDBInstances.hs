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
-- Module      : Amazonka.RDS.DescribeDBInstances
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about provisioned RDS instances. This API supports
-- pagination.
--
-- This operation can also return information for Amazon Neptune DB
-- instances and Amazon DocumentDB instances.
--
-- This operation returns paginated results.
module Amazonka.RDS.DescribeDBInstances
  ( -- * Creating a Request
    DescribeDBInstances (..),
    newDescribeDBInstances,

    -- * Request Lenses
    describeDBInstances_marker,
    describeDBInstances_dbInstanceIdentifier,
    describeDBInstances_filters,
    describeDBInstances_maxRecords,

    -- * Destructuring the Response
    DescribeDBInstancesResponse (..),
    newDescribeDBInstancesResponse,

    -- * Response Lenses
    describeDBInstancesResponse_marker,
    describeDBInstancesResponse_dbInstances,
    describeDBInstancesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeDBInstances' smart constructor.
data DescribeDBInstances = DescribeDBInstances'
  { -- | An optional pagination token provided by a previous
    -- @DescribeDBInstances@ request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The user-supplied instance identifier. If this parameter is specified,
    -- information from only the specific DB instance is returned. This
    -- parameter isn\'t case-sensitive.
    --
    -- Constraints:
    --
    -- -   If supplied, must match the identifier of an existing DBInstance.
    dbInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A filter that specifies one or more DB instances to describe.
    --
    -- Supported filters:
    --
    -- -   @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster
    --     Amazon Resource Names (ARNs). The results list only includes
    --     information about the DB instances associated with the DB clusters
    --     identified by these ARNs.
    --
    -- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
    --     Amazon Resource Names (ARNs). The results list only includes
    --     information about the DB instances identified by these ARNs.
    --
    -- -   @dbi-resource-id@ - Accepts DB instance resource identifiers. The
    --     results list will only include information about the DB instances
    --     identified by these DB instance resource identifiers.
    --
    -- -   @domain@ - Accepts Active Directory directory IDs. The results list
    --     only includes information about the DB instances associated with
    --     these domains.
    --
    -- -   @engine@ - Accepts engine names. The results list only includes
    --     information about the DB instances for these engines.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeDBInstances_marker' - An optional pagination token provided by a previous
-- @DescribeDBInstances@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'dbInstanceIdentifier', 'describeDBInstances_dbInstanceIdentifier' - The user-supplied instance identifier. If this parameter is specified,
-- information from only the specific DB instance is returned. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBInstance.
--
-- 'filters', 'describeDBInstances_filters' - A filter that specifies one or more DB instances to describe.
--
-- Supported filters:
--
-- -   @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster
--     Amazon Resource Names (ARNs). The results list only includes
--     information about the DB instances associated with the DB clusters
--     identified by these ARNs.
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
--     Amazon Resource Names (ARNs). The results list only includes
--     information about the DB instances identified by these ARNs.
--
-- -   @dbi-resource-id@ - Accepts DB instance resource identifiers. The
--     results list will only include information about the DB instances
--     identified by these DB instance resource identifiers.
--
-- -   @domain@ - Accepts Active Directory directory IDs. The results list
--     only includes information about the DB instances associated with
--     these domains.
--
-- -   @engine@ - Accepts engine names. The results list only includes
--     information about the DB instances for these engines.
--
-- 'maxRecords', 'describeDBInstances_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeDBInstances ::
  DescribeDBInstances
newDescribeDBInstances =
  DescribeDBInstances'
    { marker = Prelude.Nothing,
      dbInstanceIdentifier = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | An optional pagination token provided by a previous
-- @DescribeDBInstances@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBInstances_marker :: Lens.Lens' DescribeDBInstances (Prelude.Maybe Prelude.Text)
describeDBInstances_marker = Lens.lens (\DescribeDBInstances' {marker} -> marker) (\s@DescribeDBInstances' {} a -> s {marker = a} :: DescribeDBInstances)

-- | The user-supplied instance identifier. If this parameter is specified,
-- information from only the specific DB instance is returned. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBInstance.
describeDBInstances_dbInstanceIdentifier :: Lens.Lens' DescribeDBInstances (Prelude.Maybe Prelude.Text)
describeDBInstances_dbInstanceIdentifier = Lens.lens (\DescribeDBInstances' {dbInstanceIdentifier} -> dbInstanceIdentifier) (\s@DescribeDBInstances' {} a -> s {dbInstanceIdentifier = a} :: DescribeDBInstances)

-- | A filter that specifies one or more DB instances to describe.
--
-- Supported filters:
--
-- -   @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster
--     Amazon Resource Names (ARNs). The results list only includes
--     information about the DB instances associated with the DB clusters
--     identified by these ARNs.
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
--     Amazon Resource Names (ARNs). The results list only includes
--     information about the DB instances identified by these ARNs.
--
-- -   @dbi-resource-id@ - Accepts DB instance resource identifiers. The
--     results list will only include information about the DB instances
--     identified by these DB instance resource identifiers.
--
-- -   @domain@ - Accepts Active Directory directory IDs. The results list
--     only includes information about the DB instances associated with
--     these domains.
--
-- -   @engine@ - Accepts engine names. The results list only includes
--     information about the DB instances for these engines.
describeDBInstances_filters :: Lens.Lens' DescribeDBInstances (Prelude.Maybe [Filter])
describeDBInstances_filters = Lens.lens (\DescribeDBInstances' {filters} -> filters) (\s@DescribeDBInstances' {} a -> s {filters = a} :: DescribeDBInstances) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBInstances_maxRecords :: Lens.Lens' DescribeDBInstances (Prelude.Maybe Prelude.Int)
describeDBInstances_maxRecords = Lens.lens (\DescribeDBInstances' {maxRecords} -> maxRecords) (\s@DescribeDBInstances' {} a -> s {maxRecords = a} :: DescribeDBInstances)

instance Core.AWSPager DescribeDBInstances where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDBInstancesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDBInstancesResponse_dbInstances
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeDBInstances_marker
          Lens..~ rs
          Lens.^? describeDBInstancesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeDBInstances where
  type
    AWSResponse DescribeDBInstances =
      DescribeDBInstancesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeDBInstancesResult"
      ( \s h x ->
          DescribeDBInstancesResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> ( x Core..@? "DBInstances" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "DBInstance")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBInstances where
  hashWithSalt _salt DescribeDBInstances' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` dbInstanceIdentifier
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxRecords

instance Prelude.NFData DescribeDBInstances where
  rnf DescribeDBInstances' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf dbInstanceIdentifier
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords

instance Core.ToHeaders DescribeDBInstances where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDBInstances where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDBInstances where
  toQuery DescribeDBInstances' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeDBInstances" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "DBInstanceIdentifier" Core.=: dbInstanceIdentifier,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "MaxRecords" Core.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBInstances@ action.
--
-- /See:/ 'newDescribeDBInstancesResponse' smart constructor.
data DescribeDBInstancesResponse = DescribeDBInstancesResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@ .
    marker :: Prelude.Maybe Prelude.Text,
    -- | A list of @DBInstance@ instances.
    dbInstances :: Prelude.Maybe [DBInstance],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeDBInstancesResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@ .
--
-- 'dbInstances', 'describeDBInstancesResponse_dbInstances' - A list of @DBInstance@ instances.
--
-- 'httpStatus', 'describeDBInstancesResponse_httpStatus' - The response's http status code.
newDescribeDBInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBInstancesResponse
newDescribeDBInstancesResponse pHttpStatus_ =
  DescribeDBInstancesResponse'
    { marker =
        Prelude.Nothing,
      dbInstances = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@ .
describeDBInstancesResponse_marker :: Lens.Lens' DescribeDBInstancesResponse (Prelude.Maybe Prelude.Text)
describeDBInstancesResponse_marker = Lens.lens (\DescribeDBInstancesResponse' {marker} -> marker) (\s@DescribeDBInstancesResponse' {} a -> s {marker = a} :: DescribeDBInstancesResponse)

-- | A list of @DBInstance@ instances.
describeDBInstancesResponse_dbInstances :: Lens.Lens' DescribeDBInstancesResponse (Prelude.Maybe [DBInstance])
describeDBInstancesResponse_dbInstances = Lens.lens (\DescribeDBInstancesResponse' {dbInstances} -> dbInstances) (\s@DescribeDBInstancesResponse' {} a -> s {dbInstances = a} :: DescribeDBInstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDBInstancesResponse_httpStatus :: Lens.Lens' DescribeDBInstancesResponse Prelude.Int
describeDBInstancesResponse_httpStatus = Lens.lens (\DescribeDBInstancesResponse' {httpStatus} -> httpStatus) (\s@DescribeDBInstancesResponse' {} a -> s {httpStatus = a} :: DescribeDBInstancesResponse)

instance Prelude.NFData DescribeDBInstancesResponse where
  rnf DescribeDBInstancesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf dbInstances
      `Prelude.seq` Prelude.rnf httpStatus

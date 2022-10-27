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
-- Module      : Amazonka.ElastiCache.DescribeReservedCacheNodesOfferings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available reserved cache node offerings.
--
-- This operation returns paginated results.
module Amazonka.ElastiCache.DescribeReservedCacheNodesOfferings
  ( -- * Creating a Request
    DescribeReservedCacheNodesOfferings (..),
    newDescribeReservedCacheNodesOfferings,

    -- * Request Lenses
    describeReservedCacheNodesOfferings_marker,
    describeReservedCacheNodesOfferings_reservedCacheNodesOfferingId,
    describeReservedCacheNodesOfferings_offeringType,
    describeReservedCacheNodesOfferings_cacheNodeType,
    describeReservedCacheNodesOfferings_maxRecords,
    describeReservedCacheNodesOfferings_duration,
    describeReservedCacheNodesOfferings_productDescription,

    -- * Destructuring the Response
    DescribeReservedCacheNodesOfferingsResponse (..),
    newDescribeReservedCacheNodesOfferingsResponse,

    -- * Response Lenses
    describeReservedCacheNodesOfferingsResponse_marker,
    describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings,
    describeReservedCacheNodesOfferingsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElastiCache.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @DescribeReservedCacheNodesOfferings@
-- operation.
--
-- /See:/ 'newDescribeReservedCacheNodesOfferings' smart constructor.
data DescribeReservedCacheNodesOfferings = DescribeReservedCacheNodesOfferings'
  { -- | An optional marker returned from a prior request. Use this marker for
    -- pagination of results from this operation. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The offering identifier filter value. Use this parameter to show only
    -- the available offering that matches the specified reservation
    -- identifier.
    --
    -- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
    reservedCacheNodesOfferingId :: Prelude.Maybe Prelude.Text,
    -- | The offering type filter value. Use this parameter to show only the
    -- available offerings matching the specified offering type.
    --
    -- Valid Values:
    -- @\"Light Utilization\"|\"Medium Utilization\"|\"Heavy Utilization\" |\"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"@
    offeringType :: Prelude.Maybe Prelude.Text,
    -- | The cache node type filter value. Use this parameter to show only the
    -- available offerings matching the specified cache node type.
    --
    -- The following node types are supported by ElastiCache. Generally
    -- speaking, the current generation types provide more memory and
    -- computational power at lower cost when compared to their equivalent
    -- previous generation counterparts.
    --
    -- -   General purpose:
    --
    --     -   Current generation:
    --
    --         __M6g node types:__ (available only for Redis engine version
    --         5.0.6 onward and for Memcached engine version 1.5.16 onward)
    --         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
    --         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
    --         @cache.m6g.16xlarge@
    --
    --         For region availability, see
    --         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
    --
    --         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
    --         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
    --         @cache.m5.24xlarge@
    --
    --         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
    --         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
    --
    --         __T4g node types__ (available only for Redis engine version
    --         5.0.6 onward and for Memcached engine version 1.5.16 onward):
    --         @cache.t4g.micro@, @cache.t4g.small@, @cache.t4g.medium@
    --
    --         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
    --         @cache.t3.medium@
    --
    --         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
    --         @cache.t2.medium@
    --
    --     -   Previous generation: (not recommended. Existing clusters are
    --         still supported but creation of new clusters is not supported
    --         for these types.)
    --
    --         __T1 node types:__ @cache.t1.micro@
    --
    --         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
    --         @cache.m1.large@, @cache.m1.xlarge@
    --
    --         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
    --         @cache.m3.xlarge@, @cache.m3.2xlarge@
    --
    -- -   Compute optimized:
    --
    --     -   Previous generation: (not recommended. Existing clusters are
    --         still supported but creation of new clusters is not supported
    --         for these types.)
    --
    --         __C1 node types:__ @cache.c1.xlarge@
    --
    -- -   Memory optimized with data tiering:
    --
    --     -   Current generation:
    --
    --         __R6gd node types__ (available only for Redis engine version 6.2
    --         onward).
    --
    --         @cache.r6gd.xlarge@, @cache.r6gd.2xlarge@, @cache.r6gd.4xlarge@,
    --         @cache.r6gd.8xlarge@, @cache.r6gd.12xlarge@,
    --         @cache.r6gd.16xlarge@
    --
    -- -   Memory optimized:
    --
    --     -   Current generation:
    --
    --         __R6g node types__ (available only for Redis engine version
    --         5.0.6 onward and for Memcached engine version 1.5.16 onward).
    --
    --         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
    --         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
    --         @cache.r6g.16xlarge@
    --
    --         For region availability, see
    --         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
    --
    --         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
    --         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
    --         @cache.r5.24xlarge@
    --
    --         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
    --         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
    --         @cache.r4.16xlarge@
    --
    --     -   Previous generation: (not recommended. Existing clusters are
    --         still supported but creation of new clusters is not supported
    --         for these types.)
    --
    --         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
    --         @cache.m2.4xlarge@
    --
    --         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
    --         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
    --
    -- __Additional node type info__
    --
    -- -   All current generation instance types are created in Amazon VPC by
    --     default.
    --
    -- -   Redis append-only files (AOF) are not supported for T1 or T2
    --     instances.
    --
    -- -   Redis Multi-AZ with automatic failover is not supported on T1
    --     instances.
    --
    -- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
    --     supported on Redis version 2.8.22 and later.
    cacheNodeType :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a marker is
    -- included in the response so that the remaining results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: minimum 20; maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | Duration filter value, specified in years or seconds. Use this parameter
    -- to show only reservations for a given duration.
    --
    -- Valid Values: @1 | 3 | 31536000 | 94608000@
    duration :: Prelude.Maybe Prelude.Text,
    -- | The product description filter value. Use this parameter to show only
    -- the available offerings matching the specified product description.
    productDescription :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedCacheNodesOfferings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeReservedCacheNodesOfferings_marker' - An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
--
-- 'reservedCacheNodesOfferingId', 'describeReservedCacheNodesOfferings_reservedCacheNodesOfferingId' - The offering identifier filter value. Use this parameter to show only
-- the available offering that matches the specified reservation
-- identifier.
--
-- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
--
-- 'offeringType', 'describeReservedCacheNodesOfferings_offeringType' - The offering type filter value. Use this parameter to show only the
-- available offerings matching the specified offering type.
--
-- Valid Values:
-- @\"Light Utilization\"|\"Medium Utilization\"|\"Heavy Utilization\" |\"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"@
--
-- 'cacheNodeType', 'describeReservedCacheNodesOfferings_cacheNodeType' - The cache node type filter value. Use this parameter to show only the
-- available offerings matching the specified cache node type.
--
-- The following node types are supported by ElastiCache. Generally
-- speaking, the current generation types provide more memory and
-- computational power at lower cost when compared to their equivalent
-- previous generation counterparts.
--
-- -   General purpose:
--
--     -   Current generation:
--
--         __M6g node types:__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward)
--         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
--         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
--         @cache.m6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
--         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
--         @cache.m5.24xlarge@
--
--         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
--         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
--
--         __T4g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward):
--         @cache.t4g.micro@, @cache.t4g.small@, @cache.t4g.medium@
--
--         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
--         @cache.t3.medium@
--
--         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
--         @cache.t2.medium@
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __T1 node types:__ @cache.t1.micro@
--
--         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
--         @cache.m1.large@, @cache.m1.xlarge@
--
--         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
--         @cache.m3.xlarge@, @cache.m3.2xlarge@
--
-- -   Compute optimized:
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __C1 node types:__ @cache.c1.xlarge@
--
-- -   Memory optimized with data tiering:
--
--     -   Current generation:
--
--         __R6gd node types__ (available only for Redis engine version 6.2
--         onward).
--
--         @cache.r6gd.xlarge@, @cache.r6gd.2xlarge@, @cache.r6gd.4xlarge@,
--         @cache.r6gd.8xlarge@, @cache.r6gd.12xlarge@,
--         @cache.r6gd.16xlarge@
--
-- -   Memory optimized:
--
--     -   Current generation:
--
--         __R6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
--         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
--         @cache.r6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
--         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
--         @cache.r5.24xlarge@
--
--         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
--         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
--         @cache.r4.16xlarge@
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
--         @cache.m2.4xlarge@
--
--         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
--         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
--
-- __Additional node type info__
--
-- -   All current generation instance types are created in Amazon VPC by
--     default.
--
-- -   Redis append-only files (AOF) are not supported for T1 or T2
--     instances.
--
-- -   Redis Multi-AZ with automatic failover is not supported on T1
--     instances.
--
-- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
--     supported on Redis version 2.8.22 and later.
--
-- 'maxRecords', 'describeReservedCacheNodesOfferings_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a marker is
-- included in the response so that the remaining results can be retrieved.
--
-- Default: 100
--
-- Constraints: minimum 20; maximum 100.
--
-- 'duration', 'describeReservedCacheNodesOfferings_duration' - Duration filter value, specified in years or seconds. Use this parameter
-- to show only reservations for a given duration.
--
-- Valid Values: @1 | 3 | 31536000 | 94608000@
--
-- 'productDescription', 'describeReservedCacheNodesOfferings_productDescription' - The product description filter value. Use this parameter to show only
-- the available offerings matching the specified product description.
newDescribeReservedCacheNodesOfferings ::
  DescribeReservedCacheNodesOfferings
newDescribeReservedCacheNodesOfferings =
  DescribeReservedCacheNodesOfferings'
    { marker =
        Prelude.Nothing,
      reservedCacheNodesOfferingId =
        Prelude.Nothing,
      offeringType = Prelude.Nothing,
      cacheNodeType = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      duration = Prelude.Nothing,
      productDescription = Prelude.Nothing
    }

-- | An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
describeReservedCacheNodesOfferings_marker :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_marker = Lens.lens (\DescribeReservedCacheNodesOfferings' {marker} -> marker) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {marker = a} :: DescribeReservedCacheNodesOfferings)

-- | The offering identifier filter value. Use this parameter to show only
-- the available offering that matches the specified reservation
-- identifier.
--
-- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
describeReservedCacheNodesOfferings_reservedCacheNodesOfferingId :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_reservedCacheNodesOfferingId = Lens.lens (\DescribeReservedCacheNodesOfferings' {reservedCacheNodesOfferingId} -> reservedCacheNodesOfferingId) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {reservedCacheNodesOfferingId = a} :: DescribeReservedCacheNodesOfferings)

-- | The offering type filter value. Use this parameter to show only the
-- available offerings matching the specified offering type.
--
-- Valid Values:
-- @\"Light Utilization\"|\"Medium Utilization\"|\"Heavy Utilization\" |\"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"@
describeReservedCacheNodesOfferings_offeringType :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_offeringType = Lens.lens (\DescribeReservedCacheNodesOfferings' {offeringType} -> offeringType) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {offeringType = a} :: DescribeReservedCacheNodesOfferings)

-- | The cache node type filter value. Use this parameter to show only the
-- available offerings matching the specified cache node type.
--
-- The following node types are supported by ElastiCache. Generally
-- speaking, the current generation types provide more memory and
-- computational power at lower cost when compared to their equivalent
-- previous generation counterparts.
--
-- -   General purpose:
--
--     -   Current generation:
--
--         __M6g node types:__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward)
--         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
--         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
--         @cache.m6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
--         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
--         @cache.m5.24xlarge@
--
--         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
--         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
--
--         __T4g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward):
--         @cache.t4g.micro@, @cache.t4g.small@, @cache.t4g.medium@
--
--         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
--         @cache.t3.medium@
--
--         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
--         @cache.t2.medium@
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __T1 node types:__ @cache.t1.micro@
--
--         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
--         @cache.m1.large@, @cache.m1.xlarge@
--
--         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
--         @cache.m3.xlarge@, @cache.m3.2xlarge@
--
-- -   Compute optimized:
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __C1 node types:__ @cache.c1.xlarge@
--
-- -   Memory optimized with data tiering:
--
--     -   Current generation:
--
--         __R6gd node types__ (available only for Redis engine version 6.2
--         onward).
--
--         @cache.r6gd.xlarge@, @cache.r6gd.2xlarge@, @cache.r6gd.4xlarge@,
--         @cache.r6gd.8xlarge@, @cache.r6gd.12xlarge@,
--         @cache.r6gd.16xlarge@
--
-- -   Memory optimized:
--
--     -   Current generation:
--
--         __R6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
--         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
--         @cache.r6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
--         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
--         @cache.r5.24xlarge@
--
--         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
--         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
--         @cache.r4.16xlarge@
--
--     -   Previous generation: (not recommended. Existing clusters are
--         still supported but creation of new clusters is not supported
--         for these types.)
--
--         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
--         @cache.m2.4xlarge@
--
--         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
--         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
--
-- __Additional node type info__
--
-- -   All current generation instance types are created in Amazon VPC by
--     default.
--
-- -   Redis append-only files (AOF) are not supported for T1 or T2
--     instances.
--
-- -   Redis Multi-AZ with automatic failover is not supported on T1
--     instances.
--
-- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
--     supported on Redis version 2.8.22 and later.
describeReservedCacheNodesOfferings_cacheNodeType :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_cacheNodeType = Lens.lens (\DescribeReservedCacheNodesOfferings' {cacheNodeType} -> cacheNodeType) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {cacheNodeType = a} :: DescribeReservedCacheNodesOfferings)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a marker is
-- included in the response so that the remaining results can be retrieved.
--
-- Default: 100
--
-- Constraints: minimum 20; maximum 100.
describeReservedCacheNodesOfferings_maxRecords :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Int)
describeReservedCacheNodesOfferings_maxRecords = Lens.lens (\DescribeReservedCacheNodesOfferings' {maxRecords} -> maxRecords) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {maxRecords = a} :: DescribeReservedCacheNodesOfferings)

-- | Duration filter value, specified in years or seconds. Use this parameter
-- to show only reservations for a given duration.
--
-- Valid Values: @1 | 3 | 31536000 | 94608000@
describeReservedCacheNodesOfferings_duration :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_duration = Lens.lens (\DescribeReservedCacheNodesOfferings' {duration} -> duration) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {duration = a} :: DescribeReservedCacheNodesOfferings)

-- | The product description filter value. Use this parameter to show only
-- the available offerings matching the specified product description.
describeReservedCacheNodesOfferings_productDescription :: Lens.Lens' DescribeReservedCacheNodesOfferings (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferings_productDescription = Lens.lens (\DescribeReservedCacheNodesOfferings' {productDescription} -> productDescription) (\s@DescribeReservedCacheNodesOfferings' {} a -> s {productDescription = a} :: DescribeReservedCacheNodesOfferings)

instance
  Core.AWSPager
    DescribeReservedCacheNodesOfferings
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeReservedCacheNodesOfferingsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeReservedCacheNodesOfferings_marker
          Lens..~ rs
          Lens.^? describeReservedCacheNodesOfferingsResponse_marker
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeReservedCacheNodesOfferings
  where
  type
    AWSResponse DescribeReservedCacheNodesOfferings =
      DescribeReservedCacheNodesOfferingsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeReservedCacheNodesOfferingsResult"
      ( \s h x ->
          DescribeReservedCacheNodesOfferingsResponse'
            Prelude.<$> (x Core..@? "Marker")
              Prelude.<*> ( x Core..@? "ReservedCacheNodesOfferings"
                              Core..!@ Prelude.mempty
                              Prelude.>>= Core.may
                                (Core.parseXMLList "ReservedCacheNodesOffering")
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeReservedCacheNodesOfferings
  where
  hashWithSalt
    _salt
    DescribeReservedCacheNodesOfferings' {..} =
      _salt `Prelude.hashWithSalt` marker
        `Prelude.hashWithSalt` reservedCacheNodesOfferingId
        `Prelude.hashWithSalt` offeringType
        `Prelude.hashWithSalt` cacheNodeType
        `Prelude.hashWithSalt` maxRecords
        `Prelude.hashWithSalt` duration
        `Prelude.hashWithSalt` productDescription

instance
  Prelude.NFData
    DescribeReservedCacheNodesOfferings
  where
  rnf DescribeReservedCacheNodesOfferings' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf reservedCacheNodesOfferingId
      `Prelude.seq` Prelude.rnf offeringType
      `Prelude.seq` Prelude.rnf cacheNodeType
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf duration
      `Prelude.seq` Prelude.rnf productDescription

instance
  Core.ToHeaders
    DescribeReservedCacheNodesOfferings
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DescribeReservedCacheNodesOfferings
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeReservedCacheNodesOfferings
  where
  toQuery DescribeReservedCacheNodesOfferings' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeReservedCacheNodesOfferings" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2015-02-02" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "ReservedCacheNodesOfferingId"
          Core.=: reservedCacheNodesOfferingId,
        "OfferingType" Core.=: offeringType,
        "CacheNodeType" Core.=: cacheNodeType,
        "MaxRecords" Core.=: maxRecords,
        "Duration" Core.=: duration,
        "ProductDescription" Core.=: productDescription
      ]

-- | Represents the output of a @DescribeReservedCacheNodesOfferings@
-- operation.
--
-- /See:/ 'newDescribeReservedCacheNodesOfferingsResponse' smart constructor.
data DescribeReservedCacheNodesOfferingsResponse = DescribeReservedCacheNodesOfferingsResponse'
  { -- | Provides an identifier to allow retrieval of paginated results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A list of reserved cache node offerings. Each element in the list
    -- contains detailed information about one offering.
    reservedCacheNodesOfferings :: Prelude.Maybe [ReservedCacheNodesOffering],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedCacheNodesOfferingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeReservedCacheNodesOfferingsResponse_marker' - Provides an identifier to allow retrieval of paginated results.
--
-- 'reservedCacheNodesOfferings', 'describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings' - A list of reserved cache node offerings. Each element in the list
-- contains detailed information about one offering.
--
-- 'httpStatus', 'describeReservedCacheNodesOfferingsResponse_httpStatus' - The response's http status code.
newDescribeReservedCacheNodesOfferingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReservedCacheNodesOfferingsResponse
newDescribeReservedCacheNodesOfferingsResponse
  pHttpStatus_ =
    DescribeReservedCacheNodesOfferingsResponse'
      { marker =
          Prelude.Nothing,
        reservedCacheNodesOfferings =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Provides an identifier to allow retrieval of paginated results.
describeReservedCacheNodesOfferingsResponse_marker :: Lens.Lens' DescribeReservedCacheNodesOfferingsResponse (Prelude.Maybe Prelude.Text)
describeReservedCacheNodesOfferingsResponse_marker = Lens.lens (\DescribeReservedCacheNodesOfferingsResponse' {marker} -> marker) (\s@DescribeReservedCacheNodesOfferingsResponse' {} a -> s {marker = a} :: DescribeReservedCacheNodesOfferingsResponse)

-- | A list of reserved cache node offerings. Each element in the list
-- contains detailed information about one offering.
describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings :: Lens.Lens' DescribeReservedCacheNodesOfferingsResponse (Prelude.Maybe [ReservedCacheNodesOffering])
describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings = Lens.lens (\DescribeReservedCacheNodesOfferingsResponse' {reservedCacheNodesOfferings} -> reservedCacheNodesOfferings) (\s@DescribeReservedCacheNodesOfferingsResponse' {} a -> s {reservedCacheNodesOfferings = a} :: DescribeReservedCacheNodesOfferingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeReservedCacheNodesOfferingsResponse_httpStatus :: Lens.Lens' DescribeReservedCacheNodesOfferingsResponse Prelude.Int
describeReservedCacheNodesOfferingsResponse_httpStatus = Lens.lens (\DescribeReservedCacheNodesOfferingsResponse' {httpStatus} -> httpStatus) (\s@DescribeReservedCacheNodesOfferingsResponse' {} a -> s {httpStatus = a} :: DescribeReservedCacheNodesOfferingsResponse)

instance
  Prelude.NFData
    DescribeReservedCacheNodesOfferingsResponse
  where
  rnf DescribeReservedCacheNodesOfferingsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf reservedCacheNodesOfferings
      `Prelude.seq` Prelude.rnf httpStatus

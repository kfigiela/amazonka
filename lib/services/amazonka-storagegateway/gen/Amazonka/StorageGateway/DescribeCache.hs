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
-- Module      : Amazonka.StorageGateway.DescribeCache
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the cache of a gateway. This operation is only
-- supported in the cached volume, tape, and file gateway types.
--
-- The response includes disk IDs that are configured as cache, and it
-- includes the amount of cache allocated and used.
module Amazonka.StorageGateway.DescribeCache
  ( -- * Creating a Request
    DescribeCache (..),
    newDescribeCache,

    -- * Request Lenses
    describeCache_gatewayARN,

    -- * Destructuring the Response
    DescribeCacheResponse (..),
    newDescribeCacheResponse,

    -- * Response Lenses
    describeCacheResponse_cacheMissPercentage,
    describeCacheResponse_diskIds,
    describeCacheResponse_cacheHitPercentage,
    describeCacheResponse_cacheUsedPercentage,
    describeCacheResponse_cacheDirtyPercentage,
    describeCacheResponse_gatewayARN,
    describeCacheResponse_cacheAllocatedInBytes,
    describeCacheResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | /See:/ 'newDescribeCache' smart constructor.
data DescribeCache = DescribeCache'
  { gatewayARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCache' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayARN', 'describeCache_gatewayARN' - Undocumented member.
newDescribeCache ::
  -- | 'gatewayARN'
  Prelude.Text ->
  DescribeCache
newDescribeCache pGatewayARN_ =
  DescribeCache' {gatewayARN = pGatewayARN_}

-- | Undocumented member.
describeCache_gatewayARN :: Lens.Lens' DescribeCache Prelude.Text
describeCache_gatewayARN = Lens.lens (\DescribeCache' {gatewayARN} -> gatewayARN) (\s@DescribeCache' {} a -> s {gatewayARN = a} :: DescribeCache)

instance Core.AWSRequest DescribeCache where
  type
    AWSResponse DescribeCache =
      DescribeCacheResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCacheResponse'
            Prelude.<$> (x Core..?> "CacheMissPercentage")
            Prelude.<*> (x Core..?> "DiskIds" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "CacheHitPercentage")
            Prelude.<*> (x Core..?> "CacheUsedPercentage")
            Prelude.<*> (x Core..?> "CacheDirtyPercentage")
            Prelude.<*> (x Core..?> "GatewayARN")
            Prelude.<*> (x Core..?> "CacheAllocatedInBytes")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCache where
  hashWithSalt _salt DescribeCache' {..} =
    _salt `Prelude.hashWithSalt` gatewayARN

instance Prelude.NFData DescribeCache where
  rnf DescribeCache' {..} = Prelude.rnf gatewayARN

instance Core.ToHeaders DescribeCache where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeCache" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeCache where
  toJSON DescribeCache' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("GatewayARN" Core..= gatewayARN)]
      )

instance Core.ToPath DescribeCache where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCache where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeCacheResponse' smart constructor.
data DescribeCacheResponse = DescribeCacheResponse'
  { -- | Percent of application read operations from the file shares that are not
    -- served from cache. The sample is taken at the end of the reporting
    -- period.
    cacheMissPercentage :: Prelude.Maybe Prelude.Double,
    -- | An array of strings that identify disks that are to be configured as
    -- working storage. Each string has a minimum length of 1 and maximum
    -- length of 300. You can get the disk IDs from the ListLocalDisks API.
    diskIds :: Prelude.Maybe [Prelude.Text],
    -- | Percent of application read operations from the file shares that are
    -- served from cache. The sample is taken at the end of the reporting
    -- period.
    cacheHitPercentage :: Prelude.Maybe Prelude.Double,
    -- | Percent use of the gateway\'s cache storage. This metric applies only to
    -- the gateway-cached volume setup. The sample is taken at the end of the
    -- reporting period.
    cacheUsedPercentage :: Prelude.Maybe Prelude.Double,
    -- | The file share\'s contribution to the overall percentage of the
    -- gateway\'s cache that has not been persisted to Amazon Web Services. The
    -- sample is taken at the end of the reporting period.
    cacheDirtyPercentage :: Prelude.Maybe Prelude.Double,
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The amount of cache in bytes allocated to a gateway.
    cacheAllocatedInBytes :: Prelude.Maybe Prelude.Integer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCacheResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheMissPercentage', 'describeCacheResponse_cacheMissPercentage' - Percent of application read operations from the file shares that are not
-- served from cache. The sample is taken at the end of the reporting
-- period.
--
-- 'diskIds', 'describeCacheResponse_diskIds' - An array of strings that identify disks that are to be configured as
-- working storage. Each string has a minimum length of 1 and maximum
-- length of 300. You can get the disk IDs from the ListLocalDisks API.
--
-- 'cacheHitPercentage', 'describeCacheResponse_cacheHitPercentage' - Percent of application read operations from the file shares that are
-- served from cache. The sample is taken at the end of the reporting
-- period.
--
-- 'cacheUsedPercentage', 'describeCacheResponse_cacheUsedPercentage' - Percent use of the gateway\'s cache storage. This metric applies only to
-- the gateway-cached volume setup. The sample is taken at the end of the
-- reporting period.
--
-- 'cacheDirtyPercentage', 'describeCacheResponse_cacheDirtyPercentage' - The file share\'s contribution to the overall percentage of the
-- gateway\'s cache that has not been persisted to Amazon Web Services. The
-- sample is taken at the end of the reporting period.
--
-- 'gatewayARN', 'describeCacheResponse_gatewayARN' - Undocumented member.
--
-- 'cacheAllocatedInBytes', 'describeCacheResponse_cacheAllocatedInBytes' - The amount of cache in bytes allocated to a gateway.
--
-- 'httpStatus', 'describeCacheResponse_httpStatus' - The response's http status code.
newDescribeCacheResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCacheResponse
newDescribeCacheResponse pHttpStatus_ =
  DescribeCacheResponse'
    { cacheMissPercentage =
        Prelude.Nothing,
      diskIds = Prelude.Nothing,
      cacheHitPercentage = Prelude.Nothing,
      cacheUsedPercentage = Prelude.Nothing,
      cacheDirtyPercentage = Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      cacheAllocatedInBytes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Percent of application read operations from the file shares that are not
-- served from cache. The sample is taken at the end of the reporting
-- period.
describeCacheResponse_cacheMissPercentage :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Double)
describeCacheResponse_cacheMissPercentage = Lens.lens (\DescribeCacheResponse' {cacheMissPercentage} -> cacheMissPercentage) (\s@DescribeCacheResponse' {} a -> s {cacheMissPercentage = a} :: DescribeCacheResponse)

-- | An array of strings that identify disks that are to be configured as
-- working storage. Each string has a minimum length of 1 and maximum
-- length of 300. You can get the disk IDs from the ListLocalDisks API.
describeCacheResponse_diskIds :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe [Prelude.Text])
describeCacheResponse_diskIds = Lens.lens (\DescribeCacheResponse' {diskIds} -> diskIds) (\s@DescribeCacheResponse' {} a -> s {diskIds = a} :: DescribeCacheResponse) Prelude.. Lens.mapping Lens.coerced

-- | Percent of application read operations from the file shares that are
-- served from cache. The sample is taken at the end of the reporting
-- period.
describeCacheResponse_cacheHitPercentage :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Double)
describeCacheResponse_cacheHitPercentage = Lens.lens (\DescribeCacheResponse' {cacheHitPercentage} -> cacheHitPercentage) (\s@DescribeCacheResponse' {} a -> s {cacheHitPercentage = a} :: DescribeCacheResponse)

-- | Percent use of the gateway\'s cache storage. This metric applies only to
-- the gateway-cached volume setup. The sample is taken at the end of the
-- reporting period.
describeCacheResponse_cacheUsedPercentage :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Double)
describeCacheResponse_cacheUsedPercentage = Lens.lens (\DescribeCacheResponse' {cacheUsedPercentage} -> cacheUsedPercentage) (\s@DescribeCacheResponse' {} a -> s {cacheUsedPercentage = a} :: DescribeCacheResponse)

-- | The file share\'s contribution to the overall percentage of the
-- gateway\'s cache that has not been persisted to Amazon Web Services. The
-- sample is taken at the end of the reporting period.
describeCacheResponse_cacheDirtyPercentage :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Double)
describeCacheResponse_cacheDirtyPercentage = Lens.lens (\DescribeCacheResponse' {cacheDirtyPercentage} -> cacheDirtyPercentage) (\s@DescribeCacheResponse' {} a -> s {cacheDirtyPercentage = a} :: DescribeCacheResponse)

-- | Undocumented member.
describeCacheResponse_gatewayARN :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Text)
describeCacheResponse_gatewayARN = Lens.lens (\DescribeCacheResponse' {gatewayARN} -> gatewayARN) (\s@DescribeCacheResponse' {} a -> s {gatewayARN = a} :: DescribeCacheResponse)

-- | The amount of cache in bytes allocated to a gateway.
describeCacheResponse_cacheAllocatedInBytes :: Lens.Lens' DescribeCacheResponse (Prelude.Maybe Prelude.Integer)
describeCacheResponse_cacheAllocatedInBytes = Lens.lens (\DescribeCacheResponse' {cacheAllocatedInBytes} -> cacheAllocatedInBytes) (\s@DescribeCacheResponse' {} a -> s {cacheAllocatedInBytes = a} :: DescribeCacheResponse)

-- | The response's http status code.
describeCacheResponse_httpStatus :: Lens.Lens' DescribeCacheResponse Prelude.Int
describeCacheResponse_httpStatus = Lens.lens (\DescribeCacheResponse' {httpStatus} -> httpStatus) (\s@DescribeCacheResponse' {} a -> s {httpStatus = a} :: DescribeCacheResponse)

instance Prelude.NFData DescribeCacheResponse where
  rnf DescribeCacheResponse' {..} =
    Prelude.rnf cacheMissPercentage
      `Prelude.seq` Prelude.rnf diskIds
      `Prelude.seq` Prelude.rnf cacheHitPercentage
      `Prelude.seq` Prelude.rnf cacheUsedPercentage
      `Prelude.seq` Prelude.rnf cacheDirtyPercentage
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf cacheAllocatedInBytes
      `Prelude.seq` Prelude.rnf httpStatus

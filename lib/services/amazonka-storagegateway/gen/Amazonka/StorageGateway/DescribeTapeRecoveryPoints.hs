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
-- Module      : Amazonka.StorageGateway.DescribeTapeRecoveryPoints
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of virtual tape recovery points that are available for
-- the specified tape gateway.
--
-- A recovery point is a point-in-time view of a virtual tape at which all
-- the data on the virtual tape is consistent. If your gateway crashes,
-- virtual tapes that have recovery points can be recovered to a new
-- gateway. This operation is only supported in the tape gateway type.
--
-- This operation returns paginated results.
module Amazonka.StorageGateway.DescribeTapeRecoveryPoints
  ( -- * Creating a Request
    DescribeTapeRecoveryPoints (..),
    newDescribeTapeRecoveryPoints,

    -- * Request Lenses
    describeTapeRecoveryPoints_marker,
    describeTapeRecoveryPoints_limit,
    describeTapeRecoveryPoints_gatewayARN,

    -- * Destructuring the Response
    DescribeTapeRecoveryPointsResponse (..),
    newDescribeTapeRecoveryPointsResponse,

    -- * Response Lenses
    describeTapeRecoveryPointsResponse_marker,
    describeTapeRecoveryPointsResponse_tapeRecoveryPointInfos,
    describeTapeRecoveryPointsResponse_gatewayARN,
    describeTapeRecoveryPointsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | DescribeTapeRecoveryPointsInput
--
-- /See:/ 'newDescribeTapeRecoveryPoints' smart constructor.
data DescribeTapeRecoveryPoints = DescribeTapeRecoveryPoints'
  { -- | An opaque string that indicates the position at which to begin
    -- describing the virtual tape recovery points.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Specifies that the number of virtual tape recovery points that are
    -- described be limited to the specified number.
    limit :: Prelude.Maybe Prelude.Natural,
    gatewayARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTapeRecoveryPoints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeTapeRecoveryPoints_marker' - An opaque string that indicates the position at which to begin
-- describing the virtual tape recovery points.
--
-- 'limit', 'describeTapeRecoveryPoints_limit' - Specifies that the number of virtual tape recovery points that are
-- described be limited to the specified number.
--
-- 'gatewayARN', 'describeTapeRecoveryPoints_gatewayARN' - Undocumented member.
newDescribeTapeRecoveryPoints ::
  -- | 'gatewayARN'
  Prelude.Text ->
  DescribeTapeRecoveryPoints
newDescribeTapeRecoveryPoints pGatewayARN_ =
  DescribeTapeRecoveryPoints'
    { marker =
        Prelude.Nothing,
      limit = Prelude.Nothing,
      gatewayARN = pGatewayARN_
    }

-- | An opaque string that indicates the position at which to begin
-- describing the virtual tape recovery points.
describeTapeRecoveryPoints_marker :: Lens.Lens' DescribeTapeRecoveryPoints (Prelude.Maybe Prelude.Text)
describeTapeRecoveryPoints_marker = Lens.lens (\DescribeTapeRecoveryPoints' {marker} -> marker) (\s@DescribeTapeRecoveryPoints' {} a -> s {marker = a} :: DescribeTapeRecoveryPoints)

-- | Specifies that the number of virtual tape recovery points that are
-- described be limited to the specified number.
describeTapeRecoveryPoints_limit :: Lens.Lens' DescribeTapeRecoveryPoints (Prelude.Maybe Prelude.Natural)
describeTapeRecoveryPoints_limit = Lens.lens (\DescribeTapeRecoveryPoints' {limit} -> limit) (\s@DescribeTapeRecoveryPoints' {} a -> s {limit = a} :: DescribeTapeRecoveryPoints)

-- | Undocumented member.
describeTapeRecoveryPoints_gatewayARN :: Lens.Lens' DescribeTapeRecoveryPoints Prelude.Text
describeTapeRecoveryPoints_gatewayARN = Lens.lens (\DescribeTapeRecoveryPoints' {gatewayARN} -> gatewayARN) (\s@DescribeTapeRecoveryPoints' {} a -> s {gatewayARN = a} :: DescribeTapeRecoveryPoints)

instance Core.AWSPager DescribeTapeRecoveryPoints where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeTapeRecoveryPointsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeTapeRecoveryPointsResponse_tapeRecoveryPointInfos
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeTapeRecoveryPoints_marker
          Lens..~ rs
          Lens.^? describeTapeRecoveryPointsResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeTapeRecoveryPoints where
  type
    AWSResponse DescribeTapeRecoveryPoints =
      DescribeTapeRecoveryPointsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTapeRecoveryPointsResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> ( x Core..?> "TapeRecoveryPointInfos"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "GatewayARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTapeRecoveryPoints where
  hashWithSalt _salt DescribeTapeRecoveryPoints' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` gatewayARN

instance Prelude.NFData DescribeTapeRecoveryPoints where
  rnf DescribeTapeRecoveryPoints' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf gatewayARN

instance Core.ToHeaders DescribeTapeRecoveryPoints where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeTapeRecoveryPoints" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeTapeRecoveryPoints where
  toJSON DescribeTapeRecoveryPoints' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Marker" Core..=) Prelude.<$> marker,
            ("Limit" Core..=) Prelude.<$> limit,
            Prelude.Just ("GatewayARN" Core..= gatewayARN)
          ]
      )

instance Core.ToPath DescribeTapeRecoveryPoints where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeTapeRecoveryPoints where
  toQuery = Prelude.const Prelude.mempty

-- | DescribeTapeRecoveryPointsOutput
--
-- /See:/ 'newDescribeTapeRecoveryPointsResponse' smart constructor.
data DescribeTapeRecoveryPointsResponse = DescribeTapeRecoveryPointsResponse'
  { -- | An opaque string that indicates the position at which the virtual tape
    -- recovery points that were listed for description ended.
    --
    -- Use this marker in your next request to list the next set of virtual
    -- tape recovery points in the list. If there are no more recovery points
    -- to describe, this field does not appear in the response.
    marker :: Prelude.Maybe Prelude.Text,
    -- | An array of TapeRecoveryPointInfos that are available for the specified
    -- gateway.
    tapeRecoveryPointInfos :: Prelude.Maybe [TapeRecoveryPointInfo],
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTapeRecoveryPointsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeTapeRecoveryPointsResponse_marker' - An opaque string that indicates the position at which the virtual tape
-- recovery points that were listed for description ended.
--
-- Use this marker in your next request to list the next set of virtual
-- tape recovery points in the list. If there are no more recovery points
-- to describe, this field does not appear in the response.
--
-- 'tapeRecoveryPointInfos', 'describeTapeRecoveryPointsResponse_tapeRecoveryPointInfos' - An array of TapeRecoveryPointInfos that are available for the specified
-- gateway.
--
-- 'gatewayARN', 'describeTapeRecoveryPointsResponse_gatewayARN' - Undocumented member.
--
-- 'httpStatus', 'describeTapeRecoveryPointsResponse_httpStatus' - The response's http status code.
newDescribeTapeRecoveryPointsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTapeRecoveryPointsResponse
newDescribeTapeRecoveryPointsResponse pHttpStatus_ =
  DescribeTapeRecoveryPointsResponse'
    { marker =
        Prelude.Nothing,
      tapeRecoveryPointInfos =
        Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque string that indicates the position at which the virtual tape
-- recovery points that were listed for description ended.
--
-- Use this marker in your next request to list the next set of virtual
-- tape recovery points in the list. If there are no more recovery points
-- to describe, this field does not appear in the response.
describeTapeRecoveryPointsResponse_marker :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Prelude.Maybe Prelude.Text)
describeTapeRecoveryPointsResponse_marker = Lens.lens (\DescribeTapeRecoveryPointsResponse' {marker} -> marker) (\s@DescribeTapeRecoveryPointsResponse' {} a -> s {marker = a} :: DescribeTapeRecoveryPointsResponse)

-- | An array of TapeRecoveryPointInfos that are available for the specified
-- gateway.
describeTapeRecoveryPointsResponse_tapeRecoveryPointInfos :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Prelude.Maybe [TapeRecoveryPointInfo])
describeTapeRecoveryPointsResponse_tapeRecoveryPointInfos = Lens.lens (\DescribeTapeRecoveryPointsResponse' {tapeRecoveryPointInfos} -> tapeRecoveryPointInfos) (\s@DescribeTapeRecoveryPointsResponse' {} a -> s {tapeRecoveryPointInfos = a} :: DescribeTapeRecoveryPointsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeTapeRecoveryPointsResponse_gatewayARN :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Prelude.Maybe Prelude.Text)
describeTapeRecoveryPointsResponse_gatewayARN = Lens.lens (\DescribeTapeRecoveryPointsResponse' {gatewayARN} -> gatewayARN) (\s@DescribeTapeRecoveryPointsResponse' {} a -> s {gatewayARN = a} :: DescribeTapeRecoveryPointsResponse)

-- | The response's http status code.
describeTapeRecoveryPointsResponse_httpStatus :: Lens.Lens' DescribeTapeRecoveryPointsResponse Prelude.Int
describeTapeRecoveryPointsResponse_httpStatus = Lens.lens (\DescribeTapeRecoveryPointsResponse' {httpStatus} -> httpStatus) (\s@DescribeTapeRecoveryPointsResponse' {} a -> s {httpStatus = a} :: DescribeTapeRecoveryPointsResponse)

instance
  Prelude.NFData
    DescribeTapeRecoveryPointsResponse
  where
  rnf DescribeTapeRecoveryPointsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf tapeRecoveryPointInfos
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf httpStatus

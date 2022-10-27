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
-- Module      : Amazonka.StorageGateway.DescribeTapeArchives
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of specified virtual tapes in the virtual tape
-- shelf (VTS). This operation is only supported in the tape gateway type.
--
-- If a specific @TapeARN@ is not specified, Storage Gateway returns a
-- description of all virtual tapes found in the VTS associated with your
-- account.
--
-- This operation returns paginated results.
module Amazonka.StorageGateway.DescribeTapeArchives
  ( -- * Creating a Request
    DescribeTapeArchives (..),
    newDescribeTapeArchives,

    -- * Request Lenses
    describeTapeArchives_tapeARNs,
    describeTapeArchives_marker,
    describeTapeArchives_limit,

    -- * Destructuring the Response
    DescribeTapeArchivesResponse (..),
    newDescribeTapeArchivesResponse,

    -- * Response Lenses
    describeTapeArchivesResponse_tapeArchives,
    describeTapeArchivesResponse_marker,
    describeTapeArchivesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | DescribeTapeArchivesInput
--
-- /See:/ 'newDescribeTapeArchives' smart constructor.
data DescribeTapeArchives = DescribeTapeArchives'
  { -- | Specifies one or more unique Amazon Resource Names (ARNs) that represent
    -- the virtual tapes you want to describe.
    tapeARNs :: Prelude.Maybe [Prelude.Text],
    -- | An opaque string that indicates the position at which to begin
    -- describing virtual tapes.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Specifies that the number of virtual tapes described be limited to the
    -- specified number.
    limit :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTapeArchives' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tapeARNs', 'describeTapeArchives_tapeARNs' - Specifies one or more unique Amazon Resource Names (ARNs) that represent
-- the virtual tapes you want to describe.
--
-- 'marker', 'describeTapeArchives_marker' - An opaque string that indicates the position at which to begin
-- describing virtual tapes.
--
-- 'limit', 'describeTapeArchives_limit' - Specifies that the number of virtual tapes described be limited to the
-- specified number.
newDescribeTapeArchives ::
  DescribeTapeArchives
newDescribeTapeArchives =
  DescribeTapeArchives'
    { tapeARNs = Prelude.Nothing,
      marker = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | Specifies one or more unique Amazon Resource Names (ARNs) that represent
-- the virtual tapes you want to describe.
describeTapeArchives_tapeARNs :: Lens.Lens' DescribeTapeArchives (Prelude.Maybe [Prelude.Text])
describeTapeArchives_tapeARNs = Lens.lens (\DescribeTapeArchives' {tapeARNs} -> tapeARNs) (\s@DescribeTapeArchives' {} a -> s {tapeARNs = a} :: DescribeTapeArchives) Prelude.. Lens.mapping Lens.coerced

-- | An opaque string that indicates the position at which to begin
-- describing virtual tapes.
describeTapeArchives_marker :: Lens.Lens' DescribeTapeArchives (Prelude.Maybe Prelude.Text)
describeTapeArchives_marker = Lens.lens (\DescribeTapeArchives' {marker} -> marker) (\s@DescribeTapeArchives' {} a -> s {marker = a} :: DescribeTapeArchives)

-- | Specifies that the number of virtual tapes described be limited to the
-- specified number.
describeTapeArchives_limit :: Lens.Lens' DescribeTapeArchives (Prelude.Maybe Prelude.Natural)
describeTapeArchives_limit = Lens.lens (\DescribeTapeArchives' {limit} -> limit) (\s@DescribeTapeArchives' {} a -> s {limit = a} :: DescribeTapeArchives)

instance Core.AWSPager DescribeTapeArchives where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeTapeArchivesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeTapeArchivesResponse_tapeArchives
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeTapeArchives_marker
          Lens..~ rs
          Lens.^? describeTapeArchivesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeTapeArchives where
  type
    AWSResponse DescribeTapeArchives =
      DescribeTapeArchivesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTapeArchivesResponse'
            Prelude.<$> (x Core..?> "TapeArchives" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTapeArchives where
  hashWithSalt _salt DescribeTapeArchives' {..} =
    _salt `Prelude.hashWithSalt` tapeARNs
      `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` limit

instance Prelude.NFData DescribeTapeArchives where
  rnf DescribeTapeArchives' {..} =
    Prelude.rnf tapeARNs
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf limit

instance Core.ToHeaders DescribeTapeArchives where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeTapeArchives" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeTapeArchives where
  toJSON DescribeTapeArchives' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TapeARNs" Core..=) Prelude.<$> tapeARNs,
            ("Marker" Core..=) Prelude.<$> marker,
            ("Limit" Core..=) Prelude.<$> limit
          ]
      )

instance Core.ToPath DescribeTapeArchives where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeTapeArchives where
  toQuery = Prelude.const Prelude.mempty

-- | DescribeTapeArchivesOutput
--
-- /See:/ 'newDescribeTapeArchivesResponse' smart constructor.
data DescribeTapeArchivesResponse = DescribeTapeArchivesResponse'
  { -- | An array of virtual tape objects in the virtual tape shelf (VTS). The
    -- description includes of the Amazon Resource Name (ARN) of the virtual
    -- tapes. The information returned includes the Amazon Resource Names
    -- (ARNs) of the tapes, size of the tapes, status of the tapes, progress of
    -- the description, and tape barcode.
    tapeArchives :: Prelude.Maybe [TapeArchive],
    -- | An opaque string that indicates the position at which the virtual tapes
    -- that were fetched for description ended. Use this marker in your next
    -- request to fetch the next set of virtual tapes in the virtual tape shelf
    -- (VTS). If there are no more virtual tapes to describe, this field does
    -- not appear in the response.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTapeArchivesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tapeArchives', 'describeTapeArchivesResponse_tapeArchives' - An array of virtual tape objects in the virtual tape shelf (VTS). The
-- description includes of the Amazon Resource Name (ARN) of the virtual
-- tapes. The information returned includes the Amazon Resource Names
-- (ARNs) of the tapes, size of the tapes, status of the tapes, progress of
-- the description, and tape barcode.
--
-- 'marker', 'describeTapeArchivesResponse_marker' - An opaque string that indicates the position at which the virtual tapes
-- that were fetched for description ended. Use this marker in your next
-- request to fetch the next set of virtual tapes in the virtual tape shelf
-- (VTS). If there are no more virtual tapes to describe, this field does
-- not appear in the response.
--
-- 'httpStatus', 'describeTapeArchivesResponse_httpStatus' - The response's http status code.
newDescribeTapeArchivesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTapeArchivesResponse
newDescribeTapeArchivesResponse pHttpStatus_ =
  DescribeTapeArchivesResponse'
    { tapeArchives =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of virtual tape objects in the virtual tape shelf (VTS). The
-- description includes of the Amazon Resource Name (ARN) of the virtual
-- tapes. The information returned includes the Amazon Resource Names
-- (ARNs) of the tapes, size of the tapes, status of the tapes, progress of
-- the description, and tape barcode.
describeTapeArchivesResponse_tapeArchives :: Lens.Lens' DescribeTapeArchivesResponse (Prelude.Maybe [TapeArchive])
describeTapeArchivesResponse_tapeArchives = Lens.lens (\DescribeTapeArchivesResponse' {tapeArchives} -> tapeArchives) (\s@DescribeTapeArchivesResponse' {} a -> s {tapeArchives = a} :: DescribeTapeArchivesResponse) Prelude.. Lens.mapping Lens.coerced

-- | An opaque string that indicates the position at which the virtual tapes
-- that were fetched for description ended. Use this marker in your next
-- request to fetch the next set of virtual tapes in the virtual tape shelf
-- (VTS). If there are no more virtual tapes to describe, this field does
-- not appear in the response.
describeTapeArchivesResponse_marker :: Lens.Lens' DescribeTapeArchivesResponse (Prelude.Maybe Prelude.Text)
describeTapeArchivesResponse_marker = Lens.lens (\DescribeTapeArchivesResponse' {marker} -> marker) (\s@DescribeTapeArchivesResponse' {} a -> s {marker = a} :: DescribeTapeArchivesResponse)

-- | The response's http status code.
describeTapeArchivesResponse_httpStatus :: Lens.Lens' DescribeTapeArchivesResponse Prelude.Int
describeTapeArchivesResponse_httpStatus = Lens.lens (\DescribeTapeArchivesResponse' {httpStatus} -> httpStatus) (\s@DescribeTapeArchivesResponse' {} a -> s {httpStatus = a} :: DescribeTapeArchivesResponse)

instance Prelude.NFData DescribeTapeArchivesResponse where
  rnf DescribeTapeArchivesResponse' {..} =
    Prelude.rnf tapeArchives
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf httpStatus

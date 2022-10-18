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
-- Module      : Amazonka.FSx.DescribeVolumes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
-- OpenZFS volumes.
--
-- This operation returns paginated results.
module Amazonka.FSx.DescribeVolumes
  ( -- * Creating a Request
    DescribeVolumes (..),
    newDescribeVolumes,

    -- * Request Lenses
    describeVolumes_nextToken,
    describeVolumes_volumeIds,
    describeVolumes_filters,
    describeVolumes_maxResults,

    -- * Destructuring the Response
    DescribeVolumesResponse (..),
    newDescribeVolumesResponse,

    -- * Response Lenses
    describeVolumesResponse_nextToken,
    describeVolumesResponse_volumes,
    describeVolumesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeVolumes' smart constructor.
data DescribeVolumes = DescribeVolumes'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the volumes whose descriptions you want to retrieve.
    volumeIds :: Prelude.Maybe [Prelude.Text],
    -- | Enter a filter @Name@ and @Values@ pair to view a select set of volumes.
    filters :: Prelude.Maybe [VolumeFilter],
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVolumes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeVolumes_nextToken' - Undocumented member.
--
-- 'volumeIds', 'describeVolumes_volumeIds' - The IDs of the volumes whose descriptions you want to retrieve.
--
-- 'filters', 'describeVolumes_filters' - Enter a filter @Name@ and @Values@ pair to view a select set of volumes.
--
-- 'maxResults', 'describeVolumes_maxResults' - Undocumented member.
newDescribeVolumes ::
  DescribeVolumes
newDescribeVolumes =
  DescribeVolumes'
    { nextToken = Prelude.Nothing,
      volumeIds = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Undocumented member.
describeVolumes_nextToken :: Lens.Lens' DescribeVolumes (Prelude.Maybe Prelude.Text)
describeVolumes_nextToken = Lens.lens (\DescribeVolumes' {nextToken} -> nextToken) (\s@DescribeVolumes' {} a -> s {nextToken = a} :: DescribeVolumes)

-- | The IDs of the volumes whose descriptions you want to retrieve.
describeVolumes_volumeIds :: Lens.Lens' DescribeVolumes (Prelude.Maybe [Prelude.Text])
describeVolumes_volumeIds = Lens.lens (\DescribeVolumes' {volumeIds} -> volumeIds) (\s@DescribeVolumes' {} a -> s {volumeIds = a} :: DescribeVolumes) Prelude.. Lens.mapping Lens.coerced

-- | Enter a filter @Name@ and @Values@ pair to view a select set of volumes.
describeVolumes_filters :: Lens.Lens' DescribeVolumes (Prelude.Maybe [VolumeFilter])
describeVolumes_filters = Lens.lens (\DescribeVolumes' {filters} -> filters) (\s@DescribeVolumes' {} a -> s {filters = a} :: DescribeVolumes) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeVolumes_maxResults :: Lens.Lens' DescribeVolumes (Prelude.Maybe Prelude.Natural)
describeVolumes_maxResults = Lens.lens (\DescribeVolumes' {maxResults} -> maxResults) (\s@DescribeVolumes' {} a -> s {maxResults = a} :: DescribeVolumes)

instance Core.AWSPager DescribeVolumes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeVolumesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeVolumesResponse_volumes Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeVolumes_nextToken
          Lens..~ rs
          Lens.^? describeVolumesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeVolumes where
  type
    AWSResponse DescribeVolumes =
      DescribeVolumesResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVolumesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Volumes" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService DescribeVolumes where
  service _proxy = defaultService

instance Prelude.Hashable DescribeVolumes where
  hashWithSalt _salt DescribeVolumes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` volumeIds
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeVolumes where
  rnf DescribeVolumes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf volumeIds
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeVolumes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSimbaAPIService_v20180301.DescribeVolumes" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeVolumes where
  toJSON DescribeVolumes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("VolumeIds" Core..=) Prelude.<$> volumeIds,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeVolumes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeVolumes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeVolumesResponse' smart constructor.
data DescribeVolumesResponse = DescribeVolumesResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | Returned after a successful @DescribeVolumes@ operation, describing each
    -- volume.
    volumes :: Prelude.Maybe [Volume],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVolumesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeVolumesResponse_nextToken' - Undocumented member.
--
-- 'volumes', 'describeVolumesResponse_volumes' - Returned after a successful @DescribeVolumes@ operation, describing each
-- volume.
--
-- 'httpStatus', 'describeVolumesResponse_httpStatus' - The response's http status code.
newDescribeVolumesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVolumesResponse
newDescribeVolumesResponse pHttpStatus_ =
  DescribeVolumesResponse'
    { nextToken =
        Prelude.Nothing,
      volumes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeVolumesResponse_nextToken :: Lens.Lens' DescribeVolumesResponse (Prelude.Maybe Prelude.Text)
describeVolumesResponse_nextToken = Lens.lens (\DescribeVolumesResponse' {nextToken} -> nextToken) (\s@DescribeVolumesResponse' {} a -> s {nextToken = a} :: DescribeVolumesResponse)

-- | Returned after a successful @DescribeVolumes@ operation, describing each
-- volume.
describeVolumesResponse_volumes :: Lens.Lens' DescribeVolumesResponse (Prelude.Maybe [Volume])
describeVolumesResponse_volumes = Lens.lens (\DescribeVolumesResponse' {volumes} -> volumes) (\s@DescribeVolumesResponse' {} a -> s {volumes = a} :: DescribeVolumesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVolumesResponse_httpStatus :: Lens.Lens' DescribeVolumesResponse Prelude.Int
describeVolumesResponse_httpStatus = Lens.lens (\DescribeVolumesResponse' {httpStatus} -> httpStatus) (\s@DescribeVolumesResponse' {} a -> s {httpStatus = a} :: DescribeVolumesResponse)

instance Prelude.NFData DescribeVolumesResponse where
  rnf DescribeVolumesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf volumes
      `Prelude.seq` Prelude.rnf httpStatus

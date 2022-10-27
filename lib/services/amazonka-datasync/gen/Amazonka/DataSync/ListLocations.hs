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
-- Module      : Amazonka.DataSync.ListLocations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of source and destination locations.
--
-- If you have more locations than are returned in a response (that is, the
-- response returns only a truncated list of your agents), the response
-- contains a token that you can specify in your next request to fetch the
-- next page of locations.
--
-- This operation returns paginated results.
module Amazonka.DataSync.ListLocations
  ( -- * Creating a Request
    ListLocations (..),
    newListLocations,

    -- * Request Lenses
    listLocations_nextToken,
    listLocations_filters,
    listLocations_maxResults,

    -- * Destructuring the Response
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * Response Lenses
    listLocationsResponse_nextToken,
    listLocationsResponse_locations,
    listLocationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | ListLocationsRequest
--
-- /See:/ 'newListLocations' smart constructor.
data ListLocations = ListLocations'
  { -- | An opaque string that indicates the position at which to begin the next
    -- list of locations.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | You can use API filters to narrow down the list of resources returned by
    -- @ListLocations@. For example, to retrieve all tasks on a specific source
    -- location, you can use @ListLocations@ with filter name @LocationType S3@
    -- and @Operator Equals@.
    filters :: Prelude.Maybe [LocationFilter],
    -- | The maximum number of locations to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLocations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLocations_nextToken' - An opaque string that indicates the position at which to begin the next
-- list of locations.
--
-- 'filters', 'listLocations_filters' - You can use API filters to narrow down the list of resources returned by
-- @ListLocations@. For example, to retrieve all tasks on a specific source
-- location, you can use @ListLocations@ with filter name @LocationType S3@
-- and @Operator Equals@.
--
-- 'maxResults', 'listLocations_maxResults' - The maximum number of locations to return.
newListLocations ::
  ListLocations
newListLocations =
  ListLocations'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | An opaque string that indicates the position at which to begin the next
-- list of locations.
listLocations_nextToken :: Lens.Lens' ListLocations (Prelude.Maybe Prelude.Text)
listLocations_nextToken = Lens.lens (\ListLocations' {nextToken} -> nextToken) (\s@ListLocations' {} a -> s {nextToken = a} :: ListLocations)

-- | You can use API filters to narrow down the list of resources returned by
-- @ListLocations@. For example, to retrieve all tasks on a specific source
-- location, you can use @ListLocations@ with filter name @LocationType S3@
-- and @Operator Equals@.
listLocations_filters :: Lens.Lens' ListLocations (Prelude.Maybe [LocationFilter])
listLocations_filters = Lens.lens (\ListLocations' {filters} -> filters) (\s@ListLocations' {} a -> s {filters = a} :: ListLocations) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of locations to return.
listLocations_maxResults :: Lens.Lens' ListLocations (Prelude.Maybe Prelude.Natural)
listLocations_maxResults = Lens.lens (\ListLocations' {maxResults} -> maxResults) (\s@ListLocations' {} a -> s {maxResults = a} :: ListLocations)

instance Core.AWSPager ListLocations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLocationsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLocationsResponse_locations Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLocations_nextToken
          Lens..~ rs
          Lens.^? listLocationsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListLocations where
  type
    AWSResponse ListLocations =
      ListLocationsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLocationsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Locations" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLocations where
  hashWithSalt _salt ListLocations' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListLocations where
  rnf ListLocations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListLocations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("FmrsService.ListLocations" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLocations where
  toJSON ListLocations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListLocations where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLocations where
  toQuery = Prelude.const Prelude.mempty

-- | ListLocationsResponse
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse'
  { -- | An opaque string that indicates the position at which to begin returning
    -- the next list of locations.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array that contains a list of locations.
    locations :: Prelude.Maybe [LocationListEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLocationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLocationsResponse_nextToken' - An opaque string that indicates the position at which to begin returning
-- the next list of locations.
--
-- 'locations', 'listLocationsResponse_locations' - An array that contains a list of locations.
--
-- 'httpStatus', 'listLocationsResponse_httpStatus' - The response's http status code.
newListLocationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLocationsResponse
newListLocationsResponse pHttpStatus_ =
  ListLocationsResponse'
    { nextToken = Prelude.Nothing,
      locations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque string that indicates the position at which to begin returning
-- the next list of locations.
listLocationsResponse_nextToken :: Lens.Lens' ListLocationsResponse (Prelude.Maybe Prelude.Text)
listLocationsResponse_nextToken = Lens.lens (\ListLocationsResponse' {nextToken} -> nextToken) (\s@ListLocationsResponse' {} a -> s {nextToken = a} :: ListLocationsResponse)

-- | An array that contains a list of locations.
listLocationsResponse_locations :: Lens.Lens' ListLocationsResponse (Prelude.Maybe [LocationListEntry])
listLocationsResponse_locations = Lens.lens (\ListLocationsResponse' {locations} -> locations) (\s@ListLocationsResponse' {} a -> s {locations = a} :: ListLocationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLocationsResponse_httpStatus :: Lens.Lens' ListLocationsResponse Prelude.Int
listLocationsResponse_httpStatus = Lens.lens (\ListLocationsResponse' {httpStatus} -> httpStatus) (\s@ListLocationsResponse' {} a -> s {httpStatus = a} :: ListLocationsResponse)

instance Prelude.NFData ListLocationsResponse where
  rnf ListLocationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf locations
      `Prelude.seq` Prelude.rnf httpStatus

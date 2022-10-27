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
-- Module      : Amazonka.IoTFleetWise.ListVehiclesInFleet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of summaries of all vehicles associated with a fleet.
--
-- This API operation uses pagination. Specify the @nextToken@ parameter in
-- the request to return more results.
--
-- This operation returns paginated results.
module Amazonka.IoTFleetWise.ListVehiclesInFleet
  ( -- * Creating a Request
    ListVehiclesInFleet (..),
    newListVehiclesInFleet,

    -- * Request Lenses
    listVehiclesInFleet_nextToken,
    listVehiclesInFleet_maxResults,
    listVehiclesInFleet_fleetId,

    -- * Destructuring the Response
    ListVehiclesInFleetResponse (..),
    newListVehiclesInFleetResponse,

    -- * Response Lenses
    listVehiclesInFleetResponse_vehicles,
    listVehiclesInFleetResponse_nextToken,
    listVehiclesInFleetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListVehiclesInFleet' smart constructor.
data ListVehiclesInFleet = ListVehiclesInFleet'
  { -- | A pagination token for the next set of results.
    --
    -- If the results of a search are large, only a portion of the results are
    -- returned, and a @nextToken@ pagination token is returned in the
    -- response. To retrieve the next set of results, reissue the search
    -- request and include the returned token. When all results have been
    -- returned, the response does not contain a pagination token value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return, between 1 and 100, inclusive.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of a fleet.
    fleetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVehiclesInFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVehiclesInFleet_nextToken' - A pagination token for the next set of results.
--
-- If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next set of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'maxResults', 'listVehiclesInFleet_maxResults' - The maximum number of items to return, between 1 and 100, inclusive.
--
-- 'fleetId', 'listVehiclesInFleet_fleetId' - The ID of a fleet.
newListVehiclesInFleet ::
  -- | 'fleetId'
  Prelude.Text ->
  ListVehiclesInFleet
newListVehiclesInFleet pFleetId_ =
  ListVehiclesInFleet'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      fleetId = pFleetId_
    }

-- | A pagination token for the next set of results.
--
-- If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next set of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
listVehiclesInFleet_nextToken :: Lens.Lens' ListVehiclesInFleet (Prelude.Maybe Prelude.Text)
listVehiclesInFleet_nextToken = Lens.lens (\ListVehiclesInFleet' {nextToken} -> nextToken) (\s@ListVehiclesInFleet' {} a -> s {nextToken = a} :: ListVehiclesInFleet)

-- | The maximum number of items to return, between 1 and 100, inclusive.
listVehiclesInFleet_maxResults :: Lens.Lens' ListVehiclesInFleet (Prelude.Maybe Prelude.Natural)
listVehiclesInFleet_maxResults = Lens.lens (\ListVehiclesInFleet' {maxResults} -> maxResults) (\s@ListVehiclesInFleet' {} a -> s {maxResults = a} :: ListVehiclesInFleet)

-- | The ID of a fleet.
listVehiclesInFleet_fleetId :: Lens.Lens' ListVehiclesInFleet Prelude.Text
listVehiclesInFleet_fleetId = Lens.lens (\ListVehiclesInFleet' {fleetId} -> fleetId) (\s@ListVehiclesInFleet' {} a -> s {fleetId = a} :: ListVehiclesInFleet)

instance Core.AWSPager ListVehiclesInFleet where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVehiclesInFleetResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listVehiclesInFleetResponse_vehicles
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listVehiclesInFleet_nextToken
          Lens..~ rs
          Lens.^? listVehiclesInFleetResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListVehiclesInFleet where
  type
    AWSResponse ListVehiclesInFleet =
      ListVehiclesInFleetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVehiclesInFleetResponse'
            Prelude.<$> (x Core..?> "vehicles" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListVehiclesInFleet where
  hashWithSalt _salt ListVehiclesInFleet' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` fleetId

instance Prelude.NFData ListVehiclesInFleet where
  rnf ListVehiclesInFleet' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf fleetId

instance Core.ToHeaders ListVehiclesInFleet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTAutobahnControlPlane.ListVehiclesInFleet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListVehiclesInFleet where
  toJSON ListVehiclesInFleet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("fleetId" Core..= fleetId)
          ]
      )

instance Core.ToPath ListVehiclesInFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery ListVehiclesInFleet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListVehiclesInFleetResponse' smart constructor.
data ListVehiclesInFleetResponse = ListVehiclesInFleetResponse'
  { -- | A list of vehicles associated with the fleet.
    vehicles :: Prelude.Maybe [Prelude.Text],
    -- | The token to retrieve the next set of results, or @null@ if there are no
    -- more results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVehiclesInFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vehicles', 'listVehiclesInFleetResponse_vehicles' - A list of vehicles associated with the fleet.
--
-- 'nextToken', 'listVehiclesInFleetResponse_nextToken' - The token to retrieve the next set of results, or @null@ if there are no
-- more results.
--
-- 'httpStatus', 'listVehiclesInFleetResponse_httpStatus' - The response's http status code.
newListVehiclesInFleetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVehiclesInFleetResponse
newListVehiclesInFleetResponse pHttpStatus_ =
  ListVehiclesInFleetResponse'
    { vehicles =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of vehicles associated with the fleet.
listVehiclesInFleetResponse_vehicles :: Lens.Lens' ListVehiclesInFleetResponse (Prelude.Maybe [Prelude.Text])
listVehiclesInFleetResponse_vehicles = Lens.lens (\ListVehiclesInFleetResponse' {vehicles} -> vehicles) (\s@ListVehiclesInFleetResponse' {} a -> s {vehicles = a} :: ListVehiclesInFleetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to retrieve the next set of results, or @null@ if there are no
-- more results.
listVehiclesInFleetResponse_nextToken :: Lens.Lens' ListVehiclesInFleetResponse (Prelude.Maybe Prelude.Text)
listVehiclesInFleetResponse_nextToken = Lens.lens (\ListVehiclesInFleetResponse' {nextToken} -> nextToken) (\s@ListVehiclesInFleetResponse' {} a -> s {nextToken = a} :: ListVehiclesInFleetResponse)

-- | The response's http status code.
listVehiclesInFleetResponse_httpStatus :: Lens.Lens' ListVehiclesInFleetResponse Prelude.Int
listVehiclesInFleetResponse_httpStatus = Lens.lens (\ListVehiclesInFleetResponse' {httpStatus} -> httpStatus) (\s@ListVehiclesInFleetResponse' {} a -> s {httpStatus = a} :: ListVehiclesInFleetResponse)

instance Prelude.NFData ListVehiclesInFleetResponse where
  rnf ListVehiclesInFleetResponse' {..} =
    Prelude.rnf vehicles
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

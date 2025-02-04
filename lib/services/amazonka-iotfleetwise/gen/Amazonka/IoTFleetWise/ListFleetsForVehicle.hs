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
-- Module      : Amazonka.IoTFleetWise.ListFleetsForVehicle
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of IDs for all fleets that the vehicle is associated
-- with.
--
-- This API operation uses pagination. Specify the @nextToken@ parameter in
-- the request to return more results.
--
-- This operation returns paginated results.
module Amazonka.IoTFleetWise.ListFleetsForVehicle
  ( -- * Creating a Request
    ListFleetsForVehicle (..),
    newListFleetsForVehicle,

    -- * Request Lenses
    listFleetsForVehicle_nextToken,
    listFleetsForVehicle_maxResults,
    listFleetsForVehicle_vehicleName,

    -- * Destructuring the Response
    ListFleetsForVehicleResponse (..),
    newListFleetsForVehicleResponse,

    -- * Response Lenses
    listFleetsForVehicleResponse_nextToken,
    listFleetsForVehicleResponse_fleets,
    listFleetsForVehicleResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListFleetsForVehicle' smart constructor.
data ListFleetsForVehicle = ListFleetsForVehicle'
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
    -- | The ID of the vehicle to retrieve information about.
    vehicleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFleetsForVehicle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFleetsForVehicle_nextToken' - A pagination token for the next set of results.
--
-- If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next set of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'maxResults', 'listFleetsForVehicle_maxResults' - The maximum number of items to return, between 1 and 100, inclusive.
--
-- 'vehicleName', 'listFleetsForVehicle_vehicleName' - The ID of the vehicle to retrieve information about.
newListFleetsForVehicle ::
  -- | 'vehicleName'
  Prelude.Text ->
  ListFleetsForVehicle
newListFleetsForVehicle pVehicleName_ =
  ListFleetsForVehicle'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      vehicleName = pVehicleName_
    }

-- | A pagination token for the next set of results.
--
-- If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next set of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
listFleetsForVehicle_nextToken :: Lens.Lens' ListFleetsForVehicle (Prelude.Maybe Prelude.Text)
listFleetsForVehicle_nextToken = Lens.lens (\ListFleetsForVehicle' {nextToken} -> nextToken) (\s@ListFleetsForVehicle' {} a -> s {nextToken = a} :: ListFleetsForVehicle)

-- | The maximum number of items to return, between 1 and 100, inclusive.
listFleetsForVehicle_maxResults :: Lens.Lens' ListFleetsForVehicle (Prelude.Maybe Prelude.Natural)
listFleetsForVehicle_maxResults = Lens.lens (\ListFleetsForVehicle' {maxResults} -> maxResults) (\s@ListFleetsForVehicle' {} a -> s {maxResults = a} :: ListFleetsForVehicle)

-- | The ID of the vehicle to retrieve information about.
listFleetsForVehicle_vehicleName :: Lens.Lens' ListFleetsForVehicle Prelude.Text
listFleetsForVehicle_vehicleName = Lens.lens (\ListFleetsForVehicle' {vehicleName} -> vehicleName) (\s@ListFleetsForVehicle' {} a -> s {vehicleName = a} :: ListFleetsForVehicle)

instance Core.AWSPager ListFleetsForVehicle where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listFleetsForVehicleResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listFleetsForVehicleResponse_fleets
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listFleetsForVehicle_nextToken
          Lens..~ rs
          Lens.^? listFleetsForVehicleResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListFleetsForVehicle where
  type
    AWSResponse ListFleetsForVehicle =
      ListFleetsForVehicleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFleetsForVehicleResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "fleets" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListFleetsForVehicle where
  hashWithSalt _salt ListFleetsForVehicle' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` vehicleName

instance Prelude.NFData ListFleetsForVehicle where
  rnf ListFleetsForVehicle' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf vehicleName

instance Core.ToHeaders ListFleetsForVehicle where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTAutobahnControlPlane.ListFleetsForVehicle" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListFleetsForVehicle where
  toJSON ListFleetsForVehicle' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("vehicleName" Core..= vehicleName)
          ]
      )

instance Core.ToPath ListFleetsForVehicle where
  toPath = Prelude.const "/"

instance Core.ToQuery ListFleetsForVehicle where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListFleetsForVehicleResponse' smart constructor.
data ListFleetsForVehicleResponse = ListFleetsForVehicleResponse'
  { -- | The token to retrieve the next set of results, or @null@ if there are no
    -- more results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of fleet IDs that the vehicle is associated with.
    fleets :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFleetsForVehicleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFleetsForVehicleResponse_nextToken' - The token to retrieve the next set of results, or @null@ if there are no
-- more results.
--
-- 'fleets', 'listFleetsForVehicleResponse_fleets' - A list of fleet IDs that the vehicle is associated with.
--
-- 'httpStatus', 'listFleetsForVehicleResponse_httpStatus' - The response's http status code.
newListFleetsForVehicleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFleetsForVehicleResponse
newListFleetsForVehicleResponse pHttpStatus_ =
  ListFleetsForVehicleResponse'
    { nextToken =
        Prelude.Nothing,
      fleets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no
-- more results.
listFleetsForVehicleResponse_nextToken :: Lens.Lens' ListFleetsForVehicleResponse (Prelude.Maybe Prelude.Text)
listFleetsForVehicleResponse_nextToken = Lens.lens (\ListFleetsForVehicleResponse' {nextToken} -> nextToken) (\s@ListFleetsForVehicleResponse' {} a -> s {nextToken = a} :: ListFleetsForVehicleResponse)

-- | A list of fleet IDs that the vehicle is associated with.
listFleetsForVehicleResponse_fleets :: Lens.Lens' ListFleetsForVehicleResponse (Prelude.Maybe [Prelude.Text])
listFleetsForVehicleResponse_fleets = Lens.lens (\ListFleetsForVehicleResponse' {fleets} -> fleets) (\s@ListFleetsForVehicleResponse' {} a -> s {fleets = a} :: ListFleetsForVehicleResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listFleetsForVehicleResponse_httpStatus :: Lens.Lens' ListFleetsForVehicleResponse Prelude.Int
listFleetsForVehicleResponse_httpStatus = Lens.lens (\ListFleetsForVehicleResponse' {httpStatus} -> httpStatus) (\s@ListFleetsForVehicleResponse' {} a -> s {httpStatus = a} :: ListFleetsForVehicleResponse)

instance Prelude.NFData ListFleetsForVehicleResponse where
  rnf ListFleetsForVehicleResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf fleets
      `Prelude.seq` Prelude.rnf httpStatus

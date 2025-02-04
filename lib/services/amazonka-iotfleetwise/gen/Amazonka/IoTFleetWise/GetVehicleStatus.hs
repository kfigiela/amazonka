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
-- Module      : Amazonka.IoTFleetWise.GetVehicleStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status of a vehicle with any associated
-- campaigns.
--
-- This operation returns paginated results.
module Amazonka.IoTFleetWise.GetVehicleStatus
  ( -- * Creating a Request
    GetVehicleStatus (..),
    newGetVehicleStatus,

    -- * Request Lenses
    getVehicleStatus_nextToken,
    getVehicleStatus_maxResults,
    getVehicleStatus_vehicleName,

    -- * Destructuring the Response
    GetVehicleStatusResponse (..),
    newGetVehicleStatusResponse,

    -- * Response Lenses
    getVehicleStatusResponse_nextToken,
    getVehicleStatusResponse_campaigns,
    getVehicleStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetVehicleStatus' smart constructor.
data GetVehicleStatus = GetVehicleStatus'
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
-- Create a value of 'GetVehicleStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getVehicleStatus_nextToken' - A pagination token for the next set of results.
--
-- If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next set of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'maxResults', 'getVehicleStatus_maxResults' - The maximum number of items to return, between 1 and 100, inclusive.
--
-- 'vehicleName', 'getVehicleStatus_vehicleName' - The ID of the vehicle to retrieve information about.
newGetVehicleStatus ::
  -- | 'vehicleName'
  Prelude.Text ->
  GetVehicleStatus
newGetVehicleStatus pVehicleName_ =
  GetVehicleStatus'
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
getVehicleStatus_nextToken :: Lens.Lens' GetVehicleStatus (Prelude.Maybe Prelude.Text)
getVehicleStatus_nextToken = Lens.lens (\GetVehicleStatus' {nextToken} -> nextToken) (\s@GetVehicleStatus' {} a -> s {nextToken = a} :: GetVehicleStatus)

-- | The maximum number of items to return, between 1 and 100, inclusive.
getVehicleStatus_maxResults :: Lens.Lens' GetVehicleStatus (Prelude.Maybe Prelude.Natural)
getVehicleStatus_maxResults = Lens.lens (\GetVehicleStatus' {maxResults} -> maxResults) (\s@GetVehicleStatus' {} a -> s {maxResults = a} :: GetVehicleStatus)

-- | The ID of the vehicle to retrieve information about.
getVehicleStatus_vehicleName :: Lens.Lens' GetVehicleStatus Prelude.Text
getVehicleStatus_vehicleName = Lens.lens (\GetVehicleStatus' {vehicleName} -> vehicleName) (\s@GetVehicleStatus' {} a -> s {vehicleName = a} :: GetVehicleStatus)

instance Core.AWSPager GetVehicleStatus where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getVehicleStatusResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getVehicleStatusResponse_campaigns
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getVehicleStatus_nextToken
          Lens..~ rs
          Lens.^? getVehicleStatusResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetVehicleStatus where
  type
    AWSResponse GetVehicleStatus =
      GetVehicleStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVehicleStatusResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "campaigns" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVehicleStatus where
  hashWithSalt _salt GetVehicleStatus' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` vehicleName

instance Prelude.NFData GetVehicleStatus where
  rnf GetVehicleStatus' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf vehicleName

instance Core.ToHeaders GetVehicleStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTAutobahnControlPlane.GetVehicleStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetVehicleStatus where
  toJSON GetVehicleStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("vehicleName" Core..= vehicleName)
          ]
      )

instance Core.ToPath GetVehicleStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery GetVehicleStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVehicleStatusResponse' smart constructor.
data GetVehicleStatusResponse = GetVehicleStatusResponse'
  { -- | The token to retrieve the next set of results, or @null@ if there are no
    -- more results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Lists information about the state of the vehicle with deployed
    -- campaigns.
    campaigns :: Prelude.Maybe [VehicleStatus],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVehicleStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getVehicleStatusResponse_nextToken' - The token to retrieve the next set of results, or @null@ if there are no
-- more results.
--
-- 'campaigns', 'getVehicleStatusResponse_campaigns' - Lists information about the state of the vehicle with deployed
-- campaigns.
--
-- 'httpStatus', 'getVehicleStatusResponse_httpStatus' - The response's http status code.
newGetVehicleStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVehicleStatusResponse
newGetVehicleStatusResponse pHttpStatus_ =
  GetVehicleStatusResponse'
    { nextToken =
        Prelude.Nothing,
      campaigns = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no
-- more results.
getVehicleStatusResponse_nextToken :: Lens.Lens' GetVehicleStatusResponse (Prelude.Maybe Prelude.Text)
getVehicleStatusResponse_nextToken = Lens.lens (\GetVehicleStatusResponse' {nextToken} -> nextToken) (\s@GetVehicleStatusResponse' {} a -> s {nextToken = a} :: GetVehicleStatusResponse)

-- | Lists information about the state of the vehicle with deployed
-- campaigns.
getVehicleStatusResponse_campaigns :: Lens.Lens' GetVehicleStatusResponse (Prelude.Maybe [VehicleStatus])
getVehicleStatusResponse_campaigns = Lens.lens (\GetVehicleStatusResponse' {campaigns} -> campaigns) (\s@GetVehicleStatusResponse' {} a -> s {campaigns = a} :: GetVehicleStatusResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getVehicleStatusResponse_httpStatus :: Lens.Lens' GetVehicleStatusResponse Prelude.Int
getVehicleStatusResponse_httpStatus = Lens.lens (\GetVehicleStatusResponse' {httpStatus} -> httpStatus) (\s@GetVehicleStatusResponse' {} a -> s {httpStatus = a} :: GetVehicleStatusResponse)

instance Prelude.NFData GetVehicleStatusResponse where
  rnf GetVehicleStatusResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf campaigns
      `Prelude.seq` Prelude.rnf httpStatus

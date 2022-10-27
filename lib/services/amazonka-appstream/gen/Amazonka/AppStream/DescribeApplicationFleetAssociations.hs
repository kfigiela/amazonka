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
-- Module      : Amazonka.AppStream.DescribeApplicationFleetAssociations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more application fleet
-- associations. Either ApplicationArn or FleetName must be specified.
module Amazonka.AppStream.DescribeApplicationFleetAssociations
  ( -- * Creating a Request
    DescribeApplicationFleetAssociations (..),
    newDescribeApplicationFleetAssociations,

    -- * Request Lenses
    describeApplicationFleetAssociations_nextToken,
    describeApplicationFleetAssociations_applicationArn,
    describeApplicationFleetAssociations_fleetName,
    describeApplicationFleetAssociations_maxResults,

    -- * Destructuring the Response
    DescribeApplicationFleetAssociationsResponse (..),
    newDescribeApplicationFleetAssociationsResponse,

    -- * Response Lenses
    describeApplicationFleetAssociationsResponse_nextToken,
    describeApplicationFleetAssociationsResponse_applicationFleetAssociations,
    describeApplicationFleetAssociationsResponse_httpStatus,
  )
where

import Amazonka.AppStream.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeApplicationFleetAssociations' smart constructor.
data DescribeApplicationFleetAssociations = DescribeApplicationFleetAssociations'
  { -- | The pagination token used to retrieve the next page of results for this
    -- operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the application.
    applicationArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the fleet.
    fleetName :: Prelude.Maybe Prelude.Text,
    -- | The maximum size of each page of results.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationFleetAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeApplicationFleetAssociations_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation.
--
-- 'applicationArn', 'describeApplicationFleetAssociations_applicationArn' - The ARN of the application.
--
-- 'fleetName', 'describeApplicationFleetAssociations_fleetName' - The name of the fleet.
--
-- 'maxResults', 'describeApplicationFleetAssociations_maxResults' - The maximum size of each page of results.
newDescribeApplicationFleetAssociations ::
  DescribeApplicationFleetAssociations
newDescribeApplicationFleetAssociations =
  DescribeApplicationFleetAssociations'
    { nextToken =
        Prelude.Nothing,
      applicationArn = Prelude.Nothing,
      fleetName = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token used to retrieve the next page of results for this
-- operation.
describeApplicationFleetAssociations_nextToken :: Lens.Lens' DescribeApplicationFleetAssociations (Prelude.Maybe Prelude.Text)
describeApplicationFleetAssociations_nextToken = Lens.lens (\DescribeApplicationFleetAssociations' {nextToken} -> nextToken) (\s@DescribeApplicationFleetAssociations' {} a -> s {nextToken = a} :: DescribeApplicationFleetAssociations)

-- | The ARN of the application.
describeApplicationFleetAssociations_applicationArn :: Lens.Lens' DescribeApplicationFleetAssociations (Prelude.Maybe Prelude.Text)
describeApplicationFleetAssociations_applicationArn = Lens.lens (\DescribeApplicationFleetAssociations' {applicationArn} -> applicationArn) (\s@DescribeApplicationFleetAssociations' {} a -> s {applicationArn = a} :: DescribeApplicationFleetAssociations)

-- | The name of the fleet.
describeApplicationFleetAssociations_fleetName :: Lens.Lens' DescribeApplicationFleetAssociations (Prelude.Maybe Prelude.Text)
describeApplicationFleetAssociations_fleetName = Lens.lens (\DescribeApplicationFleetAssociations' {fleetName} -> fleetName) (\s@DescribeApplicationFleetAssociations' {} a -> s {fleetName = a} :: DescribeApplicationFleetAssociations)

-- | The maximum size of each page of results.
describeApplicationFleetAssociations_maxResults :: Lens.Lens' DescribeApplicationFleetAssociations (Prelude.Maybe Prelude.Int)
describeApplicationFleetAssociations_maxResults = Lens.lens (\DescribeApplicationFleetAssociations' {maxResults} -> maxResults) (\s@DescribeApplicationFleetAssociations' {} a -> s {maxResults = a} :: DescribeApplicationFleetAssociations)

instance
  Core.AWSRequest
    DescribeApplicationFleetAssociations
  where
  type
    AWSResponse DescribeApplicationFleetAssociations =
      DescribeApplicationFleetAssociationsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeApplicationFleetAssociationsResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> (x Core..?> "ApplicationFleetAssociations")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeApplicationFleetAssociations
  where
  hashWithSalt
    _salt
    DescribeApplicationFleetAssociations' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` applicationArn
        `Prelude.hashWithSalt` fleetName
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    DescribeApplicationFleetAssociations
  where
  rnf DescribeApplicationFleetAssociations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf applicationArn
      `Prelude.seq` Prelude.rnf fleetName
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    DescribeApplicationFleetAssociations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.DescribeApplicationFleetAssociations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeApplicationFleetAssociations
  where
  toJSON DescribeApplicationFleetAssociations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("ApplicationArn" Core..=)
              Prelude.<$> applicationArn,
            ("FleetName" Core..=) Prelude.<$> fleetName,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance
  Core.ToPath
    DescribeApplicationFleetAssociations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeApplicationFleetAssociations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeApplicationFleetAssociationsResponse' smart constructor.
data DescribeApplicationFleetAssociationsResponse = DescribeApplicationFleetAssociationsResponse'
  { -- | The pagination token used to retrieve the next page of results for this
    -- operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The application fleet associations in the list.
    applicationFleetAssociations :: Prelude.Maybe (Prelude.NonEmpty ApplicationFleetAssociation),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationFleetAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeApplicationFleetAssociationsResponse_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation.
--
-- 'applicationFleetAssociations', 'describeApplicationFleetAssociationsResponse_applicationFleetAssociations' - The application fleet associations in the list.
--
-- 'httpStatus', 'describeApplicationFleetAssociationsResponse_httpStatus' - The response's http status code.
newDescribeApplicationFleetAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeApplicationFleetAssociationsResponse
newDescribeApplicationFleetAssociationsResponse
  pHttpStatus_ =
    DescribeApplicationFleetAssociationsResponse'
      { nextToken =
          Prelude.Nothing,
        applicationFleetAssociations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The pagination token used to retrieve the next page of results for this
-- operation.
describeApplicationFleetAssociationsResponse_nextToken :: Lens.Lens' DescribeApplicationFleetAssociationsResponse (Prelude.Maybe Prelude.Text)
describeApplicationFleetAssociationsResponse_nextToken = Lens.lens (\DescribeApplicationFleetAssociationsResponse' {nextToken} -> nextToken) (\s@DescribeApplicationFleetAssociationsResponse' {} a -> s {nextToken = a} :: DescribeApplicationFleetAssociationsResponse)

-- | The application fleet associations in the list.
describeApplicationFleetAssociationsResponse_applicationFleetAssociations :: Lens.Lens' DescribeApplicationFleetAssociationsResponse (Prelude.Maybe (Prelude.NonEmpty ApplicationFleetAssociation))
describeApplicationFleetAssociationsResponse_applicationFleetAssociations = Lens.lens (\DescribeApplicationFleetAssociationsResponse' {applicationFleetAssociations} -> applicationFleetAssociations) (\s@DescribeApplicationFleetAssociationsResponse' {} a -> s {applicationFleetAssociations = a} :: DescribeApplicationFleetAssociationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeApplicationFleetAssociationsResponse_httpStatus :: Lens.Lens' DescribeApplicationFleetAssociationsResponse Prelude.Int
describeApplicationFleetAssociationsResponse_httpStatus = Lens.lens (\DescribeApplicationFleetAssociationsResponse' {httpStatus} -> httpStatus) (\s@DescribeApplicationFleetAssociationsResponse' {} a -> s {httpStatus = a} :: DescribeApplicationFleetAssociationsResponse)

instance
  Prelude.NFData
    DescribeApplicationFleetAssociationsResponse
  where
  rnf DescribeApplicationFleetAssociationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf applicationFleetAssociations
      `Prelude.seq` Prelude.rnf httpStatus

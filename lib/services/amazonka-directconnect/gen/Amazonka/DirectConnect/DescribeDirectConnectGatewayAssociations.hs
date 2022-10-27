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
-- Module      : Amazonka.DirectConnect.DescribeDirectConnectGatewayAssociations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the associations between your Direct Connect gateways and virtual
-- private gateways and transit gateways. You must specify one of the
-- following:
--
-- -   A Direct Connect gateway
--
--     The response contains all virtual private gateways and transit
--     gateways associated with the Direct Connect gateway.
--
-- -   A virtual private gateway
--
--     The response contains the Direct Connect gateway.
--
-- -   A transit gateway
--
--     The response contains the Direct Connect gateway.
--
-- -   A Direct Connect gateway and a virtual private gateway
--
--     The response contains the association between the Direct Connect
--     gateway and virtual private gateway.
--
-- -   A Direct Connect gateway and a transit gateway
--
--     The response contains the association between the Direct Connect
--     gateway and transit gateway.
--
-- This operation returns paginated results.
module Amazonka.DirectConnect.DescribeDirectConnectGatewayAssociations
  ( -- * Creating a Request
    DescribeDirectConnectGatewayAssociations (..),
    newDescribeDirectConnectGatewayAssociations,

    -- * Request Lenses
    describeDirectConnectGatewayAssociations_nextToken,
    describeDirectConnectGatewayAssociations_directConnectGatewayId,
    describeDirectConnectGatewayAssociations_virtualGatewayId,
    describeDirectConnectGatewayAssociations_maxResults,
    describeDirectConnectGatewayAssociations_associatedGatewayId,
    describeDirectConnectGatewayAssociations_associationId,

    -- * Destructuring the Response
    DescribeDirectConnectGatewayAssociationsResponse (..),
    newDescribeDirectConnectGatewayAssociationsResponse,

    -- * Response Lenses
    describeDirectConnectGatewayAssociationsResponse_nextToken,
    describeDirectConnectGatewayAssociationsResponse_directConnectGatewayAssociations,
    describeDirectConnectGatewayAssociationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeDirectConnectGatewayAssociations' smart constructor.
data DescribeDirectConnectGatewayAssociations = DescribeDirectConnectGatewayAssociations'
  { -- | The token provided in the previous call to retrieve the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Direct Connect gateway.
    directConnectGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the virtual private gateway or transit gateway.
    virtualGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    --
    -- If @MaxResults@ is given a value larger than 100, only 100 results are
    -- returned.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The ID of the associated gateway.
    associatedGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Direct Connect gateway association.
    associationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDirectConnectGatewayAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectConnectGatewayAssociations_nextToken' - The token provided in the previous call to retrieve the next page.
--
-- 'directConnectGatewayId', 'describeDirectConnectGatewayAssociations_directConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- 'virtualGatewayId', 'describeDirectConnectGatewayAssociations_virtualGatewayId' - The ID of the virtual private gateway or transit gateway.
--
-- 'maxResults', 'describeDirectConnectGatewayAssociations_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- If @MaxResults@ is given a value larger than 100, only 100 results are
-- returned.
--
-- 'associatedGatewayId', 'describeDirectConnectGatewayAssociations_associatedGatewayId' - The ID of the associated gateway.
--
-- 'associationId', 'describeDirectConnectGatewayAssociations_associationId' - The ID of the Direct Connect gateway association.
newDescribeDirectConnectGatewayAssociations ::
  DescribeDirectConnectGatewayAssociations
newDescribeDirectConnectGatewayAssociations =
  DescribeDirectConnectGatewayAssociations'
    { nextToken =
        Prelude.Nothing,
      directConnectGatewayId =
        Prelude.Nothing,
      virtualGatewayId =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      associatedGatewayId =
        Prelude.Nothing,
      associationId = Prelude.Nothing
    }

-- | The token provided in the previous call to retrieve the next page.
describeDirectConnectGatewayAssociations_nextToken :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociations_nextToken = Lens.lens (\DescribeDirectConnectGatewayAssociations' {nextToken} -> nextToken) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {nextToken = a} :: DescribeDirectConnectGatewayAssociations)

-- | The ID of the Direct Connect gateway.
describeDirectConnectGatewayAssociations_directConnectGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociations_directConnectGatewayId = Lens.lens (\DescribeDirectConnectGatewayAssociations' {directConnectGatewayId} -> directConnectGatewayId) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {directConnectGatewayId = a} :: DescribeDirectConnectGatewayAssociations)

-- | The ID of the virtual private gateway or transit gateway.
describeDirectConnectGatewayAssociations_virtualGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociations_virtualGatewayId = Lens.lens (\DescribeDirectConnectGatewayAssociations' {virtualGatewayId} -> virtualGatewayId) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {virtualGatewayId = a} :: DescribeDirectConnectGatewayAssociations)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- If @MaxResults@ is given a value larger than 100, only 100 results are
-- returned.
describeDirectConnectGatewayAssociations_maxResults :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Int)
describeDirectConnectGatewayAssociations_maxResults = Lens.lens (\DescribeDirectConnectGatewayAssociations' {maxResults} -> maxResults) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {maxResults = a} :: DescribeDirectConnectGatewayAssociations)

-- | The ID of the associated gateway.
describeDirectConnectGatewayAssociations_associatedGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociations_associatedGatewayId = Lens.lens (\DescribeDirectConnectGatewayAssociations' {associatedGatewayId} -> associatedGatewayId) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {associatedGatewayId = a} :: DescribeDirectConnectGatewayAssociations)

-- | The ID of the Direct Connect gateway association.
describeDirectConnectGatewayAssociations_associationId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociations_associationId = Lens.lens (\DescribeDirectConnectGatewayAssociations' {associationId} -> associationId) (\s@DescribeDirectConnectGatewayAssociations' {} a -> s {associationId = a} :: DescribeDirectConnectGatewayAssociations)

instance
  Core.AWSPager
    DescribeDirectConnectGatewayAssociations
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDirectConnectGatewayAssociationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDirectConnectGatewayAssociationsResponse_directConnectGatewayAssociations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeDirectConnectGatewayAssociations_nextToken
          Lens..~ rs
            Lens.^? describeDirectConnectGatewayAssociationsResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeDirectConnectGatewayAssociations
  where
  type
    AWSResponse
      DescribeDirectConnectGatewayAssociations =
      DescribeDirectConnectGatewayAssociationsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewayAssociationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
              Prelude.<*> ( x Core..?> "directConnectGatewayAssociations"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeDirectConnectGatewayAssociations
  where
  hashWithSalt
    _salt
    DescribeDirectConnectGatewayAssociations' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` directConnectGatewayId
        `Prelude.hashWithSalt` virtualGatewayId
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` associatedGatewayId
        `Prelude.hashWithSalt` associationId

instance
  Prelude.NFData
    DescribeDirectConnectGatewayAssociations
  where
  rnf DescribeDirectConnectGatewayAssociations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf directConnectGatewayId
      `Prelude.seq` Prelude.rnf virtualGatewayId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf associatedGatewayId
      `Prelude.seq` Prelude.rnf associationId

instance
  Core.ToHeaders
    DescribeDirectConnectGatewayAssociations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.DescribeDirectConnectGatewayAssociations" ::
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
    DescribeDirectConnectGatewayAssociations
  where
  toJSON DescribeDirectConnectGatewayAssociations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("directConnectGatewayId" Core..=)
              Prelude.<$> directConnectGatewayId,
            ("virtualGatewayId" Core..=)
              Prelude.<$> virtualGatewayId,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("associatedGatewayId" Core..=)
              Prelude.<$> associatedGatewayId,
            ("associationId" Core..=) Prelude.<$> associationId
          ]
      )

instance
  Core.ToPath
    DescribeDirectConnectGatewayAssociations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeDirectConnectGatewayAssociations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDirectConnectGatewayAssociationsResponse' smart constructor.
data DescribeDirectConnectGatewayAssociationsResponse = DescribeDirectConnectGatewayAssociationsResponse'
  { -- | The token to retrieve the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the associations.
    directConnectGatewayAssociations :: Prelude.Maybe [DirectConnectGatewayAssociation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDirectConnectGatewayAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectConnectGatewayAssociationsResponse_nextToken' - The token to retrieve the next page.
--
-- 'directConnectGatewayAssociations', 'describeDirectConnectGatewayAssociationsResponse_directConnectGatewayAssociations' - Information about the associations.
--
-- 'httpStatus', 'describeDirectConnectGatewayAssociationsResponse_httpStatus' - The response's http status code.
newDescribeDirectConnectGatewayAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDirectConnectGatewayAssociationsResponse
newDescribeDirectConnectGatewayAssociationsResponse
  pHttpStatus_ =
    DescribeDirectConnectGatewayAssociationsResponse'
      { nextToken =
          Prelude.Nothing,
        directConnectGatewayAssociations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to retrieve the next page.
describeDirectConnectGatewayAssociationsResponse_nextToken :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse (Prelude.Maybe Prelude.Text)
describeDirectConnectGatewayAssociationsResponse_nextToken = Lens.lens (\DescribeDirectConnectGatewayAssociationsResponse' {nextToken} -> nextToken) (\s@DescribeDirectConnectGatewayAssociationsResponse' {} a -> s {nextToken = a} :: DescribeDirectConnectGatewayAssociationsResponse)

-- | Information about the associations.
describeDirectConnectGatewayAssociationsResponse_directConnectGatewayAssociations :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse (Prelude.Maybe [DirectConnectGatewayAssociation])
describeDirectConnectGatewayAssociationsResponse_directConnectGatewayAssociations = Lens.lens (\DescribeDirectConnectGatewayAssociationsResponse' {directConnectGatewayAssociations} -> directConnectGatewayAssociations) (\s@DescribeDirectConnectGatewayAssociationsResponse' {} a -> s {directConnectGatewayAssociations = a} :: DescribeDirectConnectGatewayAssociationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDirectConnectGatewayAssociationsResponse_httpStatus :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse Prelude.Int
describeDirectConnectGatewayAssociationsResponse_httpStatus = Lens.lens (\DescribeDirectConnectGatewayAssociationsResponse' {httpStatus} -> httpStatus) (\s@DescribeDirectConnectGatewayAssociationsResponse' {} a -> s {httpStatus = a} :: DescribeDirectConnectGatewayAssociationsResponse)

instance
  Prelude.NFData
    DescribeDirectConnectGatewayAssociationsResponse
  where
  rnf
    DescribeDirectConnectGatewayAssociationsResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf directConnectGatewayAssociations
        `Prelude.seq` Prelude.rnf httpStatus

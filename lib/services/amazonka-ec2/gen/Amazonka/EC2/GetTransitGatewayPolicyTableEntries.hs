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
-- Module      : Amazonka.EC2.GetTransitGatewayPolicyTableEntries
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of transit gateway policy table entries.
module Amazonka.EC2.GetTransitGatewayPolicyTableEntries
  ( -- * Creating a Request
    GetTransitGatewayPolicyTableEntries (..),
    newGetTransitGatewayPolicyTableEntries,

    -- * Request Lenses
    getTransitGatewayPolicyTableEntries_nextToken,
    getTransitGatewayPolicyTableEntries_filters,
    getTransitGatewayPolicyTableEntries_dryRun,
    getTransitGatewayPolicyTableEntries_maxResults,
    getTransitGatewayPolicyTableEntries_transitGatewayPolicyTableId,

    -- * Destructuring the Response
    GetTransitGatewayPolicyTableEntriesResponse (..),
    newGetTransitGatewayPolicyTableEntriesResponse,

    -- * Response Lenses
    getTransitGatewayPolicyTableEntriesResponse_transitGatewayPolicyTableEntries,
    getTransitGatewayPolicyTableEntriesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTransitGatewayPolicyTableEntries' smart constructor.
data GetTransitGatewayPolicyTableEntries = GetTransitGatewayPolicyTableEntries'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters associated with the transit gateway policy table.
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the transit gateway policy table.
    transitGatewayPolicyTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayPolicyTableEntries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getTransitGatewayPolicyTableEntries_nextToken' - The token for the next page of results.
--
-- 'filters', 'getTransitGatewayPolicyTableEntries_filters' - The filters associated with the transit gateway policy table.
--
-- 'dryRun', 'getTransitGatewayPolicyTableEntries_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'getTransitGatewayPolicyTableEntries_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'transitGatewayPolicyTableId', 'getTransitGatewayPolicyTableEntries_transitGatewayPolicyTableId' - The ID of the transit gateway policy table.
newGetTransitGatewayPolicyTableEntries ::
  -- | 'transitGatewayPolicyTableId'
  Prelude.Text ->
  GetTransitGatewayPolicyTableEntries
newGetTransitGatewayPolicyTableEntries
  pTransitGatewayPolicyTableId_ =
    GetTransitGatewayPolicyTableEntries'
      { nextToken =
          Prelude.Nothing,
        filters = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        transitGatewayPolicyTableId =
          pTransitGatewayPolicyTableId_
      }

-- | The token for the next page of results.
getTransitGatewayPolicyTableEntries_nextToken :: Lens.Lens' GetTransitGatewayPolicyTableEntries (Prelude.Maybe Prelude.Text)
getTransitGatewayPolicyTableEntries_nextToken = Lens.lens (\GetTransitGatewayPolicyTableEntries' {nextToken} -> nextToken) (\s@GetTransitGatewayPolicyTableEntries' {} a -> s {nextToken = a} :: GetTransitGatewayPolicyTableEntries)

-- | The filters associated with the transit gateway policy table.
getTransitGatewayPolicyTableEntries_filters :: Lens.Lens' GetTransitGatewayPolicyTableEntries (Prelude.Maybe [Filter])
getTransitGatewayPolicyTableEntries_filters = Lens.lens (\GetTransitGatewayPolicyTableEntries' {filters} -> filters) (\s@GetTransitGatewayPolicyTableEntries' {} a -> s {filters = a} :: GetTransitGatewayPolicyTableEntries) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
getTransitGatewayPolicyTableEntries_dryRun :: Lens.Lens' GetTransitGatewayPolicyTableEntries (Prelude.Maybe Prelude.Bool)
getTransitGatewayPolicyTableEntries_dryRun = Lens.lens (\GetTransitGatewayPolicyTableEntries' {dryRun} -> dryRun) (\s@GetTransitGatewayPolicyTableEntries' {} a -> s {dryRun = a} :: GetTransitGatewayPolicyTableEntries)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
getTransitGatewayPolicyTableEntries_maxResults :: Lens.Lens' GetTransitGatewayPolicyTableEntries (Prelude.Maybe Prelude.Natural)
getTransitGatewayPolicyTableEntries_maxResults = Lens.lens (\GetTransitGatewayPolicyTableEntries' {maxResults} -> maxResults) (\s@GetTransitGatewayPolicyTableEntries' {} a -> s {maxResults = a} :: GetTransitGatewayPolicyTableEntries)

-- | The ID of the transit gateway policy table.
getTransitGatewayPolicyTableEntries_transitGatewayPolicyTableId :: Lens.Lens' GetTransitGatewayPolicyTableEntries Prelude.Text
getTransitGatewayPolicyTableEntries_transitGatewayPolicyTableId = Lens.lens (\GetTransitGatewayPolicyTableEntries' {transitGatewayPolicyTableId} -> transitGatewayPolicyTableId) (\s@GetTransitGatewayPolicyTableEntries' {} a -> s {transitGatewayPolicyTableId = a} :: GetTransitGatewayPolicyTableEntries)

instance
  Core.AWSRequest
    GetTransitGatewayPolicyTableEntries
  where
  type
    AWSResponse GetTransitGatewayPolicyTableEntries =
      GetTransitGatewayPolicyTableEntriesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          GetTransitGatewayPolicyTableEntriesResponse'
            Prelude.<$> ( x Core..@? "transitGatewayPolicyTableEntries"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetTransitGatewayPolicyTableEntries
  where
  hashWithSalt
    _salt
    GetTransitGatewayPolicyTableEntries' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` transitGatewayPolicyTableId

instance
  Prelude.NFData
    GetTransitGatewayPolicyTableEntries
  where
  rnf GetTransitGatewayPolicyTableEntries' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf transitGatewayPolicyTableId

instance
  Core.ToHeaders
    GetTransitGatewayPolicyTableEntries
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetTransitGatewayPolicyTableEntries
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetTransitGatewayPolicyTableEntries
  where
  toQuery GetTransitGatewayPolicyTableEntries' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "GetTransitGatewayPolicyTableEntries" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        "TransitGatewayPolicyTableId"
          Core.=: transitGatewayPolicyTableId
      ]

-- | /See:/ 'newGetTransitGatewayPolicyTableEntriesResponse' smart constructor.
data GetTransitGatewayPolicyTableEntriesResponse = GetTransitGatewayPolicyTableEntriesResponse'
  { -- | The entries for the transit gateway policy table.
    transitGatewayPolicyTableEntries :: Prelude.Maybe [TransitGatewayPolicyTableEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayPolicyTableEntriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transitGatewayPolicyTableEntries', 'getTransitGatewayPolicyTableEntriesResponse_transitGatewayPolicyTableEntries' - The entries for the transit gateway policy table.
--
-- 'httpStatus', 'getTransitGatewayPolicyTableEntriesResponse_httpStatus' - The response's http status code.
newGetTransitGatewayPolicyTableEntriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTransitGatewayPolicyTableEntriesResponse
newGetTransitGatewayPolicyTableEntriesResponse
  pHttpStatus_ =
    GetTransitGatewayPolicyTableEntriesResponse'
      { transitGatewayPolicyTableEntries =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The entries for the transit gateway policy table.
getTransitGatewayPolicyTableEntriesResponse_transitGatewayPolicyTableEntries :: Lens.Lens' GetTransitGatewayPolicyTableEntriesResponse (Prelude.Maybe [TransitGatewayPolicyTableEntry])
getTransitGatewayPolicyTableEntriesResponse_transitGatewayPolicyTableEntries = Lens.lens (\GetTransitGatewayPolicyTableEntriesResponse' {transitGatewayPolicyTableEntries} -> transitGatewayPolicyTableEntries) (\s@GetTransitGatewayPolicyTableEntriesResponse' {} a -> s {transitGatewayPolicyTableEntries = a} :: GetTransitGatewayPolicyTableEntriesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getTransitGatewayPolicyTableEntriesResponse_httpStatus :: Lens.Lens' GetTransitGatewayPolicyTableEntriesResponse Prelude.Int
getTransitGatewayPolicyTableEntriesResponse_httpStatus = Lens.lens (\GetTransitGatewayPolicyTableEntriesResponse' {httpStatus} -> httpStatus) (\s@GetTransitGatewayPolicyTableEntriesResponse' {} a -> s {httpStatus = a} :: GetTransitGatewayPolicyTableEntriesResponse)

instance
  Prelude.NFData
    GetTransitGatewayPolicyTableEntriesResponse
  where
  rnf GetTransitGatewayPolicyTableEntriesResponse' {..} =
    Prelude.rnf transitGatewayPolicyTableEntries
      `Prelude.seq` Prelude.rnf httpStatus

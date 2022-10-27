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
-- Module      : Amazonka.EC2.GetNetworkInsightsAccessScopeAnalysisFindings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the findings for the specified Network Access Scope analysis.
module Amazonka.EC2.GetNetworkInsightsAccessScopeAnalysisFindings
  ( -- * Creating a Request
    GetNetworkInsightsAccessScopeAnalysisFindings (..),
    newGetNetworkInsightsAccessScopeAnalysisFindings,

    -- * Request Lenses
    getNetworkInsightsAccessScopeAnalysisFindings_nextToken,
    getNetworkInsightsAccessScopeAnalysisFindings_dryRun,
    getNetworkInsightsAccessScopeAnalysisFindings_maxResults,
    getNetworkInsightsAccessScopeAnalysisFindings_networkInsightsAccessScopeAnalysisId,

    -- * Destructuring the Response
    GetNetworkInsightsAccessScopeAnalysisFindingsResponse (..),
    newGetNetworkInsightsAccessScopeAnalysisFindingsResponse,

    -- * Response Lenses
    getNetworkInsightsAccessScopeAnalysisFindingsResponse_networkInsightsAccessScopeAnalysisId,
    getNetworkInsightsAccessScopeAnalysisFindingsResponse_nextToken,
    getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisFindings,
    getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisStatus,
    getNetworkInsightsAccessScopeAnalysisFindingsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetNetworkInsightsAccessScopeAnalysisFindings' smart constructor.
data GetNetworkInsightsAccessScopeAnalysisFindings = GetNetworkInsightsAccessScopeAnalysisFindings'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Network Access Scope analysis.
    networkInsightsAccessScopeAnalysisId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNetworkInsightsAccessScopeAnalysisFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getNetworkInsightsAccessScopeAnalysisFindings_nextToken' - The token for the next page of results.
--
-- 'dryRun', 'getNetworkInsightsAccessScopeAnalysisFindings_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'getNetworkInsightsAccessScopeAnalysisFindings_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'networkInsightsAccessScopeAnalysisId', 'getNetworkInsightsAccessScopeAnalysisFindings_networkInsightsAccessScopeAnalysisId' - The ID of the Network Access Scope analysis.
newGetNetworkInsightsAccessScopeAnalysisFindings ::
  -- | 'networkInsightsAccessScopeAnalysisId'
  Prelude.Text ->
  GetNetworkInsightsAccessScopeAnalysisFindings
newGetNetworkInsightsAccessScopeAnalysisFindings
  pNetworkInsightsAccessScopeAnalysisId_ =
    GetNetworkInsightsAccessScopeAnalysisFindings'
      { nextToken =
          Prelude.Nothing,
        dryRun = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        networkInsightsAccessScopeAnalysisId =
          pNetworkInsightsAccessScopeAnalysisId_
      }

-- | The token for the next page of results.
getNetworkInsightsAccessScopeAnalysisFindings_nextToken :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindings (Prelude.Maybe Prelude.Text)
getNetworkInsightsAccessScopeAnalysisFindings_nextToken = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindings' {nextToken} -> nextToken) (\s@GetNetworkInsightsAccessScopeAnalysisFindings' {} a -> s {nextToken = a} :: GetNetworkInsightsAccessScopeAnalysisFindings)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
getNetworkInsightsAccessScopeAnalysisFindings_dryRun :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindings (Prelude.Maybe Prelude.Bool)
getNetworkInsightsAccessScopeAnalysisFindings_dryRun = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindings' {dryRun} -> dryRun) (\s@GetNetworkInsightsAccessScopeAnalysisFindings' {} a -> s {dryRun = a} :: GetNetworkInsightsAccessScopeAnalysisFindings)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
getNetworkInsightsAccessScopeAnalysisFindings_maxResults :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindings (Prelude.Maybe Prelude.Natural)
getNetworkInsightsAccessScopeAnalysisFindings_maxResults = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindings' {maxResults} -> maxResults) (\s@GetNetworkInsightsAccessScopeAnalysisFindings' {} a -> s {maxResults = a} :: GetNetworkInsightsAccessScopeAnalysisFindings)

-- | The ID of the Network Access Scope analysis.
getNetworkInsightsAccessScopeAnalysisFindings_networkInsightsAccessScopeAnalysisId :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindings Prelude.Text
getNetworkInsightsAccessScopeAnalysisFindings_networkInsightsAccessScopeAnalysisId = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindings' {networkInsightsAccessScopeAnalysisId} -> networkInsightsAccessScopeAnalysisId) (\s@GetNetworkInsightsAccessScopeAnalysisFindings' {} a -> s {networkInsightsAccessScopeAnalysisId = a} :: GetNetworkInsightsAccessScopeAnalysisFindings)

instance
  Core.AWSRequest
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  type
    AWSResponse
      GetNetworkInsightsAccessScopeAnalysisFindings =
      GetNetworkInsightsAccessScopeAnalysisFindingsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          GetNetworkInsightsAccessScopeAnalysisFindingsResponse'
            Prelude.<$> (x Core..@? "networkInsightsAccessScopeAnalysisId")
              Prelude.<*> (x Core..@? "nextToken")
              Prelude.<*> ( x Core..@? "analysisFindingSet"
                              Core..!@ Prelude.mempty
                              Prelude.>>= Core.may (Core.parseXMLList "item")
                          )
              Prelude.<*> (x Core..@? "analysisStatus")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  hashWithSalt
    _salt
    GetNetworkInsightsAccessScopeAnalysisFindings' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` networkInsightsAccessScopeAnalysisId

instance
  Prelude.NFData
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  rnf
    GetNetworkInsightsAccessScopeAnalysisFindings' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf dryRun
        `Prelude.seq` Prelude.rnf maxResults
        `Prelude.seq` Prelude.rnf networkInsightsAccessScopeAnalysisId

instance
  Core.ToHeaders
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetNetworkInsightsAccessScopeAnalysisFindings
  where
  toQuery
    GetNetworkInsightsAccessScopeAnalysisFindings' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "GetNetworkInsightsAccessScopeAnalysisFindings" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          "NextToken" Core.=: nextToken,
          "DryRun" Core.=: dryRun,
          "MaxResults" Core.=: maxResults,
          "NetworkInsightsAccessScopeAnalysisId"
            Core.=: networkInsightsAccessScopeAnalysisId
        ]

-- | /See:/ 'newGetNetworkInsightsAccessScopeAnalysisFindingsResponse' smart constructor.
data GetNetworkInsightsAccessScopeAnalysisFindingsResponse = GetNetworkInsightsAccessScopeAnalysisFindingsResponse'
  { -- | The ID of the Network Access Scope analysis.
    networkInsightsAccessScopeAnalysisId :: Prelude.Maybe Prelude.Text,
    -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The findings associated with Network Access Scope Analysis.
    analysisFindings :: Prelude.Maybe [AccessScopeAnalysisFinding],
    -- | The status of Network Access Scope Analysis.
    analysisStatus :: Prelude.Maybe AnalysisStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNetworkInsightsAccessScopeAnalysisFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkInsightsAccessScopeAnalysisId', 'getNetworkInsightsAccessScopeAnalysisFindingsResponse_networkInsightsAccessScopeAnalysisId' - The ID of the Network Access Scope analysis.
--
-- 'nextToken', 'getNetworkInsightsAccessScopeAnalysisFindingsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'analysisFindings', 'getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisFindings' - The findings associated with Network Access Scope Analysis.
--
-- 'analysisStatus', 'getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisStatus' - The status of Network Access Scope Analysis.
--
-- 'httpStatus', 'getNetworkInsightsAccessScopeAnalysisFindingsResponse_httpStatus' - The response's http status code.
newGetNetworkInsightsAccessScopeAnalysisFindingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetNetworkInsightsAccessScopeAnalysisFindingsResponse
newGetNetworkInsightsAccessScopeAnalysisFindingsResponse
  pHttpStatus_ =
    GetNetworkInsightsAccessScopeAnalysisFindingsResponse'
      { networkInsightsAccessScopeAnalysisId =
          Prelude.Nothing,
        nextToken =
          Prelude.Nothing,
        analysisFindings =
          Prelude.Nothing,
        analysisStatus =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The ID of the Network Access Scope analysis.
getNetworkInsightsAccessScopeAnalysisFindingsResponse_networkInsightsAccessScopeAnalysisId :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindingsResponse (Prelude.Maybe Prelude.Text)
getNetworkInsightsAccessScopeAnalysisFindingsResponse_networkInsightsAccessScopeAnalysisId = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {networkInsightsAccessScopeAnalysisId} -> networkInsightsAccessScopeAnalysisId) (\s@GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {} a -> s {networkInsightsAccessScopeAnalysisId = a} :: GetNetworkInsightsAccessScopeAnalysisFindingsResponse)

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
getNetworkInsightsAccessScopeAnalysisFindingsResponse_nextToken :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindingsResponse (Prelude.Maybe Prelude.Text)
getNetworkInsightsAccessScopeAnalysisFindingsResponse_nextToken = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {nextToken} -> nextToken) (\s@GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {} a -> s {nextToken = a} :: GetNetworkInsightsAccessScopeAnalysisFindingsResponse)

-- | The findings associated with Network Access Scope Analysis.
getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisFindings :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindingsResponse (Prelude.Maybe [AccessScopeAnalysisFinding])
getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisFindings = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {analysisFindings} -> analysisFindings) (\s@GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {} a -> s {analysisFindings = a} :: GetNetworkInsightsAccessScopeAnalysisFindingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The status of Network Access Scope Analysis.
getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisStatus :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindingsResponse (Prelude.Maybe AnalysisStatus)
getNetworkInsightsAccessScopeAnalysisFindingsResponse_analysisStatus = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {analysisStatus} -> analysisStatus) (\s@GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {} a -> s {analysisStatus = a} :: GetNetworkInsightsAccessScopeAnalysisFindingsResponse)

-- | The response's http status code.
getNetworkInsightsAccessScopeAnalysisFindingsResponse_httpStatus :: Lens.Lens' GetNetworkInsightsAccessScopeAnalysisFindingsResponse Prelude.Int
getNetworkInsightsAccessScopeAnalysisFindingsResponse_httpStatus = Lens.lens (\GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {httpStatus} -> httpStatus) (\s@GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {} a -> s {httpStatus = a} :: GetNetworkInsightsAccessScopeAnalysisFindingsResponse)

instance
  Prelude.NFData
    GetNetworkInsightsAccessScopeAnalysisFindingsResponse
  where
  rnf
    GetNetworkInsightsAccessScopeAnalysisFindingsResponse' {..} =
      Prelude.rnf networkInsightsAccessScopeAnalysisId
        `Prelude.seq` Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf analysisFindings
        `Prelude.seq` Prelude.rnf analysisStatus
        `Prelude.seq` Prelude.rnf httpStatus

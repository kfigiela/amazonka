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
-- Module      : Amazonka.ComputeOptimizer.GetRecommendationSummaries
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the optimization findings for an account.
--
-- It returns the number of:
--
-- -   Amazon EC2 instances in an account that are @Underprovisioned@,
--     @Overprovisioned@, or @Optimized@.
--
-- -   Auto Scaling groups in an account that are @NotOptimized@, or
--     @Optimized@.
--
-- -   Amazon EBS volumes in an account that are @NotOptimized@, or
--     @Optimized@.
--
-- -   Lambda functions in an account that are @NotOptimized@, or
--     @Optimized@.
module Amazonka.ComputeOptimizer.GetRecommendationSummaries
  ( -- * Creating a Request
    GetRecommendationSummaries (..),
    newGetRecommendationSummaries,

    -- * Request Lenses
    getRecommendationSummaries_accountIds,
    getRecommendationSummaries_nextToken,
    getRecommendationSummaries_maxResults,

    -- * Destructuring the Response
    GetRecommendationSummariesResponse (..),
    newGetRecommendationSummariesResponse,

    -- * Response Lenses
    getRecommendationSummariesResponse_recommendationSummaries,
    getRecommendationSummariesResponse_nextToken,
    getRecommendationSummariesResponse_httpStatus,
  )
where

import Amazonka.ComputeOptimizer.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRecommendationSummaries' smart constructor.
data GetRecommendationSummaries = GetRecommendationSummaries'
  { -- | The ID of the Amazon Web Services account for which to return
    -- recommendation summaries.
    --
    -- If your account is the management account of an organization, use this
    -- parameter to specify the member account for which you want to return
    -- recommendation summaries.
    --
    -- Only one account ID can be specified per request.
    accountIds :: Prelude.Maybe [Prelude.Text],
    -- | The token to advance to the next page of recommendation summaries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of recommendation summaries to return with a single
    -- request.
    --
    -- To retrieve the remaining results, make another request with the
    -- returned @nextToken@ value.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendationSummaries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'getRecommendationSummaries_accountIds' - The ID of the Amazon Web Services account for which to return
-- recommendation summaries.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to return
-- recommendation summaries.
--
-- Only one account ID can be specified per request.
--
-- 'nextToken', 'getRecommendationSummaries_nextToken' - The token to advance to the next page of recommendation summaries.
--
-- 'maxResults', 'getRecommendationSummaries_maxResults' - The maximum number of recommendation summaries to return with a single
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
newGetRecommendationSummaries ::
  GetRecommendationSummaries
newGetRecommendationSummaries =
  GetRecommendationSummaries'
    { accountIds =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The ID of the Amazon Web Services account for which to return
-- recommendation summaries.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to return
-- recommendation summaries.
--
-- Only one account ID can be specified per request.
getRecommendationSummaries_accountIds :: Lens.Lens' GetRecommendationSummaries (Prelude.Maybe [Prelude.Text])
getRecommendationSummaries_accountIds = Lens.lens (\GetRecommendationSummaries' {accountIds} -> accountIds) (\s@GetRecommendationSummaries' {} a -> s {accountIds = a} :: GetRecommendationSummaries) Prelude.. Lens.mapping Lens.coerced

-- | The token to advance to the next page of recommendation summaries.
getRecommendationSummaries_nextToken :: Lens.Lens' GetRecommendationSummaries (Prelude.Maybe Prelude.Text)
getRecommendationSummaries_nextToken = Lens.lens (\GetRecommendationSummaries' {nextToken} -> nextToken) (\s@GetRecommendationSummaries' {} a -> s {nextToken = a} :: GetRecommendationSummaries)

-- | The maximum number of recommendation summaries to return with a single
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
getRecommendationSummaries_maxResults :: Lens.Lens' GetRecommendationSummaries (Prelude.Maybe Prelude.Int)
getRecommendationSummaries_maxResults = Lens.lens (\GetRecommendationSummaries' {maxResults} -> maxResults) (\s@GetRecommendationSummaries' {} a -> s {maxResults = a} :: GetRecommendationSummaries)

instance Core.AWSRequest GetRecommendationSummaries where
  type
    AWSResponse GetRecommendationSummaries =
      GetRecommendationSummariesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecommendationSummariesResponse'
            Prelude.<$> ( x Core..?> "recommendationSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRecommendationSummaries where
  hashWithSalt _salt GetRecommendationSummaries' {..} =
    _salt `Prelude.hashWithSalt` accountIds
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData GetRecommendationSummaries where
  rnf GetRecommendationSummaries' {..} =
    Prelude.rnf accountIds
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders GetRecommendationSummaries where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.GetRecommendationSummaries" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRecommendationSummaries where
  toJSON GetRecommendationSummaries' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accountIds" Core..=) Prelude.<$> accountIds,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetRecommendationSummaries where
  toPath = Prelude.const "/"

instance Core.ToQuery GetRecommendationSummaries where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRecommendationSummariesResponse' smart constructor.
data GetRecommendationSummariesResponse = GetRecommendationSummariesResponse'
  { -- | An array of objects that summarize a recommendation.
    recommendationSummaries :: Prelude.Maybe [RecommendationSummary],
    -- | The token to use to advance to the next page of recommendation
    -- summaries.
    --
    -- This value is null when there are no more pages of recommendation
    -- summaries to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendationSummariesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommendationSummaries', 'getRecommendationSummariesResponse_recommendationSummaries' - An array of objects that summarize a recommendation.
--
-- 'nextToken', 'getRecommendationSummariesResponse_nextToken' - The token to use to advance to the next page of recommendation
-- summaries.
--
-- This value is null when there are no more pages of recommendation
-- summaries to return.
--
-- 'httpStatus', 'getRecommendationSummariesResponse_httpStatus' - The response's http status code.
newGetRecommendationSummariesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRecommendationSummariesResponse
newGetRecommendationSummariesResponse pHttpStatus_ =
  GetRecommendationSummariesResponse'
    { recommendationSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that summarize a recommendation.
getRecommendationSummariesResponse_recommendationSummaries :: Lens.Lens' GetRecommendationSummariesResponse (Prelude.Maybe [RecommendationSummary])
getRecommendationSummariesResponse_recommendationSummaries = Lens.lens (\GetRecommendationSummariesResponse' {recommendationSummaries} -> recommendationSummaries) (\s@GetRecommendationSummariesResponse' {} a -> s {recommendationSummaries = a} :: GetRecommendationSummariesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to advance to the next page of recommendation
-- summaries.
--
-- This value is null when there are no more pages of recommendation
-- summaries to return.
getRecommendationSummariesResponse_nextToken :: Lens.Lens' GetRecommendationSummariesResponse (Prelude.Maybe Prelude.Text)
getRecommendationSummariesResponse_nextToken = Lens.lens (\GetRecommendationSummariesResponse' {nextToken} -> nextToken) (\s@GetRecommendationSummariesResponse' {} a -> s {nextToken = a} :: GetRecommendationSummariesResponse)

-- | The response's http status code.
getRecommendationSummariesResponse_httpStatus :: Lens.Lens' GetRecommendationSummariesResponse Prelude.Int
getRecommendationSummariesResponse_httpStatus = Lens.lens (\GetRecommendationSummariesResponse' {httpStatus} -> httpStatus) (\s@GetRecommendationSummariesResponse' {} a -> s {httpStatus = a} :: GetRecommendationSummariesResponse)

instance
  Prelude.NFData
    GetRecommendationSummariesResponse
  where
  rnf GetRecommendationSummariesResponse' {..} =
    Prelude.rnf recommendationSummaries
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

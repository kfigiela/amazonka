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
-- Module      : Amazonka.ResilienceHub.ListRecommendationTemplates
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the recommendation templates for the Resilience Hub applications.
module Amazonka.ResilienceHub.ListRecommendationTemplates
  ( -- * Creating a Request
    ListRecommendationTemplates (..),
    newListRecommendationTemplates,

    -- * Request Lenses
    listRecommendationTemplates_recommendationTemplateArn,
    listRecommendationTemplates_name,
    listRecommendationTemplates_nextToken,
    listRecommendationTemplates_status,
    listRecommendationTemplates_maxResults,
    listRecommendationTemplates_reverseOrder,
    listRecommendationTemplates_assessmentArn,

    -- * Destructuring the Response
    ListRecommendationTemplatesResponse (..),
    newListRecommendationTemplatesResponse,

    -- * Response Lenses
    listRecommendationTemplatesResponse_nextToken,
    listRecommendationTemplatesResponse_recommendationTemplates,
    listRecommendationTemplatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import Amazonka.ResilienceHub.Types
import qualified Amazonka.Response as Response

-- | /See:/ 'newListRecommendationTemplates' smart constructor.
data ListRecommendationTemplates = ListRecommendationTemplates'
  { -- | The Amazon Resource Name (ARN) for a recommendation template.
    recommendationTemplateArn :: Prelude.Maybe Prelude.Text,
    -- | The name for one of the listed recommendation templates.
    name :: Prelude.Maybe Prelude.Text,
    -- | Null, or the token from a previous call to get the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The status of the action.
    status :: Prelude.Maybe (Prelude.NonEmpty RecommendationTemplateStatus),
    -- | The maximum number of results to include in the response. If more
    -- results exist than the specified @MaxResults@ value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The default is to sort by ascending __startTime__. To sort by descending
    -- __startTime__, set reverseOrder to @true@.
    reverseOrder :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the assessment. The format for this
    -- ARN is:
    -- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    assessmentArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecommendationTemplates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommendationTemplateArn', 'listRecommendationTemplates_recommendationTemplateArn' - The Amazon Resource Name (ARN) for a recommendation template.
--
-- 'name', 'listRecommendationTemplates_name' - The name for one of the listed recommendation templates.
--
-- 'nextToken', 'listRecommendationTemplates_nextToken' - Null, or the token from a previous call to get the next set of results.
--
-- 'status', 'listRecommendationTemplates_status' - The status of the action.
--
-- 'maxResults', 'listRecommendationTemplates_maxResults' - The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
--
-- 'reverseOrder', 'listRecommendationTemplates_reverseOrder' - The default is to sort by ascending __startTime__. To sort by descending
-- __startTime__, set reverseOrder to @true@.
--
-- 'assessmentArn', 'listRecommendationTemplates_assessmentArn' - The Amazon Resource Name (ARN) of the assessment. The format for this
-- ARN is:
-- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
newListRecommendationTemplates ::
  -- | 'assessmentArn'
  Prelude.Text ->
  ListRecommendationTemplates
newListRecommendationTemplates pAssessmentArn_ =
  ListRecommendationTemplates'
    { recommendationTemplateArn =
        Prelude.Nothing,
      name = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      reverseOrder = Prelude.Nothing,
      assessmentArn = pAssessmentArn_
    }

-- | The Amazon Resource Name (ARN) for a recommendation template.
listRecommendationTemplates_recommendationTemplateArn :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe Prelude.Text)
listRecommendationTemplates_recommendationTemplateArn = Lens.lens (\ListRecommendationTemplates' {recommendationTemplateArn} -> recommendationTemplateArn) (\s@ListRecommendationTemplates' {} a -> s {recommendationTemplateArn = a} :: ListRecommendationTemplates)

-- | The name for one of the listed recommendation templates.
listRecommendationTemplates_name :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe Prelude.Text)
listRecommendationTemplates_name = Lens.lens (\ListRecommendationTemplates' {name} -> name) (\s@ListRecommendationTemplates' {} a -> s {name = a} :: ListRecommendationTemplates)

-- | Null, or the token from a previous call to get the next set of results.
listRecommendationTemplates_nextToken :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe Prelude.Text)
listRecommendationTemplates_nextToken = Lens.lens (\ListRecommendationTemplates' {nextToken} -> nextToken) (\s@ListRecommendationTemplates' {} a -> s {nextToken = a} :: ListRecommendationTemplates)

-- | The status of the action.
listRecommendationTemplates_status :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe (Prelude.NonEmpty RecommendationTemplateStatus))
listRecommendationTemplates_status = Lens.lens (\ListRecommendationTemplates' {status} -> status) (\s@ListRecommendationTemplates' {} a -> s {status = a} :: ListRecommendationTemplates) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
listRecommendationTemplates_maxResults :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe Prelude.Natural)
listRecommendationTemplates_maxResults = Lens.lens (\ListRecommendationTemplates' {maxResults} -> maxResults) (\s@ListRecommendationTemplates' {} a -> s {maxResults = a} :: ListRecommendationTemplates)

-- | The default is to sort by ascending __startTime__. To sort by descending
-- __startTime__, set reverseOrder to @true@.
listRecommendationTemplates_reverseOrder :: Lens.Lens' ListRecommendationTemplates (Prelude.Maybe Prelude.Bool)
listRecommendationTemplates_reverseOrder = Lens.lens (\ListRecommendationTemplates' {reverseOrder} -> reverseOrder) (\s@ListRecommendationTemplates' {} a -> s {reverseOrder = a} :: ListRecommendationTemplates)

-- | The Amazon Resource Name (ARN) of the assessment. The format for this
-- ARN is:
-- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
listRecommendationTemplates_assessmentArn :: Lens.Lens' ListRecommendationTemplates Prelude.Text
listRecommendationTemplates_assessmentArn = Lens.lens (\ListRecommendationTemplates' {assessmentArn} -> assessmentArn) (\s@ListRecommendationTemplates' {} a -> s {assessmentArn = a} :: ListRecommendationTemplates)

instance Core.AWSRequest ListRecommendationTemplates where
  type
    AWSResponse ListRecommendationTemplates =
      ListRecommendationTemplatesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRecommendationTemplatesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "recommendationTemplates"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRecommendationTemplates where
  hashWithSalt _salt ListRecommendationTemplates' {..} =
    _salt
      `Prelude.hashWithSalt` recommendationTemplateArn
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` reverseOrder
      `Prelude.hashWithSalt` assessmentArn

instance Prelude.NFData ListRecommendationTemplates where
  rnf ListRecommendationTemplates' {..} =
    Prelude.rnf recommendationTemplateArn
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf reverseOrder
      `Prelude.seq` Prelude.rnf assessmentArn

instance Core.ToHeaders ListRecommendationTemplates where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRecommendationTemplates where
  toPath =
    Prelude.const "/list-recommendation-templates"

instance Core.ToQuery ListRecommendationTemplates where
  toQuery ListRecommendationTemplates' {..} =
    Prelude.mconcat
      [ "recommendationTemplateArn"
          Core.=: recommendationTemplateArn,
        "name" Core.=: name,
        "nextToken" Core.=: nextToken,
        "status"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> status),
        "maxResults" Core.=: maxResults,
        "reverseOrder" Core.=: reverseOrder,
        "assessmentArn" Core.=: assessmentArn
      ]

-- | /See:/ 'newListRecommendationTemplatesResponse' smart constructor.
data ListRecommendationTemplatesResponse = ListRecommendationTemplatesResponse'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The recommendation templates for the Resilience Hub applications.
    recommendationTemplates :: Prelude.Maybe [RecommendationTemplate],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecommendationTemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRecommendationTemplatesResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'recommendationTemplates', 'listRecommendationTemplatesResponse_recommendationTemplates' - The recommendation templates for the Resilience Hub applications.
--
-- 'httpStatus', 'listRecommendationTemplatesResponse_httpStatus' - The response's http status code.
newListRecommendationTemplatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRecommendationTemplatesResponse
newListRecommendationTemplatesResponse pHttpStatus_ =
  ListRecommendationTemplatesResponse'
    { nextToken =
        Prelude.Nothing,
      recommendationTemplates =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listRecommendationTemplatesResponse_nextToken :: Lens.Lens' ListRecommendationTemplatesResponse (Prelude.Maybe Prelude.Text)
listRecommendationTemplatesResponse_nextToken = Lens.lens (\ListRecommendationTemplatesResponse' {nextToken} -> nextToken) (\s@ListRecommendationTemplatesResponse' {} a -> s {nextToken = a} :: ListRecommendationTemplatesResponse)

-- | The recommendation templates for the Resilience Hub applications.
listRecommendationTemplatesResponse_recommendationTemplates :: Lens.Lens' ListRecommendationTemplatesResponse (Prelude.Maybe [RecommendationTemplate])
listRecommendationTemplatesResponse_recommendationTemplates = Lens.lens (\ListRecommendationTemplatesResponse' {recommendationTemplates} -> recommendationTemplates) (\s@ListRecommendationTemplatesResponse' {} a -> s {recommendationTemplates = a} :: ListRecommendationTemplatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listRecommendationTemplatesResponse_httpStatus :: Lens.Lens' ListRecommendationTemplatesResponse Prelude.Int
listRecommendationTemplatesResponse_httpStatus = Lens.lens (\ListRecommendationTemplatesResponse' {httpStatus} -> httpStatus) (\s@ListRecommendationTemplatesResponse' {} a -> s {httpStatus = a} :: ListRecommendationTemplatesResponse)

instance
  Prelude.NFData
    ListRecommendationTemplatesResponse
  where
  rnf ListRecommendationTemplatesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf recommendationTemplates
      `Prelude.seq` Prelude.rnf httpStatus

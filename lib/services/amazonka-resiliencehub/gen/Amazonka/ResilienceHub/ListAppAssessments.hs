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
-- Module      : Amazonka.ResilienceHub.ListAppAssessments
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the assessments for an AWS Resilience Hub application. You can use
-- request parameters to refine the results for the response object.
module Amazonka.ResilienceHub.ListAppAssessments
  ( -- * Creating a Request
    ListAppAssessments (..),
    newListAppAssessments,

    -- * Request Lenses
    listAppAssessments_nextToken,
    listAppAssessments_assessmentName,
    listAppAssessments_complianceStatus,
    listAppAssessments_invoker,
    listAppAssessments_maxResults,
    listAppAssessments_appArn,
    listAppAssessments_assessmentStatus,
    listAppAssessments_reverseOrder,

    -- * Destructuring the Response
    ListAppAssessmentsResponse (..),
    newListAppAssessmentsResponse,

    -- * Response Lenses
    listAppAssessmentsResponse_nextToken,
    listAppAssessmentsResponse_httpStatus,
    listAppAssessmentsResponse_assessmentSummaries,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import Amazonka.ResilienceHub.Types
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAppAssessments' smart constructor.
data ListAppAssessments = ListAppAssessments'
  { -- | Null, or the token from a previous call to get the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name for the assessment.
    assessmentName :: Prelude.Maybe Prelude.Text,
    -- | The current status of compliance for the resiliency policy.
    complianceStatus :: Prelude.Maybe ComplianceStatus,
    -- | Specifies the entity that invoked a specific assessment, either a @User@
    -- or the @System@.
    invoker :: Prelude.Maybe AssessmentInvoker,
    -- | The maximum number of results to include in the response. If more
    -- results exist than the specified @MaxResults@ value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the application. The format for this
    -- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    appArn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the assessment for the resiliency policy.
    assessmentStatus :: Prelude.Maybe (Prelude.NonEmpty AssessmentStatus),
    -- | The default is to sort by ascending __startTime__. To sort by descending
    -- __startTime__, set reverseOrder to @true@.
    reverseOrder :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppAssessments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppAssessments_nextToken' - Null, or the token from a previous call to get the next set of results.
--
-- 'assessmentName', 'listAppAssessments_assessmentName' - The name for the assessment.
--
-- 'complianceStatus', 'listAppAssessments_complianceStatus' - The current status of compliance for the resiliency policy.
--
-- 'invoker', 'listAppAssessments_invoker' - Specifies the entity that invoked a specific assessment, either a @User@
-- or the @System@.
--
-- 'maxResults', 'listAppAssessments_maxResults' - The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
--
-- 'appArn', 'listAppAssessments_appArn' - The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'assessmentStatus', 'listAppAssessments_assessmentStatus' - The current status of the assessment for the resiliency policy.
--
-- 'reverseOrder', 'listAppAssessments_reverseOrder' - The default is to sort by ascending __startTime__. To sort by descending
-- __startTime__, set reverseOrder to @true@.
newListAppAssessments ::
  ListAppAssessments
newListAppAssessments =
  ListAppAssessments'
    { nextToken = Prelude.Nothing,
      assessmentName = Prelude.Nothing,
      complianceStatus = Prelude.Nothing,
      invoker = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appArn = Prelude.Nothing,
      assessmentStatus = Prelude.Nothing,
      reverseOrder = Prelude.Nothing
    }

-- | Null, or the token from a previous call to get the next set of results.
listAppAssessments_nextToken :: Lens.Lens' ListAppAssessments (Prelude.Maybe Prelude.Text)
listAppAssessments_nextToken = Lens.lens (\ListAppAssessments' {nextToken} -> nextToken) (\s@ListAppAssessments' {} a -> s {nextToken = a} :: ListAppAssessments)

-- | The name for the assessment.
listAppAssessments_assessmentName :: Lens.Lens' ListAppAssessments (Prelude.Maybe Prelude.Text)
listAppAssessments_assessmentName = Lens.lens (\ListAppAssessments' {assessmentName} -> assessmentName) (\s@ListAppAssessments' {} a -> s {assessmentName = a} :: ListAppAssessments)

-- | The current status of compliance for the resiliency policy.
listAppAssessments_complianceStatus :: Lens.Lens' ListAppAssessments (Prelude.Maybe ComplianceStatus)
listAppAssessments_complianceStatus = Lens.lens (\ListAppAssessments' {complianceStatus} -> complianceStatus) (\s@ListAppAssessments' {} a -> s {complianceStatus = a} :: ListAppAssessments)

-- | Specifies the entity that invoked a specific assessment, either a @User@
-- or the @System@.
listAppAssessments_invoker :: Lens.Lens' ListAppAssessments (Prelude.Maybe AssessmentInvoker)
listAppAssessments_invoker = Lens.lens (\ListAppAssessments' {invoker} -> invoker) (\s@ListAppAssessments' {} a -> s {invoker = a} :: ListAppAssessments)

-- | The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
listAppAssessments_maxResults :: Lens.Lens' ListAppAssessments (Prelude.Maybe Prelude.Natural)
listAppAssessments_maxResults = Lens.lens (\ListAppAssessments' {maxResults} -> maxResults) (\s@ListAppAssessments' {} a -> s {maxResults = a} :: ListAppAssessments)

-- | The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
listAppAssessments_appArn :: Lens.Lens' ListAppAssessments (Prelude.Maybe Prelude.Text)
listAppAssessments_appArn = Lens.lens (\ListAppAssessments' {appArn} -> appArn) (\s@ListAppAssessments' {} a -> s {appArn = a} :: ListAppAssessments)

-- | The current status of the assessment for the resiliency policy.
listAppAssessments_assessmentStatus :: Lens.Lens' ListAppAssessments (Prelude.Maybe (Prelude.NonEmpty AssessmentStatus))
listAppAssessments_assessmentStatus = Lens.lens (\ListAppAssessments' {assessmentStatus} -> assessmentStatus) (\s@ListAppAssessments' {} a -> s {assessmentStatus = a} :: ListAppAssessments) Prelude.. Lens.mapping Lens.coerced

-- | The default is to sort by ascending __startTime__. To sort by descending
-- __startTime__, set reverseOrder to @true@.
listAppAssessments_reverseOrder :: Lens.Lens' ListAppAssessments (Prelude.Maybe Prelude.Bool)
listAppAssessments_reverseOrder = Lens.lens (\ListAppAssessments' {reverseOrder} -> reverseOrder) (\s@ListAppAssessments' {} a -> s {reverseOrder = a} :: ListAppAssessments)

instance Core.AWSRequest ListAppAssessments where
  type
    AWSResponse ListAppAssessments =
      ListAppAssessmentsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAppAssessmentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "assessmentSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListAppAssessments where
  hashWithSalt _salt ListAppAssessments' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` assessmentName
      `Prelude.hashWithSalt` complianceStatus
      `Prelude.hashWithSalt` invoker
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` appArn
      `Prelude.hashWithSalt` assessmentStatus
      `Prelude.hashWithSalt` reverseOrder

instance Prelude.NFData ListAppAssessments where
  rnf ListAppAssessments' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf assessmentName
      `Prelude.seq` Prelude.rnf complianceStatus
      `Prelude.seq` Prelude.rnf invoker
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf appArn
      `Prelude.seq` Prelude.rnf assessmentStatus
      `Prelude.seq` Prelude.rnf reverseOrder

instance Core.ToHeaders ListAppAssessments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAppAssessments where
  toPath = Prelude.const "/list-app-assessments"

instance Core.ToQuery ListAppAssessments where
  toQuery ListAppAssessments' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "assessmentName" Core.=: assessmentName,
        "complianceStatus" Core.=: complianceStatus,
        "invoker" Core.=: invoker,
        "maxResults" Core.=: maxResults,
        "appArn" Core.=: appArn,
        "assessmentStatus"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> assessmentStatus
            ),
        "reverseOrder" Core.=: reverseOrder
      ]

-- | /See:/ 'newListAppAssessmentsResponse' smart constructor.
data ListAppAssessmentsResponse = ListAppAssessmentsResponse'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The summaries for the specified assessments, returned as an object. This
    -- object includes application versions, associated Amazon Resource Numbers
    -- (ARNs), cost, messages, resiliency scores, and more.
    assessmentSummaries :: [AppAssessmentSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppAssessmentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppAssessmentsResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'httpStatus', 'listAppAssessmentsResponse_httpStatus' - The response's http status code.
--
-- 'assessmentSummaries', 'listAppAssessmentsResponse_assessmentSummaries' - The summaries for the specified assessments, returned as an object. This
-- object includes application versions, associated Amazon Resource Numbers
-- (ARNs), cost, messages, resiliency scores, and more.
newListAppAssessmentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAppAssessmentsResponse
newListAppAssessmentsResponse pHttpStatus_ =
  ListAppAssessmentsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      assessmentSummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listAppAssessmentsResponse_nextToken :: Lens.Lens' ListAppAssessmentsResponse (Prelude.Maybe Prelude.Text)
listAppAssessmentsResponse_nextToken = Lens.lens (\ListAppAssessmentsResponse' {nextToken} -> nextToken) (\s@ListAppAssessmentsResponse' {} a -> s {nextToken = a} :: ListAppAssessmentsResponse)

-- | The response's http status code.
listAppAssessmentsResponse_httpStatus :: Lens.Lens' ListAppAssessmentsResponse Prelude.Int
listAppAssessmentsResponse_httpStatus = Lens.lens (\ListAppAssessmentsResponse' {httpStatus} -> httpStatus) (\s@ListAppAssessmentsResponse' {} a -> s {httpStatus = a} :: ListAppAssessmentsResponse)

-- | The summaries for the specified assessments, returned as an object. This
-- object includes application versions, associated Amazon Resource Numbers
-- (ARNs), cost, messages, resiliency scores, and more.
listAppAssessmentsResponse_assessmentSummaries :: Lens.Lens' ListAppAssessmentsResponse [AppAssessmentSummary]
listAppAssessmentsResponse_assessmentSummaries = Lens.lens (\ListAppAssessmentsResponse' {assessmentSummaries} -> assessmentSummaries) (\s@ListAppAssessmentsResponse' {} a -> s {assessmentSummaries = a} :: ListAppAssessmentsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListAppAssessmentsResponse where
  rnf ListAppAssessmentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf assessmentSummaries

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
-- Module      : Amazonka.QuickSight.ListIAMPolicyAssignments
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists IAM policy assignments in the current Amazon QuickSight account.
module Amazonka.QuickSight.ListIAMPolicyAssignments
  ( -- * Creating a Request
    ListIAMPolicyAssignments (..),
    newListIAMPolicyAssignments,

    -- * Request Lenses
    listIAMPolicyAssignments_nextToken,
    listIAMPolicyAssignments_maxResults,
    listIAMPolicyAssignments_assignmentStatus,
    listIAMPolicyAssignments_awsAccountId,
    listIAMPolicyAssignments_namespace,

    -- * Destructuring the Response
    ListIAMPolicyAssignmentsResponse (..),
    newListIAMPolicyAssignmentsResponse,

    -- * Response Lenses
    listIAMPolicyAssignmentsResponse_nextToken,
    listIAMPolicyAssignmentsResponse_iAMPolicyAssignments,
    listIAMPolicyAssignmentsResponse_requestId,
    listIAMPolicyAssignmentsResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListIAMPolicyAssignments' smart constructor.
data ListIAMPolicyAssignments = ListIAMPolicyAssignments'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The status of the assignments.
    assignmentStatus :: Prelude.Maybe AssignmentStatus,
    -- | The ID of the Amazon Web Services account that contains these IAM policy
    -- assignments.
    awsAccountId :: Prelude.Text,
    -- | The namespace for the assignments.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIAMPolicyAssignments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIAMPolicyAssignments_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'maxResults', 'listIAMPolicyAssignments_maxResults' - The maximum number of results to be returned per request.
--
-- 'assignmentStatus', 'listIAMPolicyAssignments_assignmentStatus' - The status of the assignments.
--
-- 'awsAccountId', 'listIAMPolicyAssignments_awsAccountId' - The ID of the Amazon Web Services account that contains these IAM policy
-- assignments.
--
-- 'namespace', 'listIAMPolicyAssignments_namespace' - The namespace for the assignments.
newListIAMPolicyAssignments ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  ListIAMPolicyAssignments
newListIAMPolicyAssignments
  pAwsAccountId_
  pNamespace_ =
    ListIAMPolicyAssignments'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        assignmentStatus = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        namespace = pNamespace_
      }

-- | The token for the next set of results, or null if there are no more
-- results.
listIAMPolicyAssignments_nextToken :: Lens.Lens' ListIAMPolicyAssignments (Prelude.Maybe Prelude.Text)
listIAMPolicyAssignments_nextToken = Lens.lens (\ListIAMPolicyAssignments' {nextToken} -> nextToken) (\s@ListIAMPolicyAssignments' {} a -> s {nextToken = a} :: ListIAMPolicyAssignments)

-- | The maximum number of results to be returned per request.
listIAMPolicyAssignments_maxResults :: Lens.Lens' ListIAMPolicyAssignments (Prelude.Maybe Prelude.Natural)
listIAMPolicyAssignments_maxResults = Lens.lens (\ListIAMPolicyAssignments' {maxResults} -> maxResults) (\s@ListIAMPolicyAssignments' {} a -> s {maxResults = a} :: ListIAMPolicyAssignments)

-- | The status of the assignments.
listIAMPolicyAssignments_assignmentStatus :: Lens.Lens' ListIAMPolicyAssignments (Prelude.Maybe AssignmentStatus)
listIAMPolicyAssignments_assignmentStatus = Lens.lens (\ListIAMPolicyAssignments' {assignmentStatus} -> assignmentStatus) (\s@ListIAMPolicyAssignments' {} a -> s {assignmentStatus = a} :: ListIAMPolicyAssignments)

-- | The ID of the Amazon Web Services account that contains these IAM policy
-- assignments.
listIAMPolicyAssignments_awsAccountId :: Lens.Lens' ListIAMPolicyAssignments Prelude.Text
listIAMPolicyAssignments_awsAccountId = Lens.lens (\ListIAMPolicyAssignments' {awsAccountId} -> awsAccountId) (\s@ListIAMPolicyAssignments' {} a -> s {awsAccountId = a} :: ListIAMPolicyAssignments)

-- | The namespace for the assignments.
listIAMPolicyAssignments_namespace :: Lens.Lens' ListIAMPolicyAssignments Prelude.Text
listIAMPolicyAssignments_namespace = Lens.lens (\ListIAMPolicyAssignments' {namespace} -> namespace) (\s@ListIAMPolicyAssignments' {} a -> s {namespace = a} :: ListIAMPolicyAssignments)

instance Core.AWSRequest ListIAMPolicyAssignments where
  type
    AWSResponse ListIAMPolicyAssignments =
      ListIAMPolicyAssignmentsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListIAMPolicyAssignmentsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "IAMPolicyAssignments"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListIAMPolicyAssignments where
  hashWithSalt _salt ListIAMPolicyAssignments' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` assignmentStatus
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` namespace

instance Prelude.NFData ListIAMPolicyAssignments where
  rnf ListIAMPolicyAssignments' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf assignmentStatus
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf namespace

instance Core.ToHeaders ListIAMPolicyAssignments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListIAMPolicyAssignments where
  toPath ListIAMPolicyAssignments' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespaces/",
        Core.toBS namespace,
        "/iam-policy-assignments"
      ]

instance Core.ToQuery ListIAMPolicyAssignments where
  toQuery ListIAMPolicyAssignments' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListIAMPolicyAssignmentsResponse' smart constructor.
data ListIAMPolicyAssignmentsResponse = ListIAMPolicyAssignmentsResponse'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information describing the IAM policy assignments.
    iAMPolicyAssignments :: Prelude.Maybe [IAMPolicyAssignmentSummary],
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIAMPolicyAssignmentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIAMPolicyAssignmentsResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'iAMPolicyAssignments', 'listIAMPolicyAssignmentsResponse_iAMPolicyAssignments' - Information describing the IAM policy assignments.
--
-- 'requestId', 'listIAMPolicyAssignmentsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'status', 'listIAMPolicyAssignmentsResponse_status' - The HTTP status of the request.
newListIAMPolicyAssignmentsResponse ::
  -- | 'status'
  Prelude.Int ->
  ListIAMPolicyAssignmentsResponse
newListIAMPolicyAssignmentsResponse pStatus_ =
  ListIAMPolicyAssignmentsResponse'
    { nextToken =
        Prelude.Nothing,
      iAMPolicyAssignments = Prelude.Nothing,
      requestId = Prelude.Nothing,
      status = pStatus_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listIAMPolicyAssignmentsResponse_nextToken :: Lens.Lens' ListIAMPolicyAssignmentsResponse (Prelude.Maybe Prelude.Text)
listIAMPolicyAssignmentsResponse_nextToken = Lens.lens (\ListIAMPolicyAssignmentsResponse' {nextToken} -> nextToken) (\s@ListIAMPolicyAssignmentsResponse' {} a -> s {nextToken = a} :: ListIAMPolicyAssignmentsResponse)

-- | Information describing the IAM policy assignments.
listIAMPolicyAssignmentsResponse_iAMPolicyAssignments :: Lens.Lens' ListIAMPolicyAssignmentsResponse (Prelude.Maybe [IAMPolicyAssignmentSummary])
listIAMPolicyAssignmentsResponse_iAMPolicyAssignments = Lens.lens (\ListIAMPolicyAssignmentsResponse' {iAMPolicyAssignments} -> iAMPolicyAssignments) (\s@ListIAMPolicyAssignmentsResponse' {} a -> s {iAMPolicyAssignments = a} :: ListIAMPolicyAssignmentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services request ID for this operation.
listIAMPolicyAssignmentsResponse_requestId :: Lens.Lens' ListIAMPolicyAssignmentsResponse (Prelude.Maybe Prelude.Text)
listIAMPolicyAssignmentsResponse_requestId = Lens.lens (\ListIAMPolicyAssignmentsResponse' {requestId} -> requestId) (\s@ListIAMPolicyAssignmentsResponse' {} a -> s {requestId = a} :: ListIAMPolicyAssignmentsResponse)

-- | The HTTP status of the request.
listIAMPolicyAssignmentsResponse_status :: Lens.Lens' ListIAMPolicyAssignmentsResponse Prelude.Int
listIAMPolicyAssignmentsResponse_status = Lens.lens (\ListIAMPolicyAssignmentsResponse' {status} -> status) (\s@ListIAMPolicyAssignmentsResponse' {} a -> s {status = a} :: ListIAMPolicyAssignmentsResponse)

instance
  Prelude.NFData
    ListIAMPolicyAssignmentsResponse
  where
  rnf ListIAMPolicyAssignmentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf iAMPolicyAssignments
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status

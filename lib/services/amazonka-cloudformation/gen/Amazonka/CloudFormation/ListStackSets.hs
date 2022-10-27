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
-- Module      : Amazonka.CloudFormation.ListStackSets
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about stack sets that are associated with
-- the user.
--
-- -   [Self-managed permissions] If you set the @CallAs@ parameter to
--     @SELF@ while signed in to your Amazon Web Services account,
--     @ListStackSets@ returns all self-managed stack sets in your Amazon
--     Web Services account.
--
-- -   [Service-managed permissions] If you set the @CallAs@ parameter to
--     @SELF@ while signed in to the organization\'s management account,
--     @ListStackSets@ returns all stack sets in the management account.
--
-- -   [Service-managed permissions] If you set the @CallAs@ parameter to
--     @DELEGATED_ADMIN@ while signed in to your member account,
--     @ListStackSets@ returns all stack sets with service-managed
--     permissions in the management account.
--
-- This operation returns paginated results.
module Amazonka.CloudFormation.ListStackSets
  ( -- * Creating a Request
    ListStackSets (..),
    newListStackSets,

    -- * Request Lenses
    listStackSets_nextToken,
    listStackSets_callAs,
    listStackSets_status,
    listStackSets_maxResults,

    -- * Destructuring the Response
    ListStackSetsResponse (..),
    newListStackSetsResponse,

    -- * Response Lenses
    listStackSetsResponse_nextToken,
    listStackSetsResponse_summaries,
    listStackSetsResponse_httpStatus,
  )
where

import Amazonka.CloudFormation.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListStackSets' smart constructor.
data ListStackSets = ListStackSets'
  { -- | If the previous paginated request didn\'t return all the remaining
    -- results, the response object\'s @NextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call @ListStackSets@ again
    -- and assign that token to the request object\'s @NextToken@ parameter. If
    -- there are no remaining results, the previous response object\'s
    -- @NextToken@ parameter is set to @null@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | [Service-managed permissions] Specifies whether you are acting as an
    -- account administrator in the management account or as a delegated
    -- administrator in a member account.
    --
    -- By default, @SELF@ is specified. Use @SELF@ for stack sets with
    -- self-managed permissions.
    --
    -- -   If you are signed in to the management account, specify @SELF@.
    --
    -- -   If you are signed in to a delegated administrator account, specify
    --     @DELEGATED_ADMIN@.
    --
    --     Your Amazon Web Services account must be registered as a delegated
    --     administrator in the management account. For more information, see
    --     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
    --     in the /CloudFormation User Guide/.
    callAs :: Prelude.Maybe CallAs,
    -- | The status of the stack sets that you want to get summary information
    -- about.
    status :: Prelude.Maybe StackSetStatus,
    -- | The maximum number of results to be returned with a single call. If the
    -- number of available results exceeds this maximum, the response includes
    -- a @NextToken@ value that you can assign to the @NextToken@ request
    -- parameter to get the next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStackSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStackSets_nextToken' - If the previous paginated request didn\'t return all the remaining
-- results, the response object\'s @NextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListStackSets@ again
-- and assign that token to the request object\'s @NextToken@ parameter. If
-- there are no remaining results, the previous response object\'s
-- @NextToken@ parameter is set to @null@.
--
-- 'callAs', 'listStackSets_callAs' - [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the management account or as a delegated
-- administrator in a member account.
--
-- By default, @SELF@ is specified. Use @SELF@ for stack sets with
-- self-managed permissions.
--
-- -   If you are signed in to the management account, specify @SELF@.
--
-- -   If you are signed in to a delegated administrator account, specify
--     @DELEGATED_ADMIN@.
--
--     Your Amazon Web Services account must be registered as a delegated
--     administrator in the management account. For more information, see
--     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
--     in the /CloudFormation User Guide/.
--
-- 'status', 'listStackSets_status' - The status of the stack sets that you want to get summary information
-- about.
--
-- 'maxResults', 'listStackSets_maxResults' - The maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
newListStackSets ::
  ListStackSets
newListStackSets =
  ListStackSets'
    { nextToken = Prelude.Nothing,
      callAs = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If the previous paginated request didn\'t return all the remaining
-- results, the response object\'s @NextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListStackSets@ again
-- and assign that token to the request object\'s @NextToken@ parameter. If
-- there are no remaining results, the previous response object\'s
-- @NextToken@ parameter is set to @null@.
listStackSets_nextToken :: Lens.Lens' ListStackSets (Prelude.Maybe Prelude.Text)
listStackSets_nextToken = Lens.lens (\ListStackSets' {nextToken} -> nextToken) (\s@ListStackSets' {} a -> s {nextToken = a} :: ListStackSets)

-- | [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the management account or as a delegated
-- administrator in a member account.
--
-- By default, @SELF@ is specified. Use @SELF@ for stack sets with
-- self-managed permissions.
--
-- -   If you are signed in to the management account, specify @SELF@.
--
-- -   If you are signed in to a delegated administrator account, specify
--     @DELEGATED_ADMIN@.
--
--     Your Amazon Web Services account must be registered as a delegated
--     administrator in the management account. For more information, see
--     <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator>
--     in the /CloudFormation User Guide/.
listStackSets_callAs :: Lens.Lens' ListStackSets (Prelude.Maybe CallAs)
listStackSets_callAs = Lens.lens (\ListStackSets' {callAs} -> callAs) (\s@ListStackSets' {} a -> s {callAs = a} :: ListStackSets)

-- | The status of the stack sets that you want to get summary information
-- about.
listStackSets_status :: Lens.Lens' ListStackSets (Prelude.Maybe StackSetStatus)
listStackSets_status = Lens.lens (\ListStackSets' {status} -> status) (\s@ListStackSets' {} a -> s {status = a} :: ListStackSets)

-- | The maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
listStackSets_maxResults :: Lens.Lens' ListStackSets (Prelude.Maybe Prelude.Natural)
listStackSets_maxResults = Lens.lens (\ListStackSets' {maxResults} -> maxResults) (\s@ListStackSets' {} a -> s {maxResults = a} :: ListStackSets)

instance Core.AWSPager ListStackSets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listStackSetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listStackSetsResponse_summaries Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listStackSets_nextToken
          Lens..~ rs
          Lens.^? listStackSetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListStackSets where
  type
    AWSResponse ListStackSets =
      ListStackSetsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ListStackSetsResult"
      ( \s h x ->
          ListStackSetsResponse'
            Prelude.<$> (x Core..@? "NextToken")
            Prelude.<*> ( x Core..@? "Summaries" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListStackSets where
  hashWithSalt _salt ListStackSets' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` callAs
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListStackSets where
  rnf ListStackSets' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf callAs
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListStackSets where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListStackSets where
  toPath = Prelude.const "/"

instance Core.ToQuery ListStackSets where
  toQuery ListStackSets' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListStackSets" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "CallAs" Core.=: callAs,
        "Status" Core.=: status,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListStackSetsResponse' smart constructor.
data ListStackSetsResponse = ListStackSetsResponse'
  { -- | If the request doesn\'t return all of the remaining results, @NextToken@
    -- is set to a token. To retrieve the next set of results, call
    -- @ListStackInstances@ again and assign that token to the request
    -- object\'s @NextToken@ parameter. If the request returns all results,
    -- @NextToken@ is set to @null@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @StackSetSummary@ structures that contain information about
    -- the user\'s stack sets.
    summaries :: Prelude.Maybe [StackSetSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStackSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStackSetsResponse_nextToken' - If the request doesn\'t return all of the remaining results, @NextToken@
-- is set to a token. To retrieve the next set of results, call
-- @ListStackInstances@ again and assign that token to the request
-- object\'s @NextToken@ parameter. If the request returns all results,
-- @NextToken@ is set to @null@.
--
-- 'summaries', 'listStackSetsResponse_summaries' - A list of @StackSetSummary@ structures that contain information about
-- the user\'s stack sets.
--
-- 'httpStatus', 'listStackSetsResponse_httpStatus' - The response's http status code.
newListStackSetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStackSetsResponse
newListStackSetsResponse pHttpStatus_ =
  ListStackSetsResponse'
    { nextToken = Prelude.Nothing,
      summaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the request doesn\'t return all of the remaining results, @NextToken@
-- is set to a token. To retrieve the next set of results, call
-- @ListStackInstances@ again and assign that token to the request
-- object\'s @NextToken@ parameter. If the request returns all results,
-- @NextToken@ is set to @null@.
listStackSetsResponse_nextToken :: Lens.Lens' ListStackSetsResponse (Prelude.Maybe Prelude.Text)
listStackSetsResponse_nextToken = Lens.lens (\ListStackSetsResponse' {nextToken} -> nextToken) (\s@ListStackSetsResponse' {} a -> s {nextToken = a} :: ListStackSetsResponse)

-- | A list of @StackSetSummary@ structures that contain information about
-- the user\'s stack sets.
listStackSetsResponse_summaries :: Lens.Lens' ListStackSetsResponse (Prelude.Maybe [StackSetSummary])
listStackSetsResponse_summaries = Lens.lens (\ListStackSetsResponse' {summaries} -> summaries) (\s@ListStackSetsResponse' {} a -> s {summaries = a} :: ListStackSetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listStackSetsResponse_httpStatus :: Lens.Lens' ListStackSetsResponse Prelude.Int
listStackSetsResponse_httpStatus = Lens.lens (\ListStackSetsResponse' {httpStatus} -> httpStatus) (\s@ListStackSetsResponse' {} a -> s {httpStatus = a} :: ListStackSetsResponse)

instance Prelude.NFData ListStackSetsResponse where
  rnf ListStackSetsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf summaries
      `Prelude.seq` Prelude.rnf httpStatus

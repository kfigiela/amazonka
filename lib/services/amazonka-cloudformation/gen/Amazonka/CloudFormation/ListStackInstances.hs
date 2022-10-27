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
-- Module      : Amazonka.CloudFormation.ListStackInstances
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about stack instances that are associated
-- with the specified stack set. You can filter for stack instances that
-- are associated with a specific Amazon Web Services account name or
-- Region, or that have a specific status.
--
-- This operation returns paginated results.
module Amazonka.CloudFormation.ListStackInstances
  ( -- * Creating a Request
    ListStackInstances (..),
    newListStackInstances,

    -- * Request Lenses
    listStackInstances_nextToken,
    listStackInstances_callAs,
    listStackInstances_filters,
    listStackInstances_maxResults,
    listStackInstances_stackInstanceRegion,
    listStackInstances_stackInstanceAccount,
    listStackInstances_stackSetName,

    -- * Destructuring the Response
    ListStackInstancesResponse (..),
    newListStackInstancesResponse,

    -- * Response Lenses
    listStackInstancesResponse_nextToken,
    listStackInstancesResponse_summaries,
    listStackInstancesResponse_httpStatus,
  )
where

import Amazonka.CloudFormation.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListStackInstances' smart constructor.
data ListStackInstances = ListStackInstances'
  { -- | If the previous request didn\'t return all the remaining results, the
    -- response\'s @NextToken@ parameter value is set to a token. To retrieve
    -- the next set of results, call @ListStackInstances@ again and assign that
    -- token to the request object\'s @NextToken@ parameter. If there are no
    -- remaining results, the previous response object\'s @NextToken@ parameter
    -- is set to @null@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | [Service-managed permissions] Specifies whether you are acting as an
    -- account administrator in the organization\'s management account or as a
    -- delegated administrator in a member account.
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
    -- | The status that stack instances are filtered by.
    filters :: Prelude.Maybe [StackInstanceFilter],
    -- | The maximum number of results to be returned with a single call. If the
    -- number of available results exceeds this maximum, the response includes
    -- a @NextToken@ value that you can assign to the @NextToken@ request
    -- parameter to get the next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the Region where you want to list stack instances.
    stackInstanceRegion :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon Web Services account that you want to list stack
    -- instances for.
    stackInstanceAccount :: Prelude.Maybe Prelude.Text,
    -- | The name or unique ID of the stack set that you want to list stack
    -- instances for.
    stackSetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStackInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStackInstances_nextToken' - If the previous request didn\'t return all the remaining results, the
-- response\'s @NextToken@ parameter value is set to a token. To retrieve
-- the next set of results, call @ListStackInstances@ again and assign that
-- token to the request object\'s @NextToken@ parameter. If there are no
-- remaining results, the previous response object\'s @NextToken@ parameter
-- is set to @null@.
--
-- 'callAs', 'listStackInstances_callAs' - [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the organization\'s management account or as a
-- delegated administrator in a member account.
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
-- 'filters', 'listStackInstances_filters' - The status that stack instances are filtered by.
--
-- 'maxResults', 'listStackInstances_maxResults' - The maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
--
-- 'stackInstanceRegion', 'listStackInstances_stackInstanceRegion' - The name of the Region where you want to list stack instances.
--
-- 'stackInstanceAccount', 'listStackInstances_stackInstanceAccount' - The name of the Amazon Web Services account that you want to list stack
-- instances for.
--
-- 'stackSetName', 'listStackInstances_stackSetName' - The name or unique ID of the stack set that you want to list stack
-- instances for.
newListStackInstances ::
  -- | 'stackSetName'
  Prelude.Text ->
  ListStackInstances
newListStackInstances pStackSetName_ =
  ListStackInstances'
    { nextToken = Prelude.Nothing,
      callAs = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      stackInstanceRegion = Prelude.Nothing,
      stackInstanceAccount = Prelude.Nothing,
      stackSetName = pStackSetName_
    }

-- | If the previous request didn\'t return all the remaining results, the
-- response\'s @NextToken@ parameter value is set to a token. To retrieve
-- the next set of results, call @ListStackInstances@ again and assign that
-- token to the request object\'s @NextToken@ parameter. If there are no
-- remaining results, the previous response object\'s @NextToken@ parameter
-- is set to @null@.
listStackInstances_nextToken :: Lens.Lens' ListStackInstances (Prelude.Maybe Prelude.Text)
listStackInstances_nextToken = Lens.lens (\ListStackInstances' {nextToken} -> nextToken) (\s@ListStackInstances' {} a -> s {nextToken = a} :: ListStackInstances)

-- | [Service-managed permissions] Specifies whether you are acting as an
-- account administrator in the organization\'s management account or as a
-- delegated administrator in a member account.
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
listStackInstances_callAs :: Lens.Lens' ListStackInstances (Prelude.Maybe CallAs)
listStackInstances_callAs = Lens.lens (\ListStackInstances' {callAs} -> callAs) (\s@ListStackInstances' {} a -> s {callAs = a} :: ListStackInstances)

-- | The status that stack instances are filtered by.
listStackInstances_filters :: Lens.Lens' ListStackInstances (Prelude.Maybe [StackInstanceFilter])
listStackInstances_filters = Lens.lens (\ListStackInstances' {filters} -> filters) (\s@ListStackInstances' {} a -> s {filters = a} :: ListStackInstances) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
listStackInstances_maxResults :: Lens.Lens' ListStackInstances (Prelude.Maybe Prelude.Natural)
listStackInstances_maxResults = Lens.lens (\ListStackInstances' {maxResults} -> maxResults) (\s@ListStackInstances' {} a -> s {maxResults = a} :: ListStackInstances)

-- | The name of the Region where you want to list stack instances.
listStackInstances_stackInstanceRegion :: Lens.Lens' ListStackInstances (Prelude.Maybe Prelude.Text)
listStackInstances_stackInstanceRegion = Lens.lens (\ListStackInstances' {stackInstanceRegion} -> stackInstanceRegion) (\s@ListStackInstances' {} a -> s {stackInstanceRegion = a} :: ListStackInstances)

-- | The name of the Amazon Web Services account that you want to list stack
-- instances for.
listStackInstances_stackInstanceAccount :: Lens.Lens' ListStackInstances (Prelude.Maybe Prelude.Text)
listStackInstances_stackInstanceAccount = Lens.lens (\ListStackInstances' {stackInstanceAccount} -> stackInstanceAccount) (\s@ListStackInstances' {} a -> s {stackInstanceAccount = a} :: ListStackInstances)

-- | The name or unique ID of the stack set that you want to list stack
-- instances for.
listStackInstances_stackSetName :: Lens.Lens' ListStackInstances Prelude.Text
listStackInstances_stackSetName = Lens.lens (\ListStackInstances' {stackSetName} -> stackSetName) (\s@ListStackInstances' {} a -> s {stackSetName = a} :: ListStackInstances)

instance Core.AWSPager ListStackInstances where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listStackInstancesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listStackInstancesResponse_summaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listStackInstances_nextToken
          Lens..~ rs
          Lens.^? listStackInstancesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListStackInstances where
  type
    AWSResponse ListStackInstances =
      ListStackInstancesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ListStackInstancesResult"
      ( \s h x ->
          ListStackInstancesResponse'
            Prelude.<$> (x Core..@? "NextToken")
            Prelude.<*> ( x Core..@? "Summaries" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListStackInstances where
  hashWithSalt _salt ListStackInstances' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` callAs
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` stackInstanceRegion
      `Prelude.hashWithSalt` stackInstanceAccount
      `Prelude.hashWithSalt` stackSetName

instance Prelude.NFData ListStackInstances where
  rnf ListStackInstances' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf callAs
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf stackInstanceRegion
      `Prelude.seq` Prelude.rnf stackInstanceAccount
      `Prelude.seq` Prelude.rnf stackSetName

instance Core.ToHeaders ListStackInstances where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListStackInstances where
  toPath = Prelude.const "/"

instance Core.ToQuery ListStackInstances where
  toQuery ListStackInstances' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListStackInstances" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "CallAs" Core.=: callAs,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> filters),
        "MaxResults" Core.=: maxResults,
        "StackInstanceRegion" Core.=: stackInstanceRegion,
        "StackInstanceAccount" Core.=: stackInstanceAccount,
        "StackSetName" Core.=: stackSetName
      ]

-- | /See:/ 'newListStackInstancesResponse' smart constructor.
data ListStackInstancesResponse = ListStackInstancesResponse'
  { -- | If the request doesn\'t return all the remaining results, @NextToken@ is
    -- set to a token. To retrieve the next set of results, call
    -- @ListStackInstances@ again and assign that token to the request
    -- object\'s @NextToken@ parameter. If the request returns all results,
    -- @NextToken@ is set to @null@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @StackInstanceSummary@ structures that contain information
    -- about the specified stack instances.
    summaries :: Prelude.Maybe [StackInstanceSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStackInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStackInstancesResponse_nextToken' - If the request doesn\'t return all the remaining results, @NextToken@ is
-- set to a token. To retrieve the next set of results, call
-- @ListStackInstances@ again and assign that token to the request
-- object\'s @NextToken@ parameter. If the request returns all results,
-- @NextToken@ is set to @null@.
--
-- 'summaries', 'listStackInstancesResponse_summaries' - A list of @StackInstanceSummary@ structures that contain information
-- about the specified stack instances.
--
-- 'httpStatus', 'listStackInstancesResponse_httpStatus' - The response's http status code.
newListStackInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStackInstancesResponse
newListStackInstancesResponse pHttpStatus_ =
  ListStackInstancesResponse'
    { nextToken =
        Prelude.Nothing,
      summaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the request doesn\'t return all the remaining results, @NextToken@ is
-- set to a token. To retrieve the next set of results, call
-- @ListStackInstances@ again and assign that token to the request
-- object\'s @NextToken@ parameter. If the request returns all results,
-- @NextToken@ is set to @null@.
listStackInstancesResponse_nextToken :: Lens.Lens' ListStackInstancesResponse (Prelude.Maybe Prelude.Text)
listStackInstancesResponse_nextToken = Lens.lens (\ListStackInstancesResponse' {nextToken} -> nextToken) (\s@ListStackInstancesResponse' {} a -> s {nextToken = a} :: ListStackInstancesResponse)

-- | A list of @StackInstanceSummary@ structures that contain information
-- about the specified stack instances.
listStackInstancesResponse_summaries :: Lens.Lens' ListStackInstancesResponse (Prelude.Maybe [StackInstanceSummary])
listStackInstancesResponse_summaries = Lens.lens (\ListStackInstancesResponse' {summaries} -> summaries) (\s@ListStackInstancesResponse' {} a -> s {summaries = a} :: ListStackInstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listStackInstancesResponse_httpStatus :: Lens.Lens' ListStackInstancesResponse Prelude.Int
listStackInstancesResponse_httpStatus = Lens.lens (\ListStackInstancesResponse' {httpStatus} -> httpStatus) (\s@ListStackInstancesResponse' {} a -> s {httpStatus = a} :: ListStackInstancesResponse)

instance Prelude.NFData ListStackInstancesResponse where
  rnf ListStackInstancesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf summaries
      `Prelude.seq` Prelude.rnf httpStatus

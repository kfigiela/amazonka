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
-- Module      : Amazonka.SSM.DescribeAssociationExecutions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views all executions for a specific association ID.
--
-- This operation returns paginated results.
module Amazonka.SSM.DescribeAssociationExecutions
  ( -- * Creating a Request
    DescribeAssociationExecutions (..),
    newDescribeAssociationExecutions,

    -- * Request Lenses
    describeAssociationExecutions_nextToken,
    describeAssociationExecutions_filters,
    describeAssociationExecutions_maxResults,
    describeAssociationExecutions_associationId,

    -- * Destructuring the Response
    DescribeAssociationExecutionsResponse (..),
    newDescribeAssociationExecutionsResponse,

    -- * Response Lenses
    describeAssociationExecutionsResponse_associationExecutions,
    describeAssociationExecutionsResponse_nextToken,
    describeAssociationExecutionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newDescribeAssociationExecutions' smart constructor.
data DescribeAssociationExecutions = DescribeAssociationExecutions'
  { -- | A token to start the list. Use this token to get the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters for the request. You can specify the following filters and
    -- values.
    --
    -- ExecutionId (EQUAL)
    --
    -- Status (EQUAL)
    --
    -- CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
    filters :: Prelude.Maybe (Prelude.NonEmpty AssociationExecutionFilter),
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The association ID for which you want to view execution history details.
    associationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAssociationExecutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAssociationExecutions_nextToken' - A token to start the list. Use this token to get the next set of
-- results.
--
-- 'filters', 'describeAssociationExecutions_filters' - Filters for the request. You can specify the following filters and
-- values.
--
-- ExecutionId (EQUAL)
--
-- Status (EQUAL)
--
-- CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
--
-- 'maxResults', 'describeAssociationExecutions_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- 'associationId', 'describeAssociationExecutions_associationId' - The association ID for which you want to view execution history details.
newDescribeAssociationExecutions ::
  -- | 'associationId'
  Prelude.Text ->
  DescribeAssociationExecutions
newDescribeAssociationExecutions pAssociationId_ =
  DescribeAssociationExecutions'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      associationId = pAssociationId_
    }

-- | A token to start the list. Use this token to get the next set of
-- results.
describeAssociationExecutions_nextToken :: Lens.Lens' DescribeAssociationExecutions (Prelude.Maybe Prelude.Text)
describeAssociationExecutions_nextToken = Lens.lens (\DescribeAssociationExecutions' {nextToken} -> nextToken) (\s@DescribeAssociationExecutions' {} a -> s {nextToken = a} :: DescribeAssociationExecutions)

-- | Filters for the request. You can specify the following filters and
-- values.
--
-- ExecutionId (EQUAL)
--
-- Status (EQUAL)
--
-- CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
describeAssociationExecutions_filters :: Lens.Lens' DescribeAssociationExecutions (Prelude.Maybe (Prelude.NonEmpty AssociationExecutionFilter))
describeAssociationExecutions_filters = Lens.lens (\DescribeAssociationExecutions' {filters} -> filters) (\s@DescribeAssociationExecutions' {} a -> s {filters = a} :: DescribeAssociationExecutions) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
describeAssociationExecutions_maxResults :: Lens.Lens' DescribeAssociationExecutions (Prelude.Maybe Prelude.Natural)
describeAssociationExecutions_maxResults = Lens.lens (\DescribeAssociationExecutions' {maxResults} -> maxResults) (\s@DescribeAssociationExecutions' {} a -> s {maxResults = a} :: DescribeAssociationExecutions)

-- | The association ID for which you want to view execution history details.
describeAssociationExecutions_associationId :: Lens.Lens' DescribeAssociationExecutions Prelude.Text
describeAssociationExecutions_associationId = Lens.lens (\DescribeAssociationExecutions' {associationId} -> associationId) (\s@DescribeAssociationExecutions' {} a -> s {associationId = a} :: DescribeAssociationExecutions)

instance Core.AWSPager DescribeAssociationExecutions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAssociationExecutionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAssociationExecutionsResponse_associationExecutions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeAssociationExecutions_nextToken
          Lens..~ rs
          Lens.^? describeAssociationExecutionsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeAssociationExecutions
  where
  type
    AWSResponse DescribeAssociationExecutions =
      DescribeAssociationExecutionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAssociationExecutionsResponse'
            Prelude.<$> ( x Core..?> "AssociationExecutions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAssociationExecutions
  where
  hashWithSalt _salt DescribeAssociationExecutions' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` associationId

instance Prelude.NFData DescribeAssociationExecutions where
  rnf DescribeAssociationExecutions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf associationId

instance Core.ToHeaders DescribeAssociationExecutions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.DescribeAssociationExecutions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAssociationExecutions where
  toJSON DescribeAssociationExecutions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("AssociationId" Core..= associationId)
          ]
      )

instance Core.ToPath DescribeAssociationExecutions where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAssociationExecutions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAssociationExecutionsResponse' smart constructor.
data DescribeAssociationExecutionsResponse = DescribeAssociationExecutionsResponse'
  { -- | A list of the executions for the specified association ID.
    associationExecutions :: Prelude.Maybe [AssociationExecution],
    -- | The token for the next set of items to return. Use this token to get the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAssociationExecutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associationExecutions', 'describeAssociationExecutionsResponse_associationExecutions' - A list of the executions for the specified association ID.
--
-- 'nextToken', 'describeAssociationExecutionsResponse_nextToken' - The token for the next set of items to return. Use this token to get the
-- next set of results.
--
-- 'httpStatus', 'describeAssociationExecutionsResponse_httpStatus' - The response's http status code.
newDescribeAssociationExecutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAssociationExecutionsResponse
newDescribeAssociationExecutionsResponse pHttpStatus_ =
  DescribeAssociationExecutionsResponse'
    { associationExecutions =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of the executions for the specified association ID.
describeAssociationExecutionsResponse_associationExecutions :: Lens.Lens' DescribeAssociationExecutionsResponse (Prelude.Maybe [AssociationExecution])
describeAssociationExecutionsResponse_associationExecutions = Lens.lens (\DescribeAssociationExecutionsResponse' {associationExecutions} -> associationExecutions) (\s@DescribeAssociationExecutionsResponse' {} a -> s {associationExecutions = a} :: DescribeAssociationExecutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of items to return. Use this token to get the
-- next set of results.
describeAssociationExecutionsResponse_nextToken :: Lens.Lens' DescribeAssociationExecutionsResponse (Prelude.Maybe Prelude.Text)
describeAssociationExecutionsResponse_nextToken = Lens.lens (\DescribeAssociationExecutionsResponse' {nextToken} -> nextToken) (\s@DescribeAssociationExecutionsResponse' {} a -> s {nextToken = a} :: DescribeAssociationExecutionsResponse)

-- | The response's http status code.
describeAssociationExecutionsResponse_httpStatus :: Lens.Lens' DescribeAssociationExecutionsResponse Prelude.Int
describeAssociationExecutionsResponse_httpStatus = Lens.lens (\DescribeAssociationExecutionsResponse' {httpStatus} -> httpStatus) (\s@DescribeAssociationExecutionsResponse' {} a -> s {httpStatus = a} :: DescribeAssociationExecutionsResponse)

instance
  Prelude.NFData
    DescribeAssociationExecutionsResponse
  where
  rnf DescribeAssociationExecutionsResponse' {..} =
    Prelude.rnf associationExecutions
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.CodePipeline.ListActionExecutions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the action executions that have occurred in a pipeline.
--
-- This operation returns paginated results.
module Amazonka.CodePipeline.ListActionExecutions
  ( -- * Creating a Request
    ListActionExecutions (..),
    newListActionExecutions,

    -- * Request Lenses
    listActionExecutions_nextToken,
    listActionExecutions_filter,
    listActionExecutions_maxResults,
    listActionExecutions_pipelineName,

    -- * Destructuring the Response
    ListActionExecutionsResponse (..),
    newListActionExecutionsResponse,

    -- * Response Lenses
    listActionExecutionsResponse_nextToken,
    listActionExecutionsResponse_actionExecutionDetails,
    listActionExecutionsResponse_httpStatus,
  )
where

import Amazonka.CodePipeline.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListActionExecutions' smart constructor.
data ListActionExecutions = ListActionExecutions'
  { -- | The token that was returned from the previous @ListActionExecutions@
    -- call, which can be used to return the next set of action executions in
    -- the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Input information used to filter action execution history.
    filter' :: Prelude.Maybe ActionExecutionFilter,
    -- | The maximum number of results to return in a single call. To retrieve
    -- the remaining results, make another call with the returned nextToken
    -- value. Action execution history is retained for up to 12 months, based
    -- on action execution start times. Default value is 100.
    --
    -- Detailed execution history is available for executions run on or after
    -- February 21, 2019.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the pipeline for which you want to list action execution
    -- history.
    pipelineName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListActionExecutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listActionExecutions_nextToken' - The token that was returned from the previous @ListActionExecutions@
-- call, which can be used to return the next set of action executions in
-- the list.
--
-- 'filter'', 'listActionExecutions_filter' - Input information used to filter action execution history.
--
-- 'maxResults', 'listActionExecutions_maxResults' - The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned nextToken
-- value. Action execution history is retained for up to 12 months, based
-- on action execution start times. Default value is 100.
--
-- Detailed execution history is available for executions run on or after
-- February 21, 2019.
--
-- 'pipelineName', 'listActionExecutions_pipelineName' - The name of the pipeline for which you want to list action execution
-- history.
newListActionExecutions ::
  -- | 'pipelineName'
  Prelude.Text ->
  ListActionExecutions
newListActionExecutions pPipelineName_ =
  ListActionExecutions'
    { nextToken = Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      pipelineName = pPipelineName_
    }

-- | The token that was returned from the previous @ListActionExecutions@
-- call, which can be used to return the next set of action executions in
-- the list.
listActionExecutions_nextToken :: Lens.Lens' ListActionExecutions (Prelude.Maybe Prelude.Text)
listActionExecutions_nextToken = Lens.lens (\ListActionExecutions' {nextToken} -> nextToken) (\s@ListActionExecutions' {} a -> s {nextToken = a} :: ListActionExecutions)

-- | Input information used to filter action execution history.
listActionExecutions_filter :: Lens.Lens' ListActionExecutions (Prelude.Maybe ActionExecutionFilter)
listActionExecutions_filter = Lens.lens (\ListActionExecutions' {filter'} -> filter') (\s@ListActionExecutions' {} a -> s {filter' = a} :: ListActionExecutions)

-- | The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned nextToken
-- value. Action execution history is retained for up to 12 months, based
-- on action execution start times. Default value is 100.
--
-- Detailed execution history is available for executions run on or after
-- February 21, 2019.
listActionExecutions_maxResults :: Lens.Lens' ListActionExecutions (Prelude.Maybe Prelude.Natural)
listActionExecutions_maxResults = Lens.lens (\ListActionExecutions' {maxResults} -> maxResults) (\s@ListActionExecutions' {} a -> s {maxResults = a} :: ListActionExecutions)

-- | The name of the pipeline for which you want to list action execution
-- history.
listActionExecutions_pipelineName :: Lens.Lens' ListActionExecutions Prelude.Text
listActionExecutions_pipelineName = Lens.lens (\ListActionExecutions' {pipelineName} -> pipelineName) (\s@ListActionExecutions' {} a -> s {pipelineName = a} :: ListActionExecutions)

instance Core.AWSPager ListActionExecutions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listActionExecutionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listActionExecutionsResponse_actionExecutionDetails
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listActionExecutions_nextToken
          Lens..~ rs
          Lens.^? listActionExecutionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListActionExecutions where
  type
    AWSResponse ListActionExecutions =
      ListActionExecutionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListActionExecutionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "actionExecutionDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListActionExecutions where
  hashWithSalt _salt ListActionExecutions' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` pipelineName

instance Prelude.NFData ListActionExecutions where
  rnf ListActionExecutions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf pipelineName

instance Core.ToHeaders ListActionExecutions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodePipeline_20150709.ListActionExecutions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListActionExecutions where
  toJSON ListActionExecutions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("filter" Core..=) Prelude.<$> filter',
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("pipelineName" Core..= pipelineName)
          ]
      )

instance Core.ToPath ListActionExecutions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListActionExecutions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListActionExecutionsResponse' smart constructor.
data ListActionExecutionsResponse = ListActionExecutionsResponse'
  { -- | If the amount of returned information is significantly large, an
    -- identifier is also returned and can be used in a subsequent
    -- @ListActionExecutions@ call to return the next set of action executions
    -- in the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The details for a list of recent executions, such as action execution
    -- ID.
    actionExecutionDetails :: Prelude.Maybe [ActionExecutionDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListActionExecutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listActionExecutionsResponse_nextToken' - If the amount of returned information is significantly large, an
-- identifier is also returned and can be used in a subsequent
-- @ListActionExecutions@ call to return the next set of action executions
-- in the list.
--
-- 'actionExecutionDetails', 'listActionExecutionsResponse_actionExecutionDetails' - The details for a list of recent executions, such as action execution
-- ID.
--
-- 'httpStatus', 'listActionExecutionsResponse_httpStatus' - The response's http status code.
newListActionExecutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListActionExecutionsResponse
newListActionExecutionsResponse pHttpStatus_ =
  ListActionExecutionsResponse'
    { nextToken =
        Prelude.Nothing,
      actionExecutionDetails = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the amount of returned information is significantly large, an
-- identifier is also returned and can be used in a subsequent
-- @ListActionExecutions@ call to return the next set of action executions
-- in the list.
listActionExecutionsResponse_nextToken :: Lens.Lens' ListActionExecutionsResponse (Prelude.Maybe Prelude.Text)
listActionExecutionsResponse_nextToken = Lens.lens (\ListActionExecutionsResponse' {nextToken} -> nextToken) (\s@ListActionExecutionsResponse' {} a -> s {nextToken = a} :: ListActionExecutionsResponse)

-- | The details for a list of recent executions, such as action execution
-- ID.
listActionExecutionsResponse_actionExecutionDetails :: Lens.Lens' ListActionExecutionsResponse (Prelude.Maybe [ActionExecutionDetail])
listActionExecutionsResponse_actionExecutionDetails = Lens.lens (\ListActionExecutionsResponse' {actionExecutionDetails} -> actionExecutionDetails) (\s@ListActionExecutionsResponse' {} a -> s {actionExecutionDetails = a} :: ListActionExecutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listActionExecutionsResponse_httpStatus :: Lens.Lens' ListActionExecutionsResponse Prelude.Int
listActionExecutionsResponse_httpStatus = Lens.lens (\ListActionExecutionsResponse' {httpStatus} -> httpStatus) (\s@ListActionExecutionsResponse' {} a -> s {httpStatus = a} :: ListActionExecutionsResponse)

instance Prelude.NFData ListActionExecutionsResponse where
  rnf ListActionExecutionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf actionExecutionDetails
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Evidently.ListLaunches
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns configuration details about all the launches in the specified
-- project.
--
-- This operation returns paginated results.
module Amazonka.Evidently.ListLaunches
  ( -- * Creating a Request
    ListLaunches (..),
    newListLaunches,

    -- * Request Lenses
    listLaunches_nextToken,
    listLaunches_status,
    listLaunches_maxResults,
    listLaunches_project,

    -- * Destructuring the Response
    ListLaunchesResponse (..),
    newListLaunchesResponse,

    -- * Response Lenses
    listLaunchesResponse_nextToken,
    listLaunchesResponse_launches,
    listLaunchesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Evidently.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLaunches' smart constructor.
data ListLaunches = ListLaunches'
  { -- | The token to use when requesting the next set of results. You received
    -- this token from a previous @ListLaunches@ operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Use this optional parameter to limit the returned results to only the
    -- launches with the status that you specify here.
    status :: Prelude.Maybe LaunchStatus,
    -- | The maximum number of results to include in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name or ARN of the project to return the launch list from.
    project :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLaunches' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLaunches_nextToken' - The token to use when requesting the next set of results. You received
-- this token from a previous @ListLaunches@ operation.
--
-- 'status', 'listLaunches_status' - Use this optional parameter to limit the returned results to only the
-- launches with the status that you specify here.
--
-- 'maxResults', 'listLaunches_maxResults' - The maximum number of results to include in the response.
--
-- 'project', 'listLaunches_project' - The name or ARN of the project to return the launch list from.
newListLaunches ::
  -- | 'project'
  Prelude.Text ->
  ListLaunches
newListLaunches pProject_ =
  ListLaunches'
    { nextToken = Prelude.Nothing,
      status = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      project = pProject_
    }

-- | The token to use when requesting the next set of results. You received
-- this token from a previous @ListLaunches@ operation.
listLaunches_nextToken :: Lens.Lens' ListLaunches (Prelude.Maybe Prelude.Text)
listLaunches_nextToken = Lens.lens (\ListLaunches' {nextToken} -> nextToken) (\s@ListLaunches' {} a -> s {nextToken = a} :: ListLaunches)

-- | Use this optional parameter to limit the returned results to only the
-- launches with the status that you specify here.
listLaunches_status :: Lens.Lens' ListLaunches (Prelude.Maybe LaunchStatus)
listLaunches_status = Lens.lens (\ListLaunches' {status} -> status) (\s@ListLaunches' {} a -> s {status = a} :: ListLaunches)

-- | The maximum number of results to include in the response.
listLaunches_maxResults :: Lens.Lens' ListLaunches (Prelude.Maybe Prelude.Natural)
listLaunches_maxResults = Lens.lens (\ListLaunches' {maxResults} -> maxResults) (\s@ListLaunches' {} a -> s {maxResults = a} :: ListLaunches)

-- | The name or ARN of the project to return the launch list from.
listLaunches_project :: Lens.Lens' ListLaunches Prelude.Text
listLaunches_project = Lens.lens (\ListLaunches' {project} -> project) (\s@ListLaunches' {} a -> s {project = a} :: ListLaunches)

instance Core.AWSPager ListLaunches where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLaunchesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLaunchesResponse_launches Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLaunches_nextToken
          Lens..~ rs
          Lens.^? listLaunchesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListLaunches where
  type AWSResponse ListLaunches = ListLaunchesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLaunchesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "launches" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLaunches where
  hashWithSalt _salt ListLaunches' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` project

instance Prelude.NFData ListLaunches where
  rnf ListLaunches' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf project

instance Core.ToHeaders ListLaunches where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListLaunches where
  toPath ListLaunches' {..} =
    Prelude.mconcat
      ["/projects/", Core.toBS project, "/launches"]

instance Core.ToQuery ListLaunches where
  toQuery ListLaunches' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "status" Core.=: status,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListLaunchesResponse' smart constructor.
data ListLaunchesResponse = ListLaunchesResponse'
  { -- | The token to use in a subsequent @ListLaunches@ operation to return the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of structures that contain the configuration details of the
    -- launches in the specified project.
    launches :: Prelude.Maybe [Launch],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLaunchesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLaunchesResponse_nextToken' - The token to use in a subsequent @ListLaunches@ operation to return the
-- next set of results.
--
-- 'launches', 'listLaunchesResponse_launches' - An array of structures that contain the configuration details of the
-- launches in the specified project.
--
-- 'httpStatus', 'listLaunchesResponse_httpStatus' - The response's http status code.
newListLaunchesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLaunchesResponse
newListLaunchesResponse pHttpStatus_ =
  ListLaunchesResponse'
    { nextToken = Prelude.Nothing,
      launches = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use in a subsequent @ListLaunches@ operation to return the
-- next set of results.
listLaunchesResponse_nextToken :: Lens.Lens' ListLaunchesResponse (Prelude.Maybe Prelude.Text)
listLaunchesResponse_nextToken = Lens.lens (\ListLaunchesResponse' {nextToken} -> nextToken) (\s@ListLaunchesResponse' {} a -> s {nextToken = a} :: ListLaunchesResponse)

-- | An array of structures that contain the configuration details of the
-- launches in the specified project.
listLaunchesResponse_launches :: Lens.Lens' ListLaunchesResponse (Prelude.Maybe [Launch])
listLaunchesResponse_launches = Lens.lens (\ListLaunchesResponse' {launches} -> launches) (\s@ListLaunchesResponse' {} a -> s {launches = a} :: ListLaunchesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLaunchesResponse_httpStatus :: Lens.Lens' ListLaunchesResponse Prelude.Int
listLaunchesResponse_httpStatus = Lens.lens (\ListLaunchesResponse' {httpStatus} -> httpStatus) (\s@ListLaunchesResponse' {} a -> s {httpStatus = a} :: ListLaunchesResponse)

instance Prelude.NFData ListLaunchesResponse where
  rnf ListLaunchesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf launches
      `Prelude.seq` Prelude.rnf httpStatus

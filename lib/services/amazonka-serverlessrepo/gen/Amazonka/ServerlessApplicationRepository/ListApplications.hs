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
-- Module      : Amazonka.ServerlessApplicationRepository.ListApplications
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists applications owned by the requester.
--
-- This operation returns paginated results.
module Amazonka.ServerlessApplicationRepository.ListApplications
  ( -- * Creating a Request
    ListApplications (..),
    newListApplications,

    -- * Request Lenses
    listApplications_nextToken,
    listApplications_maxItems,

    -- * Destructuring the Response
    ListApplicationsResponse (..),
    newListApplicationsResponse,

    -- * Response Lenses
    listApplicationsResponse_nextToken,
    listApplicationsResponse_applications,
    listApplicationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServerlessApplicationRepository.Types

-- | /See:/ 'newListApplications' smart constructor.
data ListApplications = ListApplications'
  { -- | A token to specify where to start paginating.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The total number of items to return.
    maxItems :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplications_nextToken' - A token to specify where to start paginating.
--
-- 'maxItems', 'listApplications_maxItems' - The total number of items to return.
newListApplications ::
  ListApplications
newListApplications =
  ListApplications'
    { nextToken = Prelude.Nothing,
      maxItems = Prelude.Nothing
    }

-- | A token to specify where to start paginating.
listApplications_nextToken :: Lens.Lens' ListApplications (Prelude.Maybe Prelude.Text)
listApplications_nextToken = Lens.lens (\ListApplications' {nextToken} -> nextToken) (\s@ListApplications' {} a -> s {nextToken = a} :: ListApplications)

-- | The total number of items to return.
listApplications_maxItems :: Lens.Lens' ListApplications (Prelude.Maybe Prelude.Natural)
listApplications_maxItems = Lens.lens (\ListApplications' {maxItems} -> maxItems) (\s@ListApplications' {} a -> s {maxItems = a} :: ListApplications)

instance Core.AWSPager ListApplications where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listApplicationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listApplicationsResponse_applications
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listApplications_nextToken
          Lens..~ rs
          Lens.^? listApplicationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListApplications where
  type
    AWSResponse ListApplications =
      ListApplicationsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "applications" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListApplications where
  hashWithSalt _salt ListApplications' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxItems

instance Prelude.NFData ListApplications where
  rnf ListApplications' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxItems

instance Core.ToHeaders ListApplications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListApplications where
  toPath = Prelude.const "/applications"

instance Core.ToQuery ListApplications where
  toQuery ListApplications' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxItems" Core.=: maxItems
      ]

-- | /See:/ 'newListApplicationsResponse' smart constructor.
data ListApplicationsResponse = ListApplicationsResponse'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of application summaries.
    applications :: Prelude.Maybe [ApplicationSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationsResponse_nextToken' - The token to request the next page of results.
--
-- 'applications', 'listApplicationsResponse_applications' - An array of application summaries.
--
-- 'httpStatus', 'listApplicationsResponse_httpStatus' - The response's http status code.
newListApplicationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListApplicationsResponse
newListApplicationsResponse pHttpStatus_ =
  ListApplicationsResponse'
    { nextToken =
        Prelude.Nothing,
      applications = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to request the next page of results.
listApplicationsResponse_nextToken :: Lens.Lens' ListApplicationsResponse (Prelude.Maybe Prelude.Text)
listApplicationsResponse_nextToken = Lens.lens (\ListApplicationsResponse' {nextToken} -> nextToken) (\s@ListApplicationsResponse' {} a -> s {nextToken = a} :: ListApplicationsResponse)

-- | An array of application summaries.
listApplicationsResponse_applications :: Lens.Lens' ListApplicationsResponse (Prelude.Maybe [ApplicationSummary])
listApplicationsResponse_applications = Lens.lens (\ListApplicationsResponse' {applications} -> applications) (\s@ListApplicationsResponse' {} a -> s {applications = a} :: ListApplicationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listApplicationsResponse_httpStatus :: Lens.Lens' ListApplicationsResponse Prelude.Int
listApplicationsResponse_httpStatus = Lens.lens (\ListApplicationsResponse' {httpStatus} -> httpStatus) (\s@ListApplicationsResponse' {} a -> s {httpStatus = a} :: ListApplicationsResponse)

instance Prelude.NFData ListApplicationsResponse where
  rnf ListApplicationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf applications
      `Prelude.seq` Prelude.rnf httpStatus

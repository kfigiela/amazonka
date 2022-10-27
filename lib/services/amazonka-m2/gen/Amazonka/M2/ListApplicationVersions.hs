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
-- Module      : Amazonka.M2.ListApplicationVersions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the application versions for a specific application.
--
-- This operation returns paginated results.
module Amazonka.M2.ListApplicationVersions
  ( -- * Creating a Request
    ListApplicationVersions (..),
    newListApplicationVersions,

    -- * Request Lenses
    listApplicationVersions_nextToken,
    listApplicationVersions_maxResults,
    listApplicationVersions_applicationId,

    -- * Destructuring the Response
    ListApplicationVersionsResponse (..),
    newListApplicationVersionsResponse,

    -- * Response Lenses
    listApplicationVersionsResponse_nextToken,
    listApplicationVersionsResponse_httpStatus,
    listApplicationVersionsResponse_applicationVersions,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.M2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListApplicationVersions' smart constructor.
data ListApplicationVersions = ListApplicationVersions'
  { -- | A pagination token returned from a previous call to this operation. This
    -- specifies the next item to return. To return to the beginning of the
    -- list, exclude this parameter.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of application versions to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier of the application.
    applicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationVersions_nextToken' - A pagination token returned from a previous call to this operation. This
-- specifies the next item to return. To return to the beginning of the
-- list, exclude this parameter.
--
-- 'maxResults', 'listApplicationVersions_maxResults' - The maximum number of application versions to return.
--
-- 'applicationId', 'listApplicationVersions_applicationId' - The unique identifier of the application.
newListApplicationVersions ::
  -- | 'applicationId'
  Prelude.Text ->
  ListApplicationVersions
newListApplicationVersions pApplicationId_ =
  ListApplicationVersions'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      applicationId = pApplicationId_
    }

-- | A pagination token returned from a previous call to this operation. This
-- specifies the next item to return. To return to the beginning of the
-- list, exclude this parameter.
listApplicationVersions_nextToken :: Lens.Lens' ListApplicationVersions (Prelude.Maybe Prelude.Text)
listApplicationVersions_nextToken = Lens.lens (\ListApplicationVersions' {nextToken} -> nextToken) (\s@ListApplicationVersions' {} a -> s {nextToken = a} :: ListApplicationVersions)

-- | The maximum number of application versions to return.
listApplicationVersions_maxResults :: Lens.Lens' ListApplicationVersions (Prelude.Maybe Prelude.Natural)
listApplicationVersions_maxResults = Lens.lens (\ListApplicationVersions' {maxResults} -> maxResults) (\s@ListApplicationVersions' {} a -> s {maxResults = a} :: ListApplicationVersions)

-- | The unique identifier of the application.
listApplicationVersions_applicationId :: Lens.Lens' ListApplicationVersions Prelude.Text
listApplicationVersions_applicationId = Lens.lens (\ListApplicationVersions' {applicationId} -> applicationId) (\s@ListApplicationVersions' {} a -> s {applicationId = a} :: ListApplicationVersions)

instance Core.AWSPager ListApplicationVersions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listApplicationVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listApplicationVersionsResponse_applicationVersions
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listApplicationVersions_nextToken
          Lens..~ rs
          Lens.^? listApplicationVersionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListApplicationVersions where
  type
    AWSResponse ListApplicationVersions =
      ListApplicationVersionsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationVersionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "applicationVersions"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListApplicationVersions where
  hashWithSalt _salt ListApplicationVersions' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` applicationId

instance Prelude.NFData ListApplicationVersions where
  rnf ListApplicationVersions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf applicationId

instance Core.ToHeaders ListApplicationVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListApplicationVersions where
  toPath ListApplicationVersions' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/versions"
      ]

instance Core.ToQuery ListApplicationVersions where
  toQuery ListApplicationVersions' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListApplicationVersionsResponse' smart constructor.
data ListApplicationVersionsResponse = ListApplicationVersionsResponse'
  { -- | If there are more items to return, this contains a token that is passed
    -- to a subsequent call to this operation to retrieve the next set of
    -- items.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of application versions.
    applicationVersions :: [ApplicationVersionSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationVersionsResponse_nextToken' - If there are more items to return, this contains a token that is passed
-- to a subsequent call to this operation to retrieve the next set of
-- items.
--
-- 'httpStatus', 'listApplicationVersionsResponse_httpStatus' - The response's http status code.
--
-- 'applicationVersions', 'listApplicationVersionsResponse_applicationVersions' - The list of application versions.
newListApplicationVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListApplicationVersionsResponse
newListApplicationVersionsResponse pHttpStatus_ =
  ListApplicationVersionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      applicationVersions = Prelude.mempty
    }

-- | If there are more items to return, this contains a token that is passed
-- to a subsequent call to this operation to retrieve the next set of
-- items.
listApplicationVersionsResponse_nextToken :: Lens.Lens' ListApplicationVersionsResponse (Prelude.Maybe Prelude.Text)
listApplicationVersionsResponse_nextToken = Lens.lens (\ListApplicationVersionsResponse' {nextToken} -> nextToken) (\s@ListApplicationVersionsResponse' {} a -> s {nextToken = a} :: ListApplicationVersionsResponse)

-- | The response's http status code.
listApplicationVersionsResponse_httpStatus :: Lens.Lens' ListApplicationVersionsResponse Prelude.Int
listApplicationVersionsResponse_httpStatus = Lens.lens (\ListApplicationVersionsResponse' {httpStatus} -> httpStatus) (\s@ListApplicationVersionsResponse' {} a -> s {httpStatus = a} :: ListApplicationVersionsResponse)

-- | The list of application versions.
listApplicationVersionsResponse_applicationVersions :: Lens.Lens' ListApplicationVersionsResponse [ApplicationVersionSummary]
listApplicationVersionsResponse_applicationVersions = Lens.lens (\ListApplicationVersionsResponse' {applicationVersions} -> applicationVersions) (\s@ListApplicationVersionsResponse' {} a -> s {applicationVersions = a} :: ListApplicationVersionsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListApplicationVersionsResponse
  where
  rnf ListApplicationVersionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf applicationVersions

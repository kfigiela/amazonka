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
-- Module      : Amazonka.AmplifyUiBuilder.ListComponents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of components for a specified Amplify app and backend
-- environment.
--
-- This operation returns paginated results.
module Amazonka.AmplifyUiBuilder.ListComponents
  ( -- * Creating a Request
    ListComponents (..),
    newListComponents,

    -- * Request Lenses
    listComponents_nextToken,
    listComponents_maxResults,
    listComponents_appId,
    listComponents_environmentName,

    -- * Destructuring the Response
    ListComponentsResponse (..),
    newListComponentsResponse,

    -- * Response Lenses
    listComponentsResponse_nextToken,
    listComponentsResponse_httpStatus,
    listComponentsResponse_entities,
  )
where

import Amazonka.AmplifyUiBuilder.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListComponents' smart constructor.
data ListComponents = ListComponents'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of components to retrieve.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique ID for the Amplify app.
    appId :: Prelude.Text,
    -- | The name of the backend environment that is a part of the Amplify app.
    environmentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComponents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listComponents_nextToken' - The token to request the next page of results.
--
-- 'maxResults', 'listComponents_maxResults' - The maximum number of components to retrieve.
--
-- 'appId', 'listComponents_appId' - The unique ID for the Amplify app.
--
-- 'environmentName', 'listComponents_environmentName' - The name of the backend environment that is a part of the Amplify app.
newListComponents ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'environmentName'
  Prelude.Text ->
  ListComponents
newListComponents pAppId_ pEnvironmentName_ =
  ListComponents'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appId = pAppId_,
      environmentName = pEnvironmentName_
    }

-- | The token to request the next page of results.
listComponents_nextToken :: Lens.Lens' ListComponents (Prelude.Maybe Prelude.Text)
listComponents_nextToken = Lens.lens (\ListComponents' {nextToken} -> nextToken) (\s@ListComponents' {} a -> s {nextToken = a} :: ListComponents)

-- | The maximum number of components to retrieve.
listComponents_maxResults :: Lens.Lens' ListComponents (Prelude.Maybe Prelude.Natural)
listComponents_maxResults = Lens.lens (\ListComponents' {maxResults} -> maxResults) (\s@ListComponents' {} a -> s {maxResults = a} :: ListComponents)

-- | The unique ID for the Amplify app.
listComponents_appId :: Lens.Lens' ListComponents Prelude.Text
listComponents_appId = Lens.lens (\ListComponents' {appId} -> appId) (\s@ListComponents' {} a -> s {appId = a} :: ListComponents)

-- | The name of the backend environment that is a part of the Amplify app.
listComponents_environmentName :: Lens.Lens' ListComponents Prelude.Text
listComponents_environmentName = Lens.lens (\ListComponents' {environmentName} -> environmentName) (\s@ListComponents' {} a -> s {environmentName = a} :: ListComponents)

instance Core.AWSPager ListComponents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listComponentsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listComponentsResponse_entities) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listComponents_nextToken
          Lens..~ rs
          Lens.^? listComponentsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListComponents where
  type
    AWSResponse ListComponents =
      ListComponentsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListComponentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "entities" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListComponents where
  hashWithSalt _salt ListComponents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` environmentName

instance Prelude.NFData ListComponents where
  rnf ListComponents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf environmentName

instance Core.ToHeaders ListComponents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListComponents where
  toPath ListComponents' {..} =
    Prelude.mconcat
      [ "/app/",
        Core.toBS appId,
        "/environment/",
        Core.toBS environmentName,
        "/components"
      ]

instance Core.ToQuery ListComponents where
  toQuery ListComponents' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListComponentsResponse' smart constructor.
data ListComponentsResponse = ListComponentsResponse'
  { -- | The pagination token that\'s included if more results are available.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of components for the Amplify app.
    entities :: [ComponentSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComponentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listComponentsResponse_nextToken' - The pagination token that\'s included if more results are available.
--
-- 'httpStatus', 'listComponentsResponse_httpStatus' - The response's http status code.
--
-- 'entities', 'listComponentsResponse_entities' - The list of components for the Amplify app.
newListComponentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListComponentsResponse
newListComponentsResponse pHttpStatus_ =
  ListComponentsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      entities = Prelude.mempty
    }

-- | The pagination token that\'s included if more results are available.
listComponentsResponse_nextToken :: Lens.Lens' ListComponentsResponse (Prelude.Maybe Prelude.Text)
listComponentsResponse_nextToken = Lens.lens (\ListComponentsResponse' {nextToken} -> nextToken) (\s@ListComponentsResponse' {} a -> s {nextToken = a} :: ListComponentsResponse)

-- | The response's http status code.
listComponentsResponse_httpStatus :: Lens.Lens' ListComponentsResponse Prelude.Int
listComponentsResponse_httpStatus = Lens.lens (\ListComponentsResponse' {httpStatus} -> httpStatus) (\s@ListComponentsResponse' {} a -> s {httpStatus = a} :: ListComponentsResponse)

-- | The list of components for the Amplify app.
listComponentsResponse_entities :: Lens.Lens' ListComponentsResponse [ComponentSummary]
listComponentsResponse_entities = Lens.lens (\ListComponentsResponse' {entities} -> entities) (\s@ListComponentsResponse' {} a -> s {entities = a} :: ListComponentsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListComponentsResponse where
  rnf ListComponentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf entities

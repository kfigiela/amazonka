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
-- Module      : Amazonka.IotTwinMaker.ListComponentTypes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all component types in a workspace.
module Amazonka.IotTwinMaker.ListComponentTypes
  ( -- * Creating a Request
    ListComponentTypes (..),
    newListComponentTypes,

    -- * Request Lenses
    listComponentTypes_nextToken,
    listComponentTypes_filters,
    listComponentTypes_maxResults,
    listComponentTypes_workspaceId,

    -- * Destructuring the Response
    ListComponentTypesResponse (..),
    newListComponentTypesResponse,

    -- * Response Lenses
    listComponentTypesResponse_nextToken,
    listComponentTypesResponse_maxResults,
    listComponentTypesResponse_httpStatus,
    listComponentTypesResponse_componentTypeSummaries,
    listComponentTypesResponse_workspaceId,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListComponentTypes' smart constructor.
data ListComponentTypes = ListComponentTypes'
  { -- | The string that specifies the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of objects that filter the request.
    filters :: Prelude.Maybe [ListComponentTypesFilter],
    -- | The maximum number of results to display.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the workspace.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComponentTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listComponentTypes_nextToken' - The string that specifies the next page of results.
--
-- 'filters', 'listComponentTypes_filters' - A list of objects that filter the request.
--
-- 'maxResults', 'listComponentTypes_maxResults' - The maximum number of results to display.
--
-- 'workspaceId', 'listComponentTypes_workspaceId' - The ID of the workspace.
newListComponentTypes ::
  -- | 'workspaceId'
  Prelude.Text ->
  ListComponentTypes
newListComponentTypes pWorkspaceId_ =
  ListComponentTypes'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      workspaceId = pWorkspaceId_
    }

-- | The string that specifies the next page of results.
listComponentTypes_nextToken :: Lens.Lens' ListComponentTypes (Prelude.Maybe Prelude.Text)
listComponentTypes_nextToken = Lens.lens (\ListComponentTypes' {nextToken} -> nextToken) (\s@ListComponentTypes' {} a -> s {nextToken = a} :: ListComponentTypes)

-- | A list of objects that filter the request.
listComponentTypes_filters :: Lens.Lens' ListComponentTypes (Prelude.Maybe [ListComponentTypesFilter])
listComponentTypes_filters = Lens.lens (\ListComponentTypes' {filters} -> filters) (\s@ListComponentTypes' {} a -> s {filters = a} :: ListComponentTypes) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to display.
listComponentTypes_maxResults :: Lens.Lens' ListComponentTypes (Prelude.Maybe Prelude.Natural)
listComponentTypes_maxResults = Lens.lens (\ListComponentTypes' {maxResults} -> maxResults) (\s@ListComponentTypes' {} a -> s {maxResults = a} :: ListComponentTypes)

-- | The ID of the workspace.
listComponentTypes_workspaceId :: Lens.Lens' ListComponentTypes Prelude.Text
listComponentTypes_workspaceId = Lens.lens (\ListComponentTypes' {workspaceId} -> workspaceId) (\s@ListComponentTypes' {} a -> s {workspaceId = a} :: ListComponentTypes)

instance Core.AWSRequest ListComponentTypes where
  type
    AWSResponse ListComponentTypes =
      ListComponentTypesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListComponentTypesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "maxResults")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "componentTypeSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..:> "workspaceId")
      )

instance Prelude.Hashable ListComponentTypes where
  hashWithSalt _salt ListComponentTypes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData ListComponentTypes where
  rnf ListComponentTypes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders ListComponentTypes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListComponentTypes where
  toJSON ListComponentTypes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("filters" Core..=) Prelude.<$> filters,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListComponentTypes where
  toPath ListComponentTypes' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/component-types-list"
      ]

instance Core.ToQuery ListComponentTypes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListComponentTypesResponse' smart constructor.
data ListComponentTypesResponse = ListComponentTypesResponse'
  { -- | The string that specifies the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of results to display.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of objects that contain information about the component types.
    componentTypeSummaries :: [ComponentTypeSummary],
    -- | The ID of the workspace.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComponentTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listComponentTypesResponse_nextToken' - The string that specifies the next page of results.
--
-- 'maxResults', 'listComponentTypesResponse_maxResults' - Specifies the maximum number of results to display.
--
-- 'httpStatus', 'listComponentTypesResponse_httpStatus' - The response's http status code.
--
-- 'componentTypeSummaries', 'listComponentTypesResponse_componentTypeSummaries' - A list of objects that contain information about the component types.
--
-- 'workspaceId', 'listComponentTypesResponse_workspaceId' - The ID of the workspace.
newListComponentTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workspaceId'
  Prelude.Text ->
  ListComponentTypesResponse
newListComponentTypesResponse
  pHttpStatus_
  pWorkspaceId_ =
    ListComponentTypesResponse'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        componentTypeSummaries = Prelude.mempty,
        workspaceId = pWorkspaceId_
      }

-- | The string that specifies the next page of results.
listComponentTypesResponse_nextToken :: Lens.Lens' ListComponentTypesResponse (Prelude.Maybe Prelude.Text)
listComponentTypesResponse_nextToken = Lens.lens (\ListComponentTypesResponse' {nextToken} -> nextToken) (\s@ListComponentTypesResponse' {} a -> s {nextToken = a} :: ListComponentTypesResponse)

-- | Specifies the maximum number of results to display.
listComponentTypesResponse_maxResults :: Lens.Lens' ListComponentTypesResponse (Prelude.Maybe Prelude.Natural)
listComponentTypesResponse_maxResults = Lens.lens (\ListComponentTypesResponse' {maxResults} -> maxResults) (\s@ListComponentTypesResponse' {} a -> s {maxResults = a} :: ListComponentTypesResponse)

-- | The response's http status code.
listComponentTypesResponse_httpStatus :: Lens.Lens' ListComponentTypesResponse Prelude.Int
listComponentTypesResponse_httpStatus = Lens.lens (\ListComponentTypesResponse' {httpStatus} -> httpStatus) (\s@ListComponentTypesResponse' {} a -> s {httpStatus = a} :: ListComponentTypesResponse)

-- | A list of objects that contain information about the component types.
listComponentTypesResponse_componentTypeSummaries :: Lens.Lens' ListComponentTypesResponse [ComponentTypeSummary]
listComponentTypesResponse_componentTypeSummaries = Lens.lens (\ListComponentTypesResponse' {componentTypeSummaries} -> componentTypeSummaries) (\s@ListComponentTypesResponse' {} a -> s {componentTypeSummaries = a} :: ListComponentTypesResponse) Prelude.. Lens.coerced

-- | The ID of the workspace.
listComponentTypesResponse_workspaceId :: Lens.Lens' ListComponentTypesResponse Prelude.Text
listComponentTypesResponse_workspaceId = Lens.lens (\ListComponentTypesResponse' {workspaceId} -> workspaceId) (\s@ListComponentTypesResponse' {} a -> s {workspaceId = a} :: ListComponentTypesResponse)

instance Prelude.NFData ListComponentTypesResponse where
  rnf ListComponentTypesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf componentTypeSummaries
      `Prelude.seq` Prelude.rnf workspaceId

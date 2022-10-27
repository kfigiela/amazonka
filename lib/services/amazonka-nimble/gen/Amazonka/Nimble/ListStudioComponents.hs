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
-- Module      : Amazonka.Nimble.ListStudioComponents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the StudioComponents in a studio.
--
-- This operation returns paginated results.
module Amazonka.Nimble.ListStudioComponents
  ( -- * Creating a Request
    ListStudioComponents (..),
    newListStudioComponents,

    -- * Request Lenses
    listStudioComponents_nextToken,
    listStudioComponents_types,
    listStudioComponents_maxResults,
    listStudioComponents_states,
    listStudioComponents_studioId,

    -- * Destructuring the Response
    ListStudioComponentsResponse (..),
    newListStudioComponentsResponse,

    -- * Response Lenses
    listStudioComponentsResponse_nextToken,
    listStudioComponentsResponse_studioComponents,
    listStudioComponentsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListStudioComponents' smart constructor.
data ListStudioComponents = ListStudioComponents'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the request to studio components that are of one of the given
    -- types.
    types :: Prelude.Maybe [StudioComponentType],
    -- | The max number of results to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Filters the request to studio components that are in one of the given
    -- states.
    states :: Prelude.Maybe [StudioComponentState],
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStudioComponents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStudioComponents_nextToken' - The token to request the next page of results.
--
-- 'types', 'listStudioComponents_types' - Filters the request to studio components that are of one of the given
-- types.
--
-- 'maxResults', 'listStudioComponents_maxResults' - The max number of results to return in the response.
--
-- 'states', 'listStudioComponents_states' - Filters the request to studio components that are in one of the given
-- states.
--
-- 'studioId', 'listStudioComponents_studioId' - The studio ID.
newListStudioComponents ::
  -- | 'studioId'
  Prelude.Text ->
  ListStudioComponents
newListStudioComponents pStudioId_ =
  ListStudioComponents'
    { nextToken = Prelude.Nothing,
      types = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      states = Prelude.Nothing,
      studioId = pStudioId_
    }

-- | The token to request the next page of results.
listStudioComponents_nextToken :: Lens.Lens' ListStudioComponents (Prelude.Maybe Prelude.Text)
listStudioComponents_nextToken = Lens.lens (\ListStudioComponents' {nextToken} -> nextToken) (\s@ListStudioComponents' {} a -> s {nextToken = a} :: ListStudioComponents)

-- | Filters the request to studio components that are of one of the given
-- types.
listStudioComponents_types :: Lens.Lens' ListStudioComponents (Prelude.Maybe [StudioComponentType])
listStudioComponents_types = Lens.lens (\ListStudioComponents' {types} -> types) (\s@ListStudioComponents' {} a -> s {types = a} :: ListStudioComponents) Prelude.. Lens.mapping Lens.coerced

-- | The max number of results to return in the response.
listStudioComponents_maxResults :: Lens.Lens' ListStudioComponents (Prelude.Maybe Prelude.Natural)
listStudioComponents_maxResults = Lens.lens (\ListStudioComponents' {maxResults} -> maxResults) (\s@ListStudioComponents' {} a -> s {maxResults = a} :: ListStudioComponents)

-- | Filters the request to studio components that are in one of the given
-- states.
listStudioComponents_states :: Lens.Lens' ListStudioComponents (Prelude.Maybe [StudioComponentState])
listStudioComponents_states = Lens.lens (\ListStudioComponents' {states} -> states) (\s@ListStudioComponents' {} a -> s {states = a} :: ListStudioComponents) Prelude.. Lens.mapping Lens.coerced

-- | The studio ID.
listStudioComponents_studioId :: Lens.Lens' ListStudioComponents Prelude.Text
listStudioComponents_studioId = Lens.lens (\ListStudioComponents' {studioId} -> studioId) (\s@ListStudioComponents' {} a -> s {studioId = a} :: ListStudioComponents)

instance Core.AWSPager ListStudioComponents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listStudioComponentsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listStudioComponentsResponse_studioComponents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listStudioComponents_nextToken
          Lens..~ rs
          Lens.^? listStudioComponentsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListStudioComponents where
  type
    AWSResponse ListStudioComponents =
      ListStudioComponentsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListStudioComponentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "studioComponents"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListStudioComponents where
  hashWithSalt _salt ListStudioComponents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` types
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` states
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData ListStudioComponents where
  rnf ListStudioComponents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf types
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf states
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders ListStudioComponents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListStudioComponents where
  toPath ListStudioComponents' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/studio-components"
      ]

instance Core.ToQuery ListStudioComponents where
  toQuery ListStudioComponents' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "types"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> types),
        "maxResults" Core.=: maxResults,
        "states"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> states)
      ]

-- | /See:/ 'newListStudioComponentsResponse' smart constructor.
data ListStudioComponentsResponse = ListStudioComponentsResponse'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A collection of studio components.
    studioComponents :: Prelude.Maybe [StudioComponent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStudioComponentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStudioComponentsResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'studioComponents', 'listStudioComponentsResponse_studioComponents' - A collection of studio components.
--
-- 'httpStatus', 'listStudioComponentsResponse_httpStatus' - The response's http status code.
newListStudioComponentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStudioComponentsResponse
newListStudioComponentsResponse pHttpStatus_ =
  ListStudioComponentsResponse'
    { nextToken =
        Prelude.Nothing,
      studioComponents = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listStudioComponentsResponse_nextToken :: Lens.Lens' ListStudioComponentsResponse (Prelude.Maybe Prelude.Text)
listStudioComponentsResponse_nextToken = Lens.lens (\ListStudioComponentsResponse' {nextToken} -> nextToken) (\s@ListStudioComponentsResponse' {} a -> s {nextToken = a} :: ListStudioComponentsResponse)

-- | A collection of studio components.
listStudioComponentsResponse_studioComponents :: Lens.Lens' ListStudioComponentsResponse (Prelude.Maybe [StudioComponent])
listStudioComponentsResponse_studioComponents = Lens.lens (\ListStudioComponentsResponse' {studioComponents} -> studioComponents) (\s@ListStudioComponentsResponse' {} a -> s {studioComponents = a} :: ListStudioComponentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listStudioComponentsResponse_httpStatus :: Lens.Lens' ListStudioComponentsResponse Prelude.Int
listStudioComponentsResponse_httpStatus = Lens.lens (\ListStudioComponentsResponse' {httpStatus} -> httpStatus) (\s@ListStudioComponentsResponse' {} a -> s {httpStatus = a} :: ListStudioComponentsResponse)

instance Prelude.NFData ListStudioComponentsResponse where
  rnf ListStudioComponentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf studioComponents
      `Prelude.seq` Prelude.rnf httpStatus

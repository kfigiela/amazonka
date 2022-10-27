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
-- Module      : Amazonka.FIS.ListTargetResourceTypes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the target resource types.
module Amazonka.FIS.ListTargetResourceTypes
  ( -- * Creating a Request
    ListTargetResourceTypes (..),
    newListTargetResourceTypes,

    -- * Request Lenses
    listTargetResourceTypes_nextToken,
    listTargetResourceTypes_maxResults,

    -- * Destructuring the Response
    ListTargetResourceTypesResponse (..),
    newListTargetResourceTypesResponse,

    -- * Response Lenses
    listTargetResourceTypesResponse_nextToken,
    listTargetResourceTypesResponse_targetResourceTypes,
    listTargetResourceTypesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FIS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListTargetResourceTypes' smart constructor.
data ListTargetResourceTypes = ListTargetResourceTypes'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTargetResourceTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTargetResourceTypes_nextToken' - The token for the next page of results.
--
-- 'maxResults', 'listTargetResourceTypes_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
newListTargetResourceTypes ::
  ListTargetResourceTypes
newListTargetResourceTypes =
  ListTargetResourceTypes'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next page of results.
listTargetResourceTypes_nextToken :: Lens.Lens' ListTargetResourceTypes (Prelude.Maybe Prelude.Text)
listTargetResourceTypes_nextToken = Lens.lens (\ListTargetResourceTypes' {nextToken} -> nextToken) (\s@ListTargetResourceTypes' {} a -> s {nextToken = a} :: ListTargetResourceTypes)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
listTargetResourceTypes_maxResults :: Lens.Lens' ListTargetResourceTypes (Prelude.Maybe Prelude.Natural)
listTargetResourceTypes_maxResults = Lens.lens (\ListTargetResourceTypes' {maxResults} -> maxResults) (\s@ListTargetResourceTypes' {} a -> s {maxResults = a} :: ListTargetResourceTypes)

instance Core.AWSRequest ListTargetResourceTypes where
  type
    AWSResponse ListTargetResourceTypes =
      ListTargetResourceTypesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTargetResourceTypesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "targetResourceTypes"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTargetResourceTypes where
  hashWithSalt _salt ListTargetResourceTypes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListTargetResourceTypes where
  rnf ListTargetResourceTypes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListTargetResourceTypes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListTargetResourceTypes where
  toPath = Prelude.const "/targetResourceTypes"

instance Core.ToQuery ListTargetResourceTypes where
  toQuery ListTargetResourceTypes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListTargetResourceTypesResponse' smart constructor.
data ListTargetResourceTypesResponse = ListTargetResourceTypesResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The target resource types.
    targetResourceTypes :: Prelude.Maybe [TargetResourceTypeSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTargetResourceTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTargetResourceTypesResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'targetResourceTypes', 'listTargetResourceTypesResponse_targetResourceTypes' - The target resource types.
--
-- 'httpStatus', 'listTargetResourceTypesResponse_httpStatus' - The response's http status code.
newListTargetResourceTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTargetResourceTypesResponse
newListTargetResourceTypesResponse pHttpStatus_ =
  ListTargetResourceTypesResponse'
    { nextToken =
        Prelude.Nothing,
      targetResourceTypes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
listTargetResourceTypesResponse_nextToken :: Lens.Lens' ListTargetResourceTypesResponse (Prelude.Maybe Prelude.Text)
listTargetResourceTypesResponse_nextToken = Lens.lens (\ListTargetResourceTypesResponse' {nextToken} -> nextToken) (\s@ListTargetResourceTypesResponse' {} a -> s {nextToken = a} :: ListTargetResourceTypesResponse)

-- | The target resource types.
listTargetResourceTypesResponse_targetResourceTypes :: Lens.Lens' ListTargetResourceTypesResponse (Prelude.Maybe [TargetResourceTypeSummary])
listTargetResourceTypesResponse_targetResourceTypes = Lens.lens (\ListTargetResourceTypesResponse' {targetResourceTypes} -> targetResourceTypes) (\s@ListTargetResourceTypesResponse' {} a -> s {targetResourceTypes = a} :: ListTargetResourceTypesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listTargetResourceTypesResponse_httpStatus :: Lens.Lens' ListTargetResourceTypesResponse Prelude.Int
listTargetResourceTypesResponse_httpStatus = Lens.lens (\ListTargetResourceTypesResponse' {httpStatus} -> httpStatus) (\s@ListTargetResourceTypesResponse' {} a -> s {httpStatus = a} :: ListTargetResourceTypesResponse)

instance
  Prelude.NFData
    ListTargetResourceTypesResponse
  where
  rnf ListTargetResourceTypesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf targetResourceTypes
      `Prelude.seq` Prelude.rnf httpStatus

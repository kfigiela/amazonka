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
-- Module      : Amazonka.AuditManager.GetDelegations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of delegations from an audit owner to a delegate.
module Amazonka.AuditManager.GetDelegations
  ( -- * Creating a Request
    GetDelegations (..),
    newGetDelegations,

    -- * Request Lenses
    getDelegations_nextToken,
    getDelegations_maxResults,

    -- * Destructuring the Response
    GetDelegationsResponse (..),
    newGetDelegationsResponse,

    -- * Response Lenses
    getDelegationsResponse_nextToken,
    getDelegationsResponse_delegations,
    getDelegationsResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetDelegations' smart constructor.
data GetDelegations = GetDelegations'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results on a page or for an API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDelegations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDelegations_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'maxResults', 'getDelegations_maxResults' - Represents the maximum number of results on a page or for an API request
-- call.
newGetDelegations ::
  GetDelegations
newGetDelegations =
  GetDelegations'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token that\'s used to fetch the next set of results.
getDelegations_nextToken :: Lens.Lens' GetDelegations (Prelude.Maybe Prelude.Text)
getDelegations_nextToken = Lens.lens (\GetDelegations' {nextToken} -> nextToken) (\s@GetDelegations' {} a -> s {nextToken = a} :: GetDelegations)

-- | Represents the maximum number of results on a page or for an API request
-- call.
getDelegations_maxResults :: Lens.Lens' GetDelegations (Prelude.Maybe Prelude.Natural)
getDelegations_maxResults = Lens.lens (\GetDelegations' {maxResults} -> maxResults) (\s@GetDelegations' {} a -> s {maxResults = a} :: GetDelegations)

instance Core.AWSRequest GetDelegations where
  type
    AWSResponse GetDelegations =
      GetDelegationsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDelegationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "delegations" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDelegations where
  hashWithSalt _salt GetDelegations' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData GetDelegations where
  rnf GetDelegations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders GetDelegations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDelegations where
  toPath = Prelude.const "/delegations"

instance Core.ToQuery GetDelegations where
  toQuery GetDelegations' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetDelegationsResponse' smart constructor.
data GetDelegationsResponse = GetDelegationsResponse'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of delegations that the @GetDelegations@ API returned.
    delegations :: Prelude.Maybe [DelegationMetadata],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDelegationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDelegationsResponse_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'delegations', 'getDelegationsResponse_delegations' - The list of delegations that the @GetDelegations@ API returned.
--
-- 'httpStatus', 'getDelegationsResponse_httpStatus' - The response's http status code.
newGetDelegationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDelegationsResponse
newGetDelegationsResponse pHttpStatus_ =
  GetDelegationsResponse'
    { nextToken =
        Prelude.Nothing,
      delegations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token that\'s used to fetch the next set of results.
getDelegationsResponse_nextToken :: Lens.Lens' GetDelegationsResponse (Prelude.Maybe Prelude.Text)
getDelegationsResponse_nextToken = Lens.lens (\GetDelegationsResponse' {nextToken} -> nextToken) (\s@GetDelegationsResponse' {} a -> s {nextToken = a} :: GetDelegationsResponse)

-- | The list of delegations that the @GetDelegations@ API returned.
getDelegationsResponse_delegations :: Lens.Lens' GetDelegationsResponse (Prelude.Maybe [DelegationMetadata])
getDelegationsResponse_delegations = Lens.lens (\GetDelegationsResponse' {delegations} -> delegations) (\s@GetDelegationsResponse' {} a -> s {delegations = a} :: GetDelegationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getDelegationsResponse_httpStatus :: Lens.Lens' GetDelegationsResponse Prelude.Int
getDelegationsResponse_httpStatus = Lens.lens (\GetDelegationsResponse' {httpStatus} -> httpStatus) (\s@GetDelegationsResponse' {} a -> s {httpStatus = a} :: GetDelegationsResponse)

instance Prelude.NFData GetDelegationsResponse where
  rnf GetDelegationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf delegations
      `Prelude.seq` Prelude.rnf httpStatus

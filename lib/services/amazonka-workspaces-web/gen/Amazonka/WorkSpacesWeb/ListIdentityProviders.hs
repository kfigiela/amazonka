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
-- Module      : Amazonka.WorkSpacesWeb.ListIdentityProviders
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of identity providers for a specific web portal.
module Amazonka.WorkSpacesWeb.ListIdentityProviders
  ( -- * Creating a Request
    ListIdentityProviders (..),
    newListIdentityProviders,

    -- * Request Lenses
    listIdentityProviders_nextToken,
    listIdentityProviders_maxResults,
    listIdentityProviders_portalArn,

    -- * Destructuring the Response
    ListIdentityProvidersResponse (..),
    newListIdentityProvidersResponse,

    -- * Response Lenses
    listIdentityProvidersResponse_nextToken,
    listIdentityProvidersResponse_identityProviders,
    listIdentityProvidersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newListIdentityProviders' smart constructor.
data ListIdentityProviders = ListIdentityProviders'
  { -- | The pagination token used to retrieve the next page of results for this
    -- operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be included in the next page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the web portal.
    portalArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIdentityProviders' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIdentityProviders_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation.
--
-- 'maxResults', 'listIdentityProviders_maxResults' - The maximum number of results to be included in the next page.
--
-- 'portalArn', 'listIdentityProviders_portalArn' - The ARN of the web portal.
newListIdentityProviders ::
  -- | 'portalArn'
  Prelude.Text ->
  ListIdentityProviders
newListIdentityProviders pPortalArn_ =
  ListIdentityProviders'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      portalArn = pPortalArn_
    }

-- | The pagination token used to retrieve the next page of results for this
-- operation.
listIdentityProviders_nextToken :: Lens.Lens' ListIdentityProviders (Prelude.Maybe Prelude.Text)
listIdentityProviders_nextToken = Lens.lens (\ListIdentityProviders' {nextToken} -> nextToken) (\s@ListIdentityProviders' {} a -> s {nextToken = a} :: ListIdentityProviders)

-- | The maximum number of results to be included in the next page.
listIdentityProviders_maxResults :: Lens.Lens' ListIdentityProviders (Prelude.Maybe Prelude.Natural)
listIdentityProviders_maxResults = Lens.lens (\ListIdentityProviders' {maxResults} -> maxResults) (\s@ListIdentityProviders' {} a -> s {maxResults = a} :: ListIdentityProviders)

-- | The ARN of the web portal.
listIdentityProviders_portalArn :: Lens.Lens' ListIdentityProviders Prelude.Text
listIdentityProviders_portalArn = Lens.lens (\ListIdentityProviders' {portalArn} -> portalArn) (\s@ListIdentityProviders' {} a -> s {portalArn = a} :: ListIdentityProviders)

instance Core.AWSRequest ListIdentityProviders where
  type
    AWSResponse ListIdentityProviders =
      ListIdentityProvidersResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListIdentityProvidersResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "identityProviders"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListIdentityProviders where
  hashWithSalt _salt ListIdentityProviders' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` portalArn

instance Prelude.NFData ListIdentityProviders where
  rnf ListIdentityProviders' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf portalArn

instance Core.ToHeaders ListIdentityProviders where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListIdentityProviders where
  toPath ListIdentityProviders' {..} =
    Prelude.mconcat
      [ "/portals/",
        Core.toBS portalArn,
        "/identityProviders"
      ]

instance Core.ToQuery ListIdentityProviders where
  toQuery ListIdentityProviders' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListIdentityProvidersResponse' smart constructor.
data ListIdentityProvidersResponse = ListIdentityProvidersResponse'
  { -- | The pagination token used to retrieve the next page of results for this
    -- operation.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identity providers.
    identityProviders :: Prelude.Maybe [IdentityProviderSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIdentityProvidersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIdentityProvidersResponse_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation.
--
-- 'identityProviders', 'listIdentityProvidersResponse_identityProviders' - The identity providers.
--
-- 'httpStatus', 'listIdentityProvidersResponse_httpStatus' - The response's http status code.
newListIdentityProvidersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListIdentityProvidersResponse
newListIdentityProvidersResponse pHttpStatus_ =
  ListIdentityProvidersResponse'
    { nextToken =
        Prelude.Nothing,
      identityProviders = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token used to retrieve the next page of results for this
-- operation.
listIdentityProvidersResponse_nextToken :: Lens.Lens' ListIdentityProvidersResponse (Prelude.Maybe Prelude.Text)
listIdentityProvidersResponse_nextToken = Lens.lens (\ListIdentityProvidersResponse' {nextToken} -> nextToken) (\s@ListIdentityProvidersResponse' {} a -> s {nextToken = a} :: ListIdentityProvidersResponse)

-- | The identity providers.
listIdentityProvidersResponse_identityProviders :: Lens.Lens' ListIdentityProvidersResponse (Prelude.Maybe [IdentityProviderSummary])
listIdentityProvidersResponse_identityProviders = Lens.lens (\ListIdentityProvidersResponse' {identityProviders} -> identityProviders) (\s@ListIdentityProvidersResponse' {} a -> s {identityProviders = a} :: ListIdentityProvidersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listIdentityProvidersResponse_httpStatus :: Lens.Lens' ListIdentityProvidersResponse Prelude.Int
listIdentityProvidersResponse_httpStatus = Lens.lens (\ListIdentityProvidersResponse' {httpStatus} -> httpStatus) (\s@ListIdentityProvidersResponse' {} a -> s {httpStatus = a} :: ListIdentityProvidersResponse)

instance Prelude.NFData ListIdentityProvidersResponse where
  rnf ListIdentityProvidersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf identityProviders
      `Prelude.seq` Prelude.rnf httpStatus

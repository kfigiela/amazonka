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
-- Module      : Amazonka.ApplicationInsights.ListComponents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the auto-grouped, standalone, and custom components of the
-- application.
module Amazonka.ApplicationInsights.ListComponents
  ( -- * Creating a Request
    ListComponents (..),
    newListComponents,

    -- * Request Lenses
    listComponents_nextToken,
    listComponents_maxResults,
    listComponents_resourceGroupName,

    -- * Destructuring the Response
    ListComponentsResponse (..),
    newListComponentsResponse,

    -- * Response Lenses
    listComponentsResponse_nextToken,
    listComponentsResponse_applicationComponentList,
    listComponentsResponse_httpStatus,
  )
where

import Amazonka.ApplicationInsights.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListComponents' smart constructor.
data ListComponents = ListComponents'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call. To retrieve
    -- the remaining results, make another call with the returned @NextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the resource group.
    resourceGroupName :: Prelude.Text
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
-- 'maxResults', 'listComponents_maxResults' - The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value.
--
-- 'resourceGroupName', 'listComponents_resourceGroupName' - The name of the resource group.
newListComponents ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  ListComponents
newListComponents pResourceGroupName_ =
  ListComponents'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceGroupName = pResourceGroupName_
    }

-- | The token to request the next page of results.
listComponents_nextToken :: Lens.Lens' ListComponents (Prelude.Maybe Prelude.Text)
listComponents_nextToken = Lens.lens (\ListComponents' {nextToken} -> nextToken) (\s@ListComponents' {} a -> s {nextToken = a} :: ListComponents)

-- | The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value.
listComponents_maxResults :: Lens.Lens' ListComponents (Prelude.Maybe Prelude.Natural)
listComponents_maxResults = Lens.lens (\ListComponents' {maxResults} -> maxResults) (\s@ListComponents' {} a -> s {maxResults = a} :: ListComponents)

-- | The name of the resource group.
listComponents_resourceGroupName :: Lens.Lens' ListComponents Prelude.Text
listComponents_resourceGroupName = Lens.lens (\ListComponents' {resourceGroupName} -> resourceGroupName) (\s@ListComponents' {} a -> s {resourceGroupName = a} :: ListComponents)

instance Core.AWSRequest ListComponents where
  type
    AWSResponse ListComponents =
      ListComponentsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListComponentsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ApplicationComponentList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListComponents where
  hashWithSalt _salt ListComponents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceGroupName

instance Prelude.NFData ListComponents where
  rnf ListComponents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceGroupName

instance Core.ToHeaders ListComponents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.ListComponents" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListComponents where
  toJSON ListComponents' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName)
          ]
      )

instance Core.ToPath ListComponents where
  toPath = Prelude.const "/"

instance Core.ToQuery ListComponents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListComponentsResponse' smart constructor.
data ListComponentsResponse = ListComponentsResponse'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of application components.
    applicationComponentList :: Prelude.Maybe [ApplicationComponent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
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
-- 'nextToken', 'listComponentsResponse_nextToken' - The token to request the next page of results.
--
-- 'applicationComponentList', 'listComponentsResponse_applicationComponentList' - The list of application components.
--
-- 'httpStatus', 'listComponentsResponse_httpStatus' - The response's http status code.
newListComponentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListComponentsResponse
newListComponentsResponse pHttpStatus_ =
  ListComponentsResponse'
    { nextToken =
        Prelude.Nothing,
      applicationComponentList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to request the next page of results.
listComponentsResponse_nextToken :: Lens.Lens' ListComponentsResponse (Prelude.Maybe Prelude.Text)
listComponentsResponse_nextToken = Lens.lens (\ListComponentsResponse' {nextToken} -> nextToken) (\s@ListComponentsResponse' {} a -> s {nextToken = a} :: ListComponentsResponse)

-- | The list of application components.
listComponentsResponse_applicationComponentList :: Lens.Lens' ListComponentsResponse (Prelude.Maybe [ApplicationComponent])
listComponentsResponse_applicationComponentList = Lens.lens (\ListComponentsResponse' {applicationComponentList} -> applicationComponentList) (\s@ListComponentsResponse' {} a -> s {applicationComponentList = a} :: ListComponentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listComponentsResponse_httpStatus :: Lens.Lens' ListComponentsResponse Prelude.Int
listComponentsResponse_httpStatus = Lens.lens (\ListComponentsResponse' {httpStatus} -> httpStatus) (\s@ListComponentsResponse' {} a -> s {httpStatus = a} :: ListComponentsResponse)

instance Prelude.NFData ListComponentsResponse where
  rnf ListComponentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf applicationComponentList
      `Prelude.seq` Prelude.rnf httpStatus

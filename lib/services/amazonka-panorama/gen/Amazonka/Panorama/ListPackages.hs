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
-- Module      : Amazonka.Panorama.ListPackages
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of packages.
module Amazonka.Panorama.ListPackages
  ( -- * Creating a Request
    ListPackages (..),
    newListPackages,

    -- * Request Lenses
    listPackages_nextToken,
    listPackages_maxResults,

    -- * Destructuring the Response
    ListPackagesResponse (..),
    newListPackagesResponse,

    -- * Response Lenses
    listPackagesResponse_nextToken,
    listPackagesResponse_packages,
    listPackagesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPackages' smart constructor.
data ListPackages = ListPackages'
  { -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of packages to return in one page of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPackages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPackages_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'maxResults', 'listPackages_maxResults' - The maximum number of packages to return in one page of results.
newListPackages ::
  ListPackages
newListPackages =
  ListPackages'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
listPackages_nextToken :: Lens.Lens' ListPackages (Prelude.Maybe Prelude.Text)
listPackages_nextToken = Lens.lens (\ListPackages' {nextToken} -> nextToken) (\s@ListPackages' {} a -> s {nextToken = a} :: ListPackages)

-- | The maximum number of packages to return in one page of results.
listPackages_maxResults :: Lens.Lens' ListPackages (Prelude.Maybe Prelude.Natural)
listPackages_maxResults = Lens.lens (\ListPackages' {maxResults} -> maxResults) (\s@ListPackages' {} a -> s {maxResults = a} :: ListPackages)

instance Core.AWSRequest ListPackages where
  type AWSResponse ListPackages = ListPackagesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPackagesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Packages" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPackages where
  hashWithSalt _salt ListPackages' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListPackages where
  rnf ListPackages' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListPackages where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListPackages where
  toPath = Prelude.const "/packages"

instance Core.ToQuery ListPackages where
  toQuery ListPackages' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListPackagesResponse' smart constructor.
data ListPackagesResponse = ListPackagesResponse'
  { -- | A pagination token that\'s included if more results are available.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of packages.
    packages :: Prelude.Maybe [PackageListItem],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPackagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPackagesResponse_nextToken' - A pagination token that\'s included if more results are available.
--
-- 'packages', 'listPackagesResponse_packages' - A list of packages.
--
-- 'httpStatus', 'listPackagesResponse_httpStatus' - The response's http status code.
newListPackagesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPackagesResponse
newListPackagesResponse pHttpStatus_ =
  ListPackagesResponse'
    { nextToken = Prelude.Nothing,
      packages = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A pagination token that\'s included if more results are available.
listPackagesResponse_nextToken :: Lens.Lens' ListPackagesResponse (Prelude.Maybe Prelude.Text)
listPackagesResponse_nextToken = Lens.lens (\ListPackagesResponse' {nextToken} -> nextToken) (\s@ListPackagesResponse' {} a -> s {nextToken = a} :: ListPackagesResponse)

-- | A list of packages.
listPackagesResponse_packages :: Lens.Lens' ListPackagesResponse (Prelude.Maybe [PackageListItem])
listPackagesResponse_packages = Lens.lens (\ListPackagesResponse' {packages} -> packages) (\s@ListPackagesResponse' {} a -> s {packages = a} :: ListPackagesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPackagesResponse_httpStatus :: Lens.Lens' ListPackagesResponse Prelude.Int
listPackagesResponse_httpStatus = Lens.lens (\ListPackagesResponse' {httpStatus} -> httpStatus) (\s@ListPackagesResponse' {} a -> s {httpStatus = a} :: ListPackagesResponse)

instance Prelude.NFData ListPackagesResponse where
  rnf ListPackagesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf packages
      `Prelude.seq` Prelude.rnf httpStatus

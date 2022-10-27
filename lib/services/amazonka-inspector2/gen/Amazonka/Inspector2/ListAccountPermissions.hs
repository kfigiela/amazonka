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
-- Module      : Amazonka.Inspector2.ListAccountPermissions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the permissions an account has to configure Amazon Inspector.
--
-- This operation returns paginated results.
module Amazonka.Inspector2.ListAccountPermissions
  ( -- * Creating a Request
    ListAccountPermissions (..),
    newListAccountPermissions,

    -- * Request Lenses
    listAccountPermissions_nextToken,
    listAccountPermissions_service,
    listAccountPermissions_maxResults,

    -- * Destructuring the Response
    ListAccountPermissionsResponse (..),
    newListAccountPermissionsResponse,

    -- * Response Lenses
    listAccountPermissionsResponse_nextToken,
    listAccountPermissionsResponse_httpStatus,
    listAccountPermissionsResponse_permissions,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAccountPermissions' smart constructor.
data ListAccountPermissions = ListAccountPermissions'
  { -- | A token to use for paginating results that are returned in the response.
    -- Set the value of this parameter to null for the first request to a list
    -- action. For subsequent calls, use the @NextToken@ value returned from
    -- the previous request to continue listing results after the first page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The service scan type to check permissions for.
    service :: Prelude.Maybe Service,
    -- | The maximum number of results to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccountPermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAccountPermissions_nextToken' - A token to use for paginating results that are returned in the response.
-- Set the value of this parameter to null for the first request to a list
-- action. For subsequent calls, use the @NextToken@ value returned from
-- the previous request to continue listing results after the first page.
--
-- 'service', 'listAccountPermissions_service' - The service scan type to check permissions for.
--
-- 'maxResults', 'listAccountPermissions_maxResults' - The maximum number of results to return in the response.
newListAccountPermissions ::
  ListAccountPermissions
newListAccountPermissions =
  ListAccountPermissions'
    { nextToken =
        Prelude.Nothing,
      service = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token to use for paginating results that are returned in the response.
-- Set the value of this parameter to null for the first request to a list
-- action. For subsequent calls, use the @NextToken@ value returned from
-- the previous request to continue listing results after the first page.
listAccountPermissions_nextToken :: Lens.Lens' ListAccountPermissions (Prelude.Maybe Prelude.Text)
listAccountPermissions_nextToken = Lens.lens (\ListAccountPermissions' {nextToken} -> nextToken) (\s@ListAccountPermissions' {} a -> s {nextToken = a} :: ListAccountPermissions)

-- | The service scan type to check permissions for.
listAccountPermissions_service :: Lens.Lens' ListAccountPermissions (Prelude.Maybe Service)
listAccountPermissions_service = Lens.lens (\ListAccountPermissions' {service} -> service) (\s@ListAccountPermissions' {} a -> s {service = a} :: ListAccountPermissions)

-- | The maximum number of results to return in the response.
listAccountPermissions_maxResults :: Lens.Lens' ListAccountPermissions (Prelude.Maybe Prelude.Natural)
listAccountPermissions_maxResults = Lens.lens (\ListAccountPermissions' {maxResults} -> maxResults) (\s@ListAccountPermissions' {} a -> s {maxResults = a} :: ListAccountPermissions)

instance Core.AWSPager ListAccountPermissions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAccountPermissionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listAccountPermissionsResponse_permissions
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAccountPermissions_nextToken
          Lens..~ rs
          Lens.^? listAccountPermissionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAccountPermissions where
  type
    AWSResponse ListAccountPermissions =
      ListAccountPermissionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAccountPermissionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "permissions" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListAccountPermissions where
  hashWithSalt _salt ListAccountPermissions' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` service
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListAccountPermissions where
  rnf ListAccountPermissions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf service
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListAccountPermissions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAccountPermissions where
  toJSON ListAccountPermissions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("service" Core..=) Prelude.<$> service,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListAccountPermissions where
  toPath = Prelude.const "/accountpermissions/list"

instance Core.ToQuery ListAccountPermissions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAccountPermissionsResponse' smart constructor.
data ListAccountPermissionsResponse = ListAccountPermissionsResponse'
  { -- | A token to use for paginating results that are returned in the response.
    -- Set the value of this parameter to null for the first request to a list
    -- action. For subsequent calls, use the @NextToken@ value returned from
    -- the previous request to continue listing results after the first page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Contains details on the permissions an account has to configure Amazon
    -- Inspector.
    permissions :: [Permission]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccountPermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAccountPermissionsResponse_nextToken' - A token to use for paginating results that are returned in the response.
-- Set the value of this parameter to null for the first request to a list
-- action. For subsequent calls, use the @NextToken@ value returned from
-- the previous request to continue listing results after the first page.
--
-- 'httpStatus', 'listAccountPermissionsResponse_httpStatus' - The response's http status code.
--
-- 'permissions', 'listAccountPermissionsResponse_permissions' - Contains details on the permissions an account has to configure Amazon
-- Inspector.
newListAccountPermissionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAccountPermissionsResponse
newListAccountPermissionsResponse pHttpStatus_ =
  ListAccountPermissionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      permissions = Prelude.mempty
    }

-- | A token to use for paginating results that are returned in the response.
-- Set the value of this parameter to null for the first request to a list
-- action. For subsequent calls, use the @NextToken@ value returned from
-- the previous request to continue listing results after the first page.
listAccountPermissionsResponse_nextToken :: Lens.Lens' ListAccountPermissionsResponse (Prelude.Maybe Prelude.Text)
listAccountPermissionsResponse_nextToken = Lens.lens (\ListAccountPermissionsResponse' {nextToken} -> nextToken) (\s@ListAccountPermissionsResponse' {} a -> s {nextToken = a} :: ListAccountPermissionsResponse)

-- | The response's http status code.
listAccountPermissionsResponse_httpStatus :: Lens.Lens' ListAccountPermissionsResponse Prelude.Int
listAccountPermissionsResponse_httpStatus = Lens.lens (\ListAccountPermissionsResponse' {httpStatus} -> httpStatus) (\s@ListAccountPermissionsResponse' {} a -> s {httpStatus = a} :: ListAccountPermissionsResponse)

-- | Contains details on the permissions an account has to configure Amazon
-- Inspector.
listAccountPermissionsResponse_permissions :: Lens.Lens' ListAccountPermissionsResponse [Permission]
listAccountPermissionsResponse_permissions = Lens.lens (\ListAccountPermissionsResponse' {permissions} -> permissions) (\s@ListAccountPermissionsResponse' {} a -> s {permissions = a} :: ListAccountPermissionsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListAccountPermissionsResponse
  where
  rnf ListAccountPermissionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf permissions

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
-- Module      : Amazonka.WorkMail.ListImpersonationRoles
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the impersonation roles for the given WorkMail organization.
module Amazonka.WorkMail.ListImpersonationRoles
  ( -- * Creating a Request
    ListImpersonationRoles (..),
    newListImpersonationRoles,

    -- * Request Lenses
    listImpersonationRoles_nextToken,
    listImpersonationRoles_maxResults,
    listImpersonationRoles_organizationId,

    -- * Destructuring the Response
    ListImpersonationRolesResponse (..),
    newListImpersonationRolesResponse,

    -- * Response Lenses
    listImpersonationRolesResponse_nextToken,
    listImpersonationRolesResponse_roles,
    listImpersonationRolesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkMail.Types

-- | /See:/ 'newListImpersonationRoles' smart constructor.
data ListImpersonationRoles = ListImpersonationRoles'
  { -- | The token used to retrieve the next page of results. The first call
    -- doesn\'t require a token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The WorkMail organization to which the listed impersonation roles
    -- belong.
    organizationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListImpersonationRoles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listImpersonationRoles_nextToken' - The token used to retrieve the next page of results. The first call
-- doesn\'t require a token.
--
-- 'maxResults', 'listImpersonationRoles_maxResults' - The maximum number of results returned in a single call.
--
-- 'organizationId', 'listImpersonationRoles_organizationId' - The WorkMail organization to which the listed impersonation roles
-- belong.
newListImpersonationRoles ::
  -- | 'organizationId'
  Prelude.Text ->
  ListImpersonationRoles
newListImpersonationRoles pOrganizationId_ =
  ListImpersonationRoles'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      organizationId = pOrganizationId_
    }

-- | The token used to retrieve the next page of results. The first call
-- doesn\'t require a token.
listImpersonationRoles_nextToken :: Lens.Lens' ListImpersonationRoles (Prelude.Maybe Prelude.Text)
listImpersonationRoles_nextToken = Lens.lens (\ListImpersonationRoles' {nextToken} -> nextToken) (\s@ListImpersonationRoles' {} a -> s {nextToken = a} :: ListImpersonationRoles)

-- | The maximum number of results returned in a single call.
listImpersonationRoles_maxResults :: Lens.Lens' ListImpersonationRoles (Prelude.Maybe Prelude.Natural)
listImpersonationRoles_maxResults = Lens.lens (\ListImpersonationRoles' {maxResults} -> maxResults) (\s@ListImpersonationRoles' {} a -> s {maxResults = a} :: ListImpersonationRoles)

-- | The WorkMail organization to which the listed impersonation roles
-- belong.
listImpersonationRoles_organizationId :: Lens.Lens' ListImpersonationRoles Prelude.Text
listImpersonationRoles_organizationId = Lens.lens (\ListImpersonationRoles' {organizationId} -> organizationId) (\s@ListImpersonationRoles' {} a -> s {organizationId = a} :: ListImpersonationRoles)

instance Core.AWSRequest ListImpersonationRoles where
  type
    AWSResponse ListImpersonationRoles =
      ListImpersonationRolesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListImpersonationRolesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Roles" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListImpersonationRoles where
  hashWithSalt _salt ListImpersonationRoles' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` organizationId

instance Prelude.NFData ListImpersonationRoles where
  rnf ListImpersonationRoles' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf organizationId

instance Core.ToHeaders ListImpersonationRoles where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.ListImpersonationRoles" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListImpersonationRoles where
  toJSON ListImpersonationRoles' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("OrganizationId" Core..= organizationId)
          ]
      )

instance Core.ToPath ListImpersonationRoles where
  toPath = Prelude.const "/"

instance Core.ToQuery ListImpersonationRoles where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListImpersonationRolesResponse' smart constructor.
data ListImpersonationRolesResponse = ListImpersonationRolesResponse'
  { -- | The token to retrieve the next page of results. The value is @null@ when
    -- there are no results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of impersonation roles under the given WorkMail organization.
    roles :: Prelude.Maybe [ImpersonationRole],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListImpersonationRolesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listImpersonationRolesResponse_nextToken' - The token to retrieve the next page of results. The value is @null@ when
-- there are no results to return.
--
-- 'roles', 'listImpersonationRolesResponse_roles' - The list of impersonation roles under the given WorkMail organization.
--
-- 'httpStatus', 'listImpersonationRolesResponse_httpStatus' - The response's http status code.
newListImpersonationRolesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListImpersonationRolesResponse
newListImpersonationRolesResponse pHttpStatus_ =
  ListImpersonationRolesResponse'
    { nextToken =
        Prelude.Nothing,
      roles = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to retrieve the next page of results. The value is @null@ when
-- there are no results to return.
listImpersonationRolesResponse_nextToken :: Lens.Lens' ListImpersonationRolesResponse (Prelude.Maybe Prelude.Text)
listImpersonationRolesResponse_nextToken = Lens.lens (\ListImpersonationRolesResponse' {nextToken} -> nextToken) (\s@ListImpersonationRolesResponse' {} a -> s {nextToken = a} :: ListImpersonationRolesResponse)

-- | The list of impersonation roles under the given WorkMail organization.
listImpersonationRolesResponse_roles :: Lens.Lens' ListImpersonationRolesResponse (Prelude.Maybe [ImpersonationRole])
listImpersonationRolesResponse_roles = Lens.lens (\ListImpersonationRolesResponse' {roles} -> roles) (\s@ListImpersonationRolesResponse' {} a -> s {roles = a} :: ListImpersonationRolesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listImpersonationRolesResponse_httpStatus :: Lens.Lens' ListImpersonationRolesResponse Prelude.Int
listImpersonationRolesResponse_httpStatus = Lens.lens (\ListImpersonationRolesResponse' {httpStatus} -> httpStatus) (\s@ListImpersonationRolesResponse' {} a -> s {httpStatus = a} :: ListImpersonationRolesResponse)

instance
  Prelude.NFData
    ListImpersonationRolesResponse
  where
  rnf ListImpersonationRolesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf roles
      `Prelude.seq` Prelude.rnf httpStatus

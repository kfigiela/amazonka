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
-- Module      : Amazonka.WorkMail.ListResourceDelegates
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the delegates associated with a resource. Users and groups can be
-- resource delegates and answer requests on behalf of the resource.
--
-- This operation returns paginated results.
module Amazonka.WorkMail.ListResourceDelegates
  ( -- * Creating a Request
    ListResourceDelegates (..),
    newListResourceDelegates,

    -- * Request Lenses
    listResourceDelegates_nextToken,
    listResourceDelegates_maxResults,
    listResourceDelegates_organizationId,
    listResourceDelegates_resourceId,

    -- * Destructuring the Response
    ListResourceDelegatesResponse (..),
    newListResourceDelegatesResponse,

    -- * Response Lenses
    listResourceDelegatesResponse_nextToken,
    listResourceDelegatesResponse_delegates,
    listResourceDelegatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkMail.Types

-- | /See:/ 'newListResourceDelegates' smart constructor.
data ListResourceDelegates = ListResourceDelegates'
  { -- | The token used to paginate through the delegates associated with a
    -- resource.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of maximum results in a page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the organization that contains the resource for which
    -- delegates are listed.
    organizationId :: Prelude.Text,
    -- | The identifier for the resource whose delegates are listed.
    resourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResourceDelegates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourceDelegates_nextToken' - The token used to paginate through the delegates associated with a
-- resource.
--
-- 'maxResults', 'listResourceDelegates_maxResults' - The number of maximum results in a page.
--
-- 'organizationId', 'listResourceDelegates_organizationId' - The identifier for the organization that contains the resource for which
-- delegates are listed.
--
-- 'resourceId', 'listResourceDelegates_resourceId' - The identifier for the resource whose delegates are listed.
newListResourceDelegates ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'resourceId'
  Prelude.Text ->
  ListResourceDelegates
newListResourceDelegates
  pOrganizationId_
  pResourceId_ =
    ListResourceDelegates'
      { nextToken = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        organizationId = pOrganizationId_,
        resourceId = pResourceId_
      }

-- | The token used to paginate through the delegates associated with a
-- resource.
listResourceDelegates_nextToken :: Lens.Lens' ListResourceDelegates (Prelude.Maybe Prelude.Text)
listResourceDelegates_nextToken = Lens.lens (\ListResourceDelegates' {nextToken} -> nextToken) (\s@ListResourceDelegates' {} a -> s {nextToken = a} :: ListResourceDelegates)

-- | The number of maximum results in a page.
listResourceDelegates_maxResults :: Lens.Lens' ListResourceDelegates (Prelude.Maybe Prelude.Natural)
listResourceDelegates_maxResults = Lens.lens (\ListResourceDelegates' {maxResults} -> maxResults) (\s@ListResourceDelegates' {} a -> s {maxResults = a} :: ListResourceDelegates)

-- | The identifier for the organization that contains the resource for which
-- delegates are listed.
listResourceDelegates_organizationId :: Lens.Lens' ListResourceDelegates Prelude.Text
listResourceDelegates_organizationId = Lens.lens (\ListResourceDelegates' {organizationId} -> organizationId) (\s@ListResourceDelegates' {} a -> s {organizationId = a} :: ListResourceDelegates)

-- | The identifier for the resource whose delegates are listed.
listResourceDelegates_resourceId :: Lens.Lens' ListResourceDelegates Prelude.Text
listResourceDelegates_resourceId = Lens.lens (\ListResourceDelegates' {resourceId} -> resourceId) (\s@ListResourceDelegates' {} a -> s {resourceId = a} :: ListResourceDelegates)

instance Core.AWSPager ListResourceDelegates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listResourceDelegatesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listResourceDelegatesResponse_delegates
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listResourceDelegates_nextToken
          Lens..~ rs
          Lens.^? listResourceDelegatesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListResourceDelegates where
  type
    AWSResponse ListResourceDelegates =
      ListResourceDelegatesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListResourceDelegatesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Delegates" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListResourceDelegates where
  hashWithSalt _salt ListResourceDelegates' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` organizationId
      `Prelude.hashWithSalt` resourceId

instance Prelude.NFData ListResourceDelegates where
  rnf ListResourceDelegates' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf organizationId
      `Prelude.seq` Prelude.rnf resourceId

instance Core.ToHeaders ListResourceDelegates where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.ListResourceDelegates" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListResourceDelegates where
  toJSON ListResourceDelegates' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("OrganizationId" Core..= organizationId),
            Prelude.Just ("ResourceId" Core..= resourceId)
          ]
      )

instance Core.ToPath ListResourceDelegates where
  toPath = Prelude.const "/"

instance Core.ToQuery ListResourceDelegates where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListResourceDelegatesResponse' smart constructor.
data ListResourceDelegatesResponse = ListResourceDelegatesResponse'
  { -- | The token used to paginate through the delegates associated with a
    -- resource. While results are still available, it has an associated value.
    -- When the last page is reached, the token is empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One page of the resource\'s delegates.
    delegates :: Prelude.Maybe [Delegate],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResourceDelegatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourceDelegatesResponse_nextToken' - The token used to paginate through the delegates associated with a
-- resource. While results are still available, it has an associated value.
-- When the last page is reached, the token is empty.
--
-- 'delegates', 'listResourceDelegatesResponse_delegates' - One page of the resource\'s delegates.
--
-- 'httpStatus', 'listResourceDelegatesResponse_httpStatus' - The response's http status code.
newListResourceDelegatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListResourceDelegatesResponse
newListResourceDelegatesResponse pHttpStatus_ =
  ListResourceDelegatesResponse'
    { nextToken =
        Prelude.Nothing,
      delegates = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token used to paginate through the delegates associated with a
-- resource. While results are still available, it has an associated value.
-- When the last page is reached, the token is empty.
listResourceDelegatesResponse_nextToken :: Lens.Lens' ListResourceDelegatesResponse (Prelude.Maybe Prelude.Text)
listResourceDelegatesResponse_nextToken = Lens.lens (\ListResourceDelegatesResponse' {nextToken} -> nextToken) (\s@ListResourceDelegatesResponse' {} a -> s {nextToken = a} :: ListResourceDelegatesResponse)

-- | One page of the resource\'s delegates.
listResourceDelegatesResponse_delegates :: Lens.Lens' ListResourceDelegatesResponse (Prelude.Maybe [Delegate])
listResourceDelegatesResponse_delegates = Lens.lens (\ListResourceDelegatesResponse' {delegates} -> delegates) (\s@ListResourceDelegatesResponse' {} a -> s {delegates = a} :: ListResourceDelegatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listResourceDelegatesResponse_httpStatus :: Lens.Lens' ListResourceDelegatesResponse Prelude.Int
listResourceDelegatesResponse_httpStatus = Lens.lens (\ListResourceDelegatesResponse' {httpStatus} -> httpStatus) (\s@ListResourceDelegatesResponse' {} a -> s {httpStatus = a} :: ListResourceDelegatesResponse)

instance Prelude.NFData ListResourceDelegatesResponse where
  rnf ListResourceDelegatesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf delegates
      `Prelude.seq` Prelude.rnf httpStatus

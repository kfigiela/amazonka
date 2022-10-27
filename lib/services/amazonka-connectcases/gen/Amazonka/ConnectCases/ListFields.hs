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
-- Module      : Amazonka.ConnectCases.ListFields
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all fields in a Cases domain.
module Amazonka.ConnectCases.ListFields
  ( -- * Creating a Request
    ListFields (..),
    newListFields,

    -- * Request Lenses
    listFields_nextToken,
    listFields_maxResults,
    listFields_domainId,

    -- * Destructuring the Response
    ListFieldsResponse (..),
    newListFieldsResponse,

    -- * Response Lenses
    listFieldsResponse_nextToken,
    listFieldsResponse_httpStatus,
    listFieldsResponse_fields,
  )
where

import Amazonka.ConnectCases.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListFields' smart constructor.
data ListFields = ListFields'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier of the Cases domain.
    domainId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFields' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFields_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'listFields_maxResults' - The maximum number of results to return per page.
--
-- 'domainId', 'listFields_domainId' - The unique identifier of the Cases domain.
newListFields ::
  -- | 'domainId'
  Prelude.Text ->
  ListFields
newListFields pDomainId_ =
  ListFields'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainId = pDomainId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listFields_nextToken :: Lens.Lens' ListFields (Prelude.Maybe Prelude.Text)
listFields_nextToken = Lens.lens (\ListFields' {nextToken} -> nextToken) (\s@ListFields' {} a -> s {nextToken = a} :: ListFields)

-- | The maximum number of results to return per page.
listFields_maxResults :: Lens.Lens' ListFields (Prelude.Maybe Prelude.Natural)
listFields_maxResults = Lens.lens (\ListFields' {maxResults} -> maxResults) (\s@ListFields' {} a -> s {maxResults = a} :: ListFields)

-- | The unique identifier of the Cases domain.
listFields_domainId :: Lens.Lens' ListFields Prelude.Text
listFields_domainId = Lens.lens (\ListFields' {domainId} -> domainId) (\s@ListFields' {} a -> s {domainId = a} :: ListFields)

instance Core.AWSRequest ListFields where
  type AWSResponse ListFields = ListFieldsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFieldsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "fields" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListFields where
  hashWithSalt _salt ListFields' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` domainId

instance Prelude.NFData ListFields where
  rnf ListFields' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf domainId

instance Core.ToHeaders ListFields where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListFields where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath ListFields where
  toPath ListFields' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainId, "/fields-list"]

instance Core.ToQuery ListFields where
  toQuery ListFields' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListFieldsResponse' smart constructor.
data ListFieldsResponse = ListFieldsResponse'
  { -- | The token for the next set of results. This is null if there are no more
    -- results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of detailed field information.
    fields :: [FieldSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFieldsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFieldsResponse_nextToken' - The token for the next set of results. This is null if there are no more
-- results to return.
--
-- 'httpStatus', 'listFieldsResponse_httpStatus' - The response's http status code.
--
-- 'fields', 'listFieldsResponse_fields' - List of detailed field information.
newListFieldsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFieldsResponse
newListFieldsResponse pHttpStatus_ =
  ListFieldsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      fields = Prelude.mempty
    }

-- | The token for the next set of results. This is null if there are no more
-- results to return.
listFieldsResponse_nextToken :: Lens.Lens' ListFieldsResponse (Prelude.Maybe Prelude.Text)
listFieldsResponse_nextToken = Lens.lens (\ListFieldsResponse' {nextToken} -> nextToken) (\s@ListFieldsResponse' {} a -> s {nextToken = a} :: ListFieldsResponse)

-- | The response's http status code.
listFieldsResponse_httpStatus :: Lens.Lens' ListFieldsResponse Prelude.Int
listFieldsResponse_httpStatus = Lens.lens (\ListFieldsResponse' {httpStatus} -> httpStatus) (\s@ListFieldsResponse' {} a -> s {httpStatus = a} :: ListFieldsResponse)

-- | List of detailed field information.
listFieldsResponse_fields :: Lens.Lens' ListFieldsResponse [FieldSummary]
listFieldsResponse_fields = Lens.lens (\ListFieldsResponse' {fields} -> fields) (\s@ListFieldsResponse' {} a -> s {fields = a} :: ListFieldsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListFieldsResponse where
  rnf ListFieldsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf fields

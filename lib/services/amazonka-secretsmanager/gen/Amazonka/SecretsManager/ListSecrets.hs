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
-- Module      : Amazonka.SecretsManager.ListSecrets
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the secrets that are stored by Secrets Manager in the Amazon Web
-- Services account, not including secrets that are marked for deletion. To
-- see secrets marked for deletion, use the Secrets Manager console.
--
-- ListSecrets is eventually consistent, however it might not reflect
-- changes from the last five minutes. To get the latest information for a
-- specific secret, use DescribeSecret.
--
-- To list the versions of a secret, use ListSecretVersionIds.
--
-- To get the secret value from @SecretString@ or @SecretBinary@, call
-- GetSecretValue.
--
-- For information about finding secrets in the console, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html Find secrets in Secrets Manager>.
--
-- Secrets Manager generates a CloudTrail log entry when you call this
-- action. Do not include sensitive information in request parameters
-- because it might be logged. For more information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html Logging Secrets Manager events with CloudTrail>.
--
-- __Required permissions:__ @secretsmanager:ListSecrets@. For more
-- information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions IAM policy actions for Secrets Manager>
-- and
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html Authentication and access control in Secrets Manager>.
--
-- This operation returns paginated results.
module Amazonka.SecretsManager.ListSecrets
  ( -- * Creating a Request
    ListSecrets (..),
    newListSecrets,

    -- * Request Lenses
    listSecrets_sortOrder,
    listSecrets_nextToken,
    listSecrets_filters,
    listSecrets_maxResults,

    -- * Destructuring the Response
    ListSecretsResponse (..),
    newListSecretsResponse,

    -- * Response Lenses
    listSecretsResponse_nextToken,
    listSecretsResponse_secretList,
    listSecretsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecretsManager.Types

-- | /See:/ 'newListSecrets' smart constructor.
data ListSecrets = ListSecrets'
  { -- | Lists secrets in the requested order.
    sortOrder :: Prelude.Maybe SortOrderType,
    -- | A token that indicates where the output should continue from, if a
    -- previous call did not show all results. To get the next results, call
    -- @ListSecrets@ again with this value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters to apply to the list of secrets.
    filters :: Prelude.Maybe [Filter],
    -- | The number of results to include in the response.
    --
    -- If there are more results available, in the response, Secrets Manager
    -- includes @NextToken@. To get the next results, call @ListSecrets@ again
    -- with the value from @NextToken@.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSecrets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listSecrets_sortOrder' - Lists secrets in the requested order.
--
-- 'nextToken', 'listSecrets_nextToken' - A token that indicates where the output should continue from, if a
-- previous call did not show all results. To get the next results, call
-- @ListSecrets@ again with this value.
--
-- 'filters', 'listSecrets_filters' - The filters to apply to the list of secrets.
--
-- 'maxResults', 'listSecrets_maxResults' - The number of results to include in the response.
--
-- If there are more results available, in the response, Secrets Manager
-- includes @NextToken@. To get the next results, call @ListSecrets@ again
-- with the value from @NextToken@.
newListSecrets ::
  ListSecrets
newListSecrets =
  ListSecrets'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Lists secrets in the requested order.
listSecrets_sortOrder :: Lens.Lens' ListSecrets (Prelude.Maybe SortOrderType)
listSecrets_sortOrder = Lens.lens (\ListSecrets' {sortOrder} -> sortOrder) (\s@ListSecrets' {} a -> s {sortOrder = a} :: ListSecrets)

-- | A token that indicates where the output should continue from, if a
-- previous call did not show all results. To get the next results, call
-- @ListSecrets@ again with this value.
listSecrets_nextToken :: Lens.Lens' ListSecrets (Prelude.Maybe Prelude.Text)
listSecrets_nextToken = Lens.lens (\ListSecrets' {nextToken} -> nextToken) (\s@ListSecrets' {} a -> s {nextToken = a} :: ListSecrets)

-- | The filters to apply to the list of secrets.
listSecrets_filters :: Lens.Lens' ListSecrets (Prelude.Maybe [Filter])
listSecrets_filters = Lens.lens (\ListSecrets' {filters} -> filters) (\s@ListSecrets' {} a -> s {filters = a} :: ListSecrets) Prelude.. Lens.mapping Lens.coerced

-- | The number of results to include in the response.
--
-- If there are more results available, in the response, Secrets Manager
-- includes @NextToken@. To get the next results, call @ListSecrets@ again
-- with the value from @NextToken@.
listSecrets_maxResults :: Lens.Lens' ListSecrets (Prelude.Maybe Prelude.Natural)
listSecrets_maxResults = Lens.lens (\ListSecrets' {maxResults} -> maxResults) (\s@ListSecrets' {} a -> s {maxResults = a} :: ListSecrets)

instance Core.AWSPager ListSecrets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSecretsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSecretsResponse_secretList Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSecrets_nextToken
          Lens..~ rs
          Lens.^? listSecretsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListSecrets where
  type AWSResponse ListSecrets = ListSecretsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSecretsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "SecretList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSecrets where
  hashWithSalt _salt ListSecrets' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListSecrets where
  rnf ListSecrets' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListSecrets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("secretsmanager.ListSecrets" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSecrets where
  toJSON ListSecrets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSecrets where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSecrets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSecretsResponse' smart constructor.
data ListSecretsResponse = ListSecretsResponse'
  { -- | Secrets Manager includes this value if there\'s more output available
    -- than what is included in the current response. This can occur even when
    -- the response includes no values at all, such as when you ask for a
    -- filtered view of a long list. To get the next results, call
    -- @ListSecrets@ again with this value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the secrets in the account.
    secretList :: Prelude.Maybe [SecretListEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSecretsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSecretsResponse_nextToken' - Secrets Manager includes this value if there\'s more output available
-- than what is included in the current response. This can occur even when
-- the response includes no values at all, such as when you ask for a
-- filtered view of a long list. To get the next results, call
-- @ListSecrets@ again with this value.
--
-- 'secretList', 'listSecretsResponse_secretList' - A list of the secrets in the account.
--
-- 'httpStatus', 'listSecretsResponse_httpStatus' - The response's http status code.
newListSecretsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSecretsResponse
newListSecretsResponse pHttpStatus_ =
  ListSecretsResponse'
    { nextToken = Prelude.Nothing,
      secretList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Secrets Manager includes this value if there\'s more output available
-- than what is included in the current response. This can occur even when
-- the response includes no values at all, such as when you ask for a
-- filtered view of a long list. To get the next results, call
-- @ListSecrets@ again with this value.
listSecretsResponse_nextToken :: Lens.Lens' ListSecretsResponse (Prelude.Maybe Prelude.Text)
listSecretsResponse_nextToken = Lens.lens (\ListSecretsResponse' {nextToken} -> nextToken) (\s@ListSecretsResponse' {} a -> s {nextToken = a} :: ListSecretsResponse)

-- | A list of the secrets in the account.
listSecretsResponse_secretList :: Lens.Lens' ListSecretsResponse (Prelude.Maybe [SecretListEntry])
listSecretsResponse_secretList = Lens.lens (\ListSecretsResponse' {secretList} -> secretList) (\s@ListSecretsResponse' {} a -> s {secretList = a} :: ListSecretsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSecretsResponse_httpStatus :: Lens.Lens' ListSecretsResponse Prelude.Int
listSecretsResponse_httpStatus = Lens.lens (\ListSecretsResponse' {httpStatus} -> httpStatus) (\s@ListSecretsResponse' {} a -> s {httpStatus = a} :: ListSecretsResponse)

instance Prelude.NFData ListSecretsResponse where
  rnf ListSecretsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf secretList
      `Prelude.seq` Prelude.rnf httpStatus

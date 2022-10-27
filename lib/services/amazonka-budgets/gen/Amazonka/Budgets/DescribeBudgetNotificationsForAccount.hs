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
-- Module      : Amazonka.Budgets.DescribeBudgetNotificationsForAccount
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the budget names and notifications that are associated with an
-- account.
--
-- This operation returns paginated results.
module Amazonka.Budgets.DescribeBudgetNotificationsForAccount
  ( -- * Creating a Request
    DescribeBudgetNotificationsForAccount (..),
    newDescribeBudgetNotificationsForAccount,

    -- * Request Lenses
    describeBudgetNotificationsForAccount_nextToken,
    describeBudgetNotificationsForAccount_maxResults,
    describeBudgetNotificationsForAccount_accountId,

    -- * Destructuring the Response
    DescribeBudgetNotificationsForAccountResponse (..),
    newDescribeBudgetNotificationsForAccountResponse,

    -- * Response Lenses
    describeBudgetNotificationsForAccountResponse_nextToken,
    describeBudgetNotificationsForAccountResponse_budgetNotificationsForAccount,
    describeBudgetNotificationsForAccountResponse_httpStatus,
  )
where

import Amazonka.Budgets.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeBudgetNotificationsForAccount' smart constructor.
data DescribeBudgetNotificationsForAccount = DescribeBudgetNotificationsForAccount'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | An integer that shows how many budget name entries a paginated response
    -- contains.
    maxResults :: Prelude.Maybe Prelude.Natural,
    accountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBudgetNotificationsForAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeBudgetNotificationsForAccount_nextToken' - Undocumented member.
--
-- 'maxResults', 'describeBudgetNotificationsForAccount_maxResults' - An integer that shows how many budget name entries a paginated response
-- contains.
--
-- 'accountId', 'describeBudgetNotificationsForAccount_accountId' - Undocumented member.
newDescribeBudgetNotificationsForAccount ::
  -- | 'accountId'
  Prelude.Text ->
  DescribeBudgetNotificationsForAccount
newDescribeBudgetNotificationsForAccount pAccountId_ =
  DescribeBudgetNotificationsForAccount'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      accountId = pAccountId_
    }

-- | Undocumented member.
describeBudgetNotificationsForAccount_nextToken :: Lens.Lens' DescribeBudgetNotificationsForAccount (Prelude.Maybe Prelude.Text)
describeBudgetNotificationsForAccount_nextToken = Lens.lens (\DescribeBudgetNotificationsForAccount' {nextToken} -> nextToken) (\s@DescribeBudgetNotificationsForAccount' {} a -> s {nextToken = a} :: DescribeBudgetNotificationsForAccount)

-- | An integer that shows how many budget name entries a paginated response
-- contains.
describeBudgetNotificationsForAccount_maxResults :: Lens.Lens' DescribeBudgetNotificationsForAccount (Prelude.Maybe Prelude.Natural)
describeBudgetNotificationsForAccount_maxResults = Lens.lens (\DescribeBudgetNotificationsForAccount' {maxResults} -> maxResults) (\s@DescribeBudgetNotificationsForAccount' {} a -> s {maxResults = a} :: DescribeBudgetNotificationsForAccount)

-- | Undocumented member.
describeBudgetNotificationsForAccount_accountId :: Lens.Lens' DescribeBudgetNotificationsForAccount Prelude.Text
describeBudgetNotificationsForAccount_accountId = Lens.lens (\DescribeBudgetNotificationsForAccount' {accountId} -> accountId) (\s@DescribeBudgetNotificationsForAccount' {} a -> s {accountId = a} :: DescribeBudgetNotificationsForAccount)

instance
  Core.AWSPager
    DescribeBudgetNotificationsForAccount
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeBudgetNotificationsForAccountResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeBudgetNotificationsForAccountResponse_budgetNotificationsForAccount
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeBudgetNotificationsForAccount_nextToken
          Lens..~ rs
            Lens.^? describeBudgetNotificationsForAccountResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeBudgetNotificationsForAccount
  where
  type
    AWSResponse
      DescribeBudgetNotificationsForAccount =
      DescribeBudgetNotificationsForAccountResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBudgetNotificationsForAccountResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "BudgetNotificationsForAccount"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeBudgetNotificationsForAccount
  where
  hashWithSalt
    _salt
    DescribeBudgetNotificationsForAccount' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` accountId

instance
  Prelude.NFData
    DescribeBudgetNotificationsForAccount
  where
  rnf DescribeBudgetNotificationsForAccount' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf accountId

instance
  Core.ToHeaders
    DescribeBudgetNotificationsForAccount
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSBudgetServiceGateway.DescribeBudgetNotificationsForAccount" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeBudgetNotificationsForAccount
  where
  toJSON DescribeBudgetNotificationsForAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("AccountId" Core..= accountId)
          ]
      )

instance
  Core.ToPath
    DescribeBudgetNotificationsForAccount
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeBudgetNotificationsForAccount
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeBudgetNotificationsForAccountResponse' smart constructor.
data DescribeBudgetNotificationsForAccountResponse = DescribeBudgetNotificationsForAccountResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of budget names and associated notifications for an account.
    budgetNotificationsForAccount :: Prelude.Maybe [BudgetNotificationsForAccount],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBudgetNotificationsForAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeBudgetNotificationsForAccountResponse_nextToken' - Undocumented member.
--
-- 'budgetNotificationsForAccount', 'describeBudgetNotificationsForAccountResponse_budgetNotificationsForAccount' - A list of budget names and associated notifications for an account.
--
-- 'httpStatus', 'describeBudgetNotificationsForAccountResponse_httpStatus' - The response's http status code.
newDescribeBudgetNotificationsForAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeBudgetNotificationsForAccountResponse
newDescribeBudgetNotificationsForAccountResponse
  pHttpStatus_ =
    DescribeBudgetNotificationsForAccountResponse'
      { nextToken =
          Prelude.Nothing,
        budgetNotificationsForAccount =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Undocumented member.
describeBudgetNotificationsForAccountResponse_nextToken :: Lens.Lens' DescribeBudgetNotificationsForAccountResponse (Prelude.Maybe Prelude.Text)
describeBudgetNotificationsForAccountResponse_nextToken = Lens.lens (\DescribeBudgetNotificationsForAccountResponse' {nextToken} -> nextToken) (\s@DescribeBudgetNotificationsForAccountResponse' {} a -> s {nextToken = a} :: DescribeBudgetNotificationsForAccountResponse)

-- | A list of budget names and associated notifications for an account.
describeBudgetNotificationsForAccountResponse_budgetNotificationsForAccount :: Lens.Lens' DescribeBudgetNotificationsForAccountResponse (Prelude.Maybe [BudgetNotificationsForAccount])
describeBudgetNotificationsForAccountResponse_budgetNotificationsForAccount = Lens.lens (\DescribeBudgetNotificationsForAccountResponse' {budgetNotificationsForAccount} -> budgetNotificationsForAccount) (\s@DescribeBudgetNotificationsForAccountResponse' {} a -> s {budgetNotificationsForAccount = a} :: DescribeBudgetNotificationsForAccountResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeBudgetNotificationsForAccountResponse_httpStatus :: Lens.Lens' DescribeBudgetNotificationsForAccountResponse Prelude.Int
describeBudgetNotificationsForAccountResponse_httpStatus = Lens.lens (\DescribeBudgetNotificationsForAccountResponse' {httpStatus} -> httpStatus) (\s@DescribeBudgetNotificationsForAccountResponse' {} a -> s {httpStatus = a} :: DescribeBudgetNotificationsForAccountResponse)

instance
  Prelude.NFData
    DescribeBudgetNotificationsForAccountResponse
  where
  rnf
    DescribeBudgetNotificationsForAccountResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf budgetNotificationsForAccount
        `Prelude.seq` Prelude.rnf httpStatus

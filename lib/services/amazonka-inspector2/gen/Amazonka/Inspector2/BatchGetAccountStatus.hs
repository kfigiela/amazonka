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
-- Module      : Amazonka.Inspector2.BatchGetAccountStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Amazon Inspector status of multiple Amazon Web Services
-- accounts within your environment.
module Amazonka.Inspector2.BatchGetAccountStatus
  ( -- * Creating a Request
    BatchGetAccountStatus (..),
    newBatchGetAccountStatus,

    -- * Request Lenses
    batchGetAccountStatus_accountIds,

    -- * Destructuring the Response
    BatchGetAccountStatusResponse (..),
    newBatchGetAccountStatusResponse,

    -- * Response Lenses
    batchGetAccountStatusResponse_failedAccounts,
    batchGetAccountStatusResponse_httpStatus,
    batchGetAccountStatusResponse_accounts,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchGetAccountStatus' smart constructor.
data BatchGetAccountStatus = BatchGetAccountStatus'
  { -- | The 12-digit Amazon Web Services account IDs of the accounts to retrieve
    -- Amazon Inspector status for.
    accountIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetAccountStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'batchGetAccountStatus_accountIds' - The 12-digit Amazon Web Services account IDs of the accounts to retrieve
-- Amazon Inspector status for.
newBatchGetAccountStatus ::
  BatchGetAccountStatus
newBatchGetAccountStatus =
  BatchGetAccountStatus'
    { accountIds =
        Prelude.Nothing
    }

-- | The 12-digit Amazon Web Services account IDs of the accounts to retrieve
-- Amazon Inspector status for.
batchGetAccountStatus_accountIds :: Lens.Lens' BatchGetAccountStatus (Prelude.Maybe [Prelude.Text])
batchGetAccountStatus_accountIds = Lens.lens (\BatchGetAccountStatus' {accountIds} -> accountIds) (\s@BatchGetAccountStatus' {} a -> s {accountIds = a} :: BatchGetAccountStatus) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest BatchGetAccountStatus where
  type
    AWSResponse BatchGetAccountStatus =
      BatchGetAccountStatusResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetAccountStatusResponse'
            Prelude.<$> (x Core..?> "failedAccounts" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "accounts" Core..!@ Prelude.mempty)
      )

instance Core.AWSService BatchGetAccountStatus where
  service _proxy = defaultService

instance Prelude.Hashable BatchGetAccountStatus where
  hashWithSalt _salt BatchGetAccountStatus' {..} =
    _salt `Prelude.hashWithSalt` accountIds

instance Prelude.NFData BatchGetAccountStatus where
  rnf BatchGetAccountStatus' {..} =
    Prelude.rnf accountIds

instance Core.ToHeaders BatchGetAccountStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchGetAccountStatus where
  toJSON BatchGetAccountStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [("accountIds" Core..=) Prelude.<$> accountIds]
      )

instance Core.ToPath BatchGetAccountStatus where
  toPath = Prelude.const "/status/batch/get"

instance Core.ToQuery BatchGetAccountStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchGetAccountStatusResponse' smart constructor.
data BatchGetAccountStatusResponse = BatchGetAccountStatusResponse'
  { -- | An array of objects detailing any accounts that failed to enable Amazon
    -- Inspector and why.
    failedAccounts :: Prelude.Maybe [FailedAccount],
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of objects that provide details on the status of Amazon
    -- Inspector for each of the requested accounts.
    accounts :: [AccountState]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetAccountStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedAccounts', 'batchGetAccountStatusResponse_failedAccounts' - An array of objects detailing any accounts that failed to enable Amazon
-- Inspector and why.
--
-- 'httpStatus', 'batchGetAccountStatusResponse_httpStatus' - The response's http status code.
--
-- 'accounts', 'batchGetAccountStatusResponse_accounts' - An array of objects that provide details on the status of Amazon
-- Inspector for each of the requested accounts.
newBatchGetAccountStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchGetAccountStatusResponse
newBatchGetAccountStatusResponse pHttpStatus_ =
  BatchGetAccountStatusResponse'
    { failedAccounts =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      accounts = Prelude.mempty
    }

-- | An array of objects detailing any accounts that failed to enable Amazon
-- Inspector and why.
batchGetAccountStatusResponse_failedAccounts :: Lens.Lens' BatchGetAccountStatusResponse (Prelude.Maybe [FailedAccount])
batchGetAccountStatusResponse_failedAccounts = Lens.lens (\BatchGetAccountStatusResponse' {failedAccounts} -> failedAccounts) (\s@BatchGetAccountStatusResponse' {} a -> s {failedAccounts = a} :: BatchGetAccountStatusResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchGetAccountStatusResponse_httpStatus :: Lens.Lens' BatchGetAccountStatusResponse Prelude.Int
batchGetAccountStatusResponse_httpStatus = Lens.lens (\BatchGetAccountStatusResponse' {httpStatus} -> httpStatus) (\s@BatchGetAccountStatusResponse' {} a -> s {httpStatus = a} :: BatchGetAccountStatusResponse)

-- | An array of objects that provide details on the status of Amazon
-- Inspector for each of the requested accounts.
batchGetAccountStatusResponse_accounts :: Lens.Lens' BatchGetAccountStatusResponse [AccountState]
batchGetAccountStatusResponse_accounts = Lens.lens (\BatchGetAccountStatusResponse' {accounts} -> accounts) (\s@BatchGetAccountStatusResponse' {} a -> s {accounts = a} :: BatchGetAccountStatusResponse) Prelude.. Lens.coerced

instance Prelude.NFData BatchGetAccountStatusResponse where
  rnf BatchGetAccountStatusResponse' {..} =
    Prelude.rnf failedAccounts
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf accounts

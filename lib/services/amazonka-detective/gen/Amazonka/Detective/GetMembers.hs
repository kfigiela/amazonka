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
-- Module      : Amazonka.Detective.GetMembers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the membership details for specified member accounts for a
-- behavior graph.
module Amazonka.Detective.GetMembers
  ( -- * Creating a Request
    GetMembers (..),
    newGetMembers,

    -- * Request Lenses
    getMembers_graphArn,
    getMembers_accountIds,

    -- * Destructuring the Response
    GetMembersResponse (..),
    newGetMembersResponse,

    -- * Response Lenses
    getMembersResponse_unprocessedAccounts,
    getMembersResponse_memberDetails,
    getMembersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Detective.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetMembers' smart constructor.
data GetMembers = GetMembers'
  { -- | The ARN of the behavior graph for which to request the member details.
    graphArn :: Prelude.Text,
    -- | The list of Amazon Web Services account identifiers for the member
    -- account for which to return member details. You can request details for
    -- up to 50 member accounts at a time.
    --
    -- You cannot use @GetMembers@ to retrieve information about member
    -- accounts that were removed from the behavior graph.
    accountIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'graphArn', 'getMembers_graphArn' - The ARN of the behavior graph for which to request the member details.
--
-- 'accountIds', 'getMembers_accountIds' - The list of Amazon Web Services account identifiers for the member
-- account for which to return member details. You can request details for
-- up to 50 member accounts at a time.
--
-- You cannot use @GetMembers@ to retrieve information about member
-- accounts that were removed from the behavior graph.
newGetMembers ::
  -- | 'graphArn'
  Prelude.Text ->
  -- | 'accountIds'
  Prelude.NonEmpty Prelude.Text ->
  GetMembers
newGetMembers pGraphArn_ pAccountIds_ =
  GetMembers'
    { graphArn = pGraphArn_,
      accountIds = Lens.coerced Lens.# pAccountIds_
    }

-- | The ARN of the behavior graph for which to request the member details.
getMembers_graphArn :: Lens.Lens' GetMembers Prelude.Text
getMembers_graphArn = Lens.lens (\GetMembers' {graphArn} -> graphArn) (\s@GetMembers' {} a -> s {graphArn = a} :: GetMembers)

-- | The list of Amazon Web Services account identifiers for the member
-- account for which to return member details. You can request details for
-- up to 50 member accounts at a time.
--
-- You cannot use @GetMembers@ to retrieve information about member
-- accounts that were removed from the behavior graph.
getMembers_accountIds :: Lens.Lens' GetMembers (Prelude.NonEmpty Prelude.Text)
getMembers_accountIds = Lens.lens (\GetMembers' {accountIds} -> accountIds) (\s@GetMembers' {} a -> s {accountIds = a} :: GetMembers) Prelude.. Lens.coerced

instance Core.AWSRequest GetMembers where
  type AWSResponse GetMembers = GetMembersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMembersResponse'
            Prelude.<$> ( x Core..?> "UnprocessedAccounts"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "MemberDetails" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMembers where
  hashWithSalt _salt GetMembers' {..} =
    _salt `Prelude.hashWithSalt` graphArn
      `Prelude.hashWithSalt` accountIds

instance Prelude.NFData GetMembers where
  rnf GetMembers' {..} =
    Prelude.rnf graphArn
      `Prelude.seq` Prelude.rnf accountIds

instance Core.ToHeaders GetMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetMembers where
  toJSON GetMembers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("GraphArn" Core..= graphArn),
            Prelude.Just ("AccountIds" Core..= accountIds)
          ]
      )

instance Core.ToPath GetMembers where
  toPath = Prelude.const "/graph/members/get"

instance Core.ToQuery GetMembers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMembersResponse' smart constructor.
data GetMembersResponse = GetMembersResponse'
  { -- | The requested member accounts for which Detective was unable to return
    -- member details.
    --
    -- For each account, provides the reason why the request could not be
    -- processed.
    unprocessedAccounts :: Prelude.Maybe [UnprocessedAccount],
    -- | The member account details that Detective is returning in response to
    -- the request.
    memberDetails :: Prelude.Maybe [MemberDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedAccounts', 'getMembersResponse_unprocessedAccounts' - The requested member accounts for which Detective was unable to return
-- member details.
--
-- For each account, provides the reason why the request could not be
-- processed.
--
-- 'memberDetails', 'getMembersResponse_memberDetails' - The member account details that Detective is returning in response to
-- the request.
--
-- 'httpStatus', 'getMembersResponse_httpStatus' - The response's http status code.
newGetMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMembersResponse
newGetMembersResponse pHttpStatus_ =
  GetMembersResponse'
    { unprocessedAccounts =
        Prelude.Nothing,
      memberDetails = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The requested member accounts for which Detective was unable to return
-- member details.
--
-- For each account, provides the reason why the request could not be
-- processed.
getMembersResponse_unprocessedAccounts :: Lens.Lens' GetMembersResponse (Prelude.Maybe [UnprocessedAccount])
getMembersResponse_unprocessedAccounts = Lens.lens (\GetMembersResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@GetMembersResponse' {} a -> s {unprocessedAccounts = a} :: GetMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The member account details that Detective is returning in response to
-- the request.
getMembersResponse_memberDetails :: Lens.Lens' GetMembersResponse (Prelude.Maybe [MemberDetail])
getMembersResponse_memberDetails = Lens.lens (\GetMembersResponse' {memberDetails} -> memberDetails) (\s@GetMembersResponse' {} a -> s {memberDetails = a} :: GetMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getMembersResponse_httpStatus :: Lens.Lens' GetMembersResponse Prelude.Int
getMembersResponse_httpStatus = Lens.lens (\GetMembersResponse' {httpStatus} -> httpStatus) (\s@GetMembersResponse' {} a -> s {httpStatus = a} :: GetMembersResponse)

instance Prelude.NFData GetMembersResponse where
  rnf GetMembersResponse' {..} =
    Prelude.rnf unprocessedAccounts
      `Prelude.seq` Prelude.rnf memberDetails
      `Prelude.seq` Prelude.rnf httpStatus

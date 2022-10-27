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
-- Module      : Amazonka.Nimble.PutStudioMembers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add\/update users with given persona to studio membership.
module Amazonka.Nimble.PutStudioMembers
  ( -- * Creating a Request
    PutStudioMembers (..),
    newPutStudioMembers,

    -- * Request Lenses
    putStudioMembers_clientToken,
    putStudioMembers_identityStoreId,
    putStudioMembers_members,
    putStudioMembers_studioId,

    -- * Destructuring the Response
    PutStudioMembersResponse (..),
    newPutStudioMembersResponse,

    -- * Response Lenses
    putStudioMembersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutStudioMembers' smart constructor.
data PutStudioMembers = PutStudioMembers'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don’t specify a client token, the AWS
    -- SDK automatically generates a client token and uses it for the request
    -- to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the identity store.
    identityStoreId :: Prelude.Text,
    -- | A list of members.
    members :: Prelude.NonEmpty NewStudioMember,
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutStudioMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'putStudioMembers_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
--
-- 'identityStoreId', 'putStudioMembers_identityStoreId' - The ID of the identity store.
--
-- 'members', 'putStudioMembers_members' - A list of members.
--
-- 'studioId', 'putStudioMembers_studioId' - The studio ID.
newPutStudioMembers ::
  -- | 'identityStoreId'
  Prelude.Text ->
  -- | 'members'
  Prelude.NonEmpty NewStudioMember ->
  -- | 'studioId'
  Prelude.Text ->
  PutStudioMembers
newPutStudioMembers
  pIdentityStoreId_
  pMembers_
  pStudioId_ =
    PutStudioMembers'
      { clientToken = Prelude.Nothing,
        identityStoreId = pIdentityStoreId_,
        members = Lens.coerced Lens.# pMembers_,
        studioId = pStudioId_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
putStudioMembers_clientToken :: Lens.Lens' PutStudioMembers (Prelude.Maybe Prelude.Text)
putStudioMembers_clientToken = Lens.lens (\PutStudioMembers' {clientToken} -> clientToken) (\s@PutStudioMembers' {} a -> s {clientToken = a} :: PutStudioMembers)

-- | The ID of the identity store.
putStudioMembers_identityStoreId :: Lens.Lens' PutStudioMembers Prelude.Text
putStudioMembers_identityStoreId = Lens.lens (\PutStudioMembers' {identityStoreId} -> identityStoreId) (\s@PutStudioMembers' {} a -> s {identityStoreId = a} :: PutStudioMembers)

-- | A list of members.
putStudioMembers_members :: Lens.Lens' PutStudioMembers (Prelude.NonEmpty NewStudioMember)
putStudioMembers_members = Lens.lens (\PutStudioMembers' {members} -> members) (\s@PutStudioMembers' {} a -> s {members = a} :: PutStudioMembers) Prelude.. Lens.coerced

-- | The studio ID.
putStudioMembers_studioId :: Lens.Lens' PutStudioMembers Prelude.Text
putStudioMembers_studioId = Lens.lens (\PutStudioMembers' {studioId} -> studioId) (\s@PutStudioMembers' {} a -> s {studioId = a} :: PutStudioMembers)

instance Core.AWSRequest PutStudioMembers where
  type
    AWSResponse PutStudioMembers =
      PutStudioMembersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutStudioMembersResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutStudioMembers where
  hashWithSalt _salt PutStudioMembers' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` identityStoreId
      `Prelude.hashWithSalt` members
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData PutStudioMembers where
  rnf PutStudioMembers' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf identityStoreId
      `Prelude.seq` Prelude.rnf members
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders PutStudioMembers where
  toHeaders PutStudioMembers' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON PutStudioMembers where
  toJSON PutStudioMembers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("identityStoreId" Core..= identityStoreId),
            Prelude.Just ("members" Core..= members)
          ]
      )

instance Core.ToPath PutStudioMembers where
  toPath PutStudioMembers' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/membership"
      ]

instance Core.ToQuery PutStudioMembers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutStudioMembersResponse' smart constructor.
data PutStudioMembersResponse = PutStudioMembersResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutStudioMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putStudioMembersResponse_httpStatus' - The response's http status code.
newPutStudioMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutStudioMembersResponse
newPutStudioMembersResponse pHttpStatus_ =
  PutStudioMembersResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putStudioMembersResponse_httpStatus :: Lens.Lens' PutStudioMembersResponse Prelude.Int
putStudioMembersResponse_httpStatus = Lens.lens (\PutStudioMembersResponse' {httpStatus} -> httpStatus) (\s@PutStudioMembersResponse' {} a -> s {httpStatus = a} :: PutStudioMembersResponse)

instance Prelude.NFData PutStudioMembersResponse where
  rnf PutStudioMembersResponse' {..} =
    Prelude.rnf httpStatus

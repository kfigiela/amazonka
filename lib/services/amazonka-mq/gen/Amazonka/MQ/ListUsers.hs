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
-- Module      : Amazonka.MQ.ListUsers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all ActiveMQ users.
module Amazonka.MQ.ListUsers
  ( -- * Creating a Request
    ListUsers (..),
    newListUsers,

    -- * Request Lenses
    listUsers_nextToken,
    listUsers_maxResults,
    listUsers_brokerId,

    -- * Destructuring the Response
    ListUsersResponse (..),
    newListUsersResponse,

    -- * Response Lenses
    listUsersResponse_nextToken,
    listUsersResponse_users,
    listUsersResponse_brokerId,
    listUsersResponse_maxResults,
    listUsersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MQ.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListUsers' smart constructor.
data ListUsers = ListUsers'
  { -- | The token that specifies the next page of results Amazon MQ should
    -- return. To request the first page, leave nextToken empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of brokers that Amazon MQ can return per page (20 by
    -- default). This value must be an integer from 5 to 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique ID that Amazon MQ generates for the broker.
    brokerId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUsers_nextToken' - The token that specifies the next page of results Amazon MQ should
-- return. To request the first page, leave nextToken empty.
--
-- 'maxResults', 'listUsers_maxResults' - The maximum number of brokers that Amazon MQ can return per page (20 by
-- default). This value must be an integer from 5 to 100.
--
-- 'brokerId', 'listUsers_brokerId' - The unique ID that Amazon MQ generates for the broker.
newListUsers ::
  -- | 'brokerId'
  Prelude.Text ->
  ListUsers
newListUsers pBrokerId_ =
  ListUsers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      brokerId = pBrokerId_
    }

-- | The token that specifies the next page of results Amazon MQ should
-- return. To request the first page, leave nextToken empty.
listUsers_nextToken :: Lens.Lens' ListUsers (Prelude.Maybe Prelude.Text)
listUsers_nextToken = Lens.lens (\ListUsers' {nextToken} -> nextToken) (\s@ListUsers' {} a -> s {nextToken = a} :: ListUsers)

-- | The maximum number of brokers that Amazon MQ can return per page (20 by
-- default). This value must be an integer from 5 to 100.
listUsers_maxResults :: Lens.Lens' ListUsers (Prelude.Maybe Prelude.Natural)
listUsers_maxResults = Lens.lens (\ListUsers' {maxResults} -> maxResults) (\s@ListUsers' {} a -> s {maxResults = a} :: ListUsers)

-- | The unique ID that Amazon MQ generates for the broker.
listUsers_brokerId :: Lens.Lens' ListUsers Prelude.Text
listUsers_brokerId = Lens.lens (\ListUsers' {brokerId} -> brokerId) (\s@ListUsers' {} a -> s {brokerId = a} :: ListUsers)

instance Core.AWSRequest ListUsers where
  type AWSResponse ListUsers = ListUsersResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUsersResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "users" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "brokerId")
            Prelude.<*> (x Core..?> "maxResults")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListUsers where
  hashWithSalt _salt ListUsers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` brokerId

instance Prelude.NFData ListUsers where
  rnf ListUsers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf brokerId

instance Core.ToHeaders ListUsers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListUsers where
  toPath ListUsers' {..} =
    Prelude.mconcat
      ["/v1/brokers/", Core.toBS brokerId, "/users"]

instance Core.ToQuery ListUsers where
  toQuery ListUsers' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { -- | The token that specifies the next page of results Amazon MQ should
    -- return. To request the first page, leave nextToken empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Required. The list of all ActiveMQ usernames for the specified broker.
    -- Does not apply to RabbitMQ brokers.
    users :: Prelude.Maybe [UserSummary],
    -- | Required. The unique ID that Amazon MQ generates for the broker.
    brokerId :: Prelude.Maybe Prelude.Text,
    -- | Required. The maximum number of ActiveMQ users that can be returned per
    -- page (20 by default). This value must be an integer from 5 to 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUsersResponse_nextToken' - The token that specifies the next page of results Amazon MQ should
-- return. To request the first page, leave nextToken empty.
--
-- 'users', 'listUsersResponse_users' - Required. The list of all ActiveMQ usernames for the specified broker.
-- Does not apply to RabbitMQ brokers.
--
-- 'brokerId', 'listUsersResponse_brokerId' - Required. The unique ID that Amazon MQ generates for the broker.
--
-- 'maxResults', 'listUsersResponse_maxResults' - Required. The maximum number of ActiveMQ users that can be returned per
-- page (20 by default). This value must be an integer from 5 to 100.
--
-- 'httpStatus', 'listUsersResponse_httpStatus' - The response's http status code.
newListUsersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListUsersResponse
newListUsersResponse pHttpStatus_ =
  ListUsersResponse'
    { nextToken = Prelude.Nothing,
      users = Prelude.Nothing,
      brokerId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token that specifies the next page of results Amazon MQ should
-- return. To request the first page, leave nextToken empty.
listUsersResponse_nextToken :: Lens.Lens' ListUsersResponse (Prelude.Maybe Prelude.Text)
listUsersResponse_nextToken = Lens.lens (\ListUsersResponse' {nextToken} -> nextToken) (\s@ListUsersResponse' {} a -> s {nextToken = a} :: ListUsersResponse)

-- | Required. The list of all ActiveMQ usernames for the specified broker.
-- Does not apply to RabbitMQ brokers.
listUsersResponse_users :: Lens.Lens' ListUsersResponse (Prelude.Maybe [UserSummary])
listUsersResponse_users = Lens.lens (\ListUsersResponse' {users} -> users) (\s@ListUsersResponse' {} a -> s {users = a} :: ListUsersResponse) Prelude.. Lens.mapping Lens.coerced

-- | Required. The unique ID that Amazon MQ generates for the broker.
listUsersResponse_brokerId :: Lens.Lens' ListUsersResponse (Prelude.Maybe Prelude.Text)
listUsersResponse_brokerId = Lens.lens (\ListUsersResponse' {brokerId} -> brokerId) (\s@ListUsersResponse' {} a -> s {brokerId = a} :: ListUsersResponse)

-- | Required. The maximum number of ActiveMQ users that can be returned per
-- page (20 by default). This value must be an integer from 5 to 100.
listUsersResponse_maxResults :: Lens.Lens' ListUsersResponse (Prelude.Maybe Prelude.Natural)
listUsersResponse_maxResults = Lens.lens (\ListUsersResponse' {maxResults} -> maxResults) (\s@ListUsersResponse' {} a -> s {maxResults = a} :: ListUsersResponse)

-- | The response's http status code.
listUsersResponse_httpStatus :: Lens.Lens' ListUsersResponse Prelude.Int
listUsersResponse_httpStatus = Lens.lens (\ListUsersResponse' {httpStatus} -> httpStatus) (\s@ListUsersResponse' {} a -> s {httpStatus = a} :: ListUsersResponse)

instance Prelude.NFData ListUsersResponse where
  rnf ListUsersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf users
      `Prelude.seq` Prelude.rnf brokerId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf httpStatus

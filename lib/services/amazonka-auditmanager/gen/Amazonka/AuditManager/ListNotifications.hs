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
-- Module      : Amazonka.AuditManager.ListNotifications
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all Audit Manager notifications.
module Amazonka.AuditManager.ListNotifications
  ( -- * Creating a Request
    ListNotifications (..),
    newListNotifications,

    -- * Request Lenses
    listNotifications_nextToken,
    listNotifications_maxResults,

    -- * Destructuring the Response
    ListNotificationsResponse (..),
    newListNotificationsResponse,

    -- * Response Lenses
    listNotificationsResponse_notifications,
    listNotificationsResponse_nextToken,
    listNotificationsResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListNotifications' smart constructor.
data ListNotifications = ListNotifications'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results on a page or for an API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNotifications_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'maxResults', 'listNotifications_maxResults' - Represents the maximum number of results on a page or for an API request
-- call.
newListNotifications ::
  ListNotifications
newListNotifications =
  ListNotifications'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token that\'s used to fetch the next set of results.
listNotifications_nextToken :: Lens.Lens' ListNotifications (Prelude.Maybe Prelude.Text)
listNotifications_nextToken = Lens.lens (\ListNotifications' {nextToken} -> nextToken) (\s@ListNotifications' {} a -> s {nextToken = a} :: ListNotifications)

-- | Represents the maximum number of results on a page or for an API request
-- call.
listNotifications_maxResults :: Lens.Lens' ListNotifications (Prelude.Maybe Prelude.Natural)
listNotifications_maxResults = Lens.lens (\ListNotifications' {maxResults} -> maxResults) (\s@ListNotifications' {} a -> s {maxResults = a} :: ListNotifications)

instance Core.AWSRequest ListNotifications where
  type
    AWSResponse ListNotifications =
      ListNotificationsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListNotificationsResponse'
            Prelude.<$> (x Core..?> "notifications" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListNotifications where
  hashWithSalt _salt ListNotifications' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListNotifications where
  rnf ListNotifications' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListNotifications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListNotifications where
  toPath = Prelude.const "/notifications"

instance Core.ToQuery ListNotifications where
  toQuery ListNotifications' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListNotificationsResponse' smart constructor.
data ListNotificationsResponse = ListNotificationsResponse'
  { -- | The returned list of notifications.
    notifications :: Prelude.Maybe [Notification],
    -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notifications', 'listNotificationsResponse_notifications' - The returned list of notifications.
--
-- 'nextToken', 'listNotificationsResponse_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'httpStatus', 'listNotificationsResponse_httpStatus' - The response's http status code.
newListNotificationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListNotificationsResponse
newListNotificationsResponse pHttpStatus_ =
  ListNotificationsResponse'
    { notifications =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The returned list of notifications.
listNotificationsResponse_notifications :: Lens.Lens' ListNotificationsResponse (Prelude.Maybe [Notification])
listNotificationsResponse_notifications = Lens.lens (\ListNotificationsResponse' {notifications} -> notifications) (\s@ListNotificationsResponse' {} a -> s {notifications = a} :: ListNotificationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token that\'s used to fetch the next set of results.
listNotificationsResponse_nextToken :: Lens.Lens' ListNotificationsResponse (Prelude.Maybe Prelude.Text)
listNotificationsResponse_nextToken = Lens.lens (\ListNotificationsResponse' {nextToken} -> nextToken) (\s@ListNotificationsResponse' {} a -> s {nextToken = a} :: ListNotificationsResponse)

-- | The response's http status code.
listNotificationsResponse_httpStatus :: Lens.Lens' ListNotificationsResponse Prelude.Int
listNotificationsResponse_httpStatus = Lens.lens (\ListNotificationsResponse' {httpStatus} -> httpStatus) (\s@ListNotificationsResponse' {} a -> s {httpStatus = a} :: ListNotificationsResponse)

instance Prelude.NFData ListNotificationsResponse where
  rnf ListNotificationsResponse' {..} =
    Prelude.rnf notifications
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

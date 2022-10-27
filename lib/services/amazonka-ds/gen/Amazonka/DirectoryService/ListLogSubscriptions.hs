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
-- Module      : Amazonka.DirectoryService.ListLogSubscriptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the active log subscriptions for the Amazon Web Services account.
--
-- This operation returns paginated results.
module Amazonka.DirectoryService.ListLogSubscriptions
  ( -- * Creating a Request
    ListLogSubscriptions (..),
    newListLogSubscriptions,

    -- * Request Lenses
    listLogSubscriptions_directoryId,
    listLogSubscriptions_nextToken,
    listLogSubscriptions_limit,

    -- * Destructuring the Response
    ListLogSubscriptionsResponse (..),
    newListLogSubscriptionsResponse,

    -- * Response Lenses
    listLogSubscriptionsResponse_nextToken,
    listLogSubscriptionsResponse_logSubscriptions,
    listLogSubscriptionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DirectoryService.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLogSubscriptions' smart constructor.
data ListLogSubscriptions = ListLogSubscriptions'
  { -- | If a /DirectoryID/ is provided, lists only the log subscription
    -- associated with that directory. If no /DirectoryId/ is provided, lists
    -- all log subscriptions associated with your Amazon Web Services account.
    -- If there are no log subscriptions for the Amazon Web Services account or
    -- the directory, an empty list will be returned.
    directoryId :: Prelude.Maybe Prelude.Text,
    -- | The token for the next set of items to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items returned.
    limit :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLogSubscriptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryId', 'listLogSubscriptions_directoryId' - If a /DirectoryID/ is provided, lists only the log subscription
-- associated with that directory. If no /DirectoryId/ is provided, lists
-- all log subscriptions associated with your Amazon Web Services account.
-- If there are no log subscriptions for the Amazon Web Services account or
-- the directory, an empty list will be returned.
--
-- 'nextToken', 'listLogSubscriptions_nextToken' - The token for the next set of items to return.
--
-- 'limit', 'listLogSubscriptions_limit' - The maximum number of items returned.
newListLogSubscriptions ::
  ListLogSubscriptions
newListLogSubscriptions =
  ListLogSubscriptions'
    { directoryId =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | If a /DirectoryID/ is provided, lists only the log subscription
-- associated with that directory. If no /DirectoryId/ is provided, lists
-- all log subscriptions associated with your Amazon Web Services account.
-- If there are no log subscriptions for the Amazon Web Services account or
-- the directory, an empty list will be returned.
listLogSubscriptions_directoryId :: Lens.Lens' ListLogSubscriptions (Prelude.Maybe Prelude.Text)
listLogSubscriptions_directoryId = Lens.lens (\ListLogSubscriptions' {directoryId} -> directoryId) (\s@ListLogSubscriptions' {} a -> s {directoryId = a} :: ListLogSubscriptions)

-- | The token for the next set of items to return.
listLogSubscriptions_nextToken :: Lens.Lens' ListLogSubscriptions (Prelude.Maybe Prelude.Text)
listLogSubscriptions_nextToken = Lens.lens (\ListLogSubscriptions' {nextToken} -> nextToken) (\s@ListLogSubscriptions' {} a -> s {nextToken = a} :: ListLogSubscriptions)

-- | The maximum number of items returned.
listLogSubscriptions_limit :: Lens.Lens' ListLogSubscriptions (Prelude.Maybe Prelude.Natural)
listLogSubscriptions_limit = Lens.lens (\ListLogSubscriptions' {limit} -> limit) (\s@ListLogSubscriptions' {} a -> s {limit = a} :: ListLogSubscriptions)

instance Core.AWSPager ListLogSubscriptions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLogSubscriptionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLogSubscriptionsResponse_logSubscriptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLogSubscriptions_nextToken
          Lens..~ rs
          Lens.^? listLogSubscriptionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListLogSubscriptions where
  type
    AWSResponse ListLogSubscriptions =
      ListLogSubscriptionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLogSubscriptionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "LogSubscriptions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLogSubscriptions where
  hashWithSalt _salt ListLogSubscriptions' {..} =
    _salt `Prelude.hashWithSalt` directoryId
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` limit

instance Prelude.NFData ListLogSubscriptions where
  rnf ListLogSubscriptions' {..} =
    Prelude.rnf directoryId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf limit

instance Core.ToHeaders ListLogSubscriptions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.ListLogSubscriptions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLogSubscriptions where
  toJSON ListLogSubscriptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DirectoryId" Core..=) Prelude.<$> directoryId,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Limit" Core..=) Prelude.<$> limit
          ]
      )

instance Core.ToPath ListLogSubscriptions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLogSubscriptions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLogSubscriptionsResponse' smart constructor.
data ListLogSubscriptionsResponse = ListLogSubscriptionsResponse'
  { -- | The token for the next set of items to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of active LogSubscription objects for calling the Amazon Web
    -- Services account.
    logSubscriptions :: Prelude.Maybe [LogSubscription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLogSubscriptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLogSubscriptionsResponse_nextToken' - The token for the next set of items to return.
--
-- 'logSubscriptions', 'listLogSubscriptionsResponse_logSubscriptions' - A list of active LogSubscription objects for calling the Amazon Web
-- Services account.
--
-- 'httpStatus', 'listLogSubscriptionsResponse_httpStatus' - The response's http status code.
newListLogSubscriptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLogSubscriptionsResponse
newListLogSubscriptionsResponse pHttpStatus_ =
  ListLogSubscriptionsResponse'
    { nextToken =
        Prelude.Nothing,
      logSubscriptions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of items to return.
listLogSubscriptionsResponse_nextToken :: Lens.Lens' ListLogSubscriptionsResponse (Prelude.Maybe Prelude.Text)
listLogSubscriptionsResponse_nextToken = Lens.lens (\ListLogSubscriptionsResponse' {nextToken} -> nextToken) (\s@ListLogSubscriptionsResponse' {} a -> s {nextToken = a} :: ListLogSubscriptionsResponse)

-- | A list of active LogSubscription objects for calling the Amazon Web
-- Services account.
listLogSubscriptionsResponse_logSubscriptions :: Lens.Lens' ListLogSubscriptionsResponse (Prelude.Maybe [LogSubscription])
listLogSubscriptionsResponse_logSubscriptions = Lens.lens (\ListLogSubscriptionsResponse' {logSubscriptions} -> logSubscriptions) (\s@ListLogSubscriptionsResponse' {} a -> s {logSubscriptions = a} :: ListLogSubscriptionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLogSubscriptionsResponse_httpStatus :: Lens.Lens' ListLogSubscriptionsResponse Prelude.Int
listLogSubscriptionsResponse_httpStatus = Lens.lens (\ListLogSubscriptionsResponse' {httpStatus} -> httpStatus) (\s@ListLogSubscriptionsResponse' {} a -> s {httpStatus = a} :: ListLogSubscriptionsResponse)

instance Prelude.NFData ListLogSubscriptionsResponse where
  rnf ListLogSubscriptionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf logSubscriptions
      `Prelude.seq` Prelude.rnf httpStatus

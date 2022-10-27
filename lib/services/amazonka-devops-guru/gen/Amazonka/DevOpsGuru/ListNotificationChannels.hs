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
-- Module      : Amazonka.DevOpsGuru.ListNotificationChannels
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of notification channels configured for DevOps Guru. Each
-- notification channel is used to notify you when DevOps Guru generates an
-- insight that contains information about how to improve your operations.
-- The one supported notification channel is Amazon Simple Notification
-- Service (Amazon SNS).
--
-- This operation returns paginated results.
module Amazonka.DevOpsGuru.ListNotificationChannels
  ( -- * Creating a Request
    ListNotificationChannels (..),
    newListNotificationChannels,

    -- * Request Lenses
    listNotificationChannels_nextToken,

    -- * Destructuring the Response
    ListNotificationChannelsResponse (..),
    newListNotificationChannelsResponse,

    -- * Response Lenses
    listNotificationChannelsResponse_nextToken,
    listNotificationChannelsResponse_channels,
    listNotificationChannelsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListNotificationChannels' smart constructor.
data ListNotificationChannels = ListNotificationChannels'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If this value is null, it retrieves the first page.
    nextToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotificationChannels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNotificationChannels_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
newListNotificationChannels ::
  ListNotificationChannels
newListNotificationChannels =
  ListNotificationChannels'
    { nextToken =
        Prelude.Nothing
    }

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
listNotificationChannels_nextToken :: Lens.Lens' ListNotificationChannels (Prelude.Maybe Prelude.Text)
listNotificationChannels_nextToken = Lens.lens (\ListNotificationChannels' {nextToken} -> nextToken) (\s@ListNotificationChannels' {} a -> s {nextToken = a} :: ListNotificationChannels)

instance Core.AWSPager ListNotificationChannels where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listNotificationChannelsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listNotificationChannelsResponse_channels
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listNotificationChannels_nextToken
          Lens..~ rs
          Lens.^? listNotificationChannelsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListNotificationChannels where
  type
    AWSResponse ListNotificationChannels =
      ListNotificationChannelsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListNotificationChannelsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Channels" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListNotificationChannels where
  hashWithSalt _salt ListNotificationChannels' {..} =
    _salt `Prelude.hashWithSalt` nextToken

instance Prelude.NFData ListNotificationChannels where
  rnf ListNotificationChannels' {..} =
    Prelude.rnf nextToken

instance Core.ToHeaders ListNotificationChannels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListNotificationChannels where
  toJSON ListNotificationChannels' {..} =
    Core.object
      ( Prelude.catMaybes
          [("NextToken" Core..=) Prelude.<$> nextToken]
      )

instance Core.ToPath ListNotificationChannels where
  toPath = Prelude.const "/channels"

instance Core.ToQuery ListNotificationChannels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListNotificationChannelsResponse' smart constructor.
data ListNotificationChannelsResponse = ListNotificationChannelsResponse'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If there are no more pages, this value is null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array that contains the requested notification channels.
    channels :: Prelude.Maybe [NotificationChannel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotificationChannelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNotificationChannelsResponse_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
--
-- 'channels', 'listNotificationChannelsResponse_channels' - An array that contains the requested notification channels.
--
-- 'httpStatus', 'listNotificationChannelsResponse_httpStatus' - The response's http status code.
newListNotificationChannelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListNotificationChannelsResponse
newListNotificationChannelsResponse pHttpStatus_ =
  ListNotificationChannelsResponse'
    { nextToken =
        Prelude.Nothing,
      channels = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
listNotificationChannelsResponse_nextToken :: Lens.Lens' ListNotificationChannelsResponse (Prelude.Maybe Prelude.Text)
listNotificationChannelsResponse_nextToken = Lens.lens (\ListNotificationChannelsResponse' {nextToken} -> nextToken) (\s@ListNotificationChannelsResponse' {} a -> s {nextToken = a} :: ListNotificationChannelsResponse)

-- | An array that contains the requested notification channels.
listNotificationChannelsResponse_channels :: Lens.Lens' ListNotificationChannelsResponse (Prelude.Maybe [NotificationChannel])
listNotificationChannelsResponse_channels = Lens.lens (\ListNotificationChannelsResponse' {channels} -> channels) (\s@ListNotificationChannelsResponse' {} a -> s {channels = a} :: ListNotificationChannelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listNotificationChannelsResponse_httpStatus :: Lens.Lens' ListNotificationChannelsResponse Prelude.Int
listNotificationChannelsResponse_httpStatus = Lens.lens (\ListNotificationChannelsResponse' {httpStatus} -> httpStatus) (\s@ListNotificationChannelsResponse' {} a -> s {httpStatus = a} :: ListNotificationChannelsResponse)

instance
  Prelude.NFData
    ListNotificationChannelsResponse
  where
  rnf ListNotificationChannelsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf channels
      `Prelude.seq` Prelude.rnf httpStatus

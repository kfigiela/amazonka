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
-- Module      : Amazonka.IVSChat.ListRooms
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about all your rooms in the AWS region where
-- the API request is processed. Results are sorted in descending order of
-- @updateTime@.
module Amazonka.IVSChat.ListRooms
  ( -- * Creating a Request
    ListRooms (..),
    newListRooms,

    -- * Request Lenses
    listRooms_name,
    listRooms_nextToken,
    listRooms_messageReviewHandlerUri,
    listRooms_maxResults,

    -- * Destructuring the Response
    ListRoomsResponse (..),
    newListRoomsResponse,

    -- * Response Lenses
    listRoomsResponse_nextToken,
    listRoomsResponse_httpStatus,
    listRoomsResponse_rooms,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVSChat.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListRooms' smart constructor.
data ListRooms = ListRooms'
  { -- | Filters the list to match the specified room name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The first room to retrieve. This is used for pagination; see the
    -- @nextToken@ response field.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the list to match the specified message review handler URI.
    messageReviewHandlerUri :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of rooms to return. Default: 50.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRooms' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'listRooms_name' - Filters the list to match the specified room name.
--
-- 'nextToken', 'listRooms_nextToken' - The first room to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
--
-- 'messageReviewHandlerUri', 'listRooms_messageReviewHandlerUri' - Filters the list to match the specified message review handler URI.
--
-- 'maxResults', 'listRooms_maxResults' - Maximum number of rooms to return. Default: 50.
newListRooms ::
  ListRooms
newListRooms =
  ListRooms'
    { name = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      messageReviewHandlerUri = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Filters the list to match the specified room name.
listRooms_name :: Lens.Lens' ListRooms (Prelude.Maybe Prelude.Text)
listRooms_name = Lens.lens (\ListRooms' {name} -> name) (\s@ListRooms' {} a -> s {name = a} :: ListRooms)

-- | The first room to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
listRooms_nextToken :: Lens.Lens' ListRooms (Prelude.Maybe Prelude.Text)
listRooms_nextToken = Lens.lens (\ListRooms' {nextToken} -> nextToken) (\s@ListRooms' {} a -> s {nextToken = a} :: ListRooms)

-- | Filters the list to match the specified message review handler URI.
listRooms_messageReviewHandlerUri :: Lens.Lens' ListRooms (Prelude.Maybe Prelude.Text)
listRooms_messageReviewHandlerUri = Lens.lens (\ListRooms' {messageReviewHandlerUri} -> messageReviewHandlerUri) (\s@ListRooms' {} a -> s {messageReviewHandlerUri = a} :: ListRooms)

-- | Maximum number of rooms to return. Default: 50.
listRooms_maxResults :: Lens.Lens' ListRooms (Prelude.Maybe Prelude.Natural)
listRooms_maxResults = Lens.lens (\ListRooms' {maxResults} -> maxResults) (\s@ListRooms' {} a -> s {maxResults = a} :: ListRooms)

instance Core.AWSRequest ListRooms where
  type AWSResponse ListRooms = ListRoomsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRoomsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "rooms" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListRooms where
  hashWithSalt _salt ListRooms' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` messageReviewHandlerUri
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListRooms where
  rnf ListRooms' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf messageReviewHandlerUri
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListRooms where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListRooms where
  toJSON ListRooms' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("messageReviewHandlerUri" Core..=)
              Prelude.<$> messageReviewHandlerUri,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListRooms where
  toPath = Prelude.const "/ListRooms"

instance Core.ToQuery ListRooms where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListRoomsResponse' smart constructor.
data ListRoomsResponse = ListRoomsResponse'
  { -- | If there are more rooms than @maxResults@, use @nextToken@ in the
    -- request to get the next set.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of the matching rooms (summary information only).
    rooms :: [RoomSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRoomsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRoomsResponse_nextToken' - If there are more rooms than @maxResults@, use @nextToken@ in the
-- request to get the next set.
--
-- 'httpStatus', 'listRoomsResponse_httpStatus' - The response's http status code.
--
-- 'rooms', 'listRoomsResponse_rooms' - List of the matching rooms (summary information only).
newListRoomsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRoomsResponse
newListRoomsResponse pHttpStatus_ =
  ListRoomsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      rooms = Prelude.mempty
    }

-- | If there are more rooms than @maxResults@, use @nextToken@ in the
-- request to get the next set.
listRoomsResponse_nextToken :: Lens.Lens' ListRoomsResponse (Prelude.Maybe Prelude.Text)
listRoomsResponse_nextToken = Lens.lens (\ListRoomsResponse' {nextToken} -> nextToken) (\s@ListRoomsResponse' {} a -> s {nextToken = a} :: ListRoomsResponse)

-- | The response's http status code.
listRoomsResponse_httpStatus :: Lens.Lens' ListRoomsResponse Prelude.Int
listRoomsResponse_httpStatus = Lens.lens (\ListRoomsResponse' {httpStatus} -> httpStatus) (\s@ListRoomsResponse' {} a -> s {httpStatus = a} :: ListRoomsResponse)

-- | List of the matching rooms (summary information only).
listRoomsResponse_rooms :: Lens.Lens' ListRoomsResponse [RoomSummary]
listRoomsResponse_rooms = Lens.lens (\ListRoomsResponse' {rooms} -> rooms) (\s@ListRoomsResponse' {} a -> s {rooms = a} :: ListRoomsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListRoomsResponse where
  rnf ListRoomsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf rooms

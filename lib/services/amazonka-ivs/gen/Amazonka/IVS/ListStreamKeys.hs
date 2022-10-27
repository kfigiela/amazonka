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
-- Module      : Amazonka.IVS.ListStreamKeys
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about stream keys for the specified channel.
--
-- This operation returns paginated results.
module Amazonka.IVS.ListStreamKeys
  ( -- * Creating a Request
    ListStreamKeys (..),
    newListStreamKeys,

    -- * Request Lenses
    listStreamKeys_nextToken,
    listStreamKeys_maxResults,
    listStreamKeys_channelArn,

    -- * Destructuring the Response
    ListStreamKeysResponse (..),
    newListStreamKeysResponse,

    -- * Response Lenses
    listStreamKeysResponse_nextToken,
    listStreamKeysResponse_httpStatus,
    listStreamKeysResponse_streamKeys,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListStreamKeys' smart constructor.
data ListStreamKeys = ListStreamKeys'
  { -- | The first stream key to retrieve. This is used for pagination; see the
    -- @nextToken@ response field.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of streamKeys to return. Default: 1.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Channel ARN used to filter the list.
    channelArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStreamKeys' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamKeys_nextToken' - The first stream key to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
--
-- 'maxResults', 'listStreamKeys_maxResults' - Maximum number of streamKeys to return. Default: 1.
--
-- 'channelArn', 'listStreamKeys_channelArn' - Channel ARN used to filter the list.
newListStreamKeys ::
  -- | 'channelArn'
  Prelude.Text ->
  ListStreamKeys
newListStreamKeys pChannelArn_ =
  ListStreamKeys'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      channelArn = pChannelArn_
    }

-- | The first stream key to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
listStreamKeys_nextToken :: Lens.Lens' ListStreamKeys (Prelude.Maybe Prelude.Text)
listStreamKeys_nextToken = Lens.lens (\ListStreamKeys' {nextToken} -> nextToken) (\s@ListStreamKeys' {} a -> s {nextToken = a} :: ListStreamKeys)

-- | Maximum number of streamKeys to return. Default: 1.
listStreamKeys_maxResults :: Lens.Lens' ListStreamKeys (Prelude.Maybe Prelude.Natural)
listStreamKeys_maxResults = Lens.lens (\ListStreamKeys' {maxResults} -> maxResults) (\s@ListStreamKeys' {} a -> s {maxResults = a} :: ListStreamKeys)

-- | Channel ARN used to filter the list.
listStreamKeys_channelArn :: Lens.Lens' ListStreamKeys Prelude.Text
listStreamKeys_channelArn = Lens.lens (\ListStreamKeys' {channelArn} -> channelArn) (\s@ListStreamKeys' {} a -> s {channelArn = a} :: ListStreamKeys)

instance Core.AWSPager ListStreamKeys where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listStreamKeysResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listStreamKeysResponse_streamKeys) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listStreamKeys_nextToken
          Lens..~ rs
          Lens.^? listStreamKeysResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListStreamKeys where
  type
    AWSResponse ListStreamKeys =
      ListStreamKeysResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListStreamKeysResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "streamKeys" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListStreamKeys where
  hashWithSalt _salt ListStreamKeys' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` channelArn

instance Prelude.NFData ListStreamKeys where
  rnf ListStreamKeys' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf channelArn

instance Core.ToHeaders ListStreamKeys where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListStreamKeys where
  toJSON ListStreamKeys' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("channelArn" Core..= channelArn)
          ]
      )

instance Core.ToPath ListStreamKeys where
  toPath = Prelude.const "/ListStreamKeys"

instance Core.ToQuery ListStreamKeys where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListStreamKeysResponse' smart constructor.
data ListStreamKeysResponse = ListStreamKeysResponse'
  { -- | If there are more stream keys than @maxResults@, use @nextToken@ in the
    -- request to get the next set.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of stream keys.
    streamKeys :: [StreamKeySummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListStreamKeysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamKeysResponse_nextToken' - If there are more stream keys than @maxResults@, use @nextToken@ in the
-- request to get the next set.
--
-- 'httpStatus', 'listStreamKeysResponse_httpStatus' - The response's http status code.
--
-- 'streamKeys', 'listStreamKeysResponse_streamKeys' - List of stream keys.
newListStreamKeysResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStreamKeysResponse
newListStreamKeysResponse pHttpStatus_ =
  ListStreamKeysResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      streamKeys = Prelude.mempty
    }

-- | If there are more stream keys than @maxResults@, use @nextToken@ in the
-- request to get the next set.
listStreamKeysResponse_nextToken :: Lens.Lens' ListStreamKeysResponse (Prelude.Maybe Prelude.Text)
listStreamKeysResponse_nextToken = Lens.lens (\ListStreamKeysResponse' {nextToken} -> nextToken) (\s@ListStreamKeysResponse' {} a -> s {nextToken = a} :: ListStreamKeysResponse)

-- | The response's http status code.
listStreamKeysResponse_httpStatus :: Lens.Lens' ListStreamKeysResponse Prelude.Int
listStreamKeysResponse_httpStatus = Lens.lens (\ListStreamKeysResponse' {httpStatus} -> httpStatus) (\s@ListStreamKeysResponse' {} a -> s {httpStatus = a} :: ListStreamKeysResponse)

-- | List of stream keys.
listStreamKeysResponse_streamKeys :: Lens.Lens' ListStreamKeysResponse [StreamKeySummary]
listStreamKeysResponse_streamKeys = Lens.lens (\ListStreamKeysResponse' {streamKeys} -> streamKeys) (\s@ListStreamKeysResponse' {} a -> s {streamKeys = a} :: ListStreamKeysResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListStreamKeysResponse where
  rnf ListStreamKeysResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf streamKeys

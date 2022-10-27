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
-- Module      : Amazonka.GlobalAccelerator.ListCustomRoutingListeners
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the listeners for a custom routing accelerator.
--
-- This operation returns paginated results.
module Amazonka.GlobalAccelerator.ListCustomRoutingListeners
  ( -- * Creating a Request
    ListCustomRoutingListeners (..),
    newListCustomRoutingListeners,

    -- * Request Lenses
    listCustomRoutingListeners_nextToken,
    listCustomRoutingListeners_maxResults,
    listCustomRoutingListeners_acceleratorArn,

    -- * Destructuring the Response
    ListCustomRoutingListenersResponse (..),
    newListCustomRoutingListenersResponse,

    -- * Response Lenses
    listCustomRoutingListenersResponse_nextToken,
    listCustomRoutingListenersResponse_listeners,
    listCustomRoutingListenersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GlobalAccelerator.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListCustomRoutingListeners' smart constructor.
data ListCustomRoutingListeners = ListCustomRoutingListeners'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of listener objects that you want to return with this call.
    -- The default value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the accelerator to list listeners for.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomRoutingListeners' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCustomRoutingListeners_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'maxResults', 'listCustomRoutingListeners_maxResults' - The number of listener objects that you want to return with this call.
-- The default value is 10.
--
-- 'acceleratorArn', 'listCustomRoutingListeners_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator to list listeners for.
newListCustomRoutingListeners ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  ListCustomRoutingListeners
newListCustomRoutingListeners pAcceleratorArn_ =
  ListCustomRoutingListeners'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      acceleratorArn = pAcceleratorArn_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listCustomRoutingListeners_nextToken :: Lens.Lens' ListCustomRoutingListeners (Prelude.Maybe Prelude.Text)
listCustomRoutingListeners_nextToken = Lens.lens (\ListCustomRoutingListeners' {nextToken} -> nextToken) (\s@ListCustomRoutingListeners' {} a -> s {nextToken = a} :: ListCustomRoutingListeners)

-- | The number of listener objects that you want to return with this call.
-- The default value is 10.
listCustomRoutingListeners_maxResults :: Lens.Lens' ListCustomRoutingListeners (Prelude.Maybe Prelude.Natural)
listCustomRoutingListeners_maxResults = Lens.lens (\ListCustomRoutingListeners' {maxResults} -> maxResults) (\s@ListCustomRoutingListeners' {} a -> s {maxResults = a} :: ListCustomRoutingListeners)

-- | The Amazon Resource Name (ARN) of the accelerator to list listeners for.
listCustomRoutingListeners_acceleratorArn :: Lens.Lens' ListCustomRoutingListeners Prelude.Text
listCustomRoutingListeners_acceleratorArn = Lens.lens (\ListCustomRoutingListeners' {acceleratorArn} -> acceleratorArn) (\s@ListCustomRoutingListeners' {} a -> s {acceleratorArn = a} :: ListCustomRoutingListeners)

instance Core.AWSPager ListCustomRoutingListeners where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCustomRoutingListenersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCustomRoutingListenersResponse_listeners
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCustomRoutingListeners_nextToken
          Lens..~ rs
          Lens.^? listCustomRoutingListenersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListCustomRoutingListeners where
  type
    AWSResponse ListCustomRoutingListeners =
      ListCustomRoutingListenersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCustomRoutingListenersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Listeners" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCustomRoutingListeners where
  hashWithSalt _salt ListCustomRoutingListeners' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` acceleratorArn

instance Prelude.NFData ListCustomRoutingListeners where
  rnf ListCustomRoutingListeners' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf acceleratorArn

instance Core.ToHeaders ListCustomRoutingListeners where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.ListCustomRoutingListeners" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCustomRoutingListeners where
  toJSON ListCustomRoutingListeners' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath ListCustomRoutingListeners where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCustomRoutingListeners where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCustomRoutingListenersResponse' smart constructor.
data ListCustomRoutingListenersResponse = ListCustomRoutingListenersResponse'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of listeners for a custom routing accelerator.
    listeners :: Prelude.Maybe [CustomRoutingListener],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomRoutingListenersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCustomRoutingListenersResponse_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'listeners', 'listCustomRoutingListenersResponse_listeners' - The list of listeners for a custom routing accelerator.
--
-- 'httpStatus', 'listCustomRoutingListenersResponse_httpStatus' - The response's http status code.
newListCustomRoutingListenersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCustomRoutingListenersResponse
newListCustomRoutingListenersResponse pHttpStatus_ =
  ListCustomRoutingListenersResponse'
    { nextToken =
        Prelude.Nothing,
      listeners = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listCustomRoutingListenersResponse_nextToken :: Lens.Lens' ListCustomRoutingListenersResponse (Prelude.Maybe Prelude.Text)
listCustomRoutingListenersResponse_nextToken = Lens.lens (\ListCustomRoutingListenersResponse' {nextToken} -> nextToken) (\s@ListCustomRoutingListenersResponse' {} a -> s {nextToken = a} :: ListCustomRoutingListenersResponse)

-- | The list of listeners for a custom routing accelerator.
listCustomRoutingListenersResponse_listeners :: Lens.Lens' ListCustomRoutingListenersResponse (Prelude.Maybe [CustomRoutingListener])
listCustomRoutingListenersResponse_listeners = Lens.lens (\ListCustomRoutingListenersResponse' {listeners} -> listeners) (\s@ListCustomRoutingListenersResponse' {} a -> s {listeners = a} :: ListCustomRoutingListenersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCustomRoutingListenersResponse_httpStatus :: Lens.Lens' ListCustomRoutingListenersResponse Prelude.Int
listCustomRoutingListenersResponse_httpStatus = Lens.lens (\ListCustomRoutingListenersResponse' {httpStatus} -> httpStatus) (\s@ListCustomRoutingListenersResponse' {} a -> s {httpStatus = a} :: ListCustomRoutingListenersResponse)

instance
  Prelude.NFData
    ListCustomRoutingListenersResponse
  where
  rnf ListCustomRoutingListenersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf listeners
      `Prelude.seq` Prelude.rnf httpStatus

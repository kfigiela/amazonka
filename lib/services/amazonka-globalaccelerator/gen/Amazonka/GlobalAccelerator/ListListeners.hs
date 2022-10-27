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
-- Module      : Amazonka.GlobalAccelerator.ListListeners
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the listeners for an accelerator.
--
-- This operation returns paginated results.
module Amazonka.GlobalAccelerator.ListListeners
  ( -- * Creating a Request
    ListListeners (..),
    newListListeners,

    -- * Request Lenses
    listListeners_nextToken,
    listListeners_maxResults,
    listListeners_acceleratorArn,

    -- * Destructuring the Response
    ListListenersResponse (..),
    newListListenersResponse,

    -- * Response Lenses
    listListenersResponse_nextToken,
    listListenersResponse_listeners,
    listListenersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GlobalAccelerator.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListListeners' smart constructor.
data ListListeners = ListListeners'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of listener objects that you want to return with this call.
    -- The default value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the accelerator for which you want to
    -- list listener objects.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListListeners' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listListeners_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'maxResults', 'listListeners_maxResults' - The number of listener objects that you want to return with this call.
-- The default value is 10.
--
-- 'acceleratorArn', 'listListeners_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator for which you want to
-- list listener objects.
newListListeners ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  ListListeners
newListListeners pAcceleratorArn_ =
  ListListeners'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      acceleratorArn = pAcceleratorArn_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listListeners_nextToken :: Lens.Lens' ListListeners (Prelude.Maybe Prelude.Text)
listListeners_nextToken = Lens.lens (\ListListeners' {nextToken} -> nextToken) (\s@ListListeners' {} a -> s {nextToken = a} :: ListListeners)

-- | The number of listener objects that you want to return with this call.
-- The default value is 10.
listListeners_maxResults :: Lens.Lens' ListListeners (Prelude.Maybe Prelude.Natural)
listListeners_maxResults = Lens.lens (\ListListeners' {maxResults} -> maxResults) (\s@ListListeners' {} a -> s {maxResults = a} :: ListListeners)

-- | The Amazon Resource Name (ARN) of the accelerator for which you want to
-- list listener objects.
listListeners_acceleratorArn :: Lens.Lens' ListListeners Prelude.Text
listListeners_acceleratorArn = Lens.lens (\ListListeners' {acceleratorArn} -> acceleratorArn) (\s@ListListeners' {} a -> s {acceleratorArn = a} :: ListListeners)

instance Core.AWSPager ListListeners where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listListenersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listListenersResponse_listeners Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listListeners_nextToken
          Lens..~ rs
          Lens.^? listListenersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListListeners where
  type
    AWSResponse ListListeners =
      ListListenersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListListenersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Listeners" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListListeners where
  hashWithSalt _salt ListListeners' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` acceleratorArn

instance Prelude.NFData ListListeners where
  rnf ListListeners' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf acceleratorArn

instance Core.ToHeaders ListListeners where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.ListListeners" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListListeners where
  toJSON ListListeners' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath ListListeners where
  toPath = Prelude.const "/"

instance Core.ToQuery ListListeners where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListListenersResponse' smart constructor.
data ListListenersResponse = ListListenersResponse'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of listeners for an accelerator.
    listeners :: Prelude.Maybe [Listener],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListListenersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listListenersResponse_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'listeners', 'listListenersResponse_listeners' - The list of listeners for an accelerator.
--
-- 'httpStatus', 'listListenersResponse_httpStatus' - The response's http status code.
newListListenersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListListenersResponse
newListListenersResponse pHttpStatus_ =
  ListListenersResponse'
    { nextToken = Prelude.Nothing,
      listeners = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listListenersResponse_nextToken :: Lens.Lens' ListListenersResponse (Prelude.Maybe Prelude.Text)
listListenersResponse_nextToken = Lens.lens (\ListListenersResponse' {nextToken} -> nextToken) (\s@ListListenersResponse' {} a -> s {nextToken = a} :: ListListenersResponse)

-- | The list of listeners for an accelerator.
listListenersResponse_listeners :: Lens.Lens' ListListenersResponse (Prelude.Maybe [Listener])
listListenersResponse_listeners = Lens.lens (\ListListenersResponse' {listeners} -> listeners) (\s@ListListenersResponse' {} a -> s {listeners = a} :: ListListenersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listListenersResponse_httpStatus :: Lens.Lens' ListListenersResponse Prelude.Int
listListenersResponse_httpStatus = Lens.lens (\ListListenersResponse' {httpStatus} -> httpStatus) (\s@ListListenersResponse' {} a -> s {httpStatus = a} :: ListListenersResponse)

instance Prelude.NFData ListListenersResponse where
  rnf ListListenersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf listeners
      `Prelude.seq` Prelude.rnf httpStatus

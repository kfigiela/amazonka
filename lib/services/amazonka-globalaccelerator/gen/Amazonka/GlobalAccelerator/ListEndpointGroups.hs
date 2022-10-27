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
-- Module      : Amazonka.GlobalAccelerator.ListEndpointGroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the endpoint groups that are associated with a listener.
--
-- This operation returns paginated results.
module Amazonka.GlobalAccelerator.ListEndpointGroups
  ( -- * Creating a Request
    ListEndpointGroups (..),
    newListEndpointGroups,

    -- * Request Lenses
    listEndpointGroups_nextToken,
    listEndpointGroups_maxResults,
    listEndpointGroups_listenerArn,

    -- * Destructuring the Response
    ListEndpointGroupsResponse (..),
    newListEndpointGroupsResponse,

    -- * Response Lenses
    listEndpointGroupsResponse_nextToken,
    listEndpointGroupsResponse_endpointGroups,
    listEndpointGroupsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GlobalAccelerator.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListEndpointGroups' smart constructor.
data ListEndpointGroups = ListEndpointGroups'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of endpoint group objects that you want to return with this
    -- call. The default value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the listener.
    listenerArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEndpointGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEndpointGroups_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'maxResults', 'listEndpointGroups_maxResults' - The number of endpoint group objects that you want to return with this
-- call. The default value is 10.
--
-- 'listenerArn', 'listEndpointGroups_listenerArn' - The Amazon Resource Name (ARN) of the listener.
newListEndpointGroups ::
  -- | 'listenerArn'
  Prelude.Text ->
  ListEndpointGroups
newListEndpointGroups pListenerArn_ =
  ListEndpointGroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      listenerArn = pListenerArn_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listEndpointGroups_nextToken :: Lens.Lens' ListEndpointGroups (Prelude.Maybe Prelude.Text)
listEndpointGroups_nextToken = Lens.lens (\ListEndpointGroups' {nextToken} -> nextToken) (\s@ListEndpointGroups' {} a -> s {nextToken = a} :: ListEndpointGroups)

-- | The number of endpoint group objects that you want to return with this
-- call. The default value is 10.
listEndpointGroups_maxResults :: Lens.Lens' ListEndpointGroups (Prelude.Maybe Prelude.Natural)
listEndpointGroups_maxResults = Lens.lens (\ListEndpointGroups' {maxResults} -> maxResults) (\s@ListEndpointGroups' {} a -> s {maxResults = a} :: ListEndpointGroups)

-- | The Amazon Resource Name (ARN) of the listener.
listEndpointGroups_listenerArn :: Lens.Lens' ListEndpointGroups Prelude.Text
listEndpointGroups_listenerArn = Lens.lens (\ListEndpointGroups' {listenerArn} -> listenerArn) (\s@ListEndpointGroups' {} a -> s {listenerArn = a} :: ListEndpointGroups)

instance Core.AWSPager ListEndpointGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEndpointGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listEndpointGroupsResponse_endpointGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listEndpointGroups_nextToken
          Lens..~ rs
          Lens.^? listEndpointGroupsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListEndpointGroups where
  type
    AWSResponse ListEndpointGroups =
      ListEndpointGroupsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEndpointGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "EndpointGroups" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEndpointGroups where
  hashWithSalt _salt ListEndpointGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` listenerArn

instance Prelude.NFData ListEndpointGroups where
  rnf ListEndpointGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf listenerArn

instance Core.ToHeaders ListEndpointGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.ListEndpointGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListEndpointGroups where
  toJSON ListEndpointGroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("ListenerArn" Core..= listenerArn)
          ]
      )

instance Core.ToPath ListEndpointGroups where
  toPath = Prelude.const "/"

instance Core.ToQuery ListEndpointGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListEndpointGroupsResponse' smart constructor.
data ListEndpointGroupsResponse = ListEndpointGroupsResponse'
  { -- | The token for the next set of results. You receive this token from a
    -- previous call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of the endpoint groups associated with a listener.
    endpointGroups :: Prelude.Maybe [EndpointGroup],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEndpointGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEndpointGroupsResponse_nextToken' - The token for the next set of results. You receive this token from a
-- previous call.
--
-- 'endpointGroups', 'listEndpointGroupsResponse_endpointGroups' - The list of the endpoint groups associated with a listener.
--
-- 'httpStatus', 'listEndpointGroupsResponse_httpStatus' - The response's http status code.
newListEndpointGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEndpointGroupsResponse
newListEndpointGroupsResponse pHttpStatus_ =
  ListEndpointGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      endpointGroups = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results. You receive this token from a
-- previous call.
listEndpointGroupsResponse_nextToken :: Lens.Lens' ListEndpointGroupsResponse (Prelude.Maybe Prelude.Text)
listEndpointGroupsResponse_nextToken = Lens.lens (\ListEndpointGroupsResponse' {nextToken} -> nextToken) (\s@ListEndpointGroupsResponse' {} a -> s {nextToken = a} :: ListEndpointGroupsResponse)

-- | The list of the endpoint groups associated with a listener.
listEndpointGroupsResponse_endpointGroups :: Lens.Lens' ListEndpointGroupsResponse (Prelude.Maybe [EndpointGroup])
listEndpointGroupsResponse_endpointGroups = Lens.lens (\ListEndpointGroupsResponse' {endpointGroups} -> endpointGroups) (\s@ListEndpointGroupsResponse' {} a -> s {endpointGroups = a} :: ListEndpointGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listEndpointGroupsResponse_httpStatus :: Lens.Lens' ListEndpointGroupsResponse Prelude.Int
listEndpointGroupsResponse_httpStatus = Lens.lens (\ListEndpointGroupsResponse' {httpStatus} -> httpStatus) (\s@ListEndpointGroupsResponse' {} a -> s {httpStatus = a} :: ListEndpointGroupsResponse)

instance Prelude.NFData ListEndpointGroupsResponse where
  rnf ListEndpointGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf endpointGroups
      `Prelude.seq` Prelude.rnf httpStatus

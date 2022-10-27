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
-- Module      : Amazonka.Route53RecoveryReadiness.GetReadinessCheckStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the readiness status for an individual readiness check. To see the
-- overall readiness status for a recovery group, that considers the
-- readiness status for all the readiness checks in a recovery group, use
-- GetRecoveryGroupReadinessSummary.
--
-- This operation returns paginated results.
module Amazonka.Route53RecoveryReadiness.GetReadinessCheckStatus
  ( -- * Creating a Request
    GetReadinessCheckStatus (..),
    newGetReadinessCheckStatus,

    -- * Request Lenses
    getReadinessCheckStatus_nextToken,
    getReadinessCheckStatus_maxResults,
    getReadinessCheckStatus_readinessCheckName,

    -- * Destructuring the Response
    GetReadinessCheckStatusResponse (..),
    newGetReadinessCheckStatusResponse,

    -- * Response Lenses
    getReadinessCheckStatusResponse_nextToken,
    getReadinessCheckStatusResponse_readiness,
    getReadinessCheckStatusResponse_messages,
    getReadinessCheckStatusResponse_resources,
    getReadinessCheckStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Route53RecoveryReadiness.Types

-- | /See:/ 'newGetReadinessCheckStatus' smart constructor.
data GetReadinessCheckStatus = GetReadinessCheckStatus'
  { -- | The token that identifies which batch of results you want to see.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of objects that you want to return with this call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Name of a readiness check.
    readinessCheckName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReadinessCheckStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getReadinessCheckStatus_nextToken' - The token that identifies which batch of results you want to see.
--
-- 'maxResults', 'getReadinessCheckStatus_maxResults' - The number of objects that you want to return with this call.
--
-- 'readinessCheckName', 'getReadinessCheckStatus_readinessCheckName' - Name of a readiness check.
newGetReadinessCheckStatus ::
  -- | 'readinessCheckName'
  Prelude.Text ->
  GetReadinessCheckStatus
newGetReadinessCheckStatus pReadinessCheckName_ =
  GetReadinessCheckStatus'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      readinessCheckName = pReadinessCheckName_
    }

-- | The token that identifies which batch of results you want to see.
getReadinessCheckStatus_nextToken :: Lens.Lens' GetReadinessCheckStatus (Prelude.Maybe Prelude.Text)
getReadinessCheckStatus_nextToken = Lens.lens (\GetReadinessCheckStatus' {nextToken} -> nextToken) (\s@GetReadinessCheckStatus' {} a -> s {nextToken = a} :: GetReadinessCheckStatus)

-- | The number of objects that you want to return with this call.
getReadinessCheckStatus_maxResults :: Lens.Lens' GetReadinessCheckStatus (Prelude.Maybe Prelude.Natural)
getReadinessCheckStatus_maxResults = Lens.lens (\GetReadinessCheckStatus' {maxResults} -> maxResults) (\s@GetReadinessCheckStatus' {} a -> s {maxResults = a} :: GetReadinessCheckStatus)

-- | Name of a readiness check.
getReadinessCheckStatus_readinessCheckName :: Lens.Lens' GetReadinessCheckStatus Prelude.Text
getReadinessCheckStatus_readinessCheckName = Lens.lens (\GetReadinessCheckStatus' {readinessCheckName} -> readinessCheckName) (\s@GetReadinessCheckStatus' {} a -> s {readinessCheckName = a} :: GetReadinessCheckStatus)

instance Core.AWSPager GetReadinessCheckStatus where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getReadinessCheckStatusResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getReadinessCheckStatusResponse_resources
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getReadinessCheckStatus_nextToken
          Lens..~ rs
          Lens.^? getReadinessCheckStatusResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetReadinessCheckStatus where
  type
    AWSResponse GetReadinessCheckStatus =
      GetReadinessCheckStatusResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetReadinessCheckStatusResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "readiness")
            Prelude.<*> (x Core..?> "messages" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "resources" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetReadinessCheckStatus where
  hashWithSalt _salt GetReadinessCheckStatus' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` readinessCheckName

instance Prelude.NFData GetReadinessCheckStatus where
  rnf GetReadinessCheckStatus' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf readinessCheckName

instance Core.ToHeaders GetReadinessCheckStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetReadinessCheckStatus where
  toPath GetReadinessCheckStatus' {..} =
    Prelude.mconcat
      [ "/readinesschecks/",
        Core.toBS readinessCheckName,
        "/status"
      ]

instance Core.ToQuery GetReadinessCheckStatus where
  toQuery GetReadinessCheckStatus' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetReadinessCheckStatusResponse' smart constructor.
data GetReadinessCheckStatusResponse = GetReadinessCheckStatusResponse'
  { -- | The token that identifies which batch of results you want to see.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The readiness at rule level.
    readiness :: Prelude.Maybe Readiness,
    -- | Top level messages for readiness check status
    messages :: Prelude.Maybe [Message],
    -- | Summary of the readiness of resources.
    resources :: Prelude.Maybe [ResourceResult],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReadinessCheckStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getReadinessCheckStatusResponse_nextToken' - The token that identifies which batch of results you want to see.
--
-- 'readiness', 'getReadinessCheckStatusResponse_readiness' - The readiness at rule level.
--
-- 'messages', 'getReadinessCheckStatusResponse_messages' - Top level messages for readiness check status
--
-- 'resources', 'getReadinessCheckStatusResponse_resources' - Summary of the readiness of resources.
--
-- 'httpStatus', 'getReadinessCheckStatusResponse_httpStatus' - The response's http status code.
newGetReadinessCheckStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetReadinessCheckStatusResponse
newGetReadinessCheckStatusResponse pHttpStatus_ =
  GetReadinessCheckStatusResponse'
    { nextToken =
        Prelude.Nothing,
      readiness = Prelude.Nothing,
      messages = Prelude.Nothing,
      resources = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token that identifies which batch of results you want to see.
getReadinessCheckStatusResponse_nextToken :: Lens.Lens' GetReadinessCheckStatusResponse (Prelude.Maybe Prelude.Text)
getReadinessCheckStatusResponse_nextToken = Lens.lens (\GetReadinessCheckStatusResponse' {nextToken} -> nextToken) (\s@GetReadinessCheckStatusResponse' {} a -> s {nextToken = a} :: GetReadinessCheckStatusResponse)

-- | The readiness at rule level.
getReadinessCheckStatusResponse_readiness :: Lens.Lens' GetReadinessCheckStatusResponse (Prelude.Maybe Readiness)
getReadinessCheckStatusResponse_readiness = Lens.lens (\GetReadinessCheckStatusResponse' {readiness} -> readiness) (\s@GetReadinessCheckStatusResponse' {} a -> s {readiness = a} :: GetReadinessCheckStatusResponse)

-- | Top level messages for readiness check status
getReadinessCheckStatusResponse_messages :: Lens.Lens' GetReadinessCheckStatusResponse (Prelude.Maybe [Message])
getReadinessCheckStatusResponse_messages = Lens.lens (\GetReadinessCheckStatusResponse' {messages} -> messages) (\s@GetReadinessCheckStatusResponse' {} a -> s {messages = a} :: GetReadinessCheckStatusResponse) Prelude.. Lens.mapping Lens.coerced

-- | Summary of the readiness of resources.
getReadinessCheckStatusResponse_resources :: Lens.Lens' GetReadinessCheckStatusResponse (Prelude.Maybe [ResourceResult])
getReadinessCheckStatusResponse_resources = Lens.lens (\GetReadinessCheckStatusResponse' {resources} -> resources) (\s@GetReadinessCheckStatusResponse' {} a -> s {resources = a} :: GetReadinessCheckStatusResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getReadinessCheckStatusResponse_httpStatus :: Lens.Lens' GetReadinessCheckStatusResponse Prelude.Int
getReadinessCheckStatusResponse_httpStatus = Lens.lens (\GetReadinessCheckStatusResponse' {httpStatus} -> httpStatus) (\s@GetReadinessCheckStatusResponse' {} a -> s {httpStatus = a} :: GetReadinessCheckStatusResponse)

instance
  Prelude.NFData
    GetReadinessCheckStatusResponse
  where
  rnf GetReadinessCheckStatusResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf readiness
      `Prelude.seq` Prelude.rnf messages
      `Prelude.seq` Prelude.rnf resources
      `Prelude.seq` Prelude.rnf httpStatus

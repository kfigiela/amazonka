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
-- Module      : Amazonka.AuditManager.ListControlInsightsByControlDomain
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the latest analytics data for controls within a specific control
-- domain across all active assessments.
--
-- Control insights are listed only if the control belongs to the control
-- domain that was specified and the control collected evidence on the
-- @lastUpdated@ date of @controlInsightsMetadata@. If neither of these
-- conditions are met, no data is listed for that control.
module Amazonka.AuditManager.ListControlInsightsByControlDomain
  ( -- * Creating a Request
    ListControlInsightsByControlDomain (..),
    newListControlInsightsByControlDomain,

    -- * Request Lenses
    listControlInsightsByControlDomain_nextToken,
    listControlInsightsByControlDomain_maxResults,
    listControlInsightsByControlDomain_controlDomainId,

    -- * Destructuring the Response
    ListControlInsightsByControlDomainResponse (..),
    newListControlInsightsByControlDomainResponse,

    -- * Response Lenses
    listControlInsightsByControlDomainResponse_nextToken,
    listControlInsightsByControlDomainResponse_controlInsightsMetadata,
    listControlInsightsByControlDomainResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListControlInsightsByControlDomain' smart constructor.
data ListControlInsightsByControlDomain = ListControlInsightsByControlDomain'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results on a page or for an API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier for the control domain.
    controlDomainId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListControlInsightsByControlDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listControlInsightsByControlDomain_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'maxResults', 'listControlInsightsByControlDomain_maxResults' - Represents the maximum number of results on a page or for an API request
-- call.
--
-- 'controlDomainId', 'listControlInsightsByControlDomain_controlDomainId' - The unique identifier for the control domain.
newListControlInsightsByControlDomain ::
  -- | 'controlDomainId'
  Prelude.Text ->
  ListControlInsightsByControlDomain
newListControlInsightsByControlDomain
  pControlDomainId_ =
    ListControlInsightsByControlDomain'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        controlDomainId = pControlDomainId_
      }

-- | The pagination token that\'s used to fetch the next set of results.
listControlInsightsByControlDomain_nextToken :: Lens.Lens' ListControlInsightsByControlDomain (Prelude.Maybe Prelude.Text)
listControlInsightsByControlDomain_nextToken = Lens.lens (\ListControlInsightsByControlDomain' {nextToken} -> nextToken) (\s@ListControlInsightsByControlDomain' {} a -> s {nextToken = a} :: ListControlInsightsByControlDomain)

-- | Represents the maximum number of results on a page or for an API request
-- call.
listControlInsightsByControlDomain_maxResults :: Lens.Lens' ListControlInsightsByControlDomain (Prelude.Maybe Prelude.Natural)
listControlInsightsByControlDomain_maxResults = Lens.lens (\ListControlInsightsByControlDomain' {maxResults} -> maxResults) (\s@ListControlInsightsByControlDomain' {} a -> s {maxResults = a} :: ListControlInsightsByControlDomain)

-- | The unique identifier for the control domain.
listControlInsightsByControlDomain_controlDomainId :: Lens.Lens' ListControlInsightsByControlDomain Prelude.Text
listControlInsightsByControlDomain_controlDomainId = Lens.lens (\ListControlInsightsByControlDomain' {controlDomainId} -> controlDomainId) (\s@ListControlInsightsByControlDomain' {} a -> s {controlDomainId = a} :: ListControlInsightsByControlDomain)

instance
  Core.AWSRequest
    ListControlInsightsByControlDomain
  where
  type
    AWSResponse ListControlInsightsByControlDomain =
      ListControlInsightsByControlDomainResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListControlInsightsByControlDomainResponse'
            Prelude.<$> (x Core..?> "nextToken")
              Prelude.<*> ( x Core..?> "controlInsightsMetadata"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListControlInsightsByControlDomain
  where
  hashWithSalt
    _salt
    ListControlInsightsByControlDomain' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` controlDomainId

instance
  Prelude.NFData
    ListControlInsightsByControlDomain
  where
  rnf ListControlInsightsByControlDomain' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf controlDomainId

instance
  Core.ToHeaders
    ListControlInsightsByControlDomain
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToPath
    ListControlInsightsByControlDomain
  where
  toPath = Prelude.const "/insights/controls"

instance
  Core.ToQuery
    ListControlInsightsByControlDomain
  where
  toQuery ListControlInsightsByControlDomain' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "controlDomainId" Core.=: controlDomainId
      ]

-- | /See:/ 'newListControlInsightsByControlDomainResponse' smart constructor.
data ListControlInsightsByControlDomainResponse = ListControlInsightsByControlDomainResponse'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The control analytics data that the @ListControlInsightsByControlDomain@
    -- API returned.
    controlInsightsMetadata :: Prelude.Maybe [ControlInsightsMetadataItem],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListControlInsightsByControlDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listControlInsightsByControlDomainResponse_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'controlInsightsMetadata', 'listControlInsightsByControlDomainResponse_controlInsightsMetadata' - The control analytics data that the @ListControlInsightsByControlDomain@
-- API returned.
--
-- 'httpStatus', 'listControlInsightsByControlDomainResponse_httpStatus' - The response's http status code.
newListControlInsightsByControlDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListControlInsightsByControlDomainResponse
newListControlInsightsByControlDomainResponse
  pHttpStatus_ =
    ListControlInsightsByControlDomainResponse'
      { nextToken =
          Prelude.Nothing,
        controlInsightsMetadata =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The pagination token that\'s used to fetch the next set of results.
listControlInsightsByControlDomainResponse_nextToken :: Lens.Lens' ListControlInsightsByControlDomainResponse (Prelude.Maybe Prelude.Text)
listControlInsightsByControlDomainResponse_nextToken = Lens.lens (\ListControlInsightsByControlDomainResponse' {nextToken} -> nextToken) (\s@ListControlInsightsByControlDomainResponse' {} a -> s {nextToken = a} :: ListControlInsightsByControlDomainResponse)

-- | The control analytics data that the @ListControlInsightsByControlDomain@
-- API returned.
listControlInsightsByControlDomainResponse_controlInsightsMetadata :: Lens.Lens' ListControlInsightsByControlDomainResponse (Prelude.Maybe [ControlInsightsMetadataItem])
listControlInsightsByControlDomainResponse_controlInsightsMetadata = Lens.lens (\ListControlInsightsByControlDomainResponse' {controlInsightsMetadata} -> controlInsightsMetadata) (\s@ListControlInsightsByControlDomainResponse' {} a -> s {controlInsightsMetadata = a} :: ListControlInsightsByControlDomainResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listControlInsightsByControlDomainResponse_httpStatus :: Lens.Lens' ListControlInsightsByControlDomainResponse Prelude.Int
listControlInsightsByControlDomainResponse_httpStatus = Lens.lens (\ListControlInsightsByControlDomainResponse' {httpStatus} -> httpStatus) (\s@ListControlInsightsByControlDomainResponse' {} a -> s {httpStatus = a} :: ListControlInsightsByControlDomainResponse)

instance
  Prelude.NFData
    ListControlInsightsByControlDomainResponse
  where
  rnf ListControlInsightsByControlDomainResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf controlInsightsMetadata
      `Prelude.seq` Prelude.rnf httpStatus

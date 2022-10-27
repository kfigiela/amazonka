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
-- Module      : Amazonka.Connect.ListContactFlowModules
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the flow modules for the specified Amazon
-- Connect instance.
--
-- This operation returns paginated results.
module Amazonka.Connect.ListContactFlowModules
  ( -- * Creating a Request
    ListContactFlowModules (..),
    newListContactFlowModules,

    -- * Request Lenses
    listContactFlowModules_nextToken,
    listContactFlowModules_contactFlowModuleState,
    listContactFlowModules_maxResults,
    listContactFlowModules_instanceId,

    -- * Destructuring the Response
    ListContactFlowModulesResponse (..),
    newListContactFlowModulesResponse,

    -- * Response Lenses
    listContactFlowModulesResponse_nextToken,
    listContactFlowModulesResponse_contactFlowModulesSummaryList,
    listContactFlowModulesResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListContactFlowModules' smart constructor.
data ListContactFlowModules = ListContactFlowModules'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The state of the flow module.
    contactFlowModuleState :: Prelude.Maybe ContactFlowModuleState,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListContactFlowModules' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listContactFlowModules_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'contactFlowModuleState', 'listContactFlowModules_contactFlowModuleState' - The state of the flow module.
--
-- 'maxResults', 'listContactFlowModules_maxResults' - The maximum number of results to return per page.
--
-- 'instanceId', 'listContactFlowModules_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newListContactFlowModules ::
  -- | 'instanceId'
  Prelude.Text ->
  ListContactFlowModules
newListContactFlowModules pInstanceId_ =
  ListContactFlowModules'
    { nextToken =
        Prelude.Nothing,
      contactFlowModuleState = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listContactFlowModules_nextToken :: Lens.Lens' ListContactFlowModules (Prelude.Maybe Prelude.Text)
listContactFlowModules_nextToken = Lens.lens (\ListContactFlowModules' {nextToken} -> nextToken) (\s@ListContactFlowModules' {} a -> s {nextToken = a} :: ListContactFlowModules)

-- | The state of the flow module.
listContactFlowModules_contactFlowModuleState :: Lens.Lens' ListContactFlowModules (Prelude.Maybe ContactFlowModuleState)
listContactFlowModules_contactFlowModuleState = Lens.lens (\ListContactFlowModules' {contactFlowModuleState} -> contactFlowModuleState) (\s@ListContactFlowModules' {} a -> s {contactFlowModuleState = a} :: ListContactFlowModules)

-- | The maximum number of results to return per page.
listContactFlowModules_maxResults :: Lens.Lens' ListContactFlowModules (Prelude.Maybe Prelude.Natural)
listContactFlowModules_maxResults = Lens.lens (\ListContactFlowModules' {maxResults} -> maxResults) (\s@ListContactFlowModules' {} a -> s {maxResults = a} :: ListContactFlowModules)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listContactFlowModules_instanceId :: Lens.Lens' ListContactFlowModules Prelude.Text
listContactFlowModules_instanceId = Lens.lens (\ListContactFlowModules' {instanceId} -> instanceId) (\s@ListContactFlowModules' {} a -> s {instanceId = a} :: ListContactFlowModules)

instance Core.AWSPager ListContactFlowModules where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listContactFlowModulesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listContactFlowModulesResponse_contactFlowModulesSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listContactFlowModules_nextToken
          Lens..~ rs
          Lens.^? listContactFlowModulesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListContactFlowModules where
  type
    AWSResponse ListContactFlowModules =
      ListContactFlowModulesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListContactFlowModulesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ContactFlowModulesSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListContactFlowModules where
  hashWithSalt _salt ListContactFlowModules' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` contactFlowModuleState
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData ListContactFlowModules where
  rnf ListContactFlowModules' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf contactFlowModuleState
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders ListContactFlowModules where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListContactFlowModules where
  toPath ListContactFlowModules' {..} =
    Prelude.mconcat
      [ "/contact-flow-modules-summary/",
        Core.toBS instanceId
      ]

instance Core.ToQuery ListContactFlowModules where
  toQuery ListContactFlowModules' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "state" Core.=: contactFlowModuleState,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListContactFlowModulesResponse' smart constructor.
data ListContactFlowModulesResponse = ListContactFlowModulesResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the flow module.
    contactFlowModulesSummaryList :: Prelude.Maybe [ContactFlowModuleSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListContactFlowModulesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listContactFlowModulesResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'contactFlowModulesSummaryList', 'listContactFlowModulesResponse_contactFlowModulesSummaryList' - Information about the flow module.
--
-- 'httpStatus', 'listContactFlowModulesResponse_httpStatus' - The response's http status code.
newListContactFlowModulesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListContactFlowModulesResponse
newListContactFlowModulesResponse pHttpStatus_ =
  ListContactFlowModulesResponse'
    { nextToken =
        Prelude.Nothing,
      contactFlowModulesSummaryList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
listContactFlowModulesResponse_nextToken :: Lens.Lens' ListContactFlowModulesResponse (Prelude.Maybe Prelude.Text)
listContactFlowModulesResponse_nextToken = Lens.lens (\ListContactFlowModulesResponse' {nextToken} -> nextToken) (\s@ListContactFlowModulesResponse' {} a -> s {nextToken = a} :: ListContactFlowModulesResponse)

-- | Information about the flow module.
listContactFlowModulesResponse_contactFlowModulesSummaryList :: Lens.Lens' ListContactFlowModulesResponse (Prelude.Maybe [ContactFlowModuleSummary])
listContactFlowModulesResponse_contactFlowModulesSummaryList = Lens.lens (\ListContactFlowModulesResponse' {contactFlowModulesSummaryList} -> contactFlowModulesSummaryList) (\s@ListContactFlowModulesResponse' {} a -> s {contactFlowModulesSummaryList = a} :: ListContactFlowModulesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listContactFlowModulesResponse_httpStatus :: Lens.Lens' ListContactFlowModulesResponse Prelude.Int
listContactFlowModulesResponse_httpStatus = Lens.lens (\ListContactFlowModulesResponse' {httpStatus} -> httpStatus) (\s@ListContactFlowModulesResponse' {} a -> s {httpStatus = a} :: ListContactFlowModulesResponse)

instance
  Prelude.NFData
    ListContactFlowModulesResponse
  where
  rnf ListContactFlowModulesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf contactFlowModulesSummaryList
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.MigrationHubOrchestrator.ListPlugins
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List AWS Migration Hub Orchestrator plugins.
--
-- This operation returns paginated results.
module Amazonka.MigrationHubOrchestrator.ListPlugins
  ( -- * Creating a Request
    ListPlugins (..),
    newListPlugins,

    -- * Request Lenses
    listPlugins_nextToken,
    listPlugins_maxResults,

    -- * Destructuring the Response
    ListPluginsResponse (..),
    newListPluginsResponse,

    -- * Response Lenses
    listPluginsResponse_nextToken,
    listPluginsResponse_plugins,
    listPluginsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPlugins' smart constructor.
data ListPlugins = ListPlugins'
  { -- | The pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of plugins that can be returned.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPlugins' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPlugins_nextToken' - The pagination token.
--
-- 'maxResults', 'listPlugins_maxResults' - The maximum number of plugins that can be returned.
newListPlugins ::
  ListPlugins
newListPlugins =
  ListPlugins'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token.
listPlugins_nextToken :: Lens.Lens' ListPlugins (Prelude.Maybe Prelude.Text)
listPlugins_nextToken = Lens.lens (\ListPlugins' {nextToken} -> nextToken) (\s@ListPlugins' {} a -> s {nextToken = a} :: ListPlugins)

-- | The maximum number of plugins that can be returned.
listPlugins_maxResults :: Lens.Lens' ListPlugins (Prelude.Maybe Prelude.Natural)
listPlugins_maxResults = Lens.lens (\ListPlugins' {maxResults} -> maxResults) (\s@ListPlugins' {} a -> s {maxResults = a} :: ListPlugins)

instance Core.AWSPager ListPlugins where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPluginsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPluginsResponse_plugins Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPlugins_nextToken
          Lens..~ rs
          Lens.^? listPluginsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListPlugins where
  type AWSResponse ListPlugins = ListPluginsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPluginsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "plugins" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPlugins where
  hashWithSalt _salt ListPlugins' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListPlugins where
  rnf ListPlugins' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListPlugins where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListPlugins where
  toPath = Prelude.const "/plugins"

instance Core.ToQuery ListPlugins where
  toQuery ListPlugins' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListPluginsResponse' smart constructor.
data ListPluginsResponse = ListPluginsResponse'
  { -- | The pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Migration Hub Orchestrator plugins.
    plugins :: Prelude.Maybe [PluginSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPluginsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPluginsResponse_nextToken' - The pagination token.
--
-- 'plugins', 'listPluginsResponse_plugins' - Migration Hub Orchestrator plugins.
--
-- 'httpStatus', 'listPluginsResponse_httpStatus' - The response's http status code.
newListPluginsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPluginsResponse
newListPluginsResponse pHttpStatus_ =
  ListPluginsResponse'
    { nextToken = Prelude.Nothing,
      plugins = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token.
listPluginsResponse_nextToken :: Lens.Lens' ListPluginsResponse (Prelude.Maybe Prelude.Text)
listPluginsResponse_nextToken = Lens.lens (\ListPluginsResponse' {nextToken} -> nextToken) (\s@ListPluginsResponse' {} a -> s {nextToken = a} :: ListPluginsResponse)

-- | Migration Hub Orchestrator plugins.
listPluginsResponse_plugins :: Lens.Lens' ListPluginsResponse (Prelude.Maybe [PluginSummary])
listPluginsResponse_plugins = Lens.lens (\ListPluginsResponse' {plugins} -> plugins) (\s@ListPluginsResponse' {} a -> s {plugins = a} :: ListPluginsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPluginsResponse_httpStatus :: Lens.Lens' ListPluginsResponse Prelude.Int
listPluginsResponse_httpStatus = Lens.lens (\ListPluginsResponse' {httpStatus} -> httpStatus) (\s@ListPluginsResponse' {} a -> s {httpStatus = a} :: ListPluginsResponse)

instance Prelude.NFData ListPluginsResponse where
  rnf ListPluginsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf plugins
      `Prelude.seq` Prelude.rnf httpStatus

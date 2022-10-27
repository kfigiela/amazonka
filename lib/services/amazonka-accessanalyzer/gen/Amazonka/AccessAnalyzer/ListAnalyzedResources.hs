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
-- Module      : Amazonka.AccessAnalyzer.ListAnalyzedResources
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources of the specified type that have been
-- analyzed by the specified analyzer..
--
-- This operation returns paginated results.
module Amazonka.AccessAnalyzer.ListAnalyzedResources
  ( -- * Creating a Request
    ListAnalyzedResources (..),
    newListAnalyzedResources,

    -- * Request Lenses
    listAnalyzedResources_resourceType,
    listAnalyzedResources_nextToken,
    listAnalyzedResources_maxResults,
    listAnalyzedResources_analyzerArn,

    -- * Destructuring the Response
    ListAnalyzedResourcesResponse (..),
    newListAnalyzedResourcesResponse,

    -- * Response Lenses
    listAnalyzedResourcesResponse_nextToken,
    listAnalyzedResourcesResponse_httpStatus,
    listAnalyzedResourcesResponse_analyzedResources,
  )
where

import Amazonka.AccessAnalyzer.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Retrieves a list of resources that have been analyzed.
--
-- /See:/ 'newListAnalyzedResources' smart constructor.
data ListAnalyzedResources = ListAnalyzedResources'
  { -- | The type of resource.
    resourceType :: Prelude.Maybe ResourceType,
    -- | A token used for pagination of results returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in the response.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
    -- to retrieve a list of analyzed resources from.
    analyzerArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAnalyzedResources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'listAnalyzedResources_resourceType' - The type of resource.
--
-- 'nextToken', 'listAnalyzedResources_nextToken' - A token used for pagination of results returned.
--
-- 'maxResults', 'listAnalyzedResources_maxResults' - The maximum number of results to return in the response.
--
-- 'analyzerArn', 'listAnalyzedResources_analyzerArn' - The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to retrieve a list of analyzed resources from.
newListAnalyzedResources ::
  -- | 'analyzerArn'
  Prelude.Text ->
  ListAnalyzedResources
newListAnalyzedResources pAnalyzerArn_ =
  ListAnalyzedResources'
    { resourceType =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      analyzerArn = pAnalyzerArn_
    }

-- | The type of resource.
listAnalyzedResources_resourceType :: Lens.Lens' ListAnalyzedResources (Prelude.Maybe ResourceType)
listAnalyzedResources_resourceType = Lens.lens (\ListAnalyzedResources' {resourceType} -> resourceType) (\s@ListAnalyzedResources' {} a -> s {resourceType = a} :: ListAnalyzedResources)

-- | A token used for pagination of results returned.
listAnalyzedResources_nextToken :: Lens.Lens' ListAnalyzedResources (Prelude.Maybe Prelude.Text)
listAnalyzedResources_nextToken = Lens.lens (\ListAnalyzedResources' {nextToken} -> nextToken) (\s@ListAnalyzedResources' {} a -> s {nextToken = a} :: ListAnalyzedResources)

-- | The maximum number of results to return in the response.
listAnalyzedResources_maxResults :: Lens.Lens' ListAnalyzedResources (Prelude.Maybe Prelude.Int)
listAnalyzedResources_maxResults = Lens.lens (\ListAnalyzedResources' {maxResults} -> maxResults) (\s@ListAnalyzedResources' {} a -> s {maxResults = a} :: ListAnalyzedResources)

-- | The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to retrieve a list of analyzed resources from.
listAnalyzedResources_analyzerArn :: Lens.Lens' ListAnalyzedResources Prelude.Text
listAnalyzedResources_analyzerArn = Lens.lens (\ListAnalyzedResources' {analyzerArn} -> analyzerArn) (\s@ListAnalyzedResources' {} a -> s {analyzerArn = a} :: ListAnalyzedResources)

instance Core.AWSPager ListAnalyzedResources where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAnalyzedResourcesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listAnalyzedResourcesResponse_analyzedResources
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAnalyzedResources_nextToken
          Lens..~ rs
          Lens.^? listAnalyzedResourcesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAnalyzedResources where
  type
    AWSResponse ListAnalyzedResources =
      ListAnalyzedResourcesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAnalyzedResourcesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "analyzedResources"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListAnalyzedResources where
  hashWithSalt _salt ListAnalyzedResources' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` analyzerArn

instance Prelude.NFData ListAnalyzedResources where
  rnf ListAnalyzedResources' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf analyzerArn

instance Core.ToHeaders ListAnalyzedResources where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAnalyzedResources where
  toJSON ListAnalyzedResources' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("resourceType" Core..=) Prelude.<$> resourceType,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("analyzerArn" Core..= analyzerArn)
          ]
      )

instance Core.ToPath ListAnalyzedResources where
  toPath = Prelude.const "/analyzed-resource"

instance Core.ToQuery ListAnalyzedResources where
  toQuery = Prelude.const Prelude.mempty

-- | The response to the request.
--
-- /See:/ 'newListAnalyzedResourcesResponse' smart constructor.
data ListAnalyzedResourcesResponse = ListAnalyzedResourcesResponse'
  { -- | A token used for pagination of results returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of resources that were analyzed.
    analyzedResources :: [AnalyzedResourceSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAnalyzedResourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAnalyzedResourcesResponse_nextToken' - A token used for pagination of results returned.
--
-- 'httpStatus', 'listAnalyzedResourcesResponse_httpStatus' - The response's http status code.
--
-- 'analyzedResources', 'listAnalyzedResourcesResponse_analyzedResources' - A list of resources that were analyzed.
newListAnalyzedResourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAnalyzedResourcesResponse
newListAnalyzedResourcesResponse pHttpStatus_ =
  ListAnalyzedResourcesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      analyzedResources = Prelude.mempty
    }

-- | A token used for pagination of results returned.
listAnalyzedResourcesResponse_nextToken :: Lens.Lens' ListAnalyzedResourcesResponse (Prelude.Maybe Prelude.Text)
listAnalyzedResourcesResponse_nextToken = Lens.lens (\ListAnalyzedResourcesResponse' {nextToken} -> nextToken) (\s@ListAnalyzedResourcesResponse' {} a -> s {nextToken = a} :: ListAnalyzedResourcesResponse)

-- | The response's http status code.
listAnalyzedResourcesResponse_httpStatus :: Lens.Lens' ListAnalyzedResourcesResponse Prelude.Int
listAnalyzedResourcesResponse_httpStatus = Lens.lens (\ListAnalyzedResourcesResponse' {httpStatus} -> httpStatus) (\s@ListAnalyzedResourcesResponse' {} a -> s {httpStatus = a} :: ListAnalyzedResourcesResponse)

-- | A list of resources that were analyzed.
listAnalyzedResourcesResponse_analyzedResources :: Lens.Lens' ListAnalyzedResourcesResponse [AnalyzedResourceSummary]
listAnalyzedResourcesResponse_analyzedResources = Lens.lens (\ListAnalyzedResourcesResponse' {analyzedResources} -> analyzedResources) (\s@ListAnalyzedResourcesResponse' {} a -> s {analyzedResources = a} :: ListAnalyzedResourcesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListAnalyzedResourcesResponse where
  rnf ListAnalyzedResourcesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf analyzedResources

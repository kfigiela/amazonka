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
-- Module      : Amazonka.Transcribe.ListLanguageModels
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of custom language models that match the specified
-- criteria. If no criteria are specified, all language models are
-- returned.
--
-- To get detailed information about a specific custom language model, use
-- the operation.
module Amazonka.Transcribe.ListLanguageModels
  ( -- * Creating a Request
    ListLanguageModels (..),
    newListLanguageModels,

    -- * Request Lenses
    listLanguageModels_nextToken,
    listLanguageModels_nameContains,
    listLanguageModels_maxResults,
    listLanguageModels_statusEquals,

    -- * Destructuring the Response
    ListLanguageModelsResponse (..),
    newListLanguageModelsResponse,

    -- * Response Lenses
    listLanguageModelsResponse_nextToken,
    listLanguageModelsResponse_models,
    listLanguageModelsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newListLanguageModels' smart constructor.
data ListLanguageModels = ListLanguageModels'
  { -- | If your @ListLanguageModels@ request returns more results than can be
    -- displayed, @NextToken@ is displayed in the response with an associated
    -- string. To get the next page of results, copy this string and repeat
    -- your request, including @NextToken@ with the value of the copied string.
    -- Repeat as needed to view all your results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Returns only the custom language models that contain the specified
    -- string. The search is not case sensitive.
    nameContains :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of custom language models to return in each page of
    -- results. If there are fewer results than the value you specify, only the
    -- actual results are returned. If you don\'t specify a value, a default of
    -- 5 is used.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Returns only custom language models with the specified status. Language
    -- models are ordered by creation date, with the newest model first. If you
    -- don\'t include @StatusEquals@, all custom language models are returned.
    statusEquals :: Prelude.Maybe ModelStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLanguageModels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLanguageModels_nextToken' - If your @ListLanguageModels@ request returns more results than can be
-- displayed, @NextToken@ is displayed in the response with an associated
-- string. To get the next page of results, copy this string and repeat
-- your request, including @NextToken@ with the value of the copied string.
-- Repeat as needed to view all your results.
--
-- 'nameContains', 'listLanguageModels_nameContains' - Returns only the custom language models that contain the specified
-- string. The search is not case sensitive.
--
-- 'maxResults', 'listLanguageModels_maxResults' - The maximum number of custom language models to return in each page of
-- results. If there are fewer results than the value you specify, only the
-- actual results are returned. If you don\'t specify a value, a default of
-- 5 is used.
--
-- 'statusEquals', 'listLanguageModels_statusEquals' - Returns only custom language models with the specified status. Language
-- models are ordered by creation date, with the newest model first. If you
-- don\'t include @StatusEquals@, all custom language models are returned.
newListLanguageModels ::
  ListLanguageModels
newListLanguageModels =
  ListLanguageModels'
    { nextToken = Prelude.Nothing,
      nameContains = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      statusEquals = Prelude.Nothing
    }

-- | If your @ListLanguageModels@ request returns more results than can be
-- displayed, @NextToken@ is displayed in the response with an associated
-- string. To get the next page of results, copy this string and repeat
-- your request, including @NextToken@ with the value of the copied string.
-- Repeat as needed to view all your results.
listLanguageModels_nextToken :: Lens.Lens' ListLanguageModels (Prelude.Maybe Prelude.Text)
listLanguageModels_nextToken = Lens.lens (\ListLanguageModels' {nextToken} -> nextToken) (\s@ListLanguageModels' {} a -> s {nextToken = a} :: ListLanguageModels)

-- | Returns only the custom language models that contain the specified
-- string. The search is not case sensitive.
listLanguageModels_nameContains :: Lens.Lens' ListLanguageModels (Prelude.Maybe Prelude.Text)
listLanguageModels_nameContains = Lens.lens (\ListLanguageModels' {nameContains} -> nameContains) (\s@ListLanguageModels' {} a -> s {nameContains = a} :: ListLanguageModels)

-- | The maximum number of custom language models to return in each page of
-- results. If there are fewer results than the value you specify, only the
-- actual results are returned. If you don\'t specify a value, a default of
-- 5 is used.
listLanguageModels_maxResults :: Lens.Lens' ListLanguageModels (Prelude.Maybe Prelude.Natural)
listLanguageModels_maxResults = Lens.lens (\ListLanguageModels' {maxResults} -> maxResults) (\s@ListLanguageModels' {} a -> s {maxResults = a} :: ListLanguageModels)

-- | Returns only custom language models with the specified status. Language
-- models are ordered by creation date, with the newest model first. If you
-- don\'t include @StatusEquals@, all custom language models are returned.
listLanguageModels_statusEquals :: Lens.Lens' ListLanguageModels (Prelude.Maybe ModelStatus)
listLanguageModels_statusEquals = Lens.lens (\ListLanguageModels' {statusEquals} -> statusEquals) (\s@ListLanguageModels' {} a -> s {statusEquals = a} :: ListLanguageModels)

instance Core.AWSRequest ListLanguageModels where
  type
    AWSResponse ListLanguageModels =
      ListLanguageModelsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLanguageModelsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Models" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLanguageModels where
  hashWithSalt _salt ListLanguageModels' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` nameContains
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` statusEquals

instance Prelude.NFData ListLanguageModels where
  rnf ListLanguageModels' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf nameContains
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf statusEquals

instance Core.ToHeaders ListLanguageModels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.ListLanguageModels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLanguageModels where
  toJSON ListLanguageModels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("NameContains" Core..=) Prelude.<$> nameContains,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("StatusEquals" Core..=) Prelude.<$> statusEquals
          ]
      )

instance Core.ToPath ListLanguageModels where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLanguageModels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLanguageModelsResponse' smart constructor.
data ListLanguageModelsResponse = ListLanguageModelsResponse'
  { -- | If @NextToken@ is present in your response, it indicates that not all
    -- results are displayed. To view the next set of results, copy the string
    -- associated with the @NextToken@ parameter in your results output, then
    -- run your request again including @NextToken@ with the value of the
    -- copied string. Repeat as needed to view all your results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Provides information about the custom language models that match the
    -- criteria specified in your request.
    models :: Prelude.Maybe [LanguageModel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLanguageModelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLanguageModelsResponse_nextToken' - If @NextToken@ is present in your response, it indicates that not all
-- results are displayed. To view the next set of results, copy the string
-- associated with the @NextToken@ parameter in your results output, then
-- run your request again including @NextToken@ with the value of the
-- copied string. Repeat as needed to view all your results.
--
-- 'models', 'listLanguageModelsResponse_models' - Provides information about the custom language models that match the
-- criteria specified in your request.
--
-- 'httpStatus', 'listLanguageModelsResponse_httpStatus' - The response's http status code.
newListLanguageModelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLanguageModelsResponse
newListLanguageModelsResponse pHttpStatus_ =
  ListLanguageModelsResponse'
    { nextToken =
        Prelude.Nothing,
      models = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If @NextToken@ is present in your response, it indicates that not all
-- results are displayed. To view the next set of results, copy the string
-- associated with the @NextToken@ parameter in your results output, then
-- run your request again including @NextToken@ with the value of the
-- copied string. Repeat as needed to view all your results.
listLanguageModelsResponse_nextToken :: Lens.Lens' ListLanguageModelsResponse (Prelude.Maybe Prelude.Text)
listLanguageModelsResponse_nextToken = Lens.lens (\ListLanguageModelsResponse' {nextToken} -> nextToken) (\s@ListLanguageModelsResponse' {} a -> s {nextToken = a} :: ListLanguageModelsResponse)

-- | Provides information about the custom language models that match the
-- criteria specified in your request.
listLanguageModelsResponse_models :: Lens.Lens' ListLanguageModelsResponse (Prelude.Maybe [LanguageModel])
listLanguageModelsResponse_models = Lens.lens (\ListLanguageModelsResponse' {models} -> models) (\s@ListLanguageModelsResponse' {} a -> s {models = a} :: ListLanguageModelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLanguageModelsResponse_httpStatus :: Lens.Lens' ListLanguageModelsResponse Prelude.Int
listLanguageModelsResponse_httpStatus = Lens.lens (\ListLanguageModelsResponse' {httpStatus} -> httpStatus) (\s@ListLanguageModelsResponse' {} a -> s {httpStatus = a} :: ListLanguageModelsResponse)

instance Prelude.NFData ListLanguageModelsResponse where
  rnf ListLanguageModelsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf models
      `Prelude.seq` Prelude.rnf httpStatus

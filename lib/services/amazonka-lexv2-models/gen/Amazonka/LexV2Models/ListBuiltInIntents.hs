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
-- Module      : Amazonka.LexV2Models.ListBuiltInIntents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of built-in intents provided by Amazon Lex that you can use
-- in your bot.
--
-- To use a built-in intent as a the base for your own intent, include the
-- built-in intent signature in the @parentIntentSignature@ parameter when
-- you call the @CreateIntent@ operation. For more information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateIntent.html CreateIntent>.
module Amazonka.LexV2Models.ListBuiltInIntents
  ( -- * Creating a Request
    ListBuiltInIntents (..),
    newListBuiltInIntents,

    -- * Request Lenses
    listBuiltInIntents_nextToken,
    listBuiltInIntents_sortBy,
    listBuiltInIntents_maxResults,
    listBuiltInIntents_localeId,

    -- * Destructuring the Response
    ListBuiltInIntentsResponse (..),
    newListBuiltInIntentsResponse,

    -- * Response Lenses
    listBuiltInIntentsResponse_nextToken,
    listBuiltInIntentsResponse_builtInIntentSummaries,
    listBuiltInIntentsResponse_localeId,
    listBuiltInIntentsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListBuiltInIntents' smart constructor.
data ListBuiltInIntents = ListBuiltInIntents'
  { -- | If the response from the @ListBuiltInIntents@ operation contains more
    -- results than specified in the @maxResults@ parameter, a token is
    -- returned in the response. Use that token in the @nextToken@ parameter to
    -- return the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies sorting parameters for the list of built-in intents. You can
    -- specify that the list be sorted by the built-in intent signature in
    -- either ascending or descending order.
    sortBy :: Prelude.Maybe BuiltInIntentSortBy,
    -- | The maximum number of built-in intents to return in each page of
    -- results. If there are fewer results than the max page size, only the
    -- actual number of results are returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the language and locale of the intents to list. The
    -- string must match one of the supported locales. For more information,
    -- see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
    localeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBuiltInIntents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBuiltInIntents_nextToken' - If the response from the @ListBuiltInIntents@ operation contains more
-- results than specified in the @maxResults@ parameter, a token is
-- returned in the response. Use that token in the @nextToken@ parameter to
-- return the next page of results.
--
-- 'sortBy', 'listBuiltInIntents_sortBy' - Specifies sorting parameters for the list of built-in intents. You can
-- specify that the list be sorted by the built-in intent signature in
-- either ascending or descending order.
--
-- 'maxResults', 'listBuiltInIntents_maxResults' - The maximum number of built-in intents to return in each page of
-- results. If there are fewer results than the max page size, only the
-- actual number of results are returned.
--
-- 'localeId', 'listBuiltInIntents_localeId' - The identifier of the language and locale of the intents to list. The
-- string must match one of the supported locales. For more information,
-- see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
newListBuiltInIntents ::
  -- | 'localeId'
  Prelude.Text ->
  ListBuiltInIntents
newListBuiltInIntents pLocaleId_ =
  ListBuiltInIntents'
    { nextToken = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      localeId = pLocaleId_
    }

-- | If the response from the @ListBuiltInIntents@ operation contains more
-- results than specified in the @maxResults@ parameter, a token is
-- returned in the response. Use that token in the @nextToken@ parameter to
-- return the next page of results.
listBuiltInIntents_nextToken :: Lens.Lens' ListBuiltInIntents (Prelude.Maybe Prelude.Text)
listBuiltInIntents_nextToken = Lens.lens (\ListBuiltInIntents' {nextToken} -> nextToken) (\s@ListBuiltInIntents' {} a -> s {nextToken = a} :: ListBuiltInIntents)

-- | Specifies sorting parameters for the list of built-in intents. You can
-- specify that the list be sorted by the built-in intent signature in
-- either ascending or descending order.
listBuiltInIntents_sortBy :: Lens.Lens' ListBuiltInIntents (Prelude.Maybe BuiltInIntentSortBy)
listBuiltInIntents_sortBy = Lens.lens (\ListBuiltInIntents' {sortBy} -> sortBy) (\s@ListBuiltInIntents' {} a -> s {sortBy = a} :: ListBuiltInIntents)

-- | The maximum number of built-in intents to return in each page of
-- results. If there are fewer results than the max page size, only the
-- actual number of results are returned.
listBuiltInIntents_maxResults :: Lens.Lens' ListBuiltInIntents (Prelude.Maybe Prelude.Natural)
listBuiltInIntents_maxResults = Lens.lens (\ListBuiltInIntents' {maxResults} -> maxResults) (\s@ListBuiltInIntents' {} a -> s {maxResults = a} :: ListBuiltInIntents)

-- | The identifier of the language and locale of the intents to list. The
-- string must match one of the supported locales. For more information,
-- see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
listBuiltInIntents_localeId :: Lens.Lens' ListBuiltInIntents Prelude.Text
listBuiltInIntents_localeId = Lens.lens (\ListBuiltInIntents' {localeId} -> localeId) (\s@ListBuiltInIntents' {} a -> s {localeId = a} :: ListBuiltInIntents)

instance Core.AWSRequest ListBuiltInIntents where
  type
    AWSResponse ListBuiltInIntents =
      ListBuiltInIntentsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBuiltInIntentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "builtInIntentSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "localeId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBuiltInIntents where
  hashWithSalt _salt ListBuiltInIntents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` localeId

instance Prelude.NFData ListBuiltInIntents where
  rnf ListBuiltInIntents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf localeId

instance Core.ToHeaders ListBuiltInIntents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListBuiltInIntents where
  toJSON ListBuiltInIntents' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("sortBy" Core..=) Prelude.<$> sortBy,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListBuiltInIntents where
  toPath ListBuiltInIntents' {..} =
    Prelude.mconcat
      [ "/builtins/locales/",
        Core.toBS localeId,
        "/intents/"
      ]

instance Core.ToQuery ListBuiltInIntents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListBuiltInIntentsResponse' smart constructor.
data ListBuiltInIntentsResponse = ListBuiltInIntentsResponse'
  { -- | A token that indicates whether there are more results to return in a
    -- response to the @ListBuiltInIntents@ operation. If the @nextToken@ field
    -- is present, you send the contents as the @nextToken@ parameter of a
    -- @ListBotAliases@ operation request to get the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Summary information for the built-in intents that meet the filter
    -- criteria specified in the request. The length of the list is specified
    -- in the @maxResults@ parameter of the request. If there are more intents
    -- available, the @nextToken@ field contains a token to get the next page
    -- of results.
    builtInIntentSummaries :: Prelude.Maybe [BuiltInIntentSummary],
    -- | The language and locale of the intents in the list.
    localeId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBuiltInIntentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBuiltInIntentsResponse_nextToken' - A token that indicates whether there are more results to return in a
-- response to the @ListBuiltInIntents@ operation. If the @nextToken@ field
-- is present, you send the contents as the @nextToken@ parameter of a
-- @ListBotAliases@ operation request to get the next page of results.
--
-- 'builtInIntentSummaries', 'listBuiltInIntentsResponse_builtInIntentSummaries' - Summary information for the built-in intents that meet the filter
-- criteria specified in the request. The length of the list is specified
-- in the @maxResults@ parameter of the request. If there are more intents
-- available, the @nextToken@ field contains a token to get the next page
-- of results.
--
-- 'localeId', 'listBuiltInIntentsResponse_localeId' - The language and locale of the intents in the list.
--
-- 'httpStatus', 'listBuiltInIntentsResponse_httpStatus' - The response's http status code.
newListBuiltInIntentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBuiltInIntentsResponse
newListBuiltInIntentsResponse pHttpStatus_ =
  ListBuiltInIntentsResponse'
    { nextToken =
        Prelude.Nothing,
      builtInIntentSummaries = Prelude.Nothing,
      localeId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that indicates whether there are more results to return in a
-- response to the @ListBuiltInIntents@ operation. If the @nextToken@ field
-- is present, you send the contents as the @nextToken@ parameter of a
-- @ListBotAliases@ operation request to get the next page of results.
listBuiltInIntentsResponse_nextToken :: Lens.Lens' ListBuiltInIntentsResponse (Prelude.Maybe Prelude.Text)
listBuiltInIntentsResponse_nextToken = Lens.lens (\ListBuiltInIntentsResponse' {nextToken} -> nextToken) (\s@ListBuiltInIntentsResponse' {} a -> s {nextToken = a} :: ListBuiltInIntentsResponse)

-- | Summary information for the built-in intents that meet the filter
-- criteria specified in the request. The length of the list is specified
-- in the @maxResults@ parameter of the request. If there are more intents
-- available, the @nextToken@ field contains a token to get the next page
-- of results.
listBuiltInIntentsResponse_builtInIntentSummaries :: Lens.Lens' ListBuiltInIntentsResponse (Prelude.Maybe [BuiltInIntentSummary])
listBuiltInIntentsResponse_builtInIntentSummaries = Lens.lens (\ListBuiltInIntentsResponse' {builtInIntentSummaries} -> builtInIntentSummaries) (\s@ListBuiltInIntentsResponse' {} a -> s {builtInIntentSummaries = a} :: ListBuiltInIntentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The language and locale of the intents in the list.
listBuiltInIntentsResponse_localeId :: Lens.Lens' ListBuiltInIntentsResponse (Prelude.Maybe Prelude.Text)
listBuiltInIntentsResponse_localeId = Lens.lens (\ListBuiltInIntentsResponse' {localeId} -> localeId) (\s@ListBuiltInIntentsResponse' {} a -> s {localeId = a} :: ListBuiltInIntentsResponse)

-- | The response's http status code.
listBuiltInIntentsResponse_httpStatus :: Lens.Lens' ListBuiltInIntentsResponse Prelude.Int
listBuiltInIntentsResponse_httpStatus = Lens.lens (\ListBuiltInIntentsResponse' {httpStatus} -> httpStatus) (\s@ListBuiltInIntentsResponse' {} a -> s {httpStatus = a} :: ListBuiltInIntentsResponse)

instance Prelude.NFData ListBuiltInIntentsResponse where
  rnf ListBuiltInIntentsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf builtInIntentSummaries
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf httpStatus

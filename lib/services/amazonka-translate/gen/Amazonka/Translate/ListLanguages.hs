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
-- Module      : Amazonka.Translate.ListLanguages
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of languages (RFC-5646 codes and names) that Amazon
-- Translate supports.
module Amazonka.Translate.ListLanguages
  ( -- * Creating a Request
    ListLanguages (..),
    newListLanguages,

    -- * Request Lenses
    listLanguages_nextToken,
    listLanguages_maxResults,
    listLanguages_displayLanguageCode,

    -- * Destructuring the Response
    ListLanguagesResponse (..),
    newListLanguagesResponse,

    -- * Response Lenses
    listLanguagesResponse_nextToken,
    listLanguagesResponse_languages,
    listLanguagesResponse_displayLanguageCode,
    listLanguagesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Translate.Types

-- | /See:/ 'newListLanguages' smart constructor.
data ListLanguages = ListLanguages'
  { -- | Include the NextToken value to fetch the next group of supported
    -- languages.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in each response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The language code for the language to use to display the language names
    -- in the response. The language code is @en@ by default.
    displayLanguageCode :: Prelude.Maybe DisplayLanguageCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLanguages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLanguages_nextToken' - Include the NextToken value to fetch the next group of supported
-- languages.
--
-- 'maxResults', 'listLanguages_maxResults' - The maximum number of results to return in each response.
--
-- 'displayLanguageCode', 'listLanguages_displayLanguageCode' - The language code for the language to use to display the language names
-- in the response. The language code is @en@ by default.
newListLanguages ::
  ListLanguages
newListLanguages =
  ListLanguages'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      displayLanguageCode = Prelude.Nothing
    }

-- | Include the NextToken value to fetch the next group of supported
-- languages.
listLanguages_nextToken :: Lens.Lens' ListLanguages (Prelude.Maybe Prelude.Text)
listLanguages_nextToken = Lens.lens (\ListLanguages' {nextToken} -> nextToken) (\s@ListLanguages' {} a -> s {nextToken = a} :: ListLanguages)

-- | The maximum number of results to return in each response.
listLanguages_maxResults :: Lens.Lens' ListLanguages (Prelude.Maybe Prelude.Natural)
listLanguages_maxResults = Lens.lens (\ListLanguages' {maxResults} -> maxResults) (\s@ListLanguages' {} a -> s {maxResults = a} :: ListLanguages)

-- | The language code for the language to use to display the language names
-- in the response. The language code is @en@ by default.
listLanguages_displayLanguageCode :: Lens.Lens' ListLanguages (Prelude.Maybe DisplayLanguageCode)
listLanguages_displayLanguageCode = Lens.lens (\ListLanguages' {displayLanguageCode} -> displayLanguageCode) (\s@ListLanguages' {} a -> s {displayLanguageCode = a} :: ListLanguages)

instance Core.AWSRequest ListLanguages where
  type
    AWSResponse ListLanguages =
      ListLanguagesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLanguagesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Languages" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "DisplayLanguageCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLanguages where
  hashWithSalt _salt ListLanguages' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` displayLanguageCode

instance Prelude.NFData ListLanguages where
  rnf ListLanguages' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf displayLanguageCode

instance Core.ToHeaders ListLanguages where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShineFrontendService_20170701.ListLanguages" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLanguages where
  toJSON ListLanguages' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("DisplayLanguageCode" Core..=)
              Prelude.<$> displayLanguageCode
          ]
      )

instance Core.ToPath ListLanguages where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLanguages where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLanguagesResponse' smart constructor.
data ListLanguagesResponse = ListLanguagesResponse'
  { -- | If the response does not include all remaining results, use the
    -- NextToken in the next request to fetch the next group of supported
    -- languages.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of supported languages.
    languages :: Prelude.Maybe [Language],
    -- | The language code passed in with the request.
    displayLanguageCode :: Prelude.Maybe DisplayLanguageCode,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLanguagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLanguagesResponse_nextToken' - If the response does not include all remaining results, use the
-- NextToken in the next request to fetch the next group of supported
-- languages.
--
-- 'languages', 'listLanguagesResponse_languages' - The list of supported languages.
--
-- 'displayLanguageCode', 'listLanguagesResponse_displayLanguageCode' - The language code passed in with the request.
--
-- 'httpStatus', 'listLanguagesResponse_httpStatus' - The response's http status code.
newListLanguagesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLanguagesResponse
newListLanguagesResponse pHttpStatus_ =
  ListLanguagesResponse'
    { nextToken = Prelude.Nothing,
      languages = Prelude.Nothing,
      displayLanguageCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response does not include all remaining results, use the
-- NextToken in the next request to fetch the next group of supported
-- languages.
listLanguagesResponse_nextToken :: Lens.Lens' ListLanguagesResponse (Prelude.Maybe Prelude.Text)
listLanguagesResponse_nextToken = Lens.lens (\ListLanguagesResponse' {nextToken} -> nextToken) (\s@ListLanguagesResponse' {} a -> s {nextToken = a} :: ListLanguagesResponse)

-- | The list of supported languages.
listLanguagesResponse_languages :: Lens.Lens' ListLanguagesResponse (Prelude.Maybe [Language])
listLanguagesResponse_languages = Lens.lens (\ListLanguagesResponse' {languages} -> languages) (\s@ListLanguagesResponse' {} a -> s {languages = a} :: ListLanguagesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The language code passed in with the request.
listLanguagesResponse_displayLanguageCode :: Lens.Lens' ListLanguagesResponse (Prelude.Maybe DisplayLanguageCode)
listLanguagesResponse_displayLanguageCode = Lens.lens (\ListLanguagesResponse' {displayLanguageCode} -> displayLanguageCode) (\s@ListLanguagesResponse' {} a -> s {displayLanguageCode = a} :: ListLanguagesResponse)

-- | The response's http status code.
listLanguagesResponse_httpStatus :: Lens.Lens' ListLanguagesResponse Prelude.Int
listLanguagesResponse_httpStatus = Lens.lens (\ListLanguagesResponse' {httpStatus} -> httpStatus) (\s@ListLanguagesResponse' {} a -> s {httpStatus = a} :: ListLanguagesResponse)

instance Prelude.NFData ListLanguagesResponse where
  rnf ListLanguagesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf languages
      `Prelude.seq` Prelude.rnf displayLanguageCode
      `Prelude.seq` Prelude.rnf httpStatus

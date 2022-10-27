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
-- Module      : Amazonka.Kendra.ClearQuerySuggestions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears existing query suggestions from an index.
--
-- This deletes existing suggestions only, not the queries in the query
-- log. After you clear suggestions, Amazon Kendra learns new suggestions
-- based on new queries added to the query log from the time you cleared
-- suggestions. If you do not see any new suggestions, then please allow
-- Amazon Kendra to collect enough queries to learn new suggestions.
--
-- @ClearQuerySuggestions@ is currently not supported in the Amazon Web
-- Services GovCloud (US-West) region.
module Amazonka.Kendra.ClearQuerySuggestions
  ( -- * Creating a Request
    ClearQuerySuggestions (..),
    newClearQuerySuggestions,

    -- * Request Lenses
    clearQuerySuggestions_indexId,

    -- * Destructuring the Response
    ClearQuerySuggestionsResponse (..),
    newClearQuerySuggestionsResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newClearQuerySuggestions' smart constructor.
data ClearQuerySuggestions = ClearQuerySuggestions'
  { -- | The identifier of the index you want to clear query suggestions from.
    indexId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClearQuerySuggestions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'indexId', 'clearQuerySuggestions_indexId' - The identifier of the index you want to clear query suggestions from.
newClearQuerySuggestions ::
  -- | 'indexId'
  Prelude.Text ->
  ClearQuerySuggestions
newClearQuerySuggestions pIndexId_ =
  ClearQuerySuggestions' {indexId = pIndexId_}

-- | The identifier of the index you want to clear query suggestions from.
clearQuerySuggestions_indexId :: Lens.Lens' ClearQuerySuggestions Prelude.Text
clearQuerySuggestions_indexId = Lens.lens (\ClearQuerySuggestions' {indexId} -> indexId) (\s@ClearQuerySuggestions' {} a -> s {indexId = a} :: ClearQuerySuggestions)

instance Core.AWSRequest ClearQuerySuggestions where
  type
    AWSResponse ClearQuerySuggestions =
      ClearQuerySuggestionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull ClearQuerySuggestionsResponse'

instance Prelude.Hashable ClearQuerySuggestions where
  hashWithSalt _salt ClearQuerySuggestions' {..} =
    _salt `Prelude.hashWithSalt` indexId

instance Prelude.NFData ClearQuerySuggestions where
  rnf ClearQuerySuggestions' {..} = Prelude.rnf indexId

instance Core.ToHeaders ClearQuerySuggestions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSKendraFrontendService.ClearQuerySuggestions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ClearQuerySuggestions where
  toJSON ClearQuerySuggestions' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("IndexId" Core..= indexId)]
      )

instance Core.ToPath ClearQuerySuggestions where
  toPath = Prelude.const "/"

instance Core.ToQuery ClearQuerySuggestions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newClearQuerySuggestionsResponse' smart constructor.
data ClearQuerySuggestionsResponse = ClearQuerySuggestionsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClearQuerySuggestionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newClearQuerySuggestionsResponse ::
  ClearQuerySuggestionsResponse
newClearQuerySuggestionsResponse =
  ClearQuerySuggestionsResponse'

instance Prelude.NFData ClearQuerySuggestionsResponse where
  rnf _ = ()

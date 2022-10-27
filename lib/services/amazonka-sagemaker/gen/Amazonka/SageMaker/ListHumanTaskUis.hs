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
-- Module      : Amazonka.SageMaker.ListHumanTaskUis
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the human task user interfaces in your
-- account.
--
-- This operation returns paginated results.
module Amazonka.SageMaker.ListHumanTaskUis
  ( -- * Creating a Request
    ListHumanTaskUis (..),
    newListHumanTaskUis,

    -- * Request Lenses
    listHumanTaskUis_sortOrder,
    listHumanTaskUis_nextToken,
    listHumanTaskUis_creationTimeBefore,
    listHumanTaskUis_maxResults,
    listHumanTaskUis_creationTimeAfter,

    -- * Destructuring the Response
    ListHumanTaskUisResponse (..),
    newListHumanTaskUisResponse,

    -- * Response Lenses
    listHumanTaskUisResponse_nextToken,
    listHumanTaskUisResponse_httpStatus,
    listHumanTaskUisResponse_humanTaskUiSummaries,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newListHumanTaskUis' smart constructor.
data ListHumanTaskUis = ListHumanTaskUis'
  { -- | An optional value that specifies whether you want the results sorted in
    -- @Ascending@ or @Descending@ order.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | A token to resume pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter that returns only human task user interfaces that were created
    -- before the specified timestamp.
    creationTimeBefore :: Prelude.Maybe Core.POSIX,
    -- | The total number of items to return. If the total number of available
    -- items is more than the value specified in @MaxResults@, then a
    -- @NextToken@ will be provided in the output that you can use to resume
    -- pagination.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that returns only human task user interfaces with a creation
    -- time greater than or equal to the specified timestamp.
    creationTimeAfter :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListHumanTaskUis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listHumanTaskUis_sortOrder' - An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
--
-- 'nextToken', 'listHumanTaskUis_nextToken' - A token to resume pagination.
--
-- 'creationTimeBefore', 'listHumanTaskUis_creationTimeBefore' - A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
--
-- 'maxResults', 'listHumanTaskUis_maxResults' - The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
--
-- 'creationTimeAfter', 'listHumanTaskUis_creationTimeAfter' - A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
newListHumanTaskUis ::
  ListHumanTaskUis
newListHumanTaskUis =
  ListHumanTaskUis'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing
    }

-- | An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
listHumanTaskUis_sortOrder :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe SortOrder)
listHumanTaskUis_sortOrder = Lens.lens (\ListHumanTaskUis' {sortOrder} -> sortOrder) (\s@ListHumanTaskUis' {} a -> s {sortOrder = a} :: ListHumanTaskUis)

-- | A token to resume pagination.
listHumanTaskUis_nextToken :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.Text)
listHumanTaskUis_nextToken = Lens.lens (\ListHumanTaskUis' {nextToken} -> nextToken) (\s@ListHumanTaskUis' {} a -> s {nextToken = a} :: ListHumanTaskUis)

-- | A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
listHumanTaskUis_creationTimeBefore :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.UTCTime)
listHumanTaskUis_creationTimeBefore = Lens.lens (\ListHumanTaskUis' {creationTimeBefore} -> creationTimeBefore) (\s@ListHumanTaskUis' {} a -> s {creationTimeBefore = a} :: ListHumanTaskUis) Prelude.. Lens.mapping Core._Time

-- | The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
listHumanTaskUis_maxResults :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.Natural)
listHumanTaskUis_maxResults = Lens.lens (\ListHumanTaskUis' {maxResults} -> maxResults) (\s@ListHumanTaskUis' {} a -> s {maxResults = a} :: ListHumanTaskUis)

-- | A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
listHumanTaskUis_creationTimeAfter :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.UTCTime)
listHumanTaskUis_creationTimeAfter = Lens.lens (\ListHumanTaskUis' {creationTimeAfter} -> creationTimeAfter) (\s@ListHumanTaskUis' {} a -> s {creationTimeAfter = a} :: ListHumanTaskUis) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager ListHumanTaskUis where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listHumanTaskUisResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listHumanTaskUisResponse_humanTaskUiSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listHumanTaskUis_nextToken
          Lens..~ rs
          Lens.^? listHumanTaskUisResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListHumanTaskUis where
  type
    AWSResponse ListHumanTaskUis =
      ListHumanTaskUisResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListHumanTaskUisResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "HumanTaskUiSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListHumanTaskUis where
  hashWithSalt _salt ListHumanTaskUis' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` creationTimeBefore
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` creationTimeAfter

instance Prelude.NFData ListHumanTaskUis where
  rnf ListHumanTaskUis' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf creationTimeBefore
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf creationTimeAfter

instance Core.ToHeaders ListHumanTaskUis where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListHumanTaskUis" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListHumanTaskUis where
  toJSON ListHumanTaskUis' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("CreationTimeBefore" Core..=)
              Prelude.<$> creationTimeBefore,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("CreationTimeAfter" Core..=)
              Prelude.<$> creationTimeAfter
          ]
      )

instance Core.ToPath ListHumanTaskUis where
  toPath = Prelude.const "/"

instance Core.ToQuery ListHumanTaskUis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListHumanTaskUisResponse' smart constructor.
data ListHumanTaskUisResponse = ListHumanTaskUisResponse'
  { -- | A token to resume pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of objects describing the human task user interfaces.
    humanTaskUiSummaries :: [HumanTaskUiSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListHumanTaskUisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listHumanTaskUisResponse_nextToken' - A token to resume pagination.
--
-- 'httpStatus', 'listHumanTaskUisResponse_httpStatus' - The response's http status code.
--
-- 'humanTaskUiSummaries', 'listHumanTaskUisResponse_humanTaskUiSummaries' - An array of objects describing the human task user interfaces.
newListHumanTaskUisResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListHumanTaskUisResponse
newListHumanTaskUisResponse pHttpStatus_ =
  ListHumanTaskUisResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      humanTaskUiSummaries = Prelude.mempty
    }

-- | A token to resume pagination.
listHumanTaskUisResponse_nextToken :: Lens.Lens' ListHumanTaskUisResponse (Prelude.Maybe Prelude.Text)
listHumanTaskUisResponse_nextToken = Lens.lens (\ListHumanTaskUisResponse' {nextToken} -> nextToken) (\s@ListHumanTaskUisResponse' {} a -> s {nextToken = a} :: ListHumanTaskUisResponse)

-- | The response's http status code.
listHumanTaskUisResponse_httpStatus :: Lens.Lens' ListHumanTaskUisResponse Prelude.Int
listHumanTaskUisResponse_httpStatus = Lens.lens (\ListHumanTaskUisResponse' {httpStatus} -> httpStatus) (\s@ListHumanTaskUisResponse' {} a -> s {httpStatus = a} :: ListHumanTaskUisResponse)

-- | An array of objects describing the human task user interfaces.
listHumanTaskUisResponse_humanTaskUiSummaries :: Lens.Lens' ListHumanTaskUisResponse [HumanTaskUiSummary]
listHumanTaskUisResponse_humanTaskUiSummaries = Lens.lens (\ListHumanTaskUisResponse' {humanTaskUiSummaries} -> humanTaskUiSummaries) (\s@ListHumanTaskUisResponse' {} a -> s {humanTaskUiSummaries = a} :: ListHumanTaskUisResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListHumanTaskUisResponse where
  rnf ListHumanTaskUisResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf humanTaskUiSummaries

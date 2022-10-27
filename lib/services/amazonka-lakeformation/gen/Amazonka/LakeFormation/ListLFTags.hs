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
-- Module      : Amazonka.LakeFormation.ListLFTags
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists LF-tags that the requester has permission to view.
--
-- This operation returns paginated results.
module Amazonka.LakeFormation.ListLFTags
  ( -- * Creating a Request
    ListLFTags (..),
    newListLFTags,

    -- * Request Lenses
    listLFTags_nextToken,
    listLFTags_resourceShareType,
    listLFTags_maxResults,
    listLFTags_catalogId,

    -- * Destructuring the Response
    ListLFTagsResponse (..),
    newListLFTagsResponse,

    -- * Response Lenses
    listLFTagsResponse_nextToken,
    listLFTagsResponse_lFTags,
    listLFTagsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLFTags' smart constructor.
data ListLFTags = ListLFTags'
  { -- | A continuation token, if this is not the first call to retrieve this
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | If resource share type is @ALL@, returns both in-account LF-tags and
    -- shared LF-tags that the requester has permission to view. If resource
    -- share type is @FOREIGN@, returns all share LF-tags that the requester
    -- can view. If no resource share type is passed, lists LF-tags in the
    -- given catalog ID that the requester has permission to view.
    resourceShareType :: Prelude.Maybe ResourceShareType,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the Data Catalog. By default, the account ID. The
    -- Data Catalog is the persistent metadata store. It contains database
    -- definitions, table definitions, and other control information to manage
    -- your Lake Formation environment.
    catalogId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLFTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLFTags_nextToken' - A continuation token, if this is not the first call to retrieve this
-- list.
--
-- 'resourceShareType', 'listLFTags_resourceShareType' - If resource share type is @ALL@, returns both in-account LF-tags and
-- shared LF-tags that the requester has permission to view. If resource
-- share type is @FOREIGN@, returns all share LF-tags that the requester
-- can view. If no resource share type is passed, lists LF-tags in the
-- given catalog ID that the requester has permission to view.
--
-- 'maxResults', 'listLFTags_maxResults' - The maximum number of results to return.
--
-- 'catalogId', 'listLFTags_catalogId' - The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your Lake Formation environment.
newListLFTags ::
  ListLFTags
newListLFTags =
  ListLFTags'
    { nextToken = Prelude.Nothing,
      resourceShareType = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      catalogId = Prelude.Nothing
    }

-- | A continuation token, if this is not the first call to retrieve this
-- list.
listLFTags_nextToken :: Lens.Lens' ListLFTags (Prelude.Maybe Prelude.Text)
listLFTags_nextToken = Lens.lens (\ListLFTags' {nextToken} -> nextToken) (\s@ListLFTags' {} a -> s {nextToken = a} :: ListLFTags)

-- | If resource share type is @ALL@, returns both in-account LF-tags and
-- shared LF-tags that the requester has permission to view. If resource
-- share type is @FOREIGN@, returns all share LF-tags that the requester
-- can view. If no resource share type is passed, lists LF-tags in the
-- given catalog ID that the requester has permission to view.
listLFTags_resourceShareType :: Lens.Lens' ListLFTags (Prelude.Maybe ResourceShareType)
listLFTags_resourceShareType = Lens.lens (\ListLFTags' {resourceShareType} -> resourceShareType) (\s@ListLFTags' {} a -> s {resourceShareType = a} :: ListLFTags)

-- | The maximum number of results to return.
listLFTags_maxResults :: Lens.Lens' ListLFTags (Prelude.Maybe Prelude.Natural)
listLFTags_maxResults = Lens.lens (\ListLFTags' {maxResults} -> maxResults) (\s@ListLFTags' {} a -> s {maxResults = a} :: ListLFTags)

-- | The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your Lake Formation environment.
listLFTags_catalogId :: Lens.Lens' ListLFTags (Prelude.Maybe Prelude.Text)
listLFTags_catalogId = Lens.lens (\ListLFTags' {catalogId} -> catalogId) (\s@ListLFTags' {} a -> s {catalogId = a} :: ListLFTags)

instance Core.AWSPager ListLFTags where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLFTagsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLFTagsResponse_lFTags Prelude.. Lens._Just
              Prelude.. Lens.to Prelude.toList
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLFTags_nextToken
          Lens..~ rs
          Lens.^? listLFTagsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListLFTags where
  type AWSResponse ListLFTags = ListLFTagsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLFTagsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "LFTags")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLFTags where
  hashWithSalt _salt ListLFTags' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` resourceShareType
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` catalogId

instance Prelude.NFData ListLFTags where
  rnf ListLFTags' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resourceShareType
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf catalogId

instance Core.ToHeaders ListLFTags where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLFTags where
  toJSON ListLFTags' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("ResourceShareType" Core..=)
              Prelude.<$> resourceShareType,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("CatalogId" Core..=) Prelude.<$> catalogId
          ]
      )

instance Core.ToPath ListLFTags where
  toPath = Prelude.const "/ListLFTags"

instance Core.ToQuery ListLFTags where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLFTagsResponse' smart constructor.
data ListLFTagsResponse = ListLFTagsResponse'
  { -- | A continuation token, present if the current list segment is not the
    -- last.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of LF-tags that the requested has permission to view.
    lFTags :: Prelude.Maybe (Prelude.NonEmpty LFTagPair),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLFTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLFTagsResponse_nextToken' - A continuation token, present if the current list segment is not the
-- last.
--
-- 'lFTags', 'listLFTagsResponse_lFTags' - A list of LF-tags that the requested has permission to view.
--
-- 'httpStatus', 'listLFTagsResponse_httpStatus' - The response's http status code.
newListLFTagsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLFTagsResponse
newListLFTagsResponse pHttpStatus_ =
  ListLFTagsResponse'
    { nextToken = Prelude.Nothing,
      lFTags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A continuation token, present if the current list segment is not the
-- last.
listLFTagsResponse_nextToken :: Lens.Lens' ListLFTagsResponse (Prelude.Maybe Prelude.Text)
listLFTagsResponse_nextToken = Lens.lens (\ListLFTagsResponse' {nextToken} -> nextToken) (\s@ListLFTagsResponse' {} a -> s {nextToken = a} :: ListLFTagsResponse)

-- | A list of LF-tags that the requested has permission to view.
listLFTagsResponse_lFTags :: Lens.Lens' ListLFTagsResponse (Prelude.Maybe (Prelude.NonEmpty LFTagPair))
listLFTagsResponse_lFTags = Lens.lens (\ListLFTagsResponse' {lFTags} -> lFTags) (\s@ListLFTagsResponse' {} a -> s {lFTags = a} :: ListLFTagsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLFTagsResponse_httpStatus :: Lens.Lens' ListLFTagsResponse Prelude.Int
listLFTagsResponse_httpStatus = Lens.lens (\ListLFTagsResponse' {httpStatus} -> httpStatus) (\s@ListLFTagsResponse' {} a -> s {httpStatus = a} :: ListLFTagsResponse)

instance Prelude.NFData ListLFTagsResponse where
  rnf ListLFTagsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf lFTags
      `Prelude.seq` Prelude.rnf httpStatus

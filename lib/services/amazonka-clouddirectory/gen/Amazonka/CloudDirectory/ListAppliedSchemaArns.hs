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
-- Module      : Amazonka.CloudDirectory.ListAppliedSchemaArns
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists schema major versions applied to a directory. If @SchemaArn@ is
-- provided, lists the minor version.
--
-- This operation returns paginated results.
module Amazonka.CloudDirectory.ListAppliedSchemaArns
  ( -- * Creating a Request
    ListAppliedSchemaArns (..),
    newListAppliedSchemaArns,

    -- * Request Lenses
    listAppliedSchemaArns_nextToken,
    listAppliedSchemaArns_schemaArn,
    listAppliedSchemaArns_maxResults,
    listAppliedSchemaArns_directoryArn,

    -- * Destructuring the Response
    ListAppliedSchemaArnsResponse (..),
    newListAppliedSchemaArnsResponse,

    -- * Response Lenses
    listAppliedSchemaArnsResponse_nextToken,
    listAppliedSchemaArnsResponse_schemaArns,
    listAppliedSchemaArnsResponse_httpStatus,
  )
where

import Amazonka.CloudDirectory.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAppliedSchemaArns' smart constructor.
data ListAppliedSchemaArns = ListAppliedSchemaArns'
  { -- | The pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response for @ListAppliedSchemaArns@ when this parameter is used
    -- will list all minor version ARNs for a major version.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to retrieve.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the directory you are listing.
    directoryArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppliedSchemaArns' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppliedSchemaArns_nextToken' - The pagination token.
--
-- 'schemaArn', 'listAppliedSchemaArns_schemaArn' - The response for @ListAppliedSchemaArns@ when this parameter is used
-- will list all minor version ARNs for a major version.
--
-- 'maxResults', 'listAppliedSchemaArns_maxResults' - The maximum number of results to retrieve.
--
-- 'directoryArn', 'listAppliedSchemaArns_directoryArn' - The ARN of the directory you are listing.
newListAppliedSchemaArns ::
  -- | 'directoryArn'
  Prelude.Text ->
  ListAppliedSchemaArns
newListAppliedSchemaArns pDirectoryArn_ =
  ListAppliedSchemaArns'
    { nextToken = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      directoryArn = pDirectoryArn_
    }

-- | The pagination token.
listAppliedSchemaArns_nextToken :: Lens.Lens' ListAppliedSchemaArns (Prelude.Maybe Prelude.Text)
listAppliedSchemaArns_nextToken = Lens.lens (\ListAppliedSchemaArns' {nextToken} -> nextToken) (\s@ListAppliedSchemaArns' {} a -> s {nextToken = a} :: ListAppliedSchemaArns)

-- | The response for @ListAppliedSchemaArns@ when this parameter is used
-- will list all minor version ARNs for a major version.
listAppliedSchemaArns_schemaArn :: Lens.Lens' ListAppliedSchemaArns (Prelude.Maybe Prelude.Text)
listAppliedSchemaArns_schemaArn = Lens.lens (\ListAppliedSchemaArns' {schemaArn} -> schemaArn) (\s@ListAppliedSchemaArns' {} a -> s {schemaArn = a} :: ListAppliedSchemaArns)

-- | The maximum number of results to retrieve.
listAppliedSchemaArns_maxResults :: Lens.Lens' ListAppliedSchemaArns (Prelude.Maybe Prelude.Natural)
listAppliedSchemaArns_maxResults = Lens.lens (\ListAppliedSchemaArns' {maxResults} -> maxResults) (\s@ListAppliedSchemaArns' {} a -> s {maxResults = a} :: ListAppliedSchemaArns)

-- | The ARN of the directory you are listing.
listAppliedSchemaArns_directoryArn :: Lens.Lens' ListAppliedSchemaArns Prelude.Text
listAppliedSchemaArns_directoryArn = Lens.lens (\ListAppliedSchemaArns' {directoryArn} -> directoryArn) (\s@ListAppliedSchemaArns' {} a -> s {directoryArn = a} :: ListAppliedSchemaArns)

instance Core.AWSPager ListAppliedSchemaArns where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAppliedSchemaArnsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAppliedSchemaArnsResponse_schemaArns
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAppliedSchemaArns_nextToken
          Lens..~ rs
          Lens.^? listAppliedSchemaArnsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAppliedSchemaArns where
  type
    AWSResponse ListAppliedSchemaArns =
      ListAppliedSchemaArnsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAppliedSchemaArnsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "SchemaArns" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAppliedSchemaArns where
  hashWithSalt _salt ListAppliedSchemaArns' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` schemaArn
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` directoryArn

instance Prelude.NFData ListAppliedSchemaArns where
  rnf ListAppliedSchemaArns' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf schemaArn
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf directoryArn

instance Core.ToHeaders ListAppliedSchemaArns where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON ListAppliedSchemaArns where
  toJSON ListAppliedSchemaArns' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SchemaArn" Core..=) Prelude.<$> schemaArn,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("DirectoryArn" Core..= directoryArn)
          ]
      )

instance Core.ToPath ListAppliedSchemaArns where
  toPath =
    Prelude.const
      "/amazonclouddirectory/2017-01-11/schema/applied"

instance Core.ToQuery ListAppliedSchemaArns where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAppliedSchemaArnsResponse' smart constructor.
data ListAppliedSchemaArnsResponse = ListAppliedSchemaArnsResponse'
  { -- | The pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ARNs of schemas that are applied to the directory.
    schemaArns :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppliedSchemaArnsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppliedSchemaArnsResponse_nextToken' - The pagination token.
--
-- 'schemaArns', 'listAppliedSchemaArnsResponse_schemaArns' - The ARNs of schemas that are applied to the directory.
--
-- 'httpStatus', 'listAppliedSchemaArnsResponse_httpStatus' - The response's http status code.
newListAppliedSchemaArnsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAppliedSchemaArnsResponse
newListAppliedSchemaArnsResponse pHttpStatus_ =
  ListAppliedSchemaArnsResponse'
    { nextToken =
        Prelude.Nothing,
      schemaArns = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token.
listAppliedSchemaArnsResponse_nextToken :: Lens.Lens' ListAppliedSchemaArnsResponse (Prelude.Maybe Prelude.Text)
listAppliedSchemaArnsResponse_nextToken = Lens.lens (\ListAppliedSchemaArnsResponse' {nextToken} -> nextToken) (\s@ListAppliedSchemaArnsResponse' {} a -> s {nextToken = a} :: ListAppliedSchemaArnsResponse)

-- | The ARNs of schemas that are applied to the directory.
listAppliedSchemaArnsResponse_schemaArns :: Lens.Lens' ListAppliedSchemaArnsResponse (Prelude.Maybe [Prelude.Text])
listAppliedSchemaArnsResponse_schemaArns = Lens.lens (\ListAppliedSchemaArnsResponse' {schemaArns} -> schemaArns) (\s@ListAppliedSchemaArnsResponse' {} a -> s {schemaArns = a} :: ListAppliedSchemaArnsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAppliedSchemaArnsResponse_httpStatus :: Lens.Lens' ListAppliedSchemaArnsResponse Prelude.Int
listAppliedSchemaArnsResponse_httpStatus = Lens.lens (\ListAppliedSchemaArnsResponse' {httpStatus} -> httpStatus) (\s@ListAppliedSchemaArnsResponse' {} a -> s {httpStatus = a} :: ListAppliedSchemaArnsResponse)

instance Prelude.NFData ListAppliedSchemaArnsResponse where
  rnf ListAppliedSchemaArnsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf schemaArns
      `Prelude.seq` Prelude.rnf httpStatus

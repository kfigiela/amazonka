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
-- Module      : Amazonka.Backup.ListFrameworks
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all frameworks for an Amazon Web Services account and
-- Amazon Web Services Region.
module Amazonka.Backup.ListFrameworks
  ( -- * Creating a Request
    ListFrameworks (..),
    newListFrameworks,

    -- * Request Lenses
    listFrameworks_nextToken,
    listFrameworks_maxResults,

    -- * Destructuring the Response
    ListFrameworksResponse (..),
    newListFrameworksResponse,

    -- * Response Lenses
    listFrameworksResponse_nextToken,
    listFrameworksResponse_frameworks,
    listFrameworksResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListFrameworks' smart constructor.
data ListFrameworks = ListFrameworks'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of desired results from 1 to 1000. Optional. If unspecified,
    -- the query will return 1 MB of data.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFrameworks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFrameworks_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'maxResults', 'listFrameworks_maxResults' - The number of desired results from 1 to 1000. Optional. If unspecified,
-- the query will return 1 MB of data.
newListFrameworks ::
  ListFrameworks
newListFrameworks =
  ListFrameworks'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listFrameworks_nextToken :: Lens.Lens' ListFrameworks (Prelude.Maybe Prelude.Text)
listFrameworks_nextToken = Lens.lens (\ListFrameworks' {nextToken} -> nextToken) (\s@ListFrameworks' {} a -> s {nextToken = a} :: ListFrameworks)

-- | The number of desired results from 1 to 1000. Optional. If unspecified,
-- the query will return 1 MB of data.
listFrameworks_maxResults :: Lens.Lens' ListFrameworks (Prelude.Maybe Prelude.Natural)
listFrameworks_maxResults = Lens.lens (\ListFrameworks' {maxResults} -> maxResults) (\s@ListFrameworks' {} a -> s {maxResults = a} :: ListFrameworks)

instance Core.AWSRequest ListFrameworks where
  type
    AWSResponse ListFrameworks =
      ListFrameworksResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFrameworksResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Frameworks" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListFrameworks where
  hashWithSalt _salt ListFrameworks' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListFrameworks where
  rnf ListFrameworks' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListFrameworks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListFrameworks where
  toPath = Prelude.const "/audit/frameworks"

instance Core.ToQuery ListFrameworks where
  toQuery ListFrameworks' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListFrameworksResponse' smart constructor.
data ListFrameworksResponse = ListFrameworksResponse'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of frameworks with details for each framework, including the
    -- framework name, Amazon Resource Name (ARN), description, number of
    -- controls, creation time, and deployment status.
    frameworks :: Prelude.Maybe [Framework],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFrameworksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFrameworksResponse_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'frameworks', 'listFrameworksResponse_frameworks' - A list of frameworks with details for each framework, including the
-- framework name, Amazon Resource Name (ARN), description, number of
-- controls, creation time, and deployment status.
--
-- 'httpStatus', 'listFrameworksResponse_httpStatus' - The response's http status code.
newListFrameworksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFrameworksResponse
newListFrameworksResponse pHttpStatus_ =
  ListFrameworksResponse'
    { nextToken =
        Prelude.Nothing,
      frameworks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listFrameworksResponse_nextToken :: Lens.Lens' ListFrameworksResponse (Prelude.Maybe Prelude.Text)
listFrameworksResponse_nextToken = Lens.lens (\ListFrameworksResponse' {nextToken} -> nextToken) (\s@ListFrameworksResponse' {} a -> s {nextToken = a} :: ListFrameworksResponse)

-- | A list of frameworks with details for each framework, including the
-- framework name, Amazon Resource Name (ARN), description, number of
-- controls, creation time, and deployment status.
listFrameworksResponse_frameworks :: Lens.Lens' ListFrameworksResponse (Prelude.Maybe [Framework])
listFrameworksResponse_frameworks = Lens.lens (\ListFrameworksResponse' {frameworks} -> frameworks) (\s@ListFrameworksResponse' {} a -> s {frameworks = a} :: ListFrameworksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listFrameworksResponse_httpStatus :: Lens.Lens' ListFrameworksResponse Prelude.Int
listFrameworksResponse_httpStatus = Lens.lens (\ListFrameworksResponse' {httpStatus} -> httpStatus) (\s@ListFrameworksResponse' {} a -> s {httpStatus = a} :: ListFrameworksResponse)

instance Prelude.NFData ListFrameworksResponse where
  rnf ListFrameworksResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf frameworks
      `Prelude.seq` Prelude.rnf httpStatus

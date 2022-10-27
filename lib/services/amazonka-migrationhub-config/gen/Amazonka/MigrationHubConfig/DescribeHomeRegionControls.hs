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
-- Module      : Amazonka.MigrationHubConfig.DescribeHomeRegionControls
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API permits filtering on the @ControlId@ and @HomeRegion@ fields.
module Amazonka.MigrationHubConfig.DescribeHomeRegionControls
  ( -- * Creating a Request
    DescribeHomeRegionControls (..),
    newDescribeHomeRegionControls,

    -- * Request Lenses
    describeHomeRegionControls_controlId,
    describeHomeRegionControls_nextToken,
    describeHomeRegionControls_target,
    describeHomeRegionControls_maxResults,
    describeHomeRegionControls_homeRegion,

    -- * Destructuring the Response
    DescribeHomeRegionControlsResponse (..),
    newDescribeHomeRegionControlsResponse,

    -- * Response Lenses
    describeHomeRegionControlsResponse_nextToken,
    describeHomeRegionControlsResponse_homeRegionControls,
    describeHomeRegionControlsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubConfig.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeHomeRegionControls' smart constructor.
data DescribeHomeRegionControls = DescribeHomeRegionControls'
  { -- | The @ControlID@ is a unique identifier string of your
    -- @HomeRegionControl@ object.
    controlId :: Prelude.Maybe Prelude.Text,
    -- | If a @NextToken@ was returned by a previous call, more results are
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The target parameter specifies the identifier to which the home region
    -- is applied, which is always of type @ACCOUNT@. It applies the home
    -- region to the current @ACCOUNT@.
    target :: Prelude.Maybe Target,
    -- | The maximum number of filtering results to display per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the home region you\'d like to view.
    homeRegion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHomeRegionControls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'controlId', 'describeHomeRegionControls_controlId' - The @ControlID@ is a unique identifier string of your
-- @HomeRegionControl@ object.
--
-- 'nextToken', 'describeHomeRegionControls_nextToken' - If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'target', 'describeHomeRegionControls_target' - The target parameter specifies the identifier to which the home region
-- is applied, which is always of type @ACCOUNT@. It applies the home
-- region to the current @ACCOUNT@.
--
-- 'maxResults', 'describeHomeRegionControls_maxResults' - The maximum number of filtering results to display per page.
--
-- 'homeRegion', 'describeHomeRegionControls_homeRegion' - The name of the home region you\'d like to view.
newDescribeHomeRegionControls ::
  DescribeHomeRegionControls
newDescribeHomeRegionControls =
  DescribeHomeRegionControls'
    { controlId =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      target = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      homeRegion = Prelude.Nothing
    }

-- | The @ControlID@ is a unique identifier string of your
-- @HomeRegionControl@ object.
describeHomeRegionControls_controlId :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_controlId = Lens.lens (\DescribeHomeRegionControls' {controlId} -> controlId) (\s@DescribeHomeRegionControls' {} a -> s {controlId = a} :: DescribeHomeRegionControls)

-- | If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
describeHomeRegionControls_nextToken :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_nextToken = Lens.lens (\DescribeHomeRegionControls' {nextToken} -> nextToken) (\s@DescribeHomeRegionControls' {} a -> s {nextToken = a} :: DescribeHomeRegionControls)

-- | The target parameter specifies the identifier to which the home region
-- is applied, which is always of type @ACCOUNT@. It applies the home
-- region to the current @ACCOUNT@.
describeHomeRegionControls_target :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Target)
describeHomeRegionControls_target = Lens.lens (\DescribeHomeRegionControls' {target} -> target) (\s@DescribeHomeRegionControls' {} a -> s {target = a} :: DescribeHomeRegionControls)

-- | The maximum number of filtering results to display per page.
describeHomeRegionControls_maxResults :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Natural)
describeHomeRegionControls_maxResults = Lens.lens (\DescribeHomeRegionControls' {maxResults} -> maxResults) (\s@DescribeHomeRegionControls' {} a -> s {maxResults = a} :: DescribeHomeRegionControls)

-- | The name of the home region you\'d like to view.
describeHomeRegionControls_homeRegion :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_homeRegion = Lens.lens (\DescribeHomeRegionControls' {homeRegion} -> homeRegion) (\s@DescribeHomeRegionControls' {} a -> s {homeRegion = a} :: DescribeHomeRegionControls)

instance Core.AWSRequest DescribeHomeRegionControls where
  type
    AWSResponse DescribeHomeRegionControls =
      DescribeHomeRegionControlsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeHomeRegionControlsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "HomeRegionControls"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeHomeRegionControls where
  hashWithSalt _salt DescribeHomeRegionControls' {..} =
    _salt `Prelude.hashWithSalt` controlId
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` target
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` homeRegion

instance Prelude.NFData DescribeHomeRegionControls where
  rnf DescribeHomeRegionControls' {..} =
    Prelude.rnf controlId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf homeRegion

instance Core.ToHeaders DescribeHomeRegionControls where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSMigrationHubMultiAccountService.DescribeHomeRegionControls" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeHomeRegionControls where
  toJSON DescribeHomeRegionControls' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ControlId" Core..=) Prelude.<$> controlId,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Target" Core..=) Prelude.<$> target,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("HomeRegion" Core..=) Prelude.<$> homeRegion
          ]
      )

instance Core.ToPath DescribeHomeRegionControls where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeHomeRegionControls where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeHomeRegionControlsResponse' smart constructor.
data DescribeHomeRegionControlsResponse = DescribeHomeRegionControlsResponse'
  { -- | If a @NextToken@ was returned by a previous call, more results are
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array that contains your @HomeRegionControl@ objects.
    homeRegionControls :: Prelude.Maybe [HomeRegionControl],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHomeRegionControlsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeHomeRegionControlsResponse_nextToken' - If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'homeRegionControls', 'describeHomeRegionControlsResponse_homeRegionControls' - An array that contains your @HomeRegionControl@ objects.
--
-- 'httpStatus', 'describeHomeRegionControlsResponse_httpStatus' - The response's http status code.
newDescribeHomeRegionControlsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeHomeRegionControlsResponse
newDescribeHomeRegionControlsResponse pHttpStatus_ =
  DescribeHomeRegionControlsResponse'
    { nextToken =
        Prelude.Nothing,
      homeRegionControls = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
describeHomeRegionControlsResponse_nextToken :: Lens.Lens' DescribeHomeRegionControlsResponse (Prelude.Maybe Prelude.Text)
describeHomeRegionControlsResponse_nextToken = Lens.lens (\DescribeHomeRegionControlsResponse' {nextToken} -> nextToken) (\s@DescribeHomeRegionControlsResponse' {} a -> s {nextToken = a} :: DescribeHomeRegionControlsResponse)

-- | An array that contains your @HomeRegionControl@ objects.
describeHomeRegionControlsResponse_homeRegionControls :: Lens.Lens' DescribeHomeRegionControlsResponse (Prelude.Maybe [HomeRegionControl])
describeHomeRegionControlsResponse_homeRegionControls = Lens.lens (\DescribeHomeRegionControlsResponse' {homeRegionControls} -> homeRegionControls) (\s@DescribeHomeRegionControlsResponse' {} a -> s {homeRegionControls = a} :: DescribeHomeRegionControlsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeHomeRegionControlsResponse_httpStatus :: Lens.Lens' DescribeHomeRegionControlsResponse Prelude.Int
describeHomeRegionControlsResponse_httpStatus = Lens.lens (\DescribeHomeRegionControlsResponse' {httpStatus} -> httpStatus) (\s@DescribeHomeRegionControlsResponse' {} a -> s {httpStatus = a} :: DescribeHomeRegionControlsResponse)

instance
  Prelude.NFData
    DescribeHomeRegionControlsResponse
  where
  rnf DescribeHomeRegionControlsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf homeRegionControls
      `Prelude.seq` Prelude.rnf httpStatus

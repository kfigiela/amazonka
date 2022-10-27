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
-- Module      : Amazonka.SecurityHub.DescribeStandardsControls
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of security standards controls.
--
-- For each control, the results include information about whether it is
-- currently enabled, the severity, and a link to remediation information.
--
-- This operation returns paginated results.
module Amazonka.SecurityHub.DescribeStandardsControls
  ( -- * Creating a Request
    DescribeStandardsControls (..),
    newDescribeStandardsControls,

    -- * Request Lenses
    describeStandardsControls_nextToken,
    describeStandardsControls_maxResults,
    describeStandardsControls_standardsSubscriptionArn,

    -- * Destructuring the Response
    DescribeStandardsControlsResponse (..),
    newDescribeStandardsControlsResponse,

    -- * Response Lenses
    describeStandardsControlsResponse_nextToken,
    describeStandardsControlsResponse_controls,
    describeStandardsControlsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityHub.Types

-- | /See:/ 'newDescribeStandardsControls' smart constructor.
data DescribeStandardsControls = DescribeStandardsControls'
  { -- | The token that is required for pagination. On your first call to the
    -- @DescribeStandardsControls@ operation, set the value of this parameter
    -- to @NULL@.
    --
    -- For subsequent calls to the operation, to continue listing data, set the
    -- value of this parameter to the value returned from the previous
    -- response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of security standard controls to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of a resource that represents your subscription to a supported
    -- standard. To get the subscription ARNs of the standards you have
    -- enabled, use the @GetEnabledStandards@ operation.
    standardsSubscriptionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeStandardsControls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeStandardsControls_nextToken' - The token that is required for pagination. On your first call to the
-- @DescribeStandardsControls@ operation, set the value of this parameter
-- to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
--
-- 'maxResults', 'describeStandardsControls_maxResults' - The maximum number of security standard controls to return.
--
-- 'standardsSubscriptionArn', 'describeStandardsControls_standardsSubscriptionArn' - The ARN of a resource that represents your subscription to a supported
-- standard. To get the subscription ARNs of the standards you have
-- enabled, use the @GetEnabledStandards@ operation.
newDescribeStandardsControls ::
  -- | 'standardsSubscriptionArn'
  Prelude.Text ->
  DescribeStandardsControls
newDescribeStandardsControls
  pStandardsSubscriptionArn_ =
    DescribeStandardsControls'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        standardsSubscriptionArn =
          pStandardsSubscriptionArn_
      }

-- | The token that is required for pagination. On your first call to the
-- @DescribeStandardsControls@ operation, set the value of this parameter
-- to @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
describeStandardsControls_nextToken :: Lens.Lens' DescribeStandardsControls (Prelude.Maybe Prelude.Text)
describeStandardsControls_nextToken = Lens.lens (\DescribeStandardsControls' {nextToken} -> nextToken) (\s@DescribeStandardsControls' {} a -> s {nextToken = a} :: DescribeStandardsControls)

-- | The maximum number of security standard controls to return.
describeStandardsControls_maxResults :: Lens.Lens' DescribeStandardsControls (Prelude.Maybe Prelude.Natural)
describeStandardsControls_maxResults = Lens.lens (\DescribeStandardsControls' {maxResults} -> maxResults) (\s@DescribeStandardsControls' {} a -> s {maxResults = a} :: DescribeStandardsControls)

-- | The ARN of a resource that represents your subscription to a supported
-- standard. To get the subscription ARNs of the standards you have
-- enabled, use the @GetEnabledStandards@ operation.
describeStandardsControls_standardsSubscriptionArn :: Lens.Lens' DescribeStandardsControls Prelude.Text
describeStandardsControls_standardsSubscriptionArn = Lens.lens (\DescribeStandardsControls' {standardsSubscriptionArn} -> standardsSubscriptionArn) (\s@DescribeStandardsControls' {} a -> s {standardsSubscriptionArn = a} :: DescribeStandardsControls)

instance Core.AWSPager DescribeStandardsControls where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeStandardsControlsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeStandardsControlsResponse_controls
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeStandardsControls_nextToken
          Lens..~ rs
          Lens.^? describeStandardsControlsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeStandardsControls where
  type
    AWSResponse DescribeStandardsControls =
      DescribeStandardsControlsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeStandardsControlsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Controls" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeStandardsControls where
  hashWithSalt _salt DescribeStandardsControls' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` standardsSubscriptionArn

instance Prelude.NFData DescribeStandardsControls where
  rnf DescribeStandardsControls' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf standardsSubscriptionArn

instance Core.ToHeaders DescribeStandardsControls where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeStandardsControls where
  toPath DescribeStandardsControls' {..} =
    Prelude.mconcat
      [ "/standards/controls/",
        Core.toBS standardsSubscriptionArn
      ]

instance Core.ToQuery DescribeStandardsControls where
  toQuery DescribeStandardsControls' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeStandardsControlsResponse' smart constructor.
data DescribeStandardsControlsResponse = DescribeStandardsControlsResponse'
  { -- | The pagination token to use to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of security standards controls.
    controls :: Prelude.Maybe [StandardsControl],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeStandardsControlsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeStandardsControlsResponse_nextToken' - The pagination token to use to request the next page of results.
--
-- 'controls', 'describeStandardsControlsResponse_controls' - A list of security standards controls.
--
-- 'httpStatus', 'describeStandardsControlsResponse_httpStatus' - The response's http status code.
newDescribeStandardsControlsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeStandardsControlsResponse
newDescribeStandardsControlsResponse pHttpStatus_ =
  DescribeStandardsControlsResponse'
    { nextToken =
        Prelude.Nothing,
      controls = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to request the next page of results.
describeStandardsControlsResponse_nextToken :: Lens.Lens' DescribeStandardsControlsResponse (Prelude.Maybe Prelude.Text)
describeStandardsControlsResponse_nextToken = Lens.lens (\DescribeStandardsControlsResponse' {nextToken} -> nextToken) (\s@DescribeStandardsControlsResponse' {} a -> s {nextToken = a} :: DescribeStandardsControlsResponse)

-- | A list of security standards controls.
describeStandardsControlsResponse_controls :: Lens.Lens' DescribeStandardsControlsResponse (Prelude.Maybe [StandardsControl])
describeStandardsControlsResponse_controls = Lens.lens (\DescribeStandardsControlsResponse' {controls} -> controls) (\s@DescribeStandardsControlsResponse' {} a -> s {controls = a} :: DescribeStandardsControlsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeStandardsControlsResponse_httpStatus :: Lens.Lens' DescribeStandardsControlsResponse Prelude.Int
describeStandardsControlsResponse_httpStatus = Lens.lens (\DescribeStandardsControlsResponse' {httpStatus} -> httpStatus) (\s@DescribeStandardsControlsResponse' {} a -> s {httpStatus = a} :: DescribeStandardsControlsResponse)

instance
  Prelude.NFData
    DescribeStandardsControlsResponse
  where
  rnf DescribeStandardsControlsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf controls
      `Prelude.seq` Prelude.rnf httpStatus

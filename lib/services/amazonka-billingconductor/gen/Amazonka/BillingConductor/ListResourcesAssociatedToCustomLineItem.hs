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
-- Module      : Amazonka.BillingConductor.ListResourcesAssociatedToCustomLineItem
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the resources associated to a custom line item.
--
-- This operation returns paginated results.
module Amazonka.BillingConductor.ListResourcesAssociatedToCustomLineItem
  ( -- * Creating a Request
    ListResourcesAssociatedToCustomLineItem (..),
    newListResourcesAssociatedToCustomLineItem,

    -- * Request Lenses
    listResourcesAssociatedToCustomLineItem_nextToken,
    listResourcesAssociatedToCustomLineItem_billingPeriod,
    listResourcesAssociatedToCustomLineItem_filters,
    listResourcesAssociatedToCustomLineItem_maxResults,
    listResourcesAssociatedToCustomLineItem_arn,

    -- * Destructuring the Response
    ListResourcesAssociatedToCustomLineItemResponse (..),
    newListResourcesAssociatedToCustomLineItemResponse,

    -- * Response Lenses
    listResourcesAssociatedToCustomLineItemResponse_nextToken,
    listResourcesAssociatedToCustomLineItemResponse_associatedResources,
    listResourcesAssociatedToCustomLineItemResponse_arn,
    listResourcesAssociatedToCustomLineItemResponse_httpStatus,
  )
where

import Amazonka.BillingConductor.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListResourcesAssociatedToCustomLineItem' smart constructor.
data ListResourcesAssociatedToCustomLineItem = ListResourcesAssociatedToCustomLineItem'
  { -- | (Optional) The pagination token returned by a previous request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The billing period for which the resource associations will be listed.
    billingPeriod :: Prelude.Maybe Prelude.Text,
    -- | (Optional) A @ListResourcesAssociatedToCustomLineItemFilter@ that can
    -- specify the types of resources that should be retrieved.
    filters :: Prelude.Maybe ListResourcesAssociatedToCustomLineItemFilter,
    -- | (Optional) The maximum number of resource associations to be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the custom line item for which the resource associations will
    -- be listed.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResourcesAssociatedToCustomLineItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourcesAssociatedToCustomLineItem_nextToken' - (Optional) The pagination token returned by a previous request.
--
-- 'billingPeriod', 'listResourcesAssociatedToCustomLineItem_billingPeriod' - The billing period for which the resource associations will be listed.
--
-- 'filters', 'listResourcesAssociatedToCustomLineItem_filters' - (Optional) A @ListResourcesAssociatedToCustomLineItemFilter@ that can
-- specify the types of resources that should be retrieved.
--
-- 'maxResults', 'listResourcesAssociatedToCustomLineItem_maxResults' - (Optional) The maximum number of resource associations to be retrieved.
--
-- 'arn', 'listResourcesAssociatedToCustomLineItem_arn' - The ARN of the custom line item for which the resource associations will
-- be listed.
newListResourcesAssociatedToCustomLineItem ::
  -- | 'arn'
  Prelude.Text ->
  ListResourcesAssociatedToCustomLineItem
newListResourcesAssociatedToCustomLineItem pArn_ =
  ListResourcesAssociatedToCustomLineItem'
    { nextToken =
        Prelude.Nothing,
      billingPeriod = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      arn = pArn_
    }

-- | (Optional) The pagination token returned by a previous request.
listResourcesAssociatedToCustomLineItem_nextToken :: Lens.Lens' ListResourcesAssociatedToCustomLineItem (Prelude.Maybe Prelude.Text)
listResourcesAssociatedToCustomLineItem_nextToken = Lens.lens (\ListResourcesAssociatedToCustomLineItem' {nextToken} -> nextToken) (\s@ListResourcesAssociatedToCustomLineItem' {} a -> s {nextToken = a} :: ListResourcesAssociatedToCustomLineItem)

-- | The billing period for which the resource associations will be listed.
listResourcesAssociatedToCustomLineItem_billingPeriod :: Lens.Lens' ListResourcesAssociatedToCustomLineItem (Prelude.Maybe Prelude.Text)
listResourcesAssociatedToCustomLineItem_billingPeriod = Lens.lens (\ListResourcesAssociatedToCustomLineItem' {billingPeriod} -> billingPeriod) (\s@ListResourcesAssociatedToCustomLineItem' {} a -> s {billingPeriod = a} :: ListResourcesAssociatedToCustomLineItem)

-- | (Optional) A @ListResourcesAssociatedToCustomLineItemFilter@ that can
-- specify the types of resources that should be retrieved.
listResourcesAssociatedToCustomLineItem_filters :: Lens.Lens' ListResourcesAssociatedToCustomLineItem (Prelude.Maybe ListResourcesAssociatedToCustomLineItemFilter)
listResourcesAssociatedToCustomLineItem_filters = Lens.lens (\ListResourcesAssociatedToCustomLineItem' {filters} -> filters) (\s@ListResourcesAssociatedToCustomLineItem' {} a -> s {filters = a} :: ListResourcesAssociatedToCustomLineItem)

-- | (Optional) The maximum number of resource associations to be retrieved.
listResourcesAssociatedToCustomLineItem_maxResults :: Lens.Lens' ListResourcesAssociatedToCustomLineItem (Prelude.Maybe Prelude.Natural)
listResourcesAssociatedToCustomLineItem_maxResults = Lens.lens (\ListResourcesAssociatedToCustomLineItem' {maxResults} -> maxResults) (\s@ListResourcesAssociatedToCustomLineItem' {} a -> s {maxResults = a} :: ListResourcesAssociatedToCustomLineItem)

-- | The ARN of the custom line item for which the resource associations will
-- be listed.
listResourcesAssociatedToCustomLineItem_arn :: Lens.Lens' ListResourcesAssociatedToCustomLineItem Prelude.Text
listResourcesAssociatedToCustomLineItem_arn = Lens.lens (\ListResourcesAssociatedToCustomLineItem' {arn} -> arn) (\s@ListResourcesAssociatedToCustomLineItem' {} a -> s {arn = a} :: ListResourcesAssociatedToCustomLineItem)

instance
  Core.AWSPager
    ListResourcesAssociatedToCustomLineItem
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listResourcesAssociatedToCustomLineItemResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listResourcesAssociatedToCustomLineItemResponse_associatedResources
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listResourcesAssociatedToCustomLineItem_nextToken
          Lens..~ rs
            Lens.^? listResourcesAssociatedToCustomLineItemResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListResourcesAssociatedToCustomLineItem
  where
  type
    AWSResponse
      ListResourcesAssociatedToCustomLineItem =
      ListResourcesAssociatedToCustomLineItemResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListResourcesAssociatedToCustomLineItemResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "AssociatedResources"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (x Core..?> "Arn")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListResourcesAssociatedToCustomLineItem
  where
  hashWithSalt
    _salt
    ListResourcesAssociatedToCustomLineItem' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` billingPeriod
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` arn

instance
  Prelude.NFData
    ListResourcesAssociatedToCustomLineItem
  where
  rnf ListResourcesAssociatedToCustomLineItem' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf billingPeriod
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf arn

instance
  Core.ToHeaders
    ListResourcesAssociatedToCustomLineItem
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListResourcesAssociatedToCustomLineItem
  where
  toJSON ListResourcesAssociatedToCustomLineItem' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("BillingPeriod" Core..=) Prelude.<$> billingPeriod,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("Arn" Core..= arn)
          ]
      )

instance
  Core.ToPath
    ListResourcesAssociatedToCustomLineItem
  where
  toPath =
    Prelude.const
      "/list-resources-associated-to-custom-line-item"

instance
  Core.ToQuery
    ListResourcesAssociatedToCustomLineItem
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListResourcesAssociatedToCustomLineItemResponse' smart constructor.
data ListResourcesAssociatedToCustomLineItemResponse = ListResourcesAssociatedToCustomLineItemResponse'
  { -- | The pagination token to be used in subsequent requests to retrieve
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @ListResourcesAssociatedToCustomLineItemResponseElement@ for
    -- each resource association retrieved.
    associatedResources :: Prelude.Maybe [ListResourcesAssociatedToCustomLineItemResponseElement],
    -- | The custom line item ARN for which the resource associations are listed.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResourcesAssociatedToCustomLineItemResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourcesAssociatedToCustomLineItemResponse_nextToken' - The pagination token to be used in subsequent requests to retrieve
-- additional results.
--
-- 'associatedResources', 'listResourcesAssociatedToCustomLineItemResponse_associatedResources' - A list of @ListResourcesAssociatedToCustomLineItemResponseElement@ for
-- each resource association retrieved.
--
-- 'arn', 'listResourcesAssociatedToCustomLineItemResponse_arn' - The custom line item ARN for which the resource associations are listed.
--
-- 'httpStatus', 'listResourcesAssociatedToCustomLineItemResponse_httpStatus' - The response's http status code.
newListResourcesAssociatedToCustomLineItemResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListResourcesAssociatedToCustomLineItemResponse
newListResourcesAssociatedToCustomLineItemResponse
  pHttpStatus_ =
    ListResourcesAssociatedToCustomLineItemResponse'
      { nextToken =
          Prelude.Nothing,
        associatedResources =
          Prelude.Nothing,
        arn = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The pagination token to be used in subsequent requests to retrieve
-- additional results.
listResourcesAssociatedToCustomLineItemResponse_nextToken :: Lens.Lens' ListResourcesAssociatedToCustomLineItemResponse (Prelude.Maybe Prelude.Text)
listResourcesAssociatedToCustomLineItemResponse_nextToken = Lens.lens (\ListResourcesAssociatedToCustomLineItemResponse' {nextToken} -> nextToken) (\s@ListResourcesAssociatedToCustomLineItemResponse' {} a -> s {nextToken = a} :: ListResourcesAssociatedToCustomLineItemResponse)

-- | A list of @ListResourcesAssociatedToCustomLineItemResponseElement@ for
-- each resource association retrieved.
listResourcesAssociatedToCustomLineItemResponse_associatedResources :: Lens.Lens' ListResourcesAssociatedToCustomLineItemResponse (Prelude.Maybe [ListResourcesAssociatedToCustomLineItemResponseElement])
listResourcesAssociatedToCustomLineItemResponse_associatedResources = Lens.lens (\ListResourcesAssociatedToCustomLineItemResponse' {associatedResources} -> associatedResources) (\s@ListResourcesAssociatedToCustomLineItemResponse' {} a -> s {associatedResources = a} :: ListResourcesAssociatedToCustomLineItemResponse) Prelude.. Lens.mapping Lens.coerced

-- | The custom line item ARN for which the resource associations are listed.
listResourcesAssociatedToCustomLineItemResponse_arn :: Lens.Lens' ListResourcesAssociatedToCustomLineItemResponse (Prelude.Maybe Prelude.Text)
listResourcesAssociatedToCustomLineItemResponse_arn = Lens.lens (\ListResourcesAssociatedToCustomLineItemResponse' {arn} -> arn) (\s@ListResourcesAssociatedToCustomLineItemResponse' {} a -> s {arn = a} :: ListResourcesAssociatedToCustomLineItemResponse)

-- | The response's http status code.
listResourcesAssociatedToCustomLineItemResponse_httpStatus :: Lens.Lens' ListResourcesAssociatedToCustomLineItemResponse Prelude.Int
listResourcesAssociatedToCustomLineItemResponse_httpStatus = Lens.lens (\ListResourcesAssociatedToCustomLineItemResponse' {httpStatus} -> httpStatus) (\s@ListResourcesAssociatedToCustomLineItemResponse' {} a -> s {httpStatus = a} :: ListResourcesAssociatedToCustomLineItemResponse)

instance
  Prelude.NFData
    ListResourcesAssociatedToCustomLineItemResponse
  where
  rnf
    ListResourcesAssociatedToCustomLineItemResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf associatedResources
        `Prelude.seq` Prelude.rnf arn
        `Prelude.seq` Prelude.rnf httpStatus

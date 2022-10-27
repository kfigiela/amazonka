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
-- Module      : Amazonka.Route53Resolver.ListResolverQueryLogConfigs
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the specified query logging configurations. Each
-- configuration defines where you want Resolver to save DNS query logs and
-- specifies the VPCs that you want to log queries for.
--
-- This operation returns paginated results.
module Amazonka.Route53Resolver.ListResolverQueryLogConfigs
  ( -- * Creating a Request
    ListResolverQueryLogConfigs (..),
    newListResolverQueryLogConfigs,

    -- * Request Lenses
    listResolverQueryLogConfigs_sortOrder,
    listResolverQueryLogConfigs_nextToken,
    listResolverQueryLogConfigs_filters,
    listResolverQueryLogConfigs_sortBy,
    listResolverQueryLogConfigs_maxResults,

    -- * Destructuring the Response
    ListResolverQueryLogConfigsResponse (..),
    newListResolverQueryLogConfigsResponse,

    -- * Response Lenses
    listResolverQueryLogConfigsResponse_nextToken,
    listResolverQueryLogConfigsResponse_resolverQueryLogConfigs,
    listResolverQueryLogConfigsResponse_totalFilteredCount,
    listResolverQueryLogConfigsResponse_totalCount,
    listResolverQueryLogConfigsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Route53Resolver.Types

-- | /See:/ 'newListResolverQueryLogConfigs' smart constructor.
data ListResolverQueryLogConfigs = ListResolverQueryLogConfigs'
  { -- | If you specified a value for @SortBy@, the order that you want query
    -- logging configurations to be listed in, @ASCENDING@ or @DESCENDING@.
    --
    -- If you submit a second or subsequent @ListResolverQueryLogConfigs@
    -- request and specify the @NextToken@ parameter, you must use the same
    -- value for @SortOrder@, if any, as in the previous request.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | For the first @ListResolverQueryLogConfigs@ request, omit this value.
    --
    -- If there are more than @MaxResults@ query logging configurations that
    -- match the values that you specify for @Filters@, you can submit another
    -- @ListResolverQueryLogConfigs@ request to get the next group of
    -- configurations. In the next request, specify the value of @NextToken@
    -- from the previous response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An optional specification to return a subset of query logging
    -- configurations.
    --
    -- If you submit a second or subsequent @ListResolverQueryLogConfigs@
    -- request and specify the @NextToken@ parameter, you must use the same
    -- values for @Filters@, if any, as in the previous request.
    filters :: Prelude.Maybe [Filter],
    -- | The element that you want Resolver to sort query logging configurations
    -- by.
    --
    -- If you submit a second or subsequent @ListResolverQueryLogConfigs@
    -- request and specify the @NextToken@ parameter, you must use the same
    -- value for @SortBy@, if any, as in the previous request.
    --
    -- Valid values include the following elements:
    --
    -- -   @Arn@: The ARN of the query logging configuration
    --
    -- -   @AssociationCount@: The number of VPCs that are associated with the
    --     specified configuration
    --
    -- -   @CreationTime@: The date and time that Resolver returned when the
    --     configuration was created
    --
    -- -   @CreatorRequestId@: The value that was specified for
    --     @CreatorRequestId@ when the configuration was created
    --
    -- -   @DestinationArn@: The location that logs are sent to
    --
    -- -   @Id@: The ID of the configuration
    --
    -- -   @Name@: The name of the configuration
    --
    -- -   @OwnerId@: The Amazon Web Services account number of the account
    --     that created the configuration
    --
    -- -   @ShareStatus@: Whether the configuration is shared with other Amazon
    --     Web Services accounts or shared with the current account by another
    --     Amazon Web Services account. Sharing is configured through Resource
    --     Access Manager (RAM).
    --
    -- -   @Status@: The current status of the configuration. Valid values
    --     include the following:
    --
    --     -   @CREATING@: Resolver is creating the query logging
    --         configuration.
    --
    --     -   @CREATED@: The query logging configuration was successfully
    --         created. Resolver is logging queries that originate in the
    --         specified VPC.
    --
    --     -   @DELETING@: Resolver is deleting this query logging
    --         configuration.
    --
    --     -   @FAILED@: Resolver either couldn\'t create or couldn\'t delete
    --         the query logging configuration. Here are two common causes:
    --
    --         -   The specified destination (for example, an Amazon S3 bucket)
    --             was deleted.
    --
    --         -   Permissions don\'t allow sending logs to the destination.
    sortBy :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of query logging configurations that you want to
    -- return in the response to a @ListResolverQueryLogConfigs@ request. If
    -- you don\'t specify a value for @MaxResults@, Resolver returns up to 100
    -- query logging configurations.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResolverQueryLogConfigs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listResolverQueryLogConfigs_sortOrder' - If you specified a value for @SortBy@, the order that you want query
-- logging configurations to be listed in, @ASCENDING@ or @DESCENDING@.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- value for @SortOrder@, if any, as in the previous request.
--
-- 'nextToken', 'listResolverQueryLogConfigs_nextToken' - For the first @ListResolverQueryLogConfigs@ request, omit this value.
--
-- If there are more than @MaxResults@ query logging configurations that
-- match the values that you specify for @Filters@, you can submit another
-- @ListResolverQueryLogConfigs@ request to get the next group of
-- configurations. In the next request, specify the value of @NextToken@
-- from the previous response.
--
-- 'filters', 'listResolverQueryLogConfigs_filters' - An optional specification to return a subset of query logging
-- configurations.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- values for @Filters@, if any, as in the previous request.
--
-- 'sortBy', 'listResolverQueryLogConfigs_sortBy' - The element that you want Resolver to sort query logging configurations
-- by.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- value for @SortBy@, if any, as in the previous request.
--
-- Valid values include the following elements:
--
-- -   @Arn@: The ARN of the query logging configuration
--
-- -   @AssociationCount@: The number of VPCs that are associated with the
--     specified configuration
--
-- -   @CreationTime@: The date and time that Resolver returned when the
--     configuration was created
--
-- -   @CreatorRequestId@: The value that was specified for
--     @CreatorRequestId@ when the configuration was created
--
-- -   @DestinationArn@: The location that logs are sent to
--
-- -   @Id@: The ID of the configuration
--
-- -   @Name@: The name of the configuration
--
-- -   @OwnerId@: The Amazon Web Services account number of the account
--     that created the configuration
--
-- -   @ShareStatus@: Whether the configuration is shared with other Amazon
--     Web Services accounts or shared with the current account by another
--     Amazon Web Services account. Sharing is configured through Resource
--     Access Manager (RAM).
--
-- -   @Status@: The current status of the configuration. Valid values
--     include the following:
--
--     -   @CREATING@: Resolver is creating the query logging
--         configuration.
--
--     -   @CREATED@: The query logging configuration was successfully
--         created. Resolver is logging queries that originate in the
--         specified VPC.
--
--     -   @DELETING@: Resolver is deleting this query logging
--         configuration.
--
--     -   @FAILED@: Resolver either couldn\'t create or couldn\'t delete
--         the query logging configuration. Here are two common causes:
--
--         -   The specified destination (for example, an Amazon S3 bucket)
--             was deleted.
--
--         -   Permissions don\'t allow sending logs to the destination.
--
-- 'maxResults', 'listResolverQueryLogConfigs_maxResults' - The maximum number of query logging configurations that you want to
-- return in the response to a @ListResolverQueryLogConfigs@ request. If
-- you don\'t specify a value for @MaxResults@, Resolver returns up to 100
-- query logging configurations.
newListResolverQueryLogConfigs ::
  ListResolverQueryLogConfigs
newListResolverQueryLogConfigs =
  ListResolverQueryLogConfigs'
    { sortOrder =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If you specified a value for @SortBy@, the order that you want query
-- logging configurations to be listed in, @ASCENDING@ or @DESCENDING@.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- value for @SortOrder@, if any, as in the previous request.
listResolverQueryLogConfigs_sortOrder :: Lens.Lens' ListResolverQueryLogConfigs (Prelude.Maybe SortOrder)
listResolverQueryLogConfigs_sortOrder = Lens.lens (\ListResolverQueryLogConfigs' {sortOrder} -> sortOrder) (\s@ListResolverQueryLogConfigs' {} a -> s {sortOrder = a} :: ListResolverQueryLogConfigs)

-- | For the first @ListResolverQueryLogConfigs@ request, omit this value.
--
-- If there are more than @MaxResults@ query logging configurations that
-- match the values that you specify for @Filters@, you can submit another
-- @ListResolverQueryLogConfigs@ request to get the next group of
-- configurations. In the next request, specify the value of @NextToken@
-- from the previous response.
listResolverQueryLogConfigs_nextToken :: Lens.Lens' ListResolverQueryLogConfigs (Prelude.Maybe Prelude.Text)
listResolverQueryLogConfigs_nextToken = Lens.lens (\ListResolverQueryLogConfigs' {nextToken} -> nextToken) (\s@ListResolverQueryLogConfigs' {} a -> s {nextToken = a} :: ListResolverQueryLogConfigs)

-- | An optional specification to return a subset of query logging
-- configurations.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- values for @Filters@, if any, as in the previous request.
listResolverQueryLogConfigs_filters :: Lens.Lens' ListResolverQueryLogConfigs (Prelude.Maybe [Filter])
listResolverQueryLogConfigs_filters = Lens.lens (\ListResolverQueryLogConfigs' {filters} -> filters) (\s@ListResolverQueryLogConfigs' {} a -> s {filters = a} :: ListResolverQueryLogConfigs) Prelude.. Lens.mapping Lens.coerced

-- | The element that you want Resolver to sort query logging configurations
-- by.
--
-- If you submit a second or subsequent @ListResolverQueryLogConfigs@
-- request and specify the @NextToken@ parameter, you must use the same
-- value for @SortBy@, if any, as in the previous request.
--
-- Valid values include the following elements:
--
-- -   @Arn@: The ARN of the query logging configuration
--
-- -   @AssociationCount@: The number of VPCs that are associated with the
--     specified configuration
--
-- -   @CreationTime@: The date and time that Resolver returned when the
--     configuration was created
--
-- -   @CreatorRequestId@: The value that was specified for
--     @CreatorRequestId@ when the configuration was created
--
-- -   @DestinationArn@: The location that logs are sent to
--
-- -   @Id@: The ID of the configuration
--
-- -   @Name@: The name of the configuration
--
-- -   @OwnerId@: The Amazon Web Services account number of the account
--     that created the configuration
--
-- -   @ShareStatus@: Whether the configuration is shared with other Amazon
--     Web Services accounts or shared with the current account by another
--     Amazon Web Services account. Sharing is configured through Resource
--     Access Manager (RAM).
--
-- -   @Status@: The current status of the configuration. Valid values
--     include the following:
--
--     -   @CREATING@: Resolver is creating the query logging
--         configuration.
--
--     -   @CREATED@: The query logging configuration was successfully
--         created. Resolver is logging queries that originate in the
--         specified VPC.
--
--     -   @DELETING@: Resolver is deleting this query logging
--         configuration.
--
--     -   @FAILED@: Resolver either couldn\'t create or couldn\'t delete
--         the query logging configuration. Here are two common causes:
--
--         -   The specified destination (for example, an Amazon S3 bucket)
--             was deleted.
--
--         -   Permissions don\'t allow sending logs to the destination.
listResolverQueryLogConfigs_sortBy :: Lens.Lens' ListResolverQueryLogConfigs (Prelude.Maybe Prelude.Text)
listResolverQueryLogConfigs_sortBy = Lens.lens (\ListResolverQueryLogConfigs' {sortBy} -> sortBy) (\s@ListResolverQueryLogConfigs' {} a -> s {sortBy = a} :: ListResolverQueryLogConfigs)

-- | The maximum number of query logging configurations that you want to
-- return in the response to a @ListResolverQueryLogConfigs@ request. If
-- you don\'t specify a value for @MaxResults@, Resolver returns up to 100
-- query logging configurations.
listResolverQueryLogConfigs_maxResults :: Lens.Lens' ListResolverQueryLogConfigs (Prelude.Maybe Prelude.Natural)
listResolverQueryLogConfigs_maxResults = Lens.lens (\ListResolverQueryLogConfigs' {maxResults} -> maxResults) (\s@ListResolverQueryLogConfigs' {} a -> s {maxResults = a} :: ListResolverQueryLogConfigs)

instance Core.AWSPager ListResolverQueryLogConfigs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listResolverQueryLogConfigsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listResolverQueryLogConfigsResponse_resolverQueryLogConfigs
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listResolverQueryLogConfigs_nextToken
          Lens..~ rs
          Lens.^? listResolverQueryLogConfigsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListResolverQueryLogConfigs where
  type
    AWSResponse ListResolverQueryLogConfigs =
      ListResolverQueryLogConfigsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListResolverQueryLogConfigsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ResolverQueryLogConfigs"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "TotalFilteredCount")
            Prelude.<*> (x Core..?> "TotalCount")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListResolverQueryLogConfigs where
  hashWithSalt _salt ListResolverQueryLogConfigs' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListResolverQueryLogConfigs where
  rnf ListResolverQueryLogConfigs' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListResolverQueryLogConfigs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.ListResolverQueryLogConfigs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListResolverQueryLogConfigs where
  toJSON ListResolverQueryLogConfigs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListResolverQueryLogConfigs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListResolverQueryLogConfigs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListResolverQueryLogConfigsResponse' smart constructor.
data ListResolverQueryLogConfigsResponse = ListResolverQueryLogConfigsResponse'
  { -- | If there are more than @MaxResults@ query logging configurations, you
    -- can submit another @ListResolverQueryLogConfigs@ request to get the next
    -- group of configurations. In the next request, specify the value of
    -- @NextToken@ from the previous response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list that contains one @ResolverQueryLogConfig@ element for each query
    -- logging configuration that matches the values that you specified for
    -- @Filter@.
    resolverQueryLogConfigs :: Prelude.Maybe [ResolverQueryLogConfig],
    -- | The total number of query logging configurations that were created by
    -- the current account in the specified Region and that match the filters
    -- that were specified in the @ListResolverQueryLogConfigs@ request. For
    -- the total number of query logging configurations that were created by
    -- the current account in the specified Region, see @TotalCount@.
    totalFilteredCount :: Prelude.Maybe Prelude.Int,
    -- | The total number of query logging configurations that were created by
    -- the current account in the specified Region. This count can differ from
    -- the number of query logging configurations that are returned in a
    -- @ListResolverQueryLogConfigs@ response, depending on the values that you
    -- specify in the request.
    totalCount :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResolverQueryLogConfigsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResolverQueryLogConfigsResponse_nextToken' - If there are more than @MaxResults@ query logging configurations, you
-- can submit another @ListResolverQueryLogConfigs@ request to get the next
-- group of configurations. In the next request, specify the value of
-- @NextToken@ from the previous response.
--
-- 'resolverQueryLogConfigs', 'listResolverQueryLogConfigsResponse_resolverQueryLogConfigs' - A list that contains one @ResolverQueryLogConfig@ element for each query
-- logging configuration that matches the values that you specified for
-- @Filter@.
--
-- 'totalFilteredCount', 'listResolverQueryLogConfigsResponse_totalFilteredCount' - The total number of query logging configurations that were created by
-- the current account in the specified Region and that match the filters
-- that were specified in the @ListResolverQueryLogConfigs@ request. For
-- the total number of query logging configurations that were created by
-- the current account in the specified Region, see @TotalCount@.
--
-- 'totalCount', 'listResolverQueryLogConfigsResponse_totalCount' - The total number of query logging configurations that were created by
-- the current account in the specified Region. This count can differ from
-- the number of query logging configurations that are returned in a
-- @ListResolverQueryLogConfigs@ response, depending on the values that you
-- specify in the request.
--
-- 'httpStatus', 'listResolverQueryLogConfigsResponse_httpStatus' - The response's http status code.
newListResolverQueryLogConfigsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListResolverQueryLogConfigsResponse
newListResolverQueryLogConfigsResponse pHttpStatus_ =
  ListResolverQueryLogConfigsResponse'
    { nextToken =
        Prelude.Nothing,
      resolverQueryLogConfigs =
        Prelude.Nothing,
      totalFilteredCount = Prelude.Nothing,
      totalCount = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are more than @MaxResults@ query logging configurations, you
-- can submit another @ListResolverQueryLogConfigs@ request to get the next
-- group of configurations. In the next request, specify the value of
-- @NextToken@ from the previous response.
listResolverQueryLogConfigsResponse_nextToken :: Lens.Lens' ListResolverQueryLogConfigsResponse (Prelude.Maybe Prelude.Text)
listResolverQueryLogConfigsResponse_nextToken = Lens.lens (\ListResolverQueryLogConfigsResponse' {nextToken} -> nextToken) (\s@ListResolverQueryLogConfigsResponse' {} a -> s {nextToken = a} :: ListResolverQueryLogConfigsResponse)

-- | A list that contains one @ResolverQueryLogConfig@ element for each query
-- logging configuration that matches the values that you specified for
-- @Filter@.
listResolverQueryLogConfigsResponse_resolverQueryLogConfigs :: Lens.Lens' ListResolverQueryLogConfigsResponse (Prelude.Maybe [ResolverQueryLogConfig])
listResolverQueryLogConfigsResponse_resolverQueryLogConfigs = Lens.lens (\ListResolverQueryLogConfigsResponse' {resolverQueryLogConfigs} -> resolverQueryLogConfigs) (\s@ListResolverQueryLogConfigsResponse' {} a -> s {resolverQueryLogConfigs = a} :: ListResolverQueryLogConfigsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of query logging configurations that were created by
-- the current account in the specified Region and that match the filters
-- that were specified in the @ListResolverQueryLogConfigs@ request. For
-- the total number of query logging configurations that were created by
-- the current account in the specified Region, see @TotalCount@.
listResolverQueryLogConfigsResponse_totalFilteredCount :: Lens.Lens' ListResolverQueryLogConfigsResponse (Prelude.Maybe Prelude.Int)
listResolverQueryLogConfigsResponse_totalFilteredCount = Lens.lens (\ListResolverQueryLogConfigsResponse' {totalFilteredCount} -> totalFilteredCount) (\s@ListResolverQueryLogConfigsResponse' {} a -> s {totalFilteredCount = a} :: ListResolverQueryLogConfigsResponse)

-- | The total number of query logging configurations that were created by
-- the current account in the specified Region. This count can differ from
-- the number of query logging configurations that are returned in a
-- @ListResolverQueryLogConfigs@ response, depending on the values that you
-- specify in the request.
listResolverQueryLogConfigsResponse_totalCount :: Lens.Lens' ListResolverQueryLogConfigsResponse (Prelude.Maybe Prelude.Int)
listResolverQueryLogConfigsResponse_totalCount = Lens.lens (\ListResolverQueryLogConfigsResponse' {totalCount} -> totalCount) (\s@ListResolverQueryLogConfigsResponse' {} a -> s {totalCount = a} :: ListResolverQueryLogConfigsResponse)

-- | The response's http status code.
listResolverQueryLogConfigsResponse_httpStatus :: Lens.Lens' ListResolverQueryLogConfigsResponse Prelude.Int
listResolverQueryLogConfigsResponse_httpStatus = Lens.lens (\ListResolverQueryLogConfigsResponse' {httpStatus} -> httpStatus) (\s@ListResolverQueryLogConfigsResponse' {} a -> s {httpStatus = a} :: ListResolverQueryLogConfigsResponse)

instance
  Prelude.NFData
    ListResolverQueryLogConfigsResponse
  where
  rnf ListResolverQueryLogConfigsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resolverQueryLogConfigs
      `Prelude.seq` Prelude.rnf totalFilteredCount
      `Prelude.seq` Prelude.rnf totalCount
      `Prelude.seq` Prelude.rnf httpStatus

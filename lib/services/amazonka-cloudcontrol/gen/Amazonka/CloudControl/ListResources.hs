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
-- Module      : Amazonka.CloudControl.ListResources
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified resources. For more information,
-- see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html Discovering resources>
-- in the /Amazon Web Services Cloud Control API User Guide/.
--
-- You can use this action to return information about existing resources
-- in your account and Amazon Web Services Region, whether those resources
-- were provisioned using Cloud Control API.
--
-- This operation returns paginated results.
module Amazonka.CloudControl.ListResources
  ( -- * Creating a Request
    ListResources (..),
    newListResources,

    -- * Request Lenses
    listResources_resourceModel,
    listResources_nextToken,
    listResources_roleArn,
    listResources_maxResults,
    listResources_typeVersionId,
    listResources_typeName,

    -- * Destructuring the Response
    ListResourcesResponse (..),
    newListResourcesResponse,

    -- * Response Lenses
    listResourcesResponse_nextToken,
    listResourcesResponse_resourceDescriptions,
    listResourcesResponse_typeName,
    listResourcesResponse_httpStatus,
  )
where

import Amazonka.CloudControl.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListResources' smart constructor.
data ListResources = ListResources'
  { -- | The resource model to use to select the resources to return.
    resourceModel :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | If the previous paginated request didn\'t return all of the remaining
    -- results, the response object\'s @NextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call this action again and
    -- assign that token to the request object\'s @NextToken@ parameter. If
    -- there are no remaining results, the previous response object\'s
    -- @NextToken@ parameter is set to @null@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Identity and Access Management
    -- (IAM) role for Cloud Control API to use when performing this resource
    -- operation. The role specified must have the permissions required for
    -- this operation. The necessary permissions for each event handler are
    -- defined in the @ handlers @ section of the
    -- <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html resource type definition schema>.
    --
    -- If you do not specify a role, Cloud Control API uses a temporary session
    -- created using your Amazon Web Services user credentials.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions Specifying credentials>
    -- in the /Amazon Web Services Cloud Control API User Guide/.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Reserved.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | For private resource types, the type version to use in this resource
    -- operation. If you do not specify a resource version, CloudFormation uses
    -- the default version.
    typeVersionId :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource type.
    typeName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceModel', 'listResources_resourceModel' - The resource model to use to select the resources to return.
--
-- 'nextToken', 'listResources_nextToken' - If the previous paginated request didn\'t return all of the remaining
-- results, the response object\'s @NextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call this action again and
-- assign that token to the request object\'s @NextToken@ parameter. If
-- there are no remaining results, the previous response object\'s
-- @NextToken@ parameter is set to @null@.
--
-- 'roleArn', 'listResources_roleArn' - The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) role for Cloud Control API to use when performing this resource
-- operation. The role specified must have the permissions required for
-- this operation. The necessary permissions for each event handler are
-- defined in the @ handlers @ section of the
-- <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html resource type definition schema>.
--
-- If you do not specify a role, Cloud Control API uses a temporary session
-- created using your Amazon Web Services user credentials.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions Specifying credentials>
-- in the /Amazon Web Services Cloud Control API User Guide/.
--
-- 'maxResults', 'listResources_maxResults' - Reserved.
--
-- 'typeVersionId', 'listResources_typeVersionId' - For private resource types, the type version to use in this resource
-- operation. If you do not specify a resource version, CloudFormation uses
-- the default version.
--
-- 'typeName', 'listResources_typeName' - The name of the resource type.
newListResources ::
  -- | 'typeName'
  Prelude.Text ->
  ListResources
newListResources pTypeName_ =
  ListResources'
    { resourceModel = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      typeVersionId = Prelude.Nothing,
      typeName = pTypeName_
    }

-- | The resource model to use to select the resources to return.
listResources_resourceModel :: Lens.Lens' ListResources (Prelude.Maybe Prelude.Text)
listResources_resourceModel = Lens.lens (\ListResources' {resourceModel} -> resourceModel) (\s@ListResources' {} a -> s {resourceModel = a} :: ListResources) Prelude.. Lens.mapping Core._Sensitive

-- | If the previous paginated request didn\'t return all of the remaining
-- results, the response object\'s @NextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call this action again and
-- assign that token to the request object\'s @NextToken@ parameter. If
-- there are no remaining results, the previous response object\'s
-- @NextToken@ parameter is set to @null@.
listResources_nextToken :: Lens.Lens' ListResources (Prelude.Maybe Prelude.Text)
listResources_nextToken = Lens.lens (\ListResources' {nextToken} -> nextToken) (\s@ListResources' {} a -> s {nextToken = a} :: ListResources)

-- | The Amazon Resource Name (ARN) of the Identity and Access Management
-- (IAM) role for Cloud Control API to use when performing this resource
-- operation. The role specified must have the permissions required for
-- this operation. The necessary permissions for each event handler are
-- defined in the @ handlers @ section of the
-- <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html resource type definition schema>.
--
-- If you do not specify a role, Cloud Control API uses a temporary session
-- created using your Amazon Web Services user credentials.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions Specifying credentials>
-- in the /Amazon Web Services Cloud Control API User Guide/.
listResources_roleArn :: Lens.Lens' ListResources (Prelude.Maybe Prelude.Text)
listResources_roleArn = Lens.lens (\ListResources' {roleArn} -> roleArn) (\s@ListResources' {} a -> s {roleArn = a} :: ListResources)

-- | Reserved.
listResources_maxResults :: Lens.Lens' ListResources (Prelude.Maybe Prelude.Natural)
listResources_maxResults = Lens.lens (\ListResources' {maxResults} -> maxResults) (\s@ListResources' {} a -> s {maxResults = a} :: ListResources)

-- | For private resource types, the type version to use in this resource
-- operation. If you do not specify a resource version, CloudFormation uses
-- the default version.
listResources_typeVersionId :: Lens.Lens' ListResources (Prelude.Maybe Prelude.Text)
listResources_typeVersionId = Lens.lens (\ListResources' {typeVersionId} -> typeVersionId) (\s@ListResources' {} a -> s {typeVersionId = a} :: ListResources)

-- | The name of the resource type.
listResources_typeName :: Lens.Lens' ListResources Prelude.Text
listResources_typeName = Lens.lens (\ListResources' {typeName} -> typeName) (\s@ListResources' {} a -> s {typeName = a} :: ListResources)

instance Core.AWSPager ListResources where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listResourcesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listResourcesResponse_resourceDescriptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listResources_nextToken
          Lens..~ rs
          Lens.^? listResourcesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListResources where
  type
    AWSResponse ListResources =
      ListResourcesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListResourcesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ResourceDescriptions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "TypeName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListResources where
  hashWithSalt _salt ListResources' {..} =
    _salt `Prelude.hashWithSalt` resourceModel
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` typeVersionId
      `Prelude.hashWithSalt` typeName

instance Prelude.NFData ListResources where
  rnf ListResources' {..} =
    Prelude.rnf resourceModel
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf typeVersionId
      `Prelude.seq` Prelude.rnf typeName

instance Core.ToHeaders ListResources where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CloudApiService.ListResources" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListResources where
  toJSON ListResources' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ResourceModel" Core..=) Prelude.<$> resourceModel,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("TypeVersionId" Core..=) Prelude.<$> typeVersionId,
            Prelude.Just ("TypeName" Core..= typeName)
          ]
      )

instance Core.ToPath ListResources where
  toPath = Prelude.const "/"

instance Core.ToQuery ListResources where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListResourcesResponse' smart constructor.
data ListResourcesResponse = ListResourcesResponse'
  { -- | If the request doesn\'t return all of the remaining results, @NextToken@
    -- is set to a token. To retrieve the next set of results, call
    -- @ListResources@ again and assign that token to the request object\'s
    -- @NextToken@ parameter. If the request returns all results, @NextToken@
    -- is set to null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the specified resources, including primary identifier
    -- and resource model.
    resourceDescriptions :: Prelude.Maybe [ResourceDescription],
    -- | The name of the resource type.
    typeName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListResourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listResourcesResponse_nextToken' - If the request doesn\'t return all of the remaining results, @NextToken@
-- is set to a token. To retrieve the next set of results, call
-- @ListResources@ again and assign that token to the request object\'s
-- @NextToken@ parameter. If the request returns all results, @NextToken@
-- is set to null.
--
-- 'resourceDescriptions', 'listResourcesResponse_resourceDescriptions' - Information about the specified resources, including primary identifier
-- and resource model.
--
-- 'typeName', 'listResourcesResponse_typeName' - The name of the resource type.
--
-- 'httpStatus', 'listResourcesResponse_httpStatus' - The response's http status code.
newListResourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListResourcesResponse
newListResourcesResponse pHttpStatus_ =
  ListResourcesResponse'
    { nextToken = Prelude.Nothing,
      resourceDescriptions = Prelude.Nothing,
      typeName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the request doesn\'t return all of the remaining results, @NextToken@
-- is set to a token. To retrieve the next set of results, call
-- @ListResources@ again and assign that token to the request object\'s
-- @NextToken@ parameter. If the request returns all results, @NextToken@
-- is set to null.
listResourcesResponse_nextToken :: Lens.Lens' ListResourcesResponse (Prelude.Maybe Prelude.Text)
listResourcesResponse_nextToken = Lens.lens (\ListResourcesResponse' {nextToken} -> nextToken) (\s@ListResourcesResponse' {} a -> s {nextToken = a} :: ListResourcesResponse)

-- | Information about the specified resources, including primary identifier
-- and resource model.
listResourcesResponse_resourceDescriptions :: Lens.Lens' ListResourcesResponse (Prelude.Maybe [ResourceDescription])
listResourcesResponse_resourceDescriptions = Lens.lens (\ListResourcesResponse' {resourceDescriptions} -> resourceDescriptions) (\s@ListResourcesResponse' {} a -> s {resourceDescriptions = a} :: ListResourcesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the resource type.
listResourcesResponse_typeName :: Lens.Lens' ListResourcesResponse (Prelude.Maybe Prelude.Text)
listResourcesResponse_typeName = Lens.lens (\ListResourcesResponse' {typeName} -> typeName) (\s@ListResourcesResponse' {} a -> s {typeName = a} :: ListResourcesResponse)

-- | The response's http status code.
listResourcesResponse_httpStatus :: Lens.Lens' ListResourcesResponse Prelude.Int
listResourcesResponse_httpStatus = Lens.lens (\ListResourcesResponse' {httpStatus} -> httpStatus) (\s@ListResourcesResponse' {} a -> s {httpStatus = a} :: ListResourcesResponse)

instance Prelude.NFData ListResourcesResponse where
  rnf ListResourcesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resourceDescriptions
      `Prelude.seq` Prelude.rnf typeName
      `Prelude.seq` Prelude.rnf httpStatus

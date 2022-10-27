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
-- Module      : Amazonka.Backup.ListRecoveryPointsByResource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about all the recovery points of the type
-- specified by a resource Amazon Resource Name (ARN).
--
-- For Amazon EFS and Amazon EC2, this action only lists recovery points
-- created by Backup.
--
-- This operation returns paginated results.
module Amazonka.Backup.ListRecoveryPointsByResource
  ( -- * Creating a Request
    ListRecoveryPointsByResource (..),
    newListRecoveryPointsByResource,

    -- * Request Lenses
    listRecoveryPointsByResource_nextToken,
    listRecoveryPointsByResource_maxResults,
    listRecoveryPointsByResource_resourceArn,

    -- * Destructuring the Response
    ListRecoveryPointsByResourceResponse (..),
    newListRecoveryPointsByResourceResponse,

    -- * Response Lenses
    listRecoveryPointsByResourceResponse_nextToken,
    listRecoveryPointsByResourceResponse_recoveryPoints,
    listRecoveryPointsByResourceResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListRecoveryPointsByResource' smart constructor.
data ListRecoveryPointsByResource = ListRecoveryPointsByResource'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to be returned.
    --
    -- Amazon RDS requires a value of at least 20.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | An ARN that uniquely identifies a resource. The format of the ARN
    -- depends on the resource type.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecoveryPointsByResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRecoveryPointsByResource_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'maxResults', 'listRecoveryPointsByResource_maxResults' - The maximum number of items to be returned.
--
-- Amazon RDS requires a value of at least 20.
--
-- 'resourceArn', 'listRecoveryPointsByResource_resourceArn' - An ARN that uniquely identifies a resource. The format of the ARN
-- depends on the resource type.
newListRecoveryPointsByResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  ListRecoveryPointsByResource
newListRecoveryPointsByResource pResourceArn_ =
  ListRecoveryPointsByResource'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceArn = pResourceArn_
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listRecoveryPointsByResource_nextToken :: Lens.Lens' ListRecoveryPointsByResource (Prelude.Maybe Prelude.Text)
listRecoveryPointsByResource_nextToken = Lens.lens (\ListRecoveryPointsByResource' {nextToken} -> nextToken) (\s@ListRecoveryPointsByResource' {} a -> s {nextToken = a} :: ListRecoveryPointsByResource)

-- | The maximum number of items to be returned.
--
-- Amazon RDS requires a value of at least 20.
listRecoveryPointsByResource_maxResults :: Lens.Lens' ListRecoveryPointsByResource (Prelude.Maybe Prelude.Natural)
listRecoveryPointsByResource_maxResults = Lens.lens (\ListRecoveryPointsByResource' {maxResults} -> maxResults) (\s@ListRecoveryPointsByResource' {} a -> s {maxResults = a} :: ListRecoveryPointsByResource)

-- | An ARN that uniquely identifies a resource. The format of the ARN
-- depends on the resource type.
listRecoveryPointsByResource_resourceArn :: Lens.Lens' ListRecoveryPointsByResource Prelude.Text
listRecoveryPointsByResource_resourceArn = Lens.lens (\ListRecoveryPointsByResource' {resourceArn} -> resourceArn) (\s@ListRecoveryPointsByResource' {} a -> s {resourceArn = a} :: ListRecoveryPointsByResource)

instance Core.AWSPager ListRecoveryPointsByResource where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRecoveryPointsByResourceResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRecoveryPointsByResourceResponse_recoveryPoints
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRecoveryPointsByResource_nextToken
          Lens..~ rs
          Lens.^? listRecoveryPointsByResourceResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListRecoveryPointsByResource where
  type
    AWSResponse ListRecoveryPointsByResource =
      ListRecoveryPointsByResourceResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRecoveryPointsByResourceResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "RecoveryPoints" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListRecoveryPointsByResource
  where
  hashWithSalt _salt ListRecoveryPointsByResource' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceArn

instance Prelude.NFData ListRecoveryPointsByResource where
  rnf ListRecoveryPointsByResource' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceArn

instance Core.ToHeaders ListRecoveryPointsByResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRecoveryPointsByResource where
  toPath ListRecoveryPointsByResource' {..} =
    Prelude.mconcat
      [ "/resources/",
        Core.toBS resourceArn,
        "/recovery-points/"
      ]

instance Core.ToQuery ListRecoveryPointsByResource where
  toQuery ListRecoveryPointsByResource' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListRecoveryPointsByResourceResponse' smart constructor.
data ListRecoveryPointsByResourceResponse = ListRecoveryPointsByResourceResponse'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that contain detailed information about recovery
    -- points of the specified resource type.
    --
    -- Only Amazon EFS and Amazon EC2 recovery points return BackupVaultName.
    recoveryPoints :: Prelude.Maybe [RecoveryPointByResource],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecoveryPointsByResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRecoveryPointsByResourceResponse_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'recoveryPoints', 'listRecoveryPointsByResourceResponse_recoveryPoints' - An array of objects that contain detailed information about recovery
-- points of the specified resource type.
--
-- Only Amazon EFS and Amazon EC2 recovery points return BackupVaultName.
--
-- 'httpStatus', 'listRecoveryPointsByResourceResponse_httpStatus' - The response's http status code.
newListRecoveryPointsByResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRecoveryPointsByResourceResponse
newListRecoveryPointsByResourceResponse pHttpStatus_ =
  ListRecoveryPointsByResourceResponse'
    { nextToken =
        Prelude.Nothing,
      recoveryPoints = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listRecoveryPointsByResourceResponse_nextToken :: Lens.Lens' ListRecoveryPointsByResourceResponse (Prelude.Maybe Prelude.Text)
listRecoveryPointsByResourceResponse_nextToken = Lens.lens (\ListRecoveryPointsByResourceResponse' {nextToken} -> nextToken) (\s@ListRecoveryPointsByResourceResponse' {} a -> s {nextToken = a} :: ListRecoveryPointsByResourceResponse)

-- | An array of objects that contain detailed information about recovery
-- points of the specified resource type.
--
-- Only Amazon EFS and Amazon EC2 recovery points return BackupVaultName.
listRecoveryPointsByResourceResponse_recoveryPoints :: Lens.Lens' ListRecoveryPointsByResourceResponse (Prelude.Maybe [RecoveryPointByResource])
listRecoveryPointsByResourceResponse_recoveryPoints = Lens.lens (\ListRecoveryPointsByResourceResponse' {recoveryPoints} -> recoveryPoints) (\s@ListRecoveryPointsByResourceResponse' {} a -> s {recoveryPoints = a} :: ListRecoveryPointsByResourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listRecoveryPointsByResourceResponse_httpStatus :: Lens.Lens' ListRecoveryPointsByResourceResponse Prelude.Int
listRecoveryPointsByResourceResponse_httpStatus = Lens.lens (\ListRecoveryPointsByResourceResponse' {httpStatus} -> httpStatus) (\s@ListRecoveryPointsByResourceResponse' {} a -> s {httpStatus = a} :: ListRecoveryPointsByResourceResponse)

instance
  Prelude.NFData
    ListRecoveryPointsByResourceResponse
  where
  rnf ListRecoveryPointsByResourceResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf recoveryPoints
      `Prelude.seq` Prelude.rnf httpStatus

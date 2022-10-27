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
-- Module      : Amazonka.LakeFormation.GetEffectivePermissionsForPath
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Lake Formation permissions for a specified table or database
-- resource located at a path in Amazon S3.
-- @GetEffectivePermissionsForPath@ will not return databases and tables if
-- the catalog is encrypted.
module Amazonka.LakeFormation.GetEffectivePermissionsForPath
  ( -- * Creating a Request
    GetEffectivePermissionsForPath (..),
    newGetEffectivePermissionsForPath,

    -- * Request Lenses
    getEffectivePermissionsForPath_nextToken,
    getEffectivePermissionsForPath_maxResults,
    getEffectivePermissionsForPath_catalogId,
    getEffectivePermissionsForPath_resourceArn,

    -- * Destructuring the Response
    GetEffectivePermissionsForPathResponse (..),
    newGetEffectivePermissionsForPathResponse,

    -- * Response Lenses
    getEffectivePermissionsForPathResponse_nextToken,
    getEffectivePermissionsForPathResponse_permissions,
    getEffectivePermissionsForPathResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEffectivePermissionsForPath' smart constructor.
data GetEffectivePermissionsForPath = GetEffectivePermissionsForPath'
  { -- | A continuation token, if this is not the first call to retrieve this
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the Data Catalog. By default, the account ID. The
    -- Data Catalog is the persistent metadata store. It contains database
    -- definitions, table definitions, and other control information to manage
    -- your Lake Formation environment.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the resource for which you want to get
    -- permissions.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEffectivePermissionsForPath' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEffectivePermissionsForPath_nextToken' - A continuation token, if this is not the first call to retrieve this
-- list.
--
-- 'maxResults', 'getEffectivePermissionsForPath_maxResults' - The maximum number of results to return.
--
-- 'catalogId', 'getEffectivePermissionsForPath_catalogId' - The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your Lake Formation environment.
--
-- 'resourceArn', 'getEffectivePermissionsForPath_resourceArn' - The Amazon Resource Name (ARN) of the resource for which you want to get
-- permissions.
newGetEffectivePermissionsForPath ::
  -- | 'resourceArn'
  Prelude.Text ->
  GetEffectivePermissionsForPath
newGetEffectivePermissionsForPath pResourceArn_ =
  GetEffectivePermissionsForPath'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      catalogId = Prelude.Nothing,
      resourceArn = pResourceArn_
    }

-- | A continuation token, if this is not the first call to retrieve this
-- list.
getEffectivePermissionsForPath_nextToken :: Lens.Lens' GetEffectivePermissionsForPath (Prelude.Maybe Prelude.Text)
getEffectivePermissionsForPath_nextToken = Lens.lens (\GetEffectivePermissionsForPath' {nextToken} -> nextToken) (\s@GetEffectivePermissionsForPath' {} a -> s {nextToken = a} :: GetEffectivePermissionsForPath)

-- | The maximum number of results to return.
getEffectivePermissionsForPath_maxResults :: Lens.Lens' GetEffectivePermissionsForPath (Prelude.Maybe Prelude.Natural)
getEffectivePermissionsForPath_maxResults = Lens.lens (\GetEffectivePermissionsForPath' {maxResults} -> maxResults) (\s@GetEffectivePermissionsForPath' {} a -> s {maxResults = a} :: GetEffectivePermissionsForPath)

-- | The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your Lake Formation environment.
getEffectivePermissionsForPath_catalogId :: Lens.Lens' GetEffectivePermissionsForPath (Prelude.Maybe Prelude.Text)
getEffectivePermissionsForPath_catalogId = Lens.lens (\GetEffectivePermissionsForPath' {catalogId} -> catalogId) (\s@GetEffectivePermissionsForPath' {} a -> s {catalogId = a} :: GetEffectivePermissionsForPath)

-- | The Amazon Resource Name (ARN) of the resource for which you want to get
-- permissions.
getEffectivePermissionsForPath_resourceArn :: Lens.Lens' GetEffectivePermissionsForPath Prelude.Text
getEffectivePermissionsForPath_resourceArn = Lens.lens (\GetEffectivePermissionsForPath' {resourceArn} -> resourceArn) (\s@GetEffectivePermissionsForPath' {} a -> s {resourceArn = a} :: GetEffectivePermissionsForPath)

instance
  Core.AWSRequest
    GetEffectivePermissionsForPath
  where
  type
    AWSResponse GetEffectivePermissionsForPath =
      GetEffectivePermissionsForPathResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEffectivePermissionsForPathResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Permissions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetEffectivePermissionsForPath
  where
  hashWithSalt
    _salt
    GetEffectivePermissionsForPath' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` catalogId
        `Prelude.hashWithSalt` resourceArn

instance
  Prelude.NFData
    GetEffectivePermissionsForPath
  where
  rnf GetEffectivePermissionsForPath' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf catalogId
      `Prelude.seq` Prelude.rnf resourceArn

instance
  Core.ToHeaders
    GetEffectivePermissionsForPath
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

instance Core.ToJSON GetEffectivePermissionsForPath where
  toJSON GetEffectivePermissionsForPath' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("CatalogId" Core..=) Prelude.<$> catalogId,
            Prelude.Just ("ResourceArn" Core..= resourceArn)
          ]
      )

instance Core.ToPath GetEffectivePermissionsForPath where
  toPath =
    Prelude.const "/GetEffectivePermissionsForPath"

instance Core.ToQuery GetEffectivePermissionsForPath where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEffectivePermissionsForPathResponse' smart constructor.
data GetEffectivePermissionsForPathResponse = GetEffectivePermissionsForPathResponse'
  { -- | A continuation token, if this is not the first call to retrieve this
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the permissions for the specified table or database resource
    -- located at the path in Amazon S3.
    permissions :: Prelude.Maybe [PrincipalResourcePermissions],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEffectivePermissionsForPathResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEffectivePermissionsForPathResponse_nextToken' - A continuation token, if this is not the first call to retrieve this
-- list.
--
-- 'permissions', 'getEffectivePermissionsForPathResponse_permissions' - A list of the permissions for the specified table or database resource
-- located at the path in Amazon S3.
--
-- 'httpStatus', 'getEffectivePermissionsForPathResponse_httpStatus' - The response's http status code.
newGetEffectivePermissionsForPathResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEffectivePermissionsForPathResponse
newGetEffectivePermissionsForPathResponse
  pHttpStatus_ =
    GetEffectivePermissionsForPathResponse'
      { nextToken =
          Prelude.Nothing,
        permissions = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A continuation token, if this is not the first call to retrieve this
-- list.
getEffectivePermissionsForPathResponse_nextToken :: Lens.Lens' GetEffectivePermissionsForPathResponse (Prelude.Maybe Prelude.Text)
getEffectivePermissionsForPathResponse_nextToken = Lens.lens (\GetEffectivePermissionsForPathResponse' {nextToken} -> nextToken) (\s@GetEffectivePermissionsForPathResponse' {} a -> s {nextToken = a} :: GetEffectivePermissionsForPathResponse)

-- | A list of the permissions for the specified table or database resource
-- located at the path in Amazon S3.
getEffectivePermissionsForPathResponse_permissions :: Lens.Lens' GetEffectivePermissionsForPathResponse (Prelude.Maybe [PrincipalResourcePermissions])
getEffectivePermissionsForPathResponse_permissions = Lens.lens (\GetEffectivePermissionsForPathResponse' {permissions} -> permissions) (\s@GetEffectivePermissionsForPathResponse' {} a -> s {permissions = a} :: GetEffectivePermissionsForPathResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEffectivePermissionsForPathResponse_httpStatus :: Lens.Lens' GetEffectivePermissionsForPathResponse Prelude.Int
getEffectivePermissionsForPathResponse_httpStatus = Lens.lens (\GetEffectivePermissionsForPathResponse' {httpStatus} -> httpStatus) (\s@GetEffectivePermissionsForPathResponse' {} a -> s {httpStatus = a} :: GetEffectivePermissionsForPathResponse)

instance
  Prelude.NFData
    GetEffectivePermissionsForPathResponse
  where
  rnf GetEffectivePermissionsForPathResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf permissions
      `Prelude.seq` Prelude.rnf httpStatus

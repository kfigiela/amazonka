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
-- Module      : Amazonka.ElasticSearch.UpdatePackage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a package for use with Amazon ES domains.
module Amazonka.ElasticSearch.UpdatePackage
  ( -- * Creating a Request
    UpdatePackage (..),
    newUpdatePackage,

    -- * Request Lenses
    updatePackage_packageDescription,
    updatePackage_commitMessage,
    updatePackage_packageID,
    updatePackage_packageSource,

    -- * Destructuring the Response
    UpdatePackageResponse (..),
    newUpdatePackageResponse,

    -- * Response Lenses
    updatePackageResponse_packageDetails,
    updatePackageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElasticSearch.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for request parameters to @ UpdatePackage @ operation.
--
-- /See:/ 'newUpdatePackage' smart constructor.
data UpdatePackage = UpdatePackage'
  { -- | New description of the package.
    packageDescription :: Prelude.Maybe Prelude.Text,
    -- | An info message for the new version which will be shown as part of
    -- @GetPackageVersionHistoryResponse@.
    commitMessage :: Prelude.Maybe Prelude.Text,
    -- | Unique identifier for the package.
    packageID :: Prelude.Text,
    packageSource :: PackageSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePackage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageDescription', 'updatePackage_packageDescription' - New description of the package.
--
-- 'commitMessage', 'updatePackage_commitMessage' - An info message for the new version which will be shown as part of
-- @GetPackageVersionHistoryResponse@.
--
-- 'packageID', 'updatePackage_packageID' - Unique identifier for the package.
--
-- 'packageSource', 'updatePackage_packageSource' - Undocumented member.
newUpdatePackage ::
  -- | 'packageID'
  Prelude.Text ->
  -- | 'packageSource'
  PackageSource ->
  UpdatePackage
newUpdatePackage pPackageID_ pPackageSource_ =
  UpdatePackage'
    { packageDescription =
        Prelude.Nothing,
      commitMessage = Prelude.Nothing,
      packageID = pPackageID_,
      packageSource = pPackageSource_
    }

-- | New description of the package.
updatePackage_packageDescription :: Lens.Lens' UpdatePackage (Prelude.Maybe Prelude.Text)
updatePackage_packageDescription = Lens.lens (\UpdatePackage' {packageDescription} -> packageDescription) (\s@UpdatePackage' {} a -> s {packageDescription = a} :: UpdatePackage)

-- | An info message for the new version which will be shown as part of
-- @GetPackageVersionHistoryResponse@.
updatePackage_commitMessage :: Lens.Lens' UpdatePackage (Prelude.Maybe Prelude.Text)
updatePackage_commitMessage = Lens.lens (\UpdatePackage' {commitMessage} -> commitMessage) (\s@UpdatePackage' {} a -> s {commitMessage = a} :: UpdatePackage)

-- | Unique identifier for the package.
updatePackage_packageID :: Lens.Lens' UpdatePackage Prelude.Text
updatePackage_packageID = Lens.lens (\UpdatePackage' {packageID} -> packageID) (\s@UpdatePackage' {} a -> s {packageID = a} :: UpdatePackage)

-- | Undocumented member.
updatePackage_packageSource :: Lens.Lens' UpdatePackage PackageSource
updatePackage_packageSource = Lens.lens (\UpdatePackage' {packageSource} -> packageSource) (\s@UpdatePackage' {} a -> s {packageSource = a} :: UpdatePackage)

instance Core.AWSRequest UpdatePackage where
  type
    AWSResponse UpdatePackage =
      UpdatePackageResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePackageResponse'
            Prelude.<$> (x Core..?> "PackageDetails")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService UpdatePackage where
  service _proxy = defaultService

instance Prelude.Hashable UpdatePackage where
  hashWithSalt _salt UpdatePackage' {..} =
    _salt `Prelude.hashWithSalt` packageDescription
      `Prelude.hashWithSalt` commitMessage
      `Prelude.hashWithSalt` packageID
      `Prelude.hashWithSalt` packageSource

instance Prelude.NFData UpdatePackage where
  rnf UpdatePackage' {..} =
    Prelude.rnf packageDescription
      `Prelude.seq` Prelude.rnf commitMessage
      `Prelude.seq` Prelude.rnf packageID
      `Prelude.seq` Prelude.rnf packageSource

instance Core.ToHeaders UpdatePackage where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdatePackage where
  toJSON UpdatePackage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PackageDescription" Core..=)
              Prelude.<$> packageDescription,
            ("CommitMessage" Core..=) Prelude.<$> commitMessage,
            Prelude.Just ("PackageID" Core..= packageID),
            Prelude.Just
              ("PackageSource" Core..= packageSource)
          ]
      )

instance Core.ToPath UpdatePackage where
  toPath = Prelude.const "/2015-01-01/packages/update"

instance Core.ToQuery UpdatePackage where
  toQuery = Prelude.const Prelude.mempty

-- | Container for response returned by @ UpdatePackage @ operation.
--
-- /See:/ 'newUpdatePackageResponse' smart constructor.
data UpdatePackageResponse = UpdatePackageResponse'
  { -- | Information about the package @PackageDetails@.
    packageDetails :: Prelude.Maybe PackageDetails,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePackageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageDetails', 'updatePackageResponse_packageDetails' - Information about the package @PackageDetails@.
--
-- 'httpStatus', 'updatePackageResponse_httpStatus' - The response's http status code.
newUpdatePackageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePackageResponse
newUpdatePackageResponse pHttpStatus_ =
  UpdatePackageResponse'
    { packageDetails =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the package @PackageDetails@.
updatePackageResponse_packageDetails :: Lens.Lens' UpdatePackageResponse (Prelude.Maybe PackageDetails)
updatePackageResponse_packageDetails = Lens.lens (\UpdatePackageResponse' {packageDetails} -> packageDetails) (\s@UpdatePackageResponse' {} a -> s {packageDetails = a} :: UpdatePackageResponse)

-- | The response's http status code.
updatePackageResponse_httpStatus :: Lens.Lens' UpdatePackageResponse Prelude.Int
updatePackageResponse_httpStatus = Lens.lens (\UpdatePackageResponse' {httpStatus} -> httpStatus) (\s@UpdatePackageResponse' {} a -> s {httpStatus = a} :: UpdatePackageResponse)

instance Prelude.NFData UpdatePackageResponse where
  rnf UpdatePackageResponse' {..} =
    Prelude.rnf packageDetails
      `Prelude.seq` Prelude.rnf httpStatus

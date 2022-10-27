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
-- Module      : Amazonka.ServiceCatalog.UpdateProvisionedProduct
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests updates to the configuration of the specified provisioned
-- product.
--
-- If there are tags associated with the object, they cannot be updated or
-- added. Depending on the specific updates requested, this operation can
-- update with no interruption, with some interruption, or replace the
-- provisioned product entirely.
--
-- You can check the status of this request using DescribeRecord.
module Amazonka.ServiceCatalog.UpdateProvisionedProduct
  ( -- * Creating a Request
    UpdateProvisionedProduct (..),
    newUpdateProvisionedProduct,

    -- * Request Lenses
    updateProvisionedProduct_tags,
    updateProvisionedProduct_productName,
    updateProvisionedProduct_pathId,
    updateProvisionedProduct_productId,
    updateProvisionedProduct_pathName,
    updateProvisionedProduct_provisionedProductName,
    updateProvisionedProduct_provisioningParameters,
    updateProvisionedProduct_provisioningPreferences,
    updateProvisionedProduct_provisioningArtifactName,
    updateProvisionedProduct_provisioningArtifactId,
    updateProvisionedProduct_acceptLanguage,
    updateProvisionedProduct_provisionedProductId,
    updateProvisionedProduct_updateToken,

    -- * Destructuring the Response
    UpdateProvisionedProductResponse (..),
    newUpdateProvisionedProductResponse,

    -- * Response Lenses
    updateProvisionedProductResponse_recordDetail,
    updateProvisionedProductResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newUpdateProvisionedProduct' smart constructor.
data UpdateProvisionedProduct = UpdateProvisionedProduct'
  { -- | One or more tags. Requires the product to have @RESOURCE_UPDATE@
    -- constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to
    -- allow tag updates.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the product. You must provide the name or ID, but not both.
    productName :: Prelude.Maybe Prelude.Text,
    -- | The path identifier. This value is optional if the product has a default
    -- path, and required if the product has more than one path. You must
    -- provide the name or ID, but not both.
    pathId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the product. You must provide the name or ID, but not
    -- both.
    productId :: Prelude.Maybe Prelude.Text,
    -- | The name of the path. You must provide the name or ID, but not both.
    pathName :: Prelude.Maybe Prelude.Text,
    -- | The name of the provisioned product. You cannot specify both
    -- @ProvisionedProductName@ and @ProvisionedProductId@.
    provisionedProductName :: Prelude.Maybe Prelude.Text,
    -- | The new parameters.
    provisioningParameters :: Prelude.Maybe [UpdateProvisioningParameter],
    -- | An object that contains information about the provisioning preferences
    -- for a stack set.
    provisioningPreferences :: Prelude.Maybe UpdateProvisioningPreferences,
    -- | The name of the provisioning artifact. You must provide the name or ID,
    -- but not both.
    provisioningArtifactName :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the provisioning artifact.
    provisioningArtifactId :: Prelude.Maybe Prelude.Text,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the provisioned product. You must provide the name or
    -- ID, but not both.
    provisionedProductId :: Prelude.Maybe Prelude.Text,
    -- | The idempotency token that uniquely identifies the provisioning update
    -- request.
    updateToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProvisionedProduct' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateProvisionedProduct_tags' - One or more tags. Requires the product to have @RESOURCE_UPDATE@
-- constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to
-- allow tag updates.
--
-- 'productName', 'updateProvisionedProduct_productName' - The name of the product. You must provide the name or ID, but not both.
--
-- 'pathId', 'updateProvisionedProduct_pathId' - The path identifier. This value is optional if the product has a default
-- path, and required if the product has more than one path. You must
-- provide the name or ID, but not both.
--
-- 'productId', 'updateProvisionedProduct_productId' - The identifier of the product. You must provide the name or ID, but not
-- both.
--
-- 'pathName', 'updateProvisionedProduct_pathName' - The name of the path. You must provide the name or ID, but not both.
--
-- 'provisionedProductName', 'updateProvisionedProduct_provisionedProductName' - The name of the provisioned product. You cannot specify both
-- @ProvisionedProductName@ and @ProvisionedProductId@.
--
-- 'provisioningParameters', 'updateProvisionedProduct_provisioningParameters' - The new parameters.
--
-- 'provisioningPreferences', 'updateProvisionedProduct_provisioningPreferences' - An object that contains information about the provisioning preferences
-- for a stack set.
--
-- 'provisioningArtifactName', 'updateProvisionedProduct_provisioningArtifactName' - The name of the provisioning artifact. You must provide the name or ID,
-- but not both.
--
-- 'provisioningArtifactId', 'updateProvisionedProduct_provisioningArtifactId' - The identifier of the provisioning artifact.
--
-- 'acceptLanguage', 'updateProvisionedProduct_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'provisionedProductId', 'updateProvisionedProduct_provisionedProductId' - The identifier of the provisioned product. You must provide the name or
-- ID, but not both.
--
-- 'updateToken', 'updateProvisionedProduct_updateToken' - The idempotency token that uniquely identifies the provisioning update
-- request.
newUpdateProvisionedProduct ::
  -- | 'updateToken'
  Prelude.Text ->
  UpdateProvisionedProduct
newUpdateProvisionedProduct pUpdateToken_ =
  UpdateProvisionedProduct'
    { tags = Prelude.Nothing,
      productName = Prelude.Nothing,
      pathId = Prelude.Nothing,
      productId = Prelude.Nothing,
      pathName = Prelude.Nothing,
      provisionedProductName = Prelude.Nothing,
      provisioningParameters = Prelude.Nothing,
      provisioningPreferences = Prelude.Nothing,
      provisioningArtifactName = Prelude.Nothing,
      provisioningArtifactId = Prelude.Nothing,
      acceptLanguage = Prelude.Nothing,
      provisionedProductId = Prelude.Nothing,
      updateToken = pUpdateToken_
    }

-- | One or more tags. Requires the product to have @RESOURCE_UPDATE@
-- constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to
-- allow tag updates.
updateProvisionedProduct_tags :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe [Tag])
updateProvisionedProduct_tags = Lens.lens (\UpdateProvisionedProduct' {tags} -> tags) (\s@UpdateProvisionedProduct' {} a -> s {tags = a} :: UpdateProvisionedProduct) Prelude.. Lens.mapping Lens.coerced

-- | The name of the product. You must provide the name or ID, but not both.
updateProvisionedProduct_productName :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_productName = Lens.lens (\UpdateProvisionedProduct' {productName} -> productName) (\s@UpdateProvisionedProduct' {} a -> s {productName = a} :: UpdateProvisionedProduct)

-- | The path identifier. This value is optional if the product has a default
-- path, and required if the product has more than one path. You must
-- provide the name or ID, but not both.
updateProvisionedProduct_pathId :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_pathId = Lens.lens (\UpdateProvisionedProduct' {pathId} -> pathId) (\s@UpdateProvisionedProduct' {} a -> s {pathId = a} :: UpdateProvisionedProduct)

-- | The identifier of the product. You must provide the name or ID, but not
-- both.
updateProvisionedProduct_productId :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_productId = Lens.lens (\UpdateProvisionedProduct' {productId} -> productId) (\s@UpdateProvisionedProduct' {} a -> s {productId = a} :: UpdateProvisionedProduct)

-- | The name of the path. You must provide the name or ID, but not both.
updateProvisionedProduct_pathName :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_pathName = Lens.lens (\UpdateProvisionedProduct' {pathName} -> pathName) (\s@UpdateProvisionedProduct' {} a -> s {pathName = a} :: UpdateProvisionedProduct)

-- | The name of the provisioned product. You cannot specify both
-- @ProvisionedProductName@ and @ProvisionedProductId@.
updateProvisionedProduct_provisionedProductName :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_provisionedProductName = Lens.lens (\UpdateProvisionedProduct' {provisionedProductName} -> provisionedProductName) (\s@UpdateProvisionedProduct' {} a -> s {provisionedProductName = a} :: UpdateProvisionedProduct)

-- | The new parameters.
updateProvisionedProduct_provisioningParameters :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe [UpdateProvisioningParameter])
updateProvisionedProduct_provisioningParameters = Lens.lens (\UpdateProvisionedProduct' {provisioningParameters} -> provisioningParameters) (\s@UpdateProvisionedProduct' {} a -> s {provisioningParameters = a} :: UpdateProvisionedProduct) Prelude.. Lens.mapping Lens.coerced

-- | An object that contains information about the provisioning preferences
-- for a stack set.
updateProvisionedProduct_provisioningPreferences :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe UpdateProvisioningPreferences)
updateProvisionedProduct_provisioningPreferences = Lens.lens (\UpdateProvisionedProduct' {provisioningPreferences} -> provisioningPreferences) (\s@UpdateProvisionedProduct' {} a -> s {provisioningPreferences = a} :: UpdateProvisionedProduct)

-- | The name of the provisioning artifact. You must provide the name or ID,
-- but not both.
updateProvisionedProduct_provisioningArtifactName :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_provisioningArtifactName = Lens.lens (\UpdateProvisionedProduct' {provisioningArtifactName} -> provisioningArtifactName) (\s@UpdateProvisionedProduct' {} a -> s {provisioningArtifactName = a} :: UpdateProvisionedProduct)

-- | The identifier of the provisioning artifact.
updateProvisionedProduct_provisioningArtifactId :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_provisioningArtifactId = Lens.lens (\UpdateProvisionedProduct' {provisioningArtifactId} -> provisioningArtifactId) (\s@UpdateProvisionedProduct' {} a -> s {provisioningArtifactId = a} :: UpdateProvisionedProduct)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
updateProvisionedProduct_acceptLanguage :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_acceptLanguage = Lens.lens (\UpdateProvisionedProduct' {acceptLanguage} -> acceptLanguage) (\s@UpdateProvisionedProduct' {} a -> s {acceptLanguage = a} :: UpdateProvisionedProduct)

-- | The identifier of the provisioned product. You must provide the name or
-- ID, but not both.
updateProvisionedProduct_provisionedProductId :: Lens.Lens' UpdateProvisionedProduct (Prelude.Maybe Prelude.Text)
updateProvisionedProduct_provisionedProductId = Lens.lens (\UpdateProvisionedProduct' {provisionedProductId} -> provisionedProductId) (\s@UpdateProvisionedProduct' {} a -> s {provisionedProductId = a} :: UpdateProvisionedProduct)

-- | The idempotency token that uniquely identifies the provisioning update
-- request.
updateProvisionedProduct_updateToken :: Lens.Lens' UpdateProvisionedProduct Prelude.Text
updateProvisionedProduct_updateToken = Lens.lens (\UpdateProvisionedProduct' {updateToken} -> updateToken) (\s@UpdateProvisionedProduct' {} a -> s {updateToken = a} :: UpdateProvisionedProduct)

instance Core.AWSRequest UpdateProvisionedProduct where
  type
    AWSResponse UpdateProvisionedProduct =
      UpdateProvisionedProductResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateProvisionedProductResponse'
            Prelude.<$> (x Core..?> "RecordDetail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateProvisionedProduct where
  hashWithSalt _salt UpdateProvisionedProduct' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` productName
      `Prelude.hashWithSalt` pathId
      `Prelude.hashWithSalt` productId
      `Prelude.hashWithSalt` pathName
      `Prelude.hashWithSalt` provisionedProductName
      `Prelude.hashWithSalt` provisioningParameters
      `Prelude.hashWithSalt` provisioningPreferences
      `Prelude.hashWithSalt` provisioningArtifactName
      `Prelude.hashWithSalt` provisioningArtifactId
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` provisionedProductId
      `Prelude.hashWithSalt` updateToken

instance Prelude.NFData UpdateProvisionedProduct where
  rnf UpdateProvisionedProduct' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf productName
      `Prelude.seq` Prelude.rnf pathId
      `Prelude.seq` Prelude.rnf productId
      `Prelude.seq` Prelude.rnf pathName
      `Prelude.seq` Prelude.rnf provisionedProductName
      `Prelude.seq` Prelude.rnf provisioningParameters
      `Prelude.seq` Prelude.rnf provisioningPreferences
      `Prelude.seq` Prelude.rnf provisioningArtifactName
      `Prelude.seq` Prelude.rnf provisioningArtifactId
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf provisionedProductId
      `Prelude.seq` Prelude.rnf updateToken

instance Core.ToHeaders UpdateProvisionedProduct where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.UpdateProvisionedProduct" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateProvisionedProduct where
  toJSON UpdateProvisionedProduct' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ProductName" Core..=) Prelude.<$> productName,
            ("PathId" Core..=) Prelude.<$> pathId,
            ("ProductId" Core..=) Prelude.<$> productId,
            ("PathName" Core..=) Prelude.<$> pathName,
            ("ProvisionedProductName" Core..=)
              Prelude.<$> provisionedProductName,
            ("ProvisioningParameters" Core..=)
              Prelude.<$> provisioningParameters,
            ("ProvisioningPreferences" Core..=)
              Prelude.<$> provisioningPreferences,
            ("ProvisioningArtifactName" Core..=)
              Prelude.<$> provisioningArtifactName,
            ("ProvisioningArtifactId" Core..=)
              Prelude.<$> provisioningArtifactId,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            ("ProvisionedProductId" Core..=)
              Prelude.<$> provisionedProductId,
            Prelude.Just ("UpdateToken" Core..= updateToken)
          ]
      )

instance Core.ToPath UpdateProvisionedProduct where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateProvisionedProduct where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateProvisionedProductResponse' smart constructor.
data UpdateProvisionedProductResponse = UpdateProvisionedProductResponse'
  { -- | Information about the result of the request.
    recordDetail :: Prelude.Maybe RecordDetail,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProvisionedProductResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordDetail', 'updateProvisionedProductResponse_recordDetail' - Information about the result of the request.
--
-- 'httpStatus', 'updateProvisionedProductResponse_httpStatus' - The response's http status code.
newUpdateProvisionedProductResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateProvisionedProductResponse
newUpdateProvisionedProductResponse pHttpStatus_ =
  UpdateProvisionedProductResponse'
    { recordDetail =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the result of the request.
updateProvisionedProductResponse_recordDetail :: Lens.Lens' UpdateProvisionedProductResponse (Prelude.Maybe RecordDetail)
updateProvisionedProductResponse_recordDetail = Lens.lens (\UpdateProvisionedProductResponse' {recordDetail} -> recordDetail) (\s@UpdateProvisionedProductResponse' {} a -> s {recordDetail = a} :: UpdateProvisionedProductResponse)

-- | The response's http status code.
updateProvisionedProductResponse_httpStatus :: Lens.Lens' UpdateProvisionedProductResponse Prelude.Int
updateProvisionedProductResponse_httpStatus = Lens.lens (\UpdateProvisionedProductResponse' {httpStatus} -> httpStatus) (\s@UpdateProvisionedProductResponse' {} a -> s {httpStatus = a} :: UpdateProvisionedProductResponse)

instance
  Prelude.NFData
    UpdateProvisionedProductResponse
  where
  rnf UpdateProvisionedProductResponse' {..} =
    Prelude.rnf recordDetail
      `Prelude.seq` Prelude.rnf httpStatus

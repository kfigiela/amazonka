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
-- Module      : Amazonka.ServiceCatalog.CopyProduct
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified source product to the specified target product or a
-- new product.
--
-- You can copy a product to the same account or another account. You can
-- copy a product to the same Region or another Region. If you copy a
-- product to another account, you must first share the product in a
-- portfolio using CreatePortfolioShare.
--
-- This operation is performed asynchronously. To track the progress of the
-- operation, use DescribeCopyProductStatus.
module Amazonka.ServiceCatalog.CopyProduct
  ( -- * Creating a Request
    CopyProduct (..),
    newCopyProduct,

    -- * Request Lenses
    copyProduct_targetProductName,
    copyProduct_targetProductId,
    copyProduct_copyOptions,
    copyProduct_acceptLanguage,
    copyProduct_sourceProvisioningArtifactIdentifiers,
    copyProduct_sourceProductArn,
    copyProduct_idempotencyToken,

    -- * Destructuring the Response
    CopyProductResponse (..),
    newCopyProductResponse,

    -- * Response Lenses
    copyProductResponse_copyProductToken,
    copyProductResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newCopyProduct' smart constructor.
data CopyProduct = CopyProduct'
  { -- | A name for the target product. The default is the name of the source
    -- product.
    targetProductName :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the target product. By default, a new product is
    -- created.
    targetProductId :: Prelude.Maybe Prelude.Text,
    -- | The copy options. If the value is @CopyTags@, the tags from the source
    -- product are copied to the target product.
    copyOptions :: Prelude.Maybe [CopyOption],
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The identifiers of the provisioning artifacts (also known as versions)
    -- of the product to copy. By default, all provisioning artifacts are
    -- copied.
    sourceProvisioningArtifactIdentifiers :: Prelude.Maybe [Prelude.HashMap ProvisioningArtifactPropertyName Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the source product.
    sourceProductArn :: Prelude.Text,
    -- | A unique identifier that you provide to ensure idempotency. If multiple
    -- requests differ only by the idempotency token, the same response is
    -- returned for each repeated request.
    idempotencyToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyProduct' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetProductName', 'copyProduct_targetProductName' - A name for the target product. The default is the name of the source
-- product.
--
-- 'targetProductId', 'copyProduct_targetProductId' - The identifier of the target product. By default, a new product is
-- created.
--
-- 'copyOptions', 'copyProduct_copyOptions' - The copy options. If the value is @CopyTags@, the tags from the source
-- product are copied to the target product.
--
-- 'acceptLanguage', 'copyProduct_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'sourceProvisioningArtifactIdentifiers', 'copyProduct_sourceProvisioningArtifactIdentifiers' - The identifiers of the provisioning artifacts (also known as versions)
-- of the product to copy. By default, all provisioning artifacts are
-- copied.
--
-- 'sourceProductArn', 'copyProduct_sourceProductArn' - The Amazon Resource Name (ARN) of the source product.
--
-- 'idempotencyToken', 'copyProduct_idempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple
-- requests differ only by the idempotency token, the same response is
-- returned for each repeated request.
newCopyProduct ::
  -- | 'sourceProductArn'
  Prelude.Text ->
  -- | 'idempotencyToken'
  Prelude.Text ->
  CopyProduct
newCopyProduct pSourceProductArn_ pIdempotencyToken_ =
  CopyProduct'
    { targetProductName = Prelude.Nothing,
      targetProductId = Prelude.Nothing,
      copyOptions = Prelude.Nothing,
      acceptLanguage = Prelude.Nothing,
      sourceProvisioningArtifactIdentifiers =
        Prelude.Nothing,
      sourceProductArn = pSourceProductArn_,
      idempotencyToken = pIdempotencyToken_
    }

-- | A name for the target product. The default is the name of the source
-- product.
copyProduct_targetProductName :: Lens.Lens' CopyProduct (Prelude.Maybe Prelude.Text)
copyProduct_targetProductName = Lens.lens (\CopyProduct' {targetProductName} -> targetProductName) (\s@CopyProduct' {} a -> s {targetProductName = a} :: CopyProduct)

-- | The identifier of the target product. By default, a new product is
-- created.
copyProduct_targetProductId :: Lens.Lens' CopyProduct (Prelude.Maybe Prelude.Text)
copyProduct_targetProductId = Lens.lens (\CopyProduct' {targetProductId} -> targetProductId) (\s@CopyProduct' {} a -> s {targetProductId = a} :: CopyProduct)

-- | The copy options. If the value is @CopyTags@, the tags from the source
-- product are copied to the target product.
copyProduct_copyOptions :: Lens.Lens' CopyProduct (Prelude.Maybe [CopyOption])
copyProduct_copyOptions = Lens.lens (\CopyProduct' {copyOptions} -> copyOptions) (\s@CopyProduct' {} a -> s {copyOptions = a} :: CopyProduct) Prelude.. Lens.mapping Lens.coerced

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
copyProduct_acceptLanguage :: Lens.Lens' CopyProduct (Prelude.Maybe Prelude.Text)
copyProduct_acceptLanguage = Lens.lens (\CopyProduct' {acceptLanguage} -> acceptLanguage) (\s@CopyProduct' {} a -> s {acceptLanguage = a} :: CopyProduct)

-- | The identifiers of the provisioning artifacts (also known as versions)
-- of the product to copy. By default, all provisioning artifacts are
-- copied.
copyProduct_sourceProvisioningArtifactIdentifiers :: Lens.Lens' CopyProduct (Prelude.Maybe [Prelude.HashMap ProvisioningArtifactPropertyName Prelude.Text])
copyProduct_sourceProvisioningArtifactIdentifiers = Lens.lens (\CopyProduct' {sourceProvisioningArtifactIdentifiers} -> sourceProvisioningArtifactIdentifiers) (\s@CopyProduct' {} a -> s {sourceProvisioningArtifactIdentifiers = a} :: CopyProduct) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the source product.
copyProduct_sourceProductArn :: Lens.Lens' CopyProduct Prelude.Text
copyProduct_sourceProductArn = Lens.lens (\CopyProduct' {sourceProductArn} -> sourceProductArn) (\s@CopyProduct' {} a -> s {sourceProductArn = a} :: CopyProduct)

-- | A unique identifier that you provide to ensure idempotency. If multiple
-- requests differ only by the idempotency token, the same response is
-- returned for each repeated request.
copyProduct_idempotencyToken :: Lens.Lens' CopyProduct Prelude.Text
copyProduct_idempotencyToken = Lens.lens (\CopyProduct' {idempotencyToken} -> idempotencyToken) (\s@CopyProduct' {} a -> s {idempotencyToken = a} :: CopyProduct)

instance Core.AWSRequest CopyProduct where
  type AWSResponse CopyProduct = CopyProductResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CopyProductResponse'
            Prelude.<$> (x Core..?> "CopyProductToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CopyProduct where
  hashWithSalt _salt CopyProduct' {..} =
    _salt `Prelude.hashWithSalt` targetProductName
      `Prelude.hashWithSalt` targetProductId
      `Prelude.hashWithSalt` copyOptions
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` sourceProvisioningArtifactIdentifiers
      `Prelude.hashWithSalt` sourceProductArn
      `Prelude.hashWithSalt` idempotencyToken

instance Prelude.NFData CopyProduct where
  rnf CopyProduct' {..} =
    Prelude.rnf targetProductName
      `Prelude.seq` Prelude.rnf targetProductId
      `Prelude.seq` Prelude.rnf copyOptions
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf sourceProvisioningArtifactIdentifiers
      `Prelude.seq` Prelude.rnf sourceProductArn
      `Prelude.seq` Prelude.rnf idempotencyToken

instance Core.ToHeaders CopyProduct where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.CopyProduct" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CopyProduct where
  toJSON CopyProduct' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TargetProductName" Core..=)
              Prelude.<$> targetProductName,
            ("TargetProductId" Core..=)
              Prelude.<$> targetProductId,
            ("CopyOptions" Core..=) Prelude.<$> copyOptions,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            ("SourceProvisioningArtifactIdentifiers" Core..=)
              Prelude.<$> sourceProvisioningArtifactIdentifiers,
            Prelude.Just
              ("SourceProductArn" Core..= sourceProductArn),
            Prelude.Just
              ("IdempotencyToken" Core..= idempotencyToken)
          ]
      )

instance Core.ToPath CopyProduct where
  toPath = Prelude.const "/"

instance Core.ToQuery CopyProduct where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCopyProductResponse' smart constructor.
data CopyProductResponse = CopyProductResponse'
  { -- | The token to use to track the progress of the operation.
    copyProductToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyProductResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'copyProductToken', 'copyProductResponse_copyProductToken' - The token to use to track the progress of the operation.
--
-- 'httpStatus', 'copyProductResponse_httpStatus' - The response's http status code.
newCopyProductResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CopyProductResponse
newCopyProductResponse pHttpStatus_ =
  CopyProductResponse'
    { copyProductToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to track the progress of the operation.
copyProductResponse_copyProductToken :: Lens.Lens' CopyProductResponse (Prelude.Maybe Prelude.Text)
copyProductResponse_copyProductToken = Lens.lens (\CopyProductResponse' {copyProductToken} -> copyProductToken) (\s@CopyProductResponse' {} a -> s {copyProductToken = a} :: CopyProductResponse)

-- | The response's http status code.
copyProductResponse_httpStatus :: Lens.Lens' CopyProductResponse Prelude.Int
copyProductResponse_httpStatus = Lens.lens (\CopyProductResponse' {httpStatus} -> httpStatus) (\s@CopyProductResponse' {} a -> s {httpStatus = a} :: CopyProductResponse)

instance Prelude.NFData CopyProductResponse where
  rnf CopyProductResponse' {..} =
    Prelude.rnf copyProductToken
      `Prelude.seq` Prelude.rnf httpStatus

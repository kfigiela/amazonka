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
-- Module      : Amazonka.ImageBuilder.CreateImage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new image. This request will create a new image along with all
-- of the configured output resources defined in the distribution
-- configuration. You must specify exactly one recipe for your image, using
-- either a ContainerRecipeArn or an ImageRecipeArn.
module Amazonka.ImageBuilder.CreateImage
  ( -- * Creating a Request
    CreateImage (..),
    newCreateImage,

    -- * Request Lenses
    createImage_enhancedImageMetadataEnabled,
    createImage_tags,
    createImage_imageTestsConfiguration,
    createImage_imageRecipeArn,
    createImage_containerRecipeArn,
    createImage_distributionConfigurationArn,
    createImage_infrastructureConfigurationArn,
    createImage_clientToken,

    -- * Destructuring the Response
    CreateImageResponse (..),
    newCreateImageResponse,

    -- * Response Lenses
    createImageResponse_clientToken,
    createImageResponse_requestId,
    createImageResponse_imageBuildVersionArn,
    createImageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateImage' smart constructor.
data CreateImage = CreateImage'
  { -- | Collects additional information about the image being created, including
    -- the operating system (OS) version and package list. This information is
    -- used to enhance the overall experience of using EC2 Image Builder.
    -- Enabled by default.
    enhancedImageMetadataEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The tags of the image.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The image tests configuration of the image.
    imageTestsConfiguration :: Prelude.Maybe ImageTestsConfiguration,
    -- | The Amazon Resource Name (ARN) of the image recipe that defines how
    -- images are configured, tested, and assessed.
    imageRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the container recipe that defines how
    -- images are configured and tested.
    containerRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the distribution configuration that
    -- defines and configures the outputs of your pipeline.
    distributionConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the infrastructure configuration that
    -- defines the environment in which your image will be built and tested.
    infrastructureConfigurationArn :: Prelude.Text,
    -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enhancedImageMetadataEnabled', 'createImage_enhancedImageMetadataEnabled' - Collects additional information about the image being created, including
-- the operating system (OS) version and package list. This information is
-- used to enhance the overall experience of using EC2 Image Builder.
-- Enabled by default.
--
-- 'tags', 'createImage_tags' - The tags of the image.
--
-- 'imageTestsConfiguration', 'createImage_imageTestsConfiguration' - The image tests configuration of the image.
--
-- 'imageRecipeArn', 'createImage_imageRecipeArn' - The Amazon Resource Name (ARN) of the image recipe that defines how
-- images are configured, tested, and assessed.
--
-- 'containerRecipeArn', 'createImage_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe that defines how
-- images are configured and tested.
--
-- 'distributionConfigurationArn', 'createImage_distributionConfigurationArn' - The Amazon Resource Name (ARN) of the distribution configuration that
-- defines and configures the outputs of your pipeline.
--
-- 'infrastructureConfigurationArn', 'createImage_infrastructureConfigurationArn' - The Amazon Resource Name (ARN) of the infrastructure configuration that
-- defines the environment in which your image will be built and tested.
--
-- 'clientToken', 'createImage_clientToken' - The idempotency token used to make this request idempotent.
newCreateImage ::
  -- | 'infrastructureConfigurationArn'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateImage
newCreateImage
  pInfrastructureConfigurationArn_
  pClientToken_ =
    CreateImage'
      { enhancedImageMetadataEnabled =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        imageTestsConfiguration = Prelude.Nothing,
        imageRecipeArn = Prelude.Nothing,
        containerRecipeArn = Prelude.Nothing,
        distributionConfigurationArn = Prelude.Nothing,
        infrastructureConfigurationArn =
          pInfrastructureConfigurationArn_,
        clientToken = pClientToken_
      }

-- | Collects additional information about the image being created, including
-- the operating system (OS) version and package list. This information is
-- used to enhance the overall experience of using EC2 Image Builder.
-- Enabled by default.
createImage_enhancedImageMetadataEnabled :: Lens.Lens' CreateImage (Prelude.Maybe Prelude.Bool)
createImage_enhancedImageMetadataEnabled = Lens.lens (\CreateImage' {enhancedImageMetadataEnabled} -> enhancedImageMetadataEnabled) (\s@CreateImage' {} a -> s {enhancedImageMetadataEnabled = a} :: CreateImage)

-- | The tags of the image.
createImage_tags :: Lens.Lens' CreateImage (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createImage_tags = Lens.lens (\CreateImage' {tags} -> tags) (\s@CreateImage' {} a -> s {tags = a} :: CreateImage) Prelude.. Lens.mapping Lens.coerced

-- | The image tests configuration of the image.
createImage_imageTestsConfiguration :: Lens.Lens' CreateImage (Prelude.Maybe ImageTestsConfiguration)
createImage_imageTestsConfiguration = Lens.lens (\CreateImage' {imageTestsConfiguration} -> imageTestsConfiguration) (\s@CreateImage' {} a -> s {imageTestsConfiguration = a} :: CreateImage)

-- | The Amazon Resource Name (ARN) of the image recipe that defines how
-- images are configured, tested, and assessed.
createImage_imageRecipeArn :: Lens.Lens' CreateImage (Prelude.Maybe Prelude.Text)
createImage_imageRecipeArn = Lens.lens (\CreateImage' {imageRecipeArn} -> imageRecipeArn) (\s@CreateImage' {} a -> s {imageRecipeArn = a} :: CreateImage)

-- | The Amazon Resource Name (ARN) of the container recipe that defines how
-- images are configured and tested.
createImage_containerRecipeArn :: Lens.Lens' CreateImage (Prelude.Maybe Prelude.Text)
createImage_containerRecipeArn = Lens.lens (\CreateImage' {containerRecipeArn} -> containerRecipeArn) (\s@CreateImage' {} a -> s {containerRecipeArn = a} :: CreateImage)

-- | The Amazon Resource Name (ARN) of the distribution configuration that
-- defines and configures the outputs of your pipeline.
createImage_distributionConfigurationArn :: Lens.Lens' CreateImage (Prelude.Maybe Prelude.Text)
createImage_distributionConfigurationArn = Lens.lens (\CreateImage' {distributionConfigurationArn} -> distributionConfigurationArn) (\s@CreateImage' {} a -> s {distributionConfigurationArn = a} :: CreateImage)

-- | The Amazon Resource Name (ARN) of the infrastructure configuration that
-- defines the environment in which your image will be built and tested.
createImage_infrastructureConfigurationArn :: Lens.Lens' CreateImage Prelude.Text
createImage_infrastructureConfigurationArn = Lens.lens (\CreateImage' {infrastructureConfigurationArn} -> infrastructureConfigurationArn) (\s@CreateImage' {} a -> s {infrastructureConfigurationArn = a} :: CreateImage)

-- | The idempotency token used to make this request idempotent.
createImage_clientToken :: Lens.Lens' CreateImage Prelude.Text
createImage_clientToken = Lens.lens (\CreateImage' {clientToken} -> clientToken) (\s@CreateImage' {} a -> s {clientToken = a} :: CreateImage)

instance Core.AWSRequest CreateImage where
  type AWSResponse CreateImage = CreateImageResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateImageResponse'
            Prelude.<$> (x Core..?> "clientToken")
            Prelude.<*> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "imageBuildVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateImage where
  hashWithSalt _salt CreateImage' {..} =
    _salt
      `Prelude.hashWithSalt` enhancedImageMetadataEnabled
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` imageTestsConfiguration
      `Prelude.hashWithSalt` imageRecipeArn
      `Prelude.hashWithSalt` containerRecipeArn
      `Prelude.hashWithSalt` distributionConfigurationArn
      `Prelude.hashWithSalt` infrastructureConfigurationArn
      `Prelude.hashWithSalt` clientToken

instance Prelude.NFData CreateImage where
  rnf CreateImage' {..} =
    Prelude.rnf enhancedImageMetadataEnabled
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf imageTestsConfiguration
      `Prelude.seq` Prelude.rnf imageRecipeArn
      `Prelude.seq` Prelude.rnf containerRecipeArn
      `Prelude.seq` Prelude.rnf distributionConfigurationArn
      `Prelude.seq` Prelude.rnf infrastructureConfigurationArn
      `Prelude.seq` Prelude.rnf clientToken

instance Core.ToHeaders CreateImage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateImage where
  toJSON CreateImage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("enhancedImageMetadataEnabled" Core..=)
              Prelude.<$> enhancedImageMetadataEnabled,
            ("tags" Core..=) Prelude.<$> tags,
            ("imageTestsConfiguration" Core..=)
              Prelude.<$> imageTestsConfiguration,
            ("imageRecipeArn" Core..=)
              Prelude.<$> imageRecipeArn,
            ("containerRecipeArn" Core..=)
              Prelude.<$> containerRecipeArn,
            ("distributionConfigurationArn" Core..=)
              Prelude.<$> distributionConfigurationArn,
            Prelude.Just
              ( "infrastructureConfigurationArn"
                  Core..= infrastructureConfigurationArn
              ),
            Prelude.Just ("clientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateImage where
  toPath = Prelude.const "/CreateImage"

instance Core.ToQuery CreateImage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateImageResponse' smart constructor.
data CreateImageResponse = CreateImageResponse'
  { -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the image that was created by this
    -- request.
    imageBuildVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createImageResponse_clientToken' - The idempotency token used to make this request idempotent.
--
-- 'requestId', 'createImageResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'imageBuildVersionArn', 'createImageResponse_imageBuildVersionArn' - The Amazon Resource Name (ARN) of the image that was created by this
-- request.
--
-- 'httpStatus', 'createImageResponse_httpStatus' - The response's http status code.
newCreateImageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateImageResponse
newCreateImageResponse pHttpStatus_ =
  CreateImageResponse'
    { clientToken = Prelude.Nothing,
      requestId = Prelude.Nothing,
      imageBuildVersionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The idempotency token used to make this request idempotent.
createImageResponse_clientToken :: Lens.Lens' CreateImageResponse (Prelude.Maybe Prelude.Text)
createImageResponse_clientToken = Lens.lens (\CreateImageResponse' {clientToken} -> clientToken) (\s@CreateImageResponse' {} a -> s {clientToken = a} :: CreateImageResponse)

-- | The request ID that uniquely identifies this request.
createImageResponse_requestId :: Lens.Lens' CreateImageResponse (Prelude.Maybe Prelude.Text)
createImageResponse_requestId = Lens.lens (\CreateImageResponse' {requestId} -> requestId) (\s@CreateImageResponse' {} a -> s {requestId = a} :: CreateImageResponse)

-- | The Amazon Resource Name (ARN) of the image that was created by this
-- request.
createImageResponse_imageBuildVersionArn :: Lens.Lens' CreateImageResponse (Prelude.Maybe Prelude.Text)
createImageResponse_imageBuildVersionArn = Lens.lens (\CreateImageResponse' {imageBuildVersionArn} -> imageBuildVersionArn) (\s@CreateImageResponse' {} a -> s {imageBuildVersionArn = a} :: CreateImageResponse)

-- | The response's http status code.
createImageResponse_httpStatus :: Lens.Lens' CreateImageResponse Prelude.Int
createImageResponse_httpStatus = Lens.lens (\CreateImageResponse' {httpStatus} -> httpStatus) (\s@CreateImageResponse' {} a -> s {httpStatus = a} :: CreateImageResponse)

instance Prelude.NFData CreateImageResponse where
  rnf CreateImageResponse' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf imageBuildVersionArn
      `Prelude.seq` Prelude.rnf httpStatus

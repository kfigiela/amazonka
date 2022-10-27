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
-- Module      : Amazonka.SageMaker.DescribeImageVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a version of a SageMaker image.
module Amazonka.SageMaker.DescribeImageVersion
  ( -- * Creating a Request
    DescribeImageVersion (..),
    newDescribeImageVersion,

    -- * Request Lenses
    describeImageVersion_version,
    describeImageVersion_imageName,

    -- * Destructuring the Response
    DescribeImageVersionResponse (..),
    newDescribeImageVersionResponse,

    -- * Response Lenses
    describeImageVersionResponse_baseImage,
    describeImageVersionResponse_imageVersionArn,
    describeImageVersionResponse_imageArn,
    describeImageVersionResponse_lastModifiedTime,
    describeImageVersionResponse_containerImage,
    describeImageVersionResponse_creationTime,
    describeImageVersionResponse_imageVersionStatus,
    describeImageVersionResponse_failureReason,
    describeImageVersionResponse_version,
    describeImageVersionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newDescribeImageVersion' smart constructor.
data DescribeImageVersion = DescribeImageVersion'
  { -- | The version of the image. If not specified, the latest version is
    -- described.
    version :: Prelude.Maybe Prelude.Natural,
    -- | The name of the image.
    imageName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeImageVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'describeImageVersion_version' - The version of the image. If not specified, the latest version is
-- described.
--
-- 'imageName', 'describeImageVersion_imageName' - The name of the image.
newDescribeImageVersion ::
  -- | 'imageName'
  Prelude.Text ->
  DescribeImageVersion
newDescribeImageVersion pImageName_ =
  DescribeImageVersion'
    { version = Prelude.Nothing,
      imageName = pImageName_
    }

-- | The version of the image. If not specified, the latest version is
-- described.
describeImageVersion_version :: Lens.Lens' DescribeImageVersion (Prelude.Maybe Prelude.Natural)
describeImageVersion_version = Lens.lens (\DescribeImageVersion' {version} -> version) (\s@DescribeImageVersion' {} a -> s {version = a} :: DescribeImageVersion)

-- | The name of the image.
describeImageVersion_imageName :: Lens.Lens' DescribeImageVersion Prelude.Text
describeImageVersion_imageName = Lens.lens (\DescribeImageVersion' {imageName} -> imageName) (\s@DescribeImageVersion' {} a -> s {imageName = a} :: DescribeImageVersion)

instance Core.AWSRequest DescribeImageVersion where
  type
    AWSResponse DescribeImageVersion =
      DescribeImageVersionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeImageVersionResponse'
            Prelude.<$> (x Core..?> "BaseImage")
            Prelude.<*> (x Core..?> "ImageVersionArn")
            Prelude.<*> (x Core..?> "ImageArn")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "ContainerImage")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "ImageVersionStatus")
            Prelude.<*> (x Core..?> "FailureReason")
            Prelude.<*> (x Core..?> "Version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeImageVersion where
  hashWithSalt _salt DescribeImageVersion' {..} =
    _salt `Prelude.hashWithSalt` version
      `Prelude.hashWithSalt` imageName

instance Prelude.NFData DescribeImageVersion where
  rnf DescribeImageVersion' {..} =
    Prelude.rnf version
      `Prelude.seq` Prelude.rnf imageName

instance Core.ToHeaders DescribeImageVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.DescribeImageVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeImageVersion where
  toJSON DescribeImageVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Version" Core..=) Prelude.<$> version,
            Prelude.Just ("ImageName" Core..= imageName)
          ]
      )

instance Core.ToPath DescribeImageVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeImageVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeImageVersionResponse' smart constructor.
data DescribeImageVersionResponse = DescribeImageVersionResponse'
  { -- | The registry path of the container image on which this image version is
    -- based.
    baseImage :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the version.
    imageVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the image the version is based on.
    imageArn :: Prelude.Maybe Prelude.Text,
    -- | When the version was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The registry path of the container image that contains this image
    -- version.
    containerImage :: Prelude.Maybe Prelude.Text,
    -- | When the version was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of the version.
    imageVersionStatus :: Prelude.Maybe ImageVersionStatus,
    -- | When a create or delete operation fails, the reason for the failure.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The version number.
    version :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeImageVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'baseImage', 'describeImageVersionResponse_baseImage' - The registry path of the container image on which this image version is
-- based.
--
-- 'imageVersionArn', 'describeImageVersionResponse_imageVersionArn' - The ARN of the version.
--
-- 'imageArn', 'describeImageVersionResponse_imageArn' - The Amazon Resource Name (ARN) of the image the version is based on.
--
-- 'lastModifiedTime', 'describeImageVersionResponse_lastModifiedTime' - When the version was last modified.
--
-- 'containerImage', 'describeImageVersionResponse_containerImage' - The registry path of the container image that contains this image
-- version.
--
-- 'creationTime', 'describeImageVersionResponse_creationTime' - When the version was created.
--
-- 'imageVersionStatus', 'describeImageVersionResponse_imageVersionStatus' - The status of the version.
--
-- 'failureReason', 'describeImageVersionResponse_failureReason' - When a create or delete operation fails, the reason for the failure.
--
-- 'version', 'describeImageVersionResponse_version' - The version number.
--
-- 'httpStatus', 'describeImageVersionResponse_httpStatus' - The response's http status code.
newDescribeImageVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeImageVersionResponse
newDescribeImageVersionResponse pHttpStatus_ =
  DescribeImageVersionResponse'
    { baseImage =
        Prelude.Nothing,
      imageVersionArn = Prelude.Nothing,
      imageArn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      containerImage = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      imageVersionStatus = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The registry path of the container image on which this image version is
-- based.
describeImageVersionResponse_baseImage :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Text)
describeImageVersionResponse_baseImage = Lens.lens (\DescribeImageVersionResponse' {baseImage} -> baseImage) (\s@DescribeImageVersionResponse' {} a -> s {baseImage = a} :: DescribeImageVersionResponse)

-- | The ARN of the version.
describeImageVersionResponse_imageVersionArn :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Text)
describeImageVersionResponse_imageVersionArn = Lens.lens (\DescribeImageVersionResponse' {imageVersionArn} -> imageVersionArn) (\s@DescribeImageVersionResponse' {} a -> s {imageVersionArn = a} :: DescribeImageVersionResponse)

-- | The Amazon Resource Name (ARN) of the image the version is based on.
describeImageVersionResponse_imageArn :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Text)
describeImageVersionResponse_imageArn = Lens.lens (\DescribeImageVersionResponse' {imageArn} -> imageArn) (\s@DescribeImageVersionResponse' {} a -> s {imageArn = a} :: DescribeImageVersionResponse)

-- | When the version was last modified.
describeImageVersionResponse_lastModifiedTime :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.UTCTime)
describeImageVersionResponse_lastModifiedTime = Lens.lens (\DescribeImageVersionResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeImageVersionResponse' {} a -> s {lastModifiedTime = a} :: DescribeImageVersionResponse) Prelude.. Lens.mapping Core._Time

-- | The registry path of the container image that contains this image
-- version.
describeImageVersionResponse_containerImage :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Text)
describeImageVersionResponse_containerImage = Lens.lens (\DescribeImageVersionResponse' {containerImage} -> containerImage) (\s@DescribeImageVersionResponse' {} a -> s {containerImage = a} :: DescribeImageVersionResponse)

-- | When the version was created.
describeImageVersionResponse_creationTime :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.UTCTime)
describeImageVersionResponse_creationTime = Lens.lens (\DescribeImageVersionResponse' {creationTime} -> creationTime) (\s@DescribeImageVersionResponse' {} a -> s {creationTime = a} :: DescribeImageVersionResponse) Prelude.. Lens.mapping Core._Time

-- | The status of the version.
describeImageVersionResponse_imageVersionStatus :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe ImageVersionStatus)
describeImageVersionResponse_imageVersionStatus = Lens.lens (\DescribeImageVersionResponse' {imageVersionStatus} -> imageVersionStatus) (\s@DescribeImageVersionResponse' {} a -> s {imageVersionStatus = a} :: DescribeImageVersionResponse)

-- | When a create or delete operation fails, the reason for the failure.
describeImageVersionResponse_failureReason :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Text)
describeImageVersionResponse_failureReason = Lens.lens (\DescribeImageVersionResponse' {failureReason} -> failureReason) (\s@DescribeImageVersionResponse' {} a -> s {failureReason = a} :: DescribeImageVersionResponse)

-- | The version number.
describeImageVersionResponse_version :: Lens.Lens' DescribeImageVersionResponse (Prelude.Maybe Prelude.Natural)
describeImageVersionResponse_version = Lens.lens (\DescribeImageVersionResponse' {version} -> version) (\s@DescribeImageVersionResponse' {} a -> s {version = a} :: DescribeImageVersionResponse)

-- | The response's http status code.
describeImageVersionResponse_httpStatus :: Lens.Lens' DescribeImageVersionResponse Prelude.Int
describeImageVersionResponse_httpStatus = Lens.lens (\DescribeImageVersionResponse' {httpStatus} -> httpStatus) (\s@DescribeImageVersionResponse' {} a -> s {httpStatus = a} :: DescribeImageVersionResponse)

instance Prelude.NFData DescribeImageVersionResponse where
  rnf DescribeImageVersionResponse' {..} =
    Prelude.rnf baseImage
      `Prelude.seq` Prelude.rnf imageVersionArn
      `Prelude.seq` Prelude.rnf imageArn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf containerImage
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf imageVersionStatus
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus

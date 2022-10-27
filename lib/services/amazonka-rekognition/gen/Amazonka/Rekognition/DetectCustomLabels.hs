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
-- Module      : Amazonka.Rekognition.DetectCustomLabels
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects custom labels in a supplied image by using an Amazon Rekognition
-- Custom Labels model.
--
-- You specify which version of a model version to use by using the
-- @ProjectVersionArn@ input parameter.
--
-- You pass the input image as base64-encoded image bytes or as a reference
-- to an image in an Amazon S3 bucket. If you use the AWS CLI to call
-- Amazon Rekognition operations, passing image bytes is not supported. The
-- image must be either a PNG or JPEG formatted file.
--
-- For each object that the model version detects on an image, the API
-- returns a (@CustomLabel@) object in an array (@CustomLabels@). Each
-- @CustomLabel@ object provides the label name (@Name@), the level of
-- confidence that the image contains the object (@Confidence@), and object
-- location information, if it exists, for the label on the image
-- (@Geometry@).
--
-- To filter labels that are returned, specify a value for @MinConfidence@.
-- @DetectCustomLabelsLabels@ only returns labels with a confidence that\'s
-- higher than the specified value. The value of @MinConfidence@ maps to
-- the assumed threshold values created during training. For more
-- information, see /Assumed threshold/ in the Amazon Rekognition Custom
-- Labels Developer Guide. Amazon Rekognition Custom Labels metrics
-- expresses an assumed threshold as a floating point value between 0-1.
-- The range of @MinConfidence@ normalizes the threshold value to a
-- percentage value (0-100). Confidence responses from @DetectCustomLabels@
-- are also returned as a percentage. You can use @MinConfidence@ to change
-- the precision and recall or your model. For more information, see
-- /Analyzing an image/ in the Amazon Rekognition Custom Labels Developer
-- Guide.
--
-- If you don\'t specify a value for @MinConfidence@, @DetectCustomLabels@
-- returns labels based on the assumed threshold of each label.
--
-- This is a stateless API operation. That is, the operation does not
-- persist any data.
--
-- This operation requires permissions to perform the
-- @rekognition:DetectCustomLabels@ action.
--
-- For more information, see /Analyzing an image/ in the Amazon Rekognition
-- Custom Labels Developer Guide.
module Amazonka.Rekognition.DetectCustomLabels
  ( -- * Creating a Request
    DetectCustomLabels (..),
    newDetectCustomLabels,

    -- * Request Lenses
    detectCustomLabels_minConfidence,
    detectCustomLabels_maxResults,
    detectCustomLabels_projectVersionArn,
    detectCustomLabels_image,

    -- * Destructuring the Response
    DetectCustomLabelsResponse (..),
    newDetectCustomLabelsResponse,

    -- * Response Lenses
    detectCustomLabelsResponse_customLabels,
    detectCustomLabelsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDetectCustomLabels' smart constructor.
data DetectCustomLabels = DetectCustomLabels'
  { -- | Specifies the minimum confidence level for the labels to return.
    -- @DetectCustomLabels@ doesn\'t return any labels with a confidence value
    -- that\'s lower than this specified value. If you specify a value of 0,
    -- @DetectCustomLabels@ returns all labels, regardless of the assumed
    -- threshold applied to each label. If you don\'t specify a value for
    -- @MinConfidence@, @DetectCustomLabels@ returns labels based on the
    -- assumed threshold of each label.
    minConfidence :: Prelude.Maybe Prelude.Double,
    -- | Maximum number of results you want the service to return in the
    -- response. The service returns the specified number of highest confidence
    -- labels ranked from highest confidence to lowest.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the model version that you want to use.
    projectVersionArn :: Prelude.Text,
    image :: Image
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectCustomLabels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minConfidence', 'detectCustomLabels_minConfidence' - Specifies the minimum confidence level for the labels to return.
-- @DetectCustomLabels@ doesn\'t return any labels with a confidence value
-- that\'s lower than this specified value. If you specify a value of 0,
-- @DetectCustomLabels@ returns all labels, regardless of the assumed
-- threshold applied to each label. If you don\'t specify a value for
-- @MinConfidence@, @DetectCustomLabels@ returns labels based on the
-- assumed threshold of each label.
--
-- 'maxResults', 'detectCustomLabels_maxResults' - Maximum number of results you want the service to return in the
-- response. The service returns the specified number of highest confidence
-- labels ranked from highest confidence to lowest.
--
-- 'projectVersionArn', 'detectCustomLabels_projectVersionArn' - The ARN of the model version that you want to use.
--
-- 'image', 'detectCustomLabels_image' - Undocumented member.
newDetectCustomLabels ::
  -- | 'projectVersionArn'
  Prelude.Text ->
  -- | 'image'
  Image ->
  DetectCustomLabels
newDetectCustomLabels pProjectVersionArn_ pImage_ =
  DetectCustomLabels'
    { minConfidence =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      projectVersionArn = pProjectVersionArn_,
      image = pImage_
    }

-- | Specifies the minimum confidence level for the labels to return.
-- @DetectCustomLabels@ doesn\'t return any labels with a confidence value
-- that\'s lower than this specified value. If you specify a value of 0,
-- @DetectCustomLabels@ returns all labels, regardless of the assumed
-- threshold applied to each label. If you don\'t specify a value for
-- @MinConfidence@, @DetectCustomLabels@ returns labels based on the
-- assumed threshold of each label.
detectCustomLabels_minConfidence :: Lens.Lens' DetectCustomLabels (Prelude.Maybe Prelude.Double)
detectCustomLabels_minConfidence = Lens.lens (\DetectCustomLabels' {minConfidence} -> minConfidence) (\s@DetectCustomLabels' {} a -> s {minConfidence = a} :: DetectCustomLabels)

-- | Maximum number of results you want the service to return in the
-- response. The service returns the specified number of highest confidence
-- labels ranked from highest confidence to lowest.
detectCustomLabels_maxResults :: Lens.Lens' DetectCustomLabels (Prelude.Maybe Prelude.Natural)
detectCustomLabels_maxResults = Lens.lens (\DetectCustomLabels' {maxResults} -> maxResults) (\s@DetectCustomLabels' {} a -> s {maxResults = a} :: DetectCustomLabels)

-- | The ARN of the model version that you want to use.
detectCustomLabels_projectVersionArn :: Lens.Lens' DetectCustomLabels Prelude.Text
detectCustomLabels_projectVersionArn = Lens.lens (\DetectCustomLabels' {projectVersionArn} -> projectVersionArn) (\s@DetectCustomLabels' {} a -> s {projectVersionArn = a} :: DetectCustomLabels)

-- | Undocumented member.
detectCustomLabels_image :: Lens.Lens' DetectCustomLabels Image
detectCustomLabels_image = Lens.lens (\DetectCustomLabels' {image} -> image) (\s@DetectCustomLabels' {} a -> s {image = a} :: DetectCustomLabels)

instance Core.AWSRequest DetectCustomLabels where
  type
    AWSResponse DetectCustomLabels =
      DetectCustomLabelsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DetectCustomLabelsResponse'
            Prelude.<$> (x Core..?> "CustomLabels" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DetectCustomLabels where
  hashWithSalt _salt DetectCustomLabels' {..} =
    _salt `Prelude.hashWithSalt` minConfidence
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` projectVersionArn
      `Prelude.hashWithSalt` image

instance Prelude.NFData DetectCustomLabels where
  rnf DetectCustomLabels' {..} =
    Prelude.rnf minConfidence
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf projectVersionArn
      `Prelude.seq` Prelude.rnf image

instance Core.ToHeaders DetectCustomLabels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RekognitionService.DetectCustomLabels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DetectCustomLabels where
  toJSON DetectCustomLabels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MinConfidence" Core..=) Prelude.<$> minConfidence,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("ProjectVersionArn" Core..= projectVersionArn),
            Prelude.Just ("Image" Core..= image)
          ]
      )

instance Core.ToPath DetectCustomLabels where
  toPath = Prelude.const "/"

instance Core.ToQuery DetectCustomLabels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDetectCustomLabelsResponse' smart constructor.
data DetectCustomLabelsResponse = DetectCustomLabelsResponse'
  { -- | An array of custom labels detected in the input image.
    customLabels :: Prelude.Maybe [CustomLabel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectCustomLabelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customLabels', 'detectCustomLabelsResponse_customLabels' - An array of custom labels detected in the input image.
--
-- 'httpStatus', 'detectCustomLabelsResponse_httpStatus' - The response's http status code.
newDetectCustomLabelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DetectCustomLabelsResponse
newDetectCustomLabelsResponse pHttpStatus_ =
  DetectCustomLabelsResponse'
    { customLabels =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of custom labels detected in the input image.
detectCustomLabelsResponse_customLabels :: Lens.Lens' DetectCustomLabelsResponse (Prelude.Maybe [CustomLabel])
detectCustomLabelsResponse_customLabels = Lens.lens (\DetectCustomLabelsResponse' {customLabels} -> customLabels) (\s@DetectCustomLabelsResponse' {} a -> s {customLabels = a} :: DetectCustomLabelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
detectCustomLabelsResponse_httpStatus :: Lens.Lens' DetectCustomLabelsResponse Prelude.Int
detectCustomLabelsResponse_httpStatus = Lens.lens (\DetectCustomLabelsResponse' {httpStatus} -> httpStatus) (\s@DetectCustomLabelsResponse' {} a -> s {httpStatus = a} :: DetectCustomLabelsResponse)

instance Prelude.NFData DetectCustomLabelsResponse where
  rnf DetectCustomLabelsResponse' {..} =
    Prelude.rnf customLabels
      `Prelude.seq` Prelude.rnf httpStatus

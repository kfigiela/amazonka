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
-- Module      : Amazonka.LookoutMetrics.CreateAnomalyDetector
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an anomaly detector.
module Amazonka.LookoutMetrics.CreateAnomalyDetector
  ( -- * Creating a Request
    CreateAnomalyDetector (..),
    newCreateAnomalyDetector,

    -- * Request Lenses
    createAnomalyDetector_tags,
    createAnomalyDetector_kmsKeyArn,
    createAnomalyDetector_anomalyDetectorDescription,
    createAnomalyDetector_anomalyDetectorName,
    createAnomalyDetector_anomalyDetectorConfig,

    -- * Destructuring the Response
    CreateAnomalyDetectorResponse (..),
    newCreateAnomalyDetectorResponse,

    -- * Response Lenses
    createAnomalyDetectorResponse_anomalyDetectorArn,
    createAnomalyDetectorResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutMetrics.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateAnomalyDetector' smart constructor.
data CreateAnomalyDetector = CreateAnomalyDetector'
  { -- | A list of
    -- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>
    -- to apply to the anomaly detector.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ARN of the KMS key to use to encrypt your data.
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | A description of the detector.
    anomalyDetectorDescription :: Prelude.Maybe Prelude.Text,
    -- | The name of the detector.
    anomalyDetectorName :: Prelude.Text,
    -- | Contains information about the configuration of the anomaly detector.
    anomalyDetectorConfig :: AnomalyDetectorConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAnomalyDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAnomalyDetector_tags' - A list of
-- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>
-- to apply to the anomaly detector.
--
-- 'kmsKeyArn', 'createAnomalyDetector_kmsKeyArn' - The ARN of the KMS key to use to encrypt your data.
--
-- 'anomalyDetectorDescription', 'createAnomalyDetector_anomalyDetectorDescription' - A description of the detector.
--
-- 'anomalyDetectorName', 'createAnomalyDetector_anomalyDetectorName' - The name of the detector.
--
-- 'anomalyDetectorConfig', 'createAnomalyDetector_anomalyDetectorConfig' - Contains information about the configuration of the anomaly detector.
newCreateAnomalyDetector ::
  -- | 'anomalyDetectorName'
  Prelude.Text ->
  -- | 'anomalyDetectorConfig'
  AnomalyDetectorConfig ->
  CreateAnomalyDetector
newCreateAnomalyDetector
  pAnomalyDetectorName_
  pAnomalyDetectorConfig_ =
    CreateAnomalyDetector'
      { tags = Prelude.Nothing,
        kmsKeyArn = Prelude.Nothing,
        anomalyDetectorDescription = Prelude.Nothing,
        anomalyDetectorName = pAnomalyDetectorName_,
        anomalyDetectorConfig = pAnomalyDetectorConfig_
      }

-- | A list of
-- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>
-- to apply to the anomaly detector.
createAnomalyDetector_tags :: Lens.Lens' CreateAnomalyDetector (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAnomalyDetector_tags = Lens.lens (\CreateAnomalyDetector' {tags} -> tags) (\s@CreateAnomalyDetector' {} a -> s {tags = a} :: CreateAnomalyDetector) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the KMS key to use to encrypt your data.
createAnomalyDetector_kmsKeyArn :: Lens.Lens' CreateAnomalyDetector (Prelude.Maybe Prelude.Text)
createAnomalyDetector_kmsKeyArn = Lens.lens (\CreateAnomalyDetector' {kmsKeyArn} -> kmsKeyArn) (\s@CreateAnomalyDetector' {} a -> s {kmsKeyArn = a} :: CreateAnomalyDetector)

-- | A description of the detector.
createAnomalyDetector_anomalyDetectorDescription :: Lens.Lens' CreateAnomalyDetector (Prelude.Maybe Prelude.Text)
createAnomalyDetector_anomalyDetectorDescription = Lens.lens (\CreateAnomalyDetector' {anomalyDetectorDescription} -> anomalyDetectorDescription) (\s@CreateAnomalyDetector' {} a -> s {anomalyDetectorDescription = a} :: CreateAnomalyDetector)

-- | The name of the detector.
createAnomalyDetector_anomalyDetectorName :: Lens.Lens' CreateAnomalyDetector Prelude.Text
createAnomalyDetector_anomalyDetectorName = Lens.lens (\CreateAnomalyDetector' {anomalyDetectorName} -> anomalyDetectorName) (\s@CreateAnomalyDetector' {} a -> s {anomalyDetectorName = a} :: CreateAnomalyDetector)

-- | Contains information about the configuration of the anomaly detector.
createAnomalyDetector_anomalyDetectorConfig :: Lens.Lens' CreateAnomalyDetector AnomalyDetectorConfig
createAnomalyDetector_anomalyDetectorConfig = Lens.lens (\CreateAnomalyDetector' {anomalyDetectorConfig} -> anomalyDetectorConfig) (\s@CreateAnomalyDetector' {} a -> s {anomalyDetectorConfig = a} :: CreateAnomalyDetector)

instance Core.AWSRequest CreateAnomalyDetector where
  type
    AWSResponse CreateAnomalyDetector =
      CreateAnomalyDetectorResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAnomalyDetectorResponse'
            Prelude.<$> (x Core..?> "AnomalyDetectorArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAnomalyDetector where
  hashWithSalt _salt CreateAnomalyDetector' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` kmsKeyArn
      `Prelude.hashWithSalt` anomalyDetectorDescription
      `Prelude.hashWithSalt` anomalyDetectorName
      `Prelude.hashWithSalt` anomalyDetectorConfig

instance Prelude.NFData CreateAnomalyDetector where
  rnf CreateAnomalyDetector' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf kmsKeyArn
      `Prelude.seq` Prelude.rnf anomalyDetectorDescription
      `Prelude.seq` Prelude.rnf anomalyDetectorName
      `Prelude.seq` Prelude.rnf anomalyDetectorConfig

instance Core.ToHeaders CreateAnomalyDetector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAnomalyDetector where
  toJSON CreateAnomalyDetector' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("KmsKeyArn" Core..=) Prelude.<$> kmsKeyArn,
            ("AnomalyDetectorDescription" Core..=)
              Prelude.<$> anomalyDetectorDescription,
            Prelude.Just
              ("AnomalyDetectorName" Core..= anomalyDetectorName),
            Prelude.Just
              ( "AnomalyDetectorConfig"
                  Core..= anomalyDetectorConfig
              )
          ]
      )

instance Core.ToPath CreateAnomalyDetector where
  toPath = Prelude.const "/CreateAnomalyDetector"

instance Core.ToQuery CreateAnomalyDetector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAnomalyDetectorResponse' smart constructor.
data CreateAnomalyDetectorResponse = CreateAnomalyDetectorResponse'
  { -- | The ARN of the detector.
    anomalyDetectorArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAnomalyDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyDetectorArn', 'createAnomalyDetectorResponse_anomalyDetectorArn' - The ARN of the detector.
--
-- 'httpStatus', 'createAnomalyDetectorResponse_httpStatus' - The response's http status code.
newCreateAnomalyDetectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAnomalyDetectorResponse
newCreateAnomalyDetectorResponse pHttpStatus_ =
  CreateAnomalyDetectorResponse'
    { anomalyDetectorArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the detector.
createAnomalyDetectorResponse_anomalyDetectorArn :: Lens.Lens' CreateAnomalyDetectorResponse (Prelude.Maybe Prelude.Text)
createAnomalyDetectorResponse_anomalyDetectorArn = Lens.lens (\CreateAnomalyDetectorResponse' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@CreateAnomalyDetectorResponse' {} a -> s {anomalyDetectorArn = a} :: CreateAnomalyDetectorResponse)

-- | The response's http status code.
createAnomalyDetectorResponse_httpStatus :: Lens.Lens' CreateAnomalyDetectorResponse Prelude.Int
createAnomalyDetectorResponse_httpStatus = Lens.lens (\CreateAnomalyDetectorResponse' {httpStatus} -> httpStatus) (\s@CreateAnomalyDetectorResponse' {} a -> s {httpStatus = a} :: CreateAnomalyDetectorResponse)

instance Prelude.NFData CreateAnomalyDetectorResponse where
  rnf CreateAnomalyDetectorResponse' {..} =
    Prelude.rnf anomalyDetectorArn
      `Prelude.seq` Prelude.rnf httpStatus

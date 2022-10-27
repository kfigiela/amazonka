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
-- Module      : Amazonka.LookoutEquipment.DescribeInferenceScheduler
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specifies information about the inference scheduler being used,
-- including name, model, status, and associated metadata
module Amazonka.LookoutEquipment.DescribeInferenceScheduler
  ( -- * Creating a Request
    DescribeInferenceScheduler (..),
    newDescribeInferenceScheduler,

    -- * Request Lenses
    describeInferenceScheduler_inferenceSchedulerName,

    -- * Destructuring the Response
    DescribeInferenceSchedulerResponse (..),
    newDescribeInferenceSchedulerResponse,

    -- * Response Lenses
    describeInferenceSchedulerResponse_inferenceSchedulerName,
    describeInferenceSchedulerResponse_serverSideKmsKeyId,
    describeInferenceSchedulerResponse_roleArn,
    describeInferenceSchedulerResponse_dataDelayOffsetInMinutes,
    describeInferenceSchedulerResponse_dataOutputConfiguration,
    describeInferenceSchedulerResponse_status,
    describeInferenceSchedulerResponse_modelArn,
    describeInferenceSchedulerResponse_latestInferenceResult,
    describeInferenceSchedulerResponse_modelName,
    describeInferenceSchedulerResponse_dataUploadFrequency,
    describeInferenceSchedulerResponse_createdAt,
    describeInferenceSchedulerResponse_inferenceSchedulerArn,
    describeInferenceSchedulerResponse_updatedAt,
    describeInferenceSchedulerResponse_dataInputConfiguration,
    describeInferenceSchedulerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeInferenceScheduler' smart constructor.
data DescribeInferenceScheduler = DescribeInferenceScheduler'
  { -- | The name of the inference scheduler being described.
    inferenceSchedulerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInferenceScheduler' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inferenceSchedulerName', 'describeInferenceScheduler_inferenceSchedulerName' - The name of the inference scheduler being described.
newDescribeInferenceScheduler ::
  -- | 'inferenceSchedulerName'
  Prelude.Text ->
  DescribeInferenceScheduler
newDescribeInferenceScheduler
  pInferenceSchedulerName_ =
    DescribeInferenceScheduler'
      { inferenceSchedulerName =
          pInferenceSchedulerName_
      }

-- | The name of the inference scheduler being described.
describeInferenceScheduler_inferenceSchedulerName :: Lens.Lens' DescribeInferenceScheduler Prelude.Text
describeInferenceScheduler_inferenceSchedulerName = Lens.lens (\DescribeInferenceScheduler' {inferenceSchedulerName} -> inferenceSchedulerName) (\s@DescribeInferenceScheduler' {} a -> s {inferenceSchedulerName = a} :: DescribeInferenceScheduler)

instance Core.AWSRequest DescribeInferenceScheduler where
  type
    AWSResponse DescribeInferenceScheduler =
      DescribeInferenceSchedulerResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeInferenceSchedulerResponse'
            Prelude.<$> (x Core..?> "InferenceSchedulerName")
            Prelude.<*> (x Core..?> "ServerSideKmsKeyId")
            Prelude.<*> (x Core..?> "RoleArn")
            Prelude.<*> (x Core..?> "DataDelayOffsetInMinutes")
            Prelude.<*> (x Core..?> "DataOutputConfiguration")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "ModelArn")
            Prelude.<*> (x Core..?> "LatestInferenceResult")
            Prelude.<*> (x Core..?> "ModelName")
            Prelude.<*> (x Core..?> "DataUploadFrequency")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (x Core..?> "InferenceSchedulerArn")
            Prelude.<*> (x Core..?> "UpdatedAt")
            Prelude.<*> (x Core..?> "DataInputConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeInferenceScheduler where
  hashWithSalt _salt DescribeInferenceScheduler' {..} =
    _salt `Prelude.hashWithSalt` inferenceSchedulerName

instance Prelude.NFData DescribeInferenceScheduler where
  rnf DescribeInferenceScheduler' {..} =
    Prelude.rnf inferenceSchedulerName

instance Core.ToHeaders DescribeInferenceScheduler where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.DescribeInferenceScheduler" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeInferenceScheduler where
  toJSON DescribeInferenceScheduler' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "InferenceSchedulerName"
                  Core..= inferenceSchedulerName
              )
          ]
      )

instance Core.ToPath DescribeInferenceScheduler where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeInferenceScheduler where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeInferenceSchedulerResponse' smart constructor.
data DescribeInferenceSchedulerResponse = DescribeInferenceSchedulerResponse'
  { -- | The name of the inference scheduler being described.
    inferenceSchedulerName :: Prelude.Maybe Prelude.Text,
    -- | Provides the identifier of the KMS key used to encrypt inference
    -- scheduler data by Amazon Lookout for Equipment.
    serverSideKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a role with permission to access the
    -- data source for the inference scheduler being described.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | A period of time (in minutes) by which inference on the data is delayed
    -- after the data starts. For instance, if you select an offset delay time
    -- of five minutes, inference will not begin on the data until the first
    -- data measurement after the five minute mark. For example, if five
    -- minutes is selected, the inference scheduler will wake up at the
    -- configured frequency with the additional five minute delay time to check
    -- the customer S3 bucket. The customer can upload data at the same
    -- frequency and they don\'t need to stop and restart the scheduler when
    -- uploading new data.
    dataDelayOffsetInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | Specifies information for the output results for the inference
    -- scheduler, including the output S3 location.
    dataOutputConfiguration :: Prelude.Maybe InferenceOutputConfiguration,
    -- | Indicates the status of the inference scheduler.
    status :: Prelude.Maybe InferenceSchedulerStatus,
    -- | The Amazon Resource Name (ARN) of the ML model of the inference
    -- scheduler being described.
    modelArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the latest execution for the inference scheduler was
    -- Anomalous (anomalous events found) or Normal (no anomalous events
    -- found).
    latestInferenceResult :: Prelude.Maybe LatestInferenceResult,
    -- | The name of the ML model of the inference scheduler being described.
    modelName :: Prelude.Maybe Prelude.Text,
    -- | Specifies how often data is uploaded to the source S3 bucket for the
    -- input data. This value is the length of time between data uploads. For
    -- instance, if you select 5 minutes, Amazon Lookout for Equipment will
    -- upload the real-time data to the source bucket once every 5 minutes.
    -- This frequency also determines how often Amazon Lookout for Equipment
    -- starts a scheduled inference on your data. In this example, it starts
    -- once every 5 minutes.
    dataUploadFrequency :: Prelude.Maybe DataUploadFrequency,
    -- | Specifies the time at which the inference scheduler was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the inference scheduler being
    -- described.
    inferenceSchedulerArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the time at which the inference scheduler was last updated, if
    -- it was.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | Specifies configuration information for the input data for the inference
    -- scheduler, including delimiter, format, and dataset location.
    dataInputConfiguration :: Prelude.Maybe InferenceInputConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInferenceSchedulerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inferenceSchedulerName', 'describeInferenceSchedulerResponse_inferenceSchedulerName' - The name of the inference scheduler being described.
--
-- 'serverSideKmsKeyId', 'describeInferenceSchedulerResponse_serverSideKmsKeyId' - Provides the identifier of the KMS key used to encrypt inference
-- scheduler data by Amazon Lookout for Equipment.
--
-- 'roleArn', 'describeInferenceSchedulerResponse_roleArn' - The Amazon Resource Name (ARN) of a role with permission to access the
-- data source for the inference scheduler being described.
--
-- 'dataDelayOffsetInMinutes', 'describeInferenceSchedulerResponse_dataDelayOffsetInMinutes' - A period of time (in minutes) by which inference on the data is delayed
-- after the data starts. For instance, if you select an offset delay time
-- of five minutes, inference will not begin on the data until the first
-- data measurement after the five minute mark. For example, if five
-- minutes is selected, the inference scheduler will wake up at the
-- configured frequency with the additional five minute delay time to check
-- the customer S3 bucket. The customer can upload data at the same
-- frequency and they don\'t need to stop and restart the scheduler when
-- uploading new data.
--
-- 'dataOutputConfiguration', 'describeInferenceSchedulerResponse_dataOutputConfiguration' - Specifies information for the output results for the inference
-- scheduler, including the output S3 location.
--
-- 'status', 'describeInferenceSchedulerResponse_status' - Indicates the status of the inference scheduler.
--
-- 'modelArn', 'describeInferenceSchedulerResponse_modelArn' - The Amazon Resource Name (ARN) of the ML model of the inference
-- scheduler being described.
--
-- 'latestInferenceResult', 'describeInferenceSchedulerResponse_latestInferenceResult' - Indicates whether the latest execution for the inference scheduler was
-- Anomalous (anomalous events found) or Normal (no anomalous events
-- found).
--
-- 'modelName', 'describeInferenceSchedulerResponse_modelName' - The name of the ML model of the inference scheduler being described.
--
-- 'dataUploadFrequency', 'describeInferenceSchedulerResponse_dataUploadFrequency' - Specifies how often data is uploaded to the source S3 bucket for the
-- input data. This value is the length of time between data uploads. For
-- instance, if you select 5 minutes, Amazon Lookout for Equipment will
-- upload the real-time data to the source bucket once every 5 minutes.
-- This frequency also determines how often Amazon Lookout for Equipment
-- starts a scheduled inference on your data. In this example, it starts
-- once every 5 minutes.
--
-- 'createdAt', 'describeInferenceSchedulerResponse_createdAt' - Specifies the time at which the inference scheduler was created.
--
-- 'inferenceSchedulerArn', 'describeInferenceSchedulerResponse_inferenceSchedulerArn' - The Amazon Resource Name (ARN) of the inference scheduler being
-- described.
--
-- 'updatedAt', 'describeInferenceSchedulerResponse_updatedAt' - Specifies the time at which the inference scheduler was last updated, if
-- it was.
--
-- 'dataInputConfiguration', 'describeInferenceSchedulerResponse_dataInputConfiguration' - Specifies configuration information for the input data for the inference
-- scheduler, including delimiter, format, and dataset location.
--
-- 'httpStatus', 'describeInferenceSchedulerResponse_httpStatus' - The response's http status code.
newDescribeInferenceSchedulerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeInferenceSchedulerResponse
newDescribeInferenceSchedulerResponse pHttpStatus_ =
  DescribeInferenceSchedulerResponse'
    { inferenceSchedulerName =
        Prelude.Nothing,
      serverSideKmsKeyId = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      dataDelayOffsetInMinutes =
        Prelude.Nothing,
      dataOutputConfiguration =
        Prelude.Nothing,
      status = Prelude.Nothing,
      modelArn = Prelude.Nothing,
      latestInferenceResult = Prelude.Nothing,
      modelName = Prelude.Nothing,
      dataUploadFrequency = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      inferenceSchedulerArn = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      dataInputConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the inference scheduler being described.
describeInferenceSchedulerResponse_inferenceSchedulerName :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_inferenceSchedulerName = Lens.lens (\DescribeInferenceSchedulerResponse' {inferenceSchedulerName} -> inferenceSchedulerName) (\s@DescribeInferenceSchedulerResponse' {} a -> s {inferenceSchedulerName = a} :: DescribeInferenceSchedulerResponse)

-- | Provides the identifier of the KMS key used to encrypt inference
-- scheduler data by Amazon Lookout for Equipment.
describeInferenceSchedulerResponse_serverSideKmsKeyId :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_serverSideKmsKeyId = Lens.lens (\DescribeInferenceSchedulerResponse' {serverSideKmsKeyId} -> serverSideKmsKeyId) (\s@DescribeInferenceSchedulerResponse' {} a -> s {serverSideKmsKeyId = a} :: DescribeInferenceSchedulerResponse)

-- | The Amazon Resource Name (ARN) of a role with permission to access the
-- data source for the inference scheduler being described.
describeInferenceSchedulerResponse_roleArn :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_roleArn = Lens.lens (\DescribeInferenceSchedulerResponse' {roleArn} -> roleArn) (\s@DescribeInferenceSchedulerResponse' {} a -> s {roleArn = a} :: DescribeInferenceSchedulerResponse)

-- | A period of time (in minutes) by which inference on the data is delayed
-- after the data starts. For instance, if you select an offset delay time
-- of five minutes, inference will not begin on the data until the first
-- data measurement after the five minute mark. For example, if five
-- minutes is selected, the inference scheduler will wake up at the
-- configured frequency with the additional five minute delay time to check
-- the customer S3 bucket. The customer can upload data at the same
-- frequency and they don\'t need to stop and restart the scheduler when
-- uploading new data.
describeInferenceSchedulerResponse_dataDelayOffsetInMinutes :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Natural)
describeInferenceSchedulerResponse_dataDelayOffsetInMinutes = Lens.lens (\DescribeInferenceSchedulerResponse' {dataDelayOffsetInMinutes} -> dataDelayOffsetInMinutes) (\s@DescribeInferenceSchedulerResponse' {} a -> s {dataDelayOffsetInMinutes = a} :: DescribeInferenceSchedulerResponse)

-- | Specifies information for the output results for the inference
-- scheduler, including the output S3 location.
describeInferenceSchedulerResponse_dataOutputConfiguration :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe InferenceOutputConfiguration)
describeInferenceSchedulerResponse_dataOutputConfiguration = Lens.lens (\DescribeInferenceSchedulerResponse' {dataOutputConfiguration} -> dataOutputConfiguration) (\s@DescribeInferenceSchedulerResponse' {} a -> s {dataOutputConfiguration = a} :: DescribeInferenceSchedulerResponse)

-- | Indicates the status of the inference scheduler.
describeInferenceSchedulerResponse_status :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe InferenceSchedulerStatus)
describeInferenceSchedulerResponse_status = Lens.lens (\DescribeInferenceSchedulerResponse' {status} -> status) (\s@DescribeInferenceSchedulerResponse' {} a -> s {status = a} :: DescribeInferenceSchedulerResponse)

-- | The Amazon Resource Name (ARN) of the ML model of the inference
-- scheduler being described.
describeInferenceSchedulerResponse_modelArn :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_modelArn = Lens.lens (\DescribeInferenceSchedulerResponse' {modelArn} -> modelArn) (\s@DescribeInferenceSchedulerResponse' {} a -> s {modelArn = a} :: DescribeInferenceSchedulerResponse)

-- | Indicates whether the latest execution for the inference scheduler was
-- Anomalous (anomalous events found) or Normal (no anomalous events
-- found).
describeInferenceSchedulerResponse_latestInferenceResult :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe LatestInferenceResult)
describeInferenceSchedulerResponse_latestInferenceResult = Lens.lens (\DescribeInferenceSchedulerResponse' {latestInferenceResult} -> latestInferenceResult) (\s@DescribeInferenceSchedulerResponse' {} a -> s {latestInferenceResult = a} :: DescribeInferenceSchedulerResponse)

-- | The name of the ML model of the inference scheduler being described.
describeInferenceSchedulerResponse_modelName :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_modelName = Lens.lens (\DescribeInferenceSchedulerResponse' {modelName} -> modelName) (\s@DescribeInferenceSchedulerResponse' {} a -> s {modelName = a} :: DescribeInferenceSchedulerResponse)

-- | Specifies how often data is uploaded to the source S3 bucket for the
-- input data. This value is the length of time between data uploads. For
-- instance, if you select 5 minutes, Amazon Lookout for Equipment will
-- upload the real-time data to the source bucket once every 5 minutes.
-- This frequency also determines how often Amazon Lookout for Equipment
-- starts a scheduled inference on your data. In this example, it starts
-- once every 5 minutes.
describeInferenceSchedulerResponse_dataUploadFrequency :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe DataUploadFrequency)
describeInferenceSchedulerResponse_dataUploadFrequency = Lens.lens (\DescribeInferenceSchedulerResponse' {dataUploadFrequency} -> dataUploadFrequency) (\s@DescribeInferenceSchedulerResponse' {} a -> s {dataUploadFrequency = a} :: DescribeInferenceSchedulerResponse)

-- | Specifies the time at which the inference scheduler was created.
describeInferenceSchedulerResponse_createdAt :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.UTCTime)
describeInferenceSchedulerResponse_createdAt = Lens.lens (\DescribeInferenceSchedulerResponse' {createdAt} -> createdAt) (\s@DescribeInferenceSchedulerResponse' {} a -> s {createdAt = a} :: DescribeInferenceSchedulerResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the inference scheduler being
-- described.
describeInferenceSchedulerResponse_inferenceSchedulerArn :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
describeInferenceSchedulerResponse_inferenceSchedulerArn = Lens.lens (\DescribeInferenceSchedulerResponse' {inferenceSchedulerArn} -> inferenceSchedulerArn) (\s@DescribeInferenceSchedulerResponse' {} a -> s {inferenceSchedulerArn = a} :: DescribeInferenceSchedulerResponse)

-- | Specifies the time at which the inference scheduler was last updated, if
-- it was.
describeInferenceSchedulerResponse_updatedAt :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe Prelude.UTCTime)
describeInferenceSchedulerResponse_updatedAt = Lens.lens (\DescribeInferenceSchedulerResponse' {updatedAt} -> updatedAt) (\s@DescribeInferenceSchedulerResponse' {} a -> s {updatedAt = a} :: DescribeInferenceSchedulerResponse) Prelude.. Lens.mapping Core._Time

-- | Specifies configuration information for the input data for the inference
-- scheduler, including delimiter, format, and dataset location.
describeInferenceSchedulerResponse_dataInputConfiguration :: Lens.Lens' DescribeInferenceSchedulerResponse (Prelude.Maybe InferenceInputConfiguration)
describeInferenceSchedulerResponse_dataInputConfiguration = Lens.lens (\DescribeInferenceSchedulerResponse' {dataInputConfiguration} -> dataInputConfiguration) (\s@DescribeInferenceSchedulerResponse' {} a -> s {dataInputConfiguration = a} :: DescribeInferenceSchedulerResponse)

-- | The response's http status code.
describeInferenceSchedulerResponse_httpStatus :: Lens.Lens' DescribeInferenceSchedulerResponse Prelude.Int
describeInferenceSchedulerResponse_httpStatus = Lens.lens (\DescribeInferenceSchedulerResponse' {httpStatus} -> httpStatus) (\s@DescribeInferenceSchedulerResponse' {} a -> s {httpStatus = a} :: DescribeInferenceSchedulerResponse)

instance
  Prelude.NFData
    DescribeInferenceSchedulerResponse
  where
  rnf DescribeInferenceSchedulerResponse' {..} =
    Prelude.rnf inferenceSchedulerName
      `Prelude.seq` Prelude.rnf serverSideKmsKeyId
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf dataDelayOffsetInMinutes
      `Prelude.seq` Prelude.rnf dataOutputConfiguration
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf modelArn
      `Prelude.seq` Prelude.rnf latestInferenceResult
      `Prelude.seq` Prelude.rnf modelName
      `Prelude.seq` Prelude.rnf dataUploadFrequency
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf inferenceSchedulerArn
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf dataInputConfiguration
      `Prelude.seq` Prelude.rnf httpStatus

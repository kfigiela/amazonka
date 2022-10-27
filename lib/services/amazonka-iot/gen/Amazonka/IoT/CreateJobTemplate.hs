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
-- Module      : Amazonka.IoT.CreateJobTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job template.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions CreateJobTemplate>
-- action.
module Amazonka.IoT.CreateJobTemplate
  ( -- * Creating a Request
    CreateJobTemplate (..),
    newCreateJobTemplate,

    -- * Request Lenses
    createJobTemplate_tags,
    createJobTemplate_jobExecutionsRolloutConfig,
    createJobTemplate_documentSource,
    createJobTemplate_abortConfig,
    createJobTemplate_presignedUrlConfig,
    createJobTemplate_document,
    createJobTemplate_jobArn,
    createJobTemplate_jobExecutionsRetryConfig,
    createJobTemplate_timeoutConfig,
    createJobTemplate_jobTemplateId,
    createJobTemplate_description,

    -- * Destructuring the Response
    CreateJobTemplateResponse (..),
    newCreateJobTemplateResponse,

    -- * Response Lenses
    createJobTemplateResponse_jobTemplateArn,
    createJobTemplateResponse_jobTemplateId,
    createJobTemplateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateJobTemplate' smart constructor.
data CreateJobTemplate = CreateJobTemplate'
  { -- | Metadata that can be used to manage the job template.
    tags :: Prelude.Maybe [Tag],
    jobExecutionsRolloutConfig :: Prelude.Maybe JobExecutionsRolloutConfig,
    -- | An S3 link to the job document to use in the template. Required if you
    -- don\'t specify a value for @document@.
    --
    -- If the job document resides in an S3 bucket, you must use a placeholder
    -- link when specifying the document.
    --
    -- The placeholder link is of the following form:
    --
    -- @${aws:iot:s3-presigned-url:https:\/\/s3.amazonaws.com\/bucket\/key}@
    --
    -- where /bucket/ is your bucket name and /key/ is the object in the bucket
    -- to which you are linking.
    documentSource :: Prelude.Maybe Prelude.Text,
    abortConfig :: Prelude.Maybe AbortConfig,
    presignedUrlConfig :: Prelude.Maybe PresignedUrlConfig,
    -- | The job document. Required if you don\'t specify a value for
    -- @documentSource@.
    document :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the job to use as the basis for the job template.
    jobArn :: Prelude.Maybe Prelude.Text,
    -- | Allows you to create the criteria to retry a job.
    jobExecutionsRetryConfig :: Prelude.Maybe JobExecutionsRetryConfig,
    timeoutConfig :: Prelude.Maybe TimeoutConfig,
    -- | A unique identifier for the job template. We recommend using a UUID.
    -- Alpha-numeric characters, \"-\", and \"_\" are valid for use here.
    jobTemplateId :: Prelude.Text,
    -- | A description of the job document.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createJobTemplate_tags' - Metadata that can be used to manage the job template.
--
-- 'jobExecutionsRolloutConfig', 'createJobTemplate_jobExecutionsRolloutConfig' - Undocumented member.
--
-- 'documentSource', 'createJobTemplate_documentSource' - An S3 link to the job document to use in the template. Required if you
-- don\'t specify a value for @document@.
--
-- If the job document resides in an S3 bucket, you must use a placeholder
-- link when specifying the document.
--
-- The placeholder link is of the following form:
--
-- @${aws:iot:s3-presigned-url:https:\/\/s3.amazonaws.com\/bucket\/key}@
--
-- where /bucket/ is your bucket name and /key/ is the object in the bucket
-- to which you are linking.
--
-- 'abortConfig', 'createJobTemplate_abortConfig' - Undocumented member.
--
-- 'presignedUrlConfig', 'createJobTemplate_presignedUrlConfig' - Undocumented member.
--
-- 'document', 'createJobTemplate_document' - The job document. Required if you don\'t specify a value for
-- @documentSource@.
--
-- 'jobArn', 'createJobTemplate_jobArn' - The ARN of the job to use as the basis for the job template.
--
-- 'jobExecutionsRetryConfig', 'createJobTemplate_jobExecutionsRetryConfig' - Allows you to create the criteria to retry a job.
--
-- 'timeoutConfig', 'createJobTemplate_timeoutConfig' - Undocumented member.
--
-- 'jobTemplateId', 'createJobTemplate_jobTemplateId' - A unique identifier for the job template. We recommend using a UUID.
-- Alpha-numeric characters, \"-\", and \"_\" are valid for use here.
--
-- 'description', 'createJobTemplate_description' - A description of the job document.
newCreateJobTemplate ::
  -- | 'jobTemplateId'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateJobTemplate
newCreateJobTemplate pJobTemplateId_ pDescription_ =
  CreateJobTemplate'
    { tags = Prelude.Nothing,
      jobExecutionsRolloutConfig = Prelude.Nothing,
      documentSource = Prelude.Nothing,
      abortConfig = Prelude.Nothing,
      presignedUrlConfig = Prelude.Nothing,
      document = Prelude.Nothing,
      jobArn = Prelude.Nothing,
      jobExecutionsRetryConfig = Prelude.Nothing,
      timeoutConfig = Prelude.Nothing,
      jobTemplateId = pJobTemplateId_,
      description = pDescription_
    }

-- | Metadata that can be used to manage the job template.
createJobTemplate_tags :: Lens.Lens' CreateJobTemplate (Prelude.Maybe [Tag])
createJobTemplate_tags = Lens.lens (\CreateJobTemplate' {tags} -> tags) (\s@CreateJobTemplate' {} a -> s {tags = a} :: CreateJobTemplate) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createJobTemplate_jobExecutionsRolloutConfig :: Lens.Lens' CreateJobTemplate (Prelude.Maybe JobExecutionsRolloutConfig)
createJobTemplate_jobExecutionsRolloutConfig = Lens.lens (\CreateJobTemplate' {jobExecutionsRolloutConfig} -> jobExecutionsRolloutConfig) (\s@CreateJobTemplate' {} a -> s {jobExecutionsRolloutConfig = a} :: CreateJobTemplate)

-- | An S3 link to the job document to use in the template. Required if you
-- don\'t specify a value for @document@.
--
-- If the job document resides in an S3 bucket, you must use a placeholder
-- link when specifying the document.
--
-- The placeholder link is of the following form:
--
-- @${aws:iot:s3-presigned-url:https:\/\/s3.amazonaws.com\/bucket\/key}@
--
-- where /bucket/ is your bucket name and /key/ is the object in the bucket
-- to which you are linking.
createJobTemplate_documentSource :: Lens.Lens' CreateJobTemplate (Prelude.Maybe Prelude.Text)
createJobTemplate_documentSource = Lens.lens (\CreateJobTemplate' {documentSource} -> documentSource) (\s@CreateJobTemplate' {} a -> s {documentSource = a} :: CreateJobTemplate)

-- | Undocumented member.
createJobTemplate_abortConfig :: Lens.Lens' CreateJobTemplate (Prelude.Maybe AbortConfig)
createJobTemplate_abortConfig = Lens.lens (\CreateJobTemplate' {abortConfig} -> abortConfig) (\s@CreateJobTemplate' {} a -> s {abortConfig = a} :: CreateJobTemplate)

-- | Undocumented member.
createJobTemplate_presignedUrlConfig :: Lens.Lens' CreateJobTemplate (Prelude.Maybe PresignedUrlConfig)
createJobTemplate_presignedUrlConfig = Lens.lens (\CreateJobTemplate' {presignedUrlConfig} -> presignedUrlConfig) (\s@CreateJobTemplate' {} a -> s {presignedUrlConfig = a} :: CreateJobTemplate)

-- | The job document. Required if you don\'t specify a value for
-- @documentSource@.
createJobTemplate_document :: Lens.Lens' CreateJobTemplate (Prelude.Maybe Prelude.Text)
createJobTemplate_document = Lens.lens (\CreateJobTemplate' {document} -> document) (\s@CreateJobTemplate' {} a -> s {document = a} :: CreateJobTemplate)

-- | The ARN of the job to use as the basis for the job template.
createJobTemplate_jobArn :: Lens.Lens' CreateJobTemplate (Prelude.Maybe Prelude.Text)
createJobTemplate_jobArn = Lens.lens (\CreateJobTemplate' {jobArn} -> jobArn) (\s@CreateJobTemplate' {} a -> s {jobArn = a} :: CreateJobTemplate)

-- | Allows you to create the criteria to retry a job.
createJobTemplate_jobExecutionsRetryConfig :: Lens.Lens' CreateJobTemplate (Prelude.Maybe JobExecutionsRetryConfig)
createJobTemplate_jobExecutionsRetryConfig = Lens.lens (\CreateJobTemplate' {jobExecutionsRetryConfig} -> jobExecutionsRetryConfig) (\s@CreateJobTemplate' {} a -> s {jobExecutionsRetryConfig = a} :: CreateJobTemplate)

-- | Undocumented member.
createJobTemplate_timeoutConfig :: Lens.Lens' CreateJobTemplate (Prelude.Maybe TimeoutConfig)
createJobTemplate_timeoutConfig = Lens.lens (\CreateJobTemplate' {timeoutConfig} -> timeoutConfig) (\s@CreateJobTemplate' {} a -> s {timeoutConfig = a} :: CreateJobTemplate)

-- | A unique identifier for the job template. We recommend using a UUID.
-- Alpha-numeric characters, \"-\", and \"_\" are valid for use here.
createJobTemplate_jobTemplateId :: Lens.Lens' CreateJobTemplate Prelude.Text
createJobTemplate_jobTemplateId = Lens.lens (\CreateJobTemplate' {jobTemplateId} -> jobTemplateId) (\s@CreateJobTemplate' {} a -> s {jobTemplateId = a} :: CreateJobTemplate)

-- | A description of the job document.
createJobTemplate_description :: Lens.Lens' CreateJobTemplate Prelude.Text
createJobTemplate_description = Lens.lens (\CreateJobTemplate' {description} -> description) (\s@CreateJobTemplate' {} a -> s {description = a} :: CreateJobTemplate)

instance Core.AWSRequest CreateJobTemplate where
  type
    AWSResponse CreateJobTemplate =
      CreateJobTemplateResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateJobTemplateResponse'
            Prelude.<$> (x Core..?> "jobTemplateArn")
            Prelude.<*> (x Core..?> "jobTemplateId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateJobTemplate where
  hashWithSalt _salt CreateJobTemplate' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` jobExecutionsRolloutConfig
      `Prelude.hashWithSalt` documentSource
      `Prelude.hashWithSalt` abortConfig
      `Prelude.hashWithSalt` presignedUrlConfig
      `Prelude.hashWithSalt` document
      `Prelude.hashWithSalt` jobArn
      `Prelude.hashWithSalt` jobExecutionsRetryConfig
      `Prelude.hashWithSalt` timeoutConfig
      `Prelude.hashWithSalt` jobTemplateId
      `Prelude.hashWithSalt` description

instance Prelude.NFData CreateJobTemplate where
  rnf CreateJobTemplate' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf jobExecutionsRolloutConfig
      `Prelude.seq` Prelude.rnf documentSource
      `Prelude.seq` Prelude.rnf abortConfig
      `Prelude.seq` Prelude.rnf presignedUrlConfig
      `Prelude.seq` Prelude.rnf document
      `Prelude.seq` Prelude.rnf jobArn
      `Prelude.seq` Prelude.rnf jobExecutionsRetryConfig
      `Prelude.seq` Prelude.rnf timeoutConfig
      `Prelude.seq` Prelude.rnf jobTemplateId
      `Prelude.seq` Prelude.rnf description

instance Core.ToHeaders CreateJobTemplate where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateJobTemplate where
  toJSON CreateJobTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("jobExecutionsRolloutConfig" Core..=)
              Prelude.<$> jobExecutionsRolloutConfig,
            ("documentSource" Core..=)
              Prelude.<$> documentSource,
            ("abortConfig" Core..=) Prelude.<$> abortConfig,
            ("presignedUrlConfig" Core..=)
              Prelude.<$> presignedUrlConfig,
            ("document" Core..=) Prelude.<$> document,
            ("jobArn" Core..=) Prelude.<$> jobArn,
            ("jobExecutionsRetryConfig" Core..=)
              Prelude.<$> jobExecutionsRetryConfig,
            ("timeoutConfig" Core..=) Prelude.<$> timeoutConfig,
            Prelude.Just ("description" Core..= description)
          ]
      )

instance Core.ToPath CreateJobTemplate where
  toPath CreateJobTemplate' {..} =
    Prelude.mconcat
      ["/job-templates/", Core.toBS jobTemplateId]

instance Core.ToQuery CreateJobTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateJobTemplateResponse' smart constructor.
data CreateJobTemplateResponse = CreateJobTemplateResponse'
  { -- | The ARN of the job template.
    jobTemplateArn :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the job template.
    jobTemplateId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobTemplateArn', 'createJobTemplateResponse_jobTemplateArn' - The ARN of the job template.
--
-- 'jobTemplateId', 'createJobTemplateResponse_jobTemplateId' - The unique identifier of the job template.
--
-- 'httpStatus', 'createJobTemplateResponse_httpStatus' - The response's http status code.
newCreateJobTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateJobTemplateResponse
newCreateJobTemplateResponse pHttpStatus_ =
  CreateJobTemplateResponse'
    { jobTemplateArn =
        Prelude.Nothing,
      jobTemplateId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the job template.
createJobTemplateResponse_jobTemplateArn :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.Text)
createJobTemplateResponse_jobTemplateArn = Lens.lens (\CreateJobTemplateResponse' {jobTemplateArn} -> jobTemplateArn) (\s@CreateJobTemplateResponse' {} a -> s {jobTemplateArn = a} :: CreateJobTemplateResponse)

-- | The unique identifier of the job template.
createJobTemplateResponse_jobTemplateId :: Lens.Lens' CreateJobTemplateResponse (Prelude.Maybe Prelude.Text)
createJobTemplateResponse_jobTemplateId = Lens.lens (\CreateJobTemplateResponse' {jobTemplateId} -> jobTemplateId) (\s@CreateJobTemplateResponse' {} a -> s {jobTemplateId = a} :: CreateJobTemplateResponse)

-- | The response's http status code.
createJobTemplateResponse_httpStatus :: Lens.Lens' CreateJobTemplateResponse Prelude.Int
createJobTemplateResponse_httpStatus = Lens.lens (\CreateJobTemplateResponse' {httpStatus} -> httpStatus) (\s@CreateJobTemplateResponse' {} a -> s {httpStatus = a} :: CreateJobTemplateResponse)

instance Prelude.NFData CreateJobTemplateResponse where
  rnf CreateJobTemplateResponse' {..} =
    Prelude.rnf jobTemplateArn
      `Prelude.seq` Prelude.rnf jobTemplateId
      `Prelude.seq` Prelude.rnf httpStatus

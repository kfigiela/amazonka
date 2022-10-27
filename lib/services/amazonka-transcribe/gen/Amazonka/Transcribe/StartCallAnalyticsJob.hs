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
-- Module      : Amazonka.Transcribe.StartCallAnalyticsJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transcribes the audio from a customer service call and applies any
-- additional Request Parameters you choose to include in your request.
--
-- In addition to many of the standard transcription features, Call
-- Analytics provides you with call characteristics, call summarization,
-- speaker sentiment, and optional redaction of your text transcript and
-- your audio file. You can also apply custom categories to flag specified
-- conditions. To learn more about these features and insights, refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html Analyzing call center audio with Call Analytics>.
--
-- If you want to apply categories to your Call Analytics job, you must
-- create them before submitting your job request. Categories cannot be
-- retroactively applied to a job. To create a new category, use the
-- operation. To learn more about Call Analytics categories, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html Creating categories>.
--
-- To make a @StartCallAnalyticsJob@ request, you must first upload your
-- media file into an Amazon S3 bucket; you can then specify the Amazon S3
-- location of the file using the @Media@ parameter.
--
-- You must include the following parameters in your
-- @StartCallAnalyticsJob@ request:
--
-- -   @region@: The Amazon Web Services Region where you are making your
--     request. For a list of Amazon Web Services Regions supported with
--     Amazon Transcribe, refer to
--     <https://docs.aws.amazon.com/general/latest/gr/transcribe.html Amazon Transcribe endpoints and quotas>.
--
-- -   @CallAnalyticsJobName@: A custom name you create for your
--     transcription job that is unique within your Amazon Web Services
--     account.
--
-- -   @DataAccessRoleArn@: The Amazon Resource Name (ARN) of an IAM role
--     that has permissions to access the Amazon S3 bucket that contains
--     your input files.
--
-- -   @Media@ (@MediaFileUri@ or @RedactedMediaFileUri@): The Amazon S3
--     location of your media file.
--
-- With Call Analytics, you can redact the audio contained in your media
-- file by including @RedactedMediaFileUri@, instead of @MediaFileUri@, to
-- specify the location of your input audio. If you choose to redact your
-- audio, you can find your redacted media at the location specified in the
-- @RedactedMediaFileUri@ field of your response.
module Amazonka.Transcribe.StartCallAnalyticsJob
  ( -- * Creating a Request
    StartCallAnalyticsJob (..),
    newStartCallAnalyticsJob,

    -- * Request Lenses
    startCallAnalyticsJob_outputLocation,
    startCallAnalyticsJob_dataAccessRoleArn,
    startCallAnalyticsJob_settings,
    startCallAnalyticsJob_outputEncryptionKMSKeyId,
    startCallAnalyticsJob_channelDefinitions,
    startCallAnalyticsJob_callAnalyticsJobName,
    startCallAnalyticsJob_media,

    -- * Destructuring the Response
    StartCallAnalyticsJobResponse (..),
    newStartCallAnalyticsJobResponse,

    -- * Response Lenses
    startCallAnalyticsJobResponse_callAnalyticsJob,
    startCallAnalyticsJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newStartCallAnalyticsJob' smart constructor.
data StartCallAnalyticsJob = StartCallAnalyticsJob'
  { -- | The Amazon S3 location where you want your Call Analytics transcription
    -- output stored. You can use any of the following formats to specify the
    -- output location:
    --
    -- 1.  s3:\/\/DOC-EXAMPLE-BUCKET
    --
    -- 2.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/
    --
    -- 3.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/my-call-analytics-job.json
    --
    -- Unless you specify a file name (option 3), the name of your output file
    -- has a default value that matches the name you specified for your
    -- transcription job using the @CallAnalyticsJobName@ parameter.
    --
    -- You can specify a KMS key to encrypt your output using the
    -- @OutputEncryptionKMSKeyId@ parameter. If you don\'t specify a KMS key,
    -- Amazon Transcribe uses the default Amazon S3 key for server-side
    -- encryption.
    --
    -- If you don\'t specify @OutputLocation@, your transcript is placed in a
    -- service-managed Amazon S3 bucket and you are provided with a URI to
    -- access your transcript.
    outputLocation :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an IAM role that has permissions to
    -- access the Amazon S3 bucket that contains your input files. If the role
    -- you specify doesn’t have the appropriate permissions to access the
    -- specified Amazon S3 location, your request fails.
    --
    -- IAM role ARNs have the format
    -- @arn:partition:iam::account:role\/role-name-with-path@. For example:
    -- @arn:aws:iam::111122223333:role\/Admin@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns IAM ARNs>.
    dataAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Specify additional optional settings in your request, including content
    -- redaction; allows you to apply custom language models, vocabulary
    -- filters, and custom vocabularies to your Call Analytics job.
    settings :: Prelude.Maybe CallAnalyticsJobSettings,
    -- | The KMS key you want to use to encrypt your Call Analytics output.
    --
    -- If using a key located in the __current__ Amazon Web Services account,
    -- you can specify your KMS key in one of four ways:
    --
    -- 1.  Use the KMS key ID itself. For example,
    --     @1234abcd-12ab-34cd-56ef-1234567890ab@.
    --
    -- 2.  Use an alias for the KMS key ID. For example, @alias\/ExampleAlias@.
    --
    -- 3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
    --     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
    --
    -- 4.  Use the ARN for the KMS key alias. For example,
    --     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
    --
    -- If using a key located in a __different__ Amazon Web Services account
    -- than the current Amazon Web Services account, you can specify your KMS
    -- key in one of two ways:
    --
    -- 1.  Use the ARN for the KMS key ID. For example,
    --     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
    --
    -- 2.  Use the ARN for the KMS key alias. For example,
    --     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
    --
    -- If you don\'t specify an encryption key, your output is encrypted with
    -- the default Amazon S3 key (SSE-S3).
    --
    -- If you specify a KMS key to encrypt your output, you must also specify
    -- an output location using the @OutputLocation@ parameter.
    --
    -- Note that the user making the request must have permission to use the
    -- specified KMS key.
    outputEncryptionKMSKeyId :: Prelude.Maybe Prelude.Text,
    -- | Allows you to specify which speaker is on which channel. For example, if
    -- your agent is the first participant to speak, you would set @ChannelId@
    -- to @0@ (to indicate the first channel) and @ParticipantRole@ to @AGENT@
    -- (to indicate that it\'s the agent speaking).
    channelDefinitions :: Prelude.Maybe (Prelude.NonEmpty ChannelDefinition),
    -- | A unique name, chosen by you, for your Call Analytics job.
    --
    -- This name is case sensitive, cannot contain spaces, and must be unique
    -- within an Amazon Web Services account. If you try to create a new job
    -- with the same name as an existing job, you get a @ConflictException@
    -- error.
    callAnalyticsJobName :: Prelude.Text,
    media :: Media
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCallAnalyticsJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputLocation', 'startCallAnalyticsJob_outputLocation' - The Amazon S3 location where you want your Call Analytics transcription
-- output stored. You can use any of the following formats to specify the
-- output location:
--
-- 1.  s3:\/\/DOC-EXAMPLE-BUCKET
--
-- 2.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/
--
-- 3.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/my-call-analytics-job.json
--
-- Unless you specify a file name (option 3), the name of your output file
-- has a default value that matches the name you specified for your
-- transcription job using the @CallAnalyticsJobName@ parameter.
--
-- You can specify a KMS key to encrypt your output using the
-- @OutputEncryptionKMSKeyId@ parameter. If you don\'t specify a KMS key,
-- Amazon Transcribe uses the default Amazon S3 key for server-side
-- encryption.
--
-- If you don\'t specify @OutputLocation@, your transcript is placed in a
-- service-managed Amazon S3 bucket and you are provided with a URI to
-- access your transcript.
--
-- 'dataAccessRoleArn', 'startCallAnalyticsJob_dataAccessRoleArn' - The Amazon Resource Name (ARN) of an IAM role that has permissions to
-- access the Amazon S3 bucket that contains your input files. If the role
-- you specify doesn’t have the appropriate permissions to access the
-- specified Amazon S3 location, your request fails.
--
-- IAM role ARNs have the format
-- @arn:partition:iam::account:role\/role-name-with-path@. For example:
-- @arn:aws:iam::111122223333:role\/Admin@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns IAM ARNs>.
--
-- 'settings', 'startCallAnalyticsJob_settings' - Specify additional optional settings in your request, including content
-- redaction; allows you to apply custom language models, vocabulary
-- filters, and custom vocabularies to your Call Analytics job.
--
-- 'outputEncryptionKMSKeyId', 'startCallAnalyticsJob_outputEncryptionKMSKeyId' - The KMS key you want to use to encrypt your Call Analytics output.
--
-- If using a key located in the __current__ Amazon Web Services account,
-- you can specify your KMS key in one of four ways:
--
-- 1.  Use the KMS key ID itself. For example,
--     @1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 2.  Use an alias for the KMS key ID. For example, @alias\/ExampleAlias@.
--
-- 3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
--     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 4.  Use the ARN for the KMS key alias. For example,
--     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
--
-- If using a key located in a __different__ Amazon Web Services account
-- than the current Amazon Web Services account, you can specify your KMS
-- key in one of two ways:
--
-- 1.  Use the ARN for the KMS key ID. For example,
--     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 2.  Use the ARN for the KMS key alias. For example,
--     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
--
-- If you don\'t specify an encryption key, your output is encrypted with
-- the default Amazon S3 key (SSE-S3).
--
-- If you specify a KMS key to encrypt your output, you must also specify
-- an output location using the @OutputLocation@ parameter.
--
-- Note that the user making the request must have permission to use the
-- specified KMS key.
--
-- 'channelDefinitions', 'startCallAnalyticsJob_channelDefinitions' - Allows you to specify which speaker is on which channel. For example, if
-- your agent is the first participant to speak, you would set @ChannelId@
-- to @0@ (to indicate the first channel) and @ParticipantRole@ to @AGENT@
-- (to indicate that it\'s the agent speaking).
--
-- 'callAnalyticsJobName', 'startCallAnalyticsJob_callAnalyticsJobName' - A unique name, chosen by you, for your Call Analytics job.
--
-- This name is case sensitive, cannot contain spaces, and must be unique
-- within an Amazon Web Services account. If you try to create a new job
-- with the same name as an existing job, you get a @ConflictException@
-- error.
--
-- 'media', 'startCallAnalyticsJob_media' - Undocumented member.
newStartCallAnalyticsJob ::
  -- | 'callAnalyticsJobName'
  Prelude.Text ->
  -- | 'media'
  Media ->
  StartCallAnalyticsJob
newStartCallAnalyticsJob
  pCallAnalyticsJobName_
  pMedia_ =
    StartCallAnalyticsJob'
      { outputLocation =
          Prelude.Nothing,
        dataAccessRoleArn = Prelude.Nothing,
        settings = Prelude.Nothing,
        outputEncryptionKMSKeyId = Prelude.Nothing,
        channelDefinitions = Prelude.Nothing,
        callAnalyticsJobName = pCallAnalyticsJobName_,
        media = pMedia_
      }

-- | The Amazon S3 location where you want your Call Analytics transcription
-- output stored. You can use any of the following formats to specify the
-- output location:
--
-- 1.  s3:\/\/DOC-EXAMPLE-BUCKET
--
-- 2.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/
--
-- 3.  s3:\/\/DOC-EXAMPLE-BUCKET\/my-output-folder\/my-call-analytics-job.json
--
-- Unless you specify a file name (option 3), the name of your output file
-- has a default value that matches the name you specified for your
-- transcription job using the @CallAnalyticsJobName@ parameter.
--
-- You can specify a KMS key to encrypt your output using the
-- @OutputEncryptionKMSKeyId@ parameter. If you don\'t specify a KMS key,
-- Amazon Transcribe uses the default Amazon S3 key for server-side
-- encryption.
--
-- If you don\'t specify @OutputLocation@, your transcript is placed in a
-- service-managed Amazon S3 bucket and you are provided with a URI to
-- access your transcript.
startCallAnalyticsJob_outputLocation :: Lens.Lens' StartCallAnalyticsJob (Prelude.Maybe Prelude.Text)
startCallAnalyticsJob_outputLocation = Lens.lens (\StartCallAnalyticsJob' {outputLocation} -> outputLocation) (\s@StartCallAnalyticsJob' {} a -> s {outputLocation = a} :: StartCallAnalyticsJob)

-- | The Amazon Resource Name (ARN) of an IAM role that has permissions to
-- access the Amazon S3 bucket that contains your input files. If the role
-- you specify doesn’t have the appropriate permissions to access the
-- specified Amazon S3 location, your request fails.
--
-- IAM role ARNs have the format
-- @arn:partition:iam::account:role\/role-name-with-path@. For example:
-- @arn:aws:iam::111122223333:role\/Admin@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns IAM ARNs>.
startCallAnalyticsJob_dataAccessRoleArn :: Lens.Lens' StartCallAnalyticsJob (Prelude.Maybe Prelude.Text)
startCallAnalyticsJob_dataAccessRoleArn = Lens.lens (\StartCallAnalyticsJob' {dataAccessRoleArn} -> dataAccessRoleArn) (\s@StartCallAnalyticsJob' {} a -> s {dataAccessRoleArn = a} :: StartCallAnalyticsJob)

-- | Specify additional optional settings in your request, including content
-- redaction; allows you to apply custom language models, vocabulary
-- filters, and custom vocabularies to your Call Analytics job.
startCallAnalyticsJob_settings :: Lens.Lens' StartCallAnalyticsJob (Prelude.Maybe CallAnalyticsJobSettings)
startCallAnalyticsJob_settings = Lens.lens (\StartCallAnalyticsJob' {settings} -> settings) (\s@StartCallAnalyticsJob' {} a -> s {settings = a} :: StartCallAnalyticsJob)

-- | The KMS key you want to use to encrypt your Call Analytics output.
--
-- If using a key located in the __current__ Amazon Web Services account,
-- you can specify your KMS key in one of four ways:
--
-- 1.  Use the KMS key ID itself. For example,
--     @1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 2.  Use an alias for the KMS key ID. For example, @alias\/ExampleAlias@.
--
-- 3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
--     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 4.  Use the ARN for the KMS key alias. For example,
--     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
--
-- If using a key located in a __different__ Amazon Web Services account
-- than the current Amazon Web Services account, you can specify your KMS
-- key in one of two ways:
--
-- 1.  Use the ARN for the KMS key ID. For example,
--     @arn:aws:kms:region:account-ID:key\/1234abcd-12ab-34cd-56ef-1234567890ab@.
--
-- 2.  Use the ARN for the KMS key alias. For example,
--     @arn:aws:kms:region:account-ID:alias\/ExampleAlias@.
--
-- If you don\'t specify an encryption key, your output is encrypted with
-- the default Amazon S3 key (SSE-S3).
--
-- If you specify a KMS key to encrypt your output, you must also specify
-- an output location using the @OutputLocation@ parameter.
--
-- Note that the user making the request must have permission to use the
-- specified KMS key.
startCallAnalyticsJob_outputEncryptionKMSKeyId :: Lens.Lens' StartCallAnalyticsJob (Prelude.Maybe Prelude.Text)
startCallAnalyticsJob_outputEncryptionKMSKeyId = Lens.lens (\StartCallAnalyticsJob' {outputEncryptionKMSKeyId} -> outputEncryptionKMSKeyId) (\s@StartCallAnalyticsJob' {} a -> s {outputEncryptionKMSKeyId = a} :: StartCallAnalyticsJob)

-- | Allows you to specify which speaker is on which channel. For example, if
-- your agent is the first participant to speak, you would set @ChannelId@
-- to @0@ (to indicate the first channel) and @ParticipantRole@ to @AGENT@
-- (to indicate that it\'s the agent speaking).
startCallAnalyticsJob_channelDefinitions :: Lens.Lens' StartCallAnalyticsJob (Prelude.Maybe (Prelude.NonEmpty ChannelDefinition))
startCallAnalyticsJob_channelDefinitions = Lens.lens (\StartCallAnalyticsJob' {channelDefinitions} -> channelDefinitions) (\s@StartCallAnalyticsJob' {} a -> s {channelDefinitions = a} :: StartCallAnalyticsJob) Prelude.. Lens.mapping Lens.coerced

-- | A unique name, chosen by you, for your Call Analytics job.
--
-- This name is case sensitive, cannot contain spaces, and must be unique
-- within an Amazon Web Services account. If you try to create a new job
-- with the same name as an existing job, you get a @ConflictException@
-- error.
startCallAnalyticsJob_callAnalyticsJobName :: Lens.Lens' StartCallAnalyticsJob Prelude.Text
startCallAnalyticsJob_callAnalyticsJobName = Lens.lens (\StartCallAnalyticsJob' {callAnalyticsJobName} -> callAnalyticsJobName) (\s@StartCallAnalyticsJob' {} a -> s {callAnalyticsJobName = a} :: StartCallAnalyticsJob)

-- | Undocumented member.
startCallAnalyticsJob_media :: Lens.Lens' StartCallAnalyticsJob Media
startCallAnalyticsJob_media = Lens.lens (\StartCallAnalyticsJob' {media} -> media) (\s@StartCallAnalyticsJob' {} a -> s {media = a} :: StartCallAnalyticsJob)

instance Core.AWSRequest StartCallAnalyticsJob where
  type
    AWSResponse StartCallAnalyticsJob =
      StartCallAnalyticsJobResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StartCallAnalyticsJobResponse'
            Prelude.<$> (x Core..?> "CallAnalyticsJob")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartCallAnalyticsJob where
  hashWithSalt _salt StartCallAnalyticsJob' {..} =
    _salt `Prelude.hashWithSalt` outputLocation
      `Prelude.hashWithSalt` dataAccessRoleArn
      `Prelude.hashWithSalt` settings
      `Prelude.hashWithSalt` outputEncryptionKMSKeyId
      `Prelude.hashWithSalt` channelDefinitions
      `Prelude.hashWithSalt` callAnalyticsJobName
      `Prelude.hashWithSalt` media

instance Prelude.NFData StartCallAnalyticsJob where
  rnf StartCallAnalyticsJob' {..} =
    Prelude.rnf outputLocation
      `Prelude.seq` Prelude.rnf dataAccessRoleArn
      `Prelude.seq` Prelude.rnf settings
      `Prelude.seq` Prelude.rnf outputEncryptionKMSKeyId
      `Prelude.seq` Prelude.rnf channelDefinitions
      `Prelude.seq` Prelude.rnf callAnalyticsJobName
      `Prelude.seq` Prelude.rnf media

instance Core.ToHeaders StartCallAnalyticsJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.StartCallAnalyticsJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartCallAnalyticsJob where
  toJSON StartCallAnalyticsJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OutputLocation" Core..=)
              Prelude.<$> outputLocation,
            ("DataAccessRoleArn" Core..=)
              Prelude.<$> dataAccessRoleArn,
            ("Settings" Core..=) Prelude.<$> settings,
            ("OutputEncryptionKMSKeyId" Core..=)
              Prelude.<$> outputEncryptionKMSKeyId,
            ("ChannelDefinitions" Core..=)
              Prelude.<$> channelDefinitions,
            Prelude.Just
              ( "CallAnalyticsJobName"
                  Core..= callAnalyticsJobName
              ),
            Prelude.Just ("Media" Core..= media)
          ]
      )

instance Core.ToPath StartCallAnalyticsJob where
  toPath = Prelude.const "/"

instance Core.ToQuery StartCallAnalyticsJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartCallAnalyticsJobResponse' smart constructor.
data StartCallAnalyticsJobResponse = StartCallAnalyticsJobResponse'
  { -- | Provides detailed information about the current Call Analytics job,
    -- including job status and, if applicable, failure reason.
    callAnalyticsJob :: Prelude.Maybe CallAnalyticsJob,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCallAnalyticsJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callAnalyticsJob', 'startCallAnalyticsJobResponse_callAnalyticsJob' - Provides detailed information about the current Call Analytics job,
-- including job status and, if applicable, failure reason.
--
-- 'httpStatus', 'startCallAnalyticsJobResponse_httpStatus' - The response's http status code.
newStartCallAnalyticsJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartCallAnalyticsJobResponse
newStartCallAnalyticsJobResponse pHttpStatus_ =
  StartCallAnalyticsJobResponse'
    { callAnalyticsJob =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides detailed information about the current Call Analytics job,
-- including job status and, if applicable, failure reason.
startCallAnalyticsJobResponse_callAnalyticsJob :: Lens.Lens' StartCallAnalyticsJobResponse (Prelude.Maybe CallAnalyticsJob)
startCallAnalyticsJobResponse_callAnalyticsJob = Lens.lens (\StartCallAnalyticsJobResponse' {callAnalyticsJob} -> callAnalyticsJob) (\s@StartCallAnalyticsJobResponse' {} a -> s {callAnalyticsJob = a} :: StartCallAnalyticsJobResponse)

-- | The response's http status code.
startCallAnalyticsJobResponse_httpStatus :: Lens.Lens' StartCallAnalyticsJobResponse Prelude.Int
startCallAnalyticsJobResponse_httpStatus = Lens.lens (\StartCallAnalyticsJobResponse' {httpStatus} -> httpStatus) (\s@StartCallAnalyticsJobResponse' {} a -> s {httpStatus = a} :: StartCallAnalyticsJobResponse)

instance Prelude.NFData StartCallAnalyticsJobResponse where
  rnf StartCallAnalyticsJobResponse' {..} =
    Prelude.rnf callAnalyticsJob
      `Prelude.seq` Prelude.rnf httpStatus

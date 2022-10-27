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
-- Module      : Amazonka.Transcribe.CreateMedicalVocabulary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom medical vocabulary.
--
-- Prior to creating a new medical vocabulary, you must first upload a text
-- file that contains your new entries, phrases, and terms into an Amazon
-- S3 bucket. Note that this differs from , where you can include a list of
-- terms within your request using the @Phrases@ flag;
-- @CreateMedicalVocabulary@ does not support the @Phrases@ flag.
--
-- Each language has a character set that contains all allowed characters
-- for that specific language. If you use unsupported characters, your
-- vocabulary request fails. Refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html Character Sets for Custom Vocabularies>
-- to get the character set for your language.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html Creating a custom vocabulary>.
module Amazonka.Transcribe.CreateMedicalVocabulary
  ( -- * Creating a Request
    CreateMedicalVocabulary (..),
    newCreateMedicalVocabulary,

    -- * Request Lenses
    createMedicalVocabulary_tags,
    createMedicalVocabulary_vocabularyName,
    createMedicalVocabulary_languageCode,
    createMedicalVocabulary_vocabularyFileUri,

    -- * Destructuring the Response
    CreateMedicalVocabularyResponse (..),
    newCreateMedicalVocabularyResponse,

    -- * Response Lenses
    createMedicalVocabularyResponse_vocabularyName,
    createMedicalVocabularyResponse_vocabularyState,
    createMedicalVocabularyResponse_lastModifiedTime,
    createMedicalVocabularyResponse_languageCode,
    createMedicalVocabularyResponse_failureReason,
    createMedicalVocabularyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newCreateMedicalVocabulary' smart constructor.
data CreateMedicalVocabulary = CreateMedicalVocabulary'
  { -- | Adds one or more custom tags, each in the form of a key:value pair, to a
    -- new medical vocabulary at the time you create this new vocabulary.
    --
    -- To learn more about using tags with Amazon Transcribe, refer to
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html Tagging resources>.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | A unique name, chosen by you, for your new custom medical vocabulary.
    --
    -- This name is case sensitive, cannot contain spaces, and must be unique
    -- within an Amazon Web Services account. If you try to create a new
    -- medical vocabulary with the same name as an existing medical vocabulary,
    -- you get a @ConflictException@ error.
    vocabularyName :: Prelude.Text,
    -- | The language code that represents the language of the entries in your
    -- custom vocabulary. US English (@en-US@) is the only language supported
    -- with Amazon Transcribe Medical.
    languageCode :: LanguageCode,
    -- | The Amazon S3 location (URI) of the text file that contains your custom
    -- medical vocabulary. The URI must be in the same Amazon Web Services
    -- Region as the resource you\'re calling.
    --
    -- Here\'s an example URI path:
    -- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
    vocabularyFileUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMedicalVocabulary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createMedicalVocabulary_tags' - Adds one or more custom tags, each in the form of a key:value pair, to a
-- new medical vocabulary at the time you create this new vocabulary.
--
-- To learn more about using tags with Amazon Transcribe, refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html Tagging resources>.
--
-- 'vocabularyName', 'createMedicalVocabulary_vocabularyName' - A unique name, chosen by you, for your new custom medical vocabulary.
--
-- This name is case sensitive, cannot contain spaces, and must be unique
-- within an Amazon Web Services account. If you try to create a new
-- medical vocabulary with the same name as an existing medical vocabulary,
-- you get a @ConflictException@ error.
--
-- 'languageCode', 'createMedicalVocabulary_languageCode' - The language code that represents the language of the entries in your
-- custom vocabulary. US English (@en-US@) is the only language supported
-- with Amazon Transcribe Medical.
--
-- 'vocabularyFileUri', 'createMedicalVocabulary_vocabularyFileUri' - The Amazon S3 location (URI) of the text file that contains your custom
-- medical vocabulary. The URI must be in the same Amazon Web Services
-- Region as the resource you\'re calling.
--
-- Here\'s an example URI path:
-- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
newCreateMedicalVocabulary ::
  -- | 'vocabularyName'
  Prelude.Text ->
  -- | 'languageCode'
  LanguageCode ->
  -- | 'vocabularyFileUri'
  Prelude.Text ->
  CreateMedicalVocabulary
newCreateMedicalVocabulary
  pVocabularyName_
  pLanguageCode_
  pVocabularyFileUri_ =
    CreateMedicalVocabulary'
      { tags = Prelude.Nothing,
        vocabularyName = pVocabularyName_,
        languageCode = pLanguageCode_,
        vocabularyFileUri = pVocabularyFileUri_
      }

-- | Adds one or more custom tags, each in the form of a key:value pair, to a
-- new medical vocabulary at the time you create this new vocabulary.
--
-- To learn more about using tags with Amazon Transcribe, refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html Tagging resources>.
createMedicalVocabulary_tags :: Lens.Lens' CreateMedicalVocabulary (Prelude.Maybe (Prelude.NonEmpty Tag))
createMedicalVocabulary_tags = Lens.lens (\CreateMedicalVocabulary' {tags} -> tags) (\s@CreateMedicalVocabulary' {} a -> s {tags = a} :: CreateMedicalVocabulary) Prelude.. Lens.mapping Lens.coerced

-- | A unique name, chosen by you, for your new custom medical vocabulary.
--
-- This name is case sensitive, cannot contain spaces, and must be unique
-- within an Amazon Web Services account. If you try to create a new
-- medical vocabulary with the same name as an existing medical vocabulary,
-- you get a @ConflictException@ error.
createMedicalVocabulary_vocabularyName :: Lens.Lens' CreateMedicalVocabulary Prelude.Text
createMedicalVocabulary_vocabularyName = Lens.lens (\CreateMedicalVocabulary' {vocabularyName} -> vocabularyName) (\s@CreateMedicalVocabulary' {} a -> s {vocabularyName = a} :: CreateMedicalVocabulary)

-- | The language code that represents the language of the entries in your
-- custom vocabulary. US English (@en-US@) is the only language supported
-- with Amazon Transcribe Medical.
createMedicalVocabulary_languageCode :: Lens.Lens' CreateMedicalVocabulary LanguageCode
createMedicalVocabulary_languageCode = Lens.lens (\CreateMedicalVocabulary' {languageCode} -> languageCode) (\s@CreateMedicalVocabulary' {} a -> s {languageCode = a} :: CreateMedicalVocabulary)

-- | The Amazon S3 location (URI) of the text file that contains your custom
-- medical vocabulary. The URI must be in the same Amazon Web Services
-- Region as the resource you\'re calling.
--
-- Here\'s an example URI path:
-- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
createMedicalVocabulary_vocabularyFileUri :: Lens.Lens' CreateMedicalVocabulary Prelude.Text
createMedicalVocabulary_vocabularyFileUri = Lens.lens (\CreateMedicalVocabulary' {vocabularyFileUri} -> vocabularyFileUri) (\s@CreateMedicalVocabulary' {} a -> s {vocabularyFileUri = a} :: CreateMedicalVocabulary)

instance Core.AWSRequest CreateMedicalVocabulary where
  type
    AWSResponse CreateMedicalVocabulary =
      CreateMedicalVocabularyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMedicalVocabularyResponse'
            Prelude.<$> (x Core..?> "VocabularyName")
            Prelude.<*> (x Core..?> "VocabularyState")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "LanguageCode")
            Prelude.<*> (x Core..?> "FailureReason")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMedicalVocabulary where
  hashWithSalt _salt CreateMedicalVocabulary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` vocabularyName
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` vocabularyFileUri

instance Prelude.NFData CreateMedicalVocabulary where
  rnf CreateMedicalVocabulary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf vocabularyFileUri

instance Core.ToHeaders CreateMedicalVocabulary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.CreateMedicalVocabulary" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateMedicalVocabulary where
  toJSON CreateMedicalVocabulary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("VocabularyName" Core..= vocabularyName),
            Prelude.Just ("LanguageCode" Core..= languageCode),
            Prelude.Just
              ("VocabularyFileUri" Core..= vocabularyFileUri)
          ]
      )

instance Core.ToPath CreateMedicalVocabulary where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateMedicalVocabulary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateMedicalVocabularyResponse' smart constructor.
data CreateMedicalVocabularyResponse = CreateMedicalVocabularyResponse'
  { -- | The name you chose for your custom medical vocabulary.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | The processing state of your custom medical vocabulary. If the state is
    -- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
    -- request.
    vocabularyState :: Prelude.Maybe VocabularyState,
    -- | The date and time you created your custom medical vocabulary.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
    -- May 4, 2022.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The language code you selected for your medical vocabulary. US English
    -- (@en-US@) is the only language supported with Amazon Transcribe Medical.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
    -- about why the medical transcription job request failed. See also:
    -- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMedicalVocabularyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyName', 'createMedicalVocabularyResponse_vocabularyName' - The name you chose for your custom medical vocabulary.
--
-- 'vocabularyState', 'createMedicalVocabularyResponse_vocabularyState' - The processing state of your custom medical vocabulary. If the state is
-- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
-- request.
--
-- 'lastModifiedTime', 'createMedicalVocabularyResponse_lastModifiedTime' - The date and time you created your custom medical vocabulary.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
--
-- 'languageCode', 'createMedicalVocabularyResponse_languageCode' - The language code you selected for your medical vocabulary. US English
-- (@en-US@) is the only language supported with Amazon Transcribe Medical.
--
-- 'failureReason', 'createMedicalVocabularyResponse_failureReason' - If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
-- about why the medical transcription job request failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
--
-- 'httpStatus', 'createMedicalVocabularyResponse_httpStatus' - The response's http status code.
newCreateMedicalVocabularyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMedicalVocabularyResponse
newCreateMedicalVocabularyResponse pHttpStatus_ =
  CreateMedicalVocabularyResponse'
    { vocabularyName =
        Prelude.Nothing,
      vocabularyState = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name you chose for your custom medical vocabulary.
createMedicalVocabularyResponse_vocabularyName :: Lens.Lens' CreateMedicalVocabularyResponse (Prelude.Maybe Prelude.Text)
createMedicalVocabularyResponse_vocabularyName = Lens.lens (\CreateMedicalVocabularyResponse' {vocabularyName} -> vocabularyName) (\s@CreateMedicalVocabularyResponse' {} a -> s {vocabularyName = a} :: CreateMedicalVocabularyResponse)

-- | The processing state of your custom medical vocabulary. If the state is
-- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
-- request.
createMedicalVocabularyResponse_vocabularyState :: Lens.Lens' CreateMedicalVocabularyResponse (Prelude.Maybe VocabularyState)
createMedicalVocabularyResponse_vocabularyState = Lens.lens (\CreateMedicalVocabularyResponse' {vocabularyState} -> vocabularyState) (\s@CreateMedicalVocabularyResponse' {} a -> s {vocabularyState = a} :: CreateMedicalVocabularyResponse)

-- | The date and time you created your custom medical vocabulary.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
createMedicalVocabularyResponse_lastModifiedTime :: Lens.Lens' CreateMedicalVocabularyResponse (Prelude.Maybe Prelude.UTCTime)
createMedicalVocabularyResponse_lastModifiedTime = Lens.lens (\CreateMedicalVocabularyResponse' {lastModifiedTime} -> lastModifiedTime) (\s@CreateMedicalVocabularyResponse' {} a -> s {lastModifiedTime = a} :: CreateMedicalVocabularyResponse) Prelude.. Lens.mapping Core._Time

-- | The language code you selected for your medical vocabulary. US English
-- (@en-US@) is the only language supported with Amazon Transcribe Medical.
createMedicalVocabularyResponse_languageCode :: Lens.Lens' CreateMedicalVocabularyResponse (Prelude.Maybe LanguageCode)
createMedicalVocabularyResponse_languageCode = Lens.lens (\CreateMedicalVocabularyResponse' {languageCode} -> languageCode) (\s@CreateMedicalVocabularyResponse' {} a -> s {languageCode = a} :: CreateMedicalVocabularyResponse)

-- | If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
-- about why the medical transcription job request failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
createMedicalVocabularyResponse_failureReason :: Lens.Lens' CreateMedicalVocabularyResponse (Prelude.Maybe Prelude.Text)
createMedicalVocabularyResponse_failureReason = Lens.lens (\CreateMedicalVocabularyResponse' {failureReason} -> failureReason) (\s@CreateMedicalVocabularyResponse' {} a -> s {failureReason = a} :: CreateMedicalVocabularyResponse)

-- | The response's http status code.
createMedicalVocabularyResponse_httpStatus :: Lens.Lens' CreateMedicalVocabularyResponse Prelude.Int
createMedicalVocabularyResponse_httpStatus = Lens.lens (\CreateMedicalVocabularyResponse' {httpStatus} -> httpStatus) (\s@CreateMedicalVocabularyResponse' {} a -> s {httpStatus = a} :: CreateMedicalVocabularyResponse)

instance
  Prelude.NFData
    CreateMedicalVocabularyResponse
  where
  rnf CreateMedicalVocabularyResponse' {..} =
    Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf vocabularyState
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf httpStatus

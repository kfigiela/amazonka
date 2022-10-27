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
-- Module      : Amazonka.Transcribe.UpdateMedicalVocabulary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom medical vocabulary with new values. This
-- operation overwrites all existing information with your new values; you
-- cannot append new terms onto an existing vocabulary.
module Amazonka.Transcribe.UpdateMedicalVocabulary
  ( -- * Creating a Request
    UpdateMedicalVocabulary (..),
    newUpdateMedicalVocabulary,

    -- * Request Lenses
    updateMedicalVocabulary_vocabularyName,
    updateMedicalVocabulary_languageCode,
    updateMedicalVocabulary_vocabularyFileUri,

    -- * Destructuring the Response
    UpdateMedicalVocabularyResponse (..),
    newUpdateMedicalVocabularyResponse,

    -- * Response Lenses
    updateMedicalVocabularyResponse_vocabularyName,
    updateMedicalVocabularyResponse_vocabularyState,
    updateMedicalVocabularyResponse_lastModifiedTime,
    updateMedicalVocabularyResponse_languageCode,
    updateMedicalVocabularyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newUpdateMedicalVocabulary' smart constructor.
data UpdateMedicalVocabulary = UpdateMedicalVocabulary'
  { -- | The name of the custom medical vocabulary you want to update. Vocabulary
    -- names are case sensitive.
    vocabularyName :: Prelude.Text,
    -- | The language code that represents the language of the entries in the
    -- custom vocabulary you want to update. US English (@en-US@) is the only
    -- language supported with Amazon Transcribe Medical.
    languageCode :: LanguageCode,
    -- | The Amazon S3 location of the text file that contains your custom
    -- medical vocabulary. The URI must be located in the same Amazon Web
    -- Services Region as the resource you\'re calling.
    --
    -- Here\'s an example URI path:
    -- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
    vocabularyFileUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateMedicalVocabulary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyName', 'updateMedicalVocabulary_vocabularyName' - The name of the custom medical vocabulary you want to update. Vocabulary
-- names are case sensitive.
--
-- 'languageCode', 'updateMedicalVocabulary_languageCode' - The language code that represents the language of the entries in the
-- custom vocabulary you want to update. US English (@en-US@) is the only
-- language supported with Amazon Transcribe Medical.
--
-- 'vocabularyFileUri', 'updateMedicalVocabulary_vocabularyFileUri' - The Amazon S3 location of the text file that contains your custom
-- medical vocabulary. The URI must be located in the same Amazon Web
-- Services Region as the resource you\'re calling.
--
-- Here\'s an example URI path:
-- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
newUpdateMedicalVocabulary ::
  -- | 'vocabularyName'
  Prelude.Text ->
  -- | 'languageCode'
  LanguageCode ->
  -- | 'vocabularyFileUri'
  Prelude.Text ->
  UpdateMedicalVocabulary
newUpdateMedicalVocabulary
  pVocabularyName_
  pLanguageCode_
  pVocabularyFileUri_ =
    UpdateMedicalVocabulary'
      { vocabularyName =
          pVocabularyName_,
        languageCode = pLanguageCode_,
        vocabularyFileUri = pVocabularyFileUri_
      }

-- | The name of the custom medical vocabulary you want to update. Vocabulary
-- names are case sensitive.
updateMedicalVocabulary_vocabularyName :: Lens.Lens' UpdateMedicalVocabulary Prelude.Text
updateMedicalVocabulary_vocabularyName = Lens.lens (\UpdateMedicalVocabulary' {vocabularyName} -> vocabularyName) (\s@UpdateMedicalVocabulary' {} a -> s {vocabularyName = a} :: UpdateMedicalVocabulary)

-- | The language code that represents the language of the entries in the
-- custom vocabulary you want to update. US English (@en-US@) is the only
-- language supported with Amazon Transcribe Medical.
updateMedicalVocabulary_languageCode :: Lens.Lens' UpdateMedicalVocabulary LanguageCode
updateMedicalVocabulary_languageCode = Lens.lens (\UpdateMedicalVocabulary' {languageCode} -> languageCode) (\s@UpdateMedicalVocabulary' {} a -> s {languageCode = a} :: UpdateMedicalVocabulary)

-- | The Amazon S3 location of the text file that contains your custom
-- medical vocabulary. The URI must be located in the same Amazon Web
-- Services Region as the resource you\'re calling.
--
-- Here\'s an example URI path:
-- @s3:\/\/DOC-EXAMPLE-BUCKET\/my-vocab-file.txt@
updateMedicalVocabulary_vocabularyFileUri :: Lens.Lens' UpdateMedicalVocabulary Prelude.Text
updateMedicalVocabulary_vocabularyFileUri = Lens.lens (\UpdateMedicalVocabulary' {vocabularyFileUri} -> vocabularyFileUri) (\s@UpdateMedicalVocabulary' {} a -> s {vocabularyFileUri = a} :: UpdateMedicalVocabulary)

instance Core.AWSRequest UpdateMedicalVocabulary where
  type
    AWSResponse UpdateMedicalVocabulary =
      UpdateMedicalVocabularyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateMedicalVocabularyResponse'
            Prelude.<$> (x Core..?> "VocabularyName")
            Prelude.<*> (x Core..?> "VocabularyState")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "LanguageCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateMedicalVocabulary where
  hashWithSalt _salt UpdateMedicalVocabulary' {..} =
    _salt `Prelude.hashWithSalt` vocabularyName
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` vocabularyFileUri

instance Prelude.NFData UpdateMedicalVocabulary where
  rnf UpdateMedicalVocabulary' {..} =
    Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf vocabularyFileUri

instance Core.ToHeaders UpdateMedicalVocabulary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.UpdateMedicalVocabulary" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateMedicalVocabulary where
  toJSON UpdateMedicalVocabulary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("VocabularyName" Core..= vocabularyName),
            Prelude.Just ("LanguageCode" Core..= languageCode),
            Prelude.Just
              ("VocabularyFileUri" Core..= vocabularyFileUri)
          ]
      )

instance Core.ToPath UpdateMedicalVocabulary where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateMedicalVocabulary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateMedicalVocabularyResponse' smart constructor.
data UpdateMedicalVocabularyResponse = UpdateMedicalVocabularyResponse'
  { -- | The name of the updated custom medical vocabulary.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | The processing state of your custom medical vocabulary. If the state is
    -- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
    -- request.
    vocabularyState :: Prelude.Maybe VocabularyState,
    -- | The date and time the specified custom medical vocabulary was last
    -- updated.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
    -- May 4, 2022.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The language code you selected for your medical vocabulary. US English
    -- (@en-US@) is the only language supported with Amazon Transcribe Medical.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateMedicalVocabularyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyName', 'updateMedicalVocabularyResponse_vocabularyName' - The name of the updated custom medical vocabulary.
--
-- 'vocabularyState', 'updateMedicalVocabularyResponse_vocabularyState' - The processing state of your custom medical vocabulary. If the state is
-- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
-- request.
--
-- 'lastModifiedTime', 'updateMedicalVocabularyResponse_lastModifiedTime' - The date and time the specified custom medical vocabulary was last
-- updated.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
--
-- 'languageCode', 'updateMedicalVocabularyResponse_languageCode' - The language code you selected for your medical vocabulary. US English
-- (@en-US@) is the only language supported with Amazon Transcribe Medical.
--
-- 'httpStatus', 'updateMedicalVocabularyResponse_httpStatus' - The response's http status code.
newUpdateMedicalVocabularyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateMedicalVocabularyResponse
newUpdateMedicalVocabularyResponse pHttpStatus_ =
  UpdateMedicalVocabularyResponse'
    { vocabularyName =
        Prelude.Nothing,
      vocabularyState = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the updated custom medical vocabulary.
updateMedicalVocabularyResponse_vocabularyName :: Lens.Lens' UpdateMedicalVocabularyResponse (Prelude.Maybe Prelude.Text)
updateMedicalVocabularyResponse_vocabularyName = Lens.lens (\UpdateMedicalVocabularyResponse' {vocabularyName} -> vocabularyName) (\s@UpdateMedicalVocabularyResponse' {} a -> s {vocabularyName = a} :: UpdateMedicalVocabularyResponse)

-- | The processing state of your custom medical vocabulary. If the state is
-- @READY@, you can use the vocabulary in a @StartMedicalTranscriptionJob@
-- request.
updateMedicalVocabularyResponse_vocabularyState :: Lens.Lens' UpdateMedicalVocabularyResponse (Prelude.Maybe VocabularyState)
updateMedicalVocabularyResponse_vocabularyState = Lens.lens (\UpdateMedicalVocabularyResponse' {vocabularyState} -> vocabularyState) (\s@UpdateMedicalVocabularyResponse' {} a -> s {vocabularyState = a} :: UpdateMedicalVocabularyResponse)

-- | The date and time the specified custom medical vocabulary was last
-- updated.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
updateMedicalVocabularyResponse_lastModifiedTime :: Lens.Lens' UpdateMedicalVocabularyResponse (Prelude.Maybe Prelude.UTCTime)
updateMedicalVocabularyResponse_lastModifiedTime = Lens.lens (\UpdateMedicalVocabularyResponse' {lastModifiedTime} -> lastModifiedTime) (\s@UpdateMedicalVocabularyResponse' {} a -> s {lastModifiedTime = a} :: UpdateMedicalVocabularyResponse) Prelude.. Lens.mapping Core._Time

-- | The language code you selected for your medical vocabulary. US English
-- (@en-US@) is the only language supported with Amazon Transcribe Medical.
updateMedicalVocabularyResponse_languageCode :: Lens.Lens' UpdateMedicalVocabularyResponse (Prelude.Maybe LanguageCode)
updateMedicalVocabularyResponse_languageCode = Lens.lens (\UpdateMedicalVocabularyResponse' {languageCode} -> languageCode) (\s@UpdateMedicalVocabularyResponse' {} a -> s {languageCode = a} :: UpdateMedicalVocabularyResponse)

-- | The response's http status code.
updateMedicalVocabularyResponse_httpStatus :: Lens.Lens' UpdateMedicalVocabularyResponse Prelude.Int
updateMedicalVocabularyResponse_httpStatus = Lens.lens (\UpdateMedicalVocabularyResponse' {httpStatus} -> httpStatus) (\s@UpdateMedicalVocabularyResponse' {} a -> s {httpStatus = a} :: UpdateMedicalVocabularyResponse)

instance
  Prelude.NFData
    UpdateMedicalVocabularyResponse
  where
  rnf UpdateMedicalVocabularyResponse' {..} =
    Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf vocabularyState
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf httpStatus

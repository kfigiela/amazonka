{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ChimeSdkMeetings.Types.EngineTranscribeSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkMeetings.Types.EngineTranscribeSettings where

import Amazonka.ChimeSdkMeetings.Types.TranscribeContentIdentificationType
import Amazonka.ChimeSdkMeetings.Types.TranscribeContentRedactionType
import Amazonka.ChimeSdkMeetings.Types.TranscribeLanguageCode
import Amazonka.ChimeSdkMeetings.Types.TranscribePartialResultsStability
import Amazonka.ChimeSdkMeetings.Types.TranscribeRegion
import Amazonka.ChimeSdkMeetings.Types.TranscribeVocabularyFilterMethod
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Settings specific to the Amazon Transcribe engine.
--
-- /See:/ 'newEngineTranscribeSettings' smart constructor.
data EngineTranscribeSettings = EngineTranscribeSettings'
  { -- | The filtering method passed to Amazon Transcribe.
    vocabularyFilterMethod :: Prelude.Maybe TranscribeVocabularyFilterMethod,
    -- | The name of the vocabulary passed to Amazon Transcribe.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | Set this field to @PII@ to identify personally identifiable information
    -- in the transcription output.
    contentIdentificationType :: Prelude.Maybe TranscribeContentIdentificationType,
    -- | Generates partial transcription results that are less likely to change
    -- as meeting attendees speak. It does so by only allowing the last few
    -- words from the partial results to change.
    enablePartialResultsStabilization :: Prelude.Maybe Prelude.Bool,
    -- | The name of the language model used during transcription.
    languageModelName :: Prelude.Maybe Prelude.Text,
    -- | Lists the PII entity types you want to identify or redact. To specify
    -- entity types, you must enable @ContentIdentificationType@ or
    -- @ContentRedactionType@.
    --
    -- @PIIEntityTypes@ must be comma-separated. The available values are:
    -- @BANK_ACCOUNT_NUMBER@, @BANK_ROUTING, CREDIT_DEBIT_NUMBER@,
    -- @CREDIT_DEBIT_CVV@, @CREDIT_DEBIT_EXPIRY@, @PIN@, @EMAIL@, @ADDRESS@,
    -- @NAME@, @PHONE@, @SSN@, and @ALL@.
    --
    -- @PiiEntityTypes@ is an optional parameter with a default value of @ALL@.
    piiEntityTypes :: Prelude.Maybe Prelude.Text,
    -- | Automatically identifies the language spoken in media files.
    identifyLanguage :: Prelude.Maybe Prelude.Bool,
    -- | Language code for the preferred language.
    preferredLanguage :: Prelude.Maybe TranscribeLanguageCode,
    -- | The AWS Region passed to Amazon Transcribe. If you don\'t specify a
    -- Region, Amazon Chime uses the meeting\'s Region.
    region :: Prelude.Maybe TranscribeRegion,
    -- | The language code specified for the Amazon Transcribe engine.
    languageCode :: Prelude.Maybe TranscribeLanguageCode,
    -- | The name of the vocabulary filter passed to Amazon Transcribe.
    vocabularyFilterName :: Prelude.Maybe Prelude.Text,
    -- | Set this field to @PII@ to redact personally identifiable information in
    -- the transcription output. Content redaction is performed only upon
    -- complete transcription of the audio segments.
    --
    -- You can’t set @ContentRedactionType@ and @ContentIdentificationType@ in
    -- the same request. If you set both, your request returns a
    -- @BadRequestException@.
    contentRedactionType :: Prelude.Maybe TranscribeContentRedactionType,
    -- | The stabity level of a partial results transcription. Determines how
    -- stable you want the transcription results to be. A higher level means
    -- the transcription results are less likely to change.
    partialResultsStability :: Prelude.Maybe TranscribePartialResultsStability,
    -- | Language codes for the languages that you want to identify. You must
    -- provide at least 2 codes.
    languageOptions :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EngineTranscribeSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyFilterMethod', 'engineTranscribeSettings_vocabularyFilterMethod' - The filtering method passed to Amazon Transcribe.
--
-- 'vocabularyName', 'engineTranscribeSettings_vocabularyName' - The name of the vocabulary passed to Amazon Transcribe.
--
-- 'contentIdentificationType', 'engineTranscribeSettings_contentIdentificationType' - Set this field to @PII@ to identify personally identifiable information
-- in the transcription output.
--
-- 'enablePartialResultsStabilization', 'engineTranscribeSettings_enablePartialResultsStabilization' - Generates partial transcription results that are less likely to change
-- as meeting attendees speak. It does so by only allowing the last few
-- words from the partial results to change.
--
-- 'languageModelName', 'engineTranscribeSettings_languageModelName' - The name of the language model used during transcription.
--
-- 'piiEntityTypes', 'engineTranscribeSettings_piiEntityTypes' - Lists the PII entity types you want to identify or redact. To specify
-- entity types, you must enable @ContentIdentificationType@ or
-- @ContentRedactionType@.
--
-- @PIIEntityTypes@ must be comma-separated. The available values are:
-- @BANK_ACCOUNT_NUMBER@, @BANK_ROUTING, CREDIT_DEBIT_NUMBER@,
-- @CREDIT_DEBIT_CVV@, @CREDIT_DEBIT_EXPIRY@, @PIN@, @EMAIL@, @ADDRESS@,
-- @NAME@, @PHONE@, @SSN@, and @ALL@.
--
-- @PiiEntityTypes@ is an optional parameter with a default value of @ALL@.
--
-- 'identifyLanguage', 'engineTranscribeSettings_identifyLanguage' - Automatically identifies the language spoken in media files.
--
-- 'preferredLanguage', 'engineTranscribeSettings_preferredLanguage' - Language code for the preferred language.
--
-- 'region', 'engineTranscribeSettings_region' - The AWS Region passed to Amazon Transcribe. If you don\'t specify a
-- Region, Amazon Chime uses the meeting\'s Region.
--
-- 'languageCode', 'engineTranscribeSettings_languageCode' - The language code specified for the Amazon Transcribe engine.
--
-- 'vocabularyFilterName', 'engineTranscribeSettings_vocabularyFilterName' - The name of the vocabulary filter passed to Amazon Transcribe.
--
-- 'contentRedactionType', 'engineTranscribeSettings_contentRedactionType' - Set this field to @PII@ to redact personally identifiable information in
-- the transcription output. Content redaction is performed only upon
-- complete transcription of the audio segments.
--
-- You can’t set @ContentRedactionType@ and @ContentIdentificationType@ in
-- the same request. If you set both, your request returns a
-- @BadRequestException@.
--
-- 'partialResultsStability', 'engineTranscribeSettings_partialResultsStability' - The stabity level of a partial results transcription. Determines how
-- stable you want the transcription results to be. A higher level means
-- the transcription results are less likely to change.
--
-- 'languageOptions', 'engineTranscribeSettings_languageOptions' - Language codes for the languages that you want to identify. You must
-- provide at least 2 codes.
newEngineTranscribeSettings ::
  EngineTranscribeSettings
newEngineTranscribeSettings =
  EngineTranscribeSettings'
    { vocabularyFilterMethod =
        Prelude.Nothing,
      vocabularyName = Prelude.Nothing,
      contentIdentificationType = Prelude.Nothing,
      enablePartialResultsStabilization =
        Prelude.Nothing,
      languageModelName = Prelude.Nothing,
      piiEntityTypes = Prelude.Nothing,
      identifyLanguage = Prelude.Nothing,
      preferredLanguage = Prelude.Nothing,
      region = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      vocabularyFilterName = Prelude.Nothing,
      contentRedactionType = Prelude.Nothing,
      partialResultsStability = Prelude.Nothing,
      languageOptions = Prelude.Nothing
    }

-- | The filtering method passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyFilterMethod :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeVocabularyFilterMethod)
engineTranscribeSettings_vocabularyFilterMethod = Lens.lens (\EngineTranscribeSettings' {vocabularyFilterMethod} -> vocabularyFilterMethod) (\s@EngineTranscribeSettings' {} a -> s {vocabularyFilterMethod = a} :: EngineTranscribeSettings)

-- | The name of the vocabulary passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyName :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_vocabularyName = Lens.lens (\EngineTranscribeSettings' {vocabularyName} -> vocabularyName) (\s@EngineTranscribeSettings' {} a -> s {vocabularyName = a} :: EngineTranscribeSettings)

-- | Set this field to @PII@ to identify personally identifiable information
-- in the transcription output.
engineTranscribeSettings_contentIdentificationType :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeContentIdentificationType)
engineTranscribeSettings_contentIdentificationType = Lens.lens (\EngineTranscribeSettings' {contentIdentificationType} -> contentIdentificationType) (\s@EngineTranscribeSettings' {} a -> s {contentIdentificationType = a} :: EngineTranscribeSettings)

-- | Generates partial transcription results that are less likely to change
-- as meeting attendees speak. It does so by only allowing the last few
-- words from the partial results to change.
engineTranscribeSettings_enablePartialResultsStabilization :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Bool)
engineTranscribeSettings_enablePartialResultsStabilization = Lens.lens (\EngineTranscribeSettings' {enablePartialResultsStabilization} -> enablePartialResultsStabilization) (\s@EngineTranscribeSettings' {} a -> s {enablePartialResultsStabilization = a} :: EngineTranscribeSettings)

-- | The name of the language model used during transcription.
engineTranscribeSettings_languageModelName :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_languageModelName = Lens.lens (\EngineTranscribeSettings' {languageModelName} -> languageModelName) (\s@EngineTranscribeSettings' {} a -> s {languageModelName = a} :: EngineTranscribeSettings)

-- | Lists the PII entity types you want to identify or redact. To specify
-- entity types, you must enable @ContentIdentificationType@ or
-- @ContentRedactionType@.
--
-- @PIIEntityTypes@ must be comma-separated. The available values are:
-- @BANK_ACCOUNT_NUMBER@, @BANK_ROUTING, CREDIT_DEBIT_NUMBER@,
-- @CREDIT_DEBIT_CVV@, @CREDIT_DEBIT_EXPIRY@, @PIN@, @EMAIL@, @ADDRESS@,
-- @NAME@, @PHONE@, @SSN@, and @ALL@.
--
-- @PiiEntityTypes@ is an optional parameter with a default value of @ALL@.
engineTranscribeSettings_piiEntityTypes :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_piiEntityTypes = Lens.lens (\EngineTranscribeSettings' {piiEntityTypes} -> piiEntityTypes) (\s@EngineTranscribeSettings' {} a -> s {piiEntityTypes = a} :: EngineTranscribeSettings)

-- | Automatically identifies the language spoken in media files.
engineTranscribeSettings_identifyLanguage :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Bool)
engineTranscribeSettings_identifyLanguage = Lens.lens (\EngineTranscribeSettings' {identifyLanguage} -> identifyLanguage) (\s@EngineTranscribeSettings' {} a -> s {identifyLanguage = a} :: EngineTranscribeSettings)

-- | Language code for the preferred language.
engineTranscribeSettings_preferredLanguage :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeLanguageCode)
engineTranscribeSettings_preferredLanguage = Lens.lens (\EngineTranscribeSettings' {preferredLanguage} -> preferredLanguage) (\s@EngineTranscribeSettings' {} a -> s {preferredLanguage = a} :: EngineTranscribeSettings)

-- | The AWS Region passed to Amazon Transcribe. If you don\'t specify a
-- Region, Amazon Chime uses the meeting\'s Region.
engineTranscribeSettings_region :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeRegion)
engineTranscribeSettings_region = Lens.lens (\EngineTranscribeSettings' {region} -> region) (\s@EngineTranscribeSettings' {} a -> s {region = a} :: EngineTranscribeSettings)

-- | The language code specified for the Amazon Transcribe engine.
engineTranscribeSettings_languageCode :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeLanguageCode)
engineTranscribeSettings_languageCode = Lens.lens (\EngineTranscribeSettings' {languageCode} -> languageCode) (\s@EngineTranscribeSettings' {} a -> s {languageCode = a} :: EngineTranscribeSettings)

-- | The name of the vocabulary filter passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyFilterName :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_vocabularyFilterName = Lens.lens (\EngineTranscribeSettings' {vocabularyFilterName} -> vocabularyFilterName) (\s@EngineTranscribeSettings' {} a -> s {vocabularyFilterName = a} :: EngineTranscribeSettings)

-- | Set this field to @PII@ to redact personally identifiable information in
-- the transcription output. Content redaction is performed only upon
-- complete transcription of the audio segments.
--
-- You can’t set @ContentRedactionType@ and @ContentIdentificationType@ in
-- the same request. If you set both, your request returns a
-- @BadRequestException@.
engineTranscribeSettings_contentRedactionType :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeContentRedactionType)
engineTranscribeSettings_contentRedactionType = Lens.lens (\EngineTranscribeSettings' {contentRedactionType} -> contentRedactionType) (\s@EngineTranscribeSettings' {} a -> s {contentRedactionType = a} :: EngineTranscribeSettings)

-- | The stabity level of a partial results transcription. Determines how
-- stable you want the transcription results to be. A higher level means
-- the transcription results are less likely to change.
engineTranscribeSettings_partialResultsStability :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribePartialResultsStability)
engineTranscribeSettings_partialResultsStability = Lens.lens (\EngineTranscribeSettings' {partialResultsStability} -> partialResultsStability) (\s@EngineTranscribeSettings' {} a -> s {partialResultsStability = a} :: EngineTranscribeSettings)

-- | Language codes for the languages that you want to identify. You must
-- provide at least 2 codes.
engineTranscribeSettings_languageOptions :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_languageOptions = Lens.lens (\EngineTranscribeSettings' {languageOptions} -> languageOptions) (\s@EngineTranscribeSettings' {} a -> s {languageOptions = a} :: EngineTranscribeSettings)

instance Prelude.Hashable EngineTranscribeSettings where
  hashWithSalt _salt EngineTranscribeSettings' {..} =
    _salt `Prelude.hashWithSalt` vocabularyFilterMethod
      `Prelude.hashWithSalt` vocabularyName
      `Prelude.hashWithSalt` contentIdentificationType
      `Prelude.hashWithSalt` enablePartialResultsStabilization
      `Prelude.hashWithSalt` languageModelName
      `Prelude.hashWithSalt` piiEntityTypes
      `Prelude.hashWithSalt` identifyLanguage
      `Prelude.hashWithSalt` preferredLanguage
      `Prelude.hashWithSalt` region
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` vocabularyFilterName
      `Prelude.hashWithSalt` contentRedactionType
      `Prelude.hashWithSalt` partialResultsStability
      `Prelude.hashWithSalt` languageOptions

instance Prelude.NFData EngineTranscribeSettings where
  rnf EngineTranscribeSettings' {..} =
    Prelude.rnf vocabularyFilterMethod
      `Prelude.seq` Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf contentIdentificationType
      `Prelude.seq` Prelude.rnf enablePartialResultsStabilization
      `Prelude.seq` Prelude.rnf languageModelName
      `Prelude.seq` Prelude.rnf piiEntityTypes
      `Prelude.seq` Prelude.rnf identifyLanguage
      `Prelude.seq` Prelude.rnf preferredLanguage
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf vocabularyFilterName
      `Prelude.seq` Prelude.rnf contentRedactionType
      `Prelude.seq` Prelude.rnf partialResultsStability
      `Prelude.seq` Prelude.rnf languageOptions

instance Core.ToJSON EngineTranscribeSettings where
  toJSON EngineTranscribeSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VocabularyFilterMethod" Core..=)
              Prelude.<$> vocabularyFilterMethod,
            ("VocabularyName" Core..=)
              Prelude.<$> vocabularyName,
            ("ContentIdentificationType" Core..=)
              Prelude.<$> contentIdentificationType,
            ("EnablePartialResultsStabilization" Core..=)
              Prelude.<$> enablePartialResultsStabilization,
            ("LanguageModelName" Core..=)
              Prelude.<$> languageModelName,
            ("PiiEntityTypes" Core..=)
              Prelude.<$> piiEntityTypes,
            ("IdentifyLanguage" Core..=)
              Prelude.<$> identifyLanguage,
            ("PreferredLanguage" Core..=)
              Prelude.<$> preferredLanguage,
            ("Region" Core..=) Prelude.<$> region,
            ("LanguageCode" Core..=) Prelude.<$> languageCode,
            ("VocabularyFilterName" Core..=)
              Prelude.<$> vocabularyFilterName,
            ("ContentRedactionType" Core..=)
              Prelude.<$> contentRedactionType,
            ("PartialResultsStability" Core..=)
              Prelude.<$> partialResultsStability,
            ("LanguageOptions" Core..=)
              Prelude.<$> languageOptions
          ]
      )

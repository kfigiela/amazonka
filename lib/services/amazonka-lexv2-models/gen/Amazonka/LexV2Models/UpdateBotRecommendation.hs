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
-- Module      : Amazonka.LexV2Models.UpdateBotRecommendation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing bot recommendation request.
module Amazonka.LexV2Models.UpdateBotRecommendation
  ( -- * Creating a Request
    UpdateBotRecommendation (..),
    newUpdateBotRecommendation,

    -- * Request Lenses
    updateBotRecommendation_botId,
    updateBotRecommendation_botVersion,
    updateBotRecommendation_localeId,
    updateBotRecommendation_botRecommendationId,
    updateBotRecommendation_encryptionSetting,

    -- * Destructuring the Response
    UpdateBotRecommendationResponse (..),
    newUpdateBotRecommendationResponse,

    -- * Response Lenses
    updateBotRecommendationResponse_botVersion,
    updateBotRecommendationResponse_creationDateTime,
    updateBotRecommendationResponse_localeId,
    updateBotRecommendationResponse_encryptionSetting,
    updateBotRecommendationResponse_botRecommendationId,
    updateBotRecommendationResponse_botId,
    updateBotRecommendationResponse_botRecommendationStatus,
    updateBotRecommendationResponse_transcriptSourceSetting,
    updateBotRecommendationResponse_lastUpdatedDateTime,
    updateBotRecommendationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateBotRecommendation' smart constructor.
data UpdateBotRecommendation = UpdateBotRecommendation'
  { -- | The unique identifier of the bot containing the bot recommendation to be
    -- updated.
    botId :: Prelude.Text,
    -- | The version of the bot containing the bot recommendation to be updated.
    botVersion :: Prelude.Text,
    -- | The identifier of the language and locale of the bot recommendation to
    -- update. The string must match one of the supported locales. For more
    -- information, see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
    localeId :: Prelude.Text,
    -- | The unique identifier of the bot recommendation to be updated.
    botRecommendationId :: Prelude.Text,
    -- | The object representing the passwords that will be used to encrypt the
    -- data related to the bot recommendation results, as well as the KMS key
    -- ARN used to encrypt the associated metadata.
    encryptionSetting :: EncryptionSetting
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBotRecommendation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botId', 'updateBotRecommendation_botId' - The unique identifier of the bot containing the bot recommendation to be
-- updated.
--
-- 'botVersion', 'updateBotRecommendation_botVersion' - The version of the bot containing the bot recommendation to be updated.
--
-- 'localeId', 'updateBotRecommendation_localeId' - The identifier of the language and locale of the bot recommendation to
-- update. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
--
-- 'botRecommendationId', 'updateBotRecommendation_botRecommendationId' - The unique identifier of the bot recommendation to be updated.
--
-- 'encryptionSetting', 'updateBotRecommendation_encryptionSetting' - The object representing the passwords that will be used to encrypt the
-- data related to the bot recommendation results, as well as the KMS key
-- ARN used to encrypt the associated metadata.
newUpdateBotRecommendation ::
  -- | 'botId'
  Prelude.Text ->
  -- | 'botVersion'
  Prelude.Text ->
  -- | 'localeId'
  Prelude.Text ->
  -- | 'botRecommendationId'
  Prelude.Text ->
  -- | 'encryptionSetting'
  EncryptionSetting ->
  UpdateBotRecommendation
newUpdateBotRecommendation
  pBotId_
  pBotVersion_
  pLocaleId_
  pBotRecommendationId_
  pEncryptionSetting_ =
    UpdateBotRecommendation'
      { botId = pBotId_,
        botVersion = pBotVersion_,
        localeId = pLocaleId_,
        botRecommendationId = pBotRecommendationId_,
        encryptionSetting = pEncryptionSetting_
      }

-- | The unique identifier of the bot containing the bot recommendation to be
-- updated.
updateBotRecommendation_botId :: Lens.Lens' UpdateBotRecommendation Prelude.Text
updateBotRecommendation_botId = Lens.lens (\UpdateBotRecommendation' {botId} -> botId) (\s@UpdateBotRecommendation' {} a -> s {botId = a} :: UpdateBotRecommendation)

-- | The version of the bot containing the bot recommendation to be updated.
updateBotRecommendation_botVersion :: Lens.Lens' UpdateBotRecommendation Prelude.Text
updateBotRecommendation_botVersion = Lens.lens (\UpdateBotRecommendation' {botVersion} -> botVersion) (\s@UpdateBotRecommendation' {} a -> s {botVersion = a} :: UpdateBotRecommendation)

-- | The identifier of the language and locale of the bot recommendation to
-- update. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
updateBotRecommendation_localeId :: Lens.Lens' UpdateBotRecommendation Prelude.Text
updateBotRecommendation_localeId = Lens.lens (\UpdateBotRecommendation' {localeId} -> localeId) (\s@UpdateBotRecommendation' {} a -> s {localeId = a} :: UpdateBotRecommendation)

-- | The unique identifier of the bot recommendation to be updated.
updateBotRecommendation_botRecommendationId :: Lens.Lens' UpdateBotRecommendation Prelude.Text
updateBotRecommendation_botRecommendationId = Lens.lens (\UpdateBotRecommendation' {botRecommendationId} -> botRecommendationId) (\s@UpdateBotRecommendation' {} a -> s {botRecommendationId = a} :: UpdateBotRecommendation)

-- | The object representing the passwords that will be used to encrypt the
-- data related to the bot recommendation results, as well as the KMS key
-- ARN used to encrypt the associated metadata.
updateBotRecommendation_encryptionSetting :: Lens.Lens' UpdateBotRecommendation EncryptionSetting
updateBotRecommendation_encryptionSetting = Lens.lens (\UpdateBotRecommendation' {encryptionSetting} -> encryptionSetting) (\s@UpdateBotRecommendation' {} a -> s {encryptionSetting = a} :: UpdateBotRecommendation)

instance Core.AWSRequest UpdateBotRecommendation where
  type
    AWSResponse UpdateBotRecommendation =
      UpdateBotRecommendationResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateBotRecommendationResponse'
            Prelude.<$> (x Core..?> "botVersion")
            Prelude.<*> (x Core..?> "creationDateTime")
            Prelude.<*> (x Core..?> "localeId")
            Prelude.<*> (x Core..?> "encryptionSetting")
            Prelude.<*> (x Core..?> "botRecommendationId")
            Prelude.<*> (x Core..?> "botId")
            Prelude.<*> (x Core..?> "botRecommendationStatus")
            Prelude.<*> (x Core..?> "transcriptSourceSetting")
            Prelude.<*> (x Core..?> "lastUpdatedDateTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateBotRecommendation where
  hashWithSalt _salt UpdateBotRecommendation' {..} =
    _salt `Prelude.hashWithSalt` botId
      `Prelude.hashWithSalt` botVersion
      `Prelude.hashWithSalt` localeId
      `Prelude.hashWithSalt` botRecommendationId
      `Prelude.hashWithSalt` encryptionSetting

instance Prelude.NFData UpdateBotRecommendation where
  rnf UpdateBotRecommendation' {..} =
    Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf botRecommendationId
      `Prelude.seq` Prelude.rnf encryptionSetting

instance Core.ToHeaders UpdateBotRecommendation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateBotRecommendation where
  toJSON UpdateBotRecommendation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("encryptionSetting" Core..= encryptionSetting)
          ]
      )

instance Core.ToPath UpdateBotRecommendation where
  toPath UpdateBotRecommendation' {..} =
    Prelude.mconcat
      [ "/bots/",
        Core.toBS botId,
        "/botversions/",
        Core.toBS botVersion,
        "/botlocales/",
        Core.toBS localeId,
        "/botrecommendations/",
        Core.toBS botRecommendationId,
        "/"
      ]

instance Core.ToQuery UpdateBotRecommendation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateBotRecommendationResponse' smart constructor.
data UpdateBotRecommendationResponse = UpdateBotRecommendationResponse'
  { -- | The version of the bot containing the bot recommendation that has been
    -- updated.
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | A timestamp of the date and time that the bot recommendation was
    -- created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The identifier of the language and locale of the bot recommendation to
    -- update. The string must match one of the supported locales. For more
    -- information, see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
    localeId :: Prelude.Maybe Prelude.Text,
    -- | The object representing the passwords that were used to encrypt the data
    -- related to the bot recommendation results, as well as the KMS key ARN
    -- used to encrypt the associated metadata.
    encryptionSetting :: Prelude.Maybe EncryptionSetting,
    -- | The unique identifier of the bot recommendation to be updated.
    botRecommendationId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the bot containing the bot recommendation that
    -- has been updated.
    botId :: Prelude.Maybe Prelude.Text,
    -- | The status of the bot recommendation.
    --
    -- If the status is Failed, then the reasons for the failure are listed in
    -- the failureReasons field.
    botRecommendationStatus :: Prelude.Maybe BotRecommendationStatus,
    -- | The object representing the Amazon S3 bucket containing the transcript,
    -- as well as the associated metadata.
    transcriptSourceSetting :: Prelude.Maybe TranscriptSourceSetting,
    -- | A timestamp of the date and time that the bot recommendation was last
    -- updated.
    lastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBotRecommendationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botVersion', 'updateBotRecommendationResponse_botVersion' - The version of the bot containing the bot recommendation that has been
-- updated.
--
-- 'creationDateTime', 'updateBotRecommendationResponse_creationDateTime' - A timestamp of the date and time that the bot recommendation was
-- created.
--
-- 'localeId', 'updateBotRecommendationResponse_localeId' - The identifier of the language and locale of the bot recommendation to
-- update. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
--
-- 'encryptionSetting', 'updateBotRecommendationResponse_encryptionSetting' - The object representing the passwords that were used to encrypt the data
-- related to the bot recommendation results, as well as the KMS key ARN
-- used to encrypt the associated metadata.
--
-- 'botRecommendationId', 'updateBotRecommendationResponse_botRecommendationId' - The unique identifier of the bot recommendation to be updated.
--
-- 'botId', 'updateBotRecommendationResponse_botId' - The unique identifier of the bot containing the bot recommendation that
-- has been updated.
--
-- 'botRecommendationStatus', 'updateBotRecommendationResponse_botRecommendationStatus' - The status of the bot recommendation.
--
-- If the status is Failed, then the reasons for the failure are listed in
-- the failureReasons field.
--
-- 'transcriptSourceSetting', 'updateBotRecommendationResponse_transcriptSourceSetting' - The object representing the Amazon S3 bucket containing the transcript,
-- as well as the associated metadata.
--
-- 'lastUpdatedDateTime', 'updateBotRecommendationResponse_lastUpdatedDateTime' - A timestamp of the date and time that the bot recommendation was last
-- updated.
--
-- 'httpStatus', 'updateBotRecommendationResponse_httpStatus' - The response's http status code.
newUpdateBotRecommendationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateBotRecommendationResponse
newUpdateBotRecommendationResponse pHttpStatus_ =
  UpdateBotRecommendationResponse'
    { botVersion =
        Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      localeId = Prelude.Nothing,
      encryptionSetting = Prelude.Nothing,
      botRecommendationId = Prelude.Nothing,
      botId = Prelude.Nothing,
      botRecommendationStatus = Prelude.Nothing,
      transcriptSourceSetting = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The version of the bot containing the bot recommendation that has been
-- updated.
updateBotRecommendationResponse_botVersion :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.Text)
updateBotRecommendationResponse_botVersion = Lens.lens (\UpdateBotRecommendationResponse' {botVersion} -> botVersion) (\s@UpdateBotRecommendationResponse' {} a -> s {botVersion = a} :: UpdateBotRecommendationResponse)

-- | A timestamp of the date and time that the bot recommendation was
-- created.
updateBotRecommendationResponse_creationDateTime :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.UTCTime)
updateBotRecommendationResponse_creationDateTime = Lens.lens (\UpdateBotRecommendationResponse' {creationDateTime} -> creationDateTime) (\s@UpdateBotRecommendationResponse' {} a -> s {creationDateTime = a} :: UpdateBotRecommendationResponse) Prelude.. Lens.mapping Core._Time

-- | The identifier of the language and locale of the bot recommendation to
-- update. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>
updateBotRecommendationResponse_localeId :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.Text)
updateBotRecommendationResponse_localeId = Lens.lens (\UpdateBotRecommendationResponse' {localeId} -> localeId) (\s@UpdateBotRecommendationResponse' {} a -> s {localeId = a} :: UpdateBotRecommendationResponse)

-- | The object representing the passwords that were used to encrypt the data
-- related to the bot recommendation results, as well as the KMS key ARN
-- used to encrypt the associated metadata.
updateBotRecommendationResponse_encryptionSetting :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe EncryptionSetting)
updateBotRecommendationResponse_encryptionSetting = Lens.lens (\UpdateBotRecommendationResponse' {encryptionSetting} -> encryptionSetting) (\s@UpdateBotRecommendationResponse' {} a -> s {encryptionSetting = a} :: UpdateBotRecommendationResponse)

-- | The unique identifier of the bot recommendation to be updated.
updateBotRecommendationResponse_botRecommendationId :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.Text)
updateBotRecommendationResponse_botRecommendationId = Lens.lens (\UpdateBotRecommendationResponse' {botRecommendationId} -> botRecommendationId) (\s@UpdateBotRecommendationResponse' {} a -> s {botRecommendationId = a} :: UpdateBotRecommendationResponse)

-- | The unique identifier of the bot containing the bot recommendation that
-- has been updated.
updateBotRecommendationResponse_botId :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.Text)
updateBotRecommendationResponse_botId = Lens.lens (\UpdateBotRecommendationResponse' {botId} -> botId) (\s@UpdateBotRecommendationResponse' {} a -> s {botId = a} :: UpdateBotRecommendationResponse)

-- | The status of the bot recommendation.
--
-- If the status is Failed, then the reasons for the failure are listed in
-- the failureReasons field.
updateBotRecommendationResponse_botRecommendationStatus :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe BotRecommendationStatus)
updateBotRecommendationResponse_botRecommendationStatus = Lens.lens (\UpdateBotRecommendationResponse' {botRecommendationStatus} -> botRecommendationStatus) (\s@UpdateBotRecommendationResponse' {} a -> s {botRecommendationStatus = a} :: UpdateBotRecommendationResponse)

-- | The object representing the Amazon S3 bucket containing the transcript,
-- as well as the associated metadata.
updateBotRecommendationResponse_transcriptSourceSetting :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe TranscriptSourceSetting)
updateBotRecommendationResponse_transcriptSourceSetting = Lens.lens (\UpdateBotRecommendationResponse' {transcriptSourceSetting} -> transcriptSourceSetting) (\s@UpdateBotRecommendationResponse' {} a -> s {transcriptSourceSetting = a} :: UpdateBotRecommendationResponse)

-- | A timestamp of the date and time that the bot recommendation was last
-- updated.
updateBotRecommendationResponse_lastUpdatedDateTime :: Lens.Lens' UpdateBotRecommendationResponse (Prelude.Maybe Prelude.UTCTime)
updateBotRecommendationResponse_lastUpdatedDateTime = Lens.lens (\UpdateBotRecommendationResponse' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@UpdateBotRecommendationResponse' {} a -> s {lastUpdatedDateTime = a} :: UpdateBotRecommendationResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
updateBotRecommendationResponse_httpStatus :: Lens.Lens' UpdateBotRecommendationResponse Prelude.Int
updateBotRecommendationResponse_httpStatus = Lens.lens (\UpdateBotRecommendationResponse' {httpStatus} -> httpStatus) (\s@UpdateBotRecommendationResponse' {} a -> s {httpStatus = a} :: UpdateBotRecommendationResponse)

instance
  Prelude.NFData
    UpdateBotRecommendationResponse
  where
  rnf UpdateBotRecommendationResponse' {..} =
    Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf encryptionSetting
      `Prelude.seq` Prelude.rnf botRecommendationId
      `Prelude.seq` Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botRecommendationStatus
      `Prelude.seq` Prelude.rnf transcriptSourceSetting
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf httpStatus

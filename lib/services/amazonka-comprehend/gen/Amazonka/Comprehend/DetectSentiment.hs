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
-- Module      : Amazonka.Comprehend.DetectSentiment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects text and returns an inference of the prevailing sentiment
-- (@POSITIVE@, @NEUTRAL@, @MIXED@, or @NEGATIVE@).
module Amazonka.Comprehend.DetectSentiment
  ( -- * Creating a Request
    DetectSentiment (..),
    newDetectSentiment,

    -- * Request Lenses
    detectSentiment_text,
    detectSentiment_languageCode,

    -- * Destructuring the Response
    DetectSentimentResponse (..),
    newDetectSentimentResponse,

    -- * Response Lenses
    detectSentimentResponse_sentimentScore,
    detectSentimentResponse_sentiment,
    detectSentimentResponse_httpStatus,
  )
where

import Amazonka.Comprehend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDetectSentiment' smart constructor.
data DetectSentiment = DetectSentiment'
  { -- | A UTF-8 text string. The maximum string size is 5 KB.
    --
    -- Amazon Comprehend performs real-time sentiment analysis on the first 500
    -- characters of the input text and ignores any additional text in the
    -- input.
    text :: Core.Sensitive Prelude.Text,
    -- | The language of the input documents. You can specify any of the primary
    -- languages supported by Amazon Comprehend. All documents must be in the
    -- same language.
    languageCode :: LanguageCode
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectSentiment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'detectSentiment_text' - A UTF-8 text string. The maximum string size is 5 KB.
--
-- Amazon Comprehend performs real-time sentiment analysis on the first 500
-- characters of the input text and ignores any additional text in the
-- input.
--
-- 'languageCode', 'detectSentiment_languageCode' - The language of the input documents. You can specify any of the primary
-- languages supported by Amazon Comprehend. All documents must be in the
-- same language.
newDetectSentiment ::
  -- | 'text'
  Prelude.Text ->
  -- | 'languageCode'
  LanguageCode ->
  DetectSentiment
newDetectSentiment pText_ pLanguageCode_ =
  DetectSentiment'
    { text =
        Core._Sensitive Lens.# pText_,
      languageCode = pLanguageCode_
    }

-- | A UTF-8 text string. The maximum string size is 5 KB.
--
-- Amazon Comprehend performs real-time sentiment analysis on the first 500
-- characters of the input text and ignores any additional text in the
-- input.
detectSentiment_text :: Lens.Lens' DetectSentiment Prelude.Text
detectSentiment_text = Lens.lens (\DetectSentiment' {text} -> text) (\s@DetectSentiment' {} a -> s {text = a} :: DetectSentiment) Prelude.. Core._Sensitive

-- | The language of the input documents. You can specify any of the primary
-- languages supported by Amazon Comprehend. All documents must be in the
-- same language.
detectSentiment_languageCode :: Lens.Lens' DetectSentiment LanguageCode
detectSentiment_languageCode = Lens.lens (\DetectSentiment' {languageCode} -> languageCode) (\s@DetectSentiment' {} a -> s {languageCode = a} :: DetectSentiment)

instance Core.AWSRequest DetectSentiment where
  type
    AWSResponse DetectSentiment =
      DetectSentimentResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DetectSentimentResponse'
            Prelude.<$> (x Core..?> "SentimentScore")
            Prelude.<*> (x Core..?> "Sentiment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DetectSentiment where
  hashWithSalt _salt DetectSentiment' {..} =
    _salt `Prelude.hashWithSalt` text
      `Prelude.hashWithSalt` languageCode

instance Prelude.NFData DetectSentiment where
  rnf DetectSentiment' {..} =
    Prelude.rnf text
      `Prelude.seq` Prelude.rnf languageCode

instance Core.ToHeaders DetectSentiment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.DetectSentiment" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DetectSentiment where
  toJSON DetectSentiment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Text" Core..= text),
            Prelude.Just ("LanguageCode" Core..= languageCode)
          ]
      )

instance Core.ToPath DetectSentiment where
  toPath = Prelude.const "/"

instance Core.ToQuery DetectSentiment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDetectSentimentResponse' smart constructor.
data DetectSentimentResponse = DetectSentimentResponse'
  { -- | An object that lists the sentiments, and their corresponding confidence
    -- levels.
    sentimentScore :: Prelude.Maybe SentimentScore,
    -- | The inferred sentiment that Amazon Comprehend has the highest level of
    -- confidence in.
    sentiment :: Prelude.Maybe SentimentType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectSentimentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sentimentScore', 'detectSentimentResponse_sentimentScore' - An object that lists the sentiments, and their corresponding confidence
-- levels.
--
-- 'sentiment', 'detectSentimentResponse_sentiment' - The inferred sentiment that Amazon Comprehend has the highest level of
-- confidence in.
--
-- 'httpStatus', 'detectSentimentResponse_httpStatus' - The response's http status code.
newDetectSentimentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DetectSentimentResponse
newDetectSentimentResponse pHttpStatus_ =
  DetectSentimentResponse'
    { sentimentScore =
        Prelude.Nothing,
      sentiment = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An object that lists the sentiments, and their corresponding confidence
-- levels.
detectSentimentResponse_sentimentScore :: Lens.Lens' DetectSentimentResponse (Prelude.Maybe SentimentScore)
detectSentimentResponse_sentimentScore = Lens.lens (\DetectSentimentResponse' {sentimentScore} -> sentimentScore) (\s@DetectSentimentResponse' {} a -> s {sentimentScore = a} :: DetectSentimentResponse)

-- | The inferred sentiment that Amazon Comprehend has the highest level of
-- confidence in.
detectSentimentResponse_sentiment :: Lens.Lens' DetectSentimentResponse (Prelude.Maybe SentimentType)
detectSentimentResponse_sentiment = Lens.lens (\DetectSentimentResponse' {sentiment} -> sentiment) (\s@DetectSentimentResponse' {} a -> s {sentiment = a} :: DetectSentimentResponse)

-- | The response's http status code.
detectSentimentResponse_httpStatus :: Lens.Lens' DetectSentimentResponse Prelude.Int
detectSentimentResponse_httpStatus = Lens.lens (\DetectSentimentResponse' {httpStatus} -> httpStatus) (\s@DetectSentimentResponse' {} a -> s {httpStatus = a} :: DetectSentimentResponse)

instance Prelude.NFData DetectSentimentResponse where
  rnf DetectSentimentResponse' {..} =
    Prelude.rnf sentimentScore
      `Prelude.seq` Prelude.rnf sentiment
      `Prelude.seq` Prelude.rnf httpStatus

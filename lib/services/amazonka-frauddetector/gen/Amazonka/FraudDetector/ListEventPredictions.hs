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
-- Module      : Amazonka.FraudDetector.ListEventPredictions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of past predictions. The list can be filtered by detector
-- ID, detector version ID, event ID, event type, or by specifying a time
-- period. If filter is not specified, the most recent prediction is
-- returned.
--
-- For example, the following filter lists all past predictions for @xyz@
-- event type - @{ \"eventType\":{ \"value\": \"xyz\" }” } @
--
-- This is a paginated API. If you provide a null @maxResults@, this action
-- will retrieve a maximum of 10 records per page. If you provide a
-- @maxResults@, the value must be between 50 and 100. To get the next page
-- results, provide the @nextToken@ from the response as part of your
-- request. A null @nextToken@ fetches the records from the beginning.
module Amazonka.FraudDetector.ListEventPredictions
  ( -- * Creating a Request
    ListEventPredictions (..),
    newListEventPredictions,

    -- * Request Lenses
    listEventPredictions_eventType,
    listEventPredictions_nextToken,
    listEventPredictions_detectorVersionId,
    listEventPredictions_predictionTimeRange,
    listEventPredictions_maxResults,
    listEventPredictions_eventId,
    listEventPredictions_detectorId,

    -- * Destructuring the Response
    ListEventPredictionsResponse (..),
    newListEventPredictionsResponse,

    -- * Response Lenses
    listEventPredictionsResponse_eventPredictionSummaries,
    listEventPredictionsResponse_nextToken,
    listEventPredictionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListEventPredictions' smart constructor.
data ListEventPredictions = ListEventPredictions'
  { -- | The event type associated with the detector.
    eventType :: Prelude.Maybe FilterCondition,
    -- | Identifies the next page of results to return. Use the token to make the
    -- call again to retrieve the next page. Keep all other arguments
    -- unchanged. Each pagination token expires after 24 hours.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The detector version ID.
    detectorVersionId :: Prelude.Maybe FilterCondition,
    -- | The time period for when the predictions were generated.
    predictionTimeRange :: Prelude.Maybe PredictionTimeRange,
    -- | The maximum number of predictions to return for the request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The event ID.
    eventId :: Prelude.Maybe FilterCondition,
    -- | The detector ID.
    detectorId :: Prelude.Maybe FilterCondition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEventPredictions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventType', 'listEventPredictions_eventType' - The event type associated with the detector.
--
-- 'nextToken', 'listEventPredictions_nextToken' - Identifies the next page of results to return. Use the token to make the
-- call again to retrieve the next page. Keep all other arguments
-- unchanged. Each pagination token expires after 24 hours.
--
-- 'detectorVersionId', 'listEventPredictions_detectorVersionId' - The detector version ID.
--
-- 'predictionTimeRange', 'listEventPredictions_predictionTimeRange' - The time period for when the predictions were generated.
--
-- 'maxResults', 'listEventPredictions_maxResults' - The maximum number of predictions to return for the request.
--
-- 'eventId', 'listEventPredictions_eventId' - The event ID.
--
-- 'detectorId', 'listEventPredictions_detectorId' - The detector ID.
newListEventPredictions ::
  ListEventPredictions
newListEventPredictions =
  ListEventPredictions'
    { eventType = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      detectorVersionId = Prelude.Nothing,
      predictionTimeRange = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      eventId = Prelude.Nothing,
      detectorId = Prelude.Nothing
    }

-- | The event type associated with the detector.
listEventPredictions_eventType :: Lens.Lens' ListEventPredictions (Prelude.Maybe FilterCondition)
listEventPredictions_eventType = Lens.lens (\ListEventPredictions' {eventType} -> eventType) (\s@ListEventPredictions' {} a -> s {eventType = a} :: ListEventPredictions)

-- | Identifies the next page of results to return. Use the token to make the
-- call again to retrieve the next page. Keep all other arguments
-- unchanged. Each pagination token expires after 24 hours.
listEventPredictions_nextToken :: Lens.Lens' ListEventPredictions (Prelude.Maybe Prelude.Text)
listEventPredictions_nextToken = Lens.lens (\ListEventPredictions' {nextToken} -> nextToken) (\s@ListEventPredictions' {} a -> s {nextToken = a} :: ListEventPredictions)

-- | The detector version ID.
listEventPredictions_detectorVersionId :: Lens.Lens' ListEventPredictions (Prelude.Maybe FilterCondition)
listEventPredictions_detectorVersionId = Lens.lens (\ListEventPredictions' {detectorVersionId} -> detectorVersionId) (\s@ListEventPredictions' {} a -> s {detectorVersionId = a} :: ListEventPredictions)

-- | The time period for when the predictions were generated.
listEventPredictions_predictionTimeRange :: Lens.Lens' ListEventPredictions (Prelude.Maybe PredictionTimeRange)
listEventPredictions_predictionTimeRange = Lens.lens (\ListEventPredictions' {predictionTimeRange} -> predictionTimeRange) (\s@ListEventPredictions' {} a -> s {predictionTimeRange = a} :: ListEventPredictions)

-- | The maximum number of predictions to return for the request.
listEventPredictions_maxResults :: Lens.Lens' ListEventPredictions (Prelude.Maybe Prelude.Natural)
listEventPredictions_maxResults = Lens.lens (\ListEventPredictions' {maxResults} -> maxResults) (\s@ListEventPredictions' {} a -> s {maxResults = a} :: ListEventPredictions)

-- | The event ID.
listEventPredictions_eventId :: Lens.Lens' ListEventPredictions (Prelude.Maybe FilterCondition)
listEventPredictions_eventId = Lens.lens (\ListEventPredictions' {eventId} -> eventId) (\s@ListEventPredictions' {} a -> s {eventId = a} :: ListEventPredictions)

-- | The detector ID.
listEventPredictions_detectorId :: Lens.Lens' ListEventPredictions (Prelude.Maybe FilterCondition)
listEventPredictions_detectorId = Lens.lens (\ListEventPredictions' {detectorId} -> detectorId) (\s@ListEventPredictions' {} a -> s {detectorId = a} :: ListEventPredictions)

instance Core.AWSRequest ListEventPredictions where
  type
    AWSResponse ListEventPredictions =
      ListEventPredictionsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEventPredictionsResponse'
            Prelude.<$> ( x Core..?> "eventPredictionSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEventPredictions where
  hashWithSalt _salt ListEventPredictions' {..} =
    _salt `Prelude.hashWithSalt` eventType
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` detectorVersionId
      `Prelude.hashWithSalt` predictionTimeRange
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` eventId
      `Prelude.hashWithSalt` detectorId

instance Prelude.NFData ListEventPredictions where
  rnf ListEventPredictions' {..} =
    Prelude.rnf eventType
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf detectorVersionId
      `Prelude.seq` Prelude.rnf predictionTimeRange
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf eventId
      `Prelude.seq` Prelude.rnf detectorId

instance Core.ToHeaders ListEventPredictions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.ListEventPredictions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListEventPredictions where
  toJSON ListEventPredictions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("eventType" Core..=) Prelude.<$> eventType,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("detectorVersionId" Core..=)
              Prelude.<$> detectorVersionId,
            ("predictionTimeRange" Core..=)
              Prelude.<$> predictionTimeRange,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("eventId" Core..=) Prelude.<$> eventId,
            ("detectorId" Core..=) Prelude.<$> detectorId
          ]
      )

instance Core.ToPath ListEventPredictions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListEventPredictions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListEventPredictionsResponse' smart constructor.
data ListEventPredictionsResponse = ListEventPredictionsResponse'
  { -- | The summary of the past predictions.
    eventPredictionSummaries :: Prelude.Maybe [EventPredictionSummary],
    -- | Identifies the next page of results to return. Use the token to make the
    -- call again to retrieve the next page. Keep all other arguments
    -- unchanged. Each pagination token expires after 24 hours.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEventPredictionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventPredictionSummaries', 'listEventPredictionsResponse_eventPredictionSummaries' - The summary of the past predictions.
--
-- 'nextToken', 'listEventPredictionsResponse_nextToken' - Identifies the next page of results to return. Use the token to make the
-- call again to retrieve the next page. Keep all other arguments
-- unchanged. Each pagination token expires after 24 hours.
--
-- 'httpStatus', 'listEventPredictionsResponse_httpStatus' - The response's http status code.
newListEventPredictionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEventPredictionsResponse
newListEventPredictionsResponse pHttpStatus_ =
  ListEventPredictionsResponse'
    { eventPredictionSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The summary of the past predictions.
listEventPredictionsResponse_eventPredictionSummaries :: Lens.Lens' ListEventPredictionsResponse (Prelude.Maybe [EventPredictionSummary])
listEventPredictionsResponse_eventPredictionSummaries = Lens.lens (\ListEventPredictionsResponse' {eventPredictionSummaries} -> eventPredictionSummaries) (\s@ListEventPredictionsResponse' {} a -> s {eventPredictionSummaries = a} :: ListEventPredictionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Identifies the next page of results to return. Use the token to make the
-- call again to retrieve the next page. Keep all other arguments
-- unchanged. Each pagination token expires after 24 hours.
listEventPredictionsResponse_nextToken :: Lens.Lens' ListEventPredictionsResponse (Prelude.Maybe Prelude.Text)
listEventPredictionsResponse_nextToken = Lens.lens (\ListEventPredictionsResponse' {nextToken} -> nextToken) (\s@ListEventPredictionsResponse' {} a -> s {nextToken = a} :: ListEventPredictionsResponse)

-- | The response's http status code.
listEventPredictionsResponse_httpStatus :: Lens.Lens' ListEventPredictionsResponse Prelude.Int
listEventPredictionsResponse_httpStatus = Lens.lens (\ListEventPredictionsResponse' {httpStatus} -> httpStatus) (\s@ListEventPredictionsResponse' {} a -> s {httpStatus = a} :: ListEventPredictionsResponse)

instance Prelude.NFData ListEventPredictionsResponse where
  rnf ListEventPredictionsResponse' {..} =
    Prelude.rnf eventPredictionSummaries
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Forecast.GetAccuracyMetrics
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides metrics on the accuracy of the models that were trained by the
-- CreatePredictor operation. Use metrics to see how well the model
-- performed and to decide whether to use the predictor to generate a
-- forecast. For more information, see
-- <https://docs.aws.amazon.com/forecast/latest/dg/metrics.html Predictor Metrics>.
--
-- This operation generates metrics for each backtest window that was
-- evaluated. The number of backtest windows (@NumberOfBacktestWindows@) is
-- specified using the EvaluationParameters object, which is optionally
-- included in the @CreatePredictor@ request. If @NumberOfBacktestWindows@
-- isn\'t specified, the number defaults to one.
--
-- The parameters of the @filling@ method determine which items contribute
-- to the metrics. If you want all items to contribute, specify @zero@. If
-- you want only those items that have complete data in the range being
-- evaluated to contribute, specify @nan@. For more information, see
-- FeaturizationMethod.
--
-- Before you can get accuracy metrics, the @Status@ of the predictor must
-- be @ACTIVE@, signifying that training has completed. To get the status,
-- use the DescribePredictor operation.
module Amazonka.Forecast.GetAccuracyMetrics
  ( -- * Creating a Request
    GetAccuracyMetrics (..),
    newGetAccuracyMetrics,

    -- * Request Lenses
    getAccuracyMetrics_predictorArn,

    -- * Destructuring the Response
    GetAccuracyMetricsResponse (..),
    newGetAccuracyMetricsResponse,

    -- * Response Lenses
    getAccuracyMetricsResponse_predictorEvaluationResults,
    getAccuracyMetricsResponse_optimizationMetric,
    getAccuracyMetricsResponse_isAutoPredictor,
    getAccuracyMetricsResponse_autoMLOverrideStrategy,
    getAccuracyMetricsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetAccuracyMetrics' smart constructor.
data GetAccuracyMetrics = GetAccuracyMetrics'
  { -- | The Amazon Resource Name (ARN) of the predictor to get metrics for.
    predictorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccuracyMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'predictorArn', 'getAccuracyMetrics_predictorArn' - The Amazon Resource Name (ARN) of the predictor to get metrics for.
newGetAccuracyMetrics ::
  -- | 'predictorArn'
  Prelude.Text ->
  GetAccuracyMetrics
newGetAccuracyMetrics pPredictorArn_ =
  GetAccuracyMetrics' {predictorArn = pPredictorArn_}

-- | The Amazon Resource Name (ARN) of the predictor to get metrics for.
getAccuracyMetrics_predictorArn :: Lens.Lens' GetAccuracyMetrics Prelude.Text
getAccuracyMetrics_predictorArn = Lens.lens (\GetAccuracyMetrics' {predictorArn} -> predictorArn) (\s@GetAccuracyMetrics' {} a -> s {predictorArn = a} :: GetAccuracyMetrics)

instance Core.AWSRequest GetAccuracyMetrics where
  type
    AWSResponse GetAccuracyMetrics =
      GetAccuracyMetricsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAccuracyMetricsResponse'
            Prelude.<$> ( x Core..?> "PredictorEvaluationResults"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "OptimizationMetric")
            Prelude.<*> (x Core..?> "IsAutoPredictor")
            Prelude.<*> (x Core..?> "AutoMLOverrideStrategy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAccuracyMetrics where
  hashWithSalt _salt GetAccuracyMetrics' {..} =
    _salt `Prelude.hashWithSalt` predictorArn

instance Prelude.NFData GetAccuracyMetrics where
  rnf GetAccuracyMetrics' {..} =
    Prelude.rnf predictorArn

instance Core.ToHeaders GetAccuracyMetrics where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.GetAccuracyMetrics" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAccuracyMetrics where
  toJSON GetAccuracyMetrics' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("PredictorArn" Core..= predictorArn)]
      )

instance Core.ToPath GetAccuracyMetrics where
  toPath = Prelude.const "/"

instance Core.ToQuery GetAccuracyMetrics where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAccuracyMetricsResponse' smart constructor.
data GetAccuracyMetricsResponse = GetAccuracyMetricsResponse'
  { -- | An array of results from evaluating the predictor.
    predictorEvaluationResults :: Prelude.Maybe [EvaluationResult],
    -- | The accuracy metric used to optimize the predictor.
    optimizationMetric :: Prelude.Maybe OptimizationMetric,
    -- | Whether the predictor was created with CreateAutoPredictor.
    isAutoPredictor :: Prelude.Maybe Prelude.Bool,
    -- | The @LatencyOptimized@ AutoML override strategy is only available in
    -- private beta. Contact AWS Support or your account manager to learn more
    -- about access privileges.
    --
    -- The AutoML strategy used to train the predictor. Unless
    -- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
    -- accuracy.
    --
    -- This parameter is only valid for predictors trained using AutoML.
    autoMLOverrideStrategy :: Prelude.Maybe AutoMLOverrideStrategy,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccuracyMetricsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'predictorEvaluationResults', 'getAccuracyMetricsResponse_predictorEvaluationResults' - An array of results from evaluating the predictor.
--
-- 'optimizationMetric', 'getAccuracyMetricsResponse_optimizationMetric' - The accuracy metric used to optimize the predictor.
--
-- 'isAutoPredictor', 'getAccuracyMetricsResponse_isAutoPredictor' - Whether the predictor was created with CreateAutoPredictor.
--
-- 'autoMLOverrideStrategy', 'getAccuracyMetricsResponse_autoMLOverrideStrategy' - The @LatencyOptimized@ AutoML override strategy is only available in
-- private beta. Contact AWS Support or your account manager to learn more
-- about access privileges.
--
-- The AutoML strategy used to train the predictor. Unless
-- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
-- accuracy.
--
-- This parameter is only valid for predictors trained using AutoML.
--
-- 'httpStatus', 'getAccuracyMetricsResponse_httpStatus' - The response's http status code.
newGetAccuracyMetricsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAccuracyMetricsResponse
newGetAccuracyMetricsResponse pHttpStatus_ =
  GetAccuracyMetricsResponse'
    { predictorEvaluationResults =
        Prelude.Nothing,
      optimizationMetric = Prelude.Nothing,
      isAutoPredictor = Prelude.Nothing,
      autoMLOverrideStrategy = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of results from evaluating the predictor.
getAccuracyMetricsResponse_predictorEvaluationResults :: Lens.Lens' GetAccuracyMetricsResponse (Prelude.Maybe [EvaluationResult])
getAccuracyMetricsResponse_predictorEvaluationResults = Lens.lens (\GetAccuracyMetricsResponse' {predictorEvaluationResults} -> predictorEvaluationResults) (\s@GetAccuracyMetricsResponse' {} a -> s {predictorEvaluationResults = a} :: GetAccuracyMetricsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The accuracy metric used to optimize the predictor.
getAccuracyMetricsResponse_optimizationMetric :: Lens.Lens' GetAccuracyMetricsResponse (Prelude.Maybe OptimizationMetric)
getAccuracyMetricsResponse_optimizationMetric = Lens.lens (\GetAccuracyMetricsResponse' {optimizationMetric} -> optimizationMetric) (\s@GetAccuracyMetricsResponse' {} a -> s {optimizationMetric = a} :: GetAccuracyMetricsResponse)

-- | Whether the predictor was created with CreateAutoPredictor.
getAccuracyMetricsResponse_isAutoPredictor :: Lens.Lens' GetAccuracyMetricsResponse (Prelude.Maybe Prelude.Bool)
getAccuracyMetricsResponse_isAutoPredictor = Lens.lens (\GetAccuracyMetricsResponse' {isAutoPredictor} -> isAutoPredictor) (\s@GetAccuracyMetricsResponse' {} a -> s {isAutoPredictor = a} :: GetAccuracyMetricsResponse)

-- | The @LatencyOptimized@ AutoML override strategy is only available in
-- private beta. Contact AWS Support or your account manager to learn more
-- about access privileges.
--
-- The AutoML strategy used to train the predictor. Unless
-- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
-- accuracy.
--
-- This parameter is only valid for predictors trained using AutoML.
getAccuracyMetricsResponse_autoMLOverrideStrategy :: Lens.Lens' GetAccuracyMetricsResponse (Prelude.Maybe AutoMLOverrideStrategy)
getAccuracyMetricsResponse_autoMLOverrideStrategy = Lens.lens (\GetAccuracyMetricsResponse' {autoMLOverrideStrategy} -> autoMLOverrideStrategy) (\s@GetAccuracyMetricsResponse' {} a -> s {autoMLOverrideStrategy = a} :: GetAccuracyMetricsResponse)

-- | The response's http status code.
getAccuracyMetricsResponse_httpStatus :: Lens.Lens' GetAccuracyMetricsResponse Prelude.Int
getAccuracyMetricsResponse_httpStatus = Lens.lens (\GetAccuracyMetricsResponse' {httpStatus} -> httpStatus) (\s@GetAccuracyMetricsResponse' {} a -> s {httpStatus = a} :: GetAccuracyMetricsResponse)

instance Prelude.NFData GetAccuracyMetricsResponse where
  rnf GetAccuracyMetricsResponse' {..} =
    Prelude.rnf predictorEvaluationResults
      `Prelude.seq` Prelude.rnf optimizationMetric
      `Prelude.seq` Prelude.rnf isAutoPredictor
      `Prelude.seq` Prelude.rnf autoMLOverrideStrategy
      `Prelude.seq` Prelude.rnf httpStatus

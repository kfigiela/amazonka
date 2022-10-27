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
-- Module      : Amazonka.Forecast.CreateWhatIfForecast
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A what-if forecast is a forecast that is created from a modified version
-- of the baseline forecast. Each what-if forecast incorporates either a
-- replacement dataset or a set of transformations to the original dataset.
module Amazonka.Forecast.CreateWhatIfForecast
  ( -- * Creating a Request
    CreateWhatIfForecast (..),
    newCreateWhatIfForecast,

    -- * Request Lenses
    createWhatIfForecast_tags,
    createWhatIfForecast_timeSeriesTransformations,
    createWhatIfForecast_timeSeriesReplacementsDataSource,
    createWhatIfForecast_whatIfForecastName,
    createWhatIfForecast_whatIfAnalysisArn,

    -- * Destructuring the Response
    CreateWhatIfForecastResponse (..),
    newCreateWhatIfForecastResponse,

    -- * Response Lenses
    createWhatIfForecastResponse_whatIfForecastArn,
    createWhatIfForecastResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateWhatIfForecast' smart constructor.
data CreateWhatIfForecast = CreateWhatIfForecast'
  { -- | A list of
    -- <https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html tags>
    -- to apply to the what if forecast.
    tags :: Prelude.Maybe [Tag],
    -- | The transformations that are applied to the baseline time series. Each
    -- transformation contains an action and a set of conditions. An action is
    -- applied only when all conditions are met. If no conditions are provided,
    -- the action is applied to all items.
    timeSeriesTransformations :: Prelude.Maybe [TimeSeriesTransformation],
    -- | The replacement time series dataset, which contains the rows that you
    -- want to change in the related time series dataset. A replacement time
    -- series does not need to contain all rows that are in the baseline
    -- related time series. Include only the rows (measure-dimension
    -- combinations) that you want to include in the what-if forecast. This
    -- dataset is merged with the original time series to create a transformed
    -- dataset that is used for the what-if analysis.
    --
    -- This dataset should contain the items to modify (such as item_id or
    -- workforce_type), any relevant dimensions, the timestamp column, and at
    -- least one of the related time series columns. This file should not
    -- contain duplicate timestamps for the same time series.
    --
    -- Timestamps and item_ids not included in this dataset are not included in
    -- the what-if analysis.
    timeSeriesReplacementsDataSource :: Prelude.Maybe TimeSeriesReplacementsDataSource,
    -- | The name of the what-if forecast. Names must be unique within each
    -- what-if analysis.
    whatIfForecastName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the what-if analysis.
    whatIfAnalysisArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWhatIfForecast' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWhatIfForecast_tags' - A list of
-- <https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html tags>
-- to apply to the what if forecast.
--
-- 'timeSeriesTransformations', 'createWhatIfForecast_timeSeriesTransformations' - The transformations that are applied to the baseline time series. Each
-- transformation contains an action and a set of conditions. An action is
-- applied only when all conditions are met. If no conditions are provided,
-- the action is applied to all items.
--
-- 'timeSeriesReplacementsDataSource', 'createWhatIfForecast_timeSeriesReplacementsDataSource' - The replacement time series dataset, which contains the rows that you
-- want to change in the related time series dataset. A replacement time
-- series does not need to contain all rows that are in the baseline
-- related time series. Include only the rows (measure-dimension
-- combinations) that you want to include in the what-if forecast. This
-- dataset is merged with the original time series to create a transformed
-- dataset that is used for the what-if analysis.
--
-- This dataset should contain the items to modify (such as item_id or
-- workforce_type), any relevant dimensions, the timestamp column, and at
-- least one of the related time series columns. This file should not
-- contain duplicate timestamps for the same time series.
--
-- Timestamps and item_ids not included in this dataset are not included in
-- the what-if analysis.
--
-- 'whatIfForecastName', 'createWhatIfForecast_whatIfForecastName' - The name of the what-if forecast. Names must be unique within each
-- what-if analysis.
--
-- 'whatIfAnalysisArn', 'createWhatIfForecast_whatIfAnalysisArn' - The Amazon Resource Name (ARN) of the what-if analysis.
newCreateWhatIfForecast ::
  -- | 'whatIfForecastName'
  Prelude.Text ->
  -- | 'whatIfAnalysisArn'
  Prelude.Text ->
  CreateWhatIfForecast
newCreateWhatIfForecast
  pWhatIfForecastName_
  pWhatIfAnalysisArn_ =
    CreateWhatIfForecast'
      { tags = Prelude.Nothing,
        timeSeriesTransformations = Prelude.Nothing,
        timeSeriesReplacementsDataSource = Prelude.Nothing,
        whatIfForecastName = pWhatIfForecastName_,
        whatIfAnalysisArn = pWhatIfAnalysisArn_
      }

-- | A list of
-- <https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html tags>
-- to apply to the what if forecast.
createWhatIfForecast_tags :: Lens.Lens' CreateWhatIfForecast (Prelude.Maybe [Tag])
createWhatIfForecast_tags = Lens.lens (\CreateWhatIfForecast' {tags} -> tags) (\s@CreateWhatIfForecast' {} a -> s {tags = a} :: CreateWhatIfForecast) Prelude.. Lens.mapping Lens.coerced

-- | The transformations that are applied to the baseline time series. Each
-- transformation contains an action and a set of conditions. An action is
-- applied only when all conditions are met. If no conditions are provided,
-- the action is applied to all items.
createWhatIfForecast_timeSeriesTransformations :: Lens.Lens' CreateWhatIfForecast (Prelude.Maybe [TimeSeriesTransformation])
createWhatIfForecast_timeSeriesTransformations = Lens.lens (\CreateWhatIfForecast' {timeSeriesTransformations} -> timeSeriesTransformations) (\s@CreateWhatIfForecast' {} a -> s {timeSeriesTransformations = a} :: CreateWhatIfForecast) Prelude.. Lens.mapping Lens.coerced

-- | The replacement time series dataset, which contains the rows that you
-- want to change in the related time series dataset. A replacement time
-- series does not need to contain all rows that are in the baseline
-- related time series. Include only the rows (measure-dimension
-- combinations) that you want to include in the what-if forecast. This
-- dataset is merged with the original time series to create a transformed
-- dataset that is used for the what-if analysis.
--
-- This dataset should contain the items to modify (such as item_id or
-- workforce_type), any relevant dimensions, the timestamp column, and at
-- least one of the related time series columns. This file should not
-- contain duplicate timestamps for the same time series.
--
-- Timestamps and item_ids not included in this dataset are not included in
-- the what-if analysis.
createWhatIfForecast_timeSeriesReplacementsDataSource :: Lens.Lens' CreateWhatIfForecast (Prelude.Maybe TimeSeriesReplacementsDataSource)
createWhatIfForecast_timeSeriesReplacementsDataSource = Lens.lens (\CreateWhatIfForecast' {timeSeriesReplacementsDataSource} -> timeSeriesReplacementsDataSource) (\s@CreateWhatIfForecast' {} a -> s {timeSeriesReplacementsDataSource = a} :: CreateWhatIfForecast)

-- | The name of the what-if forecast. Names must be unique within each
-- what-if analysis.
createWhatIfForecast_whatIfForecastName :: Lens.Lens' CreateWhatIfForecast Prelude.Text
createWhatIfForecast_whatIfForecastName = Lens.lens (\CreateWhatIfForecast' {whatIfForecastName} -> whatIfForecastName) (\s@CreateWhatIfForecast' {} a -> s {whatIfForecastName = a} :: CreateWhatIfForecast)

-- | The Amazon Resource Name (ARN) of the what-if analysis.
createWhatIfForecast_whatIfAnalysisArn :: Lens.Lens' CreateWhatIfForecast Prelude.Text
createWhatIfForecast_whatIfAnalysisArn = Lens.lens (\CreateWhatIfForecast' {whatIfAnalysisArn} -> whatIfAnalysisArn) (\s@CreateWhatIfForecast' {} a -> s {whatIfAnalysisArn = a} :: CreateWhatIfForecast)

instance Core.AWSRequest CreateWhatIfForecast where
  type
    AWSResponse CreateWhatIfForecast =
      CreateWhatIfForecastResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWhatIfForecastResponse'
            Prelude.<$> (x Core..?> "WhatIfForecastArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWhatIfForecast where
  hashWithSalt _salt CreateWhatIfForecast' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` timeSeriesTransformations
      `Prelude.hashWithSalt` timeSeriesReplacementsDataSource
      `Prelude.hashWithSalt` whatIfForecastName
      `Prelude.hashWithSalt` whatIfAnalysisArn

instance Prelude.NFData CreateWhatIfForecast where
  rnf CreateWhatIfForecast' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf timeSeriesTransformations
      `Prelude.seq` Prelude.rnf timeSeriesReplacementsDataSource
      `Prelude.seq` Prelude.rnf whatIfForecastName
      `Prelude.seq` Prelude.rnf whatIfAnalysisArn

instance Core.ToHeaders CreateWhatIfForecast where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.CreateWhatIfForecast" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWhatIfForecast where
  toJSON CreateWhatIfForecast' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("TimeSeriesTransformations" Core..=)
              Prelude.<$> timeSeriesTransformations,
            ("TimeSeriesReplacementsDataSource" Core..=)
              Prelude.<$> timeSeriesReplacementsDataSource,
            Prelude.Just
              ("WhatIfForecastName" Core..= whatIfForecastName),
            Prelude.Just
              ("WhatIfAnalysisArn" Core..= whatIfAnalysisArn)
          ]
      )

instance Core.ToPath CreateWhatIfForecast where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateWhatIfForecast where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWhatIfForecastResponse' smart constructor.
data CreateWhatIfForecastResponse = CreateWhatIfForecastResponse'
  { -- | The Amazon Resource Name (ARN) of the what-if forecast.
    whatIfForecastArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWhatIfForecastResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'whatIfForecastArn', 'createWhatIfForecastResponse_whatIfForecastArn' - The Amazon Resource Name (ARN) of the what-if forecast.
--
-- 'httpStatus', 'createWhatIfForecastResponse_httpStatus' - The response's http status code.
newCreateWhatIfForecastResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWhatIfForecastResponse
newCreateWhatIfForecastResponse pHttpStatus_ =
  CreateWhatIfForecastResponse'
    { whatIfForecastArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the what-if forecast.
createWhatIfForecastResponse_whatIfForecastArn :: Lens.Lens' CreateWhatIfForecastResponse (Prelude.Maybe Prelude.Text)
createWhatIfForecastResponse_whatIfForecastArn = Lens.lens (\CreateWhatIfForecastResponse' {whatIfForecastArn} -> whatIfForecastArn) (\s@CreateWhatIfForecastResponse' {} a -> s {whatIfForecastArn = a} :: CreateWhatIfForecastResponse)

-- | The response's http status code.
createWhatIfForecastResponse_httpStatus :: Lens.Lens' CreateWhatIfForecastResponse Prelude.Int
createWhatIfForecastResponse_httpStatus = Lens.lens (\CreateWhatIfForecastResponse' {httpStatus} -> httpStatus) (\s@CreateWhatIfForecastResponse' {} a -> s {httpStatus = a} :: CreateWhatIfForecastResponse)

instance Prelude.NFData CreateWhatIfForecastResponse where
  rnf CreateWhatIfForecastResponse' {..} =
    Prelude.rnf whatIfForecastArn
      `Prelude.seq` Prelude.rnf httpStatus

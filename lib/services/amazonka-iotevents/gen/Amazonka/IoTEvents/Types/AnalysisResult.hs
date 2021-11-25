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
-- Module      : Amazonka.IoTEvents.Types.AnalysisResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTEvents.Types.AnalysisResult where

import qualified Amazonka.Core as Core
import Amazonka.IoTEvents.Types.AnalysisResultLevel
import Amazonka.IoTEvents.Types.AnalysisResultLocation
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains the result of the analysis.
--
-- /See:/ 'newAnalysisResult' smart constructor.
data AnalysisResult = AnalysisResult'
  { -- | The type of the analysis result. Analyses fall into the following types
    -- based on the validators used to generate the analysis result:
    --
    -- -   @supported-actions@ - You must specify AWS IoT Events supported
    --     actions that work with other AWS services in a supported AWS Region.
    --
    -- -   @service-limits@ - Resources or API operations can\'t exceed service
    --     quotas (also known as limits). Update your detector model or request
    --     a quota increase.
    --
    -- -   @structure@ - The detector model must follow a structure that AWS
    --     IoT Events supports.
    --
    -- -   @expression-syntax@ - Your expression must follow the required
    --     syntax.
    --
    -- -   @data-type@ - Data types referenced in the detector model must be
    --     compatible.
    --
    -- -   @referenced-data@ - You must define the data referenced in your
    --     detector model before you can use the data.
    --
    -- -   @referenced-resource@ - Resources that the detector model uses must
    --     be available.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html Running detector model analyses>
    -- in the /AWS IoT Events Developer Guide/.
    type' :: Prelude.Maybe Prelude.Text,
    -- | Contains additional information about the analysis result.
    message :: Prelude.Maybe Prelude.Text,
    -- | The severity level of the analysis result. Based on the severity level,
    -- analysis results fall into three general categories:
    --
    -- -   @INFO@ - An information result tells you about a significant field
    --     in your detector model. This type of result usually doesn\'t require
    --     immediate action.
    --
    -- -   @WARNING@ - A warning result draws special attention to fields that
    --     might cause issues for your detector model. We recommend that you
    --     review warnings and take necessary actions before you use your
    --     detector model in production environments. Otherwise, the detector
    --     model might not work as expected.
    --
    -- -   @ERROR@ - An error result notifies you about a problem found in your
    --     detector model. You must fix all errors before you can publish your
    --     detector model.
    level :: Prelude.Maybe AnalysisResultLevel,
    -- | Contains one or more locations that you can use to locate the fields in
    -- your detector model that the analysis result references.
    locations :: Prelude.Maybe [AnalysisResultLocation]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'analysisResult_type' - The type of the analysis result. Analyses fall into the following types
-- based on the validators used to generate the analysis result:
--
-- -   @supported-actions@ - You must specify AWS IoT Events supported
--     actions that work with other AWS services in a supported AWS Region.
--
-- -   @service-limits@ - Resources or API operations can\'t exceed service
--     quotas (also known as limits). Update your detector model or request
--     a quota increase.
--
-- -   @structure@ - The detector model must follow a structure that AWS
--     IoT Events supports.
--
-- -   @expression-syntax@ - Your expression must follow the required
--     syntax.
--
-- -   @data-type@ - Data types referenced in the detector model must be
--     compatible.
--
-- -   @referenced-data@ - You must define the data referenced in your
--     detector model before you can use the data.
--
-- -   @referenced-resource@ - Resources that the detector model uses must
--     be available.
--
-- For more information, see
-- <https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html Running detector model analyses>
-- in the /AWS IoT Events Developer Guide/.
--
-- 'message', 'analysisResult_message' - Contains additional information about the analysis result.
--
-- 'level', 'analysisResult_level' - The severity level of the analysis result. Based on the severity level,
-- analysis results fall into three general categories:
--
-- -   @INFO@ - An information result tells you about a significant field
--     in your detector model. This type of result usually doesn\'t require
--     immediate action.
--
-- -   @WARNING@ - A warning result draws special attention to fields that
--     might cause issues for your detector model. We recommend that you
--     review warnings and take necessary actions before you use your
--     detector model in production environments. Otherwise, the detector
--     model might not work as expected.
--
-- -   @ERROR@ - An error result notifies you about a problem found in your
--     detector model. You must fix all errors before you can publish your
--     detector model.
--
-- 'locations', 'analysisResult_locations' - Contains one or more locations that you can use to locate the fields in
-- your detector model that the analysis result references.
newAnalysisResult ::
  AnalysisResult
newAnalysisResult =
  AnalysisResult'
    { type' = Prelude.Nothing,
      message = Prelude.Nothing,
      level = Prelude.Nothing,
      locations = Prelude.Nothing
    }

-- | The type of the analysis result. Analyses fall into the following types
-- based on the validators used to generate the analysis result:
--
-- -   @supported-actions@ - You must specify AWS IoT Events supported
--     actions that work with other AWS services in a supported AWS Region.
--
-- -   @service-limits@ - Resources or API operations can\'t exceed service
--     quotas (also known as limits). Update your detector model or request
--     a quota increase.
--
-- -   @structure@ - The detector model must follow a structure that AWS
--     IoT Events supports.
--
-- -   @expression-syntax@ - Your expression must follow the required
--     syntax.
--
-- -   @data-type@ - Data types referenced in the detector model must be
--     compatible.
--
-- -   @referenced-data@ - You must define the data referenced in your
--     detector model before you can use the data.
--
-- -   @referenced-resource@ - Resources that the detector model uses must
--     be available.
--
-- For more information, see
-- <https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html Running detector model analyses>
-- in the /AWS IoT Events Developer Guide/.
analysisResult_type :: Lens.Lens' AnalysisResult (Prelude.Maybe Prelude.Text)
analysisResult_type = Lens.lens (\AnalysisResult' {type'} -> type') (\s@AnalysisResult' {} a -> s {type' = a} :: AnalysisResult)

-- | Contains additional information about the analysis result.
analysisResult_message :: Lens.Lens' AnalysisResult (Prelude.Maybe Prelude.Text)
analysisResult_message = Lens.lens (\AnalysisResult' {message} -> message) (\s@AnalysisResult' {} a -> s {message = a} :: AnalysisResult)

-- | The severity level of the analysis result. Based on the severity level,
-- analysis results fall into three general categories:
--
-- -   @INFO@ - An information result tells you about a significant field
--     in your detector model. This type of result usually doesn\'t require
--     immediate action.
--
-- -   @WARNING@ - A warning result draws special attention to fields that
--     might cause issues for your detector model. We recommend that you
--     review warnings and take necessary actions before you use your
--     detector model in production environments. Otherwise, the detector
--     model might not work as expected.
--
-- -   @ERROR@ - An error result notifies you about a problem found in your
--     detector model. You must fix all errors before you can publish your
--     detector model.
analysisResult_level :: Lens.Lens' AnalysisResult (Prelude.Maybe AnalysisResultLevel)
analysisResult_level = Lens.lens (\AnalysisResult' {level} -> level) (\s@AnalysisResult' {} a -> s {level = a} :: AnalysisResult)

-- | Contains one or more locations that you can use to locate the fields in
-- your detector model that the analysis result references.
analysisResult_locations :: Lens.Lens' AnalysisResult (Prelude.Maybe [AnalysisResultLocation])
analysisResult_locations = Lens.lens (\AnalysisResult' {locations} -> locations) (\s@AnalysisResult' {} a -> s {locations = a} :: AnalysisResult) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AnalysisResult where
  parseJSON =
    Core.withObject
      "AnalysisResult"
      ( \x ->
          AnalysisResult'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "message")
            Prelude.<*> (x Core..:? "level")
            Prelude.<*> (x Core..:? "locations" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AnalysisResult

instance Prelude.NFData AnalysisResult
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
-- Module      : Amazonka.Evidently.Types.FeatureSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.FeatureSummary where

import qualified Amazonka.Core as Core
import Amazonka.Evidently.Types.EvaluationRule
import Amazonka.Evidently.Types.FeatureEvaluationStrategy
import Amazonka.Evidently.Types.FeatureStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This structure contains information about one Evidently feature in your
-- account.
--
-- /See:/ 'newFeatureSummary' smart constructor.
data FeatureSummary = FeatureSummary'
  { -- | The list of tag keys and values associated with this feature.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name or ARN of the project that contains the feature.
    project :: Prelude.Maybe Prelude.Text,
    -- | An array of structures that define
    evaluationRules :: Prelude.Maybe [EvaluationRule],
    -- | The name of the variation that is used as the default variation. The
    -- default variation is served to users who are not allocated to any
    -- ongoing launches or experiments of this feature.
    defaultVariation :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the feature.
    arn :: Prelude.Text,
    -- | The date and time that the feature is created.
    createdTime :: Core.POSIX,
    -- | If this value is @ALL_RULES@, the traffic allocation specified by any
    -- ongoing launches or experiments is being used. If this is
    -- @DEFAULT_VARIATION@, the default variation is being served to all users.
    evaluationStrategy :: FeatureEvaluationStrategy,
    -- | The date and time that the feature was most recently updated.
    lastUpdatedTime :: Core.POSIX,
    -- | The name of the feature.
    name :: Prelude.Text,
    -- | The current state of the feature.
    status :: FeatureStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FeatureSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'featureSummary_tags' - The list of tag keys and values associated with this feature.
--
-- 'project', 'featureSummary_project' - The name or ARN of the project that contains the feature.
--
-- 'evaluationRules', 'featureSummary_evaluationRules' - An array of structures that define
--
-- 'defaultVariation', 'featureSummary_defaultVariation' - The name of the variation that is used as the default variation. The
-- default variation is served to users who are not allocated to any
-- ongoing launches or experiments of this feature.
--
-- 'arn', 'featureSummary_arn' - The ARN of the feature.
--
-- 'createdTime', 'featureSummary_createdTime' - The date and time that the feature is created.
--
-- 'evaluationStrategy', 'featureSummary_evaluationStrategy' - If this value is @ALL_RULES@, the traffic allocation specified by any
-- ongoing launches or experiments is being used. If this is
-- @DEFAULT_VARIATION@, the default variation is being served to all users.
--
-- 'lastUpdatedTime', 'featureSummary_lastUpdatedTime' - The date and time that the feature was most recently updated.
--
-- 'name', 'featureSummary_name' - The name of the feature.
--
-- 'status', 'featureSummary_status' - The current state of the feature.
newFeatureSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdTime'
  Prelude.UTCTime ->
  -- | 'evaluationStrategy'
  FeatureEvaluationStrategy ->
  -- | 'lastUpdatedTime'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  -- | 'status'
  FeatureStatus ->
  FeatureSummary
newFeatureSummary
  pArn_
  pCreatedTime_
  pEvaluationStrategy_
  pLastUpdatedTime_
  pName_
  pStatus_ =
    FeatureSummary'
      { tags = Prelude.Nothing,
        project = Prelude.Nothing,
        evaluationRules = Prelude.Nothing,
        defaultVariation = Prelude.Nothing,
        arn = pArn_,
        createdTime = Core._Time Lens.# pCreatedTime_,
        evaluationStrategy = pEvaluationStrategy_,
        lastUpdatedTime =
          Core._Time Lens.# pLastUpdatedTime_,
        name = pName_,
        status = pStatus_
      }

-- | The list of tag keys and values associated with this feature.
featureSummary_tags :: Lens.Lens' FeatureSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
featureSummary_tags = Lens.lens (\FeatureSummary' {tags} -> tags) (\s@FeatureSummary' {} a -> s {tags = a} :: FeatureSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name or ARN of the project that contains the feature.
featureSummary_project :: Lens.Lens' FeatureSummary (Prelude.Maybe Prelude.Text)
featureSummary_project = Lens.lens (\FeatureSummary' {project} -> project) (\s@FeatureSummary' {} a -> s {project = a} :: FeatureSummary)

-- | An array of structures that define
featureSummary_evaluationRules :: Lens.Lens' FeatureSummary (Prelude.Maybe [EvaluationRule])
featureSummary_evaluationRules = Lens.lens (\FeatureSummary' {evaluationRules} -> evaluationRules) (\s@FeatureSummary' {} a -> s {evaluationRules = a} :: FeatureSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the variation that is used as the default variation. The
-- default variation is served to users who are not allocated to any
-- ongoing launches or experiments of this feature.
featureSummary_defaultVariation :: Lens.Lens' FeatureSummary (Prelude.Maybe Prelude.Text)
featureSummary_defaultVariation = Lens.lens (\FeatureSummary' {defaultVariation} -> defaultVariation) (\s@FeatureSummary' {} a -> s {defaultVariation = a} :: FeatureSummary)

-- | The ARN of the feature.
featureSummary_arn :: Lens.Lens' FeatureSummary Prelude.Text
featureSummary_arn = Lens.lens (\FeatureSummary' {arn} -> arn) (\s@FeatureSummary' {} a -> s {arn = a} :: FeatureSummary)

-- | The date and time that the feature is created.
featureSummary_createdTime :: Lens.Lens' FeatureSummary Prelude.UTCTime
featureSummary_createdTime = Lens.lens (\FeatureSummary' {createdTime} -> createdTime) (\s@FeatureSummary' {} a -> s {createdTime = a} :: FeatureSummary) Prelude.. Core._Time

-- | If this value is @ALL_RULES@, the traffic allocation specified by any
-- ongoing launches or experiments is being used. If this is
-- @DEFAULT_VARIATION@, the default variation is being served to all users.
featureSummary_evaluationStrategy :: Lens.Lens' FeatureSummary FeatureEvaluationStrategy
featureSummary_evaluationStrategy = Lens.lens (\FeatureSummary' {evaluationStrategy} -> evaluationStrategy) (\s@FeatureSummary' {} a -> s {evaluationStrategy = a} :: FeatureSummary)

-- | The date and time that the feature was most recently updated.
featureSummary_lastUpdatedTime :: Lens.Lens' FeatureSummary Prelude.UTCTime
featureSummary_lastUpdatedTime = Lens.lens (\FeatureSummary' {lastUpdatedTime} -> lastUpdatedTime) (\s@FeatureSummary' {} a -> s {lastUpdatedTime = a} :: FeatureSummary) Prelude.. Core._Time

-- | The name of the feature.
featureSummary_name :: Lens.Lens' FeatureSummary Prelude.Text
featureSummary_name = Lens.lens (\FeatureSummary' {name} -> name) (\s@FeatureSummary' {} a -> s {name = a} :: FeatureSummary)

-- | The current state of the feature.
featureSummary_status :: Lens.Lens' FeatureSummary FeatureStatus
featureSummary_status = Lens.lens (\FeatureSummary' {status} -> status) (\s@FeatureSummary' {} a -> s {status = a} :: FeatureSummary)

instance Core.FromJSON FeatureSummary where
  parseJSON =
    Core.withObject
      "FeatureSummary"
      ( \x ->
          FeatureSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "project")
            Prelude.<*> ( x Core..:? "evaluationRules"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "defaultVariation")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdTime")
            Prelude.<*> (x Core..: "evaluationStrategy")
            Prelude.<*> (x Core..: "lastUpdatedTime")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable FeatureSummary where
  hashWithSalt _salt FeatureSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` project
      `Prelude.hashWithSalt` evaluationRules
      `Prelude.hashWithSalt` defaultVariation
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` evaluationStrategy
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` status

instance Prelude.NFData FeatureSummary where
  rnf FeatureSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf project
      `Prelude.seq` Prelude.rnf evaluationRules
      `Prelude.seq` Prelude.rnf defaultVariation
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf evaluationStrategy
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf status

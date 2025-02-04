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
-- Module      : Amazonka.Evidently.Types.MetricDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.MetricDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This structure defines a metric that is being used to evaluate the
-- variations during a launch or experiment.
--
-- /See:/ 'newMetricDefinition' smart constructor.
data MetricDefinition = MetricDefinition'
  { -- | The name of the metric.
    name :: Prelude.Maybe Prelude.Text,
    -- | The value that is tracked to produce the metric.
    valueKey :: Prelude.Maybe Prelude.Text,
    -- | The label for the units that the metric is measuring.
    unitLabel :: Prelude.Maybe Prelude.Text,
    -- | The EventBridge event pattern that defines how the metric is recorded.
    --
    -- For more information about EventBridge event patterns, see
    -- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html Amazon EventBridge event patterns>.
    eventPattern :: Prelude.Maybe Prelude.Text,
    -- | The entity, such as a user or session, that does an action that causes a
    -- metric value to be recorded.
    entityIdKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'metricDefinition_name' - The name of the metric.
--
-- 'valueKey', 'metricDefinition_valueKey' - The value that is tracked to produce the metric.
--
-- 'unitLabel', 'metricDefinition_unitLabel' - The label for the units that the metric is measuring.
--
-- 'eventPattern', 'metricDefinition_eventPattern' - The EventBridge event pattern that defines how the metric is recorded.
--
-- For more information about EventBridge event patterns, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html Amazon EventBridge event patterns>.
--
-- 'entityIdKey', 'metricDefinition_entityIdKey' - The entity, such as a user or session, that does an action that causes a
-- metric value to be recorded.
newMetricDefinition ::
  MetricDefinition
newMetricDefinition =
  MetricDefinition'
    { name = Prelude.Nothing,
      valueKey = Prelude.Nothing,
      unitLabel = Prelude.Nothing,
      eventPattern = Prelude.Nothing,
      entityIdKey = Prelude.Nothing
    }

-- | The name of the metric.
metricDefinition_name :: Lens.Lens' MetricDefinition (Prelude.Maybe Prelude.Text)
metricDefinition_name = Lens.lens (\MetricDefinition' {name} -> name) (\s@MetricDefinition' {} a -> s {name = a} :: MetricDefinition)

-- | The value that is tracked to produce the metric.
metricDefinition_valueKey :: Lens.Lens' MetricDefinition (Prelude.Maybe Prelude.Text)
metricDefinition_valueKey = Lens.lens (\MetricDefinition' {valueKey} -> valueKey) (\s@MetricDefinition' {} a -> s {valueKey = a} :: MetricDefinition)

-- | The label for the units that the metric is measuring.
metricDefinition_unitLabel :: Lens.Lens' MetricDefinition (Prelude.Maybe Prelude.Text)
metricDefinition_unitLabel = Lens.lens (\MetricDefinition' {unitLabel} -> unitLabel) (\s@MetricDefinition' {} a -> s {unitLabel = a} :: MetricDefinition)

-- | The EventBridge event pattern that defines how the metric is recorded.
--
-- For more information about EventBridge event patterns, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html Amazon EventBridge event patterns>.
metricDefinition_eventPattern :: Lens.Lens' MetricDefinition (Prelude.Maybe Prelude.Text)
metricDefinition_eventPattern = Lens.lens (\MetricDefinition' {eventPattern} -> eventPattern) (\s@MetricDefinition' {} a -> s {eventPattern = a} :: MetricDefinition)

-- | The entity, such as a user or session, that does an action that causes a
-- metric value to be recorded.
metricDefinition_entityIdKey :: Lens.Lens' MetricDefinition (Prelude.Maybe Prelude.Text)
metricDefinition_entityIdKey = Lens.lens (\MetricDefinition' {entityIdKey} -> entityIdKey) (\s@MetricDefinition' {} a -> s {entityIdKey = a} :: MetricDefinition)

instance Core.FromJSON MetricDefinition where
  parseJSON =
    Core.withObject
      "MetricDefinition"
      ( \x ->
          MetricDefinition'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "valueKey")
            Prelude.<*> (x Core..:? "unitLabel")
            Prelude.<*> (x Core..:? "eventPattern")
            Prelude.<*> (x Core..:? "entityIdKey")
      )

instance Prelude.Hashable MetricDefinition where
  hashWithSalt _salt MetricDefinition' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` valueKey
      `Prelude.hashWithSalt` unitLabel
      `Prelude.hashWithSalt` eventPattern
      `Prelude.hashWithSalt` entityIdKey

instance Prelude.NFData MetricDefinition where
  rnf MetricDefinition' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf valueKey
      `Prelude.seq` Prelude.rnf unitLabel
      `Prelude.seq` Prelude.rnf eventPattern
      `Prelude.seq` Prelude.rnf entityIdKey

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
-- Module      : Amazonka.IoTFleetWise.Types.SignalInformation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.SignalInformation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a signal.
--
-- /See:/ 'newSignalInformation' smart constructor.
data SignalInformation = SignalInformation'
  { -- | The minimum duration of time (in milliseconds) between two triggering
    -- events to collect data.
    --
    -- If a signal changes often, you might want to collect data at a slower
    -- rate.
    minimumSamplingIntervalMs :: Prelude.Maybe Prelude.Natural,
    -- | The maximum number of samples to collect.
    maxSampleCount :: Prelude.Maybe Prelude.Natural,
    -- | The name of the signal.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SignalInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minimumSamplingIntervalMs', 'signalInformation_minimumSamplingIntervalMs' - The minimum duration of time (in milliseconds) between two triggering
-- events to collect data.
--
-- If a signal changes often, you might want to collect data at a slower
-- rate.
--
-- 'maxSampleCount', 'signalInformation_maxSampleCount' - The maximum number of samples to collect.
--
-- 'name', 'signalInformation_name' - The name of the signal.
newSignalInformation ::
  -- | 'name'
  Prelude.Text ->
  SignalInformation
newSignalInformation pName_ =
  SignalInformation'
    { minimumSamplingIntervalMs =
        Prelude.Nothing,
      maxSampleCount = Prelude.Nothing,
      name = pName_
    }

-- | The minimum duration of time (in milliseconds) between two triggering
-- events to collect data.
--
-- If a signal changes often, you might want to collect data at a slower
-- rate.
signalInformation_minimumSamplingIntervalMs :: Lens.Lens' SignalInformation (Prelude.Maybe Prelude.Natural)
signalInformation_minimumSamplingIntervalMs = Lens.lens (\SignalInformation' {minimumSamplingIntervalMs} -> minimumSamplingIntervalMs) (\s@SignalInformation' {} a -> s {minimumSamplingIntervalMs = a} :: SignalInformation)

-- | The maximum number of samples to collect.
signalInformation_maxSampleCount :: Lens.Lens' SignalInformation (Prelude.Maybe Prelude.Natural)
signalInformation_maxSampleCount = Lens.lens (\SignalInformation' {maxSampleCount} -> maxSampleCount) (\s@SignalInformation' {} a -> s {maxSampleCount = a} :: SignalInformation)

-- | The name of the signal.
signalInformation_name :: Lens.Lens' SignalInformation Prelude.Text
signalInformation_name = Lens.lens (\SignalInformation' {name} -> name) (\s@SignalInformation' {} a -> s {name = a} :: SignalInformation)

instance Core.FromJSON SignalInformation where
  parseJSON =
    Core.withObject
      "SignalInformation"
      ( \x ->
          SignalInformation'
            Prelude.<$> (x Core..:? "minimumSamplingIntervalMs")
            Prelude.<*> (x Core..:? "maxSampleCount")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable SignalInformation where
  hashWithSalt _salt SignalInformation' {..} =
    _salt
      `Prelude.hashWithSalt` minimumSamplingIntervalMs
      `Prelude.hashWithSalt` maxSampleCount
      `Prelude.hashWithSalt` name

instance Prelude.NFData SignalInformation where
  rnf SignalInformation' {..} =
    Prelude.rnf minimumSamplingIntervalMs
      `Prelude.seq` Prelude.rnf maxSampleCount
      `Prelude.seq` Prelude.rnf name

instance Core.ToJSON SignalInformation where
  toJSON SignalInformation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("minimumSamplingIntervalMs" Core..=)
              Prelude.<$> minimumSamplingIntervalMs,
            ("maxSampleCount" Core..=)
              Prelude.<$> maxSampleCount,
            Prelude.Just ("name" Core..= name)
          ]
      )

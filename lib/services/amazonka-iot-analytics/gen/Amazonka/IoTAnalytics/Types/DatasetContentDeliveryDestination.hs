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
-- Module      : Amazonka.IoTAnalytics.Types.DatasetContentDeliveryDestination
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTAnalytics.Types.DatasetContentDeliveryDestination where

import qualified Amazonka.Core as Core
import Amazonka.IoTAnalytics.Types.IotEventsDestinationConfiguration
import Amazonka.IoTAnalytics.Types.S3DestinationConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The destination to which dataset contents are delivered.
--
-- /See:/ 'newDatasetContentDeliveryDestination' smart constructor.
data DatasetContentDeliveryDestination = DatasetContentDeliveryDestination'
  { -- | Configuration information for delivery of dataset contents to Amazon S3.
    s3DestinationConfiguration :: Prelude.Maybe S3DestinationConfiguration,
    -- | Configuration information for delivery of dataset contents to IoT
    -- Events.
    iotEventsDestinationConfiguration :: Prelude.Maybe IotEventsDestinationConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetContentDeliveryDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3DestinationConfiguration', 'datasetContentDeliveryDestination_s3DestinationConfiguration' - Configuration information for delivery of dataset contents to Amazon S3.
--
-- 'iotEventsDestinationConfiguration', 'datasetContentDeliveryDestination_iotEventsDestinationConfiguration' - Configuration information for delivery of dataset contents to IoT
-- Events.
newDatasetContentDeliveryDestination ::
  DatasetContentDeliveryDestination
newDatasetContentDeliveryDestination =
  DatasetContentDeliveryDestination'
    { s3DestinationConfiguration =
        Prelude.Nothing,
      iotEventsDestinationConfiguration =
        Prelude.Nothing
    }

-- | Configuration information for delivery of dataset contents to Amazon S3.
datasetContentDeliveryDestination_s3DestinationConfiguration :: Lens.Lens' DatasetContentDeliveryDestination (Prelude.Maybe S3DestinationConfiguration)
datasetContentDeliveryDestination_s3DestinationConfiguration = Lens.lens (\DatasetContentDeliveryDestination' {s3DestinationConfiguration} -> s3DestinationConfiguration) (\s@DatasetContentDeliveryDestination' {} a -> s {s3DestinationConfiguration = a} :: DatasetContentDeliveryDestination)

-- | Configuration information for delivery of dataset contents to IoT
-- Events.
datasetContentDeliveryDestination_iotEventsDestinationConfiguration :: Lens.Lens' DatasetContentDeliveryDestination (Prelude.Maybe IotEventsDestinationConfiguration)
datasetContentDeliveryDestination_iotEventsDestinationConfiguration = Lens.lens (\DatasetContentDeliveryDestination' {iotEventsDestinationConfiguration} -> iotEventsDestinationConfiguration) (\s@DatasetContentDeliveryDestination' {} a -> s {iotEventsDestinationConfiguration = a} :: DatasetContentDeliveryDestination)

instance
  Core.FromJSON
    DatasetContentDeliveryDestination
  where
  parseJSON =
    Core.withObject
      "DatasetContentDeliveryDestination"
      ( \x ->
          DatasetContentDeliveryDestination'
            Prelude.<$> (x Core..:? "s3DestinationConfiguration")
            Prelude.<*> (x Core..:? "iotEventsDestinationConfiguration")
      )

instance
  Prelude.Hashable
    DatasetContentDeliveryDestination
  where
  hashWithSalt
    _salt
    DatasetContentDeliveryDestination' {..} =
      _salt
        `Prelude.hashWithSalt` s3DestinationConfiguration
        `Prelude.hashWithSalt` iotEventsDestinationConfiguration

instance
  Prelude.NFData
    DatasetContentDeliveryDestination
  where
  rnf DatasetContentDeliveryDestination' {..} =
    Prelude.rnf s3DestinationConfiguration
      `Prelude.seq` Prelude.rnf iotEventsDestinationConfiguration

instance
  Core.ToJSON
    DatasetContentDeliveryDestination
  where
  toJSON DatasetContentDeliveryDestination' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("s3DestinationConfiguration" Core..=)
              Prelude.<$> s3DestinationConfiguration,
            ("iotEventsDestinationConfiguration" Core..=)
              Prelude.<$> iotEventsDestinationConfiguration
          ]
      )

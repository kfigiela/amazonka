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
-- Module      : Amazonka.CloudTrail.Types.Destination
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudTrail.Types.Destination where

import Amazonka.CloudTrail.Types.DestinationType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the service where CloudTrail delivers events.
--
-- /See:/ 'newDestination' smart constructor.
data Destination = Destination'
  { -- | The type of service. For service-linked channels, the value is
    -- @AWS_SERVICE@.
    type' :: DestinationType,
    -- | The location of the service. For service-linked channels, this is the
    -- name of the Amazon Web Services service.
    location :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Destination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'destination_type' - The type of service. For service-linked channels, the value is
-- @AWS_SERVICE@.
--
-- 'location', 'destination_location' - The location of the service. For service-linked channels, this is the
-- name of the Amazon Web Services service.
newDestination ::
  -- | 'type''
  DestinationType ->
  -- | 'location'
  Prelude.Text ->
  Destination
newDestination pType_ pLocation_ =
  Destination' {type' = pType_, location = pLocation_}

-- | The type of service. For service-linked channels, the value is
-- @AWS_SERVICE@.
destination_type :: Lens.Lens' Destination DestinationType
destination_type = Lens.lens (\Destination' {type'} -> type') (\s@Destination' {} a -> s {type' = a} :: Destination)

-- | The location of the service. For service-linked channels, this is the
-- name of the Amazon Web Services service.
destination_location :: Lens.Lens' Destination Prelude.Text
destination_location = Lens.lens (\Destination' {location} -> location) (\s@Destination' {} a -> s {location = a} :: Destination)

instance Core.FromJSON Destination where
  parseJSON =
    Core.withObject
      "Destination"
      ( \x ->
          Destination'
            Prelude.<$> (x Core..: "Type")
            Prelude.<*> (x Core..: "Location")
      )

instance Prelude.Hashable Destination where
  hashWithSalt _salt Destination' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` location

instance Prelude.NFData Destination where
  rnf Destination' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf location

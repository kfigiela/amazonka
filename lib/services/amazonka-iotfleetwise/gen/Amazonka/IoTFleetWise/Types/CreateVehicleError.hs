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
-- Module      : Amazonka.IoTFleetWise.Types.CreateVehicleError
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTFleetWise.Types.CreateVehicleError where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An HTTP error resulting from creating a vehicle.
--
-- /See:/ 'newCreateVehicleError' smart constructor.
data CreateVehicleError = CreateVehicleError'
  { -- | A description of the HTTP error.
    message :: Prelude.Maybe Prelude.Text,
    -- | An HTTP error code.
    code :: Prelude.Maybe Prelude.Text,
    -- | The ID of the vehicle with the error.
    vehicleName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVehicleError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'createVehicleError_message' - A description of the HTTP error.
--
-- 'code', 'createVehicleError_code' - An HTTP error code.
--
-- 'vehicleName', 'createVehicleError_vehicleName' - The ID of the vehicle with the error.
newCreateVehicleError ::
  CreateVehicleError
newCreateVehicleError =
  CreateVehicleError'
    { message = Prelude.Nothing,
      code = Prelude.Nothing,
      vehicleName = Prelude.Nothing
    }

-- | A description of the HTTP error.
createVehicleError_message :: Lens.Lens' CreateVehicleError (Prelude.Maybe Prelude.Text)
createVehicleError_message = Lens.lens (\CreateVehicleError' {message} -> message) (\s@CreateVehicleError' {} a -> s {message = a} :: CreateVehicleError)

-- | An HTTP error code.
createVehicleError_code :: Lens.Lens' CreateVehicleError (Prelude.Maybe Prelude.Text)
createVehicleError_code = Lens.lens (\CreateVehicleError' {code} -> code) (\s@CreateVehicleError' {} a -> s {code = a} :: CreateVehicleError)

-- | The ID of the vehicle with the error.
createVehicleError_vehicleName :: Lens.Lens' CreateVehicleError (Prelude.Maybe Prelude.Text)
createVehicleError_vehicleName = Lens.lens (\CreateVehicleError' {vehicleName} -> vehicleName) (\s@CreateVehicleError' {} a -> s {vehicleName = a} :: CreateVehicleError)

instance Core.FromJSON CreateVehicleError where
  parseJSON =
    Core.withObject
      "CreateVehicleError"
      ( \x ->
          CreateVehicleError'
            Prelude.<$> (x Core..:? "message")
            Prelude.<*> (x Core..:? "code")
            Prelude.<*> (x Core..:? "vehicleName")
      )

instance Prelude.Hashable CreateVehicleError where
  hashWithSalt _salt CreateVehicleError' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` code
      `Prelude.hashWithSalt` vehicleName

instance Prelude.NFData CreateVehicleError where
  rnf CreateVehicleError' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf code
      `Prelude.seq` Prelude.rnf vehicleName

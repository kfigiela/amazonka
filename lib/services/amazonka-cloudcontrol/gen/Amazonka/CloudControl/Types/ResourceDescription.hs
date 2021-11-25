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
-- Module      : Amazonka.CloudControl.Types.ResourceDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudControl.Types.ResourceDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents information about a provisioned resource.
--
-- /See:/ 'newResourceDescription' smart constructor.
data ResourceDescription = ResourceDescription'
  { -- | The primary identifier for the resource.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html Identifying resources>
    -- in the /Amazon Web Services Cloud Control API User Guide/.
    identifier :: Prelude.Maybe Prelude.Text,
    -- | A list of the resource properties and their current values.
    properties :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identifier', 'resourceDescription_identifier' - The primary identifier for the resource.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html Identifying resources>
-- in the /Amazon Web Services Cloud Control API User Guide/.
--
-- 'properties', 'resourceDescription_properties' - A list of the resource properties and their current values.
newResourceDescription ::
  ResourceDescription
newResourceDescription =
  ResourceDescription'
    { identifier = Prelude.Nothing,
      properties = Prelude.Nothing
    }

-- | The primary identifier for the resource.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html Identifying resources>
-- in the /Amazon Web Services Cloud Control API User Guide/.
resourceDescription_identifier :: Lens.Lens' ResourceDescription (Prelude.Maybe Prelude.Text)
resourceDescription_identifier = Lens.lens (\ResourceDescription' {identifier} -> identifier) (\s@ResourceDescription' {} a -> s {identifier = a} :: ResourceDescription)

-- | A list of the resource properties and their current values.
resourceDescription_properties :: Lens.Lens' ResourceDescription (Prelude.Maybe Prelude.Text)
resourceDescription_properties = Lens.lens (\ResourceDescription' {properties} -> properties) (\s@ResourceDescription' {} a -> s {properties = a} :: ResourceDescription) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON ResourceDescription where
  parseJSON =
    Core.withObject
      "ResourceDescription"
      ( \x ->
          ResourceDescription'
            Prelude.<$> (x Core..:? "Identifier")
            Prelude.<*> (x Core..:? "Properties")
      )

instance Prelude.Hashable ResourceDescription

instance Prelude.NFData ResourceDescription
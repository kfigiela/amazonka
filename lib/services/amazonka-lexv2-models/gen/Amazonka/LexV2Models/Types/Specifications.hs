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
-- Module      : Amazonka.LexV2Models.Types.Specifications
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexV2Models.Types.Specifications where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types.SubSlotValueElicitationSetting
import qualified Amazonka.Prelude as Prelude

-- | Subslot specifications.
--
-- /See:/ 'newSpecifications' smart constructor.
data Specifications = Specifications'
  { -- | The unique identifier assigned to the slot type.
    slotTypeId :: Prelude.Text,
    -- | Specifies the elicitation setting details for constituent sub slots of a
    -- composite slot.
    valueElicitationSetting :: SubSlotValueElicitationSetting
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Specifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'slotTypeId', 'specifications_slotTypeId' - The unique identifier assigned to the slot type.
--
-- 'valueElicitationSetting', 'specifications_valueElicitationSetting' - Specifies the elicitation setting details for constituent sub slots of a
-- composite slot.
newSpecifications ::
  -- | 'slotTypeId'
  Prelude.Text ->
  -- | 'valueElicitationSetting'
  SubSlotValueElicitationSetting ->
  Specifications
newSpecifications
  pSlotTypeId_
  pValueElicitationSetting_ =
    Specifications'
      { slotTypeId = pSlotTypeId_,
        valueElicitationSetting = pValueElicitationSetting_
      }

-- | The unique identifier assigned to the slot type.
specifications_slotTypeId :: Lens.Lens' Specifications Prelude.Text
specifications_slotTypeId = Lens.lens (\Specifications' {slotTypeId} -> slotTypeId) (\s@Specifications' {} a -> s {slotTypeId = a} :: Specifications)

-- | Specifies the elicitation setting details for constituent sub slots of a
-- composite slot.
specifications_valueElicitationSetting :: Lens.Lens' Specifications SubSlotValueElicitationSetting
specifications_valueElicitationSetting = Lens.lens (\Specifications' {valueElicitationSetting} -> valueElicitationSetting) (\s@Specifications' {} a -> s {valueElicitationSetting = a} :: Specifications)

instance Core.FromJSON Specifications where
  parseJSON =
    Core.withObject
      "Specifications"
      ( \x ->
          Specifications'
            Prelude.<$> (x Core..: "slotTypeId")
            Prelude.<*> (x Core..: "valueElicitationSetting")
      )

instance Prelude.Hashable Specifications where
  hashWithSalt _salt Specifications' {..} =
    _salt `Prelude.hashWithSalt` slotTypeId
      `Prelude.hashWithSalt` valueElicitationSetting

instance Prelude.NFData Specifications where
  rnf Specifications' {..} =
    Prelude.rnf slotTypeId
      `Prelude.seq` Prelude.rnf valueElicitationSetting

instance Core.ToJSON Specifications where
  toJSON Specifications' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("slotTypeId" Core..= slotTypeId),
            Prelude.Just
              ( "valueElicitationSetting"
                  Core..= valueElicitationSetting
              )
          ]
      )

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
-- Module      : Amazonka.ConnectCases.Types.CaseFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ConnectCases.Types.CaseFilter where

import Amazonka.ConnectCases.Types.FieldFilter
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A filter for cases. Only one value can be provided.
--
-- /See:/ 'newCaseFilter' smart constructor.
data CaseFilter = CaseFilter'
  { -- | A list of fields to filter on.
    field :: Prelude.Maybe FieldFilter,
    -- | Provides \"and all\" filtering.
    andAll :: Prelude.Maybe [CaseFilter],
    not :: Prelude.Maybe CaseFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CaseFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'field', 'caseFilter_field' - A list of fields to filter on.
--
-- 'andAll', 'caseFilter_andAll' - Provides \"and all\" filtering.
--
-- 'not', 'caseFilter_not' - Undocumented member.
newCaseFilter ::
  CaseFilter
newCaseFilter =
  CaseFilter'
    { field = Prelude.Nothing,
      andAll = Prelude.Nothing,
      not = Prelude.Nothing
    }

-- | A list of fields to filter on.
caseFilter_field :: Lens.Lens' CaseFilter (Prelude.Maybe FieldFilter)
caseFilter_field = Lens.lens (\CaseFilter' {field} -> field) (\s@CaseFilter' {} a -> s {field = a} :: CaseFilter)

-- | Provides \"and all\" filtering.
caseFilter_andAll :: Lens.Lens' CaseFilter (Prelude.Maybe [CaseFilter])
caseFilter_andAll = Lens.lens (\CaseFilter' {andAll} -> andAll) (\s@CaseFilter' {} a -> s {andAll = a} :: CaseFilter) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
caseFilter_not :: Lens.Lens' CaseFilter (Prelude.Maybe CaseFilter)
caseFilter_not = Lens.lens (\CaseFilter' {not} -> not) (\s@CaseFilter' {} a -> s {not = a} :: CaseFilter)

instance Prelude.Hashable CaseFilter where
  hashWithSalt _salt CaseFilter' {..} =
    _salt `Prelude.hashWithSalt` field
      `Prelude.hashWithSalt` andAll
      `Prelude.hashWithSalt` not

instance Prelude.NFData CaseFilter where
  rnf CaseFilter' {..} =
    Prelude.rnf field
      `Prelude.seq` Prelude.rnf andAll
      `Prelude.seq` Prelude.rnf not

instance Core.ToJSON CaseFilter where
  toJSON CaseFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("field" Core..=) Prelude.<$> field,
            ("andAll" Core..=) Prelude.<$> andAll,
            ("not" Core..=) Prelude.<$> not
          ]
      )

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
-- Module      : Amazonka.BillingConductor.Types.ListCustomLineItemsFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BillingConductor.Types.ListCustomLineItemsFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A filter that specifies the custom line items and billing groups to
-- retrieve FFLI information.
--
-- /See:/ 'newListCustomLineItemsFilter' smart constructor.
data ListCustomLineItemsFilter = ListCustomLineItemsFilter'
  { -- | A list of custom line item ARNs to retrieve information.
    arns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A list of custom line items to retrieve information.
    names :: Prelude.Maybe (Prelude.NonEmpty (Core.Sensitive Prelude.Text)),
    -- | The billing group Amazon Resource Names (ARNs) to retrieve information.
    billingGroups :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomLineItemsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arns', 'listCustomLineItemsFilter_arns' - A list of custom line item ARNs to retrieve information.
--
-- 'names', 'listCustomLineItemsFilter_names' - A list of custom line items to retrieve information.
--
-- 'billingGroups', 'listCustomLineItemsFilter_billingGroups' - The billing group Amazon Resource Names (ARNs) to retrieve information.
newListCustomLineItemsFilter ::
  ListCustomLineItemsFilter
newListCustomLineItemsFilter =
  ListCustomLineItemsFilter'
    { arns = Prelude.Nothing,
      names = Prelude.Nothing,
      billingGroups = Prelude.Nothing
    }

-- | A list of custom line item ARNs to retrieve information.
listCustomLineItemsFilter_arns :: Lens.Lens' ListCustomLineItemsFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listCustomLineItemsFilter_arns = Lens.lens (\ListCustomLineItemsFilter' {arns} -> arns) (\s@ListCustomLineItemsFilter' {} a -> s {arns = a} :: ListCustomLineItemsFilter) Prelude.. Lens.mapping Lens.coerced

-- | A list of custom line items to retrieve information.
listCustomLineItemsFilter_names :: Lens.Lens' ListCustomLineItemsFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listCustomLineItemsFilter_names = Lens.lens (\ListCustomLineItemsFilter' {names} -> names) (\s@ListCustomLineItemsFilter' {} a -> s {names = a} :: ListCustomLineItemsFilter) Prelude.. Lens.mapping Lens.coerced

-- | The billing group Amazon Resource Names (ARNs) to retrieve information.
listCustomLineItemsFilter_billingGroups :: Lens.Lens' ListCustomLineItemsFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listCustomLineItemsFilter_billingGroups = Lens.lens (\ListCustomLineItemsFilter' {billingGroups} -> billingGroups) (\s@ListCustomLineItemsFilter' {} a -> s {billingGroups = a} :: ListCustomLineItemsFilter) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable ListCustomLineItemsFilter where
  hashWithSalt _salt ListCustomLineItemsFilter' {..} =
    _salt `Prelude.hashWithSalt` arns
      `Prelude.hashWithSalt` names
      `Prelude.hashWithSalt` billingGroups

instance Prelude.NFData ListCustomLineItemsFilter where
  rnf ListCustomLineItemsFilter' {..} =
    Prelude.rnf arns
      `Prelude.seq` Prelude.rnf names
      `Prelude.seq` Prelude.rnf billingGroups

instance Core.ToJSON ListCustomLineItemsFilter where
  toJSON ListCustomLineItemsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Arns" Core..=) Prelude.<$> arns,
            ("Names" Core..=) Prelude.<$> names,
            ("BillingGroups" Core..=) Prelude.<$> billingGroups
          ]
      )

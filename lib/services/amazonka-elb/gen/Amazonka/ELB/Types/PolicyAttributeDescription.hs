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
-- Module      : Amazonka.ELB.Types.PolicyAttributeDescription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ELB.Types.PolicyAttributeDescription where

import qualified Amazonka.Core as Core
import Amazonka.ELB.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a policy attribute.
--
-- /See:/ 'newPolicyAttributeDescription' smart constructor.
data PolicyAttributeDescription = PolicyAttributeDescription'
  { -- | The value of the attribute.
    attributeValue :: Prelude.Maybe Prelude.Text,
    -- | The name of the attribute.
    attributeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PolicyAttributeDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeValue', 'policyAttributeDescription_attributeValue' - The value of the attribute.
--
-- 'attributeName', 'policyAttributeDescription_attributeName' - The name of the attribute.
newPolicyAttributeDescription ::
  PolicyAttributeDescription
newPolicyAttributeDescription =
  PolicyAttributeDescription'
    { attributeValue =
        Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | The value of the attribute.
policyAttributeDescription_attributeValue :: Lens.Lens' PolicyAttributeDescription (Prelude.Maybe Prelude.Text)
policyAttributeDescription_attributeValue = Lens.lens (\PolicyAttributeDescription' {attributeValue} -> attributeValue) (\s@PolicyAttributeDescription' {} a -> s {attributeValue = a} :: PolicyAttributeDescription)

-- | The name of the attribute.
policyAttributeDescription_attributeName :: Lens.Lens' PolicyAttributeDescription (Prelude.Maybe Prelude.Text)
policyAttributeDescription_attributeName = Lens.lens (\PolicyAttributeDescription' {attributeName} -> attributeName) (\s@PolicyAttributeDescription' {} a -> s {attributeName = a} :: PolicyAttributeDescription)

instance Core.FromXML PolicyAttributeDescription where
  parseXML x =
    PolicyAttributeDescription'
      Prelude.<$> (x Core..@? "AttributeValue")
      Prelude.<*> (x Core..@? "AttributeName")

instance Prelude.Hashable PolicyAttributeDescription where
  hashWithSalt _salt PolicyAttributeDescription' {..} =
    _salt `Prelude.hashWithSalt` attributeValue
      `Prelude.hashWithSalt` attributeName

instance Prelude.NFData PolicyAttributeDescription where
  rnf PolicyAttributeDescription' {..} =
    Prelude.rnf attributeValue
      `Prelude.seq` Prelude.rnf attributeName

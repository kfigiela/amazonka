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
-- Module      : Amazonka.ElastiCache.Types.ParameterNameValue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Types.ParameterNameValue where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a name-value pair that is used to update the value of a
-- parameter.
--
-- /See:/ 'newParameterNameValue' smart constructor.
data ParameterNameValue = ParameterNameValue'
  { -- | The value of the parameter.
    parameterValue :: Prelude.Maybe Prelude.Text,
    -- | The name of the parameter.
    parameterName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ParameterNameValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterValue', 'parameterNameValue_parameterValue' - The value of the parameter.
--
-- 'parameterName', 'parameterNameValue_parameterName' - The name of the parameter.
newParameterNameValue ::
  ParameterNameValue
newParameterNameValue =
  ParameterNameValue'
    { parameterValue =
        Prelude.Nothing,
      parameterName = Prelude.Nothing
    }

-- | The value of the parameter.
parameterNameValue_parameterValue :: Lens.Lens' ParameterNameValue (Prelude.Maybe Prelude.Text)
parameterNameValue_parameterValue = Lens.lens (\ParameterNameValue' {parameterValue} -> parameterValue) (\s@ParameterNameValue' {} a -> s {parameterValue = a} :: ParameterNameValue)

-- | The name of the parameter.
parameterNameValue_parameterName :: Lens.Lens' ParameterNameValue (Prelude.Maybe Prelude.Text)
parameterNameValue_parameterName = Lens.lens (\ParameterNameValue' {parameterName} -> parameterName) (\s@ParameterNameValue' {} a -> s {parameterName = a} :: ParameterNameValue)

instance Prelude.Hashable ParameterNameValue where
  hashWithSalt _salt ParameterNameValue' {..} =
    _salt `Prelude.hashWithSalt` parameterValue
      `Prelude.hashWithSalt` parameterName

instance Prelude.NFData ParameterNameValue where
  rnf ParameterNameValue' {..} =
    Prelude.rnf parameterValue
      `Prelude.seq` Prelude.rnf parameterName

instance Core.ToQuery ParameterNameValue where
  toQuery ParameterNameValue' {..} =
    Prelude.mconcat
      [ "ParameterValue" Core.=: parameterValue,
        "ParameterName" Core.=: parameterName
      ]

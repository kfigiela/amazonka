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
-- Module      : Amazonka.IotTwinMaker.Types.DataConnector
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IotTwinMaker.Types.DataConnector where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types.LambdaFunction
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The data connector.
--
-- /See:/ 'newDataConnector' smart constructor.
data DataConnector = DataConnector'
  { -- | The Lambda function associated with this data connector.
    lambda :: Prelude.Maybe LambdaFunction,
    -- | A Boolean value that specifies whether the data connector is native to
    -- IoT TwinMaker.
    isNative :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataConnector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lambda', 'dataConnector_lambda' - The Lambda function associated with this data connector.
--
-- 'isNative', 'dataConnector_isNative' - A Boolean value that specifies whether the data connector is native to
-- IoT TwinMaker.
newDataConnector ::
  DataConnector
newDataConnector =
  DataConnector'
    { lambda = Prelude.Nothing,
      isNative = Prelude.Nothing
    }

-- | The Lambda function associated with this data connector.
dataConnector_lambda :: Lens.Lens' DataConnector (Prelude.Maybe LambdaFunction)
dataConnector_lambda = Lens.lens (\DataConnector' {lambda} -> lambda) (\s@DataConnector' {} a -> s {lambda = a} :: DataConnector)

-- | A Boolean value that specifies whether the data connector is native to
-- IoT TwinMaker.
dataConnector_isNative :: Lens.Lens' DataConnector (Prelude.Maybe Prelude.Bool)
dataConnector_isNative = Lens.lens (\DataConnector' {isNative} -> isNative) (\s@DataConnector' {} a -> s {isNative = a} :: DataConnector)

instance Core.FromJSON DataConnector where
  parseJSON =
    Core.withObject
      "DataConnector"
      ( \x ->
          DataConnector'
            Prelude.<$> (x Core..:? "lambda")
            Prelude.<*> (x Core..:? "isNative")
      )

instance Prelude.Hashable DataConnector where
  hashWithSalt _salt DataConnector' {..} =
    _salt `Prelude.hashWithSalt` lambda
      `Prelude.hashWithSalt` isNative

instance Prelude.NFData DataConnector where
  rnf DataConnector' {..} =
    Prelude.rnf lambda
      `Prelude.seq` Prelude.rnf isNative

instance Core.ToJSON DataConnector where
  toJSON DataConnector' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("lambda" Core..=) Prelude.<$> lambda,
            ("isNative" Core..=) Prelude.<$> isNative
          ]
      )

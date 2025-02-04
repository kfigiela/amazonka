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
-- Module      : Amazonka.IotTwinMaker.Types.BatchPutPropertyError
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IotTwinMaker.Types.BatchPutPropertyError where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types.PropertyValueEntry
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An error returned by the @BatchPutProperty@ action.
--
-- /See:/ 'newBatchPutPropertyError' smart constructor.
data BatchPutPropertyError = BatchPutPropertyError'
  { -- | An object that contains information about errors returned by the
    -- @BatchPutProperty@ action.
    entry :: PropertyValueEntry,
    -- | The error code.
    errorCode :: Prelude.Text,
    -- | The error message.
    errorMessage :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchPutPropertyError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entry', 'batchPutPropertyError_entry' - An object that contains information about errors returned by the
-- @BatchPutProperty@ action.
--
-- 'errorCode', 'batchPutPropertyError_errorCode' - The error code.
--
-- 'errorMessage', 'batchPutPropertyError_errorMessage' - The error message.
newBatchPutPropertyError ::
  -- | 'entry'
  PropertyValueEntry ->
  -- | 'errorCode'
  Prelude.Text ->
  -- | 'errorMessage'
  Prelude.Text ->
  BatchPutPropertyError
newBatchPutPropertyError
  pEntry_
  pErrorCode_
  pErrorMessage_ =
    BatchPutPropertyError'
      { entry = pEntry_,
        errorCode = pErrorCode_,
        errorMessage = pErrorMessage_
      }

-- | An object that contains information about errors returned by the
-- @BatchPutProperty@ action.
batchPutPropertyError_entry :: Lens.Lens' BatchPutPropertyError PropertyValueEntry
batchPutPropertyError_entry = Lens.lens (\BatchPutPropertyError' {entry} -> entry) (\s@BatchPutPropertyError' {} a -> s {entry = a} :: BatchPutPropertyError)

-- | The error code.
batchPutPropertyError_errorCode :: Lens.Lens' BatchPutPropertyError Prelude.Text
batchPutPropertyError_errorCode = Lens.lens (\BatchPutPropertyError' {errorCode} -> errorCode) (\s@BatchPutPropertyError' {} a -> s {errorCode = a} :: BatchPutPropertyError)

-- | The error message.
batchPutPropertyError_errorMessage :: Lens.Lens' BatchPutPropertyError Prelude.Text
batchPutPropertyError_errorMessage = Lens.lens (\BatchPutPropertyError' {errorMessage} -> errorMessage) (\s@BatchPutPropertyError' {} a -> s {errorMessage = a} :: BatchPutPropertyError)

instance Core.FromJSON BatchPutPropertyError where
  parseJSON =
    Core.withObject
      "BatchPutPropertyError"
      ( \x ->
          BatchPutPropertyError'
            Prelude.<$> (x Core..: "entry")
            Prelude.<*> (x Core..: "errorCode")
            Prelude.<*> (x Core..: "errorMessage")
      )

instance Prelude.Hashable BatchPutPropertyError where
  hashWithSalt _salt BatchPutPropertyError' {..} =
    _salt `Prelude.hashWithSalt` entry
      `Prelude.hashWithSalt` errorCode
      `Prelude.hashWithSalt` errorMessage

instance Prelude.NFData BatchPutPropertyError where
  rnf BatchPutPropertyError' {..} =
    Prelude.rnf entry
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf errorMessage

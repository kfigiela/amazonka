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
-- Module      : Amazonka.M2.Types.BatchJobIdentifier
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.M2.Types.BatchJobIdentifier where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.M2.Types.FileBatchJobIdentifier
import Amazonka.M2.Types.ScriptBatchJobIdentifier
import qualified Amazonka.Prelude as Prelude

-- | Identifies a specific batch job.
--
-- /See:/ 'newBatchJobIdentifier' smart constructor.
data BatchJobIdentifier = BatchJobIdentifier'
  { -- | A batch job identifier in which the batch job to run is identified by
    -- the script name.
    scriptBatchJobIdentifier :: Prelude.Maybe ScriptBatchJobIdentifier,
    -- | Specifies a file associated with a specific batch job.
    fileBatchJobIdentifier :: Prelude.Maybe FileBatchJobIdentifier
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchJobIdentifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scriptBatchJobIdentifier', 'batchJobIdentifier_scriptBatchJobIdentifier' - A batch job identifier in which the batch job to run is identified by
-- the script name.
--
-- 'fileBatchJobIdentifier', 'batchJobIdentifier_fileBatchJobIdentifier' - Specifies a file associated with a specific batch job.
newBatchJobIdentifier ::
  BatchJobIdentifier
newBatchJobIdentifier =
  BatchJobIdentifier'
    { scriptBatchJobIdentifier =
        Prelude.Nothing,
      fileBatchJobIdentifier = Prelude.Nothing
    }

-- | A batch job identifier in which the batch job to run is identified by
-- the script name.
batchJobIdentifier_scriptBatchJobIdentifier :: Lens.Lens' BatchJobIdentifier (Prelude.Maybe ScriptBatchJobIdentifier)
batchJobIdentifier_scriptBatchJobIdentifier = Lens.lens (\BatchJobIdentifier' {scriptBatchJobIdentifier} -> scriptBatchJobIdentifier) (\s@BatchJobIdentifier' {} a -> s {scriptBatchJobIdentifier = a} :: BatchJobIdentifier)

-- | Specifies a file associated with a specific batch job.
batchJobIdentifier_fileBatchJobIdentifier :: Lens.Lens' BatchJobIdentifier (Prelude.Maybe FileBatchJobIdentifier)
batchJobIdentifier_fileBatchJobIdentifier = Lens.lens (\BatchJobIdentifier' {fileBatchJobIdentifier} -> fileBatchJobIdentifier) (\s@BatchJobIdentifier' {} a -> s {fileBatchJobIdentifier = a} :: BatchJobIdentifier)

instance Prelude.Hashable BatchJobIdentifier where
  hashWithSalt _salt BatchJobIdentifier' {..} =
    _salt
      `Prelude.hashWithSalt` scriptBatchJobIdentifier
      `Prelude.hashWithSalt` fileBatchJobIdentifier

instance Prelude.NFData BatchJobIdentifier where
  rnf BatchJobIdentifier' {..} =
    Prelude.rnf scriptBatchJobIdentifier
      `Prelude.seq` Prelude.rnf fileBatchJobIdentifier

instance Core.ToJSON BatchJobIdentifier where
  toJSON BatchJobIdentifier' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("scriptBatchJobIdentifier" Core..=)
              Prelude.<$> scriptBatchJobIdentifier,
            ("fileBatchJobIdentifier" Core..=)
              Prelude.<$> fileBatchJobIdentifier
          ]
      )

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
-- Module      : Amazonka.CloudDirectory.Types.BatchDeleteObjectResponse
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudDirectory.Types.BatchDeleteObjectResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the output of a DeleteObject response operation.
--
-- /See:/ 'newBatchDeleteObjectResponse' smart constructor.
data BatchDeleteObjectResponse = BatchDeleteObjectResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteObjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newBatchDeleteObjectResponse ::
  BatchDeleteObjectResponse
newBatchDeleteObjectResponse =
  BatchDeleteObjectResponse'

instance Core.FromJSON BatchDeleteObjectResponse where
  parseJSON =
    Core.withObject
      "BatchDeleteObjectResponse"
      (\x -> Prelude.pure BatchDeleteObjectResponse')

instance Prelude.Hashable BatchDeleteObjectResponse where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData BatchDeleteObjectResponse where
  rnf _ = ()

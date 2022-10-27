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
-- Module      : Amazonka.Transfer.Types.EfsFileLocation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transfer.Types.EfsFileLocation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Reserved for future use.
--
-- /See:/ 'newEfsFileLocation' smart constructor.
data EfsFileLocation = EfsFileLocation'
  { -- | The pathname for the folder being used by a workflow.
    path :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the file system, assigned by Amazon EFS.
    fileSystemId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EfsFileLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'path', 'efsFileLocation_path' - The pathname for the folder being used by a workflow.
--
-- 'fileSystemId', 'efsFileLocation_fileSystemId' - The identifier of the file system, assigned by Amazon EFS.
newEfsFileLocation ::
  EfsFileLocation
newEfsFileLocation =
  EfsFileLocation'
    { path = Prelude.Nothing,
      fileSystemId = Prelude.Nothing
    }

-- | The pathname for the folder being used by a workflow.
efsFileLocation_path :: Lens.Lens' EfsFileLocation (Prelude.Maybe Prelude.Text)
efsFileLocation_path = Lens.lens (\EfsFileLocation' {path} -> path) (\s@EfsFileLocation' {} a -> s {path = a} :: EfsFileLocation)

-- | The identifier of the file system, assigned by Amazon EFS.
efsFileLocation_fileSystemId :: Lens.Lens' EfsFileLocation (Prelude.Maybe Prelude.Text)
efsFileLocation_fileSystemId = Lens.lens (\EfsFileLocation' {fileSystemId} -> fileSystemId) (\s@EfsFileLocation' {} a -> s {fileSystemId = a} :: EfsFileLocation)

instance Core.FromJSON EfsFileLocation where
  parseJSON =
    Core.withObject
      "EfsFileLocation"
      ( \x ->
          EfsFileLocation'
            Prelude.<$> (x Core..:? "Path")
            Prelude.<*> (x Core..:? "FileSystemId")
      )

instance Prelude.Hashable EfsFileLocation where
  hashWithSalt _salt EfsFileLocation' {..} =
    _salt `Prelude.hashWithSalt` path
      `Prelude.hashWithSalt` fileSystemId

instance Prelude.NFData EfsFileLocation where
  rnf EfsFileLocation' {..} =
    Prelude.rnf path
      `Prelude.seq` Prelude.rnf fileSystemId

instance Core.ToJSON EfsFileLocation where
  toJSON EfsFileLocation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Path" Core..=) Prelude.<$> path,
            ("FileSystemId" Core..=) Prelude.<$> fileSystemId
          ]
      )

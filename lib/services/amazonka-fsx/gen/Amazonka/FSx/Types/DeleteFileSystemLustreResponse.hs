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
-- Module      : Amazonka.FSx.Types.DeleteFileSystemLustreResponse
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.DeleteFileSystemLustreResponse where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The response object for the Amazon FSx for Lustre file system being
-- deleted in the @DeleteFileSystem@ operation.
--
-- /See:/ 'newDeleteFileSystemLustreResponse' smart constructor.
data DeleteFileSystemLustreResponse = DeleteFileSystemLustreResponse'
  { -- | The set of tags applied to the final backup.
    finalBackupTags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The ID of the final backup for this file system.
    finalBackupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFileSystemLustreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'finalBackupTags', 'deleteFileSystemLustreResponse_finalBackupTags' - The set of tags applied to the final backup.
--
-- 'finalBackupId', 'deleteFileSystemLustreResponse_finalBackupId' - The ID of the final backup for this file system.
newDeleteFileSystemLustreResponse ::
  DeleteFileSystemLustreResponse
newDeleteFileSystemLustreResponse =
  DeleteFileSystemLustreResponse'
    { finalBackupTags =
        Prelude.Nothing,
      finalBackupId = Prelude.Nothing
    }

-- | The set of tags applied to the final backup.
deleteFileSystemLustreResponse_finalBackupTags :: Lens.Lens' DeleteFileSystemLustreResponse (Prelude.Maybe (Prelude.NonEmpty Tag))
deleteFileSystemLustreResponse_finalBackupTags = Lens.lens (\DeleteFileSystemLustreResponse' {finalBackupTags} -> finalBackupTags) (\s@DeleteFileSystemLustreResponse' {} a -> s {finalBackupTags = a} :: DeleteFileSystemLustreResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the final backup for this file system.
deleteFileSystemLustreResponse_finalBackupId :: Lens.Lens' DeleteFileSystemLustreResponse (Prelude.Maybe Prelude.Text)
deleteFileSystemLustreResponse_finalBackupId = Lens.lens (\DeleteFileSystemLustreResponse' {finalBackupId} -> finalBackupId) (\s@DeleteFileSystemLustreResponse' {} a -> s {finalBackupId = a} :: DeleteFileSystemLustreResponse)

instance Core.FromJSON DeleteFileSystemLustreResponse where
  parseJSON =
    Core.withObject
      "DeleteFileSystemLustreResponse"
      ( \x ->
          DeleteFileSystemLustreResponse'
            Prelude.<$> (x Core..:? "FinalBackupTags")
            Prelude.<*> (x Core..:? "FinalBackupId")
      )

instance
  Prelude.Hashable
    DeleteFileSystemLustreResponse
  where
  hashWithSalt
    _salt
    DeleteFileSystemLustreResponse' {..} =
      _salt `Prelude.hashWithSalt` finalBackupTags
        `Prelude.hashWithSalt` finalBackupId

instance
  Prelude.NFData
    DeleteFileSystemLustreResponse
  where
  rnf DeleteFileSystemLustreResponse' {..} =
    Prelude.rnf finalBackupTags
      `Prelude.seq` Prelude.rnf finalBackupId

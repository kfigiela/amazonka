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
-- Module      : Amazonka.FSx.Types.DeleteFileSystemLustreConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.DeleteFileSystemLustreConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration object for the Amazon FSx for Lustre file system being
-- deleted in the @DeleteFileSystem@ operation.
--
-- /See:/ 'newDeleteFileSystemLustreConfiguration' smart constructor.
data DeleteFileSystemLustreConfiguration = DeleteFileSystemLustreConfiguration'
  { -- | Set @SkipFinalBackup@ to false if you want to take a final backup of the
    -- file system you are deleting. By default, Amazon FSx will not take a
    -- final backup on your behalf when the @DeleteFileSystem@ operation is
    -- invoked. (Default = true)
    --
    -- The @fsx:CreateBackup@ permission is required if you set
    -- @SkipFinalBackup@ to @false@ in order to delete the file system and take
    -- a final backup.
    skipFinalBackup :: Prelude.Maybe Prelude.Bool,
    -- | Use if @SkipFinalBackup@ is set to @false@, and you want to apply an
    -- array of tags to the final backup. If you have set the file system
    -- property @CopyTagsToBackups@ to true, and you specify one or more
    -- @FinalBackupTags@ when deleting a file system, Amazon FSx will not copy
    -- any existing file system tags to the backup.
    finalBackupTags :: Prelude.Maybe (Prelude.NonEmpty Tag)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFileSystemLustreConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'skipFinalBackup', 'deleteFileSystemLustreConfiguration_skipFinalBackup' - Set @SkipFinalBackup@ to false if you want to take a final backup of the
-- file system you are deleting. By default, Amazon FSx will not take a
-- final backup on your behalf when the @DeleteFileSystem@ operation is
-- invoked. (Default = true)
--
-- The @fsx:CreateBackup@ permission is required if you set
-- @SkipFinalBackup@ to @false@ in order to delete the file system and take
-- a final backup.
--
-- 'finalBackupTags', 'deleteFileSystemLustreConfiguration_finalBackupTags' - Use if @SkipFinalBackup@ is set to @false@, and you want to apply an
-- array of tags to the final backup. If you have set the file system
-- property @CopyTagsToBackups@ to true, and you specify one or more
-- @FinalBackupTags@ when deleting a file system, Amazon FSx will not copy
-- any existing file system tags to the backup.
newDeleteFileSystemLustreConfiguration ::
  DeleteFileSystemLustreConfiguration
newDeleteFileSystemLustreConfiguration =
  DeleteFileSystemLustreConfiguration'
    { skipFinalBackup =
        Prelude.Nothing,
      finalBackupTags = Prelude.Nothing
    }

-- | Set @SkipFinalBackup@ to false if you want to take a final backup of the
-- file system you are deleting. By default, Amazon FSx will not take a
-- final backup on your behalf when the @DeleteFileSystem@ operation is
-- invoked. (Default = true)
--
-- The @fsx:CreateBackup@ permission is required if you set
-- @SkipFinalBackup@ to @false@ in order to delete the file system and take
-- a final backup.
deleteFileSystemLustreConfiguration_skipFinalBackup :: Lens.Lens' DeleteFileSystemLustreConfiguration (Prelude.Maybe Prelude.Bool)
deleteFileSystemLustreConfiguration_skipFinalBackup = Lens.lens (\DeleteFileSystemLustreConfiguration' {skipFinalBackup} -> skipFinalBackup) (\s@DeleteFileSystemLustreConfiguration' {} a -> s {skipFinalBackup = a} :: DeleteFileSystemLustreConfiguration)

-- | Use if @SkipFinalBackup@ is set to @false@, and you want to apply an
-- array of tags to the final backup. If you have set the file system
-- property @CopyTagsToBackups@ to true, and you specify one or more
-- @FinalBackupTags@ when deleting a file system, Amazon FSx will not copy
-- any existing file system tags to the backup.
deleteFileSystemLustreConfiguration_finalBackupTags :: Lens.Lens' DeleteFileSystemLustreConfiguration (Prelude.Maybe (Prelude.NonEmpty Tag))
deleteFileSystemLustreConfiguration_finalBackupTags = Lens.lens (\DeleteFileSystemLustreConfiguration' {finalBackupTags} -> finalBackupTags) (\s@DeleteFileSystemLustreConfiguration' {} a -> s {finalBackupTags = a} :: DeleteFileSystemLustreConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    DeleteFileSystemLustreConfiguration
  where
  hashWithSalt
    _salt
    DeleteFileSystemLustreConfiguration' {..} =
      _salt `Prelude.hashWithSalt` skipFinalBackup
        `Prelude.hashWithSalt` finalBackupTags

instance
  Prelude.NFData
    DeleteFileSystemLustreConfiguration
  where
  rnf DeleteFileSystemLustreConfiguration' {..} =
    Prelude.rnf skipFinalBackup
      `Prelude.seq` Prelude.rnf finalBackupTags

instance
  Core.ToJSON
    DeleteFileSystemLustreConfiguration
  where
  toJSON DeleteFileSystemLustreConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SkipFinalBackup" Core..=)
              Prelude.<$> skipFinalBackup,
            ("FinalBackupTags" Core..=)
              Prelude.<$> finalBackupTags
          ]
      )

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
-- Module      : Amazonka.FSx.Types.DataRepositoryTask
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.DataRepositoryTask where

import qualified Amazonka.Core as Core
import Amazonka.FSx.Types.CompletionReport
import Amazonka.FSx.Types.DataRepositoryTaskFailureDetails
import Amazonka.FSx.Types.DataRepositoryTaskLifecycle
import Amazonka.FSx.Types.DataRepositoryTaskStatus
import Amazonka.FSx.Types.DataRepositoryTaskType
import Amazonka.FSx.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A description of the data repository task. You use data repository tasks
-- to perform bulk transfer operations between an Amazon FSx for Lustre
-- file system and a linked data repository. An Amazon File Cache resource
-- uses a task to automatically release files from the cache.
--
-- /See:/ 'newDataRepositoryTask' smart constructor.
data DataRepositoryTask = DataRepositoryTask'
  { tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | Specifies the amount of data to release, in GiB, by an Amazon File Cache
    -- AUTO_RELEASE_DATA task that automatically releases files from the cache.
    capacityToRelease :: Prelude.Maybe Prelude.Natural,
    -- | The globally unique ID of the file system.
    fileSystemId :: Prelude.Maybe Prelude.Text,
    -- | Provides the status of the number of files that the task has processed
    -- successfully and failed to process.
    status :: Prelude.Maybe DataRepositoryTaskStatus,
    -- | The time the system completed processing the task, populated after the
    -- task is complete.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The system-generated, unique ID of the cache.
    fileCacheId :: Prelude.Maybe Prelude.Text,
    -- | Failure message describing why the task failed, it is populated only
    -- when @Lifecycle@ is set to @FAILED@.
    failureDetails :: Prelude.Maybe DataRepositoryTaskFailureDetails,
    report :: Prelude.Maybe CompletionReport,
    -- | An array of paths that specify the data for the data repository task to
    -- process. For example, in an EXPORT_TO_REPOSITORY task, the paths specify
    -- which data to export to the linked data repository.
    --
    -- (Default) If @Paths@ is not specified, Amazon FSx uses the file system
    -- root directory.
    paths :: Prelude.Maybe [Prelude.Text],
    resourceARN :: Prelude.Maybe Prelude.Text,
    -- | The time the system began processing the task.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The system-generated, unique 17-digit ID of the data repository task.
    taskId :: Prelude.Text,
    -- | The lifecycle status of the data repository task, as follows:
    --
    -- -   @PENDING@ - The task has not started.
    --
    -- -   @EXECUTING@ - The task is in process.
    --
    -- -   @FAILED@ - The task was not able to be completed. For example, there
    --     may be files the task failed to process. The
    --     DataRepositoryTaskFailureDetails property provides more information
    --     about task failures.
    --
    -- -   @SUCCEEDED@ - The task has completed successfully.
    --
    -- -   @CANCELED@ - The task was canceled and it did not complete.
    --
    -- -   @CANCELING@ - The task is in process of being canceled.
    --
    -- You cannot delete an FSx for Lustre file system if there are data
    -- repository tasks for the file system in the @PENDING@ or @EXECUTING@
    -- states. Please retry when the data repository task is finished (with a
    -- status of @CANCELED@, @SUCCEEDED@, or @FAILED@). You can use the
    -- DescribeDataRepositoryTask action to monitor the task status. Contact
    -- the FSx team if you need to delete your file system immediately.
    lifecycle :: DataRepositoryTaskLifecycle,
    -- | The type of data repository task.
    --
    -- -   @EXPORT_TO_REPOSITORY@ tasks export from your Amazon FSx for Lustre
    --     file system to a linked data repository.
    --
    -- -   @IMPORT_METADATA_FROM_REPOSITORY@ tasks import metadata changes from
    --     a linked S3 bucket to your Amazon FSx for Lustre file system.
    --
    -- -   @AUTO_RELEASE_DATA@ tasks automatically release files from an Amazon
    --     File Cache resource.
    type' :: DataRepositoryTaskType,
    creationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataRepositoryTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'dataRepositoryTask_tags' - Undocumented member.
--
-- 'capacityToRelease', 'dataRepositoryTask_capacityToRelease' - Specifies the amount of data to release, in GiB, by an Amazon File Cache
-- AUTO_RELEASE_DATA task that automatically releases files from the cache.
--
-- 'fileSystemId', 'dataRepositoryTask_fileSystemId' - The globally unique ID of the file system.
--
-- 'status', 'dataRepositoryTask_status' - Provides the status of the number of files that the task has processed
-- successfully and failed to process.
--
-- 'endTime', 'dataRepositoryTask_endTime' - The time the system completed processing the task, populated after the
-- task is complete.
--
-- 'fileCacheId', 'dataRepositoryTask_fileCacheId' - The system-generated, unique ID of the cache.
--
-- 'failureDetails', 'dataRepositoryTask_failureDetails' - Failure message describing why the task failed, it is populated only
-- when @Lifecycle@ is set to @FAILED@.
--
-- 'report', 'dataRepositoryTask_report' - Undocumented member.
--
-- 'paths', 'dataRepositoryTask_paths' - An array of paths that specify the data for the data repository task to
-- process. For example, in an EXPORT_TO_REPOSITORY task, the paths specify
-- which data to export to the linked data repository.
--
-- (Default) If @Paths@ is not specified, Amazon FSx uses the file system
-- root directory.
--
-- 'resourceARN', 'dataRepositoryTask_resourceARN' - Undocumented member.
--
-- 'startTime', 'dataRepositoryTask_startTime' - The time the system began processing the task.
--
-- 'taskId', 'dataRepositoryTask_taskId' - The system-generated, unique 17-digit ID of the data repository task.
--
-- 'lifecycle', 'dataRepositoryTask_lifecycle' - The lifecycle status of the data repository task, as follows:
--
-- -   @PENDING@ - The task has not started.
--
-- -   @EXECUTING@ - The task is in process.
--
-- -   @FAILED@ - The task was not able to be completed. For example, there
--     may be files the task failed to process. The
--     DataRepositoryTaskFailureDetails property provides more information
--     about task failures.
--
-- -   @SUCCEEDED@ - The task has completed successfully.
--
-- -   @CANCELED@ - The task was canceled and it did not complete.
--
-- -   @CANCELING@ - The task is in process of being canceled.
--
-- You cannot delete an FSx for Lustre file system if there are data
-- repository tasks for the file system in the @PENDING@ or @EXECUTING@
-- states. Please retry when the data repository task is finished (with a
-- status of @CANCELED@, @SUCCEEDED@, or @FAILED@). You can use the
-- DescribeDataRepositoryTask action to monitor the task status. Contact
-- the FSx team if you need to delete your file system immediately.
--
-- 'type'', 'dataRepositoryTask_type' - The type of data repository task.
--
-- -   @EXPORT_TO_REPOSITORY@ tasks export from your Amazon FSx for Lustre
--     file system to a linked data repository.
--
-- -   @IMPORT_METADATA_FROM_REPOSITORY@ tasks import metadata changes from
--     a linked S3 bucket to your Amazon FSx for Lustre file system.
--
-- -   @AUTO_RELEASE_DATA@ tasks automatically release files from an Amazon
--     File Cache resource.
--
-- 'creationTime', 'dataRepositoryTask_creationTime' - Undocumented member.
newDataRepositoryTask ::
  -- | 'taskId'
  Prelude.Text ->
  -- | 'lifecycle'
  DataRepositoryTaskLifecycle ->
  -- | 'type''
  DataRepositoryTaskType ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  DataRepositoryTask
newDataRepositoryTask
  pTaskId_
  pLifecycle_
  pType_
  pCreationTime_ =
    DataRepositoryTask'
      { tags = Prelude.Nothing,
        capacityToRelease = Prelude.Nothing,
        fileSystemId = Prelude.Nothing,
        status = Prelude.Nothing,
        endTime = Prelude.Nothing,
        fileCacheId = Prelude.Nothing,
        failureDetails = Prelude.Nothing,
        report = Prelude.Nothing,
        paths = Prelude.Nothing,
        resourceARN = Prelude.Nothing,
        startTime = Prelude.Nothing,
        taskId = pTaskId_,
        lifecycle = pLifecycle_,
        type' = pType_,
        creationTime = Core._Time Lens.# pCreationTime_
      }

-- | Undocumented member.
dataRepositoryTask_tags :: Lens.Lens' DataRepositoryTask (Prelude.Maybe (Prelude.NonEmpty Tag))
dataRepositoryTask_tags = Lens.lens (\DataRepositoryTask' {tags} -> tags) (\s@DataRepositoryTask' {} a -> s {tags = a} :: DataRepositoryTask) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the amount of data to release, in GiB, by an Amazon File Cache
-- AUTO_RELEASE_DATA task that automatically releases files from the cache.
dataRepositoryTask_capacityToRelease :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.Natural)
dataRepositoryTask_capacityToRelease = Lens.lens (\DataRepositoryTask' {capacityToRelease} -> capacityToRelease) (\s@DataRepositoryTask' {} a -> s {capacityToRelease = a} :: DataRepositoryTask)

-- | The globally unique ID of the file system.
dataRepositoryTask_fileSystemId :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.Text)
dataRepositoryTask_fileSystemId = Lens.lens (\DataRepositoryTask' {fileSystemId} -> fileSystemId) (\s@DataRepositoryTask' {} a -> s {fileSystemId = a} :: DataRepositoryTask)

-- | Provides the status of the number of files that the task has processed
-- successfully and failed to process.
dataRepositoryTask_status :: Lens.Lens' DataRepositoryTask (Prelude.Maybe DataRepositoryTaskStatus)
dataRepositoryTask_status = Lens.lens (\DataRepositoryTask' {status} -> status) (\s@DataRepositoryTask' {} a -> s {status = a} :: DataRepositoryTask)

-- | The time the system completed processing the task, populated after the
-- task is complete.
dataRepositoryTask_endTime :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.UTCTime)
dataRepositoryTask_endTime = Lens.lens (\DataRepositoryTask' {endTime} -> endTime) (\s@DataRepositoryTask' {} a -> s {endTime = a} :: DataRepositoryTask) Prelude.. Lens.mapping Core._Time

-- | The system-generated, unique ID of the cache.
dataRepositoryTask_fileCacheId :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.Text)
dataRepositoryTask_fileCacheId = Lens.lens (\DataRepositoryTask' {fileCacheId} -> fileCacheId) (\s@DataRepositoryTask' {} a -> s {fileCacheId = a} :: DataRepositoryTask)

-- | Failure message describing why the task failed, it is populated only
-- when @Lifecycle@ is set to @FAILED@.
dataRepositoryTask_failureDetails :: Lens.Lens' DataRepositoryTask (Prelude.Maybe DataRepositoryTaskFailureDetails)
dataRepositoryTask_failureDetails = Lens.lens (\DataRepositoryTask' {failureDetails} -> failureDetails) (\s@DataRepositoryTask' {} a -> s {failureDetails = a} :: DataRepositoryTask)

-- | Undocumented member.
dataRepositoryTask_report :: Lens.Lens' DataRepositoryTask (Prelude.Maybe CompletionReport)
dataRepositoryTask_report = Lens.lens (\DataRepositoryTask' {report} -> report) (\s@DataRepositoryTask' {} a -> s {report = a} :: DataRepositoryTask)

-- | An array of paths that specify the data for the data repository task to
-- process. For example, in an EXPORT_TO_REPOSITORY task, the paths specify
-- which data to export to the linked data repository.
--
-- (Default) If @Paths@ is not specified, Amazon FSx uses the file system
-- root directory.
dataRepositoryTask_paths :: Lens.Lens' DataRepositoryTask (Prelude.Maybe [Prelude.Text])
dataRepositoryTask_paths = Lens.lens (\DataRepositoryTask' {paths} -> paths) (\s@DataRepositoryTask' {} a -> s {paths = a} :: DataRepositoryTask) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
dataRepositoryTask_resourceARN :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.Text)
dataRepositoryTask_resourceARN = Lens.lens (\DataRepositoryTask' {resourceARN} -> resourceARN) (\s@DataRepositoryTask' {} a -> s {resourceARN = a} :: DataRepositoryTask)

-- | The time the system began processing the task.
dataRepositoryTask_startTime :: Lens.Lens' DataRepositoryTask (Prelude.Maybe Prelude.UTCTime)
dataRepositoryTask_startTime = Lens.lens (\DataRepositoryTask' {startTime} -> startTime) (\s@DataRepositoryTask' {} a -> s {startTime = a} :: DataRepositoryTask) Prelude.. Lens.mapping Core._Time

-- | The system-generated, unique 17-digit ID of the data repository task.
dataRepositoryTask_taskId :: Lens.Lens' DataRepositoryTask Prelude.Text
dataRepositoryTask_taskId = Lens.lens (\DataRepositoryTask' {taskId} -> taskId) (\s@DataRepositoryTask' {} a -> s {taskId = a} :: DataRepositoryTask)

-- | The lifecycle status of the data repository task, as follows:
--
-- -   @PENDING@ - The task has not started.
--
-- -   @EXECUTING@ - The task is in process.
--
-- -   @FAILED@ - The task was not able to be completed. For example, there
--     may be files the task failed to process. The
--     DataRepositoryTaskFailureDetails property provides more information
--     about task failures.
--
-- -   @SUCCEEDED@ - The task has completed successfully.
--
-- -   @CANCELED@ - The task was canceled and it did not complete.
--
-- -   @CANCELING@ - The task is in process of being canceled.
--
-- You cannot delete an FSx for Lustre file system if there are data
-- repository tasks for the file system in the @PENDING@ or @EXECUTING@
-- states. Please retry when the data repository task is finished (with a
-- status of @CANCELED@, @SUCCEEDED@, or @FAILED@). You can use the
-- DescribeDataRepositoryTask action to monitor the task status. Contact
-- the FSx team if you need to delete your file system immediately.
dataRepositoryTask_lifecycle :: Lens.Lens' DataRepositoryTask DataRepositoryTaskLifecycle
dataRepositoryTask_lifecycle = Lens.lens (\DataRepositoryTask' {lifecycle} -> lifecycle) (\s@DataRepositoryTask' {} a -> s {lifecycle = a} :: DataRepositoryTask)

-- | The type of data repository task.
--
-- -   @EXPORT_TO_REPOSITORY@ tasks export from your Amazon FSx for Lustre
--     file system to a linked data repository.
--
-- -   @IMPORT_METADATA_FROM_REPOSITORY@ tasks import metadata changes from
--     a linked S3 bucket to your Amazon FSx for Lustre file system.
--
-- -   @AUTO_RELEASE_DATA@ tasks automatically release files from an Amazon
--     File Cache resource.
dataRepositoryTask_type :: Lens.Lens' DataRepositoryTask DataRepositoryTaskType
dataRepositoryTask_type = Lens.lens (\DataRepositoryTask' {type'} -> type') (\s@DataRepositoryTask' {} a -> s {type' = a} :: DataRepositoryTask)

-- | Undocumented member.
dataRepositoryTask_creationTime :: Lens.Lens' DataRepositoryTask Prelude.UTCTime
dataRepositoryTask_creationTime = Lens.lens (\DataRepositoryTask' {creationTime} -> creationTime) (\s@DataRepositoryTask' {} a -> s {creationTime = a} :: DataRepositoryTask) Prelude.. Core._Time

instance Core.FromJSON DataRepositoryTask where
  parseJSON =
    Core.withObject
      "DataRepositoryTask"
      ( \x ->
          DataRepositoryTask'
            Prelude.<$> (x Core..:? "Tags")
            Prelude.<*> (x Core..:? "CapacityToRelease")
            Prelude.<*> (x Core..:? "FileSystemId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "FileCacheId")
            Prelude.<*> (x Core..:? "FailureDetails")
            Prelude.<*> (x Core..:? "Report")
            Prelude.<*> (x Core..:? "Paths" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ResourceARN")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..: "TaskId")
            Prelude.<*> (x Core..: "Lifecycle")
            Prelude.<*> (x Core..: "Type")
            Prelude.<*> (x Core..: "CreationTime")
      )

instance Prelude.Hashable DataRepositoryTask where
  hashWithSalt _salt DataRepositoryTask' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` capacityToRelease
      `Prelude.hashWithSalt` fileSystemId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` fileCacheId
      `Prelude.hashWithSalt` failureDetails
      `Prelude.hashWithSalt` report
      `Prelude.hashWithSalt` paths
      `Prelude.hashWithSalt` resourceARN
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` taskId
      `Prelude.hashWithSalt` lifecycle
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData DataRepositoryTask where
  rnf DataRepositoryTask' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf capacityToRelease
      `Prelude.seq` Prelude.rnf fileSystemId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf fileCacheId
      `Prelude.seq` Prelude.rnf failureDetails
      `Prelude.seq` Prelude.rnf report
      `Prelude.seq` Prelude.rnf paths
      `Prelude.seq` Prelude.rnf resourceARN
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf taskId
      `Prelude.seq` Prelude.rnf lifecycle
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf creationTime

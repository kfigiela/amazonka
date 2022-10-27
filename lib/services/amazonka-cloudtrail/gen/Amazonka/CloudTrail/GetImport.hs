{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudTrail.GetImport
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific import.
module Amazonka.CloudTrail.GetImport
  ( -- * Creating a Request
    GetImport (..),
    newGetImport,

    -- * Request Lenses
    getImport_importId,

    -- * Destructuring the Response
    GetImportResponse (..),
    newGetImportResponse,

    -- * Response Lenses
    getImportResponse_importSource,
    getImportResponse_endEventTime,
    getImportResponse_createdTimestamp,
    getImportResponse_updatedTimestamp,
    getImportResponse_startEventTime,
    getImportResponse_importStatistics,
    getImportResponse_importId,
    getImportResponse_importStatus,
    getImportResponse_destinations,
    getImportResponse_httpStatus,
  )
where

import Amazonka.CloudTrail.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetImport' smart constructor.
data GetImport = GetImport'
  { -- | The ID for the import.
    importId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'importId', 'getImport_importId' - The ID for the import.
newGetImport ::
  -- | 'importId'
  Prelude.Text ->
  GetImport
newGetImport pImportId_ =
  GetImport' {importId = pImportId_}

-- | The ID for the import.
getImport_importId :: Lens.Lens' GetImport Prelude.Text
getImport_importId = Lens.lens (\GetImport' {importId} -> importId) (\s@GetImport' {} a -> s {importId = a} :: GetImport)

instance Core.AWSRequest GetImport where
  type AWSResponse GetImport = GetImportResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImportResponse'
            Prelude.<$> (x Core..?> "ImportSource")
            Prelude.<*> (x Core..?> "EndEventTime")
            Prelude.<*> (x Core..?> "CreatedTimestamp")
            Prelude.<*> (x Core..?> "UpdatedTimestamp")
            Prelude.<*> (x Core..?> "StartEventTime")
            Prelude.<*> (x Core..?> "ImportStatistics")
            Prelude.<*> (x Core..?> "ImportId")
            Prelude.<*> (x Core..?> "ImportStatus")
            Prelude.<*> (x Core..?> "Destinations")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetImport where
  hashWithSalt _salt GetImport' {..} =
    _salt `Prelude.hashWithSalt` importId

instance Prelude.NFData GetImport where
  rnf GetImport' {..} = Prelude.rnf importId

instance Core.ToHeaders GetImport where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetImport" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetImport where
  toJSON GetImport' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ImportId" Core..= importId)]
      )

instance Core.ToPath GetImport where
  toPath = Prelude.const "/"

instance Core.ToQuery GetImport where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetImportResponse' smart constructor.
data GetImportResponse = GetImportResponse'
  { -- | The source S3 bucket.
    importSource :: Prelude.Maybe ImportSource,
    -- | Used with @StartEventTime@ to bound a @StartImport@ request, and limit
    -- imported trail events to only those events logged within a specified
    -- time period.
    endEventTime :: Prelude.Maybe Core.POSIX,
    -- | The timestamp of the import\'s creation.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The timestamp of when the import was updated.
    updatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | Used with @EndEventTime@ to bound a @StartImport@ request, and limit
    -- imported trail events to only those events logged within a specified
    -- time period.
    startEventTime :: Prelude.Maybe Core.POSIX,
    -- | Provides statistics for the import. CloudTrail does not update import
    -- statistics in real-time. Returned values for parameters such as
    -- @EventsCompleted@ may be lower than the actual value, because CloudTrail
    -- updates statistics incrementally over the course of the import.
    importStatistics :: Prelude.Maybe ImportStatistics,
    -- | The ID of the import.
    importId :: Prelude.Maybe Prelude.Text,
    -- | The status of the import.
    importStatus :: Prelude.Maybe ImportStatus,
    -- | The ARN of the destination event data store.
    destinations :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'importSource', 'getImportResponse_importSource' - The source S3 bucket.
--
-- 'endEventTime', 'getImportResponse_endEventTime' - Used with @StartEventTime@ to bound a @StartImport@ request, and limit
-- imported trail events to only those events logged within a specified
-- time period.
--
-- 'createdTimestamp', 'getImportResponse_createdTimestamp' - The timestamp of the import\'s creation.
--
-- 'updatedTimestamp', 'getImportResponse_updatedTimestamp' - The timestamp of when the import was updated.
--
-- 'startEventTime', 'getImportResponse_startEventTime' - Used with @EndEventTime@ to bound a @StartImport@ request, and limit
-- imported trail events to only those events logged within a specified
-- time period.
--
-- 'importStatistics', 'getImportResponse_importStatistics' - Provides statistics for the import. CloudTrail does not update import
-- statistics in real-time. Returned values for parameters such as
-- @EventsCompleted@ may be lower than the actual value, because CloudTrail
-- updates statistics incrementally over the course of the import.
--
-- 'importId', 'getImportResponse_importId' - The ID of the import.
--
-- 'importStatus', 'getImportResponse_importStatus' - The status of the import.
--
-- 'destinations', 'getImportResponse_destinations' - The ARN of the destination event data store.
--
-- 'httpStatus', 'getImportResponse_httpStatus' - The response's http status code.
newGetImportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetImportResponse
newGetImportResponse pHttpStatus_ =
  GetImportResponse'
    { importSource = Prelude.Nothing,
      endEventTime = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      updatedTimestamp = Prelude.Nothing,
      startEventTime = Prelude.Nothing,
      importStatistics = Prelude.Nothing,
      importId = Prelude.Nothing,
      importStatus = Prelude.Nothing,
      destinations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The source S3 bucket.
getImportResponse_importSource :: Lens.Lens' GetImportResponse (Prelude.Maybe ImportSource)
getImportResponse_importSource = Lens.lens (\GetImportResponse' {importSource} -> importSource) (\s@GetImportResponse' {} a -> s {importSource = a} :: GetImportResponse)

-- | Used with @StartEventTime@ to bound a @StartImport@ request, and limit
-- imported trail events to only those events logged within a specified
-- time period.
getImportResponse_endEventTime :: Lens.Lens' GetImportResponse (Prelude.Maybe Prelude.UTCTime)
getImportResponse_endEventTime = Lens.lens (\GetImportResponse' {endEventTime} -> endEventTime) (\s@GetImportResponse' {} a -> s {endEventTime = a} :: GetImportResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp of the import\'s creation.
getImportResponse_createdTimestamp :: Lens.Lens' GetImportResponse (Prelude.Maybe Prelude.UTCTime)
getImportResponse_createdTimestamp = Lens.lens (\GetImportResponse' {createdTimestamp} -> createdTimestamp) (\s@GetImportResponse' {} a -> s {createdTimestamp = a} :: GetImportResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp of when the import was updated.
getImportResponse_updatedTimestamp :: Lens.Lens' GetImportResponse (Prelude.Maybe Prelude.UTCTime)
getImportResponse_updatedTimestamp = Lens.lens (\GetImportResponse' {updatedTimestamp} -> updatedTimestamp) (\s@GetImportResponse' {} a -> s {updatedTimestamp = a} :: GetImportResponse) Prelude.. Lens.mapping Core._Time

-- | Used with @EndEventTime@ to bound a @StartImport@ request, and limit
-- imported trail events to only those events logged within a specified
-- time period.
getImportResponse_startEventTime :: Lens.Lens' GetImportResponse (Prelude.Maybe Prelude.UTCTime)
getImportResponse_startEventTime = Lens.lens (\GetImportResponse' {startEventTime} -> startEventTime) (\s@GetImportResponse' {} a -> s {startEventTime = a} :: GetImportResponse) Prelude.. Lens.mapping Core._Time

-- | Provides statistics for the import. CloudTrail does not update import
-- statistics in real-time. Returned values for parameters such as
-- @EventsCompleted@ may be lower than the actual value, because CloudTrail
-- updates statistics incrementally over the course of the import.
getImportResponse_importStatistics :: Lens.Lens' GetImportResponse (Prelude.Maybe ImportStatistics)
getImportResponse_importStatistics = Lens.lens (\GetImportResponse' {importStatistics} -> importStatistics) (\s@GetImportResponse' {} a -> s {importStatistics = a} :: GetImportResponse)

-- | The ID of the import.
getImportResponse_importId :: Lens.Lens' GetImportResponse (Prelude.Maybe Prelude.Text)
getImportResponse_importId = Lens.lens (\GetImportResponse' {importId} -> importId) (\s@GetImportResponse' {} a -> s {importId = a} :: GetImportResponse)

-- | The status of the import.
getImportResponse_importStatus :: Lens.Lens' GetImportResponse (Prelude.Maybe ImportStatus)
getImportResponse_importStatus = Lens.lens (\GetImportResponse' {importStatus} -> importStatus) (\s@GetImportResponse' {} a -> s {importStatus = a} :: GetImportResponse)

-- | The ARN of the destination event data store.
getImportResponse_destinations :: Lens.Lens' GetImportResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getImportResponse_destinations = Lens.lens (\GetImportResponse' {destinations} -> destinations) (\s@GetImportResponse' {} a -> s {destinations = a} :: GetImportResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getImportResponse_httpStatus :: Lens.Lens' GetImportResponse Prelude.Int
getImportResponse_httpStatus = Lens.lens (\GetImportResponse' {httpStatus} -> httpStatus) (\s@GetImportResponse' {} a -> s {httpStatus = a} :: GetImportResponse)

instance Prelude.NFData GetImportResponse where
  rnf GetImportResponse' {..} =
    Prelude.rnf importSource
      `Prelude.seq` Prelude.rnf endEventTime
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf updatedTimestamp
      `Prelude.seq` Prelude.rnf startEventTime
      `Prelude.seq` Prelude.rnf importStatistics
      `Prelude.seq` Prelude.rnf importId
      `Prelude.seq` Prelude.rnf importStatus
      `Prelude.seq` Prelude.rnf destinations
      `Prelude.seq` Prelude.rnf httpStatus

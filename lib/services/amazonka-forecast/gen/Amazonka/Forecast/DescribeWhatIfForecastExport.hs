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
-- Module      : Amazonka.Forecast.DescribeWhatIfForecastExport
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the what-if forecast export created using the
-- CreateWhatIfForecastExport operation.
--
-- In addition to listing the properties provided in the
-- @CreateWhatIfForecastExport@ request, this operation lists the following
-- properties:
--
-- -   @CreationTime@
--
-- -   @LastModificationTime@
--
-- -   @Message@ - If an error occurred, information about the error.
--
-- -   @Status@
module Amazonka.Forecast.DescribeWhatIfForecastExport
  ( -- * Creating a Request
    DescribeWhatIfForecastExport (..),
    newDescribeWhatIfForecastExport,

    -- * Request Lenses
    describeWhatIfForecastExport_whatIfForecastExportArn,

    -- * Destructuring the Response
    DescribeWhatIfForecastExportResponse (..),
    newDescribeWhatIfForecastExportResponse,

    -- * Response Lenses
    describeWhatIfForecastExportResponse_lastModificationTime,
    describeWhatIfForecastExportResponse_destination,
    describeWhatIfForecastExportResponse_message,
    describeWhatIfForecastExportResponse_whatIfForecastExportName,
    describeWhatIfForecastExportResponse_format,
    describeWhatIfForecastExportResponse_whatIfForecastArns,
    describeWhatIfForecastExportResponse_whatIfForecastExportArn,
    describeWhatIfForecastExportResponse_status,
    describeWhatIfForecastExportResponse_estimatedTimeRemainingInMinutes,
    describeWhatIfForecastExportResponse_creationTime,
    describeWhatIfForecastExportResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeWhatIfForecastExport' smart constructor.
data DescribeWhatIfForecastExport = DescribeWhatIfForecastExport'
  { -- | The Amazon Resource Name (ARN) of the what-if forecast export that you
    -- are interested in.
    whatIfForecastExportArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWhatIfForecastExport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'whatIfForecastExportArn', 'describeWhatIfForecastExport_whatIfForecastExportArn' - The Amazon Resource Name (ARN) of the what-if forecast export that you
-- are interested in.
newDescribeWhatIfForecastExport ::
  -- | 'whatIfForecastExportArn'
  Prelude.Text ->
  DescribeWhatIfForecastExport
newDescribeWhatIfForecastExport
  pWhatIfForecastExportArn_ =
    DescribeWhatIfForecastExport'
      { whatIfForecastExportArn =
          pWhatIfForecastExportArn_
      }

-- | The Amazon Resource Name (ARN) of the what-if forecast export that you
-- are interested in.
describeWhatIfForecastExport_whatIfForecastExportArn :: Lens.Lens' DescribeWhatIfForecastExport Prelude.Text
describeWhatIfForecastExport_whatIfForecastExportArn = Lens.lens (\DescribeWhatIfForecastExport' {whatIfForecastExportArn} -> whatIfForecastExportArn) (\s@DescribeWhatIfForecastExport' {} a -> s {whatIfForecastExportArn = a} :: DescribeWhatIfForecastExport)

instance Core.AWSRequest DescribeWhatIfForecastExport where
  type
    AWSResponse DescribeWhatIfForecastExport =
      DescribeWhatIfForecastExportResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWhatIfForecastExportResponse'
            Prelude.<$> (x Core..?> "LastModificationTime")
            Prelude.<*> (x Core..?> "Destination")
            Prelude.<*> (x Core..?> "Message")
            Prelude.<*> (x Core..?> "WhatIfForecastExportName")
            Prelude.<*> (x Core..?> "Format")
            Prelude.<*> ( x Core..?> "WhatIfForecastArns"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "WhatIfForecastExportArn")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "EstimatedTimeRemainingInMinutes")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeWhatIfForecastExport
  where
  hashWithSalt _salt DescribeWhatIfForecastExport' {..} =
    _salt
      `Prelude.hashWithSalt` whatIfForecastExportArn

instance Prelude.NFData DescribeWhatIfForecastExport where
  rnf DescribeWhatIfForecastExport' {..} =
    Prelude.rnf whatIfForecastExportArn

instance Core.ToHeaders DescribeWhatIfForecastExport where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.DescribeWhatIfForecastExport" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeWhatIfForecastExport where
  toJSON DescribeWhatIfForecastExport' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "WhatIfForecastExportArn"
                  Core..= whatIfForecastExportArn
              )
          ]
      )

instance Core.ToPath DescribeWhatIfForecastExport where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeWhatIfForecastExport where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWhatIfForecastExportResponse' smart constructor.
data DescribeWhatIfForecastExportResponse = DescribeWhatIfForecastExportResponse'
  { -- | The last time the resource was modified. The timestamp depends on the
    -- status of the job:
    --
    -- -   @CREATE_PENDING@ - The @CreationTime@.
    --
    -- -   @CREATE_IN_PROGRESS@ - The current timestamp.
    --
    -- -   @CREATE_STOPPING@ - The current timestamp.
    --
    -- -   @CREATE_STOPPED@ - When the job stopped.
    --
    -- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
    lastModificationTime :: Prelude.Maybe Core.POSIX,
    destination :: Prelude.Maybe DataDestination,
    -- | If an error occurred, an informational message about the error.
    message :: Prelude.Maybe Prelude.Text,
    -- | The name of the what-if forecast export.
    whatIfForecastExportName :: Prelude.Maybe Prelude.Text,
    -- | The format of the exported data, CSV or PARQUET.
    format :: Prelude.Maybe Prelude.Text,
    -- | An array of Amazon Resource Names (ARNs) that represent all of the
    -- what-if forecasts exported in this resource.
    whatIfForecastArns :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the what-if forecast export.
    whatIfForecastExportArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the what-if forecast. States include:
    --
    -- -   @ACTIVE@
    --
    -- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
    --
    -- -   @CREATE_STOPPING@, @CREATE_STOPPED@
    --
    -- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
    --
    -- The @Status@ of the what-if forecast export must be @ACTIVE@ before you
    -- can access the forecast export.
    status :: Prelude.Maybe Prelude.Text,
    -- | The approximate time remaining to complete the what-if forecast export,
    -- in minutes.
    estimatedTimeRemainingInMinutes :: Prelude.Maybe Prelude.Integer,
    -- | When the what-if forecast export was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWhatIfForecastExportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModificationTime', 'describeWhatIfForecastExportResponse_lastModificationTime' - The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
--
-- 'destination', 'describeWhatIfForecastExportResponse_destination' - Undocumented member.
--
-- 'message', 'describeWhatIfForecastExportResponse_message' - If an error occurred, an informational message about the error.
--
-- 'whatIfForecastExportName', 'describeWhatIfForecastExportResponse_whatIfForecastExportName' - The name of the what-if forecast export.
--
-- 'format', 'describeWhatIfForecastExportResponse_format' - The format of the exported data, CSV or PARQUET.
--
-- 'whatIfForecastArns', 'describeWhatIfForecastExportResponse_whatIfForecastArns' - An array of Amazon Resource Names (ARNs) that represent all of the
-- what-if forecasts exported in this resource.
--
-- 'whatIfForecastExportArn', 'describeWhatIfForecastExportResponse_whatIfForecastExportArn' - The Amazon Resource Name (ARN) of the what-if forecast export.
--
-- 'status', 'describeWhatIfForecastExportResponse_status' - The status of the what-if forecast. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- The @Status@ of the what-if forecast export must be @ACTIVE@ before you
-- can access the forecast export.
--
-- 'estimatedTimeRemainingInMinutes', 'describeWhatIfForecastExportResponse_estimatedTimeRemainingInMinutes' - The approximate time remaining to complete the what-if forecast export,
-- in minutes.
--
-- 'creationTime', 'describeWhatIfForecastExportResponse_creationTime' - When the what-if forecast export was created.
--
-- 'httpStatus', 'describeWhatIfForecastExportResponse_httpStatus' - The response's http status code.
newDescribeWhatIfForecastExportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeWhatIfForecastExportResponse
newDescribeWhatIfForecastExportResponse pHttpStatus_ =
  DescribeWhatIfForecastExportResponse'
    { lastModificationTime =
        Prelude.Nothing,
      destination = Prelude.Nothing,
      message = Prelude.Nothing,
      whatIfForecastExportName =
        Prelude.Nothing,
      format = Prelude.Nothing,
      whatIfForecastArns = Prelude.Nothing,
      whatIfForecastExportArn =
        Prelude.Nothing,
      status = Prelude.Nothing,
      estimatedTimeRemainingInMinutes =
        Prelude.Nothing,
      creationTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
describeWhatIfForecastExportResponse_lastModificationTime :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.UTCTime)
describeWhatIfForecastExportResponse_lastModificationTime = Lens.lens (\DescribeWhatIfForecastExportResponse' {lastModificationTime} -> lastModificationTime) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {lastModificationTime = a} :: DescribeWhatIfForecastExportResponse) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
describeWhatIfForecastExportResponse_destination :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe DataDestination)
describeWhatIfForecastExportResponse_destination = Lens.lens (\DescribeWhatIfForecastExportResponse' {destination} -> destination) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {destination = a} :: DescribeWhatIfForecastExportResponse)

-- | If an error occurred, an informational message about the error.
describeWhatIfForecastExportResponse_message :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Text)
describeWhatIfForecastExportResponse_message = Lens.lens (\DescribeWhatIfForecastExportResponse' {message} -> message) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {message = a} :: DescribeWhatIfForecastExportResponse)

-- | The name of the what-if forecast export.
describeWhatIfForecastExportResponse_whatIfForecastExportName :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Text)
describeWhatIfForecastExportResponse_whatIfForecastExportName = Lens.lens (\DescribeWhatIfForecastExportResponse' {whatIfForecastExportName} -> whatIfForecastExportName) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {whatIfForecastExportName = a} :: DescribeWhatIfForecastExportResponse)

-- | The format of the exported data, CSV or PARQUET.
describeWhatIfForecastExportResponse_format :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Text)
describeWhatIfForecastExportResponse_format = Lens.lens (\DescribeWhatIfForecastExportResponse' {format} -> format) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {format = a} :: DescribeWhatIfForecastExportResponse)

-- | An array of Amazon Resource Names (ARNs) that represent all of the
-- what-if forecasts exported in this resource.
describeWhatIfForecastExportResponse_whatIfForecastArns :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe [Prelude.Text])
describeWhatIfForecastExportResponse_whatIfForecastArns = Lens.lens (\DescribeWhatIfForecastExportResponse' {whatIfForecastArns} -> whatIfForecastArns) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {whatIfForecastArns = a} :: DescribeWhatIfForecastExportResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the what-if forecast export.
describeWhatIfForecastExportResponse_whatIfForecastExportArn :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Text)
describeWhatIfForecastExportResponse_whatIfForecastExportArn = Lens.lens (\DescribeWhatIfForecastExportResponse' {whatIfForecastExportArn} -> whatIfForecastExportArn) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {whatIfForecastExportArn = a} :: DescribeWhatIfForecastExportResponse)

-- | The status of the what-if forecast. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- The @Status@ of the what-if forecast export must be @ACTIVE@ before you
-- can access the forecast export.
describeWhatIfForecastExportResponse_status :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Text)
describeWhatIfForecastExportResponse_status = Lens.lens (\DescribeWhatIfForecastExportResponse' {status} -> status) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {status = a} :: DescribeWhatIfForecastExportResponse)

-- | The approximate time remaining to complete the what-if forecast export,
-- in minutes.
describeWhatIfForecastExportResponse_estimatedTimeRemainingInMinutes :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.Integer)
describeWhatIfForecastExportResponse_estimatedTimeRemainingInMinutes = Lens.lens (\DescribeWhatIfForecastExportResponse' {estimatedTimeRemainingInMinutes} -> estimatedTimeRemainingInMinutes) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {estimatedTimeRemainingInMinutes = a} :: DescribeWhatIfForecastExportResponse)

-- | When the what-if forecast export was created.
describeWhatIfForecastExportResponse_creationTime :: Lens.Lens' DescribeWhatIfForecastExportResponse (Prelude.Maybe Prelude.UTCTime)
describeWhatIfForecastExportResponse_creationTime = Lens.lens (\DescribeWhatIfForecastExportResponse' {creationTime} -> creationTime) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {creationTime = a} :: DescribeWhatIfForecastExportResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeWhatIfForecastExportResponse_httpStatus :: Lens.Lens' DescribeWhatIfForecastExportResponse Prelude.Int
describeWhatIfForecastExportResponse_httpStatus = Lens.lens (\DescribeWhatIfForecastExportResponse' {httpStatus} -> httpStatus) (\s@DescribeWhatIfForecastExportResponse' {} a -> s {httpStatus = a} :: DescribeWhatIfForecastExportResponse)

instance
  Prelude.NFData
    DescribeWhatIfForecastExportResponse
  where
  rnf DescribeWhatIfForecastExportResponse' {..} =
    Prelude.rnf lastModificationTime
      `Prelude.seq` Prelude.rnf destination
      `Prelude.seq` Prelude.rnf message
      `Prelude.seq` Prelude.rnf whatIfForecastExportName
      `Prelude.seq` Prelude.rnf format
      `Prelude.seq` Prelude.rnf whatIfForecastArns
      `Prelude.seq` Prelude.rnf whatIfForecastExportArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf estimatedTimeRemainingInMinutes
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf httpStatus

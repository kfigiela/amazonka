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
-- Module      : Amazonka.GroundStation.DescribeContact
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing contact.
module Amazonka.GroundStation.DescribeContact
  ( -- * Creating a Request
    DescribeContact (..),
    newDescribeContact,

    -- * Request Lenses
    describeContact_contactId,

    -- * Destructuring the Response
    DescribeContactResponse (..),
    newDescribeContactResponse,

    -- * Response Lenses
    describeContactResponse_tags,
    describeContactResponse_missionProfileArn,
    describeContactResponse_dataflowList,
    describeContactResponse_contactId,
    describeContactResponse_errorMessage,
    describeContactResponse_postPassEndTime,
    describeContactResponse_satelliteArn,
    describeContactResponse_contactStatus,
    describeContactResponse_endTime,
    describeContactResponse_region,
    describeContactResponse_prePassStartTime,
    describeContactResponse_groundStation,
    describeContactResponse_startTime,
    describeContactResponse_maximumElevation,
    describeContactResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GroundStation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeContact' smart constructor.
data DescribeContact = DescribeContact'
  { -- | UUID of a contact.
    contactId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeContact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactId', 'describeContact_contactId' - UUID of a contact.
newDescribeContact ::
  -- | 'contactId'
  Prelude.Text ->
  DescribeContact
newDescribeContact pContactId_ =
  DescribeContact' {contactId = pContactId_}

-- | UUID of a contact.
describeContact_contactId :: Lens.Lens' DescribeContact Prelude.Text
describeContact_contactId = Lens.lens (\DescribeContact' {contactId} -> contactId) (\s@DescribeContact' {} a -> s {contactId = a} :: DescribeContact)

instance Core.AWSRequest DescribeContact where
  type
    AWSResponse DescribeContact =
      DescribeContactResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeContactResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "missionProfileArn")
            Prelude.<*> (x Core..?> "dataflowList" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "contactId")
            Prelude.<*> (x Core..?> "errorMessage")
            Prelude.<*> (x Core..?> "postPassEndTime")
            Prelude.<*> (x Core..?> "satelliteArn")
            Prelude.<*> (x Core..?> "contactStatus")
            Prelude.<*> (x Core..?> "endTime")
            Prelude.<*> (x Core..?> "region")
            Prelude.<*> (x Core..?> "prePassStartTime")
            Prelude.<*> (x Core..?> "groundStation")
            Prelude.<*> (x Core..?> "startTime")
            Prelude.<*> (x Core..?> "maximumElevation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeContact where
  hashWithSalt _salt DescribeContact' {..} =
    _salt `Prelude.hashWithSalt` contactId

instance Prelude.NFData DescribeContact where
  rnf DescribeContact' {..} = Prelude.rnf contactId

instance Core.ToHeaders DescribeContact where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeContact where
  toPath DescribeContact' {..} =
    Prelude.mconcat ["/contact/", Core.toBS contactId]

instance Core.ToQuery DescribeContact where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newDescribeContactResponse' smart constructor.
data DescribeContactResponse = DescribeContactResponse'
  { -- | Tags assigned to a contact.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | ARN of a mission profile.
    missionProfileArn :: Prelude.Maybe Prelude.Text,
    -- | List describing source and destination details for each dataflow edge.
    dataflowList :: Prelude.Maybe [DataflowDetail],
    -- | UUID of a contact.
    contactId :: Prelude.Maybe Prelude.Text,
    -- | Error message for a contact.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | Amount of time after a contact ends that you’d like to receive a
    -- CloudWatch event indicating the pass has finished.
    postPassEndTime :: Prelude.Maybe Core.POSIX,
    -- | ARN of a satellite.
    satelliteArn :: Prelude.Maybe Prelude.Text,
    -- | Status of a contact.
    contactStatus :: Prelude.Maybe ContactStatus,
    -- | End time of a contact.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | Region of a contact.
    region :: Prelude.Maybe Prelude.Text,
    -- | Amount of time prior to contact start you’d like to receive a CloudWatch
    -- event indicating an upcoming pass.
    prePassStartTime :: Prelude.Maybe Core.POSIX,
    -- | Ground station for a contact.
    groundStation :: Prelude.Maybe Prelude.Text,
    -- | Start time of a contact.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | Maximum elevation angle of a contact.
    maximumElevation :: Prelude.Maybe Elevation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeContactResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeContactResponse_tags' - Tags assigned to a contact.
--
-- 'missionProfileArn', 'describeContactResponse_missionProfileArn' - ARN of a mission profile.
--
-- 'dataflowList', 'describeContactResponse_dataflowList' - List describing source and destination details for each dataflow edge.
--
-- 'contactId', 'describeContactResponse_contactId' - UUID of a contact.
--
-- 'errorMessage', 'describeContactResponse_errorMessage' - Error message for a contact.
--
-- 'postPassEndTime', 'describeContactResponse_postPassEndTime' - Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
--
-- 'satelliteArn', 'describeContactResponse_satelliteArn' - ARN of a satellite.
--
-- 'contactStatus', 'describeContactResponse_contactStatus' - Status of a contact.
--
-- 'endTime', 'describeContactResponse_endTime' - End time of a contact.
--
-- 'region', 'describeContactResponse_region' - Region of a contact.
--
-- 'prePassStartTime', 'describeContactResponse_prePassStartTime' - Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
--
-- 'groundStation', 'describeContactResponse_groundStation' - Ground station for a contact.
--
-- 'startTime', 'describeContactResponse_startTime' - Start time of a contact.
--
-- 'maximumElevation', 'describeContactResponse_maximumElevation' - Maximum elevation angle of a contact.
--
-- 'httpStatus', 'describeContactResponse_httpStatus' - The response's http status code.
newDescribeContactResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeContactResponse
newDescribeContactResponse pHttpStatus_ =
  DescribeContactResponse'
    { tags = Prelude.Nothing,
      missionProfileArn = Prelude.Nothing,
      dataflowList = Prelude.Nothing,
      contactId = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      postPassEndTime = Prelude.Nothing,
      satelliteArn = Prelude.Nothing,
      contactStatus = Prelude.Nothing,
      endTime = Prelude.Nothing,
      region = Prelude.Nothing,
      prePassStartTime = Prelude.Nothing,
      groundStation = Prelude.Nothing,
      startTime = Prelude.Nothing,
      maximumElevation = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Tags assigned to a contact.
describeContactResponse_tags :: Lens.Lens' DescribeContactResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeContactResponse_tags = Lens.lens (\DescribeContactResponse' {tags} -> tags) (\s@DescribeContactResponse' {} a -> s {tags = a} :: DescribeContactResponse) Prelude.. Lens.mapping Lens.coerced

-- | ARN of a mission profile.
describeContactResponse_missionProfileArn :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_missionProfileArn = Lens.lens (\DescribeContactResponse' {missionProfileArn} -> missionProfileArn) (\s@DescribeContactResponse' {} a -> s {missionProfileArn = a} :: DescribeContactResponse)

-- | List describing source and destination details for each dataflow edge.
describeContactResponse_dataflowList :: Lens.Lens' DescribeContactResponse (Prelude.Maybe [DataflowDetail])
describeContactResponse_dataflowList = Lens.lens (\DescribeContactResponse' {dataflowList} -> dataflowList) (\s@DescribeContactResponse' {} a -> s {dataflowList = a} :: DescribeContactResponse) Prelude.. Lens.mapping Lens.coerced

-- | UUID of a contact.
describeContactResponse_contactId :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_contactId = Lens.lens (\DescribeContactResponse' {contactId} -> contactId) (\s@DescribeContactResponse' {} a -> s {contactId = a} :: DescribeContactResponse)

-- | Error message for a contact.
describeContactResponse_errorMessage :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_errorMessage = Lens.lens (\DescribeContactResponse' {errorMessage} -> errorMessage) (\s@DescribeContactResponse' {} a -> s {errorMessage = a} :: DescribeContactResponse)

-- | Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
describeContactResponse_postPassEndTime :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.UTCTime)
describeContactResponse_postPassEndTime = Lens.lens (\DescribeContactResponse' {postPassEndTime} -> postPassEndTime) (\s@DescribeContactResponse' {} a -> s {postPassEndTime = a} :: DescribeContactResponse) Prelude.. Lens.mapping Core._Time

-- | ARN of a satellite.
describeContactResponse_satelliteArn :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_satelliteArn = Lens.lens (\DescribeContactResponse' {satelliteArn} -> satelliteArn) (\s@DescribeContactResponse' {} a -> s {satelliteArn = a} :: DescribeContactResponse)

-- | Status of a contact.
describeContactResponse_contactStatus :: Lens.Lens' DescribeContactResponse (Prelude.Maybe ContactStatus)
describeContactResponse_contactStatus = Lens.lens (\DescribeContactResponse' {contactStatus} -> contactStatus) (\s@DescribeContactResponse' {} a -> s {contactStatus = a} :: DescribeContactResponse)

-- | End time of a contact.
describeContactResponse_endTime :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.UTCTime)
describeContactResponse_endTime = Lens.lens (\DescribeContactResponse' {endTime} -> endTime) (\s@DescribeContactResponse' {} a -> s {endTime = a} :: DescribeContactResponse) Prelude.. Lens.mapping Core._Time

-- | Region of a contact.
describeContactResponse_region :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_region = Lens.lens (\DescribeContactResponse' {region} -> region) (\s@DescribeContactResponse' {} a -> s {region = a} :: DescribeContactResponse)

-- | Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
describeContactResponse_prePassStartTime :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.UTCTime)
describeContactResponse_prePassStartTime = Lens.lens (\DescribeContactResponse' {prePassStartTime} -> prePassStartTime) (\s@DescribeContactResponse' {} a -> s {prePassStartTime = a} :: DescribeContactResponse) Prelude.. Lens.mapping Core._Time

-- | Ground station for a contact.
describeContactResponse_groundStation :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.Text)
describeContactResponse_groundStation = Lens.lens (\DescribeContactResponse' {groundStation} -> groundStation) (\s@DescribeContactResponse' {} a -> s {groundStation = a} :: DescribeContactResponse)

-- | Start time of a contact.
describeContactResponse_startTime :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Prelude.UTCTime)
describeContactResponse_startTime = Lens.lens (\DescribeContactResponse' {startTime} -> startTime) (\s@DescribeContactResponse' {} a -> s {startTime = a} :: DescribeContactResponse) Prelude.. Lens.mapping Core._Time

-- | Maximum elevation angle of a contact.
describeContactResponse_maximumElevation :: Lens.Lens' DescribeContactResponse (Prelude.Maybe Elevation)
describeContactResponse_maximumElevation = Lens.lens (\DescribeContactResponse' {maximumElevation} -> maximumElevation) (\s@DescribeContactResponse' {} a -> s {maximumElevation = a} :: DescribeContactResponse)

-- | The response's http status code.
describeContactResponse_httpStatus :: Lens.Lens' DescribeContactResponse Prelude.Int
describeContactResponse_httpStatus = Lens.lens (\DescribeContactResponse' {httpStatus} -> httpStatus) (\s@DescribeContactResponse' {} a -> s {httpStatus = a} :: DescribeContactResponse)

instance Prelude.NFData DescribeContactResponse where
  rnf DescribeContactResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf missionProfileArn
      `Prelude.seq` Prelude.rnf dataflowList
      `Prelude.seq` Prelude.rnf contactId
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf postPassEndTime
      `Prelude.seq` Prelude.rnf satelliteArn
      `Prelude.seq` Prelude.rnf contactStatus
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf prePassStartTime
      `Prelude.seq` Prelude.rnf groundStation
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf maximumElevation
      `Prelude.seq` Prelude.rnf httpStatus

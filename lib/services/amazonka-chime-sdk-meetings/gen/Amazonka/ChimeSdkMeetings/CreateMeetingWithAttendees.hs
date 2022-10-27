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
-- Module      : Amazonka.ChimeSdkMeetings.CreateMeetingWithAttendees
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Chime SDK meeting in the specified media Region,
-- with attendees. For more information about specifying media Regions, see
-- <https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html Amazon Chime SDK Media Regions>
-- in the /Amazon Chime Developer Guide/. For more information about the
-- Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/.
module Amazonka.ChimeSdkMeetings.CreateMeetingWithAttendees
  ( -- * Creating a Request
    CreateMeetingWithAttendees (..),
    newCreateMeetingWithAttendees,

    -- * Request Lenses
    createMeetingWithAttendees_tags,
    createMeetingWithAttendees_meetingFeatures,
    createMeetingWithAttendees_notificationsConfiguration,
    createMeetingWithAttendees_meetingHostId,
    createMeetingWithAttendees_tenantIds,
    createMeetingWithAttendees_primaryMeetingId,
    createMeetingWithAttendees_clientRequestToken,
    createMeetingWithAttendees_mediaRegion,
    createMeetingWithAttendees_externalMeetingId,
    createMeetingWithAttendees_attendees,

    -- * Destructuring the Response
    CreateMeetingWithAttendeesResponse (..),
    newCreateMeetingWithAttendeesResponse,

    -- * Response Lenses
    createMeetingWithAttendeesResponse_errors,
    createMeetingWithAttendeesResponse_meeting,
    createMeetingWithAttendeesResponse_attendees,
    createMeetingWithAttendeesResponse_httpStatus,
  )
where

import Amazonka.ChimeSdkMeetings.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateMeetingWithAttendees' smart constructor.
data CreateMeetingWithAttendees = CreateMeetingWithAttendees'
  { -- | The tags in the request.
    tags :: Prelude.Maybe [Tag],
    -- | Lists the audio and video features enabled for a meeting, such as echo
    -- reduction.
    meetingFeatures :: Prelude.Maybe MeetingFeaturesConfiguration,
    -- | The configuration for resource targets to receive notifications when
    -- meeting and attendee events occur.
    notificationsConfiguration :: Prelude.Maybe NotificationsConfiguration,
    -- | Reserved.
    meetingHostId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A consistent and opaque identifier, created and maintained by the
    -- builder to represent a segment of their users.
    tenantIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | When specified, replicates the media from the primary meeting to the new
    -- meeting.
    primaryMeetingId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the client request. Use a different token for
    -- different meetings.
    clientRequestToken :: Core.Sensitive Prelude.Text,
    -- | The Region in which to create the meeting.
    --
    -- Available values: @af-south-1@, @ap-northeast-1@, @ap-northeast-2@,
    -- @ap-south-1@, @ap-southeast-1@, @ap-southeast-2@, @ca-central-1@,
    -- @eu-central-1@, @eu-north-1@, @eu-south-1@, @eu-west-1@, @eu-west-2@,
    -- @eu-west-3@, @sa-east-1@, @us-east-1@, @us-east-2@, @us-west-1@,
    -- @us-west-2@.
    --
    -- Available values in AWS GovCloud (US) Regions: @us-gov-east-1@,
    -- @us-gov-west-1@.
    mediaRegion :: Prelude.Text,
    -- | The external meeting ID.
    externalMeetingId :: Core.Sensitive Prelude.Text,
    -- | The attendee information, including attendees\' IDs and join tokens.
    attendees :: Prelude.NonEmpty CreateAttendeeRequestItem
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMeetingWithAttendees' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createMeetingWithAttendees_tags' - The tags in the request.
--
-- 'meetingFeatures', 'createMeetingWithAttendees_meetingFeatures' - Lists the audio and video features enabled for a meeting, such as echo
-- reduction.
--
-- 'notificationsConfiguration', 'createMeetingWithAttendees_notificationsConfiguration' - The configuration for resource targets to receive notifications when
-- meeting and attendee events occur.
--
-- 'meetingHostId', 'createMeetingWithAttendees_meetingHostId' - Reserved.
--
-- 'tenantIds', 'createMeetingWithAttendees_tenantIds' - A consistent and opaque identifier, created and maintained by the
-- builder to represent a segment of their users.
--
-- 'primaryMeetingId', 'createMeetingWithAttendees_primaryMeetingId' - When specified, replicates the media from the primary meeting to the new
-- meeting.
--
-- 'clientRequestToken', 'createMeetingWithAttendees_clientRequestToken' - The unique identifier for the client request. Use a different token for
-- different meetings.
--
-- 'mediaRegion', 'createMeetingWithAttendees_mediaRegion' - The Region in which to create the meeting.
--
-- Available values: @af-south-1@, @ap-northeast-1@, @ap-northeast-2@,
-- @ap-south-1@, @ap-southeast-1@, @ap-southeast-2@, @ca-central-1@,
-- @eu-central-1@, @eu-north-1@, @eu-south-1@, @eu-west-1@, @eu-west-2@,
-- @eu-west-3@, @sa-east-1@, @us-east-1@, @us-east-2@, @us-west-1@,
-- @us-west-2@.
--
-- Available values in AWS GovCloud (US) Regions: @us-gov-east-1@,
-- @us-gov-west-1@.
--
-- 'externalMeetingId', 'createMeetingWithAttendees_externalMeetingId' - The external meeting ID.
--
-- 'attendees', 'createMeetingWithAttendees_attendees' - The attendee information, including attendees\' IDs and join tokens.
newCreateMeetingWithAttendees ::
  -- | 'clientRequestToken'
  Prelude.Text ->
  -- | 'mediaRegion'
  Prelude.Text ->
  -- | 'externalMeetingId'
  Prelude.Text ->
  -- | 'attendees'
  Prelude.NonEmpty CreateAttendeeRequestItem ->
  CreateMeetingWithAttendees
newCreateMeetingWithAttendees
  pClientRequestToken_
  pMediaRegion_
  pExternalMeetingId_
  pAttendees_ =
    CreateMeetingWithAttendees'
      { tags = Prelude.Nothing,
        meetingFeatures = Prelude.Nothing,
        notificationsConfiguration = Prelude.Nothing,
        meetingHostId = Prelude.Nothing,
        tenantIds = Prelude.Nothing,
        primaryMeetingId = Prelude.Nothing,
        clientRequestToken =
          Core._Sensitive Lens.# pClientRequestToken_,
        mediaRegion = pMediaRegion_,
        externalMeetingId =
          Core._Sensitive Lens.# pExternalMeetingId_,
        attendees = Lens.coerced Lens.# pAttendees_
      }

-- | The tags in the request.
createMeetingWithAttendees_tags :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe [Tag])
createMeetingWithAttendees_tags = Lens.lens (\CreateMeetingWithAttendees' {tags} -> tags) (\s@CreateMeetingWithAttendees' {} a -> s {tags = a} :: CreateMeetingWithAttendees) Prelude.. Lens.mapping Lens.coerced

-- | Lists the audio and video features enabled for a meeting, such as echo
-- reduction.
createMeetingWithAttendees_meetingFeatures :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe MeetingFeaturesConfiguration)
createMeetingWithAttendees_meetingFeatures = Lens.lens (\CreateMeetingWithAttendees' {meetingFeatures} -> meetingFeatures) (\s@CreateMeetingWithAttendees' {} a -> s {meetingFeatures = a} :: CreateMeetingWithAttendees)

-- | The configuration for resource targets to receive notifications when
-- meeting and attendee events occur.
createMeetingWithAttendees_notificationsConfiguration :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe NotificationsConfiguration)
createMeetingWithAttendees_notificationsConfiguration = Lens.lens (\CreateMeetingWithAttendees' {notificationsConfiguration} -> notificationsConfiguration) (\s@CreateMeetingWithAttendees' {} a -> s {notificationsConfiguration = a} :: CreateMeetingWithAttendees)

-- | Reserved.
createMeetingWithAttendees_meetingHostId :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe Prelude.Text)
createMeetingWithAttendees_meetingHostId = Lens.lens (\CreateMeetingWithAttendees' {meetingHostId} -> meetingHostId) (\s@CreateMeetingWithAttendees' {} a -> s {meetingHostId = a} :: CreateMeetingWithAttendees) Prelude.. Lens.mapping Core._Sensitive

-- | A consistent and opaque identifier, created and maintained by the
-- builder to represent a segment of their users.
createMeetingWithAttendees_tenantIds :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
createMeetingWithAttendees_tenantIds = Lens.lens (\CreateMeetingWithAttendees' {tenantIds} -> tenantIds) (\s@CreateMeetingWithAttendees' {} a -> s {tenantIds = a} :: CreateMeetingWithAttendees) Prelude.. Lens.mapping Lens.coerced

-- | When specified, replicates the media from the primary meeting to the new
-- meeting.
createMeetingWithAttendees_primaryMeetingId :: Lens.Lens' CreateMeetingWithAttendees (Prelude.Maybe Prelude.Text)
createMeetingWithAttendees_primaryMeetingId = Lens.lens (\CreateMeetingWithAttendees' {primaryMeetingId} -> primaryMeetingId) (\s@CreateMeetingWithAttendees' {} a -> s {primaryMeetingId = a} :: CreateMeetingWithAttendees)

-- | The unique identifier for the client request. Use a different token for
-- different meetings.
createMeetingWithAttendees_clientRequestToken :: Lens.Lens' CreateMeetingWithAttendees Prelude.Text
createMeetingWithAttendees_clientRequestToken = Lens.lens (\CreateMeetingWithAttendees' {clientRequestToken} -> clientRequestToken) (\s@CreateMeetingWithAttendees' {} a -> s {clientRequestToken = a} :: CreateMeetingWithAttendees) Prelude.. Core._Sensitive

-- | The Region in which to create the meeting.
--
-- Available values: @af-south-1@, @ap-northeast-1@, @ap-northeast-2@,
-- @ap-south-1@, @ap-southeast-1@, @ap-southeast-2@, @ca-central-1@,
-- @eu-central-1@, @eu-north-1@, @eu-south-1@, @eu-west-1@, @eu-west-2@,
-- @eu-west-3@, @sa-east-1@, @us-east-1@, @us-east-2@, @us-west-1@,
-- @us-west-2@.
--
-- Available values in AWS GovCloud (US) Regions: @us-gov-east-1@,
-- @us-gov-west-1@.
createMeetingWithAttendees_mediaRegion :: Lens.Lens' CreateMeetingWithAttendees Prelude.Text
createMeetingWithAttendees_mediaRegion = Lens.lens (\CreateMeetingWithAttendees' {mediaRegion} -> mediaRegion) (\s@CreateMeetingWithAttendees' {} a -> s {mediaRegion = a} :: CreateMeetingWithAttendees)

-- | The external meeting ID.
createMeetingWithAttendees_externalMeetingId :: Lens.Lens' CreateMeetingWithAttendees Prelude.Text
createMeetingWithAttendees_externalMeetingId = Lens.lens (\CreateMeetingWithAttendees' {externalMeetingId} -> externalMeetingId) (\s@CreateMeetingWithAttendees' {} a -> s {externalMeetingId = a} :: CreateMeetingWithAttendees) Prelude.. Core._Sensitive

-- | The attendee information, including attendees\' IDs and join tokens.
createMeetingWithAttendees_attendees :: Lens.Lens' CreateMeetingWithAttendees (Prelude.NonEmpty CreateAttendeeRequestItem)
createMeetingWithAttendees_attendees = Lens.lens (\CreateMeetingWithAttendees' {attendees} -> attendees) (\s@CreateMeetingWithAttendees' {} a -> s {attendees = a} :: CreateMeetingWithAttendees) Prelude.. Lens.coerced

instance Core.AWSRequest CreateMeetingWithAttendees where
  type
    AWSResponse CreateMeetingWithAttendees =
      CreateMeetingWithAttendeesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMeetingWithAttendeesResponse'
            Prelude.<$> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Meeting")
            Prelude.<*> (x Core..?> "Attendees" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMeetingWithAttendees where
  hashWithSalt _salt CreateMeetingWithAttendees' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` meetingFeatures
      `Prelude.hashWithSalt` notificationsConfiguration
      `Prelude.hashWithSalt` meetingHostId
      `Prelude.hashWithSalt` tenantIds
      `Prelude.hashWithSalt` primaryMeetingId
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` mediaRegion
      `Prelude.hashWithSalt` externalMeetingId
      `Prelude.hashWithSalt` attendees

instance Prelude.NFData CreateMeetingWithAttendees where
  rnf CreateMeetingWithAttendees' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf meetingFeatures
      `Prelude.seq` Prelude.rnf notificationsConfiguration
      `Prelude.seq` Prelude.rnf meetingHostId
      `Prelude.seq` Prelude.rnf tenantIds
      `Prelude.seq` Prelude.rnf primaryMeetingId
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf mediaRegion
      `Prelude.seq` Prelude.rnf externalMeetingId
      `Prelude.seq` Prelude.rnf attendees

instance Core.ToHeaders CreateMeetingWithAttendees where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateMeetingWithAttendees where
  toJSON CreateMeetingWithAttendees' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("MeetingFeatures" Core..=)
              Prelude.<$> meetingFeatures,
            ("NotificationsConfiguration" Core..=)
              Prelude.<$> notificationsConfiguration,
            ("MeetingHostId" Core..=) Prelude.<$> meetingHostId,
            ("TenantIds" Core..=) Prelude.<$> tenantIds,
            ("PrimaryMeetingId" Core..=)
              Prelude.<$> primaryMeetingId,
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken),
            Prelude.Just ("MediaRegion" Core..= mediaRegion),
            Prelude.Just
              ("ExternalMeetingId" Core..= externalMeetingId),
            Prelude.Just ("Attendees" Core..= attendees)
          ]
      )

instance Core.ToPath CreateMeetingWithAttendees where
  toPath = Prelude.const "/meetings"

instance Core.ToQuery CreateMeetingWithAttendees where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=create-attendees"])

-- | /See:/ 'newCreateMeetingWithAttendeesResponse' smart constructor.
data CreateMeetingWithAttendeesResponse = CreateMeetingWithAttendeesResponse'
  { -- | If the action fails for one or more of the attendees in the request, a
    -- list of the attendees is returned, along with error codes and error
    -- messages.
    errors :: Prelude.Maybe [CreateAttendeeError],
    -- | The meeting information, including the meeting ID and @MediaPlacement@.
    meeting :: Prelude.Maybe Meeting,
    -- | The attendee information, including attendees\' IDs and join tokens.
    attendees :: Prelude.Maybe [Attendee],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMeetingWithAttendeesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'createMeetingWithAttendeesResponse_errors' - If the action fails for one or more of the attendees in the request, a
-- list of the attendees is returned, along with error codes and error
-- messages.
--
-- 'meeting', 'createMeetingWithAttendeesResponse_meeting' - The meeting information, including the meeting ID and @MediaPlacement@.
--
-- 'attendees', 'createMeetingWithAttendeesResponse_attendees' - The attendee information, including attendees\' IDs and join tokens.
--
-- 'httpStatus', 'createMeetingWithAttendeesResponse_httpStatus' - The response's http status code.
newCreateMeetingWithAttendeesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMeetingWithAttendeesResponse
newCreateMeetingWithAttendeesResponse pHttpStatus_ =
  CreateMeetingWithAttendeesResponse'
    { errors =
        Prelude.Nothing,
      meeting = Prelude.Nothing,
      attendees = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the action fails for one or more of the attendees in the request, a
-- list of the attendees is returned, along with error codes and error
-- messages.
createMeetingWithAttendeesResponse_errors :: Lens.Lens' CreateMeetingWithAttendeesResponse (Prelude.Maybe [CreateAttendeeError])
createMeetingWithAttendeesResponse_errors = Lens.lens (\CreateMeetingWithAttendeesResponse' {errors} -> errors) (\s@CreateMeetingWithAttendeesResponse' {} a -> s {errors = a} :: CreateMeetingWithAttendeesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The meeting information, including the meeting ID and @MediaPlacement@.
createMeetingWithAttendeesResponse_meeting :: Lens.Lens' CreateMeetingWithAttendeesResponse (Prelude.Maybe Meeting)
createMeetingWithAttendeesResponse_meeting = Lens.lens (\CreateMeetingWithAttendeesResponse' {meeting} -> meeting) (\s@CreateMeetingWithAttendeesResponse' {} a -> s {meeting = a} :: CreateMeetingWithAttendeesResponse)

-- | The attendee information, including attendees\' IDs and join tokens.
createMeetingWithAttendeesResponse_attendees :: Lens.Lens' CreateMeetingWithAttendeesResponse (Prelude.Maybe [Attendee])
createMeetingWithAttendeesResponse_attendees = Lens.lens (\CreateMeetingWithAttendeesResponse' {attendees} -> attendees) (\s@CreateMeetingWithAttendeesResponse' {} a -> s {attendees = a} :: CreateMeetingWithAttendeesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createMeetingWithAttendeesResponse_httpStatus :: Lens.Lens' CreateMeetingWithAttendeesResponse Prelude.Int
createMeetingWithAttendeesResponse_httpStatus = Lens.lens (\CreateMeetingWithAttendeesResponse' {httpStatus} -> httpStatus) (\s@CreateMeetingWithAttendeesResponse' {} a -> s {httpStatus = a} :: CreateMeetingWithAttendeesResponse)

instance
  Prelude.NFData
    CreateMeetingWithAttendeesResponse
  where
  rnf CreateMeetingWithAttendeesResponse' {..} =
    Prelude.rnf errors
      `Prelude.seq` Prelude.rnf meeting
      `Prelude.seq` Prelude.rnf attendees
      `Prelude.seq` Prelude.rnf httpStatus

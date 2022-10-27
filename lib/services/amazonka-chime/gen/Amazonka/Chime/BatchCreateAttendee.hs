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
-- Module      : Amazonka.Chime.BatchCreateAttendee
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates up to 100 new attendees for an active Amazon Chime SDK meeting.
-- For more information about the Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/.
module Amazonka.Chime.BatchCreateAttendee
  ( -- * Creating a Request
    BatchCreateAttendee (..),
    newBatchCreateAttendee,

    -- * Request Lenses
    batchCreateAttendee_meetingId,
    batchCreateAttendee_attendees,

    -- * Destructuring the Response
    BatchCreateAttendeeResponse (..),
    newBatchCreateAttendeeResponse,

    -- * Response Lenses
    batchCreateAttendeeResponse_errors,
    batchCreateAttendeeResponse_attendees,
    batchCreateAttendeeResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchCreateAttendee' smart constructor.
data BatchCreateAttendee = BatchCreateAttendee'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The request containing the attendees to create.
    attendees :: [CreateAttendeeRequestItem]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'batchCreateAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'attendees', 'batchCreateAttendee_attendees' - The request containing the attendees to create.
newBatchCreateAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  BatchCreateAttendee
newBatchCreateAttendee pMeetingId_ =
  BatchCreateAttendee'
    { meetingId = pMeetingId_,
      attendees = Prelude.mempty
    }

-- | The Amazon Chime SDK meeting ID.
batchCreateAttendee_meetingId :: Lens.Lens' BatchCreateAttendee Prelude.Text
batchCreateAttendee_meetingId = Lens.lens (\BatchCreateAttendee' {meetingId} -> meetingId) (\s@BatchCreateAttendee' {} a -> s {meetingId = a} :: BatchCreateAttendee)

-- | The request containing the attendees to create.
batchCreateAttendee_attendees :: Lens.Lens' BatchCreateAttendee [CreateAttendeeRequestItem]
batchCreateAttendee_attendees = Lens.lens (\BatchCreateAttendee' {attendees} -> attendees) (\s@BatchCreateAttendee' {} a -> s {attendees = a} :: BatchCreateAttendee) Prelude.. Lens.coerced

instance Core.AWSRequest BatchCreateAttendee where
  type
    AWSResponse BatchCreateAttendee =
      BatchCreateAttendeeResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchCreateAttendeeResponse'
            Prelude.<$> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Attendees" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchCreateAttendee where
  hashWithSalt _salt BatchCreateAttendee' {..} =
    _salt `Prelude.hashWithSalt` meetingId
      `Prelude.hashWithSalt` attendees

instance Prelude.NFData BatchCreateAttendee where
  rnf BatchCreateAttendee' {..} =
    Prelude.rnf meetingId
      `Prelude.seq` Prelude.rnf attendees

instance Core.ToHeaders BatchCreateAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchCreateAttendee where
  toJSON BatchCreateAttendee' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Attendees" Core..= attendees)]
      )

instance Core.ToPath BatchCreateAttendee where
  toPath BatchCreateAttendee' {..} =
    Prelude.mconcat
      ["/meetings/", Core.toBS meetingId, "/attendees"]

instance Core.ToQuery BatchCreateAttendee where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=batch-create"])

-- | /See:/ 'newBatchCreateAttendeeResponse' smart constructor.
data BatchCreateAttendeeResponse = BatchCreateAttendeeResponse'
  { -- | If the action fails for one or more of the attendees in the request, a
    -- list of the attendees is returned, along with error codes and error
    -- messages.
    errors :: Prelude.Maybe [CreateAttendeeError],
    -- | The attendee information, including attendees IDs and join tokens.
    attendees :: Prelude.Maybe [Attendee],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchCreateAttendeeResponse_errors' - If the action fails for one or more of the attendees in the request, a
-- list of the attendees is returned, along with error codes and error
-- messages.
--
-- 'attendees', 'batchCreateAttendeeResponse_attendees' - The attendee information, including attendees IDs and join tokens.
--
-- 'httpStatus', 'batchCreateAttendeeResponse_httpStatus' - The response's http status code.
newBatchCreateAttendeeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchCreateAttendeeResponse
newBatchCreateAttendeeResponse pHttpStatus_ =
  BatchCreateAttendeeResponse'
    { errors =
        Prelude.Nothing,
      attendees = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the action fails for one or more of the attendees in the request, a
-- list of the attendees is returned, along with error codes and error
-- messages.
batchCreateAttendeeResponse_errors :: Lens.Lens' BatchCreateAttendeeResponse (Prelude.Maybe [CreateAttendeeError])
batchCreateAttendeeResponse_errors = Lens.lens (\BatchCreateAttendeeResponse' {errors} -> errors) (\s@BatchCreateAttendeeResponse' {} a -> s {errors = a} :: BatchCreateAttendeeResponse) Prelude.. Lens.mapping Lens.coerced

-- | The attendee information, including attendees IDs and join tokens.
batchCreateAttendeeResponse_attendees :: Lens.Lens' BatchCreateAttendeeResponse (Prelude.Maybe [Attendee])
batchCreateAttendeeResponse_attendees = Lens.lens (\BatchCreateAttendeeResponse' {attendees} -> attendees) (\s@BatchCreateAttendeeResponse' {} a -> s {attendees = a} :: BatchCreateAttendeeResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchCreateAttendeeResponse_httpStatus :: Lens.Lens' BatchCreateAttendeeResponse Prelude.Int
batchCreateAttendeeResponse_httpStatus = Lens.lens (\BatchCreateAttendeeResponse' {httpStatus} -> httpStatus) (\s@BatchCreateAttendeeResponse' {} a -> s {httpStatus = a} :: BatchCreateAttendeeResponse)

instance Prelude.NFData BatchCreateAttendeeResponse where
  rnf BatchCreateAttendeeResponse' {..} =
    Prelude.rnf errors
      `Prelude.seq` Prelude.rnf attendees
      `Prelude.seq` Prelude.rnf httpStatus

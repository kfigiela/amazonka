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
-- Module      : Amazonka.ChimeSdkMeetings.StopMeetingTranscription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops transcription for the specified @meetingId@.
module Amazonka.ChimeSdkMeetings.StopMeetingTranscription
  ( -- * Creating a Request
    StopMeetingTranscription (..),
    newStopMeetingTranscription,

    -- * Request Lenses
    stopMeetingTranscription_meetingId,

    -- * Destructuring the Response
    StopMeetingTranscriptionResponse (..),
    newStopMeetingTranscriptionResponse,
  )
where

import Amazonka.ChimeSdkMeetings.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStopMeetingTranscription' smart constructor.
data StopMeetingTranscription = StopMeetingTranscription'
  { -- | The unique ID of the meeting for which you stop transcription.
    meetingId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopMeetingTranscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'stopMeetingTranscription_meetingId' - The unique ID of the meeting for which you stop transcription.
newStopMeetingTranscription ::
  -- | 'meetingId'
  Prelude.Text ->
  StopMeetingTranscription
newStopMeetingTranscription pMeetingId_ =
  StopMeetingTranscription' {meetingId = pMeetingId_}

-- | The unique ID of the meeting for which you stop transcription.
stopMeetingTranscription_meetingId :: Lens.Lens' StopMeetingTranscription Prelude.Text
stopMeetingTranscription_meetingId = Lens.lens (\StopMeetingTranscription' {meetingId} -> meetingId) (\s@StopMeetingTranscription' {} a -> s {meetingId = a} :: StopMeetingTranscription)

instance Core.AWSRequest StopMeetingTranscription where
  type
    AWSResponse StopMeetingTranscription =
      StopMeetingTranscriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      StopMeetingTranscriptionResponse'

instance Prelude.Hashable StopMeetingTranscription where
  hashWithSalt _salt StopMeetingTranscription' {..} =
    _salt `Prelude.hashWithSalt` meetingId

instance Prelude.NFData StopMeetingTranscription where
  rnf StopMeetingTranscription' {..} =
    Prelude.rnf meetingId

instance Core.ToHeaders StopMeetingTranscription where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON StopMeetingTranscription where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StopMeetingTranscription where
  toPath StopMeetingTranscription' {..} =
    Prelude.mconcat
      ["/meetings/", Core.toBS meetingId, "/transcription"]

instance Core.ToQuery StopMeetingTranscription where
  toQuery =
    Prelude.const (Prelude.mconcat ["operation=stop"])

-- | /See:/ 'newStopMeetingTranscriptionResponse' smart constructor.
data StopMeetingTranscriptionResponse = StopMeetingTranscriptionResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopMeetingTranscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStopMeetingTranscriptionResponse ::
  StopMeetingTranscriptionResponse
newStopMeetingTranscriptionResponse =
  StopMeetingTranscriptionResponse'

instance
  Prelude.NFData
    StopMeetingTranscriptionResponse
  where
  rnf _ = ()

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
-- Module      : Amazonka.SSMContacts.StopEngagement
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an engagement before it finishes the final stage of the escalation
-- plan or engagement plan. Further contacts aren\'t engaged.
module Amazonka.SSMContacts.StopEngagement
  ( -- * Creating a Request
    StopEngagement (..),
    newStopEngagement,

    -- * Request Lenses
    stopEngagement_reason,
    stopEngagement_engagementId,

    -- * Destructuring the Response
    StopEngagementResponse (..),
    newStopEngagementResponse,

    -- * Response Lenses
    stopEngagementResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSMContacts.Types

-- | /See:/ 'newStopEngagement' smart constructor.
data StopEngagement = StopEngagement'
  { -- | The reason that you\'re stopping the engagement.
    reason :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the engagement.
    engagementId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopEngagement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reason', 'stopEngagement_reason' - The reason that you\'re stopping the engagement.
--
-- 'engagementId', 'stopEngagement_engagementId' - The Amazon Resource Name (ARN) of the engagement.
newStopEngagement ::
  -- | 'engagementId'
  Prelude.Text ->
  StopEngagement
newStopEngagement pEngagementId_ =
  StopEngagement'
    { reason = Prelude.Nothing,
      engagementId = pEngagementId_
    }

-- | The reason that you\'re stopping the engagement.
stopEngagement_reason :: Lens.Lens' StopEngagement (Prelude.Maybe Prelude.Text)
stopEngagement_reason = Lens.lens (\StopEngagement' {reason} -> reason) (\s@StopEngagement' {} a -> s {reason = a} :: StopEngagement)

-- | The Amazon Resource Name (ARN) of the engagement.
stopEngagement_engagementId :: Lens.Lens' StopEngagement Prelude.Text
stopEngagement_engagementId = Lens.lens (\StopEngagement' {engagementId} -> engagementId) (\s@StopEngagement' {} a -> s {engagementId = a} :: StopEngagement)

instance Core.AWSRequest StopEngagement where
  type
    AWSResponse StopEngagement =
      StopEngagementResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          StopEngagementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService StopEngagement where
  service _proxy = defaultService

instance Prelude.Hashable StopEngagement where
  hashWithSalt _salt StopEngagement' {..} =
    _salt `Prelude.hashWithSalt` reason
      `Prelude.hashWithSalt` engagementId

instance Prelude.NFData StopEngagement where
  rnf StopEngagement' {..} =
    Prelude.rnf reason
      `Prelude.seq` Prelude.rnf engagementId

instance Core.ToHeaders StopEngagement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SSMContacts.StopEngagement" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopEngagement where
  toJSON StopEngagement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Reason" Core..=) Prelude.<$> reason,
            Prelude.Just ("EngagementId" Core..= engagementId)
          ]
      )

instance Core.ToPath StopEngagement where
  toPath = Prelude.const "/"

instance Core.ToQuery StopEngagement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopEngagementResponse' smart constructor.
data StopEngagementResponse = StopEngagementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopEngagementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'stopEngagementResponse_httpStatus' - The response's http status code.
newStopEngagementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopEngagementResponse
newStopEngagementResponse pHttpStatus_ =
  StopEngagementResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
stopEngagementResponse_httpStatus :: Lens.Lens' StopEngagementResponse Prelude.Int
stopEngagementResponse_httpStatus = Lens.lens (\StopEngagementResponse' {httpStatus} -> httpStatus) (\s@StopEngagementResponse' {} a -> s {httpStatus = a} :: StopEngagementResponse)

instance Prelude.NFData StopEngagementResponse where
  rnf StopEngagementResponse' {..} =
    Prelude.rnf httpStatus

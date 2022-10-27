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
-- Module      : Amazonka.MigrationHub.NotifyApplicationState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the migration state of an application. For a given application
-- identified by the value passed to @ApplicationId@, its status is set or
-- updated by passing one of three values to @Status@:
-- @NOT_STARTED | IN_PROGRESS | COMPLETED@.
module Amazonka.MigrationHub.NotifyApplicationState
  ( -- * Creating a Request
    NotifyApplicationState (..),
    newNotifyApplicationState,

    -- * Request Lenses
    notifyApplicationState_updateDateTime,
    notifyApplicationState_dryRun,
    notifyApplicationState_applicationId,
    notifyApplicationState_status,

    -- * Destructuring the Response
    NotifyApplicationStateResponse (..),
    newNotifyApplicationStateResponse,

    -- * Response Lenses
    notifyApplicationStateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHub.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newNotifyApplicationState' smart constructor.
data NotifyApplicationState = NotifyApplicationState'
  { -- | The timestamp when the application state changed.
    updateDateTime :: Prelude.Maybe Core.POSIX,
    -- | Optional boolean flag to indicate whether any effect should take place.
    -- Used to test if the caller has permission to make the call.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The configurationId in Application Discovery Service that uniquely
    -- identifies the grouped application.
    applicationId :: Prelude.Text,
    -- | Status of the application - Not Started, In-Progress, Complete.
    status :: ApplicationStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotifyApplicationState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateDateTime', 'notifyApplicationState_updateDateTime' - The timestamp when the application state changed.
--
-- 'dryRun', 'notifyApplicationState_dryRun' - Optional boolean flag to indicate whether any effect should take place.
-- Used to test if the caller has permission to make the call.
--
-- 'applicationId', 'notifyApplicationState_applicationId' - The configurationId in Application Discovery Service that uniquely
-- identifies the grouped application.
--
-- 'status', 'notifyApplicationState_status' - Status of the application - Not Started, In-Progress, Complete.
newNotifyApplicationState ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'status'
  ApplicationStatus ->
  NotifyApplicationState
newNotifyApplicationState pApplicationId_ pStatus_ =
  NotifyApplicationState'
    { updateDateTime =
        Prelude.Nothing,
      dryRun = Prelude.Nothing,
      applicationId = pApplicationId_,
      status = pStatus_
    }

-- | The timestamp when the application state changed.
notifyApplicationState_updateDateTime :: Lens.Lens' NotifyApplicationState (Prelude.Maybe Prelude.UTCTime)
notifyApplicationState_updateDateTime = Lens.lens (\NotifyApplicationState' {updateDateTime} -> updateDateTime) (\s@NotifyApplicationState' {} a -> s {updateDateTime = a} :: NotifyApplicationState) Prelude.. Lens.mapping Core._Time

-- | Optional boolean flag to indicate whether any effect should take place.
-- Used to test if the caller has permission to make the call.
notifyApplicationState_dryRun :: Lens.Lens' NotifyApplicationState (Prelude.Maybe Prelude.Bool)
notifyApplicationState_dryRun = Lens.lens (\NotifyApplicationState' {dryRun} -> dryRun) (\s@NotifyApplicationState' {} a -> s {dryRun = a} :: NotifyApplicationState)

-- | The configurationId in Application Discovery Service that uniquely
-- identifies the grouped application.
notifyApplicationState_applicationId :: Lens.Lens' NotifyApplicationState Prelude.Text
notifyApplicationState_applicationId = Lens.lens (\NotifyApplicationState' {applicationId} -> applicationId) (\s@NotifyApplicationState' {} a -> s {applicationId = a} :: NotifyApplicationState)

-- | Status of the application - Not Started, In-Progress, Complete.
notifyApplicationState_status :: Lens.Lens' NotifyApplicationState ApplicationStatus
notifyApplicationState_status = Lens.lens (\NotifyApplicationState' {status} -> status) (\s@NotifyApplicationState' {} a -> s {status = a} :: NotifyApplicationState)

instance Core.AWSRequest NotifyApplicationState where
  type
    AWSResponse NotifyApplicationState =
      NotifyApplicationStateResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          NotifyApplicationStateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable NotifyApplicationState where
  hashWithSalt _salt NotifyApplicationState' {..} =
    _salt `Prelude.hashWithSalt` updateDateTime
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` status

instance Prelude.NFData NotifyApplicationState where
  rnf NotifyApplicationState' {..} =
    Prelude.rnf updateDateTime
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf status

instance Core.ToHeaders NotifyApplicationState where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSMigrationHub.NotifyApplicationState" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON NotifyApplicationState where
  toJSON NotifyApplicationState' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UpdateDateTime" Core..=)
              Prelude.<$> updateDateTime,
            ("DryRun" Core..=) Prelude.<$> dryRun,
            Prelude.Just ("ApplicationId" Core..= applicationId),
            Prelude.Just ("Status" Core..= status)
          ]
      )

instance Core.ToPath NotifyApplicationState where
  toPath = Prelude.const "/"

instance Core.ToQuery NotifyApplicationState where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newNotifyApplicationStateResponse' smart constructor.
data NotifyApplicationStateResponse = NotifyApplicationStateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotifyApplicationStateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'notifyApplicationStateResponse_httpStatus' - The response's http status code.
newNotifyApplicationStateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  NotifyApplicationStateResponse
newNotifyApplicationStateResponse pHttpStatus_ =
  NotifyApplicationStateResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
notifyApplicationStateResponse_httpStatus :: Lens.Lens' NotifyApplicationStateResponse Prelude.Int
notifyApplicationStateResponse_httpStatus = Lens.lens (\NotifyApplicationStateResponse' {httpStatus} -> httpStatus) (\s@NotifyApplicationStateResponse' {} a -> s {httpStatus = a} :: NotifyApplicationStateResponse)

instance
  Prelude.NFData
    NotifyApplicationStateResponse
  where
  rnf NotifyApplicationStateResponse' {..} =
    Prelude.rnf httpStatus

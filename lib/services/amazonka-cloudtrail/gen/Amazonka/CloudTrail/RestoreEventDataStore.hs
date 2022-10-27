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
-- Module      : Amazonka.CloudTrail.RestoreEventDataStore
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a deleted event data store specified by @EventDataStore@, which
-- accepts an event data store ARN. You can only restore a deleted event
-- data store within the seven-day wait period after deletion. Restoring an
-- event data store can take several minutes, depending on the size of the
-- event data store.
module Amazonka.CloudTrail.RestoreEventDataStore
  ( -- * Creating a Request
    RestoreEventDataStore (..),
    newRestoreEventDataStore,

    -- * Request Lenses
    restoreEventDataStore_eventDataStore,

    -- * Destructuring the Response
    RestoreEventDataStoreResponse (..),
    newRestoreEventDataStoreResponse,

    -- * Response Lenses
    restoreEventDataStoreResponse_name,
    restoreEventDataStoreResponse_eventDataStoreArn,
    restoreEventDataStoreResponse_advancedEventSelectors,
    restoreEventDataStoreResponse_createdTimestamp,
    restoreEventDataStoreResponse_multiRegionEnabled,
    restoreEventDataStoreResponse_updatedTimestamp,
    restoreEventDataStoreResponse_status,
    restoreEventDataStoreResponse_retentionPeriod,
    restoreEventDataStoreResponse_organizationEnabled,
    restoreEventDataStoreResponse_terminationProtectionEnabled,
    restoreEventDataStoreResponse_httpStatus,
  )
where

import Amazonka.CloudTrail.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRestoreEventDataStore' smart constructor.
data RestoreEventDataStore = RestoreEventDataStore'
  { -- | The ARN (or the ID suffix of the ARN) of the event data store that you
    -- want to restore.
    eventDataStore :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreEventDataStore' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventDataStore', 'restoreEventDataStore_eventDataStore' - The ARN (or the ID suffix of the ARN) of the event data store that you
-- want to restore.
newRestoreEventDataStore ::
  -- | 'eventDataStore'
  Prelude.Text ->
  RestoreEventDataStore
newRestoreEventDataStore pEventDataStore_ =
  RestoreEventDataStore'
    { eventDataStore =
        pEventDataStore_
    }

-- | The ARN (or the ID suffix of the ARN) of the event data store that you
-- want to restore.
restoreEventDataStore_eventDataStore :: Lens.Lens' RestoreEventDataStore Prelude.Text
restoreEventDataStore_eventDataStore = Lens.lens (\RestoreEventDataStore' {eventDataStore} -> eventDataStore) (\s@RestoreEventDataStore' {} a -> s {eventDataStore = a} :: RestoreEventDataStore)

instance Core.AWSRequest RestoreEventDataStore where
  type
    AWSResponse RestoreEventDataStore =
      RestoreEventDataStoreResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RestoreEventDataStoreResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "EventDataStoreArn")
            Prelude.<*> ( x Core..?> "AdvancedEventSelectors"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "CreatedTimestamp")
            Prelude.<*> (x Core..?> "MultiRegionEnabled")
            Prelude.<*> (x Core..?> "UpdatedTimestamp")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "RetentionPeriod")
            Prelude.<*> (x Core..?> "OrganizationEnabled")
            Prelude.<*> (x Core..?> "TerminationProtectionEnabled")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RestoreEventDataStore where
  hashWithSalt _salt RestoreEventDataStore' {..} =
    _salt `Prelude.hashWithSalt` eventDataStore

instance Prelude.NFData RestoreEventDataStore where
  rnf RestoreEventDataStore' {..} =
    Prelude.rnf eventDataStore

instance Core.ToHeaders RestoreEventDataStore where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.RestoreEventDataStore" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RestoreEventDataStore where
  toJSON RestoreEventDataStore' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EventDataStore" Core..= eventDataStore)
          ]
      )

instance Core.ToPath RestoreEventDataStore where
  toPath = Prelude.const "/"

instance Core.ToQuery RestoreEventDataStore where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRestoreEventDataStoreResponse' smart constructor.
data RestoreEventDataStoreResponse = RestoreEventDataStoreResponse'
  { -- | The name of the event data store.
    name :: Prelude.Maybe Prelude.Text,
    -- | The event data store ARN.
    eventDataStoreArn :: Prelude.Maybe Prelude.Text,
    -- | The advanced event selectors that were used to select events.
    advancedEventSelectors :: Prelude.Maybe [AdvancedEventSelector],
    -- | The timestamp of an event data store\'s creation.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | Indicates whether the event data store is collecting events from all
    -- regions, or only from the region in which the event data store was
    -- created.
    multiRegionEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The timestamp that shows when an event data store was updated, if
    -- applicable. @UpdatedTimestamp@ is always either the same or newer than
    -- the time shown in @CreatedTimestamp@.
    updatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The status of the event data store.
    status :: Prelude.Maybe EventDataStoreStatus,
    -- | The retention period, in days.
    retentionPeriod :: Prelude.Maybe Prelude.Natural,
    -- | Indicates whether an event data store is collecting logged events for an
    -- organization in Organizations.
    organizationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Indicates that termination protection is enabled and the event data
    -- store cannot be automatically deleted.
    terminationProtectionEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreEventDataStoreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'restoreEventDataStoreResponse_name' - The name of the event data store.
--
-- 'eventDataStoreArn', 'restoreEventDataStoreResponse_eventDataStoreArn' - The event data store ARN.
--
-- 'advancedEventSelectors', 'restoreEventDataStoreResponse_advancedEventSelectors' - The advanced event selectors that were used to select events.
--
-- 'createdTimestamp', 'restoreEventDataStoreResponse_createdTimestamp' - The timestamp of an event data store\'s creation.
--
-- 'multiRegionEnabled', 'restoreEventDataStoreResponse_multiRegionEnabled' - Indicates whether the event data store is collecting events from all
-- regions, or only from the region in which the event data store was
-- created.
--
-- 'updatedTimestamp', 'restoreEventDataStoreResponse_updatedTimestamp' - The timestamp that shows when an event data store was updated, if
-- applicable. @UpdatedTimestamp@ is always either the same or newer than
-- the time shown in @CreatedTimestamp@.
--
-- 'status', 'restoreEventDataStoreResponse_status' - The status of the event data store.
--
-- 'retentionPeriod', 'restoreEventDataStoreResponse_retentionPeriod' - The retention period, in days.
--
-- 'organizationEnabled', 'restoreEventDataStoreResponse_organizationEnabled' - Indicates whether an event data store is collecting logged events for an
-- organization in Organizations.
--
-- 'terminationProtectionEnabled', 'restoreEventDataStoreResponse_terminationProtectionEnabled' - Indicates that termination protection is enabled and the event data
-- store cannot be automatically deleted.
--
-- 'httpStatus', 'restoreEventDataStoreResponse_httpStatus' - The response's http status code.
newRestoreEventDataStoreResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RestoreEventDataStoreResponse
newRestoreEventDataStoreResponse pHttpStatus_ =
  RestoreEventDataStoreResponse'
    { name =
        Prelude.Nothing,
      eventDataStoreArn = Prelude.Nothing,
      advancedEventSelectors = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      multiRegionEnabled = Prelude.Nothing,
      updatedTimestamp = Prelude.Nothing,
      status = Prelude.Nothing,
      retentionPeriod = Prelude.Nothing,
      organizationEnabled = Prelude.Nothing,
      terminationProtectionEnabled =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the event data store.
restoreEventDataStoreResponse_name :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Text)
restoreEventDataStoreResponse_name = Lens.lens (\RestoreEventDataStoreResponse' {name} -> name) (\s@RestoreEventDataStoreResponse' {} a -> s {name = a} :: RestoreEventDataStoreResponse)

-- | The event data store ARN.
restoreEventDataStoreResponse_eventDataStoreArn :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Text)
restoreEventDataStoreResponse_eventDataStoreArn = Lens.lens (\RestoreEventDataStoreResponse' {eventDataStoreArn} -> eventDataStoreArn) (\s@RestoreEventDataStoreResponse' {} a -> s {eventDataStoreArn = a} :: RestoreEventDataStoreResponse)

-- | The advanced event selectors that were used to select events.
restoreEventDataStoreResponse_advancedEventSelectors :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe [AdvancedEventSelector])
restoreEventDataStoreResponse_advancedEventSelectors = Lens.lens (\RestoreEventDataStoreResponse' {advancedEventSelectors} -> advancedEventSelectors) (\s@RestoreEventDataStoreResponse' {} a -> s {advancedEventSelectors = a} :: RestoreEventDataStoreResponse) Prelude.. Lens.mapping Lens.coerced

-- | The timestamp of an event data store\'s creation.
restoreEventDataStoreResponse_createdTimestamp :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.UTCTime)
restoreEventDataStoreResponse_createdTimestamp = Lens.lens (\RestoreEventDataStoreResponse' {createdTimestamp} -> createdTimestamp) (\s@RestoreEventDataStoreResponse' {} a -> s {createdTimestamp = a} :: RestoreEventDataStoreResponse) Prelude.. Lens.mapping Core._Time

-- | Indicates whether the event data store is collecting events from all
-- regions, or only from the region in which the event data store was
-- created.
restoreEventDataStoreResponse_multiRegionEnabled :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Bool)
restoreEventDataStoreResponse_multiRegionEnabled = Lens.lens (\RestoreEventDataStoreResponse' {multiRegionEnabled} -> multiRegionEnabled) (\s@RestoreEventDataStoreResponse' {} a -> s {multiRegionEnabled = a} :: RestoreEventDataStoreResponse)

-- | The timestamp that shows when an event data store was updated, if
-- applicable. @UpdatedTimestamp@ is always either the same or newer than
-- the time shown in @CreatedTimestamp@.
restoreEventDataStoreResponse_updatedTimestamp :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.UTCTime)
restoreEventDataStoreResponse_updatedTimestamp = Lens.lens (\RestoreEventDataStoreResponse' {updatedTimestamp} -> updatedTimestamp) (\s@RestoreEventDataStoreResponse' {} a -> s {updatedTimestamp = a} :: RestoreEventDataStoreResponse) Prelude.. Lens.mapping Core._Time

-- | The status of the event data store.
restoreEventDataStoreResponse_status :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe EventDataStoreStatus)
restoreEventDataStoreResponse_status = Lens.lens (\RestoreEventDataStoreResponse' {status} -> status) (\s@RestoreEventDataStoreResponse' {} a -> s {status = a} :: RestoreEventDataStoreResponse)

-- | The retention period, in days.
restoreEventDataStoreResponse_retentionPeriod :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Natural)
restoreEventDataStoreResponse_retentionPeriod = Lens.lens (\RestoreEventDataStoreResponse' {retentionPeriod} -> retentionPeriod) (\s@RestoreEventDataStoreResponse' {} a -> s {retentionPeriod = a} :: RestoreEventDataStoreResponse)

-- | Indicates whether an event data store is collecting logged events for an
-- organization in Organizations.
restoreEventDataStoreResponse_organizationEnabled :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Bool)
restoreEventDataStoreResponse_organizationEnabled = Lens.lens (\RestoreEventDataStoreResponse' {organizationEnabled} -> organizationEnabled) (\s@RestoreEventDataStoreResponse' {} a -> s {organizationEnabled = a} :: RestoreEventDataStoreResponse)

-- | Indicates that termination protection is enabled and the event data
-- store cannot be automatically deleted.
restoreEventDataStoreResponse_terminationProtectionEnabled :: Lens.Lens' RestoreEventDataStoreResponse (Prelude.Maybe Prelude.Bool)
restoreEventDataStoreResponse_terminationProtectionEnabled = Lens.lens (\RestoreEventDataStoreResponse' {terminationProtectionEnabled} -> terminationProtectionEnabled) (\s@RestoreEventDataStoreResponse' {} a -> s {terminationProtectionEnabled = a} :: RestoreEventDataStoreResponse)

-- | The response's http status code.
restoreEventDataStoreResponse_httpStatus :: Lens.Lens' RestoreEventDataStoreResponse Prelude.Int
restoreEventDataStoreResponse_httpStatus = Lens.lens (\RestoreEventDataStoreResponse' {httpStatus} -> httpStatus) (\s@RestoreEventDataStoreResponse' {} a -> s {httpStatus = a} :: RestoreEventDataStoreResponse)

instance Prelude.NFData RestoreEventDataStoreResponse where
  rnf RestoreEventDataStoreResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf eventDataStoreArn
      `Prelude.seq` Prelude.rnf advancedEventSelectors
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf multiRegionEnabled
      `Prelude.seq` Prelude.rnf updatedTimestamp
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf retentionPeriod
      `Prelude.seq` Prelude.rnf organizationEnabled
      `Prelude.seq` Prelude.rnf terminationProtectionEnabled
      `Prelude.seq` Prelude.rnf httpStatus

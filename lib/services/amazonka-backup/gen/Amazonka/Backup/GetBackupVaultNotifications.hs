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
-- Module      : Amazonka.Backup.GetBackupVaultNotifications
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns event notifications for the specified backup vault.
module Amazonka.Backup.GetBackupVaultNotifications
  ( -- * Creating a Request
    GetBackupVaultNotifications (..),
    newGetBackupVaultNotifications,

    -- * Request Lenses
    getBackupVaultNotifications_backupVaultName,

    -- * Destructuring the Response
    GetBackupVaultNotificationsResponse (..),
    newGetBackupVaultNotificationsResponse,

    -- * Response Lenses
    getBackupVaultNotificationsResponse_backupVaultName,
    getBackupVaultNotificationsResponse_backupVaultEvents,
    getBackupVaultNotificationsResponse_backupVaultArn,
    getBackupVaultNotificationsResponse_sNSTopicArn,
    getBackupVaultNotificationsResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetBackupVaultNotifications' smart constructor.
data GetBackupVaultNotifications = GetBackupVaultNotifications'
  { -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBackupVaultNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'getBackupVaultNotifications_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
newGetBackupVaultNotifications ::
  -- | 'backupVaultName'
  Prelude.Text ->
  GetBackupVaultNotifications
newGetBackupVaultNotifications pBackupVaultName_ =
  GetBackupVaultNotifications'
    { backupVaultName =
        pBackupVaultName_
    }

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
getBackupVaultNotifications_backupVaultName :: Lens.Lens' GetBackupVaultNotifications Prelude.Text
getBackupVaultNotifications_backupVaultName = Lens.lens (\GetBackupVaultNotifications' {backupVaultName} -> backupVaultName) (\s@GetBackupVaultNotifications' {} a -> s {backupVaultName = a} :: GetBackupVaultNotifications)

instance Core.AWSRequest GetBackupVaultNotifications where
  type
    AWSResponse GetBackupVaultNotifications =
      GetBackupVaultNotificationsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBackupVaultNotificationsResponse'
            Prelude.<$> (x Core..?> "BackupVaultName")
            Prelude.<*> ( x Core..?> "BackupVaultEvents"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "BackupVaultArn")
            Prelude.<*> (x Core..?> "SNSTopicArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBackupVaultNotifications where
  hashWithSalt _salt GetBackupVaultNotifications' {..} =
    _salt `Prelude.hashWithSalt` backupVaultName

instance Prelude.NFData GetBackupVaultNotifications where
  rnf GetBackupVaultNotifications' {..} =
    Prelude.rnf backupVaultName

instance Core.ToHeaders GetBackupVaultNotifications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetBackupVaultNotifications where
  toPath GetBackupVaultNotifications' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/notification-configuration"
      ]

instance Core.ToQuery GetBackupVaultNotifications where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetBackupVaultNotificationsResponse' smart constructor.
data GetBackupVaultNotificationsResponse = GetBackupVaultNotificationsResponse'
  { -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Region where they are created. They consist of lowercase
    -- letters, numbers, and hyphens.
    backupVaultName :: Prelude.Maybe Prelude.Text,
    -- | An array of events that indicate the status of jobs to back up resources
    -- to the backup vault.
    backupVaultEvents :: Prelude.Maybe [BackupVaultEvent],
    -- | An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
    -- for example, @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
    backupVaultArn :: Prelude.Maybe Prelude.Text,
    -- | An ARN that uniquely identifies an Amazon Simple Notification Service
    -- (Amazon SNS) topic; for example,
    -- @arn:aws:sns:us-west-2:111122223333:MyTopic@.
    sNSTopicArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBackupVaultNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'getBackupVaultNotificationsResponse_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Region where they are created. They consist of lowercase
-- letters, numbers, and hyphens.
--
-- 'backupVaultEvents', 'getBackupVaultNotificationsResponse_backupVaultEvents' - An array of events that indicate the status of jobs to back up resources
-- to the backup vault.
--
-- 'backupVaultArn', 'getBackupVaultNotificationsResponse_backupVaultArn' - An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
-- for example, @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
--
-- 'sNSTopicArn', 'getBackupVaultNotificationsResponse_sNSTopicArn' - An ARN that uniquely identifies an Amazon Simple Notification Service
-- (Amazon SNS) topic; for example,
-- @arn:aws:sns:us-west-2:111122223333:MyTopic@.
--
-- 'httpStatus', 'getBackupVaultNotificationsResponse_httpStatus' - The response's http status code.
newGetBackupVaultNotificationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBackupVaultNotificationsResponse
newGetBackupVaultNotificationsResponse pHttpStatus_ =
  GetBackupVaultNotificationsResponse'
    { backupVaultName =
        Prelude.Nothing,
      backupVaultEvents = Prelude.Nothing,
      backupVaultArn = Prelude.Nothing,
      sNSTopicArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Region where they are created. They consist of lowercase
-- letters, numbers, and hyphens.
getBackupVaultNotificationsResponse_backupVaultName :: Lens.Lens' GetBackupVaultNotificationsResponse (Prelude.Maybe Prelude.Text)
getBackupVaultNotificationsResponse_backupVaultName = Lens.lens (\GetBackupVaultNotificationsResponse' {backupVaultName} -> backupVaultName) (\s@GetBackupVaultNotificationsResponse' {} a -> s {backupVaultName = a} :: GetBackupVaultNotificationsResponse)

-- | An array of events that indicate the status of jobs to back up resources
-- to the backup vault.
getBackupVaultNotificationsResponse_backupVaultEvents :: Lens.Lens' GetBackupVaultNotificationsResponse (Prelude.Maybe [BackupVaultEvent])
getBackupVaultNotificationsResponse_backupVaultEvents = Lens.lens (\GetBackupVaultNotificationsResponse' {backupVaultEvents} -> backupVaultEvents) (\s@GetBackupVaultNotificationsResponse' {} a -> s {backupVaultEvents = a} :: GetBackupVaultNotificationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
-- for example, @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
getBackupVaultNotificationsResponse_backupVaultArn :: Lens.Lens' GetBackupVaultNotificationsResponse (Prelude.Maybe Prelude.Text)
getBackupVaultNotificationsResponse_backupVaultArn = Lens.lens (\GetBackupVaultNotificationsResponse' {backupVaultArn} -> backupVaultArn) (\s@GetBackupVaultNotificationsResponse' {} a -> s {backupVaultArn = a} :: GetBackupVaultNotificationsResponse)

-- | An ARN that uniquely identifies an Amazon Simple Notification Service
-- (Amazon SNS) topic; for example,
-- @arn:aws:sns:us-west-2:111122223333:MyTopic@.
getBackupVaultNotificationsResponse_sNSTopicArn :: Lens.Lens' GetBackupVaultNotificationsResponse (Prelude.Maybe Prelude.Text)
getBackupVaultNotificationsResponse_sNSTopicArn = Lens.lens (\GetBackupVaultNotificationsResponse' {sNSTopicArn} -> sNSTopicArn) (\s@GetBackupVaultNotificationsResponse' {} a -> s {sNSTopicArn = a} :: GetBackupVaultNotificationsResponse)

-- | The response's http status code.
getBackupVaultNotificationsResponse_httpStatus :: Lens.Lens' GetBackupVaultNotificationsResponse Prelude.Int
getBackupVaultNotificationsResponse_httpStatus = Lens.lens (\GetBackupVaultNotificationsResponse' {httpStatus} -> httpStatus) (\s@GetBackupVaultNotificationsResponse' {} a -> s {httpStatus = a} :: GetBackupVaultNotificationsResponse)

instance
  Prelude.NFData
    GetBackupVaultNotificationsResponse
  where
  rnf GetBackupVaultNotificationsResponse' {..} =
    Prelude.rnf backupVaultName
      `Prelude.seq` Prelude.rnf backupVaultEvents
      `Prelude.seq` Prelude.rnf backupVaultArn
      `Prelude.seq` Prelude.rnf sNSTopicArn
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.QuickSight.UpdateAccountSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Amazon QuickSight settings in your Amazon Web Services
-- account.
module Amazonka.QuickSight.UpdateAccountSettings
  ( -- * Creating a Request
    UpdateAccountSettings (..),
    newUpdateAccountSettings,

    -- * Request Lenses
    updateAccountSettings_notificationEmail,
    updateAccountSettings_awsAccountId,
    updateAccountSettings_defaultNamespace,

    -- * Destructuring the Response
    UpdateAccountSettingsResponse (..),
    newUpdateAccountSettingsResponse,

    -- * Response Lenses
    updateAccountSettingsResponse_requestId,
    updateAccountSettingsResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAccountSettings' smart constructor.
data UpdateAccountSettings = UpdateAccountSettings'
  { -- | The email address that you want Amazon QuickSight to send notifications
    -- to regarding your Amazon Web Services account or Amazon QuickSight
    -- subscription.
    notificationEmail :: Prelude.Maybe Prelude.Text,
    -- | The ID for the Amazon Web Services account that contains the Amazon
    -- QuickSight settings that you want to list.
    awsAccountId :: Prelude.Text,
    -- | The default namespace for this Amazon Web Services account. Currently,
    -- the default is @default@. Identity and Access Management (IAM) users
    -- that register for the first time with Amazon QuickSight provide an email
    -- address that becomes associated with the default namespace.
    defaultNamespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccountSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notificationEmail', 'updateAccountSettings_notificationEmail' - The email address that you want Amazon QuickSight to send notifications
-- to regarding your Amazon Web Services account or Amazon QuickSight
-- subscription.
--
-- 'awsAccountId', 'updateAccountSettings_awsAccountId' - The ID for the Amazon Web Services account that contains the Amazon
-- QuickSight settings that you want to list.
--
-- 'defaultNamespace', 'updateAccountSettings_defaultNamespace' - The default namespace for this Amazon Web Services account. Currently,
-- the default is @default@. Identity and Access Management (IAM) users
-- that register for the first time with Amazon QuickSight provide an email
-- address that becomes associated with the default namespace.
newUpdateAccountSettings ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'defaultNamespace'
  Prelude.Text ->
  UpdateAccountSettings
newUpdateAccountSettings
  pAwsAccountId_
  pDefaultNamespace_ =
    UpdateAccountSettings'
      { notificationEmail =
          Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        defaultNamespace = pDefaultNamespace_
      }

-- | The email address that you want Amazon QuickSight to send notifications
-- to regarding your Amazon Web Services account or Amazon QuickSight
-- subscription.
updateAccountSettings_notificationEmail :: Lens.Lens' UpdateAccountSettings (Prelude.Maybe Prelude.Text)
updateAccountSettings_notificationEmail = Lens.lens (\UpdateAccountSettings' {notificationEmail} -> notificationEmail) (\s@UpdateAccountSettings' {} a -> s {notificationEmail = a} :: UpdateAccountSettings)

-- | The ID for the Amazon Web Services account that contains the Amazon
-- QuickSight settings that you want to list.
updateAccountSettings_awsAccountId :: Lens.Lens' UpdateAccountSettings Prelude.Text
updateAccountSettings_awsAccountId = Lens.lens (\UpdateAccountSettings' {awsAccountId} -> awsAccountId) (\s@UpdateAccountSettings' {} a -> s {awsAccountId = a} :: UpdateAccountSettings)

-- | The default namespace for this Amazon Web Services account. Currently,
-- the default is @default@. Identity and Access Management (IAM) users
-- that register for the first time with Amazon QuickSight provide an email
-- address that becomes associated with the default namespace.
updateAccountSettings_defaultNamespace :: Lens.Lens' UpdateAccountSettings Prelude.Text
updateAccountSettings_defaultNamespace = Lens.lens (\UpdateAccountSettings' {defaultNamespace} -> defaultNamespace) (\s@UpdateAccountSettings' {} a -> s {defaultNamespace = a} :: UpdateAccountSettings)

instance Core.AWSRequest UpdateAccountSettings where
  type
    AWSResponse UpdateAccountSettings =
      UpdateAccountSettingsResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAccountSettingsResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAccountSettings where
  hashWithSalt _salt UpdateAccountSettings' {..} =
    _salt `Prelude.hashWithSalt` notificationEmail
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` defaultNamespace

instance Prelude.NFData UpdateAccountSettings where
  rnf UpdateAccountSettings' {..} =
    Prelude.rnf notificationEmail
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf defaultNamespace

instance Core.ToHeaders UpdateAccountSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAccountSettings where
  toJSON UpdateAccountSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NotificationEmail" Core..=)
              Prelude.<$> notificationEmail,
            Prelude.Just
              ("DefaultNamespace" Core..= defaultNamespace)
          ]
      )

instance Core.ToPath UpdateAccountSettings where
  toPath UpdateAccountSettings' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS awsAccountId, "/settings"]

instance Core.ToQuery UpdateAccountSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAccountSettingsResponse' smart constructor.
data UpdateAccountSettingsResponse = UpdateAccountSettingsResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccountSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'updateAccountSettingsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'status', 'updateAccountSettingsResponse_status' - The HTTP status of the request.
newUpdateAccountSettingsResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateAccountSettingsResponse
newUpdateAccountSettingsResponse pStatus_ =
  UpdateAccountSettingsResponse'
    { requestId =
        Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
updateAccountSettingsResponse_requestId :: Lens.Lens' UpdateAccountSettingsResponse (Prelude.Maybe Prelude.Text)
updateAccountSettingsResponse_requestId = Lens.lens (\UpdateAccountSettingsResponse' {requestId} -> requestId) (\s@UpdateAccountSettingsResponse' {} a -> s {requestId = a} :: UpdateAccountSettingsResponse)

-- | The HTTP status of the request.
updateAccountSettingsResponse_status :: Lens.Lens' UpdateAccountSettingsResponse Prelude.Int
updateAccountSettingsResponse_status = Lens.lens (\UpdateAccountSettingsResponse' {status} -> status) (\s@UpdateAccountSettingsResponse' {} a -> s {status = a} :: UpdateAccountSettingsResponse)

instance Prelude.NFData UpdateAccountSettingsResponse where
  rnf UpdateAccountSettingsResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status

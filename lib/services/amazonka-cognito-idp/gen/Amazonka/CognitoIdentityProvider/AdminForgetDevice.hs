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
-- Module      : Amazonka.CognitoIdentityProvider.AdminForgetDevice
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forgets the device, as an administrator.
--
-- Calling this action requires developer credentials.
module Amazonka.CognitoIdentityProvider.AdminForgetDevice
  ( -- * Creating a Request
    AdminForgetDevice (..),
    newAdminForgetDevice,

    -- * Request Lenses
    adminForgetDevice_userPoolId,
    adminForgetDevice_username,
    adminForgetDevice_deviceKey,

    -- * Destructuring the Response
    AdminForgetDeviceResponse (..),
    newAdminForgetDeviceResponse,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Sends the forgot device request, as an administrator.
--
-- /See:/ 'newAdminForgetDevice' smart constructor.
data AdminForgetDevice = AdminForgetDevice'
  { -- | The user pool ID.
    userPoolId :: Prelude.Text,
    -- | The user name.
    username :: Core.Sensitive Prelude.Text,
    -- | The device key.
    deviceKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdminForgetDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'adminForgetDevice_userPoolId' - The user pool ID.
--
-- 'username', 'adminForgetDevice_username' - The user name.
--
-- 'deviceKey', 'adminForgetDevice_deviceKey' - The device key.
newAdminForgetDevice ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  -- | 'deviceKey'
  Prelude.Text ->
  AdminForgetDevice
newAdminForgetDevice
  pUserPoolId_
  pUsername_
  pDeviceKey_ =
    AdminForgetDevice'
      { userPoolId = pUserPoolId_,
        username = Core._Sensitive Lens.# pUsername_,
        deviceKey = pDeviceKey_
      }

-- | The user pool ID.
adminForgetDevice_userPoolId :: Lens.Lens' AdminForgetDevice Prelude.Text
adminForgetDevice_userPoolId = Lens.lens (\AdminForgetDevice' {userPoolId} -> userPoolId) (\s@AdminForgetDevice' {} a -> s {userPoolId = a} :: AdminForgetDevice)

-- | The user name.
adminForgetDevice_username :: Lens.Lens' AdminForgetDevice Prelude.Text
adminForgetDevice_username = Lens.lens (\AdminForgetDevice' {username} -> username) (\s@AdminForgetDevice' {} a -> s {username = a} :: AdminForgetDevice) Prelude.. Core._Sensitive

-- | The device key.
adminForgetDevice_deviceKey :: Lens.Lens' AdminForgetDevice Prelude.Text
adminForgetDevice_deviceKey = Lens.lens (\AdminForgetDevice' {deviceKey} -> deviceKey) (\s@AdminForgetDevice' {} a -> s {deviceKey = a} :: AdminForgetDevice)

instance Core.AWSRequest AdminForgetDevice where
  type
    AWSResponse AdminForgetDevice =
      AdminForgetDeviceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull AdminForgetDeviceResponse'

instance Prelude.Hashable AdminForgetDevice where
  hashWithSalt _salt AdminForgetDevice' {..} =
    _salt `Prelude.hashWithSalt` userPoolId
      `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` deviceKey

instance Prelude.NFData AdminForgetDevice where
  rnf AdminForgetDevice' {..} =
    Prelude.rnf userPoolId
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf deviceKey

instance Core.ToHeaders AdminForgetDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.AdminForgetDevice" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AdminForgetDevice where
  toJSON AdminForgetDevice' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("UserPoolId" Core..= userPoolId),
            Prelude.Just ("Username" Core..= username),
            Prelude.Just ("DeviceKey" Core..= deviceKey)
          ]
      )

instance Core.ToPath AdminForgetDevice where
  toPath = Prelude.const "/"

instance Core.ToQuery AdminForgetDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAdminForgetDeviceResponse' smart constructor.
data AdminForgetDeviceResponse = AdminForgetDeviceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdminForgetDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAdminForgetDeviceResponse ::
  AdminForgetDeviceResponse
newAdminForgetDeviceResponse =
  AdminForgetDeviceResponse'

instance Prelude.NFData AdminForgetDeviceResponse where
  rnf _ = ()

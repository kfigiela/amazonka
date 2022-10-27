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
-- Module      : Amazonka.CognitoIdentityProvider.AdminGetUser
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified user by user name in a user pool as an administrator.
-- Works on any user.
--
-- Calling this action requires developer credentials.
module Amazonka.CognitoIdentityProvider.AdminGetUser
  ( -- * Creating a Request
    AdminGetUser (..),
    newAdminGetUser,

    -- * Request Lenses
    adminGetUser_userPoolId,
    adminGetUser_username,

    -- * Destructuring the Response
    AdminGetUserResponse (..),
    newAdminGetUserResponse,

    -- * Response Lenses
    adminGetUserResponse_userMFASettingList,
    adminGetUserResponse_preferredMfaSetting,
    adminGetUserResponse_userLastModifiedDate,
    adminGetUserResponse_userCreateDate,
    adminGetUserResponse_userAttributes,
    adminGetUserResponse_enabled,
    adminGetUserResponse_userStatus,
    adminGetUserResponse_mfaOptions,
    adminGetUserResponse_httpStatus,
    adminGetUserResponse_username,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the request to get the specified user as an administrator.
--
-- /See:/ 'newAdminGetUser' smart constructor.
data AdminGetUser = AdminGetUser'
  { -- | The user pool ID for the user pool where you want to get information
    -- about the user.
    userPoolId :: Prelude.Text,
    -- | The user name of the user you want to retrieve.
    username :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdminGetUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'adminGetUser_userPoolId' - The user pool ID for the user pool where you want to get information
-- about the user.
--
-- 'username', 'adminGetUser_username' - The user name of the user you want to retrieve.
newAdminGetUser ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  AdminGetUser
newAdminGetUser pUserPoolId_ pUsername_ =
  AdminGetUser'
    { userPoolId = pUserPoolId_,
      username = Core._Sensitive Lens.# pUsername_
    }

-- | The user pool ID for the user pool where you want to get information
-- about the user.
adminGetUser_userPoolId :: Lens.Lens' AdminGetUser Prelude.Text
adminGetUser_userPoolId = Lens.lens (\AdminGetUser' {userPoolId} -> userPoolId) (\s@AdminGetUser' {} a -> s {userPoolId = a} :: AdminGetUser)

-- | The user name of the user you want to retrieve.
adminGetUser_username :: Lens.Lens' AdminGetUser Prelude.Text
adminGetUser_username = Lens.lens (\AdminGetUser' {username} -> username) (\s@AdminGetUser' {} a -> s {username = a} :: AdminGetUser) Prelude.. Core._Sensitive

instance Core.AWSRequest AdminGetUser where
  type AWSResponse AdminGetUser = AdminGetUserResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          AdminGetUserResponse'
            Prelude.<$> ( x Core..?> "UserMFASettingList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "PreferredMfaSetting")
            Prelude.<*> (x Core..?> "UserLastModifiedDate")
            Prelude.<*> (x Core..?> "UserCreateDate")
            Prelude.<*> (x Core..?> "UserAttributes" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Enabled")
            Prelude.<*> (x Core..?> "UserStatus")
            Prelude.<*> (x Core..?> "MFAOptions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Username")
      )

instance Prelude.Hashable AdminGetUser where
  hashWithSalt _salt AdminGetUser' {..} =
    _salt `Prelude.hashWithSalt` userPoolId
      `Prelude.hashWithSalt` username

instance Prelude.NFData AdminGetUser where
  rnf AdminGetUser' {..} =
    Prelude.rnf userPoolId
      `Prelude.seq` Prelude.rnf username

instance Core.ToHeaders AdminGetUser where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.AdminGetUser" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AdminGetUser where
  toJSON AdminGetUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("UserPoolId" Core..= userPoolId),
            Prelude.Just ("Username" Core..= username)
          ]
      )

instance Core.ToPath AdminGetUser where
  toPath = Prelude.const "/"

instance Core.ToQuery AdminGetUser where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server from the request to get the
-- specified user as an administrator.
--
-- /See:/ 'newAdminGetUserResponse' smart constructor.
data AdminGetUserResponse = AdminGetUserResponse'
  { -- | The MFA options that are activated for the user. The possible values in
    -- this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@.
    userMFASettingList :: Prelude.Maybe [Prelude.Text],
    -- | The user\'s preferred MFA setting.
    preferredMfaSetting :: Prelude.Maybe Prelude.Text,
    -- | The date the user was last modified.
    userLastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The date the user was created.
    userCreateDate :: Prelude.Maybe Core.POSIX,
    -- | An array of name-value pairs representing user attributes.
    userAttributes :: Prelude.Maybe [AttributeType],
    -- | Indicates that the status is @enabled@.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The user status. Can be one of the following:
    --
    -- -   UNCONFIRMED - User has been created but not confirmed.
    --
    -- -   CONFIRMED - User has been confirmed.
    --
    -- -   ARCHIVED - User is no longer active.
    --
    -- -   UNKNOWN - User status isn\'t known.
    --
    -- -   RESET_REQUIRED - User is confirmed, but the user must request a code
    --     and reset their password before they can sign in.
    --
    -- -   FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign
    --     in using a temporary password, but on first sign-in, the user must
    --     change their password to a new value before doing anything else.
    userStatus :: Prelude.Maybe UserStatusType,
    -- | /This response parameter is no longer supported./ It provides
    -- information only about SMS MFA configurations. It doesn\'t provide
    -- information about time-based one-time password (TOTP) software token MFA
    -- configurations. To look up information about either type of MFA
    -- configuration, use UserMFASettingList instead.
    mfaOptions :: Prelude.Maybe [MFAOptionType],
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The user name of the user about whom you\'re receiving information.
    username :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdminGetUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userMFASettingList', 'adminGetUserResponse_userMFASettingList' - The MFA options that are activated for the user. The possible values in
-- this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@.
--
-- 'preferredMfaSetting', 'adminGetUserResponse_preferredMfaSetting' - The user\'s preferred MFA setting.
--
-- 'userLastModifiedDate', 'adminGetUserResponse_userLastModifiedDate' - The date the user was last modified.
--
-- 'userCreateDate', 'adminGetUserResponse_userCreateDate' - The date the user was created.
--
-- 'userAttributes', 'adminGetUserResponse_userAttributes' - An array of name-value pairs representing user attributes.
--
-- 'enabled', 'adminGetUserResponse_enabled' - Indicates that the status is @enabled@.
--
-- 'userStatus', 'adminGetUserResponse_userStatus' - The user status. Can be one of the following:
--
-- -   UNCONFIRMED - User has been created but not confirmed.
--
-- -   CONFIRMED - User has been confirmed.
--
-- -   ARCHIVED - User is no longer active.
--
-- -   UNKNOWN - User status isn\'t known.
--
-- -   RESET_REQUIRED - User is confirmed, but the user must request a code
--     and reset their password before they can sign in.
--
-- -   FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign
--     in using a temporary password, but on first sign-in, the user must
--     change their password to a new value before doing anything else.
--
-- 'mfaOptions', 'adminGetUserResponse_mfaOptions' - /This response parameter is no longer supported./ It provides
-- information only about SMS MFA configurations. It doesn\'t provide
-- information about time-based one-time password (TOTP) software token MFA
-- configurations. To look up information about either type of MFA
-- configuration, use UserMFASettingList instead.
--
-- 'httpStatus', 'adminGetUserResponse_httpStatus' - The response's http status code.
--
-- 'username', 'adminGetUserResponse_username' - The user name of the user about whom you\'re receiving information.
newAdminGetUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'username'
  Prelude.Text ->
  AdminGetUserResponse
newAdminGetUserResponse pHttpStatus_ pUsername_ =
  AdminGetUserResponse'
    { userMFASettingList =
        Prelude.Nothing,
      preferredMfaSetting = Prelude.Nothing,
      userLastModifiedDate = Prelude.Nothing,
      userCreateDate = Prelude.Nothing,
      userAttributes = Prelude.Nothing,
      enabled = Prelude.Nothing,
      userStatus = Prelude.Nothing,
      mfaOptions = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      username = Core._Sensitive Lens.# pUsername_
    }

-- | The MFA options that are activated for the user. The possible values in
-- this list are @SMS_MFA@ and @SOFTWARE_TOKEN_MFA@.
adminGetUserResponse_userMFASettingList :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe [Prelude.Text])
adminGetUserResponse_userMFASettingList = Lens.lens (\AdminGetUserResponse' {userMFASettingList} -> userMFASettingList) (\s@AdminGetUserResponse' {} a -> s {userMFASettingList = a} :: AdminGetUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The user\'s preferred MFA setting.
adminGetUserResponse_preferredMfaSetting :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe Prelude.Text)
adminGetUserResponse_preferredMfaSetting = Lens.lens (\AdminGetUserResponse' {preferredMfaSetting} -> preferredMfaSetting) (\s@AdminGetUserResponse' {} a -> s {preferredMfaSetting = a} :: AdminGetUserResponse)

-- | The date the user was last modified.
adminGetUserResponse_userLastModifiedDate :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe Prelude.UTCTime)
adminGetUserResponse_userLastModifiedDate = Lens.lens (\AdminGetUserResponse' {userLastModifiedDate} -> userLastModifiedDate) (\s@AdminGetUserResponse' {} a -> s {userLastModifiedDate = a} :: AdminGetUserResponse) Prelude.. Lens.mapping Core._Time

-- | The date the user was created.
adminGetUserResponse_userCreateDate :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe Prelude.UTCTime)
adminGetUserResponse_userCreateDate = Lens.lens (\AdminGetUserResponse' {userCreateDate} -> userCreateDate) (\s@AdminGetUserResponse' {} a -> s {userCreateDate = a} :: AdminGetUserResponse) Prelude.. Lens.mapping Core._Time

-- | An array of name-value pairs representing user attributes.
adminGetUserResponse_userAttributes :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe [AttributeType])
adminGetUserResponse_userAttributes = Lens.lens (\AdminGetUserResponse' {userAttributes} -> userAttributes) (\s@AdminGetUserResponse' {} a -> s {userAttributes = a} :: AdminGetUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | Indicates that the status is @enabled@.
adminGetUserResponse_enabled :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe Prelude.Bool)
adminGetUserResponse_enabled = Lens.lens (\AdminGetUserResponse' {enabled} -> enabled) (\s@AdminGetUserResponse' {} a -> s {enabled = a} :: AdminGetUserResponse)

-- | The user status. Can be one of the following:
--
-- -   UNCONFIRMED - User has been created but not confirmed.
--
-- -   CONFIRMED - User has been confirmed.
--
-- -   ARCHIVED - User is no longer active.
--
-- -   UNKNOWN - User status isn\'t known.
--
-- -   RESET_REQUIRED - User is confirmed, but the user must request a code
--     and reset their password before they can sign in.
--
-- -   FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign
--     in using a temporary password, but on first sign-in, the user must
--     change their password to a new value before doing anything else.
adminGetUserResponse_userStatus :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe UserStatusType)
adminGetUserResponse_userStatus = Lens.lens (\AdminGetUserResponse' {userStatus} -> userStatus) (\s@AdminGetUserResponse' {} a -> s {userStatus = a} :: AdminGetUserResponse)

-- | /This response parameter is no longer supported./ It provides
-- information only about SMS MFA configurations. It doesn\'t provide
-- information about time-based one-time password (TOTP) software token MFA
-- configurations. To look up information about either type of MFA
-- configuration, use UserMFASettingList instead.
adminGetUserResponse_mfaOptions :: Lens.Lens' AdminGetUserResponse (Prelude.Maybe [MFAOptionType])
adminGetUserResponse_mfaOptions = Lens.lens (\AdminGetUserResponse' {mfaOptions} -> mfaOptions) (\s@AdminGetUserResponse' {} a -> s {mfaOptions = a} :: AdminGetUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
adminGetUserResponse_httpStatus :: Lens.Lens' AdminGetUserResponse Prelude.Int
adminGetUserResponse_httpStatus = Lens.lens (\AdminGetUserResponse' {httpStatus} -> httpStatus) (\s@AdminGetUserResponse' {} a -> s {httpStatus = a} :: AdminGetUserResponse)

-- | The user name of the user about whom you\'re receiving information.
adminGetUserResponse_username :: Lens.Lens' AdminGetUserResponse Prelude.Text
adminGetUserResponse_username = Lens.lens (\AdminGetUserResponse' {username} -> username) (\s@AdminGetUserResponse' {} a -> s {username = a} :: AdminGetUserResponse) Prelude.. Core._Sensitive

instance Prelude.NFData AdminGetUserResponse where
  rnf AdminGetUserResponse' {..} =
    Prelude.rnf userMFASettingList
      `Prelude.seq` Prelude.rnf preferredMfaSetting
      `Prelude.seq` Prelude.rnf userLastModifiedDate
      `Prelude.seq` Prelude.rnf userCreateDate
      `Prelude.seq` Prelude.rnf userAttributes
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf userStatus
      `Prelude.seq` Prelude.rnf mfaOptions
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf username

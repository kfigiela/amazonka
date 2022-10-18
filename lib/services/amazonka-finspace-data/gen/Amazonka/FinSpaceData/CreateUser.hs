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
-- Module      : Amazonka.FinSpaceData.CreateUser
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new user in FinSpace.
module Amazonka.FinSpaceData.CreateUser
  ( -- * Creating a Request
    CreateUser (..),
    newCreateUser,

    -- * Request Lenses
    createUser_clientToken,
    createUser_firstName,
    createUser_lastName,
    createUser_apiAccess,
    createUser_apiAccessPrincipalArn,
    createUser_emailAddress,
    createUser_type,

    -- * Destructuring the Response
    CreateUserResponse (..),
    newCreateUserResponse,

    -- * Response Lenses
    createUserResponse_userId,
    createUserResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateUser' smart constructor.
data CreateUser = CreateUser'
  { -- | A token that ensures idempotency. This token expires in 10 minutes.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The first name of the user that you want to register.
    firstName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The last name of the user that you want to register.
    lastName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The option to indicate whether the user can use the
    -- @GetProgrammaticAccessCredentials@ API to obtain credentials that can
    -- then be used to access other FinSpace Data API operations.
    --
    -- -   @ENABLED@ – The user has permissions to use the APIs.
    --
    -- -   @DISABLED@ – The user does not have permissions to use any APIs.
    apiAccess :: Prelude.Maybe ApiAccess,
    -- | The ARN identifier of an AWS user or role that is allowed to call the
    -- @GetProgrammaticAccessCredentials@ API to obtain a credentials token for
    -- a specific FinSpace user. This must be an IAM role within your FinSpace
    -- account.
    apiAccessPrincipalArn :: Prelude.Maybe Prelude.Text,
    -- | The email address of the user that you want to register. The email
    -- address serves as a uniquer identifier for each user and cannot be
    -- changed after it\'s created.
    emailAddress :: Core.Sensitive Prelude.Text,
    -- | The option to indicate the type of user. Use one of the following
    -- options to specify this parameter:
    --
    -- -   @SUPER_USER@ – A user with permission to all the functionality and
    --     data in FinSpace.
    --
    -- -   @APP_USER@ – A user with specific permissions in FinSpace. The users
    --     are assigned permissions by adding them to a permission group.
    type' :: UserType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createUser_clientToken' - A token that ensures idempotency. This token expires in 10 minutes.
--
-- 'firstName', 'createUser_firstName' - The first name of the user that you want to register.
--
-- 'lastName', 'createUser_lastName' - The last name of the user that you want to register.
--
-- 'apiAccess', 'createUser_apiAccess' - The option to indicate whether the user can use the
-- @GetProgrammaticAccessCredentials@ API to obtain credentials that can
-- then be used to access other FinSpace Data API operations.
--
-- -   @ENABLED@ – The user has permissions to use the APIs.
--
-- -   @DISABLED@ – The user does not have permissions to use any APIs.
--
-- 'apiAccessPrincipalArn', 'createUser_apiAccessPrincipalArn' - The ARN identifier of an AWS user or role that is allowed to call the
-- @GetProgrammaticAccessCredentials@ API to obtain a credentials token for
-- a specific FinSpace user. This must be an IAM role within your FinSpace
-- account.
--
-- 'emailAddress', 'createUser_emailAddress' - The email address of the user that you want to register. The email
-- address serves as a uniquer identifier for each user and cannot be
-- changed after it\'s created.
--
-- 'type'', 'createUser_type' - The option to indicate the type of user. Use one of the following
-- options to specify this parameter:
--
-- -   @SUPER_USER@ – A user with permission to all the functionality and
--     data in FinSpace.
--
-- -   @APP_USER@ – A user with specific permissions in FinSpace. The users
--     are assigned permissions by adding them to a permission group.
newCreateUser ::
  -- | 'emailAddress'
  Prelude.Text ->
  -- | 'type''
  UserType ->
  CreateUser
newCreateUser pEmailAddress_ pType_ =
  CreateUser'
    { clientToken = Prelude.Nothing,
      firstName = Prelude.Nothing,
      lastName = Prelude.Nothing,
      apiAccess = Prelude.Nothing,
      apiAccessPrincipalArn = Prelude.Nothing,
      emailAddress = Core._Sensitive Lens.# pEmailAddress_,
      type' = pType_
    }

-- | A token that ensures idempotency. This token expires in 10 minutes.
createUser_clientToken :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_clientToken = Lens.lens (\CreateUser' {clientToken} -> clientToken) (\s@CreateUser' {} a -> s {clientToken = a} :: CreateUser)

-- | The first name of the user that you want to register.
createUser_firstName :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_firstName = Lens.lens (\CreateUser' {firstName} -> firstName) (\s@CreateUser' {} a -> s {firstName = a} :: CreateUser) Prelude.. Lens.mapping Core._Sensitive

-- | The last name of the user that you want to register.
createUser_lastName :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_lastName = Lens.lens (\CreateUser' {lastName} -> lastName) (\s@CreateUser' {} a -> s {lastName = a} :: CreateUser) Prelude.. Lens.mapping Core._Sensitive

-- | The option to indicate whether the user can use the
-- @GetProgrammaticAccessCredentials@ API to obtain credentials that can
-- then be used to access other FinSpace Data API operations.
--
-- -   @ENABLED@ – The user has permissions to use the APIs.
--
-- -   @DISABLED@ – The user does not have permissions to use any APIs.
createUser_apiAccess :: Lens.Lens' CreateUser (Prelude.Maybe ApiAccess)
createUser_apiAccess = Lens.lens (\CreateUser' {apiAccess} -> apiAccess) (\s@CreateUser' {} a -> s {apiAccess = a} :: CreateUser)

-- | The ARN identifier of an AWS user or role that is allowed to call the
-- @GetProgrammaticAccessCredentials@ API to obtain a credentials token for
-- a specific FinSpace user. This must be an IAM role within your FinSpace
-- account.
createUser_apiAccessPrincipalArn :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_apiAccessPrincipalArn = Lens.lens (\CreateUser' {apiAccessPrincipalArn} -> apiAccessPrincipalArn) (\s@CreateUser' {} a -> s {apiAccessPrincipalArn = a} :: CreateUser)

-- | The email address of the user that you want to register. The email
-- address serves as a uniquer identifier for each user and cannot be
-- changed after it\'s created.
createUser_emailAddress :: Lens.Lens' CreateUser Prelude.Text
createUser_emailAddress = Lens.lens (\CreateUser' {emailAddress} -> emailAddress) (\s@CreateUser' {} a -> s {emailAddress = a} :: CreateUser) Prelude.. Core._Sensitive

-- | The option to indicate the type of user. Use one of the following
-- options to specify this parameter:
--
-- -   @SUPER_USER@ – A user with permission to all the functionality and
--     data in FinSpace.
--
-- -   @APP_USER@ – A user with specific permissions in FinSpace. The users
--     are assigned permissions by adding them to a permission group.
createUser_type :: Lens.Lens' CreateUser UserType
createUser_type = Lens.lens (\CreateUser' {type'} -> type') (\s@CreateUser' {} a -> s {type' = a} :: CreateUser)

instance Core.AWSRequest CreateUser where
  type AWSResponse CreateUser = CreateUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateUserResponse'
            Prelude.<$> (x Core..?> "userId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateUser where
  hashWithSalt _salt CreateUser' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` firstName
      `Prelude.hashWithSalt` lastName
      `Prelude.hashWithSalt` apiAccess
      `Prelude.hashWithSalt` apiAccessPrincipalArn
      `Prelude.hashWithSalt` emailAddress
      `Prelude.hashWithSalt` type'

instance Prelude.NFData CreateUser where
  rnf CreateUser' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf firstName
      `Prelude.seq` Prelude.rnf lastName
      `Prelude.seq` Prelude.rnf apiAccess
      `Prelude.seq` Prelude.rnf apiAccessPrincipalArn
      `Prelude.seq` Prelude.rnf emailAddress
      `Prelude.seq` Prelude.rnf type'

instance Core.ToHeaders CreateUser where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateUser where
  toJSON CreateUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("firstName" Core..=) Prelude.<$> firstName,
            ("lastName" Core..=) Prelude.<$> lastName,
            ("ApiAccess" Core..=) Prelude.<$> apiAccess,
            ("apiAccessPrincipalArn" Core..=)
              Prelude.<$> apiAccessPrincipalArn,
            Prelude.Just ("emailAddress" Core..= emailAddress),
            Prelude.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath CreateUser where
  toPath = Prelude.const "/user"

instance Core.ToQuery CreateUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateUserResponse' smart constructor.
data CreateUserResponse = CreateUserResponse'
  { -- | The unique identifier for the user.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userId', 'createUserResponse_userId' - The unique identifier for the user.
--
-- 'httpStatus', 'createUserResponse_httpStatus' - The response's http status code.
newCreateUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateUserResponse
newCreateUserResponse pHttpStatus_ =
  CreateUserResponse'
    { userId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier for the user.
createUserResponse_userId :: Lens.Lens' CreateUserResponse (Prelude.Maybe Prelude.Text)
createUserResponse_userId = Lens.lens (\CreateUserResponse' {userId} -> userId) (\s@CreateUserResponse' {} a -> s {userId = a} :: CreateUserResponse)

-- | The response's http status code.
createUserResponse_httpStatus :: Lens.Lens' CreateUserResponse Prelude.Int
createUserResponse_httpStatus = Lens.lens (\CreateUserResponse' {httpStatus} -> httpStatus) (\s@CreateUserResponse' {} a -> s {httpStatus = a} :: CreateUserResponse)

instance Prelude.NFData CreateUserResponse where
  rnf CreateUserResponse' {..} =
    Prelude.rnf userId
      `Prelude.seq` Prelude.rnf httpStatus
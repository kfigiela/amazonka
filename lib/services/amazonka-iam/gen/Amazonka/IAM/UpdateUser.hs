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
-- Module      : Amazonka.IAM.UpdateUser
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name and\/or the path of the specified IAM user.
--
-- You should understand the implications of changing an IAM user\'s path
-- or name. For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming Renaming an IAM user>
-- and
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html Renaming an IAM group>
-- in the /IAM User Guide/.
--
-- To change a user name, the requester must have appropriate permissions
-- on both the source object and the target object. For example, to change
-- Bob to Robert, the entity making the request must have permission on Bob
-- and Robert, or must have permission on all (*). For more information
-- about permissions, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html Permissions and policies>.
module Amazonka.IAM.UpdateUser
  ( -- * Creating a Request
    UpdateUser (..),
    newUpdateUser,

    -- * Request Lenses
    updateUser_newUserName,
    updateUser_newPath,
    updateUser_userName,

    -- * Destructuring the Response
    UpdateUserResponse (..),
    newUpdateUserResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateUser' smart constructor.
data UpdateUser = UpdateUser'
  { -- | New name for the user. Include this parameter only if you\'re changing
    -- the user\'s name.
    --
    -- IAM user, group, role, and policy names must be unique within the
    -- account. Names are not distinguished by case. For example, you cannot
    -- create resources named both \"MyResource\" and \"myresource\".
    newUserName' :: Prelude.Maybe Prelude.Text,
    -- | New path for the IAM user. Include this parameter only if you\'re
    -- changing the user\'s path.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of either a forward slash (\/) by itself or a string that
    -- must begin and end with forward slashes. In addition, it can contain any
    -- ASCII character from the ! (@\\u0021@) through the DEL character
    -- (@\\u007F@), including most punctuation characters, digits, and upper
    -- and lowercased letters.
    newPath' :: Prelude.Maybe Prelude.Text,
    -- | Name of the user to update. If you\'re changing the name of the user,
    -- this is the original user name.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    userName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'newUserName'', 'updateUser_newUserName' - New name for the user. Include this parameter only if you\'re changing
-- the user\'s name.
--
-- IAM user, group, role, and policy names must be unique within the
-- account. Names are not distinguished by case. For example, you cannot
-- create resources named both \"MyResource\" and \"myresource\".
--
-- 'newPath'', 'updateUser_newPath' - New path for the IAM user. Include this parameter only if you\'re
-- changing the user\'s path.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of either a forward slash (\/) by itself or a string that
-- must begin and end with forward slashes. In addition, it can contain any
-- ASCII character from the ! (@\\u0021@) through the DEL character
-- (@\\u007F@), including most punctuation characters, digits, and upper
-- and lowercased letters.
--
-- 'userName', 'updateUser_userName' - Name of the user to update. If you\'re changing the name of the user,
-- this is the original user name.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
newUpdateUser ::
  -- | 'userName'
  Prelude.Text ->
  UpdateUser
newUpdateUser pUserName_ =
  UpdateUser'
    { newUserName' = Prelude.Nothing,
      newPath' = Prelude.Nothing,
      userName = pUserName_
    }

-- | New name for the user. Include this parameter only if you\'re changing
-- the user\'s name.
--
-- IAM user, group, role, and policy names must be unique within the
-- account. Names are not distinguished by case. For example, you cannot
-- create resources named both \"MyResource\" and \"myresource\".
updateUser_newUserName :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_newUserName = Lens.lens (\UpdateUser' {newUserName'} -> newUserName') (\s@UpdateUser' {} a -> s {newUserName' = a} :: UpdateUser)

-- | New path for the IAM user. Include this parameter only if you\'re
-- changing the user\'s path.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of either a forward slash (\/) by itself or a string that
-- must begin and end with forward slashes. In addition, it can contain any
-- ASCII character from the ! (@\\u0021@) through the DEL character
-- (@\\u007F@), including most punctuation characters, digits, and upper
-- and lowercased letters.
updateUser_newPath :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_newPath = Lens.lens (\UpdateUser' {newPath'} -> newPath') (\s@UpdateUser' {} a -> s {newPath' = a} :: UpdateUser)

-- | Name of the user to update. If you\'re changing the name of the user,
-- this is the original user name.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
updateUser_userName :: Lens.Lens' UpdateUser Prelude.Text
updateUser_userName = Lens.lens (\UpdateUser' {userName} -> userName) (\s@UpdateUser' {} a -> s {userName = a} :: UpdateUser)

instance Core.AWSRequest UpdateUser where
  type AWSResponse UpdateUser = UpdateUserResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response = Response.receiveNull UpdateUserResponse'

instance Prelude.Hashable UpdateUser where
  hashWithSalt _salt UpdateUser' {..} =
    _salt `Prelude.hashWithSalt` newUserName'
      `Prelude.hashWithSalt` newPath'
      `Prelude.hashWithSalt` userName

instance Prelude.NFData UpdateUser where
  rnf UpdateUser' {..} =
    Prelude.rnf newUserName'
      `Prelude.seq` Prelude.rnf newPath'
      `Prelude.seq` Prelude.rnf userName

instance Core.ToHeaders UpdateUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath UpdateUser where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateUser where
  toQuery UpdateUser' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("UpdateUser" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-08" :: Prelude.ByteString),
        "NewUserName" Core.=: newUserName',
        "NewPath" Core.=: newPath',
        "UserName" Core.=: userName
      ]

-- | /See:/ 'newUpdateUserResponse' smart constructor.
data UpdateUserResponse = UpdateUserResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateUserResponse ::
  UpdateUserResponse
newUpdateUserResponse = UpdateUserResponse'

instance Prelude.NFData UpdateUserResponse where
  rnf _ = ()

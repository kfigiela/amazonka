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
-- Module      : Amazonka.IdentityStore.DescribeUser
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the user metadata and attributes from the @UserId@ in an
-- identity store.
module Amazonka.IdentityStore.DescribeUser
  ( -- * Creating a Request
    DescribeUser (..),
    newDescribeUser,

    -- * Request Lenses
    describeUser_identityStoreId,
    describeUser_userId,

    -- * Destructuring the Response
    DescribeUserResponse (..),
    newDescribeUserResponse,

    -- * Response Lenses
    describeUserResponse_name,
    describeUserResponse_externalIds,
    describeUserResponse_userName,
    describeUserResponse_locale,
    describeUserResponse_timezone,
    describeUserResponse_displayName,
    describeUserResponse_userType,
    describeUserResponse_profileUrl,
    describeUserResponse_preferredLanguage,
    describeUserResponse_title,
    describeUserResponse_emails,
    describeUserResponse_addresses,
    describeUserResponse_nickName,
    describeUserResponse_phoneNumbers,
    describeUserResponse_httpStatus,
    describeUserResponse_userId,
    describeUserResponse_identityStoreId,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IdentityStore.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeUser' smart constructor.
data DescribeUser = DescribeUser'
  { -- | The globally unique identifier for the identity store, such as
    -- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
    -- @1234567890@ is a randomly generated string that contains numbers and
    -- lower case letters. This value is generated at the time that a new
    -- identity store is created.
    identityStoreId :: Prelude.Text,
    -- | The identifier for a user in the identity store.
    userId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identityStoreId', 'describeUser_identityStoreId' - The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
--
-- 'userId', 'describeUser_userId' - The identifier for a user in the identity store.
newDescribeUser ::
  -- | 'identityStoreId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  DescribeUser
newDescribeUser pIdentityStoreId_ pUserId_ =
  DescribeUser'
    { identityStoreId = pIdentityStoreId_,
      userId = pUserId_
    }

-- | The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
describeUser_identityStoreId :: Lens.Lens' DescribeUser Prelude.Text
describeUser_identityStoreId = Lens.lens (\DescribeUser' {identityStoreId} -> identityStoreId) (\s@DescribeUser' {} a -> s {identityStoreId = a} :: DescribeUser)

-- | The identifier for a user in the identity store.
describeUser_userId :: Lens.Lens' DescribeUser Prelude.Text
describeUser_userId = Lens.lens (\DescribeUser' {userId} -> userId) (\s@DescribeUser' {} a -> s {userId = a} :: DescribeUser)

instance Core.AWSRequest DescribeUser where
  type AWSResponse DescribeUser = DescribeUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeUserResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "ExternalIds")
            Prelude.<*> (x Core..?> "UserName")
            Prelude.<*> (x Core..?> "Locale")
            Prelude.<*> (x Core..?> "Timezone")
            Prelude.<*> (x Core..?> "DisplayName")
            Prelude.<*> (x Core..?> "UserType")
            Prelude.<*> (x Core..?> "ProfileUrl")
            Prelude.<*> (x Core..?> "PreferredLanguage")
            Prelude.<*> (x Core..?> "Title")
            Prelude.<*> (x Core..?> "Emails")
            Prelude.<*> (x Core..?> "Addresses")
            Prelude.<*> (x Core..?> "NickName")
            Prelude.<*> (x Core..?> "PhoneNumbers")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "UserId")
            Prelude.<*> (x Core..:> "IdentityStoreId")
      )

instance Prelude.Hashable DescribeUser where
  hashWithSalt _salt DescribeUser' {..} =
    _salt `Prelude.hashWithSalt` identityStoreId
      `Prelude.hashWithSalt` userId

instance Prelude.NFData DescribeUser where
  rnf DescribeUser' {..} =
    Prelude.rnf identityStoreId
      `Prelude.seq` Prelude.rnf userId

instance Core.ToHeaders DescribeUser where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIdentityStore.DescribeUser" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeUser where
  toJSON DescribeUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("IdentityStoreId" Core..= identityStoreId),
            Prelude.Just ("UserId" Core..= userId)
          ]
      )

instance Core.ToPath DescribeUser where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeUserResponse' smart constructor.
data DescribeUserResponse = DescribeUserResponse'
  { -- | The name of the user.
    name :: Prelude.Maybe Name,
    -- | A list of @ExternalId@ objects that contains the identifiers issued to
    -- this resource by an external identity provider.
    externalIds :: Prelude.Maybe (Prelude.NonEmpty ExternalId),
    -- | A unique string used to identify the user. The length limit is 128
    -- characters. This value can consist of letters, accented characters,
    -- symbols, numbers, and punctuation. This value is specified at the time
    -- the user is created and stored as an attribute of the user object in the
    -- identity store.
    userName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A string containing the user\'s geographical region or location.
    locale :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The time zone for a user.
    timezone :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The user\'s name value for display.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A string indicating the user\'s type.
    userType :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A URL link for the user\'s profile.
    profileUrl :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The preferred language of the user.
    preferredLanguage :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A string containing the user\'s title.
    title :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The user\'s email value.
    emails :: Prelude.Maybe (Prelude.NonEmpty Email),
    -- | The user\'s physical address.
    addresses :: Prelude.Maybe (Prelude.NonEmpty Address),
    -- | An alternative descriptive name for the user.
    nickName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A list of @PhoneNumber@ objects associated with a user.
    phoneNumbers :: Prelude.Maybe (Prelude.NonEmpty PhoneNumber),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The identifier for a user in the identity store.
    userId :: Prelude.Text,
    -- | The globally unique identifier for the identity store.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeUserResponse_name' - The name of the user.
--
-- 'externalIds', 'describeUserResponse_externalIds' - A list of @ExternalId@ objects that contains the identifiers issued to
-- this resource by an external identity provider.
--
-- 'userName', 'describeUserResponse_userName' - A unique string used to identify the user. The length limit is 128
-- characters. This value can consist of letters, accented characters,
-- symbols, numbers, and punctuation. This value is specified at the time
-- the user is created and stored as an attribute of the user object in the
-- identity store.
--
-- 'locale', 'describeUserResponse_locale' - A string containing the user\'s geographical region or location.
--
-- 'timezone', 'describeUserResponse_timezone' - The time zone for a user.
--
-- 'displayName', 'describeUserResponse_displayName' - The user\'s name value for display.
--
-- 'userType', 'describeUserResponse_userType' - A string indicating the user\'s type.
--
-- 'profileUrl', 'describeUserResponse_profileUrl' - A URL link for the user\'s profile.
--
-- 'preferredLanguage', 'describeUserResponse_preferredLanguage' - The preferred language of the user.
--
-- 'title', 'describeUserResponse_title' - A string containing the user\'s title.
--
-- 'emails', 'describeUserResponse_emails' - The user\'s email value.
--
-- 'addresses', 'describeUserResponse_addresses' - The user\'s physical address.
--
-- 'nickName', 'describeUserResponse_nickName' - An alternative descriptive name for the user.
--
-- 'phoneNumbers', 'describeUserResponse_phoneNumbers' - A list of @PhoneNumber@ objects associated with a user.
--
-- 'httpStatus', 'describeUserResponse_httpStatus' - The response's http status code.
--
-- 'userId', 'describeUserResponse_userId' - The identifier for a user in the identity store.
--
-- 'identityStoreId', 'describeUserResponse_identityStoreId' - The globally unique identifier for the identity store.
newDescribeUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'userId'
  Prelude.Text ->
  -- | 'identityStoreId'
  Prelude.Text ->
  DescribeUserResponse
newDescribeUserResponse
  pHttpStatus_
  pUserId_
  pIdentityStoreId_ =
    DescribeUserResponse'
      { name = Prelude.Nothing,
        externalIds = Prelude.Nothing,
        userName = Prelude.Nothing,
        locale = Prelude.Nothing,
        timezone = Prelude.Nothing,
        displayName = Prelude.Nothing,
        userType = Prelude.Nothing,
        profileUrl = Prelude.Nothing,
        preferredLanguage = Prelude.Nothing,
        title = Prelude.Nothing,
        emails = Prelude.Nothing,
        addresses = Prelude.Nothing,
        nickName = Prelude.Nothing,
        phoneNumbers = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        userId = pUserId_,
        identityStoreId = pIdentityStoreId_
      }

-- | The name of the user.
describeUserResponse_name :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Name)
describeUserResponse_name = Lens.lens (\DescribeUserResponse' {name} -> name) (\s@DescribeUserResponse' {} a -> s {name = a} :: DescribeUserResponse)

-- | A list of @ExternalId@ objects that contains the identifiers issued to
-- this resource by an external identity provider.
describeUserResponse_externalIds :: Lens.Lens' DescribeUserResponse (Prelude.Maybe (Prelude.NonEmpty ExternalId))
describeUserResponse_externalIds = Lens.lens (\DescribeUserResponse' {externalIds} -> externalIds) (\s@DescribeUserResponse' {} a -> s {externalIds = a} :: DescribeUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | A unique string used to identify the user. The length limit is 128
-- characters. This value can consist of letters, accented characters,
-- symbols, numbers, and punctuation. This value is specified at the time
-- the user is created and stored as an attribute of the user object in the
-- identity store.
describeUserResponse_userName :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_userName = Lens.lens (\DescribeUserResponse' {userName} -> userName) (\s@DescribeUserResponse' {} a -> s {userName = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A string containing the user\'s geographical region or location.
describeUserResponse_locale :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_locale = Lens.lens (\DescribeUserResponse' {locale} -> locale) (\s@DescribeUserResponse' {} a -> s {locale = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The time zone for a user.
describeUserResponse_timezone :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_timezone = Lens.lens (\DescribeUserResponse' {timezone} -> timezone) (\s@DescribeUserResponse' {} a -> s {timezone = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The user\'s name value for display.
describeUserResponse_displayName :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_displayName = Lens.lens (\DescribeUserResponse' {displayName} -> displayName) (\s@DescribeUserResponse' {} a -> s {displayName = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A string indicating the user\'s type.
describeUserResponse_userType :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_userType = Lens.lens (\DescribeUserResponse' {userType} -> userType) (\s@DescribeUserResponse' {} a -> s {userType = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A URL link for the user\'s profile.
describeUserResponse_profileUrl :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_profileUrl = Lens.lens (\DescribeUserResponse' {profileUrl} -> profileUrl) (\s@DescribeUserResponse' {} a -> s {profileUrl = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The preferred language of the user.
describeUserResponse_preferredLanguage :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_preferredLanguage = Lens.lens (\DescribeUserResponse' {preferredLanguage} -> preferredLanguage) (\s@DescribeUserResponse' {} a -> s {preferredLanguage = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A string containing the user\'s title.
describeUserResponse_title :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_title = Lens.lens (\DescribeUserResponse' {title} -> title) (\s@DescribeUserResponse' {} a -> s {title = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The user\'s email value.
describeUserResponse_emails :: Lens.Lens' DescribeUserResponse (Prelude.Maybe (Prelude.NonEmpty Email))
describeUserResponse_emails = Lens.lens (\DescribeUserResponse' {emails} -> emails) (\s@DescribeUserResponse' {} a -> s {emails = a} :: DescribeUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The user\'s physical address.
describeUserResponse_addresses :: Lens.Lens' DescribeUserResponse (Prelude.Maybe (Prelude.NonEmpty Address))
describeUserResponse_addresses = Lens.lens (\DescribeUserResponse' {addresses} -> addresses) (\s@DescribeUserResponse' {} a -> s {addresses = a} :: DescribeUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | An alternative descriptive name for the user.
describeUserResponse_nickName :: Lens.Lens' DescribeUserResponse (Prelude.Maybe Prelude.Text)
describeUserResponse_nickName = Lens.lens (\DescribeUserResponse' {nickName} -> nickName) (\s@DescribeUserResponse' {} a -> s {nickName = a} :: DescribeUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A list of @PhoneNumber@ objects associated with a user.
describeUserResponse_phoneNumbers :: Lens.Lens' DescribeUserResponse (Prelude.Maybe (Prelude.NonEmpty PhoneNumber))
describeUserResponse_phoneNumbers = Lens.lens (\DescribeUserResponse' {phoneNumbers} -> phoneNumbers) (\s@DescribeUserResponse' {} a -> s {phoneNumbers = a} :: DescribeUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeUserResponse_httpStatus :: Lens.Lens' DescribeUserResponse Prelude.Int
describeUserResponse_httpStatus = Lens.lens (\DescribeUserResponse' {httpStatus} -> httpStatus) (\s@DescribeUserResponse' {} a -> s {httpStatus = a} :: DescribeUserResponse)

-- | The identifier for a user in the identity store.
describeUserResponse_userId :: Lens.Lens' DescribeUserResponse Prelude.Text
describeUserResponse_userId = Lens.lens (\DescribeUserResponse' {userId} -> userId) (\s@DescribeUserResponse' {} a -> s {userId = a} :: DescribeUserResponse)

-- | The globally unique identifier for the identity store.
describeUserResponse_identityStoreId :: Lens.Lens' DescribeUserResponse Prelude.Text
describeUserResponse_identityStoreId = Lens.lens (\DescribeUserResponse' {identityStoreId} -> identityStoreId) (\s@DescribeUserResponse' {} a -> s {identityStoreId = a} :: DescribeUserResponse)

instance Prelude.NFData DescribeUserResponse where
  rnf DescribeUserResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf externalIds
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf locale
      `Prelude.seq` Prelude.rnf timezone
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf userType
      `Prelude.seq` Prelude.rnf profileUrl
      `Prelude.seq` Prelude.rnf preferredLanguage
      `Prelude.seq` Prelude.rnf title
      `Prelude.seq` Prelude.rnf emails
      `Prelude.seq` Prelude.rnf addresses
      `Prelude.seq` Prelude.rnf nickName
      `Prelude.seq` Prelude.rnf phoneNumbers
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf userId
      `Prelude.seq` Prelude.rnf identityStoreId

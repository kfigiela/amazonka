{-# LANGUAGE DeriveDataTypeable #-}
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
-- Module      : Network.AWS.WorkMail.GetMailboxDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a user\'s mailbox details for a specified organization and
-- user.
module Network.AWS.WorkMail.GetMailboxDetails
  ( -- * Creating a Request
    GetMailboxDetails (..),
    newGetMailboxDetails,

    -- * Request Lenses
    getMailboxDetails_organizationId,
    getMailboxDetails_userId,

    -- * Destructuring the Response
    GetMailboxDetailsResponse (..),
    newGetMailboxDetailsResponse,

    -- * Response Lenses
    getMailboxDetailsResponse_mailboxQuota,
    getMailboxDetailsResponse_mailboxSize,
    getMailboxDetailsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newGetMailboxDetails' smart constructor.
data GetMailboxDetails = GetMailboxDetails'
  { -- | The identifier for the organization that contains the user whose mailbox
    -- details are being requested.
    organizationId :: Prelude.Text,
    -- | The identifier for the user whose mailbox details are being requested.
    userId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMailboxDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'getMailboxDetails_organizationId' - The identifier for the organization that contains the user whose mailbox
-- details are being requested.
--
-- 'userId', 'getMailboxDetails_userId' - The identifier for the user whose mailbox details are being requested.
newGetMailboxDetails ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  GetMailboxDetails
newGetMailboxDetails pOrganizationId_ pUserId_ =
  GetMailboxDetails'
    { organizationId =
        pOrganizationId_,
      userId = pUserId_
    }

-- | The identifier for the organization that contains the user whose mailbox
-- details are being requested.
getMailboxDetails_organizationId :: Lens.Lens' GetMailboxDetails Prelude.Text
getMailboxDetails_organizationId = Lens.lens (\GetMailboxDetails' {organizationId} -> organizationId) (\s@GetMailboxDetails' {} a -> s {organizationId = a} :: GetMailboxDetails)

-- | The identifier for the user whose mailbox details are being requested.
getMailboxDetails_userId :: Lens.Lens' GetMailboxDetails Prelude.Text
getMailboxDetails_userId = Lens.lens (\GetMailboxDetails' {userId} -> userId) (\s@GetMailboxDetails' {} a -> s {userId = a} :: GetMailboxDetails)

instance Prelude.AWSRequest GetMailboxDetails where
  type Rs GetMailboxDetails = GetMailboxDetailsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMailboxDetailsResponse'
            Prelude.<$> (x Prelude..?> "MailboxQuota")
            Prelude.<*> (x Prelude..?> "MailboxSize")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMailboxDetails

instance Prelude.NFData GetMailboxDetails

instance Prelude.ToHeaders GetMailboxDetails where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "WorkMailService.GetMailboxDetails" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetMailboxDetails where
  toJSON GetMailboxDetails' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("OrganizationId" Prelude..= organizationId),
            Prelude.Just ("UserId" Prelude..= userId)
          ]
      )

instance Prelude.ToPath GetMailboxDetails where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetMailboxDetails where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMailboxDetailsResponse' smart constructor.
data GetMailboxDetailsResponse = GetMailboxDetailsResponse'
  { -- | The maximum allowed mailbox size, in MB, for the specified user.
    mailboxQuota :: Prelude.Maybe Prelude.Natural,
    -- | The current mailbox size, in MB, for the specified user.
    mailboxSize :: Prelude.Maybe Prelude.Double,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMailboxDetailsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mailboxQuota', 'getMailboxDetailsResponse_mailboxQuota' - The maximum allowed mailbox size, in MB, for the specified user.
--
-- 'mailboxSize', 'getMailboxDetailsResponse_mailboxSize' - The current mailbox size, in MB, for the specified user.
--
-- 'httpStatus', 'getMailboxDetailsResponse_httpStatus' - The response's http status code.
newGetMailboxDetailsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMailboxDetailsResponse
newGetMailboxDetailsResponse pHttpStatus_ =
  GetMailboxDetailsResponse'
    { mailboxQuota =
        Prelude.Nothing,
      mailboxSize = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The maximum allowed mailbox size, in MB, for the specified user.
getMailboxDetailsResponse_mailboxQuota :: Lens.Lens' GetMailboxDetailsResponse (Prelude.Maybe Prelude.Natural)
getMailboxDetailsResponse_mailboxQuota = Lens.lens (\GetMailboxDetailsResponse' {mailboxQuota} -> mailboxQuota) (\s@GetMailboxDetailsResponse' {} a -> s {mailboxQuota = a} :: GetMailboxDetailsResponse)

-- | The current mailbox size, in MB, for the specified user.
getMailboxDetailsResponse_mailboxSize :: Lens.Lens' GetMailboxDetailsResponse (Prelude.Maybe Prelude.Double)
getMailboxDetailsResponse_mailboxSize = Lens.lens (\GetMailboxDetailsResponse' {mailboxSize} -> mailboxSize) (\s@GetMailboxDetailsResponse' {} a -> s {mailboxSize = a} :: GetMailboxDetailsResponse)

-- | The response's http status code.
getMailboxDetailsResponse_httpStatus :: Lens.Lens' GetMailboxDetailsResponse Prelude.Int
getMailboxDetailsResponse_httpStatus = Lens.lens (\GetMailboxDetailsResponse' {httpStatus} -> httpStatus) (\s@GetMailboxDetailsResponse' {} a -> s {httpStatus = a} :: GetMailboxDetailsResponse)

instance Prelude.NFData GetMailboxDetailsResponse

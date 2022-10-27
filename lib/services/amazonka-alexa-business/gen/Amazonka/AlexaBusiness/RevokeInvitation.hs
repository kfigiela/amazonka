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
-- Module      : Amazonka.AlexaBusiness.RevokeInvitation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes an invitation and invalidates the enrollment URL.
module Amazonka.AlexaBusiness.RevokeInvitation
  ( -- * Creating a Request
    RevokeInvitation (..),
    newRevokeInvitation,

    -- * Request Lenses
    revokeInvitation_enrollmentId,
    revokeInvitation_userArn,

    -- * Destructuring the Response
    RevokeInvitationResponse (..),
    newRevokeInvitationResponse,

    -- * Response Lenses
    revokeInvitationResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRevokeInvitation' smart constructor.
data RevokeInvitation = RevokeInvitation'
  { -- | The ARN of the enrollment invitation to revoke. Required.
    enrollmentId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the user for whom to revoke an enrollment invitation.
    -- Required.
    userArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeInvitation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enrollmentId', 'revokeInvitation_enrollmentId' - The ARN of the enrollment invitation to revoke. Required.
--
-- 'userArn', 'revokeInvitation_userArn' - The ARN of the user for whom to revoke an enrollment invitation.
-- Required.
newRevokeInvitation ::
  RevokeInvitation
newRevokeInvitation =
  RevokeInvitation'
    { enrollmentId = Prelude.Nothing,
      userArn = Prelude.Nothing
    }

-- | The ARN of the enrollment invitation to revoke. Required.
revokeInvitation_enrollmentId :: Lens.Lens' RevokeInvitation (Prelude.Maybe Prelude.Text)
revokeInvitation_enrollmentId = Lens.lens (\RevokeInvitation' {enrollmentId} -> enrollmentId) (\s@RevokeInvitation' {} a -> s {enrollmentId = a} :: RevokeInvitation)

-- | The ARN of the user for whom to revoke an enrollment invitation.
-- Required.
revokeInvitation_userArn :: Lens.Lens' RevokeInvitation (Prelude.Maybe Prelude.Text)
revokeInvitation_userArn = Lens.lens (\RevokeInvitation' {userArn} -> userArn) (\s@RevokeInvitation' {} a -> s {userArn = a} :: RevokeInvitation)

instance Core.AWSRequest RevokeInvitation where
  type
    AWSResponse RevokeInvitation =
      RevokeInvitationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          RevokeInvitationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RevokeInvitation where
  hashWithSalt _salt RevokeInvitation' {..} =
    _salt `Prelude.hashWithSalt` enrollmentId
      `Prelude.hashWithSalt` userArn

instance Prelude.NFData RevokeInvitation where
  rnf RevokeInvitation' {..} =
    Prelude.rnf enrollmentId
      `Prelude.seq` Prelude.rnf userArn

instance Core.ToHeaders RevokeInvitation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.RevokeInvitation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RevokeInvitation where
  toJSON RevokeInvitation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EnrollmentId" Core..=) Prelude.<$> enrollmentId,
            ("UserArn" Core..=) Prelude.<$> userArn
          ]
      )

instance Core.ToPath RevokeInvitation where
  toPath = Prelude.const "/"

instance Core.ToQuery RevokeInvitation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRevokeInvitationResponse' smart constructor.
data RevokeInvitationResponse = RevokeInvitationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeInvitationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'revokeInvitationResponse_httpStatus' - The response's http status code.
newRevokeInvitationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RevokeInvitationResponse
newRevokeInvitationResponse pHttpStatus_ =
  RevokeInvitationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
revokeInvitationResponse_httpStatus :: Lens.Lens' RevokeInvitationResponse Prelude.Int
revokeInvitationResponse_httpStatus = Lens.lens (\RevokeInvitationResponse' {httpStatus} -> httpStatus) (\s@RevokeInvitationResponse' {} a -> s {httpStatus = a} :: RevokeInvitationResponse)

instance Prelude.NFData RevokeInvitationResponse where
  rnf RevokeInvitationResponse' {..} =
    Prelude.rnf httpStatus

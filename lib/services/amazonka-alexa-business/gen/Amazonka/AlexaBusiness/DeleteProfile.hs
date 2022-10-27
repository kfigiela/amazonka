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
-- Module      : Amazonka.AlexaBusiness.DeleteProfile
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a room profile by the profile ARN.
module Amazonka.AlexaBusiness.DeleteProfile
  ( -- * Creating a Request
    DeleteProfile (..),
    newDeleteProfile,

    -- * Request Lenses
    deleteProfile_profileArn,

    -- * Destructuring the Response
    DeleteProfileResponse (..),
    newDeleteProfileResponse,

    -- * Response Lenses
    deleteProfileResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteProfile' smart constructor.
data DeleteProfile = DeleteProfile'
  { -- | The ARN of the room profile to delete. Required.
    profileArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileArn', 'deleteProfile_profileArn' - The ARN of the room profile to delete. Required.
newDeleteProfile ::
  DeleteProfile
newDeleteProfile =
  DeleteProfile' {profileArn = Prelude.Nothing}

-- | The ARN of the room profile to delete. Required.
deleteProfile_profileArn :: Lens.Lens' DeleteProfile (Prelude.Maybe Prelude.Text)
deleteProfile_profileArn = Lens.lens (\DeleteProfile' {profileArn} -> profileArn) (\s@DeleteProfile' {} a -> s {profileArn = a} :: DeleteProfile)

instance Core.AWSRequest DeleteProfile where
  type
    AWSResponse DeleteProfile =
      DeleteProfileResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteProfile where
  hashWithSalt _salt DeleteProfile' {..} =
    _salt `Prelude.hashWithSalt` profileArn

instance Prelude.NFData DeleteProfile where
  rnf DeleteProfile' {..} = Prelude.rnf profileArn

instance Core.ToHeaders DeleteProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.DeleteProfile" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteProfile where
  toJSON DeleteProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [("ProfileArn" Core..=) Prelude.<$> profileArn]
      )

instance Core.ToPath DeleteProfile where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteProfileResponse' smart constructor.
data DeleteProfileResponse = DeleteProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteProfileResponse_httpStatus' - The response's http status code.
newDeleteProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteProfileResponse
newDeleteProfileResponse pHttpStatus_ =
  DeleteProfileResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteProfileResponse_httpStatus :: Lens.Lens' DeleteProfileResponse Prelude.Int
deleteProfileResponse_httpStatus = Lens.lens (\DeleteProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteProfileResponse' {} a -> s {httpStatus = a} :: DeleteProfileResponse)

instance Prelude.NFData DeleteProfileResponse where
  rnf DeleteProfileResponse' {..} =
    Prelude.rnf httpStatus

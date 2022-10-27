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
-- Module      : Amazonka.Nimble.UpdateStudio
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a Studio resource.
--
-- Currently, this operation only supports updating the displayName of your
-- studio.
module Amazonka.Nimble.UpdateStudio
  ( -- * Creating a Request
    UpdateStudio (..),
    newUpdateStudio,

    -- * Request Lenses
    updateStudio_clientToken,
    updateStudio_adminRoleArn,
    updateStudio_displayName,
    updateStudio_userRoleArn,
    updateStudio_studioId,

    -- * Destructuring the Response
    UpdateStudioResponse (..),
    newUpdateStudioResponse,

    -- * Response Lenses
    updateStudioResponse_httpStatus,
    updateStudioResponse_studio,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateStudio' smart constructor.
data UpdateStudio = UpdateStudio'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don’t specify a client token, the AWS
    -- SDK automatically generates a client token and uses it for the request
    -- to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The IAM role that Studio Admins will assume when logging in to the
    -- Nimble Studio portal.
    adminRoleArn :: Prelude.Maybe Prelude.Text,
    -- | A friendly name for the studio.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The IAM role that Studio Users will assume when logging in to the Nimble
    -- Studio portal.
    userRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStudio' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateStudio_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
--
-- 'adminRoleArn', 'updateStudio_adminRoleArn' - The IAM role that Studio Admins will assume when logging in to the
-- Nimble Studio portal.
--
-- 'displayName', 'updateStudio_displayName' - A friendly name for the studio.
--
-- 'userRoleArn', 'updateStudio_userRoleArn' - The IAM role that Studio Users will assume when logging in to the Nimble
-- Studio portal.
--
-- 'studioId', 'updateStudio_studioId' - The studio ID.
newUpdateStudio ::
  -- | 'studioId'
  Prelude.Text ->
  UpdateStudio
newUpdateStudio pStudioId_ =
  UpdateStudio'
    { clientToken = Prelude.Nothing,
      adminRoleArn = Prelude.Nothing,
      displayName = Prelude.Nothing,
      userRoleArn = Prelude.Nothing,
      studioId = pStudioId_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
updateStudio_clientToken :: Lens.Lens' UpdateStudio (Prelude.Maybe Prelude.Text)
updateStudio_clientToken = Lens.lens (\UpdateStudio' {clientToken} -> clientToken) (\s@UpdateStudio' {} a -> s {clientToken = a} :: UpdateStudio)

-- | The IAM role that Studio Admins will assume when logging in to the
-- Nimble Studio portal.
updateStudio_adminRoleArn :: Lens.Lens' UpdateStudio (Prelude.Maybe Prelude.Text)
updateStudio_adminRoleArn = Lens.lens (\UpdateStudio' {adminRoleArn} -> adminRoleArn) (\s@UpdateStudio' {} a -> s {adminRoleArn = a} :: UpdateStudio)

-- | A friendly name for the studio.
updateStudio_displayName :: Lens.Lens' UpdateStudio (Prelude.Maybe Prelude.Text)
updateStudio_displayName = Lens.lens (\UpdateStudio' {displayName} -> displayName) (\s@UpdateStudio' {} a -> s {displayName = a} :: UpdateStudio) Prelude.. Lens.mapping Core._Sensitive

-- | The IAM role that Studio Users will assume when logging in to the Nimble
-- Studio portal.
updateStudio_userRoleArn :: Lens.Lens' UpdateStudio (Prelude.Maybe Prelude.Text)
updateStudio_userRoleArn = Lens.lens (\UpdateStudio' {userRoleArn} -> userRoleArn) (\s@UpdateStudio' {} a -> s {userRoleArn = a} :: UpdateStudio)

-- | The studio ID.
updateStudio_studioId :: Lens.Lens' UpdateStudio Prelude.Text
updateStudio_studioId = Lens.lens (\UpdateStudio' {studioId} -> studioId) (\s@UpdateStudio' {} a -> s {studioId = a} :: UpdateStudio)

instance Core.AWSRequest UpdateStudio where
  type AWSResponse UpdateStudio = UpdateStudioResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateStudioResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "studio")
      )

instance Prelude.Hashable UpdateStudio where
  hashWithSalt _salt UpdateStudio' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` adminRoleArn
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` userRoleArn
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData UpdateStudio where
  rnf UpdateStudio' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf adminRoleArn
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf userRoleArn
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders UpdateStudio where
  toHeaders UpdateStudio' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON UpdateStudio where
  toJSON UpdateStudio' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("adminRoleArn" Core..=) Prelude.<$> adminRoleArn,
            ("displayName" Core..=) Prelude.<$> displayName,
            ("userRoleArn" Core..=) Prelude.<$> userRoleArn
          ]
      )

instance Core.ToPath UpdateStudio where
  toPath UpdateStudio' {..} =
    Prelude.mconcat
      ["/2020-08-01/studios/", Core.toBS studioId]

instance Core.ToQuery UpdateStudio where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateStudioResponse' smart constructor.
data UpdateStudioResponse = UpdateStudioResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Information about a studio.
    studio :: Studio
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStudioResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateStudioResponse_httpStatus' - The response's http status code.
--
-- 'studio', 'updateStudioResponse_studio' - Information about a studio.
newUpdateStudioResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'studio'
  Studio ->
  UpdateStudioResponse
newUpdateStudioResponse pHttpStatus_ pStudio_ =
  UpdateStudioResponse'
    { httpStatus = pHttpStatus_,
      studio = pStudio_
    }

-- | The response's http status code.
updateStudioResponse_httpStatus :: Lens.Lens' UpdateStudioResponse Prelude.Int
updateStudioResponse_httpStatus = Lens.lens (\UpdateStudioResponse' {httpStatus} -> httpStatus) (\s@UpdateStudioResponse' {} a -> s {httpStatus = a} :: UpdateStudioResponse)

-- | Information about a studio.
updateStudioResponse_studio :: Lens.Lens' UpdateStudioResponse Studio
updateStudioResponse_studio = Lens.lens (\UpdateStudioResponse' {studio} -> studio) (\s@UpdateStudioResponse' {} a -> s {studio = a} :: UpdateStudioResponse)

instance Prelude.NFData UpdateStudioResponse where
  rnf UpdateStudioResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf studio

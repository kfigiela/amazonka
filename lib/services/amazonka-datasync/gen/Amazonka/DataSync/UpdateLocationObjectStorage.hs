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
-- Module      : Amazonka.DataSync.UpdateLocationObjectStorage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates some of the parameters of a previously created location for
-- self-managed object storage server access. For information about
-- creating a self-managed object storage location, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html Creating a location for object storage>.
module Amazonka.DataSync.UpdateLocationObjectStorage
  ( -- * Creating a Request
    UpdateLocationObjectStorage (..),
    newUpdateLocationObjectStorage,

    -- * Request Lenses
    updateLocationObjectStorage_serverProtocol,
    updateLocationObjectStorage_serverPort,
    updateLocationObjectStorage_accessKey,
    updateLocationObjectStorage_secretKey,
    updateLocationObjectStorage_subdirectory,
    updateLocationObjectStorage_agentArns,
    updateLocationObjectStorage_locationArn,

    -- * Destructuring the Response
    UpdateLocationObjectStorageResponse (..),
    newUpdateLocationObjectStorageResponse,

    -- * Response Lenses
    updateLocationObjectStorageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLocationObjectStorage' smart constructor.
data UpdateLocationObjectStorage = UpdateLocationObjectStorage'
  { -- | The protocol that the object storage server uses to communicate. Valid
    -- values are @HTTP@ or @HTTPS@.
    serverProtocol :: Prelude.Maybe ObjectStorageServerProtocol,
    -- | The port that your self-managed object storage server accepts inbound
    -- network traffic on. The server port is set by default to TCP 80 (HTTP)
    -- or TCP 443 (HTTPS). You can specify a custom port if your self-managed
    -- object storage server requires one.
    serverPort :: Prelude.Maybe Prelude.Natural,
    -- | Optional. The access key is used if credentials are required to access
    -- the self-managed object storage server. If your object storage requires
    -- a user name and password to authenticate, use @AccessKey@ and
    -- @SecretKey@ to provide the user name and password, respectively.
    accessKey :: Prelude.Maybe Prelude.Text,
    -- | Optional. The secret key is used if credentials are required to access
    -- the self-managed object storage server. If your object storage requires
    -- a user name and password to authenticate, use @AccessKey@ and
    -- @SecretKey@ to provide the user name and password, respectively.
    secretKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The subdirectory in the self-managed object storage server that is used
    -- to read data from.
    subdirectory :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the agents associated with the
    -- self-managed object storage server location.
    agentArns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The Amazon Resource Name (ARN) of the self-managed object storage server
    -- location to be updated.
    locationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLocationObjectStorage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverProtocol', 'updateLocationObjectStorage_serverProtocol' - The protocol that the object storage server uses to communicate. Valid
-- values are @HTTP@ or @HTTPS@.
--
-- 'serverPort', 'updateLocationObjectStorage_serverPort' - The port that your self-managed object storage server accepts inbound
-- network traffic on. The server port is set by default to TCP 80 (HTTP)
-- or TCP 443 (HTTPS). You can specify a custom port if your self-managed
-- object storage server requires one.
--
-- 'accessKey', 'updateLocationObjectStorage_accessKey' - Optional. The access key is used if credentials are required to access
-- the self-managed object storage server. If your object storage requires
-- a user name and password to authenticate, use @AccessKey@ and
-- @SecretKey@ to provide the user name and password, respectively.
--
-- 'secretKey', 'updateLocationObjectStorage_secretKey' - Optional. The secret key is used if credentials are required to access
-- the self-managed object storage server. If your object storage requires
-- a user name and password to authenticate, use @AccessKey@ and
-- @SecretKey@ to provide the user name and password, respectively.
--
-- 'subdirectory', 'updateLocationObjectStorage_subdirectory' - The subdirectory in the self-managed object storage server that is used
-- to read data from.
--
-- 'agentArns', 'updateLocationObjectStorage_agentArns' - The Amazon Resource Name (ARN) of the agents associated with the
-- self-managed object storage server location.
--
-- 'locationArn', 'updateLocationObjectStorage_locationArn' - The Amazon Resource Name (ARN) of the self-managed object storage server
-- location to be updated.
newUpdateLocationObjectStorage ::
  -- | 'locationArn'
  Prelude.Text ->
  UpdateLocationObjectStorage
newUpdateLocationObjectStorage pLocationArn_ =
  UpdateLocationObjectStorage'
    { serverProtocol =
        Prelude.Nothing,
      serverPort = Prelude.Nothing,
      accessKey = Prelude.Nothing,
      secretKey = Prelude.Nothing,
      subdirectory = Prelude.Nothing,
      agentArns = Prelude.Nothing,
      locationArn = pLocationArn_
    }

-- | The protocol that the object storage server uses to communicate. Valid
-- values are @HTTP@ or @HTTPS@.
updateLocationObjectStorage_serverProtocol :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe ObjectStorageServerProtocol)
updateLocationObjectStorage_serverProtocol = Lens.lens (\UpdateLocationObjectStorage' {serverProtocol} -> serverProtocol) (\s@UpdateLocationObjectStorage' {} a -> s {serverProtocol = a} :: UpdateLocationObjectStorage)

-- | The port that your self-managed object storage server accepts inbound
-- network traffic on. The server port is set by default to TCP 80 (HTTP)
-- or TCP 443 (HTTPS). You can specify a custom port if your self-managed
-- object storage server requires one.
updateLocationObjectStorage_serverPort :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe Prelude.Natural)
updateLocationObjectStorage_serverPort = Lens.lens (\UpdateLocationObjectStorage' {serverPort} -> serverPort) (\s@UpdateLocationObjectStorage' {} a -> s {serverPort = a} :: UpdateLocationObjectStorage)

-- | Optional. The access key is used if credentials are required to access
-- the self-managed object storage server. If your object storage requires
-- a user name and password to authenticate, use @AccessKey@ and
-- @SecretKey@ to provide the user name and password, respectively.
updateLocationObjectStorage_accessKey :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe Prelude.Text)
updateLocationObjectStorage_accessKey = Lens.lens (\UpdateLocationObjectStorage' {accessKey} -> accessKey) (\s@UpdateLocationObjectStorage' {} a -> s {accessKey = a} :: UpdateLocationObjectStorage)

-- | Optional. The secret key is used if credentials are required to access
-- the self-managed object storage server. If your object storage requires
-- a user name and password to authenticate, use @AccessKey@ and
-- @SecretKey@ to provide the user name and password, respectively.
updateLocationObjectStorage_secretKey :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe Prelude.Text)
updateLocationObjectStorage_secretKey = Lens.lens (\UpdateLocationObjectStorage' {secretKey} -> secretKey) (\s@UpdateLocationObjectStorage' {} a -> s {secretKey = a} :: UpdateLocationObjectStorage) Prelude.. Lens.mapping Core._Sensitive

-- | The subdirectory in the self-managed object storage server that is used
-- to read data from.
updateLocationObjectStorage_subdirectory :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe Prelude.Text)
updateLocationObjectStorage_subdirectory = Lens.lens (\UpdateLocationObjectStorage' {subdirectory} -> subdirectory) (\s@UpdateLocationObjectStorage' {} a -> s {subdirectory = a} :: UpdateLocationObjectStorage)

-- | The Amazon Resource Name (ARN) of the agents associated with the
-- self-managed object storage server location.
updateLocationObjectStorage_agentArns :: Lens.Lens' UpdateLocationObjectStorage (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateLocationObjectStorage_agentArns = Lens.lens (\UpdateLocationObjectStorage' {agentArns} -> agentArns) (\s@UpdateLocationObjectStorage' {} a -> s {agentArns = a} :: UpdateLocationObjectStorage) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the self-managed object storage server
-- location to be updated.
updateLocationObjectStorage_locationArn :: Lens.Lens' UpdateLocationObjectStorage Prelude.Text
updateLocationObjectStorage_locationArn = Lens.lens (\UpdateLocationObjectStorage' {locationArn} -> locationArn) (\s@UpdateLocationObjectStorage' {} a -> s {locationArn = a} :: UpdateLocationObjectStorage)

instance Core.AWSRequest UpdateLocationObjectStorage where
  type
    AWSResponse UpdateLocationObjectStorage =
      UpdateLocationObjectStorageResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLocationObjectStorageResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService UpdateLocationObjectStorage where
  service _proxy = defaultService

instance Prelude.Hashable UpdateLocationObjectStorage where
  hashWithSalt _salt UpdateLocationObjectStorage' {..} =
    _salt `Prelude.hashWithSalt` serverProtocol
      `Prelude.hashWithSalt` serverPort
      `Prelude.hashWithSalt` accessKey
      `Prelude.hashWithSalt` secretKey
      `Prelude.hashWithSalt` subdirectory
      `Prelude.hashWithSalt` agentArns
      `Prelude.hashWithSalt` locationArn

instance Prelude.NFData UpdateLocationObjectStorage where
  rnf UpdateLocationObjectStorage' {..} =
    Prelude.rnf serverProtocol
      `Prelude.seq` Prelude.rnf serverPort
      `Prelude.seq` Prelude.rnf accessKey
      `Prelude.seq` Prelude.rnf secretKey
      `Prelude.seq` Prelude.rnf subdirectory
      `Prelude.seq` Prelude.rnf agentArns
      `Prelude.seq` Prelude.rnf locationArn

instance Core.ToHeaders UpdateLocationObjectStorage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.UpdateLocationObjectStorage" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLocationObjectStorage where
  toJSON UpdateLocationObjectStorage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ServerProtocol" Core..=)
              Prelude.<$> serverProtocol,
            ("ServerPort" Core..=) Prelude.<$> serverPort,
            ("AccessKey" Core..=) Prelude.<$> accessKey,
            ("SecretKey" Core..=) Prelude.<$> secretKey,
            ("Subdirectory" Core..=) Prelude.<$> subdirectory,
            ("AgentArns" Core..=) Prelude.<$> agentArns,
            Prelude.Just ("LocationArn" Core..= locationArn)
          ]
      )

instance Core.ToPath UpdateLocationObjectStorage where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateLocationObjectStorage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLocationObjectStorageResponse' smart constructor.
data UpdateLocationObjectStorageResponse = UpdateLocationObjectStorageResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLocationObjectStorageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLocationObjectStorageResponse_httpStatus' - The response's http status code.
newUpdateLocationObjectStorageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLocationObjectStorageResponse
newUpdateLocationObjectStorageResponse pHttpStatus_ =
  UpdateLocationObjectStorageResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateLocationObjectStorageResponse_httpStatus :: Lens.Lens' UpdateLocationObjectStorageResponse Prelude.Int
updateLocationObjectStorageResponse_httpStatus = Lens.lens (\UpdateLocationObjectStorageResponse' {httpStatus} -> httpStatus) (\s@UpdateLocationObjectStorageResponse' {} a -> s {httpStatus = a} :: UpdateLocationObjectStorageResponse)

instance
  Prelude.NFData
    UpdateLocationObjectStorageResponse
  where
  rnf UpdateLocationObjectStorageResponse' {..} =
    Prelude.rnf httpStatus

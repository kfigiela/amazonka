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
-- Module      : Amazonka.DataSync.CreateLocationObjectStorage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an endpoint for an object storage system that DataSync can
-- access for a transfer. For more information, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html Creating a location for object storage>.
module Amazonka.DataSync.CreateLocationObjectStorage
  ( -- * Creating a Request
    CreateLocationObjectStorage (..),
    newCreateLocationObjectStorage,

    -- * Request Lenses
    createLocationObjectStorage_tags,
    createLocationObjectStorage_serverProtocol,
    createLocationObjectStorage_serverCertificate,
    createLocationObjectStorage_serverPort,
    createLocationObjectStorage_accessKey,
    createLocationObjectStorage_secretKey,
    createLocationObjectStorage_subdirectory,
    createLocationObjectStorage_serverHostname,
    createLocationObjectStorage_bucketName,
    createLocationObjectStorage_agentArns,

    -- * Destructuring the Response
    CreateLocationObjectStorageResponse (..),
    newCreateLocationObjectStorageResponse,

    -- * Response Lenses
    createLocationObjectStorageResponse_locationArn,
    createLocationObjectStorageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | CreateLocationObjectStorageRequest
--
-- /See:/ 'newCreateLocationObjectStorage' smart constructor.
data CreateLocationObjectStorage = CreateLocationObjectStorage'
  { -- | Specifies the key-value pair that represents a tag that you want to add
    -- to the resource. Tags can help you manage, filter, and search for your
    -- resources. We recommend creating a name tag for your location.
    tags :: Prelude.Maybe [TagListEntry],
    -- | Specifies the protocol that your object storage server uses to
    -- communicate.
    serverProtocol :: Prelude.Maybe ObjectStorageServerProtocol,
    -- | Specifies a certificate to authenticate with an object storage system
    -- that uses a private or self-signed certificate authority (CA). You must
    -- specify a Base64-encoded @.pem@ file (for example,
    -- @file:\/\/\/home\/user\/.ssh\/storage_sys_certificate.pem@). The
    -- certificate can be up to 32768 bytes (before Base64 encoding).
    --
    -- To use this parameter, configure @ServerProtocol@ to @HTTPS@.
    serverCertificate :: Prelude.Maybe Core.Base64,
    -- | Specifies the port that your object storage server accepts inbound
    -- network traffic on (for example, port 443).
    serverPort :: Prelude.Maybe Prelude.Natural,
    -- | Specifies the access key (for example, a user name) if credentials are
    -- required to authenticate with the object storage server.
    accessKey :: Prelude.Maybe Prelude.Text,
    -- | Specifies the secret key (for example, a password) if credentials are
    -- required to authenticate with the object storage server.
    secretKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specifies the object prefix for your object storage server. If this is a
    -- source location, DataSync only copies objects with this prefix. If this
    -- is a destination location, DataSync writes all objects with this prefix.
    subdirectory :: Prelude.Maybe Prelude.Text,
    -- | Specifies the domain name or IP address of the object storage server. A
    -- DataSync agent uses this hostname to mount the object storage server in
    -- a network.
    serverHostname :: Prelude.Text,
    -- | Specifies the name of the object storage bucket involved in the
    -- transfer.
    bucketName :: Prelude.Text,
    -- | Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
    -- can securely connect with your location.
    agentArns :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationObjectStorage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createLocationObjectStorage_tags' - Specifies the key-value pair that represents a tag that you want to add
-- to the resource. Tags can help you manage, filter, and search for your
-- resources. We recommend creating a name tag for your location.
--
-- 'serverProtocol', 'createLocationObjectStorage_serverProtocol' - Specifies the protocol that your object storage server uses to
-- communicate.
--
-- 'serverCertificate', 'createLocationObjectStorage_serverCertificate' - Specifies a certificate to authenticate with an object storage system
-- that uses a private or self-signed certificate authority (CA). You must
-- specify a Base64-encoded @.pem@ file (for example,
-- @file:\/\/\/home\/user\/.ssh\/storage_sys_certificate.pem@). The
-- certificate can be up to 32768 bytes (before Base64 encoding).
--
-- To use this parameter, configure @ServerProtocol@ to @HTTPS@.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'serverPort', 'createLocationObjectStorage_serverPort' - Specifies the port that your object storage server accepts inbound
-- network traffic on (for example, port 443).
--
-- 'accessKey', 'createLocationObjectStorage_accessKey' - Specifies the access key (for example, a user name) if credentials are
-- required to authenticate with the object storage server.
--
-- 'secretKey', 'createLocationObjectStorage_secretKey' - Specifies the secret key (for example, a password) if credentials are
-- required to authenticate with the object storage server.
--
-- 'subdirectory', 'createLocationObjectStorage_subdirectory' - Specifies the object prefix for your object storage server. If this is a
-- source location, DataSync only copies objects with this prefix. If this
-- is a destination location, DataSync writes all objects with this prefix.
--
-- 'serverHostname', 'createLocationObjectStorage_serverHostname' - Specifies the domain name or IP address of the object storage server. A
-- DataSync agent uses this hostname to mount the object storage server in
-- a network.
--
-- 'bucketName', 'createLocationObjectStorage_bucketName' - Specifies the name of the object storage bucket involved in the
-- transfer.
--
-- 'agentArns', 'createLocationObjectStorage_agentArns' - Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
-- can securely connect with your location.
newCreateLocationObjectStorage ::
  -- | 'serverHostname'
  Prelude.Text ->
  -- | 'bucketName'
  Prelude.Text ->
  -- | 'agentArns'
  Prelude.NonEmpty Prelude.Text ->
  CreateLocationObjectStorage
newCreateLocationObjectStorage
  pServerHostname_
  pBucketName_
  pAgentArns_ =
    CreateLocationObjectStorage'
      { tags =
          Prelude.Nothing,
        serverProtocol = Prelude.Nothing,
        serverCertificate = Prelude.Nothing,
        serverPort = Prelude.Nothing,
        accessKey = Prelude.Nothing,
        secretKey = Prelude.Nothing,
        subdirectory = Prelude.Nothing,
        serverHostname = pServerHostname_,
        bucketName = pBucketName_,
        agentArns = Lens.coerced Lens.# pAgentArns_
      }

-- | Specifies the key-value pair that represents a tag that you want to add
-- to the resource. Tags can help you manage, filter, and search for your
-- resources. We recommend creating a name tag for your location.
createLocationObjectStorage_tags :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe [TagListEntry])
createLocationObjectStorage_tags = Lens.lens (\CreateLocationObjectStorage' {tags} -> tags) (\s@CreateLocationObjectStorage' {} a -> s {tags = a} :: CreateLocationObjectStorage) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the protocol that your object storage server uses to
-- communicate.
createLocationObjectStorage_serverProtocol :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe ObjectStorageServerProtocol)
createLocationObjectStorage_serverProtocol = Lens.lens (\CreateLocationObjectStorage' {serverProtocol} -> serverProtocol) (\s@CreateLocationObjectStorage' {} a -> s {serverProtocol = a} :: CreateLocationObjectStorage)

-- | Specifies a certificate to authenticate with an object storage system
-- that uses a private or self-signed certificate authority (CA). You must
-- specify a Base64-encoded @.pem@ file (for example,
-- @file:\/\/\/home\/user\/.ssh\/storage_sys_certificate.pem@). The
-- certificate can be up to 32768 bytes (before Base64 encoding).
--
-- To use this parameter, configure @ServerProtocol@ to @HTTPS@.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
createLocationObjectStorage_serverCertificate :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe Prelude.ByteString)
createLocationObjectStorage_serverCertificate = Lens.lens (\CreateLocationObjectStorage' {serverCertificate} -> serverCertificate) (\s@CreateLocationObjectStorage' {} a -> s {serverCertificate = a} :: CreateLocationObjectStorage) Prelude.. Lens.mapping Core._Base64

-- | Specifies the port that your object storage server accepts inbound
-- network traffic on (for example, port 443).
createLocationObjectStorage_serverPort :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe Prelude.Natural)
createLocationObjectStorage_serverPort = Lens.lens (\CreateLocationObjectStorage' {serverPort} -> serverPort) (\s@CreateLocationObjectStorage' {} a -> s {serverPort = a} :: CreateLocationObjectStorage)

-- | Specifies the access key (for example, a user name) if credentials are
-- required to authenticate with the object storage server.
createLocationObjectStorage_accessKey :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe Prelude.Text)
createLocationObjectStorage_accessKey = Lens.lens (\CreateLocationObjectStorage' {accessKey} -> accessKey) (\s@CreateLocationObjectStorage' {} a -> s {accessKey = a} :: CreateLocationObjectStorage)

-- | Specifies the secret key (for example, a password) if credentials are
-- required to authenticate with the object storage server.
createLocationObjectStorage_secretKey :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe Prelude.Text)
createLocationObjectStorage_secretKey = Lens.lens (\CreateLocationObjectStorage' {secretKey} -> secretKey) (\s@CreateLocationObjectStorage' {} a -> s {secretKey = a} :: CreateLocationObjectStorage) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies the object prefix for your object storage server. If this is a
-- source location, DataSync only copies objects with this prefix. If this
-- is a destination location, DataSync writes all objects with this prefix.
createLocationObjectStorage_subdirectory :: Lens.Lens' CreateLocationObjectStorage (Prelude.Maybe Prelude.Text)
createLocationObjectStorage_subdirectory = Lens.lens (\CreateLocationObjectStorage' {subdirectory} -> subdirectory) (\s@CreateLocationObjectStorage' {} a -> s {subdirectory = a} :: CreateLocationObjectStorage)

-- | Specifies the domain name or IP address of the object storage server. A
-- DataSync agent uses this hostname to mount the object storage server in
-- a network.
createLocationObjectStorage_serverHostname :: Lens.Lens' CreateLocationObjectStorage Prelude.Text
createLocationObjectStorage_serverHostname = Lens.lens (\CreateLocationObjectStorage' {serverHostname} -> serverHostname) (\s@CreateLocationObjectStorage' {} a -> s {serverHostname = a} :: CreateLocationObjectStorage)

-- | Specifies the name of the object storage bucket involved in the
-- transfer.
createLocationObjectStorage_bucketName :: Lens.Lens' CreateLocationObjectStorage Prelude.Text
createLocationObjectStorage_bucketName = Lens.lens (\CreateLocationObjectStorage' {bucketName} -> bucketName) (\s@CreateLocationObjectStorage' {} a -> s {bucketName = a} :: CreateLocationObjectStorage)

-- | Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
-- can securely connect with your location.
createLocationObjectStorage_agentArns :: Lens.Lens' CreateLocationObjectStorage (Prelude.NonEmpty Prelude.Text)
createLocationObjectStorage_agentArns = Lens.lens (\CreateLocationObjectStorage' {agentArns} -> agentArns) (\s@CreateLocationObjectStorage' {} a -> s {agentArns = a} :: CreateLocationObjectStorage) Prelude.. Lens.coerced

instance Core.AWSRequest CreateLocationObjectStorage where
  type
    AWSResponse CreateLocationObjectStorage =
      CreateLocationObjectStorageResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLocationObjectStorageResponse'
            Prelude.<$> (x Core..?> "LocationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateLocationObjectStorage where
  hashWithSalt _salt CreateLocationObjectStorage' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` serverProtocol
      `Prelude.hashWithSalt` serverCertificate
      `Prelude.hashWithSalt` serverPort
      `Prelude.hashWithSalt` accessKey
      `Prelude.hashWithSalt` secretKey
      `Prelude.hashWithSalt` subdirectory
      `Prelude.hashWithSalt` serverHostname
      `Prelude.hashWithSalt` bucketName
      `Prelude.hashWithSalt` agentArns

instance Prelude.NFData CreateLocationObjectStorage where
  rnf CreateLocationObjectStorage' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf serverProtocol
      `Prelude.seq` Prelude.rnf serverCertificate
      `Prelude.seq` Prelude.rnf serverPort
      `Prelude.seq` Prelude.rnf accessKey
      `Prelude.seq` Prelude.rnf secretKey
      `Prelude.seq` Prelude.rnf subdirectory
      `Prelude.seq` Prelude.rnf serverHostname
      `Prelude.seq` Prelude.rnf bucketName
      `Prelude.seq` Prelude.rnf agentArns

instance Core.ToHeaders CreateLocationObjectStorage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.CreateLocationObjectStorage" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLocationObjectStorage where
  toJSON CreateLocationObjectStorage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ServerProtocol" Core..=)
              Prelude.<$> serverProtocol,
            ("ServerCertificate" Core..=)
              Prelude.<$> serverCertificate,
            ("ServerPort" Core..=) Prelude.<$> serverPort,
            ("AccessKey" Core..=) Prelude.<$> accessKey,
            ("SecretKey" Core..=) Prelude.<$> secretKey,
            ("Subdirectory" Core..=) Prelude.<$> subdirectory,
            Prelude.Just
              ("ServerHostname" Core..= serverHostname),
            Prelude.Just ("BucketName" Core..= bucketName),
            Prelude.Just ("AgentArns" Core..= agentArns)
          ]
      )

instance Core.ToPath CreateLocationObjectStorage where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateLocationObjectStorage where
  toQuery = Prelude.const Prelude.mempty

-- | CreateLocationObjectStorageResponse
--
-- /See:/ 'newCreateLocationObjectStorageResponse' smart constructor.
data CreateLocationObjectStorageResponse = CreateLocationObjectStorageResponse'
  { -- | Specifies the ARN of the object storage system location that you create.
    locationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationObjectStorageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationArn', 'createLocationObjectStorageResponse_locationArn' - Specifies the ARN of the object storage system location that you create.
--
-- 'httpStatus', 'createLocationObjectStorageResponse_httpStatus' - The response's http status code.
newCreateLocationObjectStorageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLocationObjectStorageResponse
newCreateLocationObjectStorageResponse pHttpStatus_ =
  CreateLocationObjectStorageResponse'
    { locationArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the ARN of the object storage system location that you create.
createLocationObjectStorageResponse_locationArn :: Lens.Lens' CreateLocationObjectStorageResponse (Prelude.Maybe Prelude.Text)
createLocationObjectStorageResponse_locationArn = Lens.lens (\CreateLocationObjectStorageResponse' {locationArn} -> locationArn) (\s@CreateLocationObjectStorageResponse' {} a -> s {locationArn = a} :: CreateLocationObjectStorageResponse)

-- | The response's http status code.
createLocationObjectStorageResponse_httpStatus :: Lens.Lens' CreateLocationObjectStorageResponse Prelude.Int
createLocationObjectStorageResponse_httpStatus = Lens.lens (\CreateLocationObjectStorageResponse' {httpStatus} -> httpStatus) (\s@CreateLocationObjectStorageResponse' {} a -> s {httpStatus = a} :: CreateLocationObjectStorageResponse)

instance
  Prelude.NFData
    CreateLocationObjectStorageResponse
  where
  rnf CreateLocationObjectStorageResponse' {..} =
    Prelude.rnf locationArn
      `Prelude.seq` Prelude.rnf httpStatus

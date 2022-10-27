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
-- Module      : Amazonka.Transfer.CreateAgreement
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an agreement. An agreement is a bilateral trading partner
-- agreement, or partnership, between an Transfer Family server and an AS2
-- process. The agreement defines the file and message transfer
-- relationship between the server and the AS2 process. To define an
-- agreement, Transfer Family combines a server, local profile, partner
-- profile, certificate, and other attributes.
--
-- The partner is identified with the @PartnerProfileId@, and the AS2
-- process is identified with the @LocalProfileId@.
module Amazonka.Transfer.CreateAgreement
  ( -- * Creating a Request
    CreateAgreement (..),
    newCreateAgreement,

    -- * Request Lenses
    createAgreement_tags,
    createAgreement_status,
    createAgreement_description,
    createAgreement_serverId,
    createAgreement_localProfileId,
    createAgreement_partnerProfileId,
    createAgreement_baseDirectory,
    createAgreement_accessRole,

    -- * Destructuring the Response
    CreateAgreementResponse (..),
    newCreateAgreementResponse,

    -- * Response Lenses
    createAgreementResponse_httpStatus,
    createAgreementResponse_agreementId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transfer.Types

-- | /See:/ 'newCreateAgreement' smart constructor.
data CreateAgreement = CreateAgreement'
  { -- | Key-value pairs that can be used to group and search for agreements.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The status of the agreement. The agreement can be either @ACTIVE@ or
    -- @INACTIVE@.
    status :: Prelude.Maybe AgreementStatusType,
    -- | A name or short description to identify the agreement.
    description :: Prelude.Maybe Prelude.Text,
    -- | A system-assigned unique identifier for a server instance. This is the
    -- specific server that the agreement uses.
    serverId :: Prelude.Text,
    -- | A unique identifier for the AS2 local profile.
    localProfileId :: Prelude.Text,
    -- | A unique identifier for the partner profile used in the agreement.
    partnerProfileId :: Prelude.Text,
    -- | The landing directory (folder) for files transferred by using the AS2
    -- protocol.
    --
    -- A @BaseDirectory@ example is
    -- /DOC-EXAMPLE-BUCKET/\//home/\//mydirectory/.
    baseDirectory :: Prelude.Text,
    -- | With AS2, you can send files by calling @StartFileTransfer@ and
    -- specifying the file paths in the request parameter, @SendFilePaths@. We
    -- use the file’s parent directory (for example, for
    -- @--send-file-paths \/bucket\/dir\/file.txt@, parent directory is
    -- @\/bucket\/dir\/@) to temporarily store a processed AS2 message file,
    -- store the MDN when we receive them from the partner, and write a final
    -- JSON file containing relevant metadata of the transmission. So, the
    -- @AccessRole@ needs to provide read and write access to the parent
    -- directory of the file location used in the @StartFileTransfer@ request.
    -- Additionally, you need to provide read and write access to the parent
    -- directory of the files that you intend to send with @StartFileTransfer@.
    accessRole :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAgreement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAgreement_tags' - Key-value pairs that can be used to group and search for agreements.
--
-- 'status', 'createAgreement_status' - The status of the agreement. The agreement can be either @ACTIVE@ or
-- @INACTIVE@.
--
-- 'description', 'createAgreement_description' - A name or short description to identify the agreement.
--
-- 'serverId', 'createAgreement_serverId' - A system-assigned unique identifier for a server instance. This is the
-- specific server that the agreement uses.
--
-- 'localProfileId', 'createAgreement_localProfileId' - A unique identifier for the AS2 local profile.
--
-- 'partnerProfileId', 'createAgreement_partnerProfileId' - A unique identifier for the partner profile used in the agreement.
--
-- 'baseDirectory', 'createAgreement_baseDirectory' - The landing directory (folder) for files transferred by using the AS2
-- protocol.
--
-- A @BaseDirectory@ example is
-- /DOC-EXAMPLE-BUCKET/\//home/\//mydirectory/.
--
-- 'accessRole', 'createAgreement_accessRole' - With AS2, you can send files by calling @StartFileTransfer@ and
-- specifying the file paths in the request parameter, @SendFilePaths@. We
-- use the file’s parent directory (for example, for
-- @--send-file-paths \/bucket\/dir\/file.txt@, parent directory is
-- @\/bucket\/dir\/@) to temporarily store a processed AS2 message file,
-- store the MDN when we receive them from the partner, and write a final
-- JSON file containing relevant metadata of the transmission. So, the
-- @AccessRole@ needs to provide read and write access to the parent
-- directory of the file location used in the @StartFileTransfer@ request.
-- Additionally, you need to provide read and write access to the parent
-- directory of the files that you intend to send with @StartFileTransfer@.
newCreateAgreement ::
  -- | 'serverId'
  Prelude.Text ->
  -- | 'localProfileId'
  Prelude.Text ->
  -- | 'partnerProfileId'
  Prelude.Text ->
  -- | 'baseDirectory'
  Prelude.Text ->
  -- | 'accessRole'
  Prelude.Text ->
  CreateAgreement
newCreateAgreement
  pServerId_
  pLocalProfileId_
  pPartnerProfileId_
  pBaseDirectory_
  pAccessRole_ =
    CreateAgreement'
      { tags = Prelude.Nothing,
        status = Prelude.Nothing,
        description = Prelude.Nothing,
        serverId = pServerId_,
        localProfileId = pLocalProfileId_,
        partnerProfileId = pPartnerProfileId_,
        baseDirectory = pBaseDirectory_,
        accessRole = pAccessRole_
      }

-- | Key-value pairs that can be used to group and search for agreements.
createAgreement_tags :: Lens.Lens' CreateAgreement (Prelude.Maybe (Prelude.NonEmpty Tag))
createAgreement_tags = Lens.lens (\CreateAgreement' {tags} -> tags) (\s@CreateAgreement' {} a -> s {tags = a} :: CreateAgreement) Prelude.. Lens.mapping Lens.coerced

-- | The status of the agreement. The agreement can be either @ACTIVE@ or
-- @INACTIVE@.
createAgreement_status :: Lens.Lens' CreateAgreement (Prelude.Maybe AgreementStatusType)
createAgreement_status = Lens.lens (\CreateAgreement' {status} -> status) (\s@CreateAgreement' {} a -> s {status = a} :: CreateAgreement)

-- | A name or short description to identify the agreement.
createAgreement_description :: Lens.Lens' CreateAgreement (Prelude.Maybe Prelude.Text)
createAgreement_description = Lens.lens (\CreateAgreement' {description} -> description) (\s@CreateAgreement' {} a -> s {description = a} :: CreateAgreement)

-- | A system-assigned unique identifier for a server instance. This is the
-- specific server that the agreement uses.
createAgreement_serverId :: Lens.Lens' CreateAgreement Prelude.Text
createAgreement_serverId = Lens.lens (\CreateAgreement' {serverId} -> serverId) (\s@CreateAgreement' {} a -> s {serverId = a} :: CreateAgreement)

-- | A unique identifier for the AS2 local profile.
createAgreement_localProfileId :: Lens.Lens' CreateAgreement Prelude.Text
createAgreement_localProfileId = Lens.lens (\CreateAgreement' {localProfileId} -> localProfileId) (\s@CreateAgreement' {} a -> s {localProfileId = a} :: CreateAgreement)

-- | A unique identifier for the partner profile used in the agreement.
createAgreement_partnerProfileId :: Lens.Lens' CreateAgreement Prelude.Text
createAgreement_partnerProfileId = Lens.lens (\CreateAgreement' {partnerProfileId} -> partnerProfileId) (\s@CreateAgreement' {} a -> s {partnerProfileId = a} :: CreateAgreement)

-- | The landing directory (folder) for files transferred by using the AS2
-- protocol.
--
-- A @BaseDirectory@ example is
-- /DOC-EXAMPLE-BUCKET/\//home/\//mydirectory/.
createAgreement_baseDirectory :: Lens.Lens' CreateAgreement Prelude.Text
createAgreement_baseDirectory = Lens.lens (\CreateAgreement' {baseDirectory} -> baseDirectory) (\s@CreateAgreement' {} a -> s {baseDirectory = a} :: CreateAgreement)

-- | With AS2, you can send files by calling @StartFileTransfer@ and
-- specifying the file paths in the request parameter, @SendFilePaths@. We
-- use the file’s parent directory (for example, for
-- @--send-file-paths \/bucket\/dir\/file.txt@, parent directory is
-- @\/bucket\/dir\/@) to temporarily store a processed AS2 message file,
-- store the MDN when we receive them from the partner, and write a final
-- JSON file containing relevant metadata of the transmission. So, the
-- @AccessRole@ needs to provide read and write access to the parent
-- directory of the file location used in the @StartFileTransfer@ request.
-- Additionally, you need to provide read and write access to the parent
-- directory of the files that you intend to send with @StartFileTransfer@.
createAgreement_accessRole :: Lens.Lens' CreateAgreement Prelude.Text
createAgreement_accessRole = Lens.lens (\CreateAgreement' {accessRole} -> accessRole) (\s@CreateAgreement' {} a -> s {accessRole = a} :: CreateAgreement)

instance Core.AWSRequest CreateAgreement where
  type
    AWSResponse CreateAgreement =
      CreateAgreementResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAgreementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "AgreementId")
      )

instance Prelude.Hashable CreateAgreement where
  hashWithSalt _salt CreateAgreement' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` serverId
      `Prelude.hashWithSalt` localProfileId
      `Prelude.hashWithSalt` partnerProfileId
      `Prelude.hashWithSalt` baseDirectory
      `Prelude.hashWithSalt` accessRole

instance Prelude.NFData CreateAgreement where
  rnf CreateAgreement' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf serverId
      `Prelude.seq` Prelude.rnf localProfileId
      `Prelude.seq` Prelude.rnf partnerProfileId
      `Prelude.seq` Prelude.rnf baseDirectory
      `Prelude.seq` Prelude.rnf accessRole

instance Core.ToHeaders CreateAgreement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.CreateAgreement" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAgreement where
  toJSON CreateAgreement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Status" Core..=) Prelude.<$> status,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("ServerId" Core..= serverId),
            Prelude.Just
              ("LocalProfileId" Core..= localProfileId),
            Prelude.Just
              ("PartnerProfileId" Core..= partnerProfileId),
            Prelude.Just ("BaseDirectory" Core..= baseDirectory),
            Prelude.Just ("AccessRole" Core..= accessRole)
          ]
      )

instance Core.ToPath CreateAgreement where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateAgreement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAgreementResponse' smart constructor.
data CreateAgreementResponse = CreateAgreementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique identifier for the agreement. Use this ID for deleting, or
    -- updating an agreement, as well as in any other API calls that require
    -- that you specify the agreement ID.
    agreementId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAgreementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAgreementResponse_httpStatus' - The response's http status code.
--
-- 'agreementId', 'createAgreementResponse_agreementId' - The unique identifier for the agreement. Use this ID for deleting, or
-- updating an agreement, as well as in any other API calls that require
-- that you specify the agreement ID.
newCreateAgreementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'agreementId'
  Prelude.Text ->
  CreateAgreementResponse
newCreateAgreementResponse pHttpStatus_ pAgreementId_ =
  CreateAgreementResponse'
    { httpStatus = pHttpStatus_,
      agreementId = pAgreementId_
    }

-- | The response's http status code.
createAgreementResponse_httpStatus :: Lens.Lens' CreateAgreementResponse Prelude.Int
createAgreementResponse_httpStatus = Lens.lens (\CreateAgreementResponse' {httpStatus} -> httpStatus) (\s@CreateAgreementResponse' {} a -> s {httpStatus = a} :: CreateAgreementResponse)

-- | The unique identifier for the agreement. Use this ID for deleting, or
-- updating an agreement, as well as in any other API calls that require
-- that you specify the agreement ID.
createAgreementResponse_agreementId :: Lens.Lens' CreateAgreementResponse Prelude.Text
createAgreementResponse_agreementId = Lens.lens (\CreateAgreementResponse' {agreementId} -> agreementId) (\s@CreateAgreementResponse' {} a -> s {agreementId = a} :: CreateAgreementResponse)

instance Prelude.NFData CreateAgreementResponse where
  rnf CreateAgreementResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf agreementId

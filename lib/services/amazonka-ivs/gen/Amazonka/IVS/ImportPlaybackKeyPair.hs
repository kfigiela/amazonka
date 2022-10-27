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
-- Module      : Amazonka.IVS.ImportPlaybackKeyPair
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the public portion of a new key pair and returns its @arn@ and
-- @fingerprint@. The @privateKey@ can then be used to generate viewer
-- authorization tokens, to grant viewers access to private channels. For
-- more information, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html Setting Up Private Channels>
-- in the /Amazon IVS User Guide/.
module Amazonka.IVS.ImportPlaybackKeyPair
  ( -- * Creating a Request
    ImportPlaybackKeyPair (..),
    newImportPlaybackKeyPair,

    -- * Request Lenses
    importPlaybackKeyPair_tags,
    importPlaybackKeyPair_name,
    importPlaybackKeyPair_publicKeyMaterial,

    -- * Destructuring the Response
    ImportPlaybackKeyPairResponse (..),
    newImportPlaybackKeyPairResponse,

    -- * Response Lenses
    importPlaybackKeyPairResponse_keyPair,
    importPlaybackKeyPairResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newImportPlaybackKeyPair' smart constructor.
data ImportPlaybackKeyPair = ImportPlaybackKeyPair'
  { -- | Any tags provided with the request are added to the playback key pair
    -- tags. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
    -- for more information, including restrictions that apply to tags and
    -- \"Tag naming limits and requirements\"; Amazon IVS has no
    -- service-specific constraints beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Playback-key-pair name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | The public portion of a customer-generated key pair.
    publicKeyMaterial :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportPlaybackKeyPair' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'importPlaybackKeyPair_tags' - Any tags provided with the request are added to the playback key pair
-- tags. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
--
-- 'name', 'importPlaybackKeyPair_name' - Playback-key-pair name. The value does not need to be unique.
--
-- 'publicKeyMaterial', 'importPlaybackKeyPair_publicKeyMaterial' - The public portion of a customer-generated key pair.
newImportPlaybackKeyPair ::
  -- | 'publicKeyMaterial'
  Prelude.Text ->
  ImportPlaybackKeyPair
newImportPlaybackKeyPair pPublicKeyMaterial_ =
  ImportPlaybackKeyPair'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      publicKeyMaterial = pPublicKeyMaterial_
    }

-- | Any tags provided with the request are added to the playback key pair
-- tags. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
importPlaybackKeyPair_tags :: Lens.Lens' ImportPlaybackKeyPair (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
importPlaybackKeyPair_tags = Lens.lens (\ImportPlaybackKeyPair' {tags} -> tags) (\s@ImportPlaybackKeyPair' {} a -> s {tags = a} :: ImportPlaybackKeyPair) Prelude.. Lens.mapping Lens.coerced

-- | Playback-key-pair name. The value does not need to be unique.
importPlaybackKeyPair_name :: Lens.Lens' ImportPlaybackKeyPair (Prelude.Maybe Prelude.Text)
importPlaybackKeyPair_name = Lens.lens (\ImportPlaybackKeyPair' {name} -> name) (\s@ImportPlaybackKeyPair' {} a -> s {name = a} :: ImportPlaybackKeyPair)

-- | The public portion of a customer-generated key pair.
importPlaybackKeyPair_publicKeyMaterial :: Lens.Lens' ImportPlaybackKeyPair Prelude.Text
importPlaybackKeyPair_publicKeyMaterial = Lens.lens (\ImportPlaybackKeyPair' {publicKeyMaterial} -> publicKeyMaterial) (\s@ImportPlaybackKeyPair' {} a -> s {publicKeyMaterial = a} :: ImportPlaybackKeyPair)

instance Core.AWSRequest ImportPlaybackKeyPair where
  type
    AWSResponse ImportPlaybackKeyPair =
      ImportPlaybackKeyPairResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ImportPlaybackKeyPairResponse'
            Prelude.<$> (x Core..?> "keyPair")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ImportPlaybackKeyPair where
  hashWithSalt _salt ImportPlaybackKeyPair' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` publicKeyMaterial

instance Prelude.NFData ImportPlaybackKeyPair where
  rnf ImportPlaybackKeyPair' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf publicKeyMaterial

instance Core.ToHeaders ImportPlaybackKeyPair where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ImportPlaybackKeyPair where
  toJSON ImportPlaybackKeyPair' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("name" Core..=) Prelude.<$> name,
            Prelude.Just
              ("publicKeyMaterial" Core..= publicKeyMaterial)
          ]
      )

instance Core.ToPath ImportPlaybackKeyPair where
  toPath = Prelude.const "/ImportPlaybackKeyPair"

instance Core.ToQuery ImportPlaybackKeyPair where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newImportPlaybackKeyPairResponse' smart constructor.
data ImportPlaybackKeyPairResponse = ImportPlaybackKeyPairResponse'
  { keyPair :: Prelude.Maybe PlaybackKeyPair,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportPlaybackKeyPairResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyPair', 'importPlaybackKeyPairResponse_keyPair' -
--
-- 'httpStatus', 'importPlaybackKeyPairResponse_httpStatus' - The response's http status code.
newImportPlaybackKeyPairResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ImportPlaybackKeyPairResponse
newImportPlaybackKeyPairResponse pHttpStatus_ =
  ImportPlaybackKeyPairResponse'
    { keyPair =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
importPlaybackKeyPairResponse_keyPair :: Lens.Lens' ImportPlaybackKeyPairResponse (Prelude.Maybe PlaybackKeyPair)
importPlaybackKeyPairResponse_keyPair = Lens.lens (\ImportPlaybackKeyPairResponse' {keyPair} -> keyPair) (\s@ImportPlaybackKeyPairResponse' {} a -> s {keyPair = a} :: ImportPlaybackKeyPairResponse)

-- | The response's http status code.
importPlaybackKeyPairResponse_httpStatus :: Lens.Lens' ImportPlaybackKeyPairResponse Prelude.Int
importPlaybackKeyPairResponse_httpStatus = Lens.lens (\ImportPlaybackKeyPairResponse' {httpStatus} -> httpStatus) (\s@ImportPlaybackKeyPairResponse' {} a -> s {httpStatus = a} :: ImportPlaybackKeyPairResponse)

instance Prelude.NFData ImportPlaybackKeyPairResponse where
  rnf ImportPlaybackKeyPairResponse' {..} =
    Prelude.rnf keyPair
      `Prelude.seq` Prelude.rnf httpStatus

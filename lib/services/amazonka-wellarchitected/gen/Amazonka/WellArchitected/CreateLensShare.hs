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
-- Module      : Amazonka.WellArchitected.CreateLensShare
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a lens share.
--
-- The owner of a lens can share it with other Amazon Web Services accounts
-- and IAM users in the same Amazon Web Services Region. Shared access to a
-- lens is not removed until the lens invitation is deleted.
--
-- __Disclaimer__
--
-- By sharing your custom lenses with other Amazon Web Services accounts,
-- you acknowledge that Amazon Web Services will make your custom lenses
-- available to those other accounts. Those other accounts may continue to
-- access and use your shared custom lenses even if you delete the custom
-- lenses from your own Amazon Web Services account or terminate your
-- Amazon Web Services account.
module Amazonka.WellArchitected.CreateLensShare
  ( -- * Creating a Request
    CreateLensShare (..),
    newCreateLensShare,

    -- * Request Lenses
    createLensShare_lensAlias,
    createLensShare_sharedWith,
    createLensShare_clientRequestToken,

    -- * Destructuring the Response
    CreateLensShareResponse (..),
    newCreateLensShareResponse,

    -- * Response Lenses
    createLensShareResponse_shareId,
    createLensShareResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WellArchitected.Types

-- | /See:/ 'newCreateLensShare' smart constructor.
data CreateLensShare = CreateLensShare'
  { lensAlias :: Prelude.Text,
    sharedWith :: Prelude.Text,
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLensShare' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lensAlias', 'createLensShare_lensAlias' - Undocumented member.
--
-- 'sharedWith', 'createLensShare_sharedWith' - Undocumented member.
--
-- 'clientRequestToken', 'createLensShare_clientRequestToken' - Undocumented member.
newCreateLensShare ::
  -- | 'lensAlias'
  Prelude.Text ->
  -- | 'sharedWith'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  CreateLensShare
newCreateLensShare
  pLensAlias_
  pSharedWith_
  pClientRequestToken_ =
    CreateLensShare'
      { lensAlias = pLensAlias_,
        sharedWith = pSharedWith_,
        clientRequestToken = pClientRequestToken_
      }

-- | Undocumented member.
createLensShare_lensAlias :: Lens.Lens' CreateLensShare Prelude.Text
createLensShare_lensAlias = Lens.lens (\CreateLensShare' {lensAlias} -> lensAlias) (\s@CreateLensShare' {} a -> s {lensAlias = a} :: CreateLensShare)

-- | Undocumented member.
createLensShare_sharedWith :: Lens.Lens' CreateLensShare Prelude.Text
createLensShare_sharedWith = Lens.lens (\CreateLensShare' {sharedWith} -> sharedWith) (\s@CreateLensShare' {} a -> s {sharedWith = a} :: CreateLensShare)

-- | Undocumented member.
createLensShare_clientRequestToken :: Lens.Lens' CreateLensShare Prelude.Text
createLensShare_clientRequestToken = Lens.lens (\CreateLensShare' {clientRequestToken} -> clientRequestToken) (\s@CreateLensShare' {} a -> s {clientRequestToken = a} :: CreateLensShare)

instance Core.AWSRequest CreateLensShare where
  type
    AWSResponse CreateLensShare =
      CreateLensShareResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLensShareResponse'
            Prelude.<$> (x Core..?> "ShareId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateLensShare where
  service _proxy = defaultService

instance Prelude.Hashable CreateLensShare where
  hashWithSalt _salt CreateLensShare' {..} =
    _salt `Prelude.hashWithSalt` lensAlias
      `Prelude.hashWithSalt` sharedWith
      `Prelude.hashWithSalt` clientRequestToken

instance Prelude.NFData CreateLensShare where
  rnf CreateLensShare' {..} =
    Prelude.rnf lensAlias
      `Prelude.seq` Prelude.rnf sharedWith
      `Prelude.seq` Prelude.rnf clientRequestToken

instance Core.ToHeaders CreateLensShare where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLensShare where
  toJSON CreateLensShare' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("SharedWith" Core..= sharedWith),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath CreateLensShare where
  toPath CreateLensShare' {..} =
    Prelude.mconcat
      ["/lenses/", Core.toBS lensAlias, "/shares"]

instance Core.ToQuery CreateLensShare where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLensShareResponse' smart constructor.
data CreateLensShareResponse = CreateLensShareResponse'
  { shareId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLensShareResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareId', 'createLensShareResponse_shareId' - Undocumented member.
--
-- 'httpStatus', 'createLensShareResponse_httpStatus' - The response's http status code.
newCreateLensShareResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLensShareResponse
newCreateLensShareResponse pHttpStatus_ =
  CreateLensShareResponse'
    { shareId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createLensShareResponse_shareId :: Lens.Lens' CreateLensShareResponse (Prelude.Maybe Prelude.Text)
createLensShareResponse_shareId = Lens.lens (\CreateLensShareResponse' {shareId} -> shareId) (\s@CreateLensShareResponse' {} a -> s {shareId = a} :: CreateLensShareResponse)

-- | The response's http status code.
createLensShareResponse_httpStatus :: Lens.Lens' CreateLensShareResponse Prelude.Int
createLensShareResponse_httpStatus = Lens.lens (\CreateLensShareResponse' {httpStatus} -> httpStatus) (\s@CreateLensShareResponse' {} a -> s {httpStatus = a} :: CreateLensShareResponse)

instance Prelude.NFData CreateLensShareResponse where
  rnf CreateLensShareResponse' {..} =
    Prelude.rnf shareId
      `Prelude.seq` Prelude.rnf httpStatus

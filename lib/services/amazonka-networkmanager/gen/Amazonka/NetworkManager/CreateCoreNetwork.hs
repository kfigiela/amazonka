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
-- Module      : Amazonka.NetworkManager.CreateCoreNetwork
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a core network as part of your global network, and optionally,
-- with a core network policy.
module Amazonka.NetworkManager.CreateCoreNetwork
  ( -- * Creating a Request
    CreateCoreNetwork (..),
    newCreateCoreNetwork,

    -- * Request Lenses
    createCoreNetwork_tags,
    createCoreNetwork_clientToken,
    createCoreNetwork_description,
    createCoreNetwork_policyDocument,
    createCoreNetwork_globalNetworkId,

    -- * Destructuring the Response
    CreateCoreNetworkResponse (..),
    newCreateCoreNetworkResponse,

    -- * Response Lenses
    createCoreNetworkResponse_coreNetwork,
    createCoreNetworkResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateCoreNetwork' smart constructor.
data CreateCoreNetwork = CreateCoreNetwork'
  { -- | Key-value tags associated with a core network request.
    tags :: Prelude.Maybe [Tag],
    -- | The client token associated with a core network request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The description of a core network.
    description :: Prelude.Maybe Prelude.Text,
    -- | The policy document for creating a core network.
    policyDocument :: Prelude.Maybe Prelude.Text,
    -- | The ID of the global network that a core network will be a part of.
    globalNetworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCoreNetwork' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createCoreNetwork_tags' - Key-value tags associated with a core network request.
--
-- 'clientToken', 'createCoreNetwork_clientToken' - The client token associated with a core network request.
--
-- 'description', 'createCoreNetwork_description' - The description of a core network.
--
-- 'policyDocument', 'createCoreNetwork_policyDocument' - The policy document for creating a core network.
--
-- 'globalNetworkId', 'createCoreNetwork_globalNetworkId' - The ID of the global network that a core network will be a part of.
newCreateCoreNetwork ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  CreateCoreNetwork
newCreateCoreNetwork pGlobalNetworkId_ =
  CreateCoreNetwork'
    { tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      description = Prelude.Nothing,
      policyDocument = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_
    }

-- | Key-value tags associated with a core network request.
createCoreNetwork_tags :: Lens.Lens' CreateCoreNetwork (Prelude.Maybe [Tag])
createCoreNetwork_tags = Lens.lens (\CreateCoreNetwork' {tags} -> tags) (\s@CreateCoreNetwork' {} a -> s {tags = a} :: CreateCoreNetwork) Prelude.. Lens.mapping Lens.coerced

-- | The client token associated with a core network request.
createCoreNetwork_clientToken :: Lens.Lens' CreateCoreNetwork (Prelude.Maybe Prelude.Text)
createCoreNetwork_clientToken = Lens.lens (\CreateCoreNetwork' {clientToken} -> clientToken) (\s@CreateCoreNetwork' {} a -> s {clientToken = a} :: CreateCoreNetwork)

-- | The description of a core network.
createCoreNetwork_description :: Lens.Lens' CreateCoreNetwork (Prelude.Maybe Prelude.Text)
createCoreNetwork_description = Lens.lens (\CreateCoreNetwork' {description} -> description) (\s@CreateCoreNetwork' {} a -> s {description = a} :: CreateCoreNetwork)

-- | The policy document for creating a core network.
createCoreNetwork_policyDocument :: Lens.Lens' CreateCoreNetwork (Prelude.Maybe Prelude.Text)
createCoreNetwork_policyDocument = Lens.lens (\CreateCoreNetwork' {policyDocument} -> policyDocument) (\s@CreateCoreNetwork' {} a -> s {policyDocument = a} :: CreateCoreNetwork)

-- | The ID of the global network that a core network will be a part of.
createCoreNetwork_globalNetworkId :: Lens.Lens' CreateCoreNetwork Prelude.Text
createCoreNetwork_globalNetworkId = Lens.lens (\CreateCoreNetwork' {globalNetworkId} -> globalNetworkId) (\s@CreateCoreNetwork' {} a -> s {globalNetworkId = a} :: CreateCoreNetwork)

instance Core.AWSRequest CreateCoreNetwork where
  type
    AWSResponse CreateCoreNetwork =
      CreateCoreNetworkResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCoreNetworkResponse'
            Prelude.<$> (x Core..?> "CoreNetwork")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCoreNetwork where
  hashWithSalt _salt CreateCoreNetwork' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` policyDocument
      `Prelude.hashWithSalt` globalNetworkId

instance Prelude.NFData CreateCoreNetwork where
  rnf CreateCoreNetwork' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf policyDocument
      `Prelude.seq` Prelude.rnf globalNetworkId

instance Core.ToHeaders CreateCoreNetwork where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCoreNetwork where
  toJSON CreateCoreNetwork' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("Description" Core..=) Prelude.<$> description,
            ("PolicyDocument" Core..=)
              Prelude.<$> policyDocument,
            Prelude.Just
              ("GlobalNetworkId" Core..= globalNetworkId)
          ]
      )

instance Core.ToPath CreateCoreNetwork where
  toPath = Prelude.const "/core-networks"

instance Core.ToQuery CreateCoreNetwork where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCoreNetworkResponse' smart constructor.
data CreateCoreNetworkResponse = CreateCoreNetworkResponse'
  { -- | Returns details about a core network.
    coreNetwork :: Prelude.Maybe CoreNetwork,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCoreNetworkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'coreNetwork', 'createCoreNetworkResponse_coreNetwork' - Returns details about a core network.
--
-- 'httpStatus', 'createCoreNetworkResponse_httpStatus' - The response's http status code.
newCreateCoreNetworkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCoreNetworkResponse
newCreateCoreNetworkResponse pHttpStatus_ =
  CreateCoreNetworkResponse'
    { coreNetwork =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Returns details about a core network.
createCoreNetworkResponse_coreNetwork :: Lens.Lens' CreateCoreNetworkResponse (Prelude.Maybe CoreNetwork)
createCoreNetworkResponse_coreNetwork = Lens.lens (\CreateCoreNetworkResponse' {coreNetwork} -> coreNetwork) (\s@CreateCoreNetworkResponse' {} a -> s {coreNetwork = a} :: CreateCoreNetworkResponse)

-- | The response's http status code.
createCoreNetworkResponse_httpStatus :: Lens.Lens' CreateCoreNetworkResponse Prelude.Int
createCoreNetworkResponse_httpStatus = Lens.lens (\CreateCoreNetworkResponse' {httpStatus} -> httpStatus) (\s@CreateCoreNetworkResponse' {} a -> s {httpStatus = a} :: CreateCoreNetworkResponse)

instance Prelude.NFData CreateCoreNetworkResponse where
  rnf CreateCoreNetworkResponse' {..} =
    Prelude.rnf coreNetwork
      `Prelude.seq` Prelude.rnf httpStatus

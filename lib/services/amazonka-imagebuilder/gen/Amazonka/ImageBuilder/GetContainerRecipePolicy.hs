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
-- Module      : Amazonka.ImageBuilder.GetContainerRecipePolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the policy for a container recipe.
module Amazonka.ImageBuilder.GetContainerRecipePolicy
  ( -- * Creating a Request
    GetContainerRecipePolicy (..),
    newGetContainerRecipePolicy,

    -- * Request Lenses
    getContainerRecipePolicy_containerRecipeArn,

    -- * Destructuring the Response
    GetContainerRecipePolicyResponse (..),
    newGetContainerRecipePolicyResponse,

    -- * Response Lenses
    getContainerRecipePolicyResponse_policy,
    getContainerRecipePolicyResponse_requestId,
    getContainerRecipePolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetContainerRecipePolicy' smart constructor.
data GetContainerRecipePolicy = GetContainerRecipePolicy'
  { -- | The Amazon Resource Name (ARN) of the container recipe for the policy
    -- being requested.
    containerRecipeArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContainerRecipePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerRecipeArn', 'getContainerRecipePolicy_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe for the policy
-- being requested.
newGetContainerRecipePolicy ::
  -- | 'containerRecipeArn'
  Prelude.Text ->
  GetContainerRecipePolicy
newGetContainerRecipePolicy pContainerRecipeArn_ =
  GetContainerRecipePolicy'
    { containerRecipeArn =
        pContainerRecipeArn_
    }

-- | The Amazon Resource Name (ARN) of the container recipe for the policy
-- being requested.
getContainerRecipePolicy_containerRecipeArn :: Lens.Lens' GetContainerRecipePolicy Prelude.Text
getContainerRecipePolicy_containerRecipeArn = Lens.lens (\GetContainerRecipePolicy' {containerRecipeArn} -> containerRecipeArn) (\s@GetContainerRecipePolicy' {} a -> s {containerRecipeArn = a} :: GetContainerRecipePolicy)

instance Core.AWSRequest GetContainerRecipePolicy where
  type
    AWSResponse GetContainerRecipePolicy =
      GetContainerRecipePolicyResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContainerRecipePolicyResponse'
            Prelude.<$> (x Core..?> "policy")
            Prelude.<*> (x Core..?> "requestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetContainerRecipePolicy where
  hashWithSalt _salt GetContainerRecipePolicy' {..} =
    _salt `Prelude.hashWithSalt` containerRecipeArn

instance Prelude.NFData GetContainerRecipePolicy where
  rnf GetContainerRecipePolicy' {..} =
    Prelude.rnf containerRecipeArn

instance Core.ToHeaders GetContainerRecipePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetContainerRecipePolicy where
  toPath = Prelude.const "/GetContainerRecipePolicy"

instance Core.ToQuery GetContainerRecipePolicy where
  toQuery GetContainerRecipePolicy' {..} =
    Prelude.mconcat
      ["containerRecipeArn" Core.=: containerRecipeArn]

-- | /See:/ 'newGetContainerRecipePolicyResponse' smart constructor.
data GetContainerRecipePolicyResponse = GetContainerRecipePolicyResponse'
  { -- | The container recipe policy object that is returned.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContainerRecipePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'getContainerRecipePolicyResponse_policy' - The container recipe policy object that is returned.
--
-- 'requestId', 'getContainerRecipePolicyResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'httpStatus', 'getContainerRecipePolicyResponse_httpStatus' - The response's http status code.
newGetContainerRecipePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetContainerRecipePolicyResponse
newGetContainerRecipePolicyResponse pHttpStatus_ =
  GetContainerRecipePolicyResponse'
    { policy =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The container recipe policy object that is returned.
getContainerRecipePolicyResponse_policy :: Lens.Lens' GetContainerRecipePolicyResponse (Prelude.Maybe Prelude.Text)
getContainerRecipePolicyResponse_policy = Lens.lens (\GetContainerRecipePolicyResponse' {policy} -> policy) (\s@GetContainerRecipePolicyResponse' {} a -> s {policy = a} :: GetContainerRecipePolicyResponse)

-- | The request ID that uniquely identifies this request.
getContainerRecipePolicyResponse_requestId :: Lens.Lens' GetContainerRecipePolicyResponse (Prelude.Maybe Prelude.Text)
getContainerRecipePolicyResponse_requestId = Lens.lens (\GetContainerRecipePolicyResponse' {requestId} -> requestId) (\s@GetContainerRecipePolicyResponse' {} a -> s {requestId = a} :: GetContainerRecipePolicyResponse)

-- | The response's http status code.
getContainerRecipePolicyResponse_httpStatus :: Lens.Lens' GetContainerRecipePolicyResponse Prelude.Int
getContainerRecipePolicyResponse_httpStatus = Lens.lens (\GetContainerRecipePolicyResponse' {httpStatus} -> httpStatus) (\s@GetContainerRecipePolicyResponse' {} a -> s {httpStatus = a} :: GetContainerRecipePolicyResponse)

instance
  Prelude.NFData
    GetContainerRecipePolicyResponse
  where
  rnf GetContainerRecipePolicyResponse' {..} =
    Prelude.rnf policy
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf httpStatus

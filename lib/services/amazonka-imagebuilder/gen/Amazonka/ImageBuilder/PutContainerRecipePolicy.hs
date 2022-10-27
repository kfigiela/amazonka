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
-- Module      : Amazonka.ImageBuilder.PutContainerRecipePolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a policy to a container image. We recommend that you call the
-- RAM API CreateResourceShare
-- (https:\/\/docs.aws.amazon.com\/\/ram\/latest\/APIReference\/API_CreateResourceShare.html)
-- to share resources. If you call the Image Builder API
-- @PutContainerImagePolicy@, you must also call the RAM API
-- PromoteResourceShareCreatedFromPolicy
-- (https:\/\/docs.aws.amazon.com\/\/ram\/latest\/APIReference\/API_PromoteResourceShareCreatedFromPolicy.html)
-- in order for the resource to be visible to all principals with whom the
-- resource is shared.
module Amazonka.ImageBuilder.PutContainerRecipePolicy
  ( -- * Creating a Request
    PutContainerRecipePolicy (..),
    newPutContainerRecipePolicy,

    -- * Request Lenses
    putContainerRecipePolicy_containerRecipeArn,
    putContainerRecipePolicy_policy,

    -- * Destructuring the Response
    PutContainerRecipePolicyResponse (..),
    newPutContainerRecipePolicyResponse,

    -- * Response Lenses
    putContainerRecipePolicyResponse_requestId,
    putContainerRecipePolicyResponse_containerRecipeArn,
    putContainerRecipePolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutContainerRecipePolicy' smart constructor.
data PutContainerRecipePolicy = PutContainerRecipePolicy'
  { -- | The Amazon Resource Name (ARN) of the container recipe that this policy
    -- should be applied to.
    containerRecipeArn :: Prelude.Text,
    -- | The policy to apply to the container recipe.
    policy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutContainerRecipePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerRecipeArn', 'putContainerRecipePolicy_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe that this policy
-- should be applied to.
--
-- 'policy', 'putContainerRecipePolicy_policy' - The policy to apply to the container recipe.
newPutContainerRecipePolicy ::
  -- | 'containerRecipeArn'
  Prelude.Text ->
  -- | 'policy'
  Prelude.Text ->
  PutContainerRecipePolicy
newPutContainerRecipePolicy
  pContainerRecipeArn_
  pPolicy_ =
    PutContainerRecipePolicy'
      { containerRecipeArn =
          pContainerRecipeArn_,
        policy = pPolicy_
      }

-- | The Amazon Resource Name (ARN) of the container recipe that this policy
-- should be applied to.
putContainerRecipePolicy_containerRecipeArn :: Lens.Lens' PutContainerRecipePolicy Prelude.Text
putContainerRecipePolicy_containerRecipeArn = Lens.lens (\PutContainerRecipePolicy' {containerRecipeArn} -> containerRecipeArn) (\s@PutContainerRecipePolicy' {} a -> s {containerRecipeArn = a} :: PutContainerRecipePolicy)

-- | The policy to apply to the container recipe.
putContainerRecipePolicy_policy :: Lens.Lens' PutContainerRecipePolicy Prelude.Text
putContainerRecipePolicy_policy = Lens.lens (\PutContainerRecipePolicy' {policy} -> policy) (\s@PutContainerRecipePolicy' {} a -> s {policy = a} :: PutContainerRecipePolicy)

instance Core.AWSRequest PutContainerRecipePolicy where
  type
    AWSResponse PutContainerRecipePolicy =
      PutContainerRecipePolicyResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          PutContainerRecipePolicyResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "containerRecipeArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutContainerRecipePolicy where
  hashWithSalt _salt PutContainerRecipePolicy' {..} =
    _salt `Prelude.hashWithSalt` containerRecipeArn
      `Prelude.hashWithSalt` policy

instance Prelude.NFData PutContainerRecipePolicy where
  rnf PutContainerRecipePolicy' {..} =
    Prelude.rnf containerRecipeArn
      `Prelude.seq` Prelude.rnf policy

instance Core.ToHeaders PutContainerRecipePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutContainerRecipePolicy where
  toJSON PutContainerRecipePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("containerRecipeArn" Core..= containerRecipeArn),
            Prelude.Just ("policy" Core..= policy)
          ]
      )

instance Core.ToPath PutContainerRecipePolicy where
  toPath = Prelude.const "/PutContainerRecipePolicy"

instance Core.ToQuery PutContainerRecipePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutContainerRecipePolicyResponse' smart constructor.
data PutContainerRecipePolicyResponse = PutContainerRecipePolicyResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the container recipe that this policy
    -- was applied to.
    containerRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutContainerRecipePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'putContainerRecipePolicyResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'containerRecipeArn', 'putContainerRecipePolicyResponse_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe that this policy
-- was applied to.
--
-- 'httpStatus', 'putContainerRecipePolicyResponse_httpStatus' - The response's http status code.
newPutContainerRecipePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutContainerRecipePolicyResponse
newPutContainerRecipePolicyResponse pHttpStatus_ =
  PutContainerRecipePolicyResponse'
    { requestId =
        Prelude.Nothing,
      containerRecipeArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
putContainerRecipePolicyResponse_requestId :: Lens.Lens' PutContainerRecipePolicyResponse (Prelude.Maybe Prelude.Text)
putContainerRecipePolicyResponse_requestId = Lens.lens (\PutContainerRecipePolicyResponse' {requestId} -> requestId) (\s@PutContainerRecipePolicyResponse' {} a -> s {requestId = a} :: PutContainerRecipePolicyResponse)

-- | The Amazon Resource Name (ARN) of the container recipe that this policy
-- was applied to.
putContainerRecipePolicyResponse_containerRecipeArn :: Lens.Lens' PutContainerRecipePolicyResponse (Prelude.Maybe Prelude.Text)
putContainerRecipePolicyResponse_containerRecipeArn = Lens.lens (\PutContainerRecipePolicyResponse' {containerRecipeArn} -> containerRecipeArn) (\s@PutContainerRecipePolicyResponse' {} a -> s {containerRecipeArn = a} :: PutContainerRecipePolicyResponse)

-- | The response's http status code.
putContainerRecipePolicyResponse_httpStatus :: Lens.Lens' PutContainerRecipePolicyResponse Prelude.Int
putContainerRecipePolicyResponse_httpStatus = Lens.lens (\PutContainerRecipePolicyResponse' {httpStatus} -> httpStatus) (\s@PutContainerRecipePolicyResponse' {} a -> s {httpStatus = a} :: PutContainerRecipePolicyResponse)

instance
  Prelude.NFData
    PutContainerRecipePolicyResponse
  where
  rnf PutContainerRecipePolicyResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf containerRecipeArn
      `Prelude.seq` Prelude.rnf httpStatus

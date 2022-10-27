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
-- Module      : Amazonka.LexV2Models.CreateResourcePolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new resource policy with the specified policy statements.
module Amazonka.LexV2Models.CreateResourcePolicy
  ( -- * Creating a Request
    CreateResourcePolicy (..),
    newCreateResourcePolicy,

    -- * Request Lenses
    createResourcePolicy_resourceArn,
    createResourcePolicy_policy,

    -- * Destructuring the Response
    CreateResourcePolicyResponse (..),
    newCreateResourcePolicyResponse,

    -- * Response Lenses
    createResourcePolicyResponse_revisionId,
    createResourcePolicyResponse_resourceArn,
    createResourcePolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateResourcePolicy' smart constructor.
data CreateResourcePolicy = CreateResourcePolicy'
  { -- | The Amazon Resource Name (ARN) of the bot or bot alias that the resource
    -- policy is attached to.
    resourceArn :: Prelude.Text,
    -- | A resource policy to add to the resource. The policy is a JSON structure
    -- that contains one or more statements that define the policy. The policy
    -- must follow the IAM syntax. For more information about the contents of a
    -- JSON policy document, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON policy reference>
    -- .
    --
    -- If the policy isn\'t valid, Amazon Lex returns a validation exception.
    policy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResourcePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'createResourcePolicy_resourceArn' - The Amazon Resource Name (ARN) of the bot or bot alias that the resource
-- policy is attached to.
--
-- 'policy', 'createResourcePolicy_policy' - A resource policy to add to the resource. The policy is a JSON structure
-- that contains one or more statements that define the policy. The policy
-- must follow the IAM syntax. For more information about the contents of a
-- JSON policy document, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON policy reference>
-- .
--
-- If the policy isn\'t valid, Amazon Lex returns a validation exception.
newCreateResourcePolicy ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'policy'
  Prelude.Text ->
  CreateResourcePolicy
newCreateResourcePolicy pResourceArn_ pPolicy_ =
  CreateResourcePolicy'
    { resourceArn = pResourceArn_,
      policy = pPolicy_
    }

-- | The Amazon Resource Name (ARN) of the bot or bot alias that the resource
-- policy is attached to.
createResourcePolicy_resourceArn :: Lens.Lens' CreateResourcePolicy Prelude.Text
createResourcePolicy_resourceArn = Lens.lens (\CreateResourcePolicy' {resourceArn} -> resourceArn) (\s@CreateResourcePolicy' {} a -> s {resourceArn = a} :: CreateResourcePolicy)

-- | A resource policy to add to the resource. The policy is a JSON structure
-- that contains one or more statements that define the policy. The policy
-- must follow the IAM syntax. For more information about the contents of a
-- JSON policy document, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON policy reference>
-- .
--
-- If the policy isn\'t valid, Amazon Lex returns a validation exception.
createResourcePolicy_policy :: Lens.Lens' CreateResourcePolicy Prelude.Text
createResourcePolicy_policy = Lens.lens (\CreateResourcePolicy' {policy} -> policy) (\s@CreateResourcePolicy' {} a -> s {policy = a} :: CreateResourcePolicy)

instance Core.AWSRequest CreateResourcePolicy where
  type
    AWSResponse CreateResourcePolicy =
      CreateResourcePolicyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateResourcePolicyResponse'
            Prelude.<$> (x Core..?> "revisionId")
            Prelude.<*> (x Core..?> "resourceArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateResourcePolicy where
  hashWithSalt _salt CreateResourcePolicy' {..} =
    _salt `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` policy

instance Prelude.NFData CreateResourcePolicy where
  rnf CreateResourcePolicy' {..} =
    Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf policy

instance Core.ToHeaders CreateResourcePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateResourcePolicy where
  toJSON CreateResourcePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("policy" Core..= policy)]
      )

instance Core.ToPath CreateResourcePolicy where
  toPath CreateResourcePolicy' {..} =
    Prelude.mconcat
      ["/policy/", Core.toBS resourceArn, "/"]

instance Core.ToQuery CreateResourcePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateResourcePolicyResponse' smart constructor.
data CreateResourcePolicyResponse = CreateResourcePolicyResponse'
  { -- | The current revision of the resource policy. Use the revision ID to make
    -- sure that you are updating the most current version of a resource policy
    -- when you add a policy statement to a resource, delete a resource, or
    -- update a resource.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the bot or bot alias that the resource
    -- policy was attached to.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResourcePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionId', 'createResourcePolicyResponse_revisionId' - The current revision of the resource policy. Use the revision ID to make
-- sure that you are updating the most current version of a resource policy
-- when you add a policy statement to a resource, delete a resource, or
-- update a resource.
--
-- 'resourceArn', 'createResourcePolicyResponse_resourceArn' - The Amazon Resource Name (ARN) of the bot or bot alias that the resource
-- policy was attached to.
--
-- 'httpStatus', 'createResourcePolicyResponse_httpStatus' - The response's http status code.
newCreateResourcePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateResourcePolicyResponse
newCreateResourcePolicyResponse pHttpStatus_ =
  CreateResourcePolicyResponse'
    { revisionId =
        Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current revision of the resource policy. Use the revision ID to make
-- sure that you are updating the most current version of a resource policy
-- when you add a policy statement to a resource, delete a resource, or
-- update a resource.
createResourcePolicyResponse_revisionId :: Lens.Lens' CreateResourcePolicyResponse (Prelude.Maybe Prelude.Text)
createResourcePolicyResponse_revisionId = Lens.lens (\CreateResourcePolicyResponse' {revisionId} -> revisionId) (\s@CreateResourcePolicyResponse' {} a -> s {revisionId = a} :: CreateResourcePolicyResponse)

-- | The Amazon Resource Name (ARN) of the bot or bot alias that the resource
-- policy was attached to.
createResourcePolicyResponse_resourceArn :: Lens.Lens' CreateResourcePolicyResponse (Prelude.Maybe Prelude.Text)
createResourcePolicyResponse_resourceArn = Lens.lens (\CreateResourcePolicyResponse' {resourceArn} -> resourceArn) (\s@CreateResourcePolicyResponse' {} a -> s {resourceArn = a} :: CreateResourcePolicyResponse)

-- | The response's http status code.
createResourcePolicyResponse_httpStatus :: Lens.Lens' CreateResourcePolicyResponse Prelude.Int
createResourcePolicyResponse_httpStatus = Lens.lens (\CreateResourcePolicyResponse' {httpStatus} -> httpStatus) (\s@CreateResourcePolicyResponse' {} a -> s {httpStatus = a} :: CreateResourcePolicyResponse)

instance Prelude.NFData CreateResourcePolicyResponse where
  rnf CreateResourcePolicyResponse' {..} =
    Prelude.rnf revisionId
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf httpStatus

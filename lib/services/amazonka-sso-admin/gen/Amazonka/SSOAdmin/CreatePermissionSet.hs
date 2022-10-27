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
-- Module      : Amazonka.SSOAdmin.CreatePermissionSet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a permission set within a specified IAM Identity Center
-- instance.
--
-- To grant users and groups access to AWS account resources, use
-- @ CreateAccountAssignment @.
module Amazonka.SSOAdmin.CreatePermissionSet
  ( -- * Creating a Request
    CreatePermissionSet (..),
    newCreatePermissionSet,

    -- * Request Lenses
    createPermissionSet_tags,
    createPermissionSet_description,
    createPermissionSet_sessionDuration,
    createPermissionSet_relayState,
    createPermissionSet_name,
    createPermissionSet_instanceArn,

    -- * Destructuring the Response
    CreatePermissionSetResponse (..),
    newCreatePermissionSetResponse,

    -- * Response Lenses
    createPermissionSetResponse_permissionSet,
    createPermissionSetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSOAdmin.Types

-- | /See:/ 'newCreatePermissionSet' smart constructor.
data CreatePermissionSet = CreatePermissionSet'
  { -- | The tags to attach to the new PermissionSet.
    tags :: Prelude.Maybe [Tag],
    -- | The description of the PermissionSet.
    description :: Prelude.Maybe Prelude.Text,
    -- | The length of time that the application user sessions are valid in the
    -- ISO-8601 standard.
    sessionDuration :: Prelude.Maybe Prelude.Text,
    -- | Used to redirect users within the application during the federation
    -- authentication process.
    relayState :: Prelude.Maybe Prelude.Text,
    -- | The name of the PermissionSet.
    name :: Prelude.Text,
    -- | The ARN of the IAM Identity Center instance under which the operation
    -- will be executed. For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
    -- in the /AWS General Reference/.
    instanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createPermissionSet_tags' - The tags to attach to the new PermissionSet.
--
-- 'description', 'createPermissionSet_description' - The description of the PermissionSet.
--
-- 'sessionDuration', 'createPermissionSet_sessionDuration' - The length of time that the application user sessions are valid in the
-- ISO-8601 standard.
--
-- 'relayState', 'createPermissionSet_relayState' - Used to redirect users within the application during the federation
-- authentication process.
--
-- 'name', 'createPermissionSet_name' - The name of the PermissionSet.
--
-- 'instanceArn', 'createPermissionSet_instanceArn' - The ARN of the IAM Identity Center instance under which the operation
-- will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
-- in the /AWS General Reference/.
newCreatePermissionSet ::
  -- | 'name'
  Prelude.Text ->
  -- | 'instanceArn'
  Prelude.Text ->
  CreatePermissionSet
newCreatePermissionSet pName_ pInstanceArn_ =
  CreatePermissionSet'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      sessionDuration = Prelude.Nothing,
      relayState = Prelude.Nothing,
      name = pName_,
      instanceArn = pInstanceArn_
    }

-- | The tags to attach to the new PermissionSet.
createPermissionSet_tags :: Lens.Lens' CreatePermissionSet (Prelude.Maybe [Tag])
createPermissionSet_tags = Lens.lens (\CreatePermissionSet' {tags} -> tags) (\s@CreatePermissionSet' {} a -> s {tags = a} :: CreatePermissionSet) Prelude.. Lens.mapping Lens.coerced

-- | The description of the PermissionSet.
createPermissionSet_description :: Lens.Lens' CreatePermissionSet (Prelude.Maybe Prelude.Text)
createPermissionSet_description = Lens.lens (\CreatePermissionSet' {description} -> description) (\s@CreatePermissionSet' {} a -> s {description = a} :: CreatePermissionSet)

-- | The length of time that the application user sessions are valid in the
-- ISO-8601 standard.
createPermissionSet_sessionDuration :: Lens.Lens' CreatePermissionSet (Prelude.Maybe Prelude.Text)
createPermissionSet_sessionDuration = Lens.lens (\CreatePermissionSet' {sessionDuration} -> sessionDuration) (\s@CreatePermissionSet' {} a -> s {sessionDuration = a} :: CreatePermissionSet)

-- | Used to redirect users within the application during the federation
-- authentication process.
createPermissionSet_relayState :: Lens.Lens' CreatePermissionSet (Prelude.Maybe Prelude.Text)
createPermissionSet_relayState = Lens.lens (\CreatePermissionSet' {relayState} -> relayState) (\s@CreatePermissionSet' {} a -> s {relayState = a} :: CreatePermissionSet)

-- | The name of the PermissionSet.
createPermissionSet_name :: Lens.Lens' CreatePermissionSet Prelude.Text
createPermissionSet_name = Lens.lens (\CreatePermissionSet' {name} -> name) (\s@CreatePermissionSet' {} a -> s {name = a} :: CreatePermissionSet)

-- | The ARN of the IAM Identity Center instance under which the operation
-- will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>
-- in the /AWS General Reference/.
createPermissionSet_instanceArn :: Lens.Lens' CreatePermissionSet Prelude.Text
createPermissionSet_instanceArn = Lens.lens (\CreatePermissionSet' {instanceArn} -> instanceArn) (\s@CreatePermissionSet' {} a -> s {instanceArn = a} :: CreatePermissionSet)

instance Core.AWSRequest CreatePermissionSet where
  type
    AWSResponse CreatePermissionSet =
      CreatePermissionSetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePermissionSetResponse'
            Prelude.<$> (x Core..?> "PermissionSet")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreatePermissionSet where
  hashWithSalt _salt CreatePermissionSet' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` sessionDuration
      `Prelude.hashWithSalt` relayState
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` instanceArn

instance Prelude.NFData CreatePermissionSet where
  rnf CreatePermissionSet' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf sessionDuration
      `Prelude.seq` Prelude.rnf relayState
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf instanceArn

instance Core.ToHeaders CreatePermissionSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.CreatePermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePermissionSet where
  toJSON CreatePermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Description" Core..=) Prelude.<$> description,
            ("SessionDuration" Core..=)
              Prelude.<$> sessionDuration,
            ("RelayState" Core..=) Prelude.<$> relayState,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("InstanceArn" Core..= instanceArn)
          ]
      )

instance Core.ToPath CreatePermissionSet where
  toPath = Prelude.const "/"

instance Core.ToQuery CreatePermissionSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreatePermissionSetResponse' smart constructor.
data CreatePermissionSetResponse = CreatePermissionSetResponse'
  { -- | Defines the level of access on an AWS account.
    permissionSet :: Prelude.Maybe PermissionSet,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionSet', 'createPermissionSetResponse_permissionSet' - Defines the level of access on an AWS account.
--
-- 'httpStatus', 'createPermissionSetResponse_httpStatus' - The response's http status code.
newCreatePermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreatePermissionSetResponse
newCreatePermissionSetResponse pHttpStatus_ =
  CreatePermissionSetResponse'
    { permissionSet =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Defines the level of access on an AWS account.
createPermissionSetResponse_permissionSet :: Lens.Lens' CreatePermissionSetResponse (Prelude.Maybe PermissionSet)
createPermissionSetResponse_permissionSet = Lens.lens (\CreatePermissionSetResponse' {permissionSet} -> permissionSet) (\s@CreatePermissionSetResponse' {} a -> s {permissionSet = a} :: CreatePermissionSetResponse)

-- | The response's http status code.
createPermissionSetResponse_httpStatus :: Lens.Lens' CreatePermissionSetResponse Prelude.Int
createPermissionSetResponse_httpStatus = Lens.lens (\CreatePermissionSetResponse' {httpStatus} -> httpStatus) (\s@CreatePermissionSetResponse' {} a -> s {httpStatus = a} :: CreatePermissionSetResponse)

instance Prelude.NFData CreatePermissionSetResponse where
  rnf CreatePermissionSetResponse' {..} =
    Prelude.rnf permissionSet
      `Prelude.seq` Prelude.rnf httpStatus

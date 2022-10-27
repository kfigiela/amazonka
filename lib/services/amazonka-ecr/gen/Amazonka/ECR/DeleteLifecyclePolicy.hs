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
-- Module      : Amazonka.ECR.DeleteLifecyclePolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the lifecycle policy associated with the specified repository.
module Amazonka.ECR.DeleteLifecyclePolicy
  ( -- * Creating a Request
    DeleteLifecyclePolicy (..),
    newDeleteLifecyclePolicy,

    -- * Request Lenses
    deleteLifecyclePolicy_registryId,
    deleteLifecyclePolicy_repositoryName,

    -- * Destructuring the Response
    DeleteLifecyclePolicyResponse (..),
    newDeleteLifecyclePolicyResponse,

    -- * Response Lenses
    deleteLifecyclePolicyResponse_lastEvaluatedAt,
    deleteLifecyclePolicyResponse_repositoryName,
    deleteLifecyclePolicyResponse_registryId,
    deleteLifecyclePolicyResponse_lifecyclePolicyText,
    deleteLifecyclePolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ECR.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLifecyclePolicy' smart constructor.
data DeleteLifecyclePolicy = DeleteLifecyclePolicy'
  { -- | The Amazon Web Services account ID associated with the registry that
    -- contains the repository. If you do not specify a registry, the default
    -- registry is assumed.
    registryId :: Prelude.Maybe Prelude.Text,
    -- | The name of the repository.
    repositoryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLifecyclePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryId', 'deleteLifecyclePolicy_registryId' - The Amazon Web Services account ID associated with the registry that
-- contains the repository. If you do not specify a registry, the default
-- registry is assumed.
--
-- 'repositoryName', 'deleteLifecyclePolicy_repositoryName' - The name of the repository.
newDeleteLifecyclePolicy ::
  -- | 'repositoryName'
  Prelude.Text ->
  DeleteLifecyclePolicy
newDeleteLifecyclePolicy pRepositoryName_ =
  DeleteLifecyclePolicy'
    { registryId =
        Prelude.Nothing,
      repositoryName = pRepositoryName_
    }

-- | The Amazon Web Services account ID associated with the registry that
-- contains the repository. If you do not specify a registry, the default
-- registry is assumed.
deleteLifecyclePolicy_registryId :: Lens.Lens' DeleteLifecyclePolicy (Prelude.Maybe Prelude.Text)
deleteLifecyclePolicy_registryId = Lens.lens (\DeleteLifecyclePolicy' {registryId} -> registryId) (\s@DeleteLifecyclePolicy' {} a -> s {registryId = a} :: DeleteLifecyclePolicy)

-- | The name of the repository.
deleteLifecyclePolicy_repositoryName :: Lens.Lens' DeleteLifecyclePolicy Prelude.Text
deleteLifecyclePolicy_repositoryName = Lens.lens (\DeleteLifecyclePolicy' {repositoryName} -> repositoryName) (\s@DeleteLifecyclePolicy' {} a -> s {repositoryName = a} :: DeleteLifecyclePolicy)

instance Core.AWSRequest DeleteLifecyclePolicy where
  type
    AWSResponse DeleteLifecyclePolicy =
      DeleteLifecyclePolicyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteLifecyclePolicyResponse'
            Prelude.<$> (x Core..?> "lastEvaluatedAt")
            Prelude.<*> (x Core..?> "repositoryName")
            Prelude.<*> (x Core..?> "registryId")
            Prelude.<*> (x Core..?> "lifecyclePolicyText")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLifecyclePolicy where
  hashWithSalt _salt DeleteLifecyclePolicy' {..} =
    _salt `Prelude.hashWithSalt` registryId
      `Prelude.hashWithSalt` repositoryName

instance Prelude.NFData DeleteLifecyclePolicy where
  rnf DeleteLifecyclePolicy' {..} =
    Prelude.rnf registryId
      `Prelude.seq` Prelude.rnf repositoryName

instance Core.ToHeaders DeleteLifecyclePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerRegistry_V20150921.DeleteLifecyclePolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteLifecyclePolicy where
  toJSON DeleteLifecyclePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("registryId" Core..=) Prelude.<$> registryId,
            Prelude.Just
              ("repositoryName" Core..= repositoryName)
          ]
      )

instance Core.ToPath DeleteLifecyclePolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteLifecyclePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLifecyclePolicyResponse' smart constructor.
data DeleteLifecyclePolicyResponse = DeleteLifecyclePolicyResponse'
  { -- | The time stamp of the last time that the lifecycle policy was run.
    lastEvaluatedAt :: Prelude.Maybe Core.POSIX,
    -- | The repository name associated with the request.
    repositoryName :: Prelude.Maybe Prelude.Text,
    -- | The registry ID associated with the request.
    registryId :: Prelude.Maybe Prelude.Text,
    -- | The JSON lifecycle policy text.
    lifecyclePolicyText :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLifecyclePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastEvaluatedAt', 'deleteLifecyclePolicyResponse_lastEvaluatedAt' - The time stamp of the last time that the lifecycle policy was run.
--
-- 'repositoryName', 'deleteLifecyclePolicyResponse_repositoryName' - The repository name associated with the request.
--
-- 'registryId', 'deleteLifecyclePolicyResponse_registryId' - The registry ID associated with the request.
--
-- 'lifecyclePolicyText', 'deleteLifecyclePolicyResponse_lifecyclePolicyText' - The JSON lifecycle policy text.
--
-- 'httpStatus', 'deleteLifecyclePolicyResponse_httpStatus' - The response's http status code.
newDeleteLifecyclePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse pHttpStatus_ =
  DeleteLifecyclePolicyResponse'
    { lastEvaluatedAt =
        Prelude.Nothing,
      repositoryName = Prelude.Nothing,
      registryId = Prelude.Nothing,
      lifecyclePolicyText = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time stamp of the last time that the lifecycle policy was run.
deleteLifecyclePolicyResponse_lastEvaluatedAt :: Lens.Lens' DeleteLifecyclePolicyResponse (Prelude.Maybe Prelude.UTCTime)
deleteLifecyclePolicyResponse_lastEvaluatedAt = Lens.lens (\DeleteLifecyclePolicyResponse' {lastEvaluatedAt} -> lastEvaluatedAt) (\s@DeleteLifecyclePolicyResponse' {} a -> s {lastEvaluatedAt = a} :: DeleteLifecyclePolicyResponse) Prelude.. Lens.mapping Core._Time

-- | The repository name associated with the request.
deleteLifecyclePolicyResponse_repositoryName :: Lens.Lens' DeleteLifecyclePolicyResponse (Prelude.Maybe Prelude.Text)
deleteLifecyclePolicyResponse_repositoryName = Lens.lens (\DeleteLifecyclePolicyResponse' {repositoryName} -> repositoryName) (\s@DeleteLifecyclePolicyResponse' {} a -> s {repositoryName = a} :: DeleteLifecyclePolicyResponse)

-- | The registry ID associated with the request.
deleteLifecyclePolicyResponse_registryId :: Lens.Lens' DeleteLifecyclePolicyResponse (Prelude.Maybe Prelude.Text)
deleteLifecyclePolicyResponse_registryId = Lens.lens (\DeleteLifecyclePolicyResponse' {registryId} -> registryId) (\s@DeleteLifecyclePolicyResponse' {} a -> s {registryId = a} :: DeleteLifecyclePolicyResponse)

-- | The JSON lifecycle policy text.
deleteLifecyclePolicyResponse_lifecyclePolicyText :: Lens.Lens' DeleteLifecyclePolicyResponse (Prelude.Maybe Prelude.Text)
deleteLifecyclePolicyResponse_lifecyclePolicyText = Lens.lens (\DeleteLifecyclePolicyResponse' {lifecyclePolicyText} -> lifecyclePolicyText) (\s@DeleteLifecyclePolicyResponse' {} a -> s {lifecyclePolicyText = a} :: DeleteLifecyclePolicyResponse)

-- | The response's http status code.
deleteLifecyclePolicyResponse_httpStatus :: Lens.Lens' DeleteLifecyclePolicyResponse Prelude.Int
deleteLifecyclePolicyResponse_httpStatus = Lens.lens (\DeleteLifecyclePolicyResponse' {httpStatus} -> httpStatus) (\s@DeleteLifecyclePolicyResponse' {} a -> s {httpStatus = a} :: DeleteLifecyclePolicyResponse)

instance Prelude.NFData DeleteLifecyclePolicyResponse where
  rnf DeleteLifecyclePolicyResponse' {..} =
    Prelude.rnf lastEvaluatedAt
      `Prelude.seq` Prelude.rnf repositoryName
      `Prelude.seq` Prelude.rnf registryId
      `Prelude.seq` Prelude.rnf lifecyclePolicyText
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.ImageBuilder.DeleteContainerRecipe
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a container recipe.
module Amazonka.ImageBuilder.DeleteContainerRecipe
  ( -- * Creating a Request
    DeleteContainerRecipe (..),
    newDeleteContainerRecipe,

    -- * Request Lenses
    deleteContainerRecipe_containerRecipeArn,

    -- * Destructuring the Response
    DeleteContainerRecipeResponse (..),
    newDeleteContainerRecipeResponse,

    -- * Response Lenses
    deleteContainerRecipeResponse_requestId,
    deleteContainerRecipeResponse_containerRecipeArn,
    deleteContainerRecipeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteContainerRecipe' smart constructor.
data DeleteContainerRecipe = DeleteContainerRecipe'
  { -- | The Amazon Resource Name (ARN) of the container recipe to delete.
    containerRecipeArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteContainerRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerRecipeArn', 'deleteContainerRecipe_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe to delete.
newDeleteContainerRecipe ::
  -- | 'containerRecipeArn'
  Prelude.Text ->
  DeleteContainerRecipe
newDeleteContainerRecipe pContainerRecipeArn_ =
  DeleteContainerRecipe'
    { containerRecipeArn =
        pContainerRecipeArn_
    }

-- | The Amazon Resource Name (ARN) of the container recipe to delete.
deleteContainerRecipe_containerRecipeArn :: Lens.Lens' DeleteContainerRecipe Prelude.Text
deleteContainerRecipe_containerRecipeArn = Lens.lens (\DeleteContainerRecipe' {containerRecipeArn} -> containerRecipeArn) (\s@DeleteContainerRecipe' {} a -> s {containerRecipeArn = a} :: DeleteContainerRecipe)

instance Core.AWSRequest DeleteContainerRecipe where
  type
    AWSResponse DeleteContainerRecipe =
      DeleteContainerRecipeResponse
  service _ = defaultService
  request srv = Request.delete srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteContainerRecipeResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "containerRecipeArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteContainerRecipe where
  hashWithSalt _salt DeleteContainerRecipe' {..} =
    _salt `Prelude.hashWithSalt` containerRecipeArn

instance Prelude.NFData DeleteContainerRecipe where
  rnf DeleteContainerRecipe' {..} =
    Prelude.rnf containerRecipeArn

instance Core.ToHeaders DeleteContainerRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteContainerRecipe where
  toPath = Prelude.const "/DeleteContainerRecipe"

instance Core.ToQuery DeleteContainerRecipe where
  toQuery DeleteContainerRecipe' {..} =
    Prelude.mconcat
      ["containerRecipeArn" Core.=: containerRecipeArn]

-- | /See:/ 'newDeleteContainerRecipeResponse' smart constructor.
data DeleteContainerRecipeResponse = DeleteContainerRecipeResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the container recipe that was deleted.
    containerRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteContainerRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteContainerRecipeResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'containerRecipeArn', 'deleteContainerRecipeResponse_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe that was deleted.
--
-- 'httpStatus', 'deleteContainerRecipeResponse_httpStatus' - The response's http status code.
newDeleteContainerRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteContainerRecipeResponse
newDeleteContainerRecipeResponse pHttpStatus_ =
  DeleteContainerRecipeResponse'
    { requestId =
        Prelude.Nothing,
      containerRecipeArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
deleteContainerRecipeResponse_requestId :: Lens.Lens' DeleteContainerRecipeResponse (Prelude.Maybe Prelude.Text)
deleteContainerRecipeResponse_requestId = Lens.lens (\DeleteContainerRecipeResponse' {requestId} -> requestId) (\s@DeleteContainerRecipeResponse' {} a -> s {requestId = a} :: DeleteContainerRecipeResponse)

-- | The Amazon Resource Name (ARN) of the container recipe that was deleted.
deleteContainerRecipeResponse_containerRecipeArn :: Lens.Lens' DeleteContainerRecipeResponse (Prelude.Maybe Prelude.Text)
deleteContainerRecipeResponse_containerRecipeArn = Lens.lens (\DeleteContainerRecipeResponse' {containerRecipeArn} -> containerRecipeArn) (\s@DeleteContainerRecipeResponse' {} a -> s {containerRecipeArn = a} :: DeleteContainerRecipeResponse)

-- | The response's http status code.
deleteContainerRecipeResponse_httpStatus :: Lens.Lens' DeleteContainerRecipeResponse Prelude.Int
deleteContainerRecipeResponse_httpStatus = Lens.lens (\DeleteContainerRecipeResponse' {httpStatus} -> httpStatus) (\s@DeleteContainerRecipeResponse' {} a -> s {httpStatus = a} :: DeleteContainerRecipeResponse)

instance Prelude.NFData DeleteContainerRecipeResponse where
  rnf DeleteContainerRecipeResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf containerRecipeArn
      `Prelude.seq` Prelude.rnf httpStatus

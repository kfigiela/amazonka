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
-- Module      : Amazonka.ImageBuilder.GetContainerRecipe
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a container recipe.
module Amazonka.ImageBuilder.GetContainerRecipe
  ( -- * Creating a Request
    GetContainerRecipe (..),
    newGetContainerRecipe,

    -- * Request Lenses
    getContainerRecipe_containerRecipeArn,

    -- * Destructuring the Response
    GetContainerRecipeResponse (..),
    newGetContainerRecipeResponse,

    -- * Response Lenses
    getContainerRecipeResponse_requestId,
    getContainerRecipeResponse_containerRecipe,
    getContainerRecipeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetContainerRecipe' smart constructor.
data GetContainerRecipe = GetContainerRecipe'
  { -- | The Amazon Resource Name (ARN) of the container recipe to retrieve.
    containerRecipeArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContainerRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerRecipeArn', 'getContainerRecipe_containerRecipeArn' - The Amazon Resource Name (ARN) of the container recipe to retrieve.
newGetContainerRecipe ::
  -- | 'containerRecipeArn'
  Prelude.Text ->
  GetContainerRecipe
newGetContainerRecipe pContainerRecipeArn_ =
  GetContainerRecipe'
    { containerRecipeArn =
        pContainerRecipeArn_
    }

-- | The Amazon Resource Name (ARN) of the container recipe to retrieve.
getContainerRecipe_containerRecipeArn :: Lens.Lens' GetContainerRecipe Prelude.Text
getContainerRecipe_containerRecipeArn = Lens.lens (\GetContainerRecipe' {containerRecipeArn} -> containerRecipeArn) (\s@GetContainerRecipe' {} a -> s {containerRecipeArn = a} :: GetContainerRecipe)

instance Core.AWSRequest GetContainerRecipe where
  type
    AWSResponse GetContainerRecipe =
      GetContainerRecipeResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContainerRecipeResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "containerRecipe")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetContainerRecipe where
  hashWithSalt _salt GetContainerRecipe' {..} =
    _salt `Prelude.hashWithSalt` containerRecipeArn

instance Prelude.NFData GetContainerRecipe where
  rnf GetContainerRecipe' {..} =
    Prelude.rnf containerRecipeArn

instance Core.ToHeaders GetContainerRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetContainerRecipe where
  toPath = Prelude.const "/GetContainerRecipe"

instance Core.ToQuery GetContainerRecipe where
  toQuery GetContainerRecipe' {..} =
    Prelude.mconcat
      ["containerRecipeArn" Core.=: containerRecipeArn]

-- | /See:/ 'newGetContainerRecipeResponse' smart constructor.
data GetContainerRecipeResponse = GetContainerRecipeResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The container recipe object that is returned.
    containerRecipe :: Prelude.Maybe ContainerRecipe,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContainerRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'getContainerRecipeResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'containerRecipe', 'getContainerRecipeResponse_containerRecipe' - The container recipe object that is returned.
--
-- 'httpStatus', 'getContainerRecipeResponse_httpStatus' - The response's http status code.
newGetContainerRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetContainerRecipeResponse
newGetContainerRecipeResponse pHttpStatus_ =
  GetContainerRecipeResponse'
    { requestId =
        Prelude.Nothing,
      containerRecipe = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
getContainerRecipeResponse_requestId :: Lens.Lens' GetContainerRecipeResponse (Prelude.Maybe Prelude.Text)
getContainerRecipeResponse_requestId = Lens.lens (\GetContainerRecipeResponse' {requestId} -> requestId) (\s@GetContainerRecipeResponse' {} a -> s {requestId = a} :: GetContainerRecipeResponse)

-- | The container recipe object that is returned.
getContainerRecipeResponse_containerRecipe :: Lens.Lens' GetContainerRecipeResponse (Prelude.Maybe ContainerRecipe)
getContainerRecipeResponse_containerRecipe = Lens.lens (\GetContainerRecipeResponse' {containerRecipe} -> containerRecipe) (\s@GetContainerRecipeResponse' {} a -> s {containerRecipe = a} :: GetContainerRecipeResponse)

-- | The response's http status code.
getContainerRecipeResponse_httpStatus :: Lens.Lens' GetContainerRecipeResponse Prelude.Int
getContainerRecipeResponse_httpStatus = Lens.lens (\GetContainerRecipeResponse' {httpStatus} -> httpStatus) (\s@GetContainerRecipeResponse' {} a -> s {httpStatus = a} :: GetContainerRecipeResponse)

instance Prelude.NFData GetContainerRecipeResponse where
  rnf GetContainerRecipeResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf containerRecipe
      `Prelude.seq` Prelude.rnf httpStatus

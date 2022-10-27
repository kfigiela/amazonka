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
-- Module      : Amazonka.IotTwinMaker.UpdateScene
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a scene.
module Amazonka.IotTwinMaker.UpdateScene
  ( -- * Creating a Request
    UpdateScene (..),
    newUpdateScene,

    -- * Request Lenses
    updateScene_contentLocation,
    updateScene_description,
    updateScene_capabilities,
    updateScene_sceneId,
    updateScene_workspaceId,

    -- * Destructuring the Response
    UpdateSceneResponse (..),
    newUpdateSceneResponse,

    -- * Response Lenses
    updateSceneResponse_httpStatus,
    updateSceneResponse_updateDateTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateScene' smart constructor.
data UpdateScene = UpdateScene'
  { -- | The relative path that specifies the location of the content definition
    -- file.
    contentLocation :: Prelude.Maybe Prelude.Text,
    -- | The description of this scene.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of capabilities that the scene uses to render.
    capabilities :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the scene.
    sceneId :: Prelude.Text,
    -- | The ID of the workspace that contains the scene.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateScene' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentLocation', 'updateScene_contentLocation' - The relative path that specifies the location of the content definition
-- file.
--
-- 'description', 'updateScene_description' - The description of this scene.
--
-- 'capabilities', 'updateScene_capabilities' - A list of capabilities that the scene uses to render.
--
-- 'sceneId', 'updateScene_sceneId' - The ID of the scene.
--
-- 'workspaceId', 'updateScene_workspaceId' - The ID of the workspace that contains the scene.
newUpdateScene ::
  -- | 'sceneId'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  UpdateScene
newUpdateScene pSceneId_ pWorkspaceId_ =
  UpdateScene'
    { contentLocation = Prelude.Nothing,
      description = Prelude.Nothing,
      capabilities = Prelude.Nothing,
      sceneId = pSceneId_,
      workspaceId = pWorkspaceId_
    }

-- | The relative path that specifies the location of the content definition
-- file.
updateScene_contentLocation :: Lens.Lens' UpdateScene (Prelude.Maybe Prelude.Text)
updateScene_contentLocation = Lens.lens (\UpdateScene' {contentLocation} -> contentLocation) (\s@UpdateScene' {} a -> s {contentLocation = a} :: UpdateScene)

-- | The description of this scene.
updateScene_description :: Lens.Lens' UpdateScene (Prelude.Maybe Prelude.Text)
updateScene_description = Lens.lens (\UpdateScene' {description} -> description) (\s@UpdateScene' {} a -> s {description = a} :: UpdateScene)

-- | A list of capabilities that the scene uses to render.
updateScene_capabilities :: Lens.Lens' UpdateScene (Prelude.Maybe [Prelude.Text])
updateScene_capabilities = Lens.lens (\UpdateScene' {capabilities} -> capabilities) (\s@UpdateScene' {} a -> s {capabilities = a} :: UpdateScene) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the scene.
updateScene_sceneId :: Lens.Lens' UpdateScene Prelude.Text
updateScene_sceneId = Lens.lens (\UpdateScene' {sceneId} -> sceneId) (\s@UpdateScene' {} a -> s {sceneId = a} :: UpdateScene)

-- | The ID of the workspace that contains the scene.
updateScene_workspaceId :: Lens.Lens' UpdateScene Prelude.Text
updateScene_workspaceId = Lens.lens (\UpdateScene' {workspaceId} -> workspaceId) (\s@UpdateScene' {} a -> s {workspaceId = a} :: UpdateScene)

instance Core.AWSRequest UpdateScene where
  type AWSResponse UpdateScene = UpdateSceneResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateSceneResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "updateDateTime")
      )

instance Prelude.Hashable UpdateScene where
  hashWithSalt _salt UpdateScene' {..} =
    _salt `Prelude.hashWithSalt` contentLocation
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` capabilities
      `Prelude.hashWithSalt` sceneId
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData UpdateScene where
  rnf UpdateScene' {..} =
    Prelude.rnf contentLocation
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf capabilities
      `Prelude.seq` Prelude.rnf sceneId
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders UpdateScene where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateScene where
  toJSON UpdateScene' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("contentLocation" Core..=)
              Prelude.<$> contentLocation,
            ("description" Core..=) Prelude.<$> description,
            ("capabilities" Core..=) Prelude.<$> capabilities
          ]
      )

instance Core.ToPath UpdateScene where
  toPath UpdateScene' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/scenes/",
        Core.toBS sceneId
      ]

instance Core.ToQuery UpdateScene where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSceneResponse' smart constructor.
data UpdateSceneResponse = UpdateSceneResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The date and time when the scene was last updated.
    updateDateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSceneResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateSceneResponse_httpStatus' - The response's http status code.
--
-- 'updateDateTime', 'updateSceneResponse_updateDateTime' - The date and time when the scene was last updated.
newUpdateSceneResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'updateDateTime'
  Prelude.UTCTime ->
  UpdateSceneResponse
newUpdateSceneResponse pHttpStatus_ pUpdateDateTime_ =
  UpdateSceneResponse'
    { httpStatus = pHttpStatus_,
      updateDateTime = Core._Time Lens.# pUpdateDateTime_
    }

-- | The response's http status code.
updateSceneResponse_httpStatus :: Lens.Lens' UpdateSceneResponse Prelude.Int
updateSceneResponse_httpStatus = Lens.lens (\UpdateSceneResponse' {httpStatus} -> httpStatus) (\s@UpdateSceneResponse' {} a -> s {httpStatus = a} :: UpdateSceneResponse)

-- | The date and time when the scene was last updated.
updateSceneResponse_updateDateTime :: Lens.Lens' UpdateSceneResponse Prelude.UTCTime
updateSceneResponse_updateDateTime = Lens.lens (\UpdateSceneResponse' {updateDateTime} -> updateDateTime) (\s@UpdateSceneResponse' {} a -> s {updateDateTime = a} :: UpdateSceneResponse) Prelude.. Core._Time

instance Prelude.NFData UpdateSceneResponse where
  rnf UpdateSceneResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf updateDateTime

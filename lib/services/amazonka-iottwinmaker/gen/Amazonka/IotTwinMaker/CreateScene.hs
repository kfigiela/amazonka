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
-- Module      : Amazonka.IotTwinMaker.CreateScene
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a scene.
module Amazonka.IotTwinMaker.CreateScene
  ( -- * Creating a Request
    CreateScene (..),
    newCreateScene,

    -- * Request Lenses
    createScene_tags,
    createScene_description,
    createScene_capabilities,
    createScene_contentLocation,
    createScene_sceneId,
    createScene_workspaceId,

    -- * Destructuring the Response
    CreateSceneResponse (..),
    newCreateSceneResponse,

    -- * Response Lenses
    createSceneResponse_httpStatus,
    createSceneResponse_arn,
    createSceneResponse_creationDateTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateScene' smart constructor.
data CreateScene = CreateScene'
  { -- | Metadata that you can use to manage the scene.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The description for this scene.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of capabilities that the scene uses to render itself.
    capabilities :: Prelude.Maybe [Prelude.Text],
    -- | The relative path that specifies the location of the content definition
    -- file.
    contentLocation :: Prelude.Text,
    -- | The ID of the scene.
    sceneId :: Prelude.Text,
    -- | The ID of the workspace that contains the scene.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateScene' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createScene_tags' - Metadata that you can use to manage the scene.
--
-- 'description', 'createScene_description' - The description for this scene.
--
-- 'capabilities', 'createScene_capabilities' - A list of capabilities that the scene uses to render itself.
--
-- 'contentLocation', 'createScene_contentLocation' - The relative path that specifies the location of the content definition
-- file.
--
-- 'sceneId', 'createScene_sceneId' - The ID of the scene.
--
-- 'workspaceId', 'createScene_workspaceId' - The ID of the workspace that contains the scene.
newCreateScene ::
  -- | 'contentLocation'
  Prelude.Text ->
  -- | 'sceneId'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  CreateScene
newCreateScene
  pContentLocation_
  pSceneId_
  pWorkspaceId_ =
    CreateScene'
      { tags = Prelude.Nothing,
        description = Prelude.Nothing,
        capabilities = Prelude.Nothing,
        contentLocation = pContentLocation_,
        sceneId = pSceneId_,
        workspaceId = pWorkspaceId_
      }

-- | Metadata that you can use to manage the scene.
createScene_tags :: Lens.Lens' CreateScene (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createScene_tags = Lens.lens (\CreateScene' {tags} -> tags) (\s@CreateScene' {} a -> s {tags = a} :: CreateScene) Prelude.. Lens.mapping Lens.coerced

-- | The description for this scene.
createScene_description :: Lens.Lens' CreateScene (Prelude.Maybe Prelude.Text)
createScene_description = Lens.lens (\CreateScene' {description} -> description) (\s@CreateScene' {} a -> s {description = a} :: CreateScene)

-- | A list of capabilities that the scene uses to render itself.
createScene_capabilities :: Lens.Lens' CreateScene (Prelude.Maybe [Prelude.Text])
createScene_capabilities = Lens.lens (\CreateScene' {capabilities} -> capabilities) (\s@CreateScene' {} a -> s {capabilities = a} :: CreateScene) Prelude.. Lens.mapping Lens.coerced

-- | The relative path that specifies the location of the content definition
-- file.
createScene_contentLocation :: Lens.Lens' CreateScene Prelude.Text
createScene_contentLocation = Lens.lens (\CreateScene' {contentLocation} -> contentLocation) (\s@CreateScene' {} a -> s {contentLocation = a} :: CreateScene)

-- | The ID of the scene.
createScene_sceneId :: Lens.Lens' CreateScene Prelude.Text
createScene_sceneId = Lens.lens (\CreateScene' {sceneId} -> sceneId) (\s@CreateScene' {} a -> s {sceneId = a} :: CreateScene)

-- | The ID of the workspace that contains the scene.
createScene_workspaceId :: Lens.Lens' CreateScene Prelude.Text
createScene_workspaceId = Lens.lens (\CreateScene' {workspaceId} -> workspaceId) (\s@CreateScene' {} a -> s {workspaceId = a} :: CreateScene)

instance Core.AWSRequest CreateScene where
  type AWSResponse CreateScene = CreateSceneResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSceneResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "arn")
            Prelude.<*> (x Core..:> "creationDateTime")
      )

instance Prelude.Hashable CreateScene where
  hashWithSalt _salt CreateScene' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` capabilities
      `Prelude.hashWithSalt` contentLocation
      `Prelude.hashWithSalt` sceneId
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData CreateScene where
  rnf CreateScene' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf capabilities
      `Prelude.seq` Prelude.rnf contentLocation
      `Prelude.seq` Prelude.rnf sceneId
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders CreateScene where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateScene where
  toJSON CreateScene' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            ("capabilities" Core..=) Prelude.<$> capabilities,
            Prelude.Just
              ("contentLocation" Core..= contentLocation),
            Prelude.Just ("sceneId" Core..= sceneId)
          ]
      )

instance Core.ToPath CreateScene where
  toPath CreateScene' {..} =
    Prelude.mconcat
      ["/workspaces/", Core.toBS workspaceId, "/scenes"]

instance Core.ToQuery CreateScene where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSceneResponse' smart constructor.
data CreateSceneResponse = CreateSceneResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the scene.
    arn :: Prelude.Text,
    -- | The date and time when the scene was created.
    creationDateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSceneResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createSceneResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'createSceneResponse_arn' - The ARN of the scene.
--
-- 'creationDateTime', 'createSceneResponse_creationDateTime' - The date and time when the scene was created.
newCreateSceneResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'creationDateTime'
  Prelude.UTCTime ->
  CreateSceneResponse
newCreateSceneResponse
  pHttpStatus_
  pArn_
  pCreationDateTime_ =
    CreateSceneResponse'
      { httpStatus = pHttpStatus_,
        arn = pArn_,
        creationDateTime =
          Core._Time Lens.# pCreationDateTime_
      }

-- | The response's http status code.
createSceneResponse_httpStatus :: Lens.Lens' CreateSceneResponse Prelude.Int
createSceneResponse_httpStatus = Lens.lens (\CreateSceneResponse' {httpStatus} -> httpStatus) (\s@CreateSceneResponse' {} a -> s {httpStatus = a} :: CreateSceneResponse)

-- | The ARN of the scene.
createSceneResponse_arn :: Lens.Lens' CreateSceneResponse Prelude.Text
createSceneResponse_arn = Lens.lens (\CreateSceneResponse' {arn} -> arn) (\s@CreateSceneResponse' {} a -> s {arn = a} :: CreateSceneResponse)

-- | The date and time when the scene was created.
createSceneResponse_creationDateTime :: Lens.Lens' CreateSceneResponse Prelude.UTCTime
createSceneResponse_creationDateTime = Lens.lens (\CreateSceneResponse' {creationDateTime} -> creationDateTime) (\s@CreateSceneResponse' {} a -> s {creationDateTime = a} :: CreateSceneResponse) Prelude.. Core._Time

instance Prelude.NFData CreateSceneResponse where
  rnf CreateSceneResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf creationDateTime

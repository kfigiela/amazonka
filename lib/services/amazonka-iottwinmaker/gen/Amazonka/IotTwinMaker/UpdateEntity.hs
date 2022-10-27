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
-- Module      : Amazonka.IotTwinMaker.UpdateEntity
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an entity.
module Amazonka.IotTwinMaker.UpdateEntity
  ( -- * Creating a Request
    UpdateEntity (..),
    newUpdateEntity,

    -- * Request Lenses
    updateEntity_entityName,
    updateEntity_componentUpdates,
    updateEntity_description,
    updateEntity_parentEntityUpdate,
    updateEntity_entityId,
    updateEntity_workspaceId,

    -- * Destructuring the Response
    UpdateEntityResponse (..),
    newUpdateEntityResponse,

    -- * Response Lenses
    updateEntityResponse_httpStatus,
    updateEntityResponse_state,
    updateEntityResponse_updateDateTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateEntity' smart constructor.
data UpdateEntity = UpdateEntity'
  { -- | The name of the entity.
    entityName :: Prelude.Maybe Prelude.Text,
    -- | An object that maps strings to the component updates in the request.
    -- Each string in the mapping must be unique to this object.
    componentUpdates :: Prelude.Maybe (Prelude.HashMap Prelude.Text ComponentUpdateRequest),
    -- | The description of the entity.
    description :: Prelude.Maybe Prelude.Text,
    -- | An object that describes the update request for a parent entity.
    parentEntityUpdate :: Prelude.Maybe ParentEntityUpdateRequest,
    -- | The ID of the entity.
    entityId :: Prelude.Text,
    -- | The ID of the workspace that contains the entity.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entityName', 'updateEntity_entityName' - The name of the entity.
--
-- 'componentUpdates', 'updateEntity_componentUpdates' - An object that maps strings to the component updates in the request.
-- Each string in the mapping must be unique to this object.
--
-- 'description', 'updateEntity_description' - The description of the entity.
--
-- 'parentEntityUpdate', 'updateEntity_parentEntityUpdate' - An object that describes the update request for a parent entity.
--
-- 'entityId', 'updateEntity_entityId' - The ID of the entity.
--
-- 'workspaceId', 'updateEntity_workspaceId' - The ID of the workspace that contains the entity.
newUpdateEntity ::
  -- | 'entityId'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  UpdateEntity
newUpdateEntity pEntityId_ pWorkspaceId_ =
  UpdateEntity'
    { entityName = Prelude.Nothing,
      componentUpdates = Prelude.Nothing,
      description = Prelude.Nothing,
      parentEntityUpdate = Prelude.Nothing,
      entityId = pEntityId_,
      workspaceId = pWorkspaceId_
    }

-- | The name of the entity.
updateEntity_entityName :: Lens.Lens' UpdateEntity (Prelude.Maybe Prelude.Text)
updateEntity_entityName = Lens.lens (\UpdateEntity' {entityName} -> entityName) (\s@UpdateEntity' {} a -> s {entityName = a} :: UpdateEntity)

-- | An object that maps strings to the component updates in the request.
-- Each string in the mapping must be unique to this object.
updateEntity_componentUpdates :: Lens.Lens' UpdateEntity (Prelude.Maybe (Prelude.HashMap Prelude.Text ComponentUpdateRequest))
updateEntity_componentUpdates = Lens.lens (\UpdateEntity' {componentUpdates} -> componentUpdates) (\s@UpdateEntity' {} a -> s {componentUpdates = a} :: UpdateEntity) Prelude.. Lens.mapping Lens.coerced

-- | The description of the entity.
updateEntity_description :: Lens.Lens' UpdateEntity (Prelude.Maybe Prelude.Text)
updateEntity_description = Lens.lens (\UpdateEntity' {description} -> description) (\s@UpdateEntity' {} a -> s {description = a} :: UpdateEntity)

-- | An object that describes the update request for a parent entity.
updateEntity_parentEntityUpdate :: Lens.Lens' UpdateEntity (Prelude.Maybe ParentEntityUpdateRequest)
updateEntity_parentEntityUpdate = Lens.lens (\UpdateEntity' {parentEntityUpdate} -> parentEntityUpdate) (\s@UpdateEntity' {} a -> s {parentEntityUpdate = a} :: UpdateEntity)

-- | The ID of the entity.
updateEntity_entityId :: Lens.Lens' UpdateEntity Prelude.Text
updateEntity_entityId = Lens.lens (\UpdateEntity' {entityId} -> entityId) (\s@UpdateEntity' {} a -> s {entityId = a} :: UpdateEntity)

-- | The ID of the workspace that contains the entity.
updateEntity_workspaceId :: Lens.Lens' UpdateEntity Prelude.Text
updateEntity_workspaceId = Lens.lens (\UpdateEntity' {workspaceId} -> workspaceId) (\s@UpdateEntity' {} a -> s {workspaceId = a} :: UpdateEntity)

instance Core.AWSRequest UpdateEntity where
  type AWSResponse UpdateEntity = UpdateEntityResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateEntityResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "state")
            Prelude.<*> (x Core..:> "updateDateTime")
      )

instance Prelude.Hashable UpdateEntity where
  hashWithSalt _salt UpdateEntity' {..} =
    _salt `Prelude.hashWithSalt` entityName
      `Prelude.hashWithSalt` componentUpdates
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` parentEntityUpdate
      `Prelude.hashWithSalt` entityId
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData UpdateEntity where
  rnf UpdateEntity' {..} =
    Prelude.rnf entityName
      `Prelude.seq` Prelude.rnf componentUpdates
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf parentEntityUpdate
      `Prelude.seq` Prelude.rnf entityId
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders UpdateEntity where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEntity where
  toJSON UpdateEntity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("entityName" Core..=) Prelude.<$> entityName,
            ("componentUpdates" Core..=)
              Prelude.<$> componentUpdates,
            ("description" Core..=) Prelude.<$> description,
            ("parentEntityUpdate" Core..=)
              Prelude.<$> parentEntityUpdate
          ]
      )

instance Core.ToPath UpdateEntity where
  toPath UpdateEntity' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/entities/",
        Core.toBS entityId
      ]

instance Core.ToQuery UpdateEntity where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEntityResponse' smart constructor.
data UpdateEntityResponse = UpdateEntityResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The current state of the entity update.
    state :: State,
    -- | The date and time when the entity was last updated.
    updateDateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEntityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateEntityResponse_httpStatus' - The response's http status code.
--
-- 'state', 'updateEntityResponse_state' - The current state of the entity update.
--
-- 'updateDateTime', 'updateEntityResponse_updateDateTime' - The date and time when the entity was last updated.
newUpdateEntityResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'state'
  State ->
  -- | 'updateDateTime'
  Prelude.UTCTime ->
  UpdateEntityResponse
newUpdateEntityResponse
  pHttpStatus_
  pState_
  pUpdateDateTime_ =
    UpdateEntityResponse'
      { httpStatus = pHttpStatus_,
        state = pState_,
        updateDateTime = Core._Time Lens.# pUpdateDateTime_
      }

-- | The response's http status code.
updateEntityResponse_httpStatus :: Lens.Lens' UpdateEntityResponse Prelude.Int
updateEntityResponse_httpStatus = Lens.lens (\UpdateEntityResponse' {httpStatus} -> httpStatus) (\s@UpdateEntityResponse' {} a -> s {httpStatus = a} :: UpdateEntityResponse)

-- | The current state of the entity update.
updateEntityResponse_state :: Lens.Lens' UpdateEntityResponse State
updateEntityResponse_state = Lens.lens (\UpdateEntityResponse' {state} -> state) (\s@UpdateEntityResponse' {} a -> s {state = a} :: UpdateEntityResponse)

-- | The date and time when the entity was last updated.
updateEntityResponse_updateDateTime :: Lens.Lens' UpdateEntityResponse Prelude.UTCTime
updateEntityResponse_updateDateTime = Lens.lens (\UpdateEntityResponse' {updateDateTime} -> updateDateTime) (\s@UpdateEntityResponse' {} a -> s {updateDateTime = a} :: UpdateEntityResponse) Prelude.. Core._Time

instance Prelude.NFData UpdateEntityResponse where
  rnf UpdateEntityResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf updateDateTime

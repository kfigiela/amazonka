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
-- Module      : Amazonka.IotTwinMaker.GetComponentType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a component type.
module Amazonka.IotTwinMaker.GetComponentType
  ( -- * Creating a Request
    GetComponentType (..),
    newGetComponentType,

    -- * Request Lenses
    getComponentType_componentTypeId,
    getComponentType_workspaceId,

    -- * Destructuring the Response
    GetComponentTypeResponse (..),
    newGetComponentTypeResponse,

    -- * Response Lenses
    getComponentTypeResponse_isSchemaInitialized,
    getComponentTypeResponse_functions,
    getComponentTypeResponse_isAbstract,
    getComponentTypeResponse_propertyDefinitions,
    getComponentTypeResponse_status,
    getComponentTypeResponse_description,
    getComponentTypeResponse_isSingleton,
    getComponentTypeResponse_extendsFrom,
    getComponentTypeResponse_httpStatus,
    getComponentTypeResponse_arn,
    getComponentTypeResponse_componentTypeId,
    getComponentTypeResponse_creationDateTime,
    getComponentTypeResponse_updateDateTime,
    getComponentTypeResponse_workspaceId,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetComponentType' smart constructor.
data GetComponentType = GetComponentType'
  { -- | The ID of the component type.
    componentTypeId :: Prelude.Text,
    -- | The ID of the workspace that contains the component type.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetComponentType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'componentTypeId', 'getComponentType_componentTypeId' - The ID of the component type.
--
-- 'workspaceId', 'getComponentType_workspaceId' - The ID of the workspace that contains the component type.
newGetComponentType ::
  -- | 'componentTypeId'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  GetComponentType
newGetComponentType pComponentTypeId_ pWorkspaceId_ =
  GetComponentType'
    { componentTypeId =
        pComponentTypeId_,
      workspaceId = pWorkspaceId_
    }

-- | The ID of the component type.
getComponentType_componentTypeId :: Lens.Lens' GetComponentType Prelude.Text
getComponentType_componentTypeId = Lens.lens (\GetComponentType' {componentTypeId} -> componentTypeId) (\s@GetComponentType' {} a -> s {componentTypeId = a} :: GetComponentType)

-- | The ID of the workspace that contains the component type.
getComponentType_workspaceId :: Lens.Lens' GetComponentType Prelude.Text
getComponentType_workspaceId = Lens.lens (\GetComponentType' {workspaceId} -> workspaceId) (\s@GetComponentType' {} a -> s {workspaceId = a} :: GetComponentType)

instance Core.AWSRequest GetComponentType where
  type
    AWSResponse GetComponentType =
      GetComponentTypeResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetComponentTypeResponse'
            Prelude.<$> (x Core..?> "isSchemaInitialized")
            Prelude.<*> (x Core..?> "functions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "isAbstract")
            Prelude.<*> ( x Core..?> "propertyDefinitions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "isSingleton")
            Prelude.<*> (x Core..?> "extendsFrom" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "arn")
            Prelude.<*> (x Core..:> "componentTypeId")
            Prelude.<*> (x Core..:> "creationDateTime")
            Prelude.<*> (x Core..:> "updateDateTime")
            Prelude.<*> (x Core..:> "workspaceId")
      )

instance Prelude.Hashable GetComponentType where
  hashWithSalt _salt GetComponentType' {..} =
    _salt `Prelude.hashWithSalt` componentTypeId
      `Prelude.hashWithSalt` workspaceId

instance Prelude.NFData GetComponentType where
  rnf GetComponentType' {..} =
    Prelude.rnf componentTypeId
      `Prelude.seq` Prelude.rnf workspaceId

instance Core.ToHeaders GetComponentType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetComponentType where
  toPath GetComponentType' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/component-types/",
        Core.toBS componentTypeId
      ]

instance Core.ToQuery GetComponentType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetComponentTypeResponse' smart constructor.
data GetComponentTypeResponse = GetComponentTypeResponse'
  { -- | A Boolean value that specifies whether the component type has a schema
    -- initializer and that the schema initializer has run.
    isSchemaInitialized :: Prelude.Maybe Prelude.Bool,
    -- | An object that maps strings to the functions in the component type. Each
    -- string in the mapping must be unique to this object.
    functions :: Prelude.Maybe (Prelude.HashMap Prelude.Text FunctionResponse),
    -- | A Boolean value that specifies whether the component type is abstract.
    isAbstract :: Prelude.Maybe Prelude.Bool,
    -- | An object that maps strings to the property definitions in the component
    -- type. Each string in the mapping must be unique to this object.
    propertyDefinitions :: Prelude.Maybe (Prelude.HashMap Prelude.Text PropertyDefinitionResponse),
    -- | The current status of the component type.
    status :: Prelude.Maybe Status,
    -- | The description of the component type.
    description :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value that specifies whether an entity can have more than one
    -- component of this type.
    isSingleton :: Prelude.Maybe Prelude.Bool,
    -- | The name of the parent component type that this component type extends.
    extendsFrom :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the component type.
    arn :: Prelude.Text,
    -- | The ID of the component type.
    componentTypeId :: Prelude.Text,
    -- | The date and time when the component type was created.
    creationDateTime :: Core.POSIX,
    -- | The date and time when the component was last updated.
    updateDateTime :: Core.POSIX,
    -- | The ID of the workspace that contains the component type.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetComponentTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isSchemaInitialized', 'getComponentTypeResponse_isSchemaInitialized' - A Boolean value that specifies whether the component type has a schema
-- initializer and that the schema initializer has run.
--
-- 'functions', 'getComponentTypeResponse_functions' - An object that maps strings to the functions in the component type. Each
-- string in the mapping must be unique to this object.
--
-- 'isAbstract', 'getComponentTypeResponse_isAbstract' - A Boolean value that specifies whether the component type is abstract.
--
-- 'propertyDefinitions', 'getComponentTypeResponse_propertyDefinitions' - An object that maps strings to the property definitions in the component
-- type. Each string in the mapping must be unique to this object.
--
-- 'status', 'getComponentTypeResponse_status' - The current status of the component type.
--
-- 'description', 'getComponentTypeResponse_description' - The description of the component type.
--
-- 'isSingleton', 'getComponentTypeResponse_isSingleton' - A Boolean value that specifies whether an entity can have more than one
-- component of this type.
--
-- 'extendsFrom', 'getComponentTypeResponse_extendsFrom' - The name of the parent component type that this component type extends.
--
-- 'httpStatus', 'getComponentTypeResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'getComponentTypeResponse_arn' - The ARN of the component type.
--
-- 'componentTypeId', 'getComponentTypeResponse_componentTypeId' - The ID of the component type.
--
-- 'creationDateTime', 'getComponentTypeResponse_creationDateTime' - The date and time when the component type was created.
--
-- 'updateDateTime', 'getComponentTypeResponse_updateDateTime' - The date and time when the component was last updated.
--
-- 'workspaceId', 'getComponentTypeResponse_workspaceId' - The ID of the workspace that contains the component type.
newGetComponentTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'componentTypeId'
  Prelude.Text ->
  -- | 'creationDateTime'
  Prelude.UTCTime ->
  -- | 'updateDateTime'
  Prelude.UTCTime ->
  -- | 'workspaceId'
  Prelude.Text ->
  GetComponentTypeResponse
newGetComponentTypeResponse
  pHttpStatus_
  pArn_
  pComponentTypeId_
  pCreationDateTime_
  pUpdateDateTime_
  pWorkspaceId_ =
    GetComponentTypeResponse'
      { isSchemaInitialized =
          Prelude.Nothing,
        functions = Prelude.Nothing,
        isAbstract = Prelude.Nothing,
        propertyDefinitions = Prelude.Nothing,
        status = Prelude.Nothing,
        description = Prelude.Nothing,
        isSingleton = Prelude.Nothing,
        extendsFrom = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        arn = pArn_,
        componentTypeId = pComponentTypeId_,
        creationDateTime =
          Core._Time Lens.# pCreationDateTime_,
        updateDateTime =
          Core._Time Lens.# pUpdateDateTime_,
        workspaceId = pWorkspaceId_
      }

-- | A Boolean value that specifies whether the component type has a schema
-- initializer and that the schema initializer has run.
getComponentTypeResponse_isSchemaInitialized :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe Prelude.Bool)
getComponentTypeResponse_isSchemaInitialized = Lens.lens (\GetComponentTypeResponse' {isSchemaInitialized} -> isSchemaInitialized) (\s@GetComponentTypeResponse' {} a -> s {isSchemaInitialized = a} :: GetComponentTypeResponse)

-- | An object that maps strings to the functions in the component type. Each
-- string in the mapping must be unique to this object.
getComponentTypeResponse_functions :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text FunctionResponse))
getComponentTypeResponse_functions = Lens.lens (\GetComponentTypeResponse' {functions} -> functions) (\s@GetComponentTypeResponse' {} a -> s {functions = a} :: GetComponentTypeResponse) Prelude.. Lens.mapping Lens.coerced

-- | A Boolean value that specifies whether the component type is abstract.
getComponentTypeResponse_isAbstract :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe Prelude.Bool)
getComponentTypeResponse_isAbstract = Lens.lens (\GetComponentTypeResponse' {isAbstract} -> isAbstract) (\s@GetComponentTypeResponse' {} a -> s {isAbstract = a} :: GetComponentTypeResponse)

-- | An object that maps strings to the property definitions in the component
-- type. Each string in the mapping must be unique to this object.
getComponentTypeResponse_propertyDefinitions :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text PropertyDefinitionResponse))
getComponentTypeResponse_propertyDefinitions = Lens.lens (\GetComponentTypeResponse' {propertyDefinitions} -> propertyDefinitions) (\s@GetComponentTypeResponse' {} a -> s {propertyDefinitions = a} :: GetComponentTypeResponse) Prelude.. Lens.mapping Lens.coerced

-- | The current status of the component type.
getComponentTypeResponse_status :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe Status)
getComponentTypeResponse_status = Lens.lens (\GetComponentTypeResponse' {status} -> status) (\s@GetComponentTypeResponse' {} a -> s {status = a} :: GetComponentTypeResponse)

-- | The description of the component type.
getComponentTypeResponse_description :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe Prelude.Text)
getComponentTypeResponse_description = Lens.lens (\GetComponentTypeResponse' {description} -> description) (\s@GetComponentTypeResponse' {} a -> s {description = a} :: GetComponentTypeResponse)

-- | A Boolean value that specifies whether an entity can have more than one
-- component of this type.
getComponentTypeResponse_isSingleton :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe Prelude.Bool)
getComponentTypeResponse_isSingleton = Lens.lens (\GetComponentTypeResponse' {isSingleton} -> isSingleton) (\s@GetComponentTypeResponse' {} a -> s {isSingleton = a} :: GetComponentTypeResponse)

-- | The name of the parent component type that this component type extends.
getComponentTypeResponse_extendsFrom :: Lens.Lens' GetComponentTypeResponse (Prelude.Maybe [Prelude.Text])
getComponentTypeResponse_extendsFrom = Lens.lens (\GetComponentTypeResponse' {extendsFrom} -> extendsFrom) (\s@GetComponentTypeResponse' {} a -> s {extendsFrom = a} :: GetComponentTypeResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getComponentTypeResponse_httpStatus :: Lens.Lens' GetComponentTypeResponse Prelude.Int
getComponentTypeResponse_httpStatus = Lens.lens (\GetComponentTypeResponse' {httpStatus} -> httpStatus) (\s@GetComponentTypeResponse' {} a -> s {httpStatus = a} :: GetComponentTypeResponse)

-- | The ARN of the component type.
getComponentTypeResponse_arn :: Lens.Lens' GetComponentTypeResponse Prelude.Text
getComponentTypeResponse_arn = Lens.lens (\GetComponentTypeResponse' {arn} -> arn) (\s@GetComponentTypeResponse' {} a -> s {arn = a} :: GetComponentTypeResponse)

-- | The ID of the component type.
getComponentTypeResponse_componentTypeId :: Lens.Lens' GetComponentTypeResponse Prelude.Text
getComponentTypeResponse_componentTypeId = Lens.lens (\GetComponentTypeResponse' {componentTypeId} -> componentTypeId) (\s@GetComponentTypeResponse' {} a -> s {componentTypeId = a} :: GetComponentTypeResponse)

-- | The date and time when the component type was created.
getComponentTypeResponse_creationDateTime :: Lens.Lens' GetComponentTypeResponse Prelude.UTCTime
getComponentTypeResponse_creationDateTime = Lens.lens (\GetComponentTypeResponse' {creationDateTime} -> creationDateTime) (\s@GetComponentTypeResponse' {} a -> s {creationDateTime = a} :: GetComponentTypeResponse) Prelude.. Core._Time

-- | The date and time when the component was last updated.
getComponentTypeResponse_updateDateTime :: Lens.Lens' GetComponentTypeResponse Prelude.UTCTime
getComponentTypeResponse_updateDateTime = Lens.lens (\GetComponentTypeResponse' {updateDateTime} -> updateDateTime) (\s@GetComponentTypeResponse' {} a -> s {updateDateTime = a} :: GetComponentTypeResponse) Prelude.. Core._Time

-- | The ID of the workspace that contains the component type.
getComponentTypeResponse_workspaceId :: Lens.Lens' GetComponentTypeResponse Prelude.Text
getComponentTypeResponse_workspaceId = Lens.lens (\GetComponentTypeResponse' {workspaceId} -> workspaceId) (\s@GetComponentTypeResponse' {} a -> s {workspaceId = a} :: GetComponentTypeResponse)

instance Prelude.NFData GetComponentTypeResponse where
  rnf GetComponentTypeResponse' {..} =
    Prelude.rnf isSchemaInitialized
      `Prelude.seq` Prelude.rnf functions
      `Prelude.seq` Prelude.rnf isAbstract
      `Prelude.seq` Prelude.rnf propertyDefinitions
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf isSingleton
      `Prelude.seq` Prelude.rnf extendsFrom
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf componentTypeId
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf updateDateTime
      `Prelude.seq` Prelude.rnf workspaceId

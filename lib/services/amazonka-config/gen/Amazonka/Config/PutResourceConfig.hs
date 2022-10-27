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
-- Module      : Amazonka.Config.PutResourceConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Records the configuration state for the resource provided in the
-- request. The configuration state of a resource is represented in Config
-- as Configuration Items. Once this API records the configuration item,
-- you can retrieve the list of configuration items for the custom resource
-- type using existing Config APIs.
--
-- The custom resource type must be registered with CloudFormation. This
-- API accepts the configuration item registered with CloudFormation.
--
-- When you call this API, Config only stores configuration state of the
-- resource provided in the request. This API does not change or remediate
-- the configuration of the resource.
--
-- Write-only schema properites are not recorded as part of the published
-- configuration item.
module Amazonka.Config.PutResourceConfig
  ( -- * Creating a Request
    PutResourceConfig (..),
    newPutResourceConfig,

    -- * Request Lenses
    putResourceConfig_tags,
    putResourceConfig_resourceName,
    putResourceConfig_resourceType,
    putResourceConfig_schemaVersionId,
    putResourceConfig_resourceId,
    putResourceConfig_configuration,

    -- * Destructuring the Response
    PutResourceConfigResponse (..),
    newPutResourceConfigResponse,
  )
where

import Amazonka.Config.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutResourceConfig' smart constructor.
data PutResourceConfig = PutResourceConfig'
  { -- | Tags associated with the resource.
    --
    -- This field is not to be confused with the Amazon Web Services-wide tag
    -- feature for Amazon Web Services resources. Tags for @PutResourceConfig@
    -- are tags that you supply for the configuration items of your custom
    -- resources.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name of the resource.
    resourceName :: Prelude.Maybe Prelude.Text,
    -- | The type of the resource. The custom resource type must be registered
    -- with CloudFormation.
    --
    -- You cannot use the organization names “amzn”, “amazon”, “alexa”,
    -- “custom” with custom resource types. It is the first part of the
    -- ResourceType up to the first ::.
    resourceType :: Prelude.Text,
    -- | Version of the schema registered for the ResourceType in CloudFormation.
    schemaVersionId :: Prelude.Text,
    -- | Unique identifier of the resource.
    resourceId :: Prelude.Text,
    -- | The configuration object of the resource in valid JSON format. It must
    -- match the schema registered with CloudFormation.
    --
    -- The configuration JSON must not exceed 64 KB.
    configuration :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutResourceConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putResourceConfig_tags' - Tags associated with the resource.
--
-- This field is not to be confused with the Amazon Web Services-wide tag
-- feature for Amazon Web Services resources. Tags for @PutResourceConfig@
-- are tags that you supply for the configuration items of your custom
-- resources.
--
-- 'resourceName', 'putResourceConfig_resourceName' - Name of the resource.
--
-- 'resourceType', 'putResourceConfig_resourceType' - The type of the resource. The custom resource type must be registered
-- with CloudFormation.
--
-- You cannot use the organization names “amzn”, “amazon”, “alexa”,
-- “custom” with custom resource types. It is the first part of the
-- ResourceType up to the first ::.
--
-- 'schemaVersionId', 'putResourceConfig_schemaVersionId' - Version of the schema registered for the ResourceType in CloudFormation.
--
-- 'resourceId', 'putResourceConfig_resourceId' - Unique identifier of the resource.
--
-- 'configuration', 'putResourceConfig_configuration' - The configuration object of the resource in valid JSON format. It must
-- match the schema registered with CloudFormation.
--
-- The configuration JSON must not exceed 64 KB.
newPutResourceConfig ::
  -- | 'resourceType'
  Prelude.Text ->
  -- | 'schemaVersionId'
  Prelude.Text ->
  -- | 'resourceId'
  Prelude.Text ->
  -- | 'configuration'
  Prelude.Text ->
  PutResourceConfig
newPutResourceConfig
  pResourceType_
  pSchemaVersionId_
  pResourceId_
  pConfiguration_ =
    PutResourceConfig'
      { tags = Prelude.Nothing,
        resourceName = Prelude.Nothing,
        resourceType = pResourceType_,
        schemaVersionId = pSchemaVersionId_,
        resourceId = pResourceId_,
        configuration = pConfiguration_
      }

-- | Tags associated with the resource.
--
-- This field is not to be confused with the Amazon Web Services-wide tag
-- feature for Amazon Web Services resources. Tags for @PutResourceConfig@
-- are tags that you supply for the configuration items of your custom
-- resources.
putResourceConfig_tags :: Lens.Lens' PutResourceConfig (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
putResourceConfig_tags = Lens.lens (\PutResourceConfig' {tags} -> tags) (\s@PutResourceConfig' {} a -> s {tags = a} :: PutResourceConfig) Prelude.. Lens.mapping Lens.coerced

-- | Name of the resource.
putResourceConfig_resourceName :: Lens.Lens' PutResourceConfig (Prelude.Maybe Prelude.Text)
putResourceConfig_resourceName = Lens.lens (\PutResourceConfig' {resourceName} -> resourceName) (\s@PutResourceConfig' {} a -> s {resourceName = a} :: PutResourceConfig)

-- | The type of the resource. The custom resource type must be registered
-- with CloudFormation.
--
-- You cannot use the organization names “amzn”, “amazon”, “alexa”,
-- “custom” with custom resource types. It is the first part of the
-- ResourceType up to the first ::.
putResourceConfig_resourceType :: Lens.Lens' PutResourceConfig Prelude.Text
putResourceConfig_resourceType = Lens.lens (\PutResourceConfig' {resourceType} -> resourceType) (\s@PutResourceConfig' {} a -> s {resourceType = a} :: PutResourceConfig)

-- | Version of the schema registered for the ResourceType in CloudFormation.
putResourceConfig_schemaVersionId :: Lens.Lens' PutResourceConfig Prelude.Text
putResourceConfig_schemaVersionId = Lens.lens (\PutResourceConfig' {schemaVersionId} -> schemaVersionId) (\s@PutResourceConfig' {} a -> s {schemaVersionId = a} :: PutResourceConfig)

-- | Unique identifier of the resource.
putResourceConfig_resourceId :: Lens.Lens' PutResourceConfig Prelude.Text
putResourceConfig_resourceId = Lens.lens (\PutResourceConfig' {resourceId} -> resourceId) (\s@PutResourceConfig' {} a -> s {resourceId = a} :: PutResourceConfig)

-- | The configuration object of the resource in valid JSON format. It must
-- match the schema registered with CloudFormation.
--
-- The configuration JSON must not exceed 64 KB.
putResourceConfig_configuration :: Lens.Lens' PutResourceConfig Prelude.Text
putResourceConfig_configuration = Lens.lens (\PutResourceConfig' {configuration} -> configuration) (\s@PutResourceConfig' {} a -> s {configuration = a} :: PutResourceConfig)

instance Core.AWSRequest PutResourceConfig where
  type
    AWSResponse PutResourceConfig =
      PutResourceConfigResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull PutResourceConfigResponse'

instance Prelude.Hashable PutResourceConfig where
  hashWithSalt _salt PutResourceConfig' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` resourceName
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` schemaVersionId
      `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` configuration

instance Prelude.NFData PutResourceConfig where
  rnf PutResourceConfig' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceName
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf schemaVersionId
      `Prelude.seq` Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf configuration

instance Core.ToHeaders PutResourceConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.PutResourceConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutResourceConfig where
  toJSON PutResourceConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ResourceName" Core..=) Prelude.<$> resourceName,
            Prelude.Just ("ResourceType" Core..= resourceType),
            Prelude.Just
              ("SchemaVersionId" Core..= schemaVersionId),
            Prelude.Just ("ResourceId" Core..= resourceId),
            Prelude.Just
              ("Configuration" Core..= configuration)
          ]
      )

instance Core.ToPath PutResourceConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery PutResourceConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutResourceConfigResponse' smart constructor.
data PutResourceConfigResponse = PutResourceConfigResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutResourceConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutResourceConfigResponse ::
  PutResourceConfigResponse
newPutResourceConfigResponse =
  PutResourceConfigResponse'

instance Prelude.NFData PutResourceConfigResponse where
  rnf _ = ()

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
-- Module      : Amazonka.Schemas.UpdateSchema
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the schema definition
--
-- Inactive schemas will be deleted after two years.
module Amazonka.Schemas.UpdateSchema
  ( -- * Creating a Request
    UpdateSchema (..),
    newUpdateSchema,

    -- * Request Lenses
    updateSchema_type,
    updateSchema_clientTokenId,
    updateSchema_description,
    updateSchema_content,
    updateSchema_registryName,
    updateSchema_schemaName,

    -- * Destructuring the Response
    UpdateSchemaResponse (..),
    newUpdateSchemaResponse,

    -- * Response Lenses
    updateSchemaResponse_tags,
    updateSchemaResponse_type,
    updateSchemaResponse_schemaName,
    updateSchemaResponse_description,
    updateSchemaResponse_schemaArn,
    updateSchemaResponse_lastModified,
    updateSchemaResponse_schemaVersion,
    updateSchemaResponse_versionCreatedDate,
    updateSchemaResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Schemas.Types

-- | /See:/ 'newUpdateSchema' smart constructor.
data UpdateSchema = UpdateSchema'
  { -- | The schema type for the events schema.
    type' :: Prelude.Maybe Type,
    -- | The ID of the client token.
    clientTokenId :: Prelude.Maybe Prelude.Text,
    -- | The description of the schema.
    description :: Prelude.Maybe Prelude.Text,
    -- | The source of the schema definition.
    content :: Prelude.Maybe Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'updateSchema_type' - The schema type for the events schema.
--
-- 'clientTokenId', 'updateSchema_clientTokenId' - The ID of the client token.
--
-- 'description', 'updateSchema_description' - The description of the schema.
--
-- 'content', 'updateSchema_content' - The source of the schema definition.
--
-- 'registryName', 'updateSchema_registryName' - The name of the registry.
--
-- 'schemaName', 'updateSchema_schemaName' - The name of the schema.
newUpdateSchema ::
  -- | 'registryName'
  Prelude.Text ->
  -- | 'schemaName'
  Prelude.Text ->
  UpdateSchema
newUpdateSchema pRegistryName_ pSchemaName_ =
  UpdateSchema'
    { type' = Prelude.Nothing,
      clientTokenId = Prelude.Nothing,
      description = Prelude.Nothing,
      content = Prelude.Nothing,
      registryName = pRegistryName_,
      schemaName = pSchemaName_
    }

-- | The schema type for the events schema.
updateSchema_type :: Lens.Lens' UpdateSchema (Prelude.Maybe Type)
updateSchema_type = Lens.lens (\UpdateSchema' {type'} -> type') (\s@UpdateSchema' {} a -> s {type' = a} :: UpdateSchema)

-- | The ID of the client token.
updateSchema_clientTokenId :: Lens.Lens' UpdateSchema (Prelude.Maybe Prelude.Text)
updateSchema_clientTokenId = Lens.lens (\UpdateSchema' {clientTokenId} -> clientTokenId) (\s@UpdateSchema' {} a -> s {clientTokenId = a} :: UpdateSchema)

-- | The description of the schema.
updateSchema_description :: Lens.Lens' UpdateSchema (Prelude.Maybe Prelude.Text)
updateSchema_description = Lens.lens (\UpdateSchema' {description} -> description) (\s@UpdateSchema' {} a -> s {description = a} :: UpdateSchema)

-- | The source of the schema definition.
updateSchema_content :: Lens.Lens' UpdateSchema (Prelude.Maybe Prelude.Text)
updateSchema_content = Lens.lens (\UpdateSchema' {content} -> content) (\s@UpdateSchema' {} a -> s {content = a} :: UpdateSchema)

-- | The name of the registry.
updateSchema_registryName :: Lens.Lens' UpdateSchema Prelude.Text
updateSchema_registryName = Lens.lens (\UpdateSchema' {registryName} -> registryName) (\s@UpdateSchema' {} a -> s {registryName = a} :: UpdateSchema)

-- | The name of the schema.
updateSchema_schemaName :: Lens.Lens' UpdateSchema Prelude.Text
updateSchema_schemaName = Lens.lens (\UpdateSchema' {schemaName} -> schemaName) (\s@UpdateSchema' {} a -> s {schemaName = a} :: UpdateSchema)

instance Core.AWSRequest UpdateSchema where
  type AWSResponse UpdateSchema = UpdateSchemaResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateSchemaResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Type")
            Prelude.<*> (x Core..?> "SchemaName")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "SchemaArn")
            Prelude.<*> (x Core..?> "LastModified")
            Prelude.<*> (x Core..?> "SchemaVersion")
            Prelude.<*> (x Core..?> "VersionCreatedDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateSchema where
  hashWithSalt _salt UpdateSchema' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` clientTokenId
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` content
      `Prelude.hashWithSalt` registryName
      `Prelude.hashWithSalt` schemaName

instance Prelude.NFData UpdateSchema where
  rnf UpdateSchema' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf clientTokenId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf content
      `Prelude.seq` Prelude.rnf registryName
      `Prelude.seq` Prelude.rnf schemaName

instance Core.ToHeaders UpdateSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateSchema where
  toJSON UpdateSchema' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("ClientTokenId" Core..=) Prelude.<$> clientTokenId,
            ("Description" Core..=) Prelude.<$> description,
            ("Content" Core..=) Prelude.<$> content
          ]
      )

instance Core.ToPath UpdateSchema where
  toPath UpdateSchema' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas/name/",
        Core.toBS schemaName
      ]

instance Core.ToQuery UpdateSchema where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSchemaResponse' smart constructor.
data UpdateSchemaResponse = UpdateSchemaResponse'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The type of the schema.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Maybe Prelude.Text,
    -- | The description of the schema.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the schema.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time that schema was modified.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | The version number of the schema
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The date the schema version was created.
    versionCreatedDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateSchemaResponse_tags' - Undocumented member.
--
-- 'type'', 'updateSchemaResponse_type' - The type of the schema.
--
-- 'schemaName', 'updateSchemaResponse_schemaName' - The name of the schema.
--
-- 'description', 'updateSchemaResponse_description' - The description of the schema.
--
-- 'schemaArn', 'updateSchemaResponse_schemaArn' - The ARN of the schema.
--
-- 'lastModified', 'updateSchemaResponse_lastModified' - The date and time that schema was modified.
--
-- 'schemaVersion', 'updateSchemaResponse_schemaVersion' - The version number of the schema
--
-- 'versionCreatedDate', 'updateSchemaResponse_versionCreatedDate' - The date the schema version was created.
--
-- 'httpStatus', 'updateSchemaResponse_httpStatus' - The response's http status code.
newUpdateSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSchemaResponse
newUpdateSchemaResponse pHttpStatus_ =
  UpdateSchemaResponse'
    { tags = Prelude.Nothing,
      type' = Prelude.Nothing,
      schemaName = Prelude.Nothing,
      description = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      schemaVersion = Prelude.Nothing,
      versionCreatedDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateSchemaResponse_tags :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateSchemaResponse_tags = Lens.lens (\UpdateSchemaResponse' {tags} -> tags) (\s@UpdateSchemaResponse' {} a -> s {tags = a} :: UpdateSchemaResponse) Prelude.. Lens.mapping Lens.coerced

-- | The type of the schema.
updateSchemaResponse_type :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.Text)
updateSchemaResponse_type = Lens.lens (\UpdateSchemaResponse' {type'} -> type') (\s@UpdateSchemaResponse' {} a -> s {type' = a} :: UpdateSchemaResponse)

-- | The name of the schema.
updateSchemaResponse_schemaName :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.Text)
updateSchemaResponse_schemaName = Lens.lens (\UpdateSchemaResponse' {schemaName} -> schemaName) (\s@UpdateSchemaResponse' {} a -> s {schemaName = a} :: UpdateSchemaResponse)

-- | The description of the schema.
updateSchemaResponse_description :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.Text)
updateSchemaResponse_description = Lens.lens (\UpdateSchemaResponse' {description} -> description) (\s@UpdateSchemaResponse' {} a -> s {description = a} :: UpdateSchemaResponse)

-- | The ARN of the schema.
updateSchemaResponse_schemaArn :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.Text)
updateSchemaResponse_schemaArn = Lens.lens (\UpdateSchemaResponse' {schemaArn} -> schemaArn) (\s@UpdateSchemaResponse' {} a -> s {schemaArn = a} :: UpdateSchemaResponse)

-- | The date and time that schema was modified.
updateSchemaResponse_lastModified :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.UTCTime)
updateSchemaResponse_lastModified = Lens.lens (\UpdateSchemaResponse' {lastModified} -> lastModified) (\s@UpdateSchemaResponse' {} a -> s {lastModified = a} :: UpdateSchemaResponse) Prelude.. Lens.mapping Core._Time

-- | The version number of the schema
updateSchemaResponse_schemaVersion :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.Text)
updateSchemaResponse_schemaVersion = Lens.lens (\UpdateSchemaResponse' {schemaVersion} -> schemaVersion) (\s@UpdateSchemaResponse' {} a -> s {schemaVersion = a} :: UpdateSchemaResponse)

-- | The date the schema version was created.
updateSchemaResponse_versionCreatedDate :: Lens.Lens' UpdateSchemaResponse (Prelude.Maybe Prelude.UTCTime)
updateSchemaResponse_versionCreatedDate = Lens.lens (\UpdateSchemaResponse' {versionCreatedDate} -> versionCreatedDate) (\s@UpdateSchemaResponse' {} a -> s {versionCreatedDate = a} :: UpdateSchemaResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
updateSchemaResponse_httpStatus :: Lens.Lens' UpdateSchemaResponse Prelude.Int
updateSchemaResponse_httpStatus = Lens.lens (\UpdateSchemaResponse' {httpStatus} -> httpStatus) (\s@UpdateSchemaResponse' {} a -> s {httpStatus = a} :: UpdateSchemaResponse)

instance Prelude.NFData UpdateSchemaResponse where
  rnf UpdateSchemaResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf schemaName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf schemaArn
      `Prelude.seq` Prelude.rnf lastModified
      `Prelude.seq` Prelude.rnf schemaVersion
      `Prelude.seq` Prelude.rnf versionCreatedDate
      `Prelude.seq` Prelude.rnf httpStatus

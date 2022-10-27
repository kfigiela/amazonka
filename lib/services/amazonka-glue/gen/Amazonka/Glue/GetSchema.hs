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
-- Module      : Amazonka.Glue.GetSchema
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified schema in detail.
module Amazonka.Glue.GetSchema
  ( -- * Creating a Request
    GetSchema (..),
    newGetSchema,

    -- * Request Lenses
    getSchema_schemaId,

    -- * Destructuring the Response
    GetSchemaResponse (..),
    newGetSchemaResponse,

    -- * Response Lenses
    getSchemaResponse_compatibility,
    getSchemaResponse_registryName,
    getSchemaResponse_createdTime,
    getSchemaResponse_schemaStatus,
    getSchemaResponse_dataFormat,
    getSchemaResponse_schemaName,
    getSchemaResponse_description,
    getSchemaResponse_schemaArn,
    getSchemaResponse_registryArn,
    getSchemaResponse_nextSchemaVersion,
    getSchemaResponse_schemaCheckpoint,
    getSchemaResponse_latestSchemaVersion,
    getSchemaResponse_updatedTime,
    getSchemaResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSchema' smart constructor.
data GetSchema = GetSchema'
  { -- | This is a wrapper structure to contain schema identity fields. The
    -- structure contains:
    --
    -- -   SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    --     Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be
    --     provided.
    --
    -- -   SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or
    --     @SchemaName@ and @RegistryName@ has to be provided.
    schemaId :: SchemaId
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaId', 'getSchema_schemaId' - This is a wrapper structure to contain schema identity fields. The
-- structure contains:
--
-- -   SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
--     Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be
--     provided.
--
-- -   SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or
--     @SchemaName@ and @RegistryName@ has to be provided.
newGetSchema ::
  -- | 'schemaId'
  SchemaId ->
  GetSchema
newGetSchema pSchemaId_ =
  GetSchema' {schemaId = pSchemaId_}

-- | This is a wrapper structure to contain schema identity fields. The
-- structure contains:
--
-- -   SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
--     Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be
--     provided.
--
-- -   SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or
--     @SchemaName@ and @RegistryName@ has to be provided.
getSchema_schemaId :: Lens.Lens' GetSchema SchemaId
getSchema_schemaId = Lens.lens (\GetSchema' {schemaId} -> schemaId) (\s@GetSchema' {} a -> s {schemaId = a} :: GetSchema)

instance Core.AWSRequest GetSchema where
  type AWSResponse GetSchema = GetSchemaResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSchemaResponse'
            Prelude.<$> (x Core..?> "Compatibility")
            Prelude.<*> (x Core..?> "RegistryName")
            Prelude.<*> (x Core..?> "CreatedTime")
            Prelude.<*> (x Core..?> "SchemaStatus")
            Prelude.<*> (x Core..?> "DataFormat")
            Prelude.<*> (x Core..?> "SchemaName")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "SchemaArn")
            Prelude.<*> (x Core..?> "RegistryArn")
            Prelude.<*> (x Core..?> "NextSchemaVersion")
            Prelude.<*> (x Core..?> "SchemaCheckpoint")
            Prelude.<*> (x Core..?> "LatestSchemaVersion")
            Prelude.<*> (x Core..?> "UpdatedTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSchema where
  hashWithSalt _salt GetSchema' {..} =
    _salt `Prelude.hashWithSalt` schemaId

instance Prelude.NFData GetSchema where
  rnf GetSchema' {..} = Prelude.rnf schemaId

instance Core.ToHeaders GetSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.GetSchema" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetSchema where
  toJSON GetSchema' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("SchemaId" Core..= schemaId)]
      )

instance Core.ToPath GetSchema where
  toPath = Prelude.const "/"

instance Core.ToQuery GetSchema where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSchemaResponse' smart constructor.
data GetSchemaResponse = GetSchemaResponse'
  { -- | The compatibility mode of the schema.
    compatibility :: Prelude.Maybe Compatibility,
    -- | The name of the registry.
    registryName :: Prelude.Maybe Prelude.Text,
    -- | The date and time the schema was created.
    createdTime :: Prelude.Maybe Prelude.Text,
    -- | The status of the schema.
    schemaStatus :: Prelude.Maybe SchemaStatus,
    -- | The data format of the schema definition. Currently @AVRO@, @JSON@ and
    -- @PROTOBUF@ are supported.
    dataFormat :: Prelude.Maybe DataFormat,
    -- | The name of the schema.
    schemaName :: Prelude.Maybe Prelude.Text,
    -- | A description of schema if specified when created
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the schema.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the registry.
    registryArn :: Prelude.Maybe Prelude.Text,
    -- | The next version of the schema associated with the returned schema
    -- definition.
    nextSchemaVersion :: Prelude.Maybe Prelude.Natural,
    -- | The version number of the checkpoint (the last time the compatibility
    -- mode was changed).
    schemaCheckpoint :: Prelude.Maybe Prelude.Natural,
    -- | The latest version of the schema associated with the returned schema
    -- definition.
    latestSchemaVersion :: Prelude.Maybe Prelude.Natural,
    -- | The date and time the schema was updated.
    updatedTime :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compatibility', 'getSchemaResponse_compatibility' - The compatibility mode of the schema.
--
-- 'registryName', 'getSchemaResponse_registryName' - The name of the registry.
--
-- 'createdTime', 'getSchemaResponse_createdTime' - The date and time the schema was created.
--
-- 'schemaStatus', 'getSchemaResponse_schemaStatus' - The status of the schema.
--
-- 'dataFormat', 'getSchemaResponse_dataFormat' - The data format of the schema definition. Currently @AVRO@, @JSON@ and
-- @PROTOBUF@ are supported.
--
-- 'schemaName', 'getSchemaResponse_schemaName' - The name of the schema.
--
-- 'description', 'getSchemaResponse_description' - A description of schema if specified when created
--
-- 'schemaArn', 'getSchemaResponse_schemaArn' - The Amazon Resource Name (ARN) of the schema.
--
-- 'registryArn', 'getSchemaResponse_registryArn' - The Amazon Resource Name (ARN) of the registry.
--
-- 'nextSchemaVersion', 'getSchemaResponse_nextSchemaVersion' - The next version of the schema associated with the returned schema
-- definition.
--
-- 'schemaCheckpoint', 'getSchemaResponse_schemaCheckpoint' - The version number of the checkpoint (the last time the compatibility
-- mode was changed).
--
-- 'latestSchemaVersion', 'getSchemaResponse_latestSchemaVersion' - The latest version of the schema associated with the returned schema
-- definition.
--
-- 'updatedTime', 'getSchemaResponse_updatedTime' - The date and time the schema was updated.
--
-- 'httpStatus', 'getSchemaResponse_httpStatus' - The response's http status code.
newGetSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSchemaResponse
newGetSchemaResponse pHttpStatus_ =
  GetSchemaResponse'
    { compatibility = Prelude.Nothing,
      registryName = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      schemaStatus = Prelude.Nothing,
      dataFormat = Prelude.Nothing,
      schemaName = Prelude.Nothing,
      description = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      registryArn = Prelude.Nothing,
      nextSchemaVersion = Prelude.Nothing,
      schemaCheckpoint = Prelude.Nothing,
      latestSchemaVersion = Prelude.Nothing,
      updatedTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The compatibility mode of the schema.
getSchemaResponse_compatibility :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Compatibility)
getSchemaResponse_compatibility = Lens.lens (\GetSchemaResponse' {compatibility} -> compatibility) (\s@GetSchemaResponse' {} a -> s {compatibility = a} :: GetSchemaResponse)

-- | The name of the registry.
getSchemaResponse_registryName :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_registryName = Lens.lens (\GetSchemaResponse' {registryName} -> registryName) (\s@GetSchemaResponse' {} a -> s {registryName = a} :: GetSchemaResponse)

-- | The date and time the schema was created.
getSchemaResponse_createdTime :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_createdTime = Lens.lens (\GetSchemaResponse' {createdTime} -> createdTime) (\s@GetSchemaResponse' {} a -> s {createdTime = a} :: GetSchemaResponse)

-- | The status of the schema.
getSchemaResponse_schemaStatus :: Lens.Lens' GetSchemaResponse (Prelude.Maybe SchemaStatus)
getSchemaResponse_schemaStatus = Lens.lens (\GetSchemaResponse' {schemaStatus} -> schemaStatus) (\s@GetSchemaResponse' {} a -> s {schemaStatus = a} :: GetSchemaResponse)

-- | The data format of the schema definition. Currently @AVRO@, @JSON@ and
-- @PROTOBUF@ are supported.
getSchemaResponse_dataFormat :: Lens.Lens' GetSchemaResponse (Prelude.Maybe DataFormat)
getSchemaResponse_dataFormat = Lens.lens (\GetSchemaResponse' {dataFormat} -> dataFormat) (\s@GetSchemaResponse' {} a -> s {dataFormat = a} :: GetSchemaResponse)

-- | The name of the schema.
getSchemaResponse_schemaName :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_schemaName = Lens.lens (\GetSchemaResponse' {schemaName} -> schemaName) (\s@GetSchemaResponse' {} a -> s {schemaName = a} :: GetSchemaResponse)

-- | A description of schema if specified when created
getSchemaResponse_description :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_description = Lens.lens (\GetSchemaResponse' {description} -> description) (\s@GetSchemaResponse' {} a -> s {description = a} :: GetSchemaResponse)

-- | The Amazon Resource Name (ARN) of the schema.
getSchemaResponse_schemaArn :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_schemaArn = Lens.lens (\GetSchemaResponse' {schemaArn} -> schemaArn) (\s@GetSchemaResponse' {} a -> s {schemaArn = a} :: GetSchemaResponse)

-- | The Amazon Resource Name (ARN) of the registry.
getSchemaResponse_registryArn :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_registryArn = Lens.lens (\GetSchemaResponse' {registryArn} -> registryArn) (\s@GetSchemaResponse' {} a -> s {registryArn = a} :: GetSchemaResponse)

-- | The next version of the schema associated with the returned schema
-- definition.
getSchemaResponse_nextSchemaVersion :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Natural)
getSchemaResponse_nextSchemaVersion = Lens.lens (\GetSchemaResponse' {nextSchemaVersion} -> nextSchemaVersion) (\s@GetSchemaResponse' {} a -> s {nextSchemaVersion = a} :: GetSchemaResponse)

-- | The version number of the checkpoint (the last time the compatibility
-- mode was changed).
getSchemaResponse_schemaCheckpoint :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Natural)
getSchemaResponse_schemaCheckpoint = Lens.lens (\GetSchemaResponse' {schemaCheckpoint} -> schemaCheckpoint) (\s@GetSchemaResponse' {} a -> s {schemaCheckpoint = a} :: GetSchemaResponse)

-- | The latest version of the schema associated with the returned schema
-- definition.
getSchemaResponse_latestSchemaVersion :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Natural)
getSchemaResponse_latestSchemaVersion = Lens.lens (\GetSchemaResponse' {latestSchemaVersion} -> latestSchemaVersion) (\s@GetSchemaResponse' {} a -> s {latestSchemaVersion = a} :: GetSchemaResponse)

-- | The date and time the schema was updated.
getSchemaResponse_updatedTime :: Lens.Lens' GetSchemaResponse (Prelude.Maybe Prelude.Text)
getSchemaResponse_updatedTime = Lens.lens (\GetSchemaResponse' {updatedTime} -> updatedTime) (\s@GetSchemaResponse' {} a -> s {updatedTime = a} :: GetSchemaResponse)

-- | The response's http status code.
getSchemaResponse_httpStatus :: Lens.Lens' GetSchemaResponse Prelude.Int
getSchemaResponse_httpStatus = Lens.lens (\GetSchemaResponse' {httpStatus} -> httpStatus) (\s@GetSchemaResponse' {} a -> s {httpStatus = a} :: GetSchemaResponse)

instance Prelude.NFData GetSchemaResponse where
  rnf GetSchemaResponse' {..} =
    Prelude.rnf compatibility
      `Prelude.seq` Prelude.rnf registryName
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf schemaStatus
      `Prelude.seq` Prelude.rnf dataFormat
      `Prelude.seq` Prelude.rnf schemaName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf schemaArn
      `Prelude.seq` Prelude.rnf registryArn
      `Prelude.seq` Prelude.rnf nextSchemaVersion
      `Prelude.seq` Prelude.rnf schemaCheckpoint
      `Prelude.seq` Prelude.rnf latestSchemaVersion
      `Prelude.seq` Prelude.rnf updatedTime
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.IoTAnalytics.CreateDatastore
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a data store, which is a repository for messages.
module Amazonka.IoTAnalytics.CreateDatastore
  ( -- * Creating a Request
    CreateDatastore (..),
    newCreateDatastore,

    -- * Request Lenses
    createDatastore_tags,
    createDatastore_fileFormatConfiguration,
    createDatastore_retentionPeriod,
    createDatastore_datastoreStorage,
    createDatastore_datastorePartitions,
    createDatastore_datastoreName,

    -- * Destructuring the Response
    CreateDatastoreResponse (..),
    newCreateDatastoreResponse,

    -- * Response Lenses
    createDatastoreResponse_datastoreArn,
    createDatastoreResponse_datastoreName,
    createDatastoreResponse_retentionPeriod,
    createDatastoreResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTAnalytics.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDatastore' smart constructor.
data CreateDatastore = CreateDatastore'
  { -- | Metadata which can be used to manage the data store.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | Contains the configuration information of file formats. IoT Analytics
    -- data stores support JSON and <https://parquet.apache.org/ Parquet>.
    --
    -- The default file format is JSON. You can specify only one format.
    --
    -- You can\'t change the file format after you create the data store.
    fileFormatConfiguration :: Prelude.Maybe FileFormatConfiguration,
    -- | How long, in days, message data is kept for the data store. When
    -- @customerManagedS3@ storage is selected, this parameter is ignored.
    retentionPeriod :: Prelude.Maybe RetentionPeriod,
    -- | Where data in a data store is stored.. You can choose @serviceManagedS3@
    -- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
    -- storage. The default is @serviceManagedS3@. You can\'t change the choice
    -- of Amazon S3 storage after your data store is created.
    datastoreStorage :: Prelude.Maybe DatastoreStorage,
    -- | Contains information about the partition dimensions in a data store.
    datastorePartitions :: Prelude.Maybe DatastorePartitions,
    -- | The name of the data store.
    datastoreName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatastore' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDatastore_tags' - Metadata which can be used to manage the data store.
--
-- 'fileFormatConfiguration', 'createDatastore_fileFormatConfiguration' - Contains the configuration information of file formats. IoT Analytics
-- data stores support JSON and <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
--
-- 'retentionPeriod', 'createDatastore_retentionPeriod' - How long, in days, message data is kept for the data store. When
-- @customerManagedS3@ storage is selected, this parameter is ignored.
--
-- 'datastoreStorage', 'createDatastore_datastoreStorage' - Where data in a data store is stored.. You can choose @serviceManagedS3@
-- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
-- storage. The default is @serviceManagedS3@. You can\'t change the choice
-- of Amazon S3 storage after your data store is created.
--
-- 'datastorePartitions', 'createDatastore_datastorePartitions' - Contains information about the partition dimensions in a data store.
--
-- 'datastoreName', 'createDatastore_datastoreName' - The name of the data store.
newCreateDatastore ::
  -- | 'datastoreName'
  Prelude.Text ->
  CreateDatastore
newCreateDatastore pDatastoreName_ =
  CreateDatastore'
    { tags = Prelude.Nothing,
      fileFormatConfiguration = Prelude.Nothing,
      retentionPeriod = Prelude.Nothing,
      datastoreStorage = Prelude.Nothing,
      datastorePartitions = Prelude.Nothing,
      datastoreName = pDatastoreName_
    }

-- | Metadata which can be used to manage the data store.
createDatastore_tags :: Lens.Lens' CreateDatastore (Prelude.Maybe (Prelude.NonEmpty Tag))
createDatastore_tags = Lens.lens (\CreateDatastore' {tags} -> tags) (\s@CreateDatastore' {} a -> s {tags = a} :: CreateDatastore) Prelude.. Lens.mapping Lens.coerced

-- | Contains the configuration information of file formats. IoT Analytics
-- data stores support JSON and <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
createDatastore_fileFormatConfiguration :: Lens.Lens' CreateDatastore (Prelude.Maybe FileFormatConfiguration)
createDatastore_fileFormatConfiguration = Lens.lens (\CreateDatastore' {fileFormatConfiguration} -> fileFormatConfiguration) (\s@CreateDatastore' {} a -> s {fileFormatConfiguration = a} :: CreateDatastore)

-- | How long, in days, message data is kept for the data store. When
-- @customerManagedS3@ storage is selected, this parameter is ignored.
createDatastore_retentionPeriod :: Lens.Lens' CreateDatastore (Prelude.Maybe RetentionPeriod)
createDatastore_retentionPeriod = Lens.lens (\CreateDatastore' {retentionPeriod} -> retentionPeriod) (\s@CreateDatastore' {} a -> s {retentionPeriod = a} :: CreateDatastore)

-- | Where data in a data store is stored.. You can choose @serviceManagedS3@
-- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
-- storage. The default is @serviceManagedS3@. You can\'t change the choice
-- of Amazon S3 storage after your data store is created.
createDatastore_datastoreStorage :: Lens.Lens' CreateDatastore (Prelude.Maybe DatastoreStorage)
createDatastore_datastoreStorage = Lens.lens (\CreateDatastore' {datastoreStorage} -> datastoreStorage) (\s@CreateDatastore' {} a -> s {datastoreStorage = a} :: CreateDatastore)

-- | Contains information about the partition dimensions in a data store.
createDatastore_datastorePartitions :: Lens.Lens' CreateDatastore (Prelude.Maybe DatastorePartitions)
createDatastore_datastorePartitions = Lens.lens (\CreateDatastore' {datastorePartitions} -> datastorePartitions) (\s@CreateDatastore' {} a -> s {datastorePartitions = a} :: CreateDatastore)

-- | The name of the data store.
createDatastore_datastoreName :: Lens.Lens' CreateDatastore Prelude.Text
createDatastore_datastoreName = Lens.lens (\CreateDatastore' {datastoreName} -> datastoreName) (\s@CreateDatastore' {} a -> s {datastoreName = a} :: CreateDatastore)

instance Core.AWSRequest CreateDatastore where
  type
    AWSResponse CreateDatastore =
      CreateDatastoreResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDatastoreResponse'
            Prelude.<$> (x Core..?> "datastoreArn")
            Prelude.<*> (x Core..?> "datastoreName")
            Prelude.<*> (x Core..?> "retentionPeriod")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDatastore where
  hashWithSalt _salt CreateDatastore' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` fileFormatConfiguration
      `Prelude.hashWithSalt` retentionPeriod
      `Prelude.hashWithSalt` datastoreStorage
      `Prelude.hashWithSalt` datastorePartitions
      `Prelude.hashWithSalt` datastoreName

instance Prelude.NFData CreateDatastore where
  rnf CreateDatastore' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf fileFormatConfiguration
      `Prelude.seq` Prelude.rnf retentionPeriod
      `Prelude.seq` Prelude.rnf datastoreStorage
      `Prelude.seq` Prelude.rnf datastorePartitions
      `Prelude.seq` Prelude.rnf datastoreName

instance Core.ToHeaders CreateDatastore where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateDatastore where
  toJSON CreateDatastore' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("fileFormatConfiguration" Core..=)
              Prelude.<$> fileFormatConfiguration,
            ("retentionPeriod" Core..=)
              Prelude.<$> retentionPeriod,
            ("datastoreStorage" Core..=)
              Prelude.<$> datastoreStorage,
            ("datastorePartitions" Core..=)
              Prelude.<$> datastorePartitions,
            Prelude.Just
              ("datastoreName" Core..= datastoreName)
          ]
      )

instance Core.ToPath CreateDatastore where
  toPath = Prelude.const "/datastores"

instance Core.ToQuery CreateDatastore where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDatastoreResponse' smart constructor.
data CreateDatastoreResponse = CreateDatastoreResponse'
  { -- | The ARN of the data store.
    datastoreArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the data store.
    datastoreName :: Prelude.Maybe Prelude.Text,
    -- | How long, in days, message data is kept for the data store.
    retentionPeriod :: Prelude.Maybe RetentionPeriod,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatastoreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreArn', 'createDatastoreResponse_datastoreArn' - The ARN of the data store.
--
-- 'datastoreName', 'createDatastoreResponse_datastoreName' - The name of the data store.
--
-- 'retentionPeriod', 'createDatastoreResponse_retentionPeriod' - How long, in days, message data is kept for the data store.
--
-- 'httpStatus', 'createDatastoreResponse_httpStatus' - The response's http status code.
newCreateDatastoreResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDatastoreResponse
newCreateDatastoreResponse pHttpStatus_ =
  CreateDatastoreResponse'
    { datastoreArn =
        Prelude.Nothing,
      datastoreName = Prelude.Nothing,
      retentionPeriod = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the data store.
createDatastoreResponse_datastoreArn :: Lens.Lens' CreateDatastoreResponse (Prelude.Maybe Prelude.Text)
createDatastoreResponse_datastoreArn = Lens.lens (\CreateDatastoreResponse' {datastoreArn} -> datastoreArn) (\s@CreateDatastoreResponse' {} a -> s {datastoreArn = a} :: CreateDatastoreResponse)

-- | The name of the data store.
createDatastoreResponse_datastoreName :: Lens.Lens' CreateDatastoreResponse (Prelude.Maybe Prelude.Text)
createDatastoreResponse_datastoreName = Lens.lens (\CreateDatastoreResponse' {datastoreName} -> datastoreName) (\s@CreateDatastoreResponse' {} a -> s {datastoreName = a} :: CreateDatastoreResponse)

-- | How long, in days, message data is kept for the data store.
createDatastoreResponse_retentionPeriod :: Lens.Lens' CreateDatastoreResponse (Prelude.Maybe RetentionPeriod)
createDatastoreResponse_retentionPeriod = Lens.lens (\CreateDatastoreResponse' {retentionPeriod} -> retentionPeriod) (\s@CreateDatastoreResponse' {} a -> s {retentionPeriod = a} :: CreateDatastoreResponse)

-- | The response's http status code.
createDatastoreResponse_httpStatus :: Lens.Lens' CreateDatastoreResponse Prelude.Int
createDatastoreResponse_httpStatus = Lens.lens (\CreateDatastoreResponse' {httpStatus} -> httpStatus) (\s@CreateDatastoreResponse' {} a -> s {httpStatus = a} :: CreateDatastoreResponse)

instance Prelude.NFData CreateDatastoreResponse where
  rnf CreateDatastoreResponse' {..} =
    Prelude.rnf datastoreArn
      `Prelude.seq` Prelude.rnf datastoreName
      `Prelude.seq` Prelude.rnf retentionPeriod
      `Prelude.seq` Prelude.rnf httpStatus

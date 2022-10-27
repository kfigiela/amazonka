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
-- Module      : Amazonka.TimeStreamWrite.CreateDatabase
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Timestream database. If the KMS key is not specified, the
-- database will be encrypted with a Timestream managed KMS key located in
-- your account. Refer to
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk Amazon Web Services managed KMS keys>
-- for more info.
-- <https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html Service quotas apply>.
-- See
-- <https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html code sample>
-- for details.
module Amazonka.TimeStreamWrite.CreateDatabase
  ( -- * Creating a Request
    CreateDatabase (..),
    newCreateDatabase,

    -- * Request Lenses
    createDatabase_tags,
    createDatabase_kmsKeyId,
    createDatabase_databaseName,

    -- * Destructuring the Response
    CreateDatabaseResponse (..),
    newCreateDatabaseResponse,

    -- * Response Lenses
    createDatabaseResponse_database,
    createDatabaseResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.TimeStreamWrite.Types

-- | /See:/ 'newCreateDatabase' smart constructor.
data CreateDatabase = CreateDatabase'
  { -- | A list of key-value pairs to label the table.
    tags :: Prelude.Maybe [Tag],
    -- | The KMS key for the database. If the KMS key is not specified, the
    -- database will be encrypted with a Timestream managed KMS key located in
    -- your account. Refer to
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk Amazon Web Services managed KMS keys>
    -- for more info.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The name of the Timestream database.
    databaseName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatabase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDatabase_tags' - A list of key-value pairs to label the table.
--
-- 'kmsKeyId', 'createDatabase_kmsKeyId' - The KMS key for the database. If the KMS key is not specified, the
-- database will be encrypted with a Timestream managed KMS key located in
-- your account. Refer to
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk Amazon Web Services managed KMS keys>
-- for more info.
--
-- 'databaseName', 'createDatabase_databaseName' - The name of the Timestream database.
newCreateDatabase ::
  -- | 'databaseName'
  Prelude.Text ->
  CreateDatabase
newCreateDatabase pDatabaseName_ =
  CreateDatabase'
    { tags = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      databaseName = pDatabaseName_
    }

-- | A list of key-value pairs to label the table.
createDatabase_tags :: Lens.Lens' CreateDatabase (Prelude.Maybe [Tag])
createDatabase_tags = Lens.lens (\CreateDatabase' {tags} -> tags) (\s@CreateDatabase' {} a -> s {tags = a} :: CreateDatabase) Prelude.. Lens.mapping Lens.coerced

-- | The KMS key for the database. If the KMS key is not specified, the
-- database will be encrypted with a Timestream managed KMS key located in
-- your account. Refer to
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk Amazon Web Services managed KMS keys>
-- for more info.
createDatabase_kmsKeyId :: Lens.Lens' CreateDatabase (Prelude.Maybe Prelude.Text)
createDatabase_kmsKeyId = Lens.lens (\CreateDatabase' {kmsKeyId} -> kmsKeyId) (\s@CreateDatabase' {} a -> s {kmsKeyId = a} :: CreateDatabase)

-- | The name of the Timestream database.
createDatabase_databaseName :: Lens.Lens' CreateDatabase Prelude.Text
createDatabase_databaseName = Lens.lens (\CreateDatabase' {databaseName} -> databaseName) (\s@CreateDatabase' {} a -> s {databaseName = a} :: CreateDatabase)

instance Core.AWSRequest CreateDatabase where
  type
    AWSResponse CreateDatabase =
      CreateDatabaseResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDatabaseResponse'
            Prelude.<$> (x Core..?> "Database")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDatabase where
  hashWithSalt _salt CreateDatabase' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` databaseName

instance Prelude.NFData CreateDatabase where
  rnf CreateDatabase' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf databaseName

instance Core.ToHeaders CreateDatabase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Timestream_20181101.CreateDatabase" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDatabase where
  toJSON CreateDatabase' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            Prelude.Just ("DatabaseName" Core..= databaseName)
          ]
      )

instance Core.ToPath CreateDatabase where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDatabase where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDatabaseResponse' smart constructor.
data CreateDatabaseResponse = CreateDatabaseResponse'
  { -- | The newly created Timestream database.
    database :: Prelude.Maybe Database,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatabaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'database', 'createDatabaseResponse_database' - The newly created Timestream database.
--
-- 'httpStatus', 'createDatabaseResponse_httpStatus' - The response's http status code.
newCreateDatabaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDatabaseResponse
newCreateDatabaseResponse pHttpStatus_ =
  CreateDatabaseResponse'
    { database = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The newly created Timestream database.
createDatabaseResponse_database :: Lens.Lens' CreateDatabaseResponse (Prelude.Maybe Database)
createDatabaseResponse_database = Lens.lens (\CreateDatabaseResponse' {database} -> database) (\s@CreateDatabaseResponse' {} a -> s {database = a} :: CreateDatabaseResponse)

-- | The response's http status code.
createDatabaseResponse_httpStatus :: Lens.Lens' CreateDatabaseResponse Prelude.Int
createDatabaseResponse_httpStatus = Lens.lens (\CreateDatabaseResponse' {httpStatus} -> httpStatus) (\s@CreateDatabaseResponse' {} a -> s {httpStatus = a} :: CreateDatabaseResponse)

instance Prelude.NFData CreateDatabaseResponse where
  rnf CreateDatabaseResponse' {..} =
    Prelude.rnf database
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.KeySpaces.UpdateTable
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds new columns to the table or updates one of the table\'s settings,
-- for example capacity mode, encryption, point-in-time recovery, or ttl
-- settings. Note that you can only update one specific table setting per
-- update operation.
module Amazonka.KeySpaces.UpdateTable
  ( -- * Creating a Request
    UpdateTable (..),
    newUpdateTable,

    -- * Request Lenses
    updateTable_ttl,
    updateTable_pointInTimeRecovery,
    updateTable_capacitySpecification,
    updateTable_encryptionSpecification,
    updateTable_addColumns,
    updateTable_defaultTimeToLive,
    updateTable_keyspaceName,
    updateTable_tableName,

    -- * Destructuring the Response
    UpdateTableResponse (..),
    newUpdateTableResponse,

    -- * Response Lenses
    updateTableResponse_httpStatus,
    updateTableResponse_resourceArn,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KeySpaces.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateTable' smart constructor.
data UpdateTable = UpdateTable'
  { -- | Modifies Time to Live custom settings for the table. The options are:
    --
    -- • @status:enabled@
    --
    -- • @status:disabled@
    --
    -- The default is @status:disabled@. After @ttl@ is enabled, you can\'t
    -- disable it for the table.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html Expiring data by using Amazon Keyspaces Time to Live (TTL)>
    -- in the /Amazon Keyspaces Developer Guide/.
    ttl :: Prelude.Maybe TimeToLive,
    -- | Modifies the @pointInTimeRecovery@ settings of the table. The options
    -- are:
    --
    -- • @ENABLED@
    --
    -- • @DISABLED@
    --
    -- If it\'s not specified, the default is @DISABLED@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html Point-in-time recovery>
    -- in the /Amazon Keyspaces Developer Guide/.
    pointInTimeRecovery :: Prelude.Maybe PointInTimeRecovery,
    -- | Modifies the read\/write throughput capacity mode for the table. The
    -- options are:
    --
    -- • @throughputMode:PAY_PER_REQUEST@ and
    --
    -- • @throughputMode:PROVISIONED@ - Provisioned capacity mode requires
    -- @readCapacityUnits@ and @writeCapacityUnits@ as input.
    --
    -- The default is @throughput_mode:PAY_PER_REQUEST@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html Read\/write capacity modes>
    -- in the /Amazon Keyspaces Developer Guide/.
    capacitySpecification :: Prelude.Maybe CapacitySpecification,
    -- | Modifies the encryption settings of the table. You can choose one of the
    -- following KMS key (KMS key):
    --
    -- • @type:AWS_OWNED_KMS_KEY@ - This key is owned by Amazon Keyspaces.
    --
    -- • @type:CUSTOMER_MANAGED_KMS_KEY@ - This key is stored in your account
    -- and is created, owned, and managed by you. This option requires the
    -- @kms_key_identifier@ of the KMS key in Amazon Resource Name (ARN) format
    -- as input.
    --
    -- The default is @AWS_OWNED_KMS_KEY@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html Encryption at rest>
    -- in the /Amazon Keyspaces Developer Guide/.
    encryptionSpecification :: Prelude.Maybe EncryptionSpecification,
    -- | For each column to be added to the specified table:
    --
    -- • @name@ - The name of the column.
    --
    -- • @type@ - An Amazon Keyspaces data type. For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types Data types>
    -- in the /Amazon Keyspaces Developer Guide/.
    addColumns :: Prelude.Maybe (Prelude.NonEmpty ColumnDefinition),
    -- | The default Time to Live setting in seconds for the table.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl Setting the default TTL value for a table>
    -- in the /Amazon Keyspaces Developer Guide/.
    defaultTimeToLive :: Prelude.Maybe Prelude.Natural,
    -- | The name of the keyspace the specified table is stored in.
    keyspaceName :: Prelude.Text,
    -- | The name of the table.
    tableName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ttl', 'updateTable_ttl' - Modifies Time to Live custom settings for the table. The options are:
--
-- • @status:enabled@
--
-- • @status:disabled@
--
-- The default is @status:disabled@. After @ttl@ is enabled, you can\'t
-- disable it for the table.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html Expiring data by using Amazon Keyspaces Time to Live (TTL)>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'pointInTimeRecovery', 'updateTable_pointInTimeRecovery' - Modifies the @pointInTimeRecovery@ settings of the table. The options
-- are:
--
-- • @ENABLED@
--
-- • @DISABLED@
--
-- If it\'s not specified, the default is @DISABLED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html Point-in-time recovery>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'capacitySpecification', 'updateTable_capacitySpecification' - Modifies the read\/write throughput capacity mode for the table. The
-- options are:
--
-- • @throughputMode:PAY_PER_REQUEST@ and
--
-- • @throughputMode:PROVISIONED@ - Provisioned capacity mode requires
-- @readCapacityUnits@ and @writeCapacityUnits@ as input.
--
-- The default is @throughput_mode:PAY_PER_REQUEST@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html Read\/write capacity modes>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'encryptionSpecification', 'updateTable_encryptionSpecification' - Modifies the encryption settings of the table. You can choose one of the
-- following KMS key (KMS key):
--
-- • @type:AWS_OWNED_KMS_KEY@ - This key is owned by Amazon Keyspaces.
--
-- • @type:CUSTOMER_MANAGED_KMS_KEY@ - This key is stored in your account
-- and is created, owned, and managed by you. This option requires the
-- @kms_key_identifier@ of the KMS key in Amazon Resource Name (ARN) format
-- as input.
--
-- The default is @AWS_OWNED_KMS_KEY@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html Encryption at rest>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'addColumns', 'updateTable_addColumns' - For each column to be added to the specified table:
--
-- • @name@ - The name of the column.
--
-- • @type@ - An Amazon Keyspaces data type. For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types Data types>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'defaultTimeToLive', 'updateTable_defaultTimeToLive' - The default Time to Live setting in seconds for the table.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl Setting the default TTL value for a table>
-- in the /Amazon Keyspaces Developer Guide/.
--
-- 'keyspaceName', 'updateTable_keyspaceName' - The name of the keyspace the specified table is stored in.
--
-- 'tableName', 'updateTable_tableName' - The name of the table.
newUpdateTable ::
  -- | 'keyspaceName'
  Prelude.Text ->
  -- | 'tableName'
  Prelude.Text ->
  UpdateTable
newUpdateTable pKeyspaceName_ pTableName_ =
  UpdateTable'
    { ttl = Prelude.Nothing,
      pointInTimeRecovery = Prelude.Nothing,
      capacitySpecification = Prelude.Nothing,
      encryptionSpecification = Prelude.Nothing,
      addColumns = Prelude.Nothing,
      defaultTimeToLive = Prelude.Nothing,
      keyspaceName = pKeyspaceName_,
      tableName = pTableName_
    }

-- | Modifies Time to Live custom settings for the table. The options are:
--
-- • @status:enabled@
--
-- • @status:disabled@
--
-- The default is @status:disabled@. After @ttl@ is enabled, you can\'t
-- disable it for the table.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html Expiring data by using Amazon Keyspaces Time to Live (TTL)>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_ttl :: Lens.Lens' UpdateTable (Prelude.Maybe TimeToLive)
updateTable_ttl = Lens.lens (\UpdateTable' {ttl} -> ttl) (\s@UpdateTable' {} a -> s {ttl = a} :: UpdateTable)

-- | Modifies the @pointInTimeRecovery@ settings of the table. The options
-- are:
--
-- • @ENABLED@
--
-- • @DISABLED@
--
-- If it\'s not specified, the default is @DISABLED@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html Point-in-time recovery>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_pointInTimeRecovery :: Lens.Lens' UpdateTable (Prelude.Maybe PointInTimeRecovery)
updateTable_pointInTimeRecovery = Lens.lens (\UpdateTable' {pointInTimeRecovery} -> pointInTimeRecovery) (\s@UpdateTable' {} a -> s {pointInTimeRecovery = a} :: UpdateTable)

-- | Modifies the read\/write throughput capacity mode for the table. The
-- options are:
--
-- • @throughputMode:PAY_PER_REQUEST@ and
--
-- • @throughputMode:PROVISIONED@ - Provisioned capacity mode requires
-- @readCapacityUnits@ and @writeCapacityUnits@ as input.
--
-- The default is @throughput_mode:PAY_PER_REQUEST@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html Read\/write capacity modes>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_capacitySpecification :: Lens.Lens' UpdateTable (Prelude.Maybe CapacitySpecification)
updateTable_capacitySpecification = Lens.lens (\UpdateTable' {capacitySpecification} -> capacitySpecification) (\s@UpdateTable' {} a -> s {capacitySpecification = a} :: UpdateTable)

-- | Modifies the encryption settings of the table. You can choose one of the
-- following KMS key (KMS key):
--
-- • @type:AWS_OWNED_KMS_KEY@ - This key is owned by Amazon Keyspaces.
--
-- • @type:CUSTOMER_MANAGED_KMS_KEY@ - This key is stored in your account
-- and is created, owned, and managed by you. This option requires the
-- @kms_key_identifier@ of the KMS key in Amazon Resource Name (ARN) format
-- as input.
--
-- The default is @AWS_OWNED_KMS_KEY@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html Encryption at rest>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_encryptionSpecification :: Lens.Lens' UpdateTable (Prelude.Maybe EncryptionSpecification)
updateTable_encryptionSpecification = Lens.lens (\UpdateTable' {encryptionSpecification} -> encryptionSpecification) (\s@UpdateTable' {} a -> s {encryptionSpecification = a} :: UpdateTable)

-- | For each column to be added to the specified table:
--
-- • @name@ - The name of the column.
--
-- • @type@ - An Amazon Keyspaces data type. For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types Data types>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_addColumns :: Lens.Lens' UpdateTable (Prelude.Maybe (Prelude.NonEmpty ColumnDefinition))
updateTable_addColumns = Lens.lens (\UpdateTable' {addColumns} -> addColumns) (\s@UpdateTable' {} a -> s {addColumns = a} :: UpdateTable) Prelude.. Lens.mapping Lens.coerced

-- | The default Time to Live setting in seconds for the table.
--
-- For more information, see
-- <https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl Setting the default TTL value for a table>
-- in the /Amazon Keyspaces Developer Guide/.
updateTable_defaultTimeToLive :: Lens.Lens' UpdateTable (Prelude.Maybe Prelude.Natural)
updateTable_defaultTimeToLive = Lens.lens (\UpdateTable' {defaultTimeToLive} -> defaultTimeToLive) (\s@UpdateTable' {} a -> s {defaultTimeToLive = a} :: UpdateTable)

-- | The name of the keyspace the specified table is stored in.
updateTable_keyspaceName :: Lens.Lens' UpdateTable Prelude.Text
updateTable_keyspaceName = Lens.lens (\UpdateTable' {keyspaceName} -> keyspaceName) (\s@UpdateTable' {} a -> s {keyspaceName = a} :: UpdateTable)

-- | The name of the table.
updateTable_tableName :: Lens.Lens' UpdateTable Prelude.Text
updateTable_tableName = Lens.lens (\UpdateTable' {tableName} -> tableName) (\s@UpdateTable' {} a -> s {tableName = a} :: UpdateTable)

instance Core.AWSRequest UpdateTable where
  type AWSResponse UpdateTable = UpdateTableResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTableResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "resourceArn")
      )

instance Prelude.Hashable UpdateTable where
  hashWithSalt _salt UpdateTable' {..} =
    _salt `Prelude.hashWithSalt` ttl
      `Prelude.hashWithSalt` pointInTimeRecovery
      `Prelude.hashWithSalt` capacitySpecification
      `Prelude.hashWithSalt` encryptionSpecification
      `Prelude.hashWithSalt` addColumns
      `Prelude.hashWithSalt` defaultTimeToLive
      `Prelude.hashWithSalt` keyspaceName
      `Prelude.hashWithSalt` tableName

instance Prelude.NFData UpdateTable where
  rnf UpdateTable' {..} =
    Prelude.rnf ttl
      `Prelude.seq` Prelude.rnf pointInTimeRecovery
      `Prelude.seq` Prelude.rnf capacitySpecification
      `Prelude.seq` Prelude.rnf encryptionSpecification
      `Prelude.seq` Prelude.rnf addColumns
      `Prelude.seq` Prelude.rnf defaultTimeToLive
      `Prelude.seq` Prelude.rnf keyspaceName
      `Prelude.seq` Prelude.rnf tableName

instance Core.ToHeaders UpdateTable where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KeyspacesService.UpdateTable" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTable where
  toJSON UpdateTable' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ttl" Core..=) Prelude.<$> ttl,
            ("pointInTimeRecovery" Core..=)
              Prelude.<$> pointInTimeRecovery,
            ("capacitySpecification" Core..=)
              Prelude.<$> capacitySpecification,
            ("encryptionSpecification" Core..=)
              Prelude.<$> encryptionSpecification,
            ("addColumns" Core..=) Prelude.<$> addColumns,
            ("defaultTimeToLive" Core..=)
              Prelude.<$> defaultTimeToLive,
            Prelude.Just ("keyspaceName" Core..= keyspaceName),
            Prelude.Just ("tableName" Core..= tableName)
          ]
      )

instance Core.ToPath UpdateTable where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateTable where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTableResponse' smart constructor.
data UpdateTableResponse = UpdateTableResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the modified table.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTableResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateTableResponse_httpStatus' - The response's http status code.
--
-- 'resourceArn', 'updateTableResponse_resourceArn' - The Amazon Resource Name (ARN) of the modified table.
newUpdateTableResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'resourceArn'
  Prelude.Text ->
  UpdateTableResponse
newUpdateTableResponse pHttpStatus_ pResourceArn_ =
  UpdateTableResponse'
    { httpStatus = pHttpStatus_,
      resourceArn = pResourceArn_
    }

-- | The response's http status code.
updateTableResponse_httpStatus :: Lens.Lens' UpdateTableResponse Prelude.Int
updateTableResponse_httpStatus = Lens.lens (\UpdateTableResponse' {httpStatus} -> httpStatus) (\s@UpdateTableResponse' {} a -> s {httpStatus = a} :: UpdateTableResponse)

-- | The Amazon Resource Name (ARN) of the modified table.
updateTableResponse_resourceArn :: Lens.Lens' UpdateTableResponse Prelude.Text
updateTableResponse_resourceArn = Lens.lens (\UpdateTableResponse' {resourceArn} -> resourceArn) (\s@UpdateTableResponse' {} a -> s {resourceArn = a} :: UpdateTableResponse)

instance Prelude.NFData UpdateTableResponse where
  rnf UpdateTableResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf resourceArn

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
-- Module      : Amazonka.QLDB.UpdateLedger
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates properties on a ledger.
module Amazonka.QLDB.UpdateLedger
  ( -- * Creating a Request
    UpdateLedger (..),
    newUpdateLedger,

    -- * Request Lenses
    updateLedger_kmsKey,
    updateLedger_deletionProtection,
    updateLedger_name,

    -- * Destructuring the Response
    UpdateLedgerResponse (..),
    newUpdateLedgerResponse,

    -- * Response Lenses
    updateLedgerResponse_name,
    updateLedgerResponse_creationDateTime,
    updateLedgerResponse_arn,
    updateLedgerResponse_state,
    updateLedgerResponse_encryptionDescription,
    updateLedgerResponse_deletionProtection,
    updateLedgerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QLDB.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLedger' smart constructor.
data UpdateLedger = UpdateLedger'
  { -- | The key in Key Management Service (KMS) to use for encryption of data at
    -- rest in the ledger. For more information, see
    -- <https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html Encryption at rest>
    -- in the /Amazon QLDB Developer Guide/.
    --
    -- Use one of the following options to specify this parameter:
    --
    -- -   @AWS_OWNED_KMS_KEY@: Use an KMS key that is owned and managed by
    --     Amazon Web Services on your behalf.
    --
    -- -   __Undefined__: Make no changes to the KMS key of the ledger.
    --
    -- -   __A valid symmetric customer managed KMS key__: Use the specified
    --     KMS key in your account that you create, own, and manage.
    --
    --     Amazon QLDB does not support asymmetric keys. For more information,
    --     see
    --     <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
    --     in the /Key Management Service Developer Guide/.
    --
    -- To specify a customer managed KMS key, you can use its key ID, Amazon
    -- Resource Name (ARN), alias name, or alias ARN. When using an alias name,
    -- prefix it with @\"alias\/\"@. To specify a key in a different Amazon Web
    -- Services account, you must use the key ARN or alias ARN.
    --
    -- For example:
    --
    -- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- -   Key ARN:
    --     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- -   Alias name: @alias\/ExampleAlias@
    --
    -- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id Key identifiers (KeyId)>
    -- in the /Key Management Service Developer Guide/.
    kmsKey :: Prelude.Maybe Prelude.Text,
    -- | The flag that prevents a ledger from being deleted by any user. If not
    -- provided on ledger creation, this feature is enabled (@true@) by
    -- default.
    --
    -- If deletion protection is enabled, you must first disable it before you
    -- can delete the ledger. You can disable it by calling the @UpdateLedger@
    -- operation to set the flag to @false@.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | The name of the ledger.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLedger' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKey', 'updateLedger_kmsKey' - The key in Key Management Service (KMS) to use for encryption of data at
-- rest in the ledger. For more information, see
-- <https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html Encryption at rest>
-- in the /Amazon QLDB Developer Guide/.
--
-- Use one of the following options to specify this parameter:
--
-- -   @AWS_OWNED_KMS_KEY@: Use an KMS key that is owned and managed by
--     Amazon Web Services on your behalf.
--
-- -   __Undefined__: Make no changes to the KMS key of the ledger.
--
-- -   __A valid symmetric customer managed KMS key__: Use the specified
--     KMS key in your account that you create, own, and manage.
--
--     Amazon QLDB does not support asymmetric keys. For more information,
--     see
--     <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
--     in the /Key Management Service Developer Guide/.
--
-- To specify a customer managed KMS key, you can use its key ID, Amazon
-- Resource Name (ARN), alias name, or alias ARN. When using an alias name,
-- prefix it with @\"alias\/\"@. To specify a key in a different Amazon Web
-- Services account, you must use the key ARN or alias ARN.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Alias name: @alias\/ExampleAlias@
--
-- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id Key identifiers (KeyId)>
-- in the /Key Management Service Developer Guide/.
--
-- 'deletionProtection', 'updateLedger_deletionProtection' - The flag that prevents a ledger from being deleted by any user. If not
-- provided on ledger creation, this feature is enabled (@true@) by
-- default.
--
-- If deletion protection is enabled, you must first disable it before you
-- can delete the ledger. You can disable it by calling the @UpdateLedger@
-- operation to set the flag to @false@.
--
-- 'name', 'updateLedger_name' - The name of the ledger.
newUpdateLedger ::
  -- | 'name'
  Prelude.Text ->
  UpdateLedger
newUpdateLedger pName_ =
  UpdateLedger'
    { kmsKey = Prelude.Nothing,
      deletionProtection = Prelude.Nothing,
      name = pName_
    }

-- | The key in Key Management Service (KMS) to use for encryption of data at
-- rest in the ledger. For more information, see
-- <https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html Encryption at rest>
-- in the /Amazon QLDB Developer Guide/.
--
-- Use one of the following options to specify this parameter:
--
-- -   @AWS_OWNED_KMS_KEY@: Use an KMS key that is owned and managed by
--     Amazon Web Services on your behalf.
--
-- -   __Undefined__: Make no changes to the KMS key of the ledger.
--
-- -   __A valid symmetric customer managed KMS key__: Use the specified
--     KMS key in your account that you create, own, and manage.
--
--     Amazon QLDB does not support asymmetric keys. For more information,
--     see
--     <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
--     in the /Key Management Service Developer Guide/.
--
-- To specify a customer managed KMS key, you can use its key ID, Amazon
-- Resource Name (ARN), alias name, or alias ARN. When using an alias name,
-- prefix it with @\"alias\/\"@. To specify a key in a different Amazon Web
-- Services account, you must use the key ARN or alias ARN.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Alias name: @alias\/ExampleAlias@
--
-- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id Key identifiers (KeyId)>
-- in the /Key Management Service Developer Guide/.
updateLedger_kmsKey :: Lens.Lens' UpdateLedger (Prelude.Maybe Prelude.Text)
updateLedger_kmsKey = Lens.lens (\UpdateLedger' {kmsKey} -> kmsKey) (\s@UpdateLedger' {} a -> s {kmsKey = a} :: UpdateLedger)

-- | The flag that prevents a ledger from being deleted by any user. If not
-- provided on ledger creation, this feature is enabled (@true@) by
-- default.
--
-- If deletion protection is enabled, you must first disable it before you
-- can delete the ledger. You can disable it by calling the @UpdateLedger@
-- operation to set the flag to @false@.
updateLedger_deletionProtection :: Lens.Lens' UpdateLedger (Prelude.Maybe Prelude.Bool)
updateLedger_deletionProtection = Lens.lens (\UpdateLedger' {deletionProtection} -> deletionProtection) (\s@UpdateLedger' {} a -> s {deletionProtection = a} :: UpdateLedger)

-- | The name of the ledger.
updateLedger_name :: Lens.Lens' UpdateLedger Prelude.Text
updateLedger_name = Lens.lens (\UpdateLedger' {name} -> name) (\s@UpdateLedger' {} a -> s {name = a} :: UpdateLedger)

instance Core.AWSRequest UpdateLedger where
  type AWSResponse UpdateLedger = UpdateLedgerResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLedgerResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "CreationDateTime")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (x Core..?> "EncryptionDescription")
            Prelude.<*> (x Core..?> "DeletionProtection")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLedger where
  hashWithSalt _salt UpdateLedger' {..} =
    _salt `Prelude.hashWithSalt` kmsKey
      `Prelude.hashWithSalt` deletionProtection
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateLedger where
  rnf UpdateLedger' {..} =
    Prelude.rnf kmsKey
      `Prelude.seq` Prelude.rnf deletionProtection
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateLedger where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLedger where
  toJSON UpdateLedger' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKey" Core..=) Prelude.<$> kmsKey,
            ("DeletionProtection" Core..=)
              Prelude.<$> deletionProtection
          ]
      )

instance Core.ToPath UpdateLedger where
  toPath UpdateLedger' {..} =
    Prelude.mconcat ["/ledgers/", Core.toBS name]

instance Core.ToQuery UpdateLedger where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLedgerResponse' smart constructor.
data UpdateLedgerResponse = UpdateLedgerResponse'
  { -- | The name of the ledger.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date and time, in epoch time format, when the ledger was created.
    -- (Epoch time format is the number of seconds elapsed since 12:00:00 AM
    -- January 1, 1970 UTC.)
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) for the ledger.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the ledger.
    state :: Prelude.Maybe LedgerState,
    -- | Information about the encryption of data at rest in the ledger. This
    -- includes the current status, the KMS key, and when the key became
    -- inaccessible (in the case of an error).
    encryptionDescription :: Prelude.Maybe LedgerEncryptionDescription,
    -- | The flag that prevents a ledger from being deleted by any user. If not
    -- provided on ledger creation, this feature is enabled (@true@) by
    -- default.
    --
    -- If deletion protection is enabled, you must first disable it before you
    -- can delete the ledger. You can disable it by calling the @UpdateLedger@
    -- operation to set the flag to @false@.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLedgerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateLedgerResponse_name' - The name of the ledger.
--
-- 'creationDateTime', 'updateLedgerResponse_creationDateTime' - The date and time, in epoch time format, when the ledger was created.
-- (Epoch time format is the number of seconds elapsed since 12:00:00 AM
-- January 1, 1970 UTC.)
--
-- 'arn', 'updateLedgerResponse_arn' - The Amazon Resource Name (ARN) for the ledger.
--
-- 'state', 'updateLedgerResponse_state' - The current status of the ledger.
--
-- 'encryptionDescription', 'updateLedgerResponse_encryptionDescription' - Information about the encryption of data at rest in the ledger. This
-- includes the current status, the KMS key, and when the key became
-- inaccessible (in the case of an error).
--
-- 'deletionProtection', 'updateLedgerResponse_deletionProtection' - The flag that prevents a ledger from being deleted by any user. If not
-- provided on ledger creation, this feature is enabled (@true@) by
-- default.
--
-- If deletion protection is enabled, you must first disable it before you
-- can delete the ledger. You can disable it by calling the @UpdateLedger@
-- operation to set the flag to @false@.
--
-- 'httpStatus', 'updateLedgerResponse_httpStatus' - The response's http status code.
newUpdateLedgerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLedgerResponse
newUpdateLedgerResponse pHttpStatus_ =
  UpdateLedgerResponse'
    { name = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      encryptionDescription = Prelude.Nothing,
      deletionProtection = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the ledger.
updateLedgerResponse_name :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe Prelude.Text)
updateLedgerResponse_name = Lens.lens (\UpdateLedgerResponse' {name} -> name) (\s@UpdateLedgerResponse' {} a -> s {name = a} :: UpdateLedgerResponse)

-- | The date and time, in epoch time format, when the ledger was created.
-- (Epoch time format is the number of seconds elapsed since 12:00:00 AM
-- January 1, 1970 UTC.)
updateLedgerResponse_creationDateTime :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe Prelude.UTCTime)
updateLedgerResponse_creationDateTime = Lens.lens (\UpdateLedgerResponse' {creationDateTime} -> creationDateTime) (\s@UpdateLedgerResponse' {} a -> s {creationDateTime = a} :: UpdateLedgerResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) for the ledger.
updateLedgerResponse_arn :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe Prelude.Text)
updateLedgerResponse_arn = Lens.lens (\UpdateLedgerResponse' {arn} -> arn) (\s@UpdateLedgerResponse' {} a -> s {arn = a} :: UpdateLedgerResponse)

-- | The current status of the ledger.
updateLedgerResponse_state :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe LedgerState)
updateLedgerResponse_state = Lens.lens (\UpdateLedgerResponse' {state} -> state) (\s@UpdateLedgerResponse' {} a -> s {state = a} :: UpdateLedgerResponse)

-- | Information about the encryption of data at rest in the ledger. This
-- includes the current status, the KMS key, and when the key became
-- inaccessible (in the case of an error).
updateLedgerResponse_encryptionDescription :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe LedgerEncryptionDescription)
updateLedgerResponse_encryptionDescription = Lens.lens (\UpdateLedgerResponse' {encryptionDescription} -> encryptionDescription) (\s@UpdateLedgerResponse' {} a -> s {encryptionDescription = a} :: UpdateLedgerResponse)

-- | The flag that prevents a ledger from being deleted by any user. If not
-- provided on ledger creation, this feature is enabled (@true@) by
-- default.
--
-- If deletion protection is enabled, you must first disable it before you
-- can delete the ledger. You can disable it by calling the @UpdateLedger@
-- operation to set the flag to @false@.
updateLedgerResponse_deletionProtection :: Lens.Lens' UpdateLedgerResponse (Prelude.Maybe Prelude.Bool)
updateLedgerResponse_deletionProtection = Lens.lens (\UpdateLedgerResponse' {deletionProtection} -> deletionProtection) (\s@UpdateLedgerResponse' {} a -> s {deletionProtection = a} :: UpdateLedgerResponse)

-- | The response's http status code.
updateLedgerResponse_httpStatus :: Lens.Lens' UpdateLedgerResponse Prelude.Int
updateLedgerResponse_httpStatus = Lens.lens (\UpdateLedgerResponse' {httpStatus} -> httpStatus) (\s@UpdateLedgerResponse' {} a -> s {httpStatus = a} :: UpdateLedgerResponse)

instance Prelude.NFData UpdateLedgerResponse where
  rnf UpdateLedgerResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf encryptionDescription
      `Prelude.seq` Prelude.rnf deletionProtection
      `Prelude.seq` Prelude.rnf httpStatus

{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.Types.EncryptionConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.EncryptionConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | Specifies encryption-related information for an Amazon S3 bucket that is
-- a destination for replicated objects.
--
-- /See:/ 'newEncryptionConfiguration' smart constructor.
data EncryptionConfiguration = EncryptionConfiguration'
  { -- | Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon
    -- Web Services KMS key stored in Amazon Web Services Key Management
    -- Service (KMS) for the destination bucket. Amazon S3 uses this key to
    -- encrypt replica objects. Amazon S3 only supports symmetric, customer
    -- managed KMS keys. For more information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
    -- in the /Amazon Web Services Key Management Service Developer Guide/.
    replicaKmsKeyID :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncryptionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicaKmsKeyID', 'encryptionConfiguration_replicaKmsKeyID' - Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon
-- Web Services KMS key stored in Amazon Web Services Key Management
-- Service (KMS) for the destination bucket. Amazon S3 uses this key to
-- encrypt replica objects. Amazon S3 only supports symmetric, customer
-- managed KMS keys. For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
-- in the /Amazon Web Services Key Management Service Developer Guide/.
newEncryptionConfiguration ::
  EncryptionConfiguration
newEncryptionConfiguration =
  EncryptionConfiguration'
    { replicaKmsKeyID =
        Prelude.Nothing
    }

-- | Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon
-- Web Services KMS key stored in Amazon Web Services Key Management
-- Service (KMS) for the destination bucket. Amazon S3 uses this key to
-- encrypt replica objects. Amazon S3 only supports symmetric, customer
-- managed KMS keys. For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using symmetric and asymmetric keys>
-- in the /Amazon Web Services Key Management Service Developer Guide/.
encryptionConfiguration_replicaKmsKeyID :: Lens.Lens' EncryptionConfiguration (Prelude.Maybe Prelude.Text)
encryptionConfiguration_replicaKmsKeyID = Lens.lens (\EncryptionConfiguration' {replicaKmsKeyID} -> replicaKmsKeyID) (\s@EncryptionConfiguration' {} a -> s {replicaKmsKeyID = a} :: EncryptionConfiguration)

instance Core.FromXML EncryptionConfiguration where
  parseXML x =
    EncryptionConfiguration'
      Prelude.<$> (x Core..@? "ReplicaKmsKeyID")

instance Prelude.Hashable EncryptionConfiguration where
  hashWithSalt _salt EncryptionConfiguration' {..} =
    _salt `Prelude.hashWithSalt` replicaKmsKeyID

instance Prelude.NFData EncryptionConfiguration where
  rnf EncryptionConfiguration' {..} =
    Prelude.rnf replicaKmsKeyID

instance Core.ToXML EncryptionConfiguration where
  toXML EncryptionConfiguration' {..} =
    Prelude.mconcat
      ["ReplicaKmsKeyID" Core.@= replicaKmsKeyID]

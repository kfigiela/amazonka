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
-- Module      : Amazonka.KMS.Encrypt
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a
-- symmetric or asymmetric KMS key with a @KeyUsage@ of @ENCRYPT_DECRYPT@.
--
-- You can use this operation to encrypt small amounts of arbitrary data,
-- such as a personal identifier or database password, or other sensitive
-- information. You don\'t need to use the @Encrypt@ operation to encrypt a
-- data key. The GenerateDataKey and GenerateDataKeyPair operations return
-- a plaintext data key and an encrypted copy of that data key.
--
-- If you use a symmetric encryption KMS key, you can use an encryption
-- context to add additional security to your encryption operation. If you
-- specify an @EncryptionContext@ when encrypting data, you must specify
-- the same encryption context (a case-sensitive exact match) when
-- decrypting the data. Otherwise, the request to decrypt fails with an
-- @InvalidCiphertextException@. For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context>
-- in the /Key Management Service Developer Guide/.
--
-- If you specify an asymmetric KMS key, you must also specify the
-- encryption algorithm. The algorithm must be compatible with the KMS key
-- spec.
--
-- When you use an asymmetric KMS key to encrypt or reencrypt data, be sure
-- to record the KMS key and encryption algorithm that you choose. You will
-- be required to provide the same KMS key and encryption algorithm when
-- you decrypt the data. If the KMS key and algorithm do not match the
-- values used to encrypt the data, the decrypt operation fails.
--
-- You are not required to supply the key ID and encryption algorithm when
-- you decrypt with symmetric encryption KMS keys because KMS stores this
-- information in the ciphertext blob. KMS cannot store metadata in
-- ciphertext generated with asymmetric keys. The standard format for
-- asymmetric key ciphertext does not include configurable fields.
--
-- The maximum size of the data that you can encrypt varies with the type
-- of KMS key and the encryption algorithm that you choose.
--
-- -   Symmetric encryption KMS keys
--
--     -   @SYMMETRIC_DEFAULT@: 4096 bytes
--
-- -   @RSA_2048@
--
--     -   @RSAES_OAEP_SHA_1@: 214 bytes
--
--     -   @RSAES_OAEP_SHA_256@: 190 bytes
--
-- -   @RSA_3072@
--
--     -   @RSAES_OAEP_SHA_1@: 342 bytes
--
--     -   @RSAES_OAEP_SHA_256@: 318 bytes
--
-- -   @RSA_4096@
--
--     -   @RSAES_OAEP_SHA_1@: 470 bytes
--
--     -   @RSAES_OAEP_SHA_256@: 446 bytes
--
-- -   @SM2PKE@: 1024 bytes (China Regions only)
--
-- The KMS key that you use for this operation must be in a compatible key
-- state. For details, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key states of KMS keys>
-- in the /Key Management Service Developer Guide/.
--
-- __Cross-account use__: Yes. To perform this operation with a KMS key in
-- a different Amazon Web Services account, specify the key ARN or alias
-- ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__:
-- <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:Encrypt>
-- (key policy)
--
-- __Related operations:__
--
-- -   Decrypt
--
-- -   GenerateDataKey
--
-- -   GenerateDataKeyPair
module Amazonka.KMS.Encrypt
  ( -- * Creating a Request
    Encrypt (..),
    newEncrypt,

    -- * Request Lenses
    encrypt_encryptionAlgorithm,
    encrypt_grantTokens,
    encrypt_encryptionContext,
    encrypt_keyId,
    encrypt_plaintext,

    -- * Destructuring the Response
    EncryptResponse (..),
    newEncryptResponse,

    -- * Response Lenses
    encryptResponse_encryptionAlgorithm,
    encryptResponse_ciphertextBlob,
    encryptResponse_keyId,
    encryptResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newEncrypt' smart constructor.
data Encrypt = Encrypt'
  { -- | Specifies the encryption algorithm that KMS will use to encrypt the
    -- plaintext message. The algorithm must be compatible with the KMS key
    -- that you specify.
    --
    -- This parameter is required only for asymmetric KMS keys. The default
    -- value, @SYMMETRIC_DEFAULT@, is the algorithm used for symmetric
    -- encryption KMS keys. If you are using an asymmetric KMS key, we
    -- recommend RSAES_OAEP_SHA_256.
    encryptionAlgorithm :: Prelude.Maybe EncryptionAlgorithmSpec,
    -- | A list of grant tokens.
    --
    -- Use a grant token when your permission to call this operation comes from
    -- a new grant that has not yet achieved /eventual consistency/. For more
    -- information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
    -- and
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
    -- in the /Key Management Service Developer Guide/.
    grantTokens :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the encryption context that will be used to encrypt the data.
    -- An encryption context is valid only for
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations>
    -- with a symmetric encryption KMS key. The standard asymmetric encryption
    -- algorithms and HMAC algorithms that KMS uses do not support an
    -- encryption context.
    --
    -- An /encryption context/ is a collection of non-secret key-value pairs
    -- that represent additional authenticated data. When you use an encryption
    -- context to encrypt data, you must specify the same (an exact
    -- case-sensitive match) encryption context to decrypt the data. An
    -- encryption context is supported only on operations with symmetric
    -- encryption KMS keys. On operations with symmetric encryption KMS keys,
    -- an encryption context is optional, but it is strongly recommended.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption context>
    -- in the /Key Management Service Developer Guide/.
    encryptionContext :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Identifies the KMS key to use in the encryption operation. The KMS key
    -- must have a @KeyUsage@ of @ENCRYPT_DECRYPT@. To find the @KeyUsage@ of a
    -- KMS key, use the DescribeKey operation.
    --
    -- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
    -- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
    -- key in a different Amazon Web Services account, you must use the key ARN
    -- or alias ARN.
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
    -- To get the key ID and key ARN for a KMS key, use ListKeys or
    -- DescribeKey. To get the alias name and alias ARN, use ListAliases.
    keyId :: Prelude.Text,
    -- | Data to be encrypted.
    plaintext :: Core.Sensitive Core.Base64
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Encrypt' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionAlgorithm', 'encrypt_encryptionAlgorithm' - Specifies the encryption algorithm that KMS will use to encrypt the
-- plaintext message. The algorithm must be compatible with the KMS key
-- that you specify.
--
-- This parameter is required only for asymmetric KMS keys. The default
-- value, @SYMMETRIC_DEFAULT@, is the algorithm used for symmetric
-- encryption KMS keys. If you are using an asymmetric KMS key, we
-- recommend RSAES_OAEP_SHA_256.
--
-- 'grantTokens', 'encrypt_grantTokens' - A list of grant tokens.
--
-- Use a grant token when your permission to call this operation comes from
-- a new grant that has not yet achieved /eventual consistency/. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
-- and
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
-- in the /Key Management Service Developer Guide/.
--
-- 'encryptionContext', 'encrypt_encryptionContext' - Specifies the encryption context that will be used to encrypt the data.
-- An encryption context is valid only for
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations>
-- with a symmetric encryption KMS key. The standard asymmetric encryption
-- algorithms and HMAC algorithms that KMS uses do not support an
-- encryption context.
--
-- An /encryption context/ is a collection of non-secret key-value pairs
-- that represent additional authenticated data. When you use an encryption
-- context to encrypt data, you must specify the same (an exact
-- case-sensitive match) encryption context to decrypt the data. An
-- encryption context is supported only on operations with symmetric
-- encryption KMS keys. On operations with symmetric encryption KMS keys,
-- an encryption context is optional, but it is strongly recommended.
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption context>
-- in the /Key Management Service Developer Guide/.
--
-- 'keyId', 'encrypt_keyId' - Identifies the KMS key to use in the encryption operation. The KMS key
-- must have a @KeyUsage@ of @ENCRYPT_DECRYPT@. To find the @KeyUsage@ of a
-- KMS key, use the DescribeKey operation.
--
-- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
-- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
-- key in a different Amazon Web Services account, you must use the key ARN
-- or alias ARN.
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
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey. To get the alias name and alias ARN, use ListAliases.
--
-- 'plaintext', 'encrypt_plaintext' - Data to be encrypted.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newEncrypt ::
  -- | 'keyId'
  Prelude.Text ->
  -- | 'plaintext'
  Prelude.ByteString ->
  Encrypt
newEncrypt pKeyId_ pPlaintext_ =
  Encrypt'
    { encryptionAlgorithm = Prelude.Nothing,
      grantTokens = Prelude.Nothing,
      encryptionContext = Prelude.Nothing,
      keyId = pKeyId_,
      plaintext =
        Core._Sensitive Prelude.. Core._Base64
          Lens.# pPlaintext_
    }

-- | Specifies the encryption algorithm that KMS will use to encrypt the
-- plaintext message. The algorithm must be compatible with the KMS key
-- that you specify.
--
-- This parameter is required only for asymmetric KMS keys. The default
-- value, @SYMMETRIC_DEFAULT@, is the algorithm used for symmetric
-- encryption KMS keys. If you are using an asymmetric KMS key, we
-- recommend RSAES_OAEP_SHA_256.
encrypt_encryptionAlgorithm :: Lens.Lens' Encrypt (Prelude.Maybe EncryptionAlgorithmSpec)
encrypt_encryptionAlgorithm = Lens.lens (\Encrypt' {encryptionAlgorithm} -> encryptionAlgorithm) (\s@Encrypt' {} a -> s {encryptionAlgorithm = a} :: Encrypt)

-- | A list of grant tokens.
--
-- Use a grant token when your permission to call this operation comes from
-- a new grant that has not yet achieved /eventual consistency/. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
-- and
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
-- in the /Key Management Service Developer Guide/.
encrypt_grantTokens :: Lens.Lens' Encrypt (Prelude.Maybe [Prelude.Text])
encrypt_grantTokens = Lens.lens (\Encrypt' {grantTokens} -> grantTokens) (\s@Encrypt' {} a -> s {grantTokens = a} :: Encrypt) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the encryption context that will be used to encrypt the data.
-- An encryption context is valid only for
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations>
-- with a symmetric encryption KMS key. The standard asymmetric encryption
-- algorithms and HMAC algorithms that KMS uses do not support an
-- encryption context.
--
-- An /encryption context/ is a collection of non-secret key-value pairs
-- that represent additional authenticated data. When you use an encryption
-- context to encrypt data, you must specify the same (an exact
-- case-sensitive match) encryption context to decrypt the data. An
-- encryption context is supported only on operations with symmetric
-- encryption KMS keys. On operations with symmetric encryption KMS keys,
-- an encryption context is optional, but it is strongly recommended.
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption context>
-- in the /Key Management Service Developer Guide/.
encrypt_encryptionContext :: Lens.Lens' Encrypt (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
encrypt_encryptionContext = Lens.lens (\Encrypt' {encryptionContext} -> encryptionContext) (\s@Encrypt' {} a -> s {encryptionContext = a} :: Encrypt) Prelude.. Lens.mapping Lens.coerced

-- | Identifies the KMS key to use in the encryption operation. The KMS key
-- must have a @KeyUsage@ of @ENCRYPT_DECRYPT@. To find the @KeyUsage@ of a
-- KMS key, use the DescribeKey operation.
--
-- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
-- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
-- key in a different Amazon Web Services account, you must use the key ARN
-- or alias ARN.
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
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey. To get the alias name and alias ARN, use ListAliases.
encrypt_keyId :: Lens.Lens' Encrypt Prelude.Text
encrypt_keyId = Lens.lens (\Encrypt' {keyId} -> keyId) (\s@Encrypt' {} a -> s {keyId = a} :: Encrypt)

-- | Data to be encrypted.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
encrypt_plaintext :: Lens.Lens' Encrypt Prelude.ByteString
encrypt_plaintext = Lens.lens (\Encrypt' {plaintext} -> plaintext) (\s@Encrypt' {} a -> s {plaintext = a} :: Encrypt) Prelude.. Core._Sensitive Prelude.. Core._Base64

instance Core.AWSRequest Encrypt where
  type AWSResponse Encrypt = EncryptResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          EncryptResponse'
            Prelude.<$> (x Core..?> "EncryptionAlgorithm")
            Prelude.<*> (x Core..?> "CiphertextBlob")
            Prelude.<*> (x Core..?> "KeyId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable Encrypt where
  hashWithSalt _salt Encrypt' {..} =
    _salt `Prelude.hashWithSalt` encryptionAlgorithm
      `Prelude.hashWithSalt` grantTokens
      `Prelude.hashWithSalt` encryptionContext
      `Prelude.hashWithSalt` keyId
      `Prelude.hashWithSalt` plaintext

instance Prelude.NFData Encrypt where
  rnf Encrypt' {..} =
    Prelude.rnf encryptionAlgorithm
      `Prelude.seq` Prelude.rnf grantTokens
      `Prelude.seq` Prelude.rnf encryptionContext
      `Prelude.seq` Prelude.rnf keyId
      `Prelude.seq` Prelude.rnf plaintext

instance Core.ToHeaders Encrypt where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("TrentService.Encrypt" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON Encrypt where
  toJSON Encrypt' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EncryptionAlgorithm" Core..=)
              Prelude.<$> encryptionAlgorithm,
            ("GrantTokens" Core..=) Prelude.<$> grantTokens,
            ("EncryptionContext" Core..=)
              Prelude.<$> encryptionContext,
            Prelude.Just ("KeyId" Core..= keyId),
            Prelude.Just ("Plaintext" Core..= plaintext)
          ]
      )

instance Core.ToPath Encrypt where
  toPath = Prelude.const "/"

instance Core.ToQuery Encrypt where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newEncryptResponse' smart constructor.
data EncryptResponse = EncryptResponse'
  { -- | The encryption algorithm that was used to encrypt the plaintext.
    encryptionAlgorithm :: Prelude.Maybe EncryptionAlgorithmSpec,
    -- | The encrypted plaintext. When you use the HTTP API or the Amazon Web
    -- Services CLI, the value is Base64-encoded. Otherwise, it is not
    -- Base64-encoded.
    ciphertextBlob :: Prelude.Maybe Core.Base64,
    -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
    -- of the KMS key that was used to encrypt the plaintext.
    keyId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncryptResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionAlgorithm', 'encryptResponse_encryptionAlgorithm' - The encryption algorithm that was used to encrypt the plaintext.
--
-- 'ciphertextBlob', 'encryptResponse_ciphertextBlob' - The encrypted plaintext. When you use the HTTP API or the Amazon Web
-- Services CLI, the value is Base64-encoded. Otherwise, it is not
-- Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'keyId', 'encryptResponse_keyId' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
-- of the KMS key that was used to encrypt the plaintext.
--
-- 'httpStatus', 'encryptResponse_httpStatus' - The response's http status code.
newEncryptResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  EncryptResponse
newEncryptResponse pHttpStatus_ =
  EncryptResponse'
    { encryptionAlgorithm =
        Prelude.Nothing,
      ciphertextBlob = Prelude.Nothing,
      keyId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The encryption algorithm that was used to encrypt the plaintext.
encryptResponse_encryptionAlgorithm :: Lens.Lens' EncryptResponse (Prelude.Maybe EncryptionAlgorithmSpec)
encryptResponse_encryptionAlgorithm = Lens.lens (\EncryptResponse' {encryptionAlgorithm} -> encryptionAlgorithm) (\s@EncryptResponse' {} a -> s {encryptionAlgorithm = a} :: EncryptResponse)

-- | The encrypted plaintext. When you use the HTTP API or the Amazon Web
-- Services CLI, the value is Base64-encoded. Otherwise, it is not
-- Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
encryptResponse_ciphertextBlob :: Lens.Lens' EncryptResponse (Prelude.Maybe Prelude.ByteString)
encryptResponse_ciphertextBlob = Lens.lens (\EncryptResponse' {ciphertextBlob} -> ciphertextBlob) (\s@EncryptResponse' {} a -> s {ciphertextBlob = a} :: EncryptResponse) Prelude.. Lens.mapping Core._Base64

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
-- of the KMS key that was used to encrypt the plaintext.
encryptResponse_keyId :: Lens.Lens' EncryptResponse (Prelude.Maybe Prelude.Text)
encryptResponse_keyId = Lens.lens (\EncryptResponse' {keyId} -> keyId) (\s@EncryptResponse' {} a -> s {keyId = a} :: EncryptResponse)

-- | The response's http status code.
encryptResponse_httpStatus :: Lens.Lens' EncryptResponse Prelude.Int
encryptResponse_httpStatus = Lens.lens (\EncryptResponse' {httpStatus} -> httpStatus) (\s@EncryptResponse' {} a -> s {httpStatus = a} :: EncryptResponse)

instance Prelude.NFData EncryptResponse where
  rnf EncryptResponse' {..} =
    Prelude.rnf encryptionAlgorithm
      `Prelude.seq` Prelude.rnf ciphertextBlob
      `Prelude.seq` Prelude.rnf keyId
      `Prelude.seq` Prelude.rnf httpStatus

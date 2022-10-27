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
-- Module      : Amazonka.Glue.CheckSchemaVersionValidity
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the supplied schema. This call has no side effects, it simply
-- validates using the supplied schema using @DataFormat@ as the format.
-- Since it does not take a schema set name, no compatibility checks are
-- performed.
module Amazonka.Glue.CheckSchemaVersionValidity
  ( -- * Creating a Request
    CheckSchemaVersionValidity (..),
    newCheckSchemaVersionValidity,

    -- * Request Lenses
    checkSchemaVersionValidity_dataFormat,
    checkSchemaVersionValidity_schemaDefinition,

    -- * Destructuring the Response
    CheckSchemaVersionValidityResponse (..),
    newCheckSchemaVersionValidityResponse,

    -- * Response Lenses
    checkSchemaVersionValidityResponse_valid,
    checkSchemaVersionValidityResponse_error,
    checkSchemaVersionValidityResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCheckSchemaVersionValidity' smart constructor.
data CheckSchemaVersionValidity = CheckSchemaVersionValidity'
  { -- | The data format of the schema definition. Currently @AVRO@, @JSON@ and
    -- @PROTOBUF@ are supported.
    dataFormat :: DataFormat,
    -- | The definition of the schema that has to be validated.
    schemaDefinition :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CheckSchemaVersionValidity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataFormat', 'checkSchemaVersionValidity_dataFormat' - The data format of the schema definition. Currently @AVRO@, @JSON@ and
-- @PROTOBUF@ are supported.
--
-- 'schemaDefinition', 'checkSchemaVersionValidity_schemaDefinition' - The definition of the schema that has to be validated.
newCheckSchemaVersionValidity ::
  -- | 'dataFormat'
  DataFormat ->
  -- | 'schemaDefinition'
  Prelude.Text ->
  CheckSchemaVersionValidity
newCheckSchemaVersionValidity
  pDataFormat_
  pSchemaDefinition_ =
    CheckSchemaVersionValidity'
      { dataFormat =
          pDataFormat_,
        schemaDefinition = pSchemaDefinition_
      }

-- | The data format of the schema definition. Currently @AVRO@, @JSON@ and
-- @PROTOBUF@ are supported.
checkSchemaVersionValidity_dataFormat :: Lens.Lens' CheckSchemaVersionValidity DataFormat
checkSchemaVersionValidity_dataFormat = Lens.lens (\CheckSchemaVersionValidity' {dataFormat} -> dataFormat) (\s@CheckSchemaVersionValidity' {} a -> s {dataFormat = a} :: CheckSchemaVersionValidity)

-- | The definition of the schema that has to be validated.
checkSchemaVersionValidity_schemaDefinition :: Lens.Lens' CheckSchemaVersionValidity Prelude.Text
checkSchemaVersionValidity_schemaDefinition = Lens.lens (\CheckSchemaVersionValidity' {schemaDefinition} -> schemaDefinition) (\s@CheckSchemaVersionValidity' {} a -> s {schemaDefinition = a} :: CheckSchemaVersionValidity)

instance Core.AWSRequest CheckSchemaVersionValidity where
  type
    AWSResponse CheckSchemaVersionValidity =
      CheckSchemaVersionValidityResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CheckSchemaVersionValidityResponse'
            Prelude.<$> (x Core..?> "Valid")
            Prelude.<*> (x Core..?> "Error")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CheckSchemaVersionValidity where
  hashWithSalt _salt CheckSchemaVersionValidity' {..} =
    _salt `Prelude.hashWithSalt` dataFormat
      `Prelude.hashWithSalt` schemaDefinition

instance Prelude.NFData CheckSchemaVersionValidity where
  rnf CheckSchemaVersionValidity' {..} =
    Prelude.rnf dataFormat
      `Prelude.seq` Prelude.rnf schemaDefinition

instance Core.ToHeaders CheckSchemaVersionValidity where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSGlue.CheckSchemaVersionValidity" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CheckSchemaVersionValidity where
  toJSON CheckSchemaVersionValidity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DataFormat" Core..= dataFormat),
            Prelude.Just
              ("SchemaDefinition" Core..= schemaDefinition)
          ]
      )

instance Core.ToPath CheckSchemaVersionValidity where
  toPath = Prelude.const "/"

instance Core.ToQuery CheckSchemaVersionValidity where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCheckSchemaVersionValidityResponse' smart constructor.
data CheckSchemaVersionValidityResponse = CheckSchemaVersionValidityResponse'
  { -- | Return true, if the schema is valid and false otherwise.
    valid :: Prelude.Maybe Prelude.Bool,
    -- | A validation failure error message.
    error :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CheckSchemaVersionValidityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'valid', 'checkSchemaVersionValidityResponse_valid' - Return true, if the schema is valid and false otherwise.
--
-- 'error', 'checkSchemaVersionValidityResponse_error' - A validation failure error message.
--
-- 'httpStatus', 'checkSchemaVersionValidityResponse_httpStatus' - The response's http status code.
newCheckSchemaVersionValidityResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CheckSchemaVersionValidityResponse
newCheckSchemaVersionValidityResponse pHttpStatus_ =
  CheckSchemaVersionValidityResponse'
    { valid =
        Prelude.Nothing,
      error = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Return true, if the schema is valid and false otherwise.
checkSchemaVersionValidityResponse_valid :: Lens.Lens' CheckSchemaVersionValidityResponse (Prelude.Maybe Prelude.Bool)
checkSchemaVersionValidityResponse_valid = Lens.lens (\CheckSchemaVersionValidityResponse' {valid} -> valid) (\s@CheckSchemaVersionValidityResponse' {} a -> s {valid = a} :: CheckSchemaVersionValidityResponse)

-- | A validation failure error message.
checkSchemaVersionValidityResponse_error :: Lens.Lens' CheckSchemaVersionValidityResponse (Prelude.Maybe Prelude.Text)
checkSchemaVersionValidityResponse_error = Lens.lens (\CheckSchemaVersionValidityResponse' {error} -> error) (\s@CheckSchemaVersionValidityResponse' {} a -> s {error = a} :: CheckSchemaVersionValidityResponse)

-- | The response's http status code.
checkSchemaVersionValidityResponse_httpStatus :: Lens.Lens' CheckSchemaVersionValidityResponse Prelude.Int
checkSchemaVersionValidityResponse_httpStatus = Lens.lens (\CheckSchemaVersionValidityResponse' {httpStatus} -> httpStatus) (\s@CheckSchemaVersionValidityResponse' {} a -> s {httpStatus = a} :: CheckSchemaVersionValidityResponse)

instance
  Prelude.NFData
    CheckSchemaVersionValidityResponse
  where
  rnf CheckSchemaVersionValidityResponse' {..} =
    Prelude.rnf valid
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf httpStatus

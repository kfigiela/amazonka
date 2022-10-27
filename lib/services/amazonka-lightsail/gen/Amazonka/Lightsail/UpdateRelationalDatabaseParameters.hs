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
-- Module      : Amazonka.Lightsail.UpdateRelationalDatabaseParameters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the update of one or more parameters of a database in Amazon
-- Lightsail.
--
-- Parameter updates don\'t cause outages; therefore, their application is
-- not subject to the preferred maintenance window. However, there are two
-- ways in which parameter updates are applied: @dynamic@ or
-- @pending-reboot@. Parameters marked with a @dynamic@ apply type are
-- applied immediately. Parameters marked with a @pending-reboot@ apply
-- type are applied only after the database is rebooted using the
-- @reboot relational database@ operation.
--
-- The @update relational database parameters@ operation supports tag-based
-- access control via resource tags applied to the resource identified by
-- relationalDatabaseName. For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-controlling-access-using-tags Amazon Lightsail Developer Guide>.
module Amazonka.Lightsail.UpdateRelationalDatabaseParameters
  ( -- * Creating a Request
    UpdateRelationalDatabaseParameters (..),
    newUpdateRelationalDatabaseParameters,

    -- * Request Lenses
    updateRelationalDatabaseParameters_relationalDatabaseName,
    updateRelationalDatabaseParameters_parameters,

    -- * Destructuring the Response
    UpdateRelationalDatabaseParametersResponse (..),
    newUpdateRelationalDatabaseParametersResponse,

    -- * Response Lenses
    updateRelationalDatabaseParametersResponse_operations,
    updateRelationalDatabaseParametersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Lightsail.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateRelationalDatabaseParameters' smart constructor.
data UpdateRelationalDatabaseParameters = UpdateRelationalDatabaseParameters'
  { -- | The name of your database for which to update parameters.
    relationalDatabaseName :: Prelude.Text,
    -- | The database parameters to update.
    parameters :: [RelationalDatabaseParameter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRelationalDatabaseParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relationalDatabaseName', 'updateRelationalDatabaseParameters_relationalDatabaseName' - The name of your database for which to update parameters.
--
-- 'parameters', 'updateRelationalDatabaseParameters_parameters' - The database parameters to update.
newUpdateRelationalDatabaseParameters ::
  -- | 'relationalDatabaseName'
  Prelude.Text ->
  UpdateRelationalDatabaseParameters
newUpdateRelationalDatabaseParameters
  pRelationalDatabaseName_ =
    UpdateRelationalDatabaseParameters'
      { relationalDatabaseName =
          pRelationalDatabaseName_,
        parameters = Prelude.mempty
      }

-- | The name of your database for which to update parameters.
updateRelationalDatabaseParameters_relationalDatabaseName :: Lens.Lens' UpdateRelationalDatabaseParameters Prelude.Text
updateRelationalDatabaseParameters_relationalDatabaseName = Lens.lens (\UpdateRelationalDatabaseParameters' {relationalDatabaseName} -> relationalDatabaseName) (\s@UpdateRelationalDatabaseParameters' {} a -> s {relationalDatabaseName = a} :: UpdateRelationalDatabaseParameters)

-- | The database parameters to update.
updateRelationalDatabaseParameters_parameters :: Lens.Lens' UpdateRelationalDatabaseParameters [RelationalDatabaseParameter]
updateRelationalDatabaseParameters_parameters = Lens.lens (\UpdateRelationalDatabaseParameters' {parameters} -> parameters) (\s@UpdateRelationalDatabaseParameters' {} a -> s {parameters = a} :: UpdateRelationalDatabaseParameters) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    UpdateRelationalDatabaseParameters
  where
  type
    AWSResponse UpdateRelationalDatabaseParameters =
      UpdateRelationalDatabaseParametersResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRelationalDatabaseParametersResponse'
            Prelude.<$> (x Core..?> "operations" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateRelationalDatabaseParameters
  where
  hashWithSalt
    _salt
    UpdateRelationalDatabaseParameters' {..} =
      _salt `Prelude.hashWithSalt` relationalDatabaseName
        `Prelude.hashWithSalt` parameters

instance
  Prelude.NFData
    UpdateRelationalDatabaseParameters
  where
  rnf UpdateRelationalDatabaseParameters' {..} =
    Prelude.rnf relationalDatabaseName
      `Prelude.seq` Prelude.rnf parameters

instance
  Core.ToHeaders
    UpdateRelationalDatabaseParameters
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.UpdateRelationalDatabaseParameters" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    UpdateRelationalDatabaseParameters
  where
  toJSON UpdateRelationalDatabaseParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "relationalDatabaseName"
                  Core..= relationalDatabaseName
              ),
            Prelude.Just ("parameters" Core..= parameters)
          ]
      )

instance
  Core.ToPath
    UpdateRelationalDatabaseParameters
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    UpdateRelationalDatabaseParameters
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRelationalDatabaseParametersResponse' smart constructor.
data UpdateRelationalDatabaseParametersResponse = UpdateRelationalDatabaseParametersResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Prelude.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRelationalDatabaseParametersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'updateRelationalDatabaseParametersResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'updateRelationalDatabaseParametersResponse_httpStatus' - The response's http status code.
newUpdateRelationalDatabaseParametersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRelationalDatabaseParametersResponse
newUpdateRelationalDatabaseParametersResponse
  pHttpStatus_ =
    UpdateRelationalDatabaseParametersResponse'
      { operations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
updateRelationalDatabaseParametersResponse_operations :: Lens.Lens' UpdateRelationalDatabaseParametersResponse (Prelude.Maybe [Operation])
updateRelationalDatabaseParametersResponse_operations = Lens.lens (\UpdateRelationalDatabaseParametersResponse' {operations} -> operations) (\s@UpdateRelationalDatabaseParametersResponse' {} a -> s {operations = a} :: UpdateRelationalDatabaseParametersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
updateRelationalDatabaseParametersResponse_httpStatus :: Lens.Lens' UpdateRelationalDatabaseParametersResponse Prelude.Int
updateRelationalDatabaseParametersResponse_httpStatus = Lens.lens (\UpdateRelationalDatabaseParametersResponse' {httpStatus} -> httpStatus) (\s@UpdateRelationalDatabaseParametersResponse' {} a -> s {httpStatus = a} :: UpdateRelationalDatabaseParametersResponse)

instance
  Prelude.NFData
    UpdateRelationalDatabaseParametersResponse
  where
  rnf UpdateRelationalDatabaseParametersResponse' {..} =
    Prelude.rnf operations
      `Prelude.seq` Prelude.rnf httpStatus

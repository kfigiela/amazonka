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
-- Module      : Amazonka.MQ.UpdateConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified configuration.
module Amazonka.MQ.UpdateConfiguration
  ( -- * Creating a Request
    UpdateConfiguration (..),
    newUpdateConfiguration,

    -- * Request Lenses
    updateConfiguration_description,
    updateConfiguration_configurationId,
    updateConfiguration_data,

    -- * Destructuring the Response
    UpdateConfigurationResponse (..),
    newUpdateConfigurationResponse,

    -- * Response Lenses
    updateConfigurationResponse_latestRevision,
    updateConfigurationResponse_name,
    updateConfigurationResponse_created,
    updateConfigurationResponse_arn,
    updateConfigurationResponse_id,
    updateConfigurationResponse_warnings,
    updateConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MQ.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Updates the specified configuration.
--
-- /See:/ 'newUpdateConfiguration' smart constructor.
data UpdateConfiguration = UpdateConfiguration'
  { -- | The description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique ID that Amazon MQ generates for the configuration.
    configurationId :: Prelude.Text,
    -- | Required. The base64-encoded XML configuration.
    data' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateConfiguration_description' - The description of the configuration.
--
-- 'configurationId', 'updateConfiguration_configurationId' - The unique ID that Amazon MQ generates for the configuration.
--
-- 'data'', 'updateConfiguration_data' - Required. The base64-encoded XML configuration.
newUpdateConfiguration ::
  -- | 'configurationId'
  Prelude.Text ->
  -- | 'data''
  Prelude.Text ->
  UpdateConfiguration
newUpdateConfiguration pConfigurationId_ pData_ =
  UpdateConfiguration'
    { description = Prelude.Nothing,
      configurationId = pConfigurationId_,
      data' = pData_
    }

-- | The description of the configuration.
updateConfiguration_description :: Lens.Lens' UpdateConfiguration (Prelude.Maybe Prelude.Text)
updateConfiguration_description = Lens.lens (\UpdateConfiguration' {description} -> description) (\s@UpdateConfiguration' {} a -> s {description = a} :: UpdateConfiguration)

-- | The unique ID that Amazon MQ generates for the configuration.
updateConfiguration_configurationId :: Lens.Lens' UpdateConfiguration Prelude.Text
updateConfiguration_configurationId = Lens.lens (\UpdateConfiguration' {configurationId} -> configurationId) (\s@UpdateConfiguration' {} a -> s {configurationId = a} :: UpdateConfiguration)

-- | Required. The base64-encoded XML configuration.
updateConfiguration_data :: Lens.Lens' UpdateConfiguration Prelude.Text
updateConfiguration_data = Lens.lens (\UpdateConfiguration' {data'} -> data') (\s@UpdateConfiguration' {} a -> s {data' = a} :: UpdateConfiguration)

instance Core.AWSRequest UpdateConfiguration where
  type
    AWSResponse UpdateConfiguration =
      UpdateConfigurationResponse
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateConfigurationResponse'
            Prelude.<$> (x Core..?> "latestRevision")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "created")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "warnings" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService UpdateConfiguration where
  service _proxy = defaultService

instance Prelude.Hashable UpdateConfiguration where
  hashWithSalt _salt UpdateConfiguration' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` configurationId
      `Prelude.hashWithSalt` data'

instance Prelude.NFData UpdateConfiguration where
  rnf UpdateConfiguration' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf configurationId
      `Prelude.seq` Prelude.rnf data'

instance Core.ToHeaders UpdateConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateConfiguration where
  toJSON UpdateConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("data" Core..= data')
          ]
      )

instance Core.ToPath UpdateConfiguration where
  toPath UpdateConfiguration' {..} =
    Prelude.mconcat
      ["/v1/configurations/", Core.toBS configurationId]

instance Core.ToQuery UpdateConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateConfigurationResponse' smart constructor.
data UpdateConfigurationResponse = UpdateConfigurationResponse'
  { -- | The latest revision of the configuration.
    latestRevision :: Prelude.Maybe ConfigurationRevision,
    -- | Required. The name of the configuration. This value can contain only
    -- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
    -- ~). This value must be 1-150 characters long.
    name :: Prelude.Maybe Prelude.Text,
    -- | Required. The date and time of the configuration.
    created :: Prelude.Maybe Core.POSIX,
    -- | Required. The Amazon Resource Name (ARN) of the configuration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Required. The unique ID that Amazon MQ generates for the configuration.
    id :: Prelude.Maybe Prelude.Text,
    -- | The list of the first 20 warnings about the configuration XML elements
    -- or attributes that were sanitized.
    warnings :: Prelude.Maybe [SanitizationWarning],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latestRevision', 'updateConfigurationResponse_latestRevision' - The latest revision of the configuration.
--
-- 'name', 'updateConfigurationResponse_name' - Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
--
-- 'created', 'updateConfigurationResponse_created' - Required. The date and time of the configuration.
--
-- 'arn', 'updateConfigurationResponse_arn' - Required. The Amazon Resource Name (ARN) of the configuration.
--
-- 'id', 'updateConfigurationResponse_id' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- 'warnings', 'updateConfigurationResponse_warnings' - The list of the first 20 warnings about the configuration XML elements
-- or attributes that were sanitized.
--
-- 'httpStatus', 'updateConfigurationResponse_httpStatus' - The response's http status code.
newUpdateConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateConfigurationResponse
newUpdateConfigurationResponse pHttpStatus_ =
  UpdateConfigurationResponse'
    { latestRevision =
        Prelude.Nothing,
      name = Prelude.Nothing,
      created = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      warnings = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The latest revision of the configuration.
updateConfigurationResponse_latestRevision :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe ConfigurationRevision)
updateConfigurationResponse_latestRevision = Lens.lens (\UpdateConfigurationResponse' {latestRevision} -> latestRevision) (\s@UpdateConfigurationResponse' {} a -> s {latestRevision = a} :: UpdateConfigurationResponse)

-- | Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
updateConfigurationResponse_name :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe Prelude.Text)
updateConfigurationResponse_name = Lens.lens (\UpdateConfigurationResponse' {name} -> name) (\s@UpdateConfigurationResponse' {} a -> s {name = a} :: UpdateConfigurationResponse)

-- | Required. The date and time of the configuration.
updateConfigurationResponse_created :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
updateConfigurationResponse_created = Lens.lens (\UpdateConfigurationResponse' {created} -> created) (\s@UpdateConfigurationResponse' {} a -> s {created = a} :: UpdateConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | Required. The Amazon Resource Name (ARN) of the configuration.
updateConfigurationResponse_arn :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe Prelude.Text)
updateConfigurationResponse_arn = Lens.lens (\UpdateConfigurationResponse' {arn} -> arn) (\s@UpdateConfigurationResponse' {} a -> s {arn = a} :: UpdateConfigurationResponse)

-- | Required. The unique ID that Amazon MQ generates for the configuration.
updateConfigurationResponse_id :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe Prelude.Text)
updateConfigurationResponse_id = Lens.lens (\UpdateConfigurationResponse' {id} -> id) (\s@UpdateConfigurationResponse' {} a -> s {id = a} :: UpdateConfigurationResponse)

-- | The list of the first 20 warnings about the configuration XML elements
-- or attributes that were sanitized.
updateConfigurationResponse_warnings :: Lens.Lens' UpdateConfigurationResponse (Prelude.Maybe [SanitizationWarning])
updateConfigurationResponse_warnings = Lens.lens (\UpdateConfigurationResponse' {warnings} -> warnings) (\s@UpdateConfigurationResponse' {} a -> s {warnings = a} :: UpdateConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
updateConfigurationResponse_httpStatus :: Lens.Lens' UpdateConfigurationResponse Prelude.Int
updateConfigurationResponse_httpStatus = Lens.lens (\UpdateConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateConfigurationResponse)

instance Prelude.NFData UpdateConfigurationResponse where
  rnf UpdateConfigurationResponse' {..} =
    Prelude.rnf latestRevision
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf created
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf warnings
      `Prelude.seq` Prelude.rnf httpStatus

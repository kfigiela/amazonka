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
-- Module      : Amazonka.AppSync.UpdateDataSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @DataSource@ object.
module Amazonka.AppSync.UpdateDataSource
  ( -- * Creating a Request
    UpdateDataSource (..),
    newUpdateDataSource,

    -- * Request Lenses
    updateDataSource_relationalDatabaseConfig,
    updateDataSource_serviceRoleArn,
    updateDataSource_openSearchServiceConfig,
    updateDataSource_description,
    updateDataSource_elasticsearchConfig,
    updateDataSource_lambdaConfig,
    updateDataSource_dynamodbConfig,
    updateDataSource_httpConfig,
    updateDataSource_apiId,
    updateDataSource_name,
    updateDataSource_type,

    -- * Destructuring the Response
    UpdateDataSourceResponse (..),
    newUpdateDataSourceResponse,

    -- * Response Lenses
    updateDataSourceResponse_dataSource,
    updateDataSourceResponse_httpStatus,
  )
where

import Amazonka.AppSync.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateDataSource' smart constructor.
data UpdateDataSource = UpdateDataSource'
  { -- | The new relational database configuration.
    relationalDatabaseConfig :: Prelude.Maybe RelationalDatabaseDataSourceConfig,
    -- | The new service role Amazon Resource Name (ARN) for the data source.
    serviceRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The new OpenSearch configuration.
    openSearchServiceConfig :: Prelude.Maybe OpenSearchServiceDataSourceConfig,
    -- | The new description for the data source.
    description :: Prelude.Maybe Prelude.Text,
    -- | The new OpenSearch configuration.
    --
    -- As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch
    -- Service. This configuration is deprecated. Instead, use
    -- UpdateDataSourceRequest$openSearchServiceConfig to update an OpenSearch
    -- data source.
    elasticsearchConfig :: Prelude.Maybe ElasticsearchDataSourceConfig,
    -- | The new Lambda configuration.
    lambdaConfig :: Prelude.Maybe LambdaDataSourceConfig,
    -- | The new Amazon DynamoDB configuration.
    dynamodbConfig :: Prelude.Maybe DynamodbDataSourceConfig,
    -- | The new HTTP endpoint configuration.
    httpConfig :: Prelude.Maybe HttpDataSourceConfig,
    -- | The API ID.
    apiId :: Prelude.Text,
    -- | The new name for the data source.
    name :: Prelude.Text,
    -- | The new data source type.
    type' :: DataSourceType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relationalDatabaseConfig', 'updateDataSource_relationalDatabaseConfig' - The new relational database configuration.
--
-- 'serviceRoleArn', 'updateDataSource_serviceRoleArn' - The new service role Amazon Resource Name (ARN) for the data source.
--
-- 'openSearchServiceConfig', 'updateDataSource_openSearchServiceConfig' - The new OpenSearch configuration.
--
-- 'description', 'updateDataSource_description' - The new description for the data source.
--
-- 'elasticsearchConfig', 'updateDataSource_elasticsearchConfig' - The new OpenSearch configuration.
--
-- As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch
-- Service. This configuration is deprecated. Instead, use
-- UpdateDataSourceRequest$openSearchServiceConfig to update an OpenSearch
-- data source.
--
-- 'lambdaConfig', 'updateDataSource_lambdaConfig' - The new Lambda configuration.
--
-- 'dynamodbConfig', 'updateDataSource_dynamodbConfig' - The new Amazon DynamoDB configuration.
--
-- 'httpConfig', 'updateDataSource_httpConfig' - The new HTTP endpoint configuration.
--
-- 'apiId', 'updateDataSource_apiId' - The API ID.
--
-- 'name', 'updateDataSource_name' - The new name for the data source.
--
-- 'type'', 'updateDataSource_type' - The new data source type.
newUpdateDataSource ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  DataSourceType ->
  UpdateDataSource
newUpdateDataSource pApiId_ pName_ pType_ =
  UpdateDataSource'
    { relationalDatabaseConfig =
        Prelude.Nothing,
      serviceRoleArn = Prelude.Nothing,
      openSearchServiceConfig = Prelude.Nothing,
      description = Prelude.Nothing,
      elasticsearchConfig = Prelude.Nothing,
      lambdaConfig = Prelude.Nothing,
      dynamodbConfig = Prelude.Nothing,
      httpConfig = Prelude.Nothing,
      apiId = pApiId_,
      name = pName_,
      type' = pType_
    }

-- | The new relational database configuration.
updateDataSource_relationalDatabaseConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe RelationalDatabaseDataSourceConfig)
updateDataSource_relationalDatabaseConfig = Lens.lens (\UpdateDataSource' {relationalDatabaseConfig} -> relationalDatabaseConfig) (\s@UpdateDataSource' {} a -> s {relationalDatabaseConfig = a} :: UpdateDataSource)

-- | The new service role Amazon Resource Name (ARN) for the data source.
updateDataSource_serviceRoleArn :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_serviceRoleArn = Lens.lens (\UpdateDataSource' {serviceRoleArn} -> serviceRoleArn) (\s@UpdateDataSource' {} a -> s {serviceRoleArn = a} :: UpdateDataSource)

-- | The new OpenSearch configuration.
updateDataSource_openSearchServiceConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe OpenSearchServiceDataSourceConfig)
updateDataSource_openSearchServiceConfig = Lens.lens (\UpdateDataSource' {openSearchServiceConfig} -> openSearchServiceConfig) (\s@UpdateDataSource' {} a -> s {openSearchServiceConfig = a} :: UpdateDataSource)

-- | The new description for the data source.
updateDataSource_description :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_description = Lens.lens (\UpdateDataSource' {description} -> description) (\s@UpdateDataSource' {} a -> s {description = a} :: UpdateDataSource)

-- | The new OpenSearch configuration.
--
-- As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch
-- Service. This configuration is deprecated. Instead, use
-- UpdateDataSourceRequest$openSearchServiceConfig to update an OpenSearch
-- data source.
updateDataSource_elasticsearchConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe ElasticsearchDataSourceConfig)
updateDataSource_elasticsearchConfig = Lens.lens (\UpdateDataSource' {elasticsearchConfig} -> elasticsearchConfig) (\s@UpdateDataSource' {} a -> s {elasticsearchConfig = a} :: UpdateDataSource)

-- | The new Lambda configuration.
updateDataSource_lambdaConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe LambdaDataSourceConfig)
updateDataSource_lambdaConfig = Lens.lens (\UpdateDataSource' {lambdaConfig} -> lambdaConfig) (\s@UpdateDataSource' {} a -> s {lambdaConfig = a} :: UpdateDataSource)

-- | The new Amazon DynamoDB configuration.
updateDataSource_dynamodbConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe DynamodbDataSourceConfig)
updateDataSource_dynamodbConfig = Lens.lens (\UpdateDataSource' {dynamodbConfig} -> dynamodbConfig) (\s@UpdateDataSource' {} a -> s {dynamodbConfig = a} :: UpdateDataSource)

-- | The new HTTP endpoint configuration.
updateDataSource_httpConfig :: Lens.Lens' UpdateDataSource (Prelude.Maybe HttpDataSourceConfig)
updateDataSource_httpConfig = Lens.lens (\UpdateDataSource' {httpConfig} -> httpConfig) (\s@UpdateDataSource' {} a -> s {httpConfig = a} :: UpdateDataSource)

-- | The API ID.
updateDataSource_apiId :: Lens.Lens' UpdateDataSource Prelude.Text
updateDataSource_apiId = Lens.lens (\UpdateDataSource' {apiId} -> apiId) (\s@UpdateDataSource' {} a -> s {apiId = a} :: UpdateDataSource)

-- | The new name for the data source.
updateDataSource_name :: Lens.Lens' UpdateDataSource Prelude.Text
updateDataSource_name = Lens.lens (\UpdateDataSource' {name} -> name) (\s@UpdateDataSource' {} a -> s {name = a} :: UpdateDataSource)

-- | The new data source type.
updateDataSource_type :: Lens.Lens' UpdateDataSource DataSourceType
updateDataSource_type = Lens.lens (\UpdateDataSource' {type'} -> type') (\s@UpdateDataSource' {} a -> s {type' = a} :: UpdateDataSource)

instance Core.AWSRequest UpdateDataSource where
  type
    AWSResponse UpdateDataSource =
      UpdateDataSourceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDataSourceResponse'
            Prelude.<$> (x Core..?> "dataSource")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDataSource where
  hashWithSalt _salt UpdateDataSource' {..} =
    _salt
      `Prelude.hashWithSalt` relationalDatabaseConfig
      `Prelude.hashWithSalt` serviceRoleArn
      `Prelude.hashWithSalt` openSearchServiceConfig
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` elasticsearchConfig
      `Prelude.hashWithSalt` lambdaConfig
      `Prelude.hashWithSalt` dynamodbConfig
      `Prelude.hashWithSalt` httpConfig
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'

instance Prelude.NFData UpdateDataSource where
  rnf UpdateDataSource' {..} =
    Prelude.rnf relationalDatabaseConfig
      `Prelude.seq` Prelude.rnf serviceRoleArn
      `Prelude.seq` Prelude.rnf openSearchServiceConfig
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf elasticsearchConfig
      `Prelude.seq` Prelude.rnf lambdaConfig
      `Prelude.seq` Prelude.rnf dynamodbConfig
      `Prelude.seq` Prelude.rnf httpConfig
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'

instance Core.ToHeaders UpdateDataSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDataSource where
  toJSON UpdateDataSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("relationalDatabaseConfig" Core..=)
              Prelude.<$> relationalDatabaseConfig,
            ("serviceRoleArn" Core..=)
              Prelude.<$> serviceRoleArn,
            ("openSearchServiceConfig" Core..=)
              Prelude.<$> openSearchServiceConfig,
            ("description" Core..=) Prelude.<$> description,
            ("elasticsearchConfig" Core..=)
              Prelude.<$> elasticsearchConfig,
            ("lambdaConfig" Core..=) Prelude.<$> lambdaConfig,
            ("dynamodbConfig" Core..=)
              Prelude.<$> dynamodbConfig,
            ("httpConfig" Core..=) Prelude.<$> httpConfig,
            Prelude.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath UpdateDataSource where
  toPath UpdateDataSource' {..} =
    Prelude.mconcat
      [ "/v1/apis/",
        Core.toBS apiId,
        "/datasources/",
        Core.toBS name
      ]

instance Core.ToQuery UpdateDataSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDataSourceResponse' smart constructor.
data UpdateDataSourceResponse = UpdateDataSourceResponse'
  { -- | The updated @DataSource@ object.
    dataSource :: Prelude.Maybe DataSource,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSource', 'updateDataSourceResponse_dataSource' - The updated @DataSource@ object.
--
-- 'httpStatus', 'updateDataSourceResponse_httpStatus' - The response's http status code.
newUpdateDataSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDataSourceResponse
newUpdateDataSourceResponse pHttpStatus_ =
  UpdateDataSourceResponse'
    { dataSource =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated @DataSource@ object.
updateDataSourceResponse_dataSource :: Lens.Lens' UpdateDataSourceResponse (Prelude.Maybe DataSource)
updateDataSourceResponse_dataSource = Lens.lens (\UpdateDataSourceResponse' {dataSource} -> dataSource) (\s@UpdateDataSourceResponse' {} a -> s {dataSource = a} :: UpdateDataSourceResponse)

-- | The response's http status code.
updateDataSourceResponse_httpStatus :: Lens.Lens' UpdateDataSourceResponse Prelude.Int
updateDataSourceResponse_httpStatus = Lens.lens (\UpdateDataSourceResponse' {httpStatus} -> httpStatus) (\s@UpdateDataSourceResponse' {} a -> s {httpStatus = a} :: UpdateDataSourceResponse)

instance Prelude.NFData UpdateDataSourceResponse where
  rnf UpdateDataSourceResponse' {..} =
    Prelude.rnf dataSource
      `Prelude.seq` Prelude.rnf httpStatus

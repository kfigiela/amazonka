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
-- Module      : Amazonka.Kendra.UpdateDataSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Amazon Kendra data source connector.
module Amazonka.Kendra.UpdateDataSource
  ( -- * Creating a Request
    UpdateDataSource (..),
    newUpdateDataSource,

    -- * Request Lenses
    updateDataSource_schedule,
    updateDataSource_vpcConfiguration,
    updateDataSource_customDocumentEnrichmentConfiguration,
    updateDataSource_name,
    updateDataSource_roleArn,
    updateDataSource_configuration,
    updateDataSource_description,
    updateDataSource_languageCode,
    updateDataSource_id,
    updateDataSource_indexId,

    -- * Destructuring the Response
    UpdateDataSourceResponse (..),
    newUpdateDataSourceResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateDataSource' smart constructor.
data UpdateDataSource = UpdateDataSource'
  { -- | The sync schedule you want to update for the data source connector.
    schedule :: Prelude.Maybe Prelude.Text,
    -- | Configuration information for an Amazon Virtual Private Cloud to connect
    -- to your data source. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
    vpcConfiguration :: Prelude.Maybe DataSourceVpcConfiguration,
    -- | Configuration information you want to update for altering document
    -- metadata and content during the document ingestion process.
    --
    -- For more information on how to create, modify and delete document
    -- metadata, or make other content alterations when you ingest documents
    -- into Amazon Kendra, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html Customizing document metadata during the ingestion process>.
    customDocumentEnrichmentConfiguration :: Prelude.Maybe CustomDocumentEnrichmentConfiguration,
    -- | A new name for the data source connector.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a role with permission to access the
    -- data source and required resources. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Configuration information you want to update for the data source
    -- connector.
    configuration :: Prelude.Maybe DataSourceConfiguration,
    -- | A new description for the data source connector.
    description :: Prelude.Maybe Prelude.Text,
    -- | The code for a language you want to update for the data source
    -- connector. This allows you to support a language for all documents when
    -- updating the data source. English is supported by default. For more
    -- information on supported languages, including their codes, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html Adding documents in languages other than English>.
    languageCode :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the data source connector you want to update.
    id :: Prelude.Text,
    -- | The identifier of the index used with the data source connector.
    indexId :: Prelude.Text
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
-- 'schedule', 'updateDataSource_schedule' - The sync schedule you want to update for the data source connector.
--
-- 'vpcConfiguration', 'updateDataSource_vpcConfiguration' - Configuration information for an Amazon Virtual Private Cloud to connect
-- to your data source. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
--
-- 'customDocumentEnrichmentConfiguration', 'updateDataSource_customDocumentEnrichmentConfiguration' - Configuration information you want to update for altering document
-- metadata and content during the document ingestion process.
--
-- For more information on how to create, modify and delete document
-- metadata, or make other content alterations when you ingest documents
-- into Amazon Kendra, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html Customizing document metadata during the ingestion process>.
--
-- 'name', 'updateDataSource_name' - A new name for the data source connector.
--
-- 'roleArn', 'updateDataSource_roleArn' - The Amazon Resource Name (ARN) of a role with permission to access the
-- data source and required resources. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
--
-- 'configuration', 'updateDataSource_configuration' - Configuration information you want to update for the data source
-- connector.
--
-- 'description', 'updateDataSource_description' - A new description for the data source connector.
--
-- 'languageCode', 'updateDataSource_languageCode' - The code for a language you want to update for the data source
-- connector. This allows you to support a language for all documents when
-- updating the data source. English is supported by default. For more
-- information on supported languages, including their codes, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html Adding documents in languages other than English>.
--
-- 'id', 'updateDataSource_id' - The identifier of the data source connector you want to update.
--
-- 'indexId', 'updateDataSource_indexId' - The identifier of the index used with the data source connector.
newUpdateDataSource ::
  -- | 'id'
  Prelude.Text ->
  -- | 'indexId'
  Prelude.Text ->
  UpdateDataSource
newUpdateDataSource pId_ pIndexId_ =
  UpdateDataSource'
    { schedule = Prelude.Nothing,
      vpcConfiguration = Prelude.Nothing,
      customDocumentEnrichmentConfiguration =
        Prelude.Nothing,
      name = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      configuration = Prelude.Nothing,
      description = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      id = pId_,
      indexId = pIndexId_
    }

-- | The sync schedule you want to update for the data source connector.
updateDataSource_schedule :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_schedule = Lens.lens (\UpdateDataSource' {schedule} -> schedule) (\s@UpdateDataSource' {} a -> s {schedule = a} :: UpdateDataSource)

-- | Configuration information for an Amazon Virtual Private Cloud to connect
-- to your data source. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
updateDataSource_vpcConfiguration :: Lens.Lens' UpdateDataSource (Prelude.Maybe DataSourceVpcConfiguration)
updateDataSource_vpcConfiguration = Lens.lens (\UpdateDataSource' {vpcConfiguration} -> vpcConfiguration) (\s@UpdateDataSource' {} a -> s {vpcConfiguration = a} :: UpdateDataSource)

-- | Configuration information you want to update for altering document
-- metadata and content during the document ingestion process.
--
-- For more information on how to create, modify and delete document
-- metadata, or make other content alterations when you ingest documents
-- into Amazon Kendra, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html Customizing document metadata during the ingestion process>.
updateDataSource_customDocumentEnrichmentConfiguration :: Lens.Lens' UpdateDataSource (Prelude.Maybe CustomDocumentEnrichmentConfiguration)
updateDataSource_customDocumentEnrichmentConfiguration = Lens.lens (\UpdateDataSource' {customDocumentEnrichmentConfiguration} -> customDocumentEnrichmentConfiguration) (\s@UpdateDataSource' {} a -> s {customDocumentEnrichmentConfiguration = a} :: UpdateDataSource)

-- | A new name for the data source connector.
updateDataSource_name :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_name = Lens.lens (\UpdateDataSource' {name} -> name) (\s@UpdateDataSource' {} a -> s {name = a} :: UpdateDataSource)

-- | The Amazon Resource Name (ARN) of a role with permission to access the
-- data source and required resources. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
updateDataSource_roleArn :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_roleArn = Lens.lens (\UpdateDataSource' {roleArn} -> roleArn) (\s@UpdateDataSource' {} a -> s {roleArn = a} :: UpdateDataSource)

-- | Configuration information you want to update for the data source
-- connector.
updateDataSource_configuration :: Lens.Lens' UpdateDataSource (Prelude.Maybe DataSourceConfiguration)
updateDataSource_configuration = Lens.lens (\UpdateDataSource' {configuration} -> configuration) (\s@UpdateDataSource' {} a -> s {configuration = a} :: UpdateDataSource)

-- | A new description for the data source connector.
updateDataSource_description :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_description = Lens.lens (\UpdateDataSource' {description} -> description) (\s@UpdateDataSource' {} a -> s {description = a} :: UpdateDataSource)

-- | The code for a language you want to update for the data source
-- connector. This allows you to support a language for all documents when
-- updating the data source. English is supported by default. For more
-- information on supported languages, including their codes, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html Adding documents in languages other than English>.
updateDataSource_languageCode :: Lens.Lens' UpdateDataSource (Prelude.Maybe Prelude.Text)
updateDataSource_languageCode = Lens.lens (\UpdateDataSource' {languageCode} -> languageCode) (\s@UpdateDataSource' {} a -> s {languageCode = a} :: UpdateDataSource)

-- | The identifier of the data source connector you want to update.
updateDataSource_id :: Lens.Lens' UpdateDataSource Prelude.Text
updateDataSource_id = Lens.lens (\UpdateDataSource' {id} -> id) (\s@UpdateDataSource' {} a -> s {id = a} :: UpdateDataSource)

-- | The identifier of the index used with the data source connector.
updateDataSource_indexId :: Lens.Lens' UpdateDataSource Prelude.Text
updateDataSource_indexId = Lens.lens (\UpdateDataSource' {indexId} -> indexId) (\s@UpdateDataSource' {} a -> s {indexId = a} :: UpdateDataSource)

instance Core.AWSRequest UpdateDataSource where
  type
    AWSResponse UpdateDataSource =
      UpdateDataSourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull UpdateDataSourceResponse'

instance Prelude.Hashable UpdateDataSource where
  hashWithSalt _salt UpdateDataSource' {..} =
    _salt `Prelude.hashWithSalt` schedule
      `Prelude.hashWithSalt` vpcConfiguration
      `Prelude.hashWithSalt` customDocumentEnrichmentConfiguration
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` configuration
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` indexId

instance Prelude.NFData UpdateDataSource where
  rnf UpdateDataSource' {..} =
    Prelude.rnf schedule
      `Prelude.seq` Prelude.rnf vpcConfiguration
      `Prelude.seq` Prelude.rnf customDocumentEnrichmentConfiguration
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf configuration
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf indexId

instance Core.ToHeaders UpdateDataSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSKendraFrontendService.UpdateDataSource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDataSource where
  toJSON UpdateDataSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Schedule" Core..=) Prelude.<$> schedule,
            ("VpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            ("CustomDocumentEnrichmentConfiguration" Core..=)
              Prelude.<$> customDocumentEnrichmentConfiguration,
            ("Name" Core..=) Prelude.<$> name,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("Configuration" Core..=) Prelude.<$> configuration,
            ("Description" Core..=) Prelude.<$> description,
            ("LanguageCode" Core..=) Prelude.<$> languageCode,
            Prelude.Just ("Id" Core..= id),
            Prelude.Just ("IndexId" Core..= indexId)
          ]
      )

instance Core.ToPath UpdateDataSource where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDataSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDataSourceResponse' smart constructor.
data UpdateDataSourceResponse = UpdateDataSourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateDataSourceResponse ::
  UpdateDataSourceResponse
newUpdateDataSourceResponse =
  UpdateDataSourceResponse'

instance Prelude.NFData UpdateDataSourceResponse where
  rnf _ = ()

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
-- Module      : Amazonka.Wisdom.CreateKnowledgeBase
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a knowledge base.
--
-- When using this API, you cannot reuse
-- <https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html Amazon AppIntegrations>
-- DataIntegrations with external knowledge bases such as Salesforce and
-- ServiceNow. If you do, you\'ll get an @InvalidRequestException@ error.
--
-- >  <p>For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:</p> <ol> <li> <p>Call <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html">DeleteKnowledgeBase</a>.</p> </li> <li> <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration</a>.</p> </li> <li> <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> to recreate the DataIntegration or a create different one.</p> </li> <li> <p>Call CreateKnowledgeBase.</p> </li> </ol> </note>
module Amazonka.Wisdom.CreateKnowledgeBase
  ( -- * Creating a Request
    CreateKnowledgeBase (..),
    newCreateKnowledgeBase,

    -- * Request Lenses
    createKnowledgeBase_tags,
    createKnowledgeBase_clientToken,
    createKnowledgeBase_sourceConfiguration,
    createKnowledgeBase_serverSideEncryptionConfiguration,
    createKnowledgeBase_description,
    createKnowledgeBase_renderingConfiguration,
    createKnowledgeBase_knowledgeBaseType,
    createKnowledgeBase_name,

    -- * Destructuring the Response
    CreateKnowledgeBaseResponse (..),
    newCreateKnowledgeBaseResponse,

    -- * Response Lenses
    createKnowledgeBaseResponse_knowledgeBase,
    createKnowledgeBaseResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Wisdom.Types

-- | /See:/ 'newCreateKnowledgeBase' smart constructor.
data CreateKnowledgeBase = CreateKnowledgeBase'
  { -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The source of the knowledge base content. Only set this argument for
    -- EXTERNAL knowledge bases.
    sourceConfiguration :: Prelude.Maybe SourceConfiguration,
    -- | The KMS key used for encryption.
    serverSideEncryptionConfiguration :: Prelude.Maybe ServerSideEncryptionConfiguration,
    -- | The description.
    description :: Prelude.Maybe Prelude.Text,
    -- | Information about how to render the content.
    renderingConfiguration :: Prelude.Maybe RenderingConfiguration,
    -- | The type of knowledge base. Only CUSTOM knowledge bases allow you to
    -- upload your own content. EXTERNAL knowledge bases support integrations
    -- with third-party systems whose content is synchronized automatically.
    knowledgeBaseType :: KnowledgeBaseType,
    -- | The name of the knowledge base.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateKnowledgeBase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createKnowledgeBase_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'clientToken', 'createKnowledgeBase_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'sourceConfiguration', 'createKnowledgeBase_sourceConfiguration' - The source of the knowledge base content. Only set this argument for
-- EXTERNAL knowledge bases.
--
-- 'serverSideEncryptionConfiguration', 'createKnowledgeBase_serverSideEncryptionConfiguration' - The KMS key used for encryption.
--
-- 'description', 'createKnowledgeBase_description' - The description.
--
-- 'renderingConfiguration', 'createKnowledgeBase_renderingConfiguration' - Information about how to render the content.
--
-- 'knowledgeBaseType', 'createKnowledgeBase_knowledgeBaseType' - The type of knowledge base. Only CUSTOM knowledge bases allow you to
-- upload your own content. EXTERNAL knowledge bases support integrations
-- with third-party systems whose content is synchronized automatically.
--
-- 'name', 'createKnowledgeBase_name' - The name of the knowledge base.
newCreateKnowledgeBase ::
  -- | 'knowledgeBaseType'
  KnowledgeBaseType ->
  -- | 'name'
  Prelude.Text ->
  CreateKnowledgeBase
newCreateKnowledgeBase pKnowledgeBaseType_ pName_ =
  CreateKnowledgeBase'
    { tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      sourceConfiguration = Prelude.Nothing,
      serverSideEncryptionConfiguration = Prelude.Nothing,
      description = Prelude.Nothing,
      renderingConfiguration = Prelude.Nothing,
      knowledgeBaseType = pKnowledgeBaseType_,
      name = pName_
    }

-- | The tags used to organize, track, or control access for this resource.
createKnowledgeBase_tags :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createKnowledgeBase_tags = Lens.lens (\CreateKnowledgeBase' {tags} -> tags) (\s@CreateKnowledgeBase' {} a -> s {tags = a} :: CreateKnowledgeBase) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createKnowledgeBase_clientToken :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe Prelude.Text)
createKnowledgeBase_clientToken = Lens.lens (\CreateKnowledgeBase' {clientToken} -> clientToken) (\s@CreateKnowledgeBase' {} a -> s {clientToken = a} :: CreateKnowledgeBase)

-- | The source of the knowledge base content. Only set this argument for
-- EXTERNAL knowledge bases.
createKnowledgeBase_sourceConfiguration :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe SourceConfiguration)
createKnowledgeBase_sourceConfiguration = Lens.lens (\CreateKnowledgeBase' {sourceConfiguration} -> sourceConfiguration) (\s@CreateKnowledgeBase' {} a -> s {sourceConfiguration = a} :: CreateKnowledgeBase)

-- | The KMS key used for encryption.
createKnowledgeBase_serverSideEncryptionConfiguration :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe ServerSideEncryptionConfiguration)
createKnowledgeBase_serverSideEncryptionConfiguration = Lens.lens (\CreateKnowledgeBase' {serverSideEncryptionConfiguration} -> serverSideEncryptionConfiguration) (\s@CreateKnowledgeBase' {} a -> s {serverSideEncryptionConfiguration = a} :: CreateKnowledgeBase)

-- | The description.
createKnowledgeBase_description :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe Prelude.Text)
createKnowledgeBase_description = Lens.lens (\CreateKnowledgeBase' {description} -> description) (\s@CreateKnowledgeBase' {} a -> s {description = a} :: CreateKnowledgeBase)

-- | Information about how to render the content.
createKnowledgeBase_renderingConfiguration :: Lens.Lens' CreateKnowledgeBase (Prelude.Maybe RenderingConfiguration)
createKnowledgeBase_renderingConfiguration = Lens.lens (\CreateKnowledgeBase' {renderingConfiguration} -> renderingConfiguration) (\s@CreateKnowledgeBase' {} a -> s {renderingConfiguration = a} :: CreateKnowledgeBase)

-- | The type of knowledge base. Only CUSTOM knowledge bases allow you to
-- upload your own content. EXTERNAL knowledge bases support integrations
-- with third-party systems whose content is synchronized automatically.
createKnowledgeBase_knowledgeBaseType :: Lens.Lens' CreateKnowledgeBase KnowledgeBaseType
createKnowledgeBase_knowledgeBaseType = Lens.lens (\CreateKnowledgeBase' {knowledgeBaseType} -> knowledgeBaseType) (\s@CreateKnowledgeBase' {} a -> s {knowledgeBaseType = a} :: CreateKnowledgeBase)

-- | The name of the knowledge base.
createKnowledgeBase_name :: Lens.Lens' CreateKnowledgeBase Prelude.Text
createKnowledgeBase_name = Lens.lens (\CreateKnowledgeBase' {name} -> name) (\s@CreateKnowledgeBase' {} a -> s {name = a} :: CreateKnowledgeBase)

instance Core.AWSRequest CreateKnowledgeBase where
  type
    AWSResponse CreateKnowledgeBase =
      CreateKnowledgeBaseResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateKnowledgeBaseResponse'
            Prelude.<$> (x Core..?> "knowledgeBase")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateKnowledgeBase where
  hashWithSalt _salt CreateKnowledgeBase' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` sourceConfiguration
      `Prelude.hashWithSalt` serverSideEncryptionConfiguration
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` renderingConfiguration
      `Prelude.hashWithSalt` knowledgeBaseType
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateKnowledgeBase where
  rnf CreateKnowledgeBase' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf sourceConfiguration
      `Prelude.seq` Prelude.rnf serverSideEncryptionConfiguration
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf renderingConfiguration
      `Prelude.seq` Prelude.rnf knowledgeBaseType
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateKnowledgeBase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateKnowledgeBase where
  toJSON CreateKnowledgeBase' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            ("sourceConfiguration" Core..=)
              Prelude.<$> sourceConfiguration,
            ("serverSideEncryptionConfiguration" Core..=)
              Prelude.<$> serverSideEncryptionConfiguration,
            ("description" Core..=) Prelude.<$> description,
            ("renderingConfiguration" Core..=)
              Prelude.<$> renderingConfiguration,
            Prelude.Just
              ("knowledgeBaseType" Core..= knowledgeBaseType),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateKnowledgeBase where
  toPath = Prelude.const "/knowledgeBases"

instance Core.ToQuery CreateKnowledgeBase where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateKnowledgeBaseResponse' smart constructor.
data CreateKnowledgeBaseResponse = CreateKnowledgeBaseResponse'
  { -- | The knowledge base.
    knowledgeBase :: Prelude.Maybe KnowledgeBaseData,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateKnowledgeBaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'knowledgeBase', 'createKnowledgeBaseResponse_knowledgeBase' - The knowledge base.
--
-- 'httpStatus', 'createKnowledgeBaseResponse_httpStatus' - The response's http status code.
newCreateKnowledgeBaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateKnowledgeBaseResponse
newCreateKnowledgeBaseResponse pHttpStatus_ =
  CreateKnowledgeBaseResponse'
    { knowledgeBase =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The knowledge base.
createKnowledgeBaseResponse_knowledgeBase :: Lens.Lens' CreateKnowledgeBaseResponse (Prelude.Maybe KnowledgeBaseData)
createKnowledgeBaseResponse_knowledgeBase = Lens.lens (\CreateKnowledgeBaseResponse' {knowledgeBase} -> knowledgeBase) (\s@CreateKnowledgeBaseResponse' {} a -> s {knowledgeBase = a} :: CreateKnowledgeBaseResponse)

-- | The response's http status code.
createKnowledgeBaseResponse_httpStatus :: Lens.Lens' CreateKnowledgeBaseResponse Prelude.Int
createKnowledgeBaseResponse_httpStatus = Lens.lens (\CreateKnowledgeBaseResponse' {httpStatus} -> httpStatus) (\s@CreateKnowledgeBaseResponse' {} a -> s {httpStatus = a} :: CreateKnowledgeBaseResponse)

instance Prelude.NFData CreateKnowledgeBaseResponse where
  rnf CreateKnowledgeBaseResponse' {..} =
    Prelude.rnf knowledgeBase
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.ConnectCases.UpdateTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of an existing template. The template attributes
-- that can be modified include @name@, @description@, @layouts@, and
-- @requiredFields@. At least one of these attributes must not be null. If
-- a null value is provided for a given attribute, that attribute is
-- ignored and its current value is preserved.
module Amazonka.ConnectCases.UpdateTemplate
  ( -- * Creating a Request
    UpdateTemplate (..),
    newUpdateTemplate,

    -- * Request Lenses
    updateTemplate_layoutConfiguration,
    updateTemplate_name,
    updateTemplate_description,
    updateTemplate_requiredFields,
    updateTemplate_domainId,
    updateTemplate_templateId,

    -- * Destructuring the Response
    UpdateTemplateResponse (..),
    newUpdateTemplateResponse,

    -- * Response Lenses
    updateTemplateResponse_httpStatus,
  )
where

import Amazonka.ConnectCases.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateTemplate' smart constructor.
data UpdateTemplate = UpdateTemplate'
  { -- | Configuration of layouts associated to the template.
    layoutConfiguration :: Prelude.Maybe LayoutConfiguration,
    -- | The name of the template. It must be unique per domain.
    name :: Prelude.Maybe Prelude.Text,
    -- | A brief description of the template.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of fields that must contain a value for a case to be successfully
    -- created with this template.
    requiredFields :: Prelude.Maybe [RequiredField],
    -- | The unique identifier of the Cases domain.
    domainId :: Prelude.Text,
    -- | A unique identifier for the template.
    templateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'layoutConfiguration', 'updateTemplate_layoutConfiguration' - Configuration of layouts associated to the template.
--
-- 'name', 'updateTemplate_name' - The name of the template. It must be unique per domain.
--
-- 'description', 'updateTemplate_description' - A brief description of the template.
--
-- 'requiredFields', 'updateTemplate_requiredFields' - A list of fields that must contain a value for a case to be successfully
-- created with this template.
--
-- 'domainId', 'updateTemplate_domainId' - The unique identifier of the Cases domain.
--
-- 'templateId', 'updateTemplate_templateId' - A unique identifier for the template.
newUpdateTemplate ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'templateId'
  Prelude.Text ->
  UpdateTemplate
newUpdateTemplate pDomainId_ pTemplateId_ =
  UpdateTemplate'
    { layoutConfiguration =
        Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      requiredFields = Prelude.Nothing,
      domainId = pDomainId_,
      templateId = pTemplateId_
    }

-- | Configuration of layouts associated to the template.
updateTemplate_layoutConfiguration :: Lens.Lens' UpdateTemplate (Prelude.Maybe LayoutConfiguration)
updateTemplate_layoutConfiguration = Lens.lens (\UpdateTemplate' {layoutConfiguration} -> layoutConfiguration) (\s@UpdateTemplate' {} a -> s {layoutConfiguration = a} :: UpdateTemplate)

-- | The name of the template. It must be unique per domain.
updateTemplate_name :: Lens.Lens' UpdateTemplate (Prelude.Maybe Prelude.Text)
updateTemplate_name = Lens.lens (\UpdateTemplate' {name} -> name) (\s@UpdateTemplate' {} a -> s {name = a} :: UpdateTemplate)

-- | A brief description of the template.
updateTemplate_description :: Lens.Lens' UpdateTemplate (Prelude.Maybe Prelude.Text)
updateTemplate_description = Lens.lens (\UpdateTemplate' {description} -> description) (\s@UpdateTemplate' {} a -> s {description = a} :: UpdateTemplate)

-- | A list of fields that must contain a value for a case to be successfully
-- created with this template.
updateTemplate_requiredFields :: Lens.Lens' UpdateTemplate (Prelude.Maybe [RequiredField])
updateTemplate_requiredFields = Lens.lens (\UpdateTemplate' {requiredFields} -> requiredFields) (\s@UpdateTemplate' {} a -> s {requiredFields = a} :: UpdateTemplate) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the Cases domain.
updateTemplate_domainId :: Lens.Lens' UpdateTemplate Prelude.Text
updateTemplate_domainId = Lens.lens (\UpdateTemplate' {domainId} -> domainId) (\s@UpdateTemplate' {} a -> s {domainId = a} :: UpdateTemplate)

-- | A unique identifier for the template.
updateTemplate_templateId :: Lens.Lens' UpdateTemplate Prelude.Text
updateTemplate_templateId = Lens.lens (\UpdateTemplate' {templateId} -> templateId) (\s@UpdateTemplate' {} a -> s {templateId = a} :: UpdateTemplate)

instance Core.AWSRequest UpdateTemplate where
  type
    AWSResponse UpdateTemplate =
      UpdateTemplateResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTemplate where
  hashWithSalt _salt UpdateTemplate' {..} =
    _salt `Prelude.hashWithSalt` layoutConfiguration
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` requiredFields
      `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` templateId

instance Prelude.NFData UpdateTemplate where
  rnf UpdateTemplate' {..} =
    Prelude.rnf layoutConfiguration
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf requiredFields
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf templateId

instance Core.ToHeaders UpdateTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTemplate where
  toJSON UpdateTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("layoutConfiguration" Core..=)
              Prelude.<$> layoutConfiguration,
            ("name" Core..=) Prelude.<$> name,
            ("description" Core..=) Prelude.<$> description,
            ("requiredFields" Core..=)
              Prelude.<$> requiredFields
          ]
      )

instance Core.ToPath UpdateTemplate where
  toPath UpdateTemplate' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainId,
        "/templates/",
        Core.toBS templateId
      ]

instance Core.ToQuery UpdateTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTemplateResponse' smart constructor.
data UpdateTemplateResponse = UpdateTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateTemplateResponse_httpStatus' - The response's http status code.
newUpdateTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTemplateResponse
newUpdateTemplateResponse pHttpStatus_ =
  UpdateTemplateResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateTemplateResponse_httpStatus :: Lens.Lens' UpdateTemplateResponse Prelude.Int
updateTemplateResponse_httpStatus = Lens.lens (\UpdateTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateTemplateResponse' {} a -> s {httpStatus = a} :: UpdateTemplateResponse)

instance Prelude.NFData UpdateTemplateResponse where
  rnf UpdateTemplateResponse' {..} =
    Prelude.rnf httpStatus

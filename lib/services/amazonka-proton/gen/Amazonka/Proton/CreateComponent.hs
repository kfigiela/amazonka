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
-- Module      : Amazonka.Proton.CreateComponent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an Proton component. A component is an infrastructure extension
-- for a service instance.
--
-- For more information about components, see
-- <https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html Proton components>
-- in the /Proton User Guide/.
module Amazonka.Proton.CreateComponent
  ( -- * Creating a Request
    CreateComponent (..),
    newCreateComponent,

    -- * Request Lenses
    createComponent_tags,
    createComponent_environmentName,
    createComponent_serviceSpec,
    createComponent_description,
    createComponent_serviceName,
    createComponent_serviceInstanceName,
    createComponent_manifest,
    createComponent_name,
    createComponent_templateFile,

    -- * Destructuring the Response
    CreateComponentResponse (..),
    newCreateComponentResponse,

    -- * Response Lenses
    createComponentResponse_httpStatus,
    createComponentResponse_component,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateComponent' smart constructor.
data CreateComponent = CreateComponent'
  { -- | An optional list of metadata items that you can associate with the
    -- Proton component. A tag is a key-value pair.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton resources and tagging>
    -- in the /Proton User Guide/.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the Proton environment that you want to associate this
    -- component with. You must specify this when you don\'t specify
    -- @serviceInstanceName@ and @serviceName@.
    environmentName :: Prelude.Maybe Prelude.Text,
    -- | The service spec that you want the component to use to access service
    -- inputs. Set this only when you attach the component to a service
    -- instance.
    serviceSpec :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | An optional customer-provided description of the component.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the service that @serviceInstanceName@ is associated with.
    -- If you don\'t specify this, the component isn\'t attached to any service
    -- instance. Specify both @serviceInstanceName@ and @serviceName@ or
    -- neither of them.
    serviceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the service instance that you want to attach this component
    -- to. If you don\'t specify this, the component isn\'t attached to any
    -- service instance. Specify both @serviceInstanceName@ and @serviceName@
    -- or neither of them.
    serviceInstanceName :: Prelude.Maybe Prelude.Text,
    -- | A path to a manifest file that lists the Infrastructure as Code (IaC)
    -- file, template language, and rendering engine for infrastructure that a
    -- custom component provisions.
    manifest :: Core.Sensitive Prelude.Text,
    -- | The customer-provided name of the component.
    name :: Prelude.Text,
    -- | A path to the Infrastructure as Code (IaC) file describing
    -- infrastructure that a custom component provisions.
    --
    -- Components support a single IaC file, even if you use Terraform as your
    -- template language.
    templateFile :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateComponent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createComponent_tags' - An optional list of metadata items that you can associate with the
-- Proton component. A tag is a key-value pair.
--
-- For more information, see
-- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton resources and tagging>
-- in the /Proton User Guide/.
--
-- 'environmentName', 'createComponent_environmentName' - The name of the Proton environment that you want to associate this
-- component with. You must specify this when you don\'t specify
-- @serviceInstanceName@ and @serviceName@.
--
-- 'serviceSpec', 'createComponent_serviceSpec' - The service spec that you want the component to use to access service
-- inputs. Set this only when you attach the component to a service
-- instance.
--
-- 'description', 'createComponent_description' - An optional customer-provided description of the component.
--
-- 'serviceName', 'createComponent_serviceName' - The name of the service that @serviceInstanceName@ is associated with.
-- If you don\'t specify this, the component isn\'t attached to any service
-- instance. Specify both @serviceInstanceName@ and @serviceName@ or
-- neither of them.
--
-- 'serviceInstanceName', 'createComponent_serviceInstanceName' - The name of the service instance that you want to attach this component
-- to. If you don\'t specify this, the component isn\'t attached to any
-- service instance. Specify both @serviceInstanceName@ and @serviceName@
-- or neither of them.
--
-- 'manifest', 'createComponent_manifest' - A path to a manifest file that lists the Infrastructure as Code (IaC)
-- file, template language, and rendering engine for infrastructure that a
-- custom component provisions.
--
-- 'name', 'createComponent_name' - The customer-provided name of the component.
--
-- 'templateFile', 'createComponent_templateFile' - A path to the Infrastructure as Code (IaC) file describing
-- infrastructure that a custom component provisions.
--
-- Components support a single IaC file, even if you use Terraform as your
-- template language.
newCreateComponent ::
  -- | 'manifest'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'templateFile'
  Prelude.Text ->
  CreateComponent
newCreateComponent pManifest_ pName_ pTemplateFile_ =
  CreateComponent'
    { tags = Prelude.Nothing,
      environmentName = Prelude.Nothing,
      serviceSpec = Prelude.Nothing,
      description = Prelude.Nothing,
      serviceName = Prelude.Nothing,
      serviceInstanceName = Prelude.Nothing,
      manifest = Core._Sensitive Lens.# pManifest_,
      name = pName_,
      templateFile = Core._Sensitive Lens.# pTemplateFile_
    }

-- | An optional list of metadata items that you can associate with the
-- Proton component. A tag is a key-value pair.
--
-- For more information, see
-- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton resources and tagging>
-- in the /Proton User Guide/.
createComponent_tags :: Lens.Lens' CreateComponent (Prelude.Maybe [Tag])
createComponent_tags = Lens.lens (\CreateComponent' {tags} -> tags) (\s@CreateComponent' {} a -> s {tags = a} :: CreateComponent) Prelude.. Lens.mapping Lens.coerced

-- | The name of the Proton environment that you want to associate this
-- component with. You must specify this when you don\'t specify
-- @serviceInstanceName@ and @serviceName@.
createComponent_environmentName :: Lens.Lens' CreateComponent (Prelude.Maybe Prelude.Text)
createComponent_environmentName = Lens.lens (\CreateComponent' {environmentName} -> environmentName) (\s@CreateComponent' {} a -> s {environmentName = a} :: CreateComponent)

-- | The service spec that you want the component to use to access service
-- inputs. Set this only when you attach the component to a service
-- instance.
createComponent_serviceSpec :: Lens.Lens' CreateComponent (Prelude.Maybe Prelude.Text)
createComponent_serviceSpec = Lens.lens (\CreateComponent' {serviceSpec} -> serviceSpec) (\s@CreateComponent' {} a -> s {serviceSpec = a} :: CreateComponent) Prelude.. Lens.mapping Core._Sensitive

-- | An optional customer-provided description of the component.
createComponent_description :: Lens.Lens' CreateComponent (Prelude.Maybe Prelude.Text)
createComponent_description = Lens.lens (\CreateComponent' {description} -> description) (\s@CreateComponent' {} a -> s {description = a} :: CreateComponent) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the service that @serviceInstanceName@ is associated with.
-- If you don\'t specify this, the component isn\'t attached to any service
-- instance. Specify both @serviceInstanceName@ and @serviceName@ or
-- neither of them.
createComponent_serviceName :: Lens.Lens' CreateComponent (Prelude.Maybe Prelude.Text)
createComponent_serviceName = Lens.lens (\CreateComponent' {serviceName} -> serviceName) (\s@CreateComponent' {} a -> s {serviceName = a} :: CreateComponent)

-- | The name of the service instance that you want to attach this component
-- to. If you don\'t specify this, the component isn\'t attached to any
-- service instance. Specify both @serviceInstanceName@ and @serviceName@
-- or neither of them.
createComponent_serviceInstanceName :: Lens.Lens' CreateComponent (Prelude.Maybe Prelude.Text)
createComponent_serviceInstanceName = Lens.lens (\CreateComponent' {serviceInstanceName} -> serviceInstanceName) (\s@CreateComponent' {} a -> s {serviceInstanceName = a} :: CreateComponent)

-- | A path to a manifest file that lists the Infrastructure as Code (IaC)
-- file, template language, and rendering engine for infrastructure that a
-- custom component provisions.
createComponent_manifest :: Lens.Lens' CreateComponent Prelude.Text
createComponent_manifest = Lens.lens (\CreateComponent' {manifest} -> manifest) (\s@CreateComponent' {} a -> s {manifest = a} :: CreateComponent) Prelude.. Core._Sensitive

-- | The customer-provided name of the component.
createComponent_name :: Lens.Lens' CreateComponent Prelude.Text
createComponent_name = Lens.lens (\CreateComponent' {name} -> name) (\s@CreateComponent' {} a -> s {name = a} :: CreateComponent)

-- | A path to the Infrastructure as Code (IaC) file describing
-- infrastructure that a custom component provisions.
--
-- Components support a single IaC file, even if you use Terraform as your
-- template language.
createComponent_templateFile :: Lens.Lens' CreateComponent Prelude.Text
createComponent_templateFile = Lens.lens (\CreateComponent' {templateFile} -> templateFile) (\s@CreateComponent' {} a -> s {templateFile = a} :: CreateComponent) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateComponent where
  type
    AWSResponse CreateComponent =
      CreateComponentResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateComponentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "component")
      )

instance Prelude.Hashable CreateComponent where
  hashWithSalt _salt CreateComponent' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` environmentName
      `Prelude.hashWithSalt` serviceSpec
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` serviceName
      `Prelude.hashWithSalt` serviceInstanceName
      `Prelude.hashWithSalt` manifest
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` templateFile

instance Prelude.NFData CreateComponent where
  rnf CreateComponent' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf environmentName
      `Prelude.seq` Prelude.rnf serviceSpec
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf serviceName
      `Prelude.seq` Prelude.rnf serviceInstanceName
      `Prelude.seq` Prelude.rnf manifest
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf templateFile

instance Core.ToHeaders CreateComponent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.CreateComponent" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateComponent where
  toJSON CreateComponent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("environmentName" Core..=)
              Prelude.<$> environmentName,
            ("serviceSpec" Core..=) Prelude.<$> serviceSpec,
            ("description" Core..=) Prelude.<$> description,
            ("serviceName" Core..=) Prelude.<$> serviceName,
            ("serviceInstanceName" Core..=)
              Prelude.<$> serviceInstanceName,
            Prelude.Just ("manifest" Core..= manifest),
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("templateFile" Core..= templateFile)
          ]
      )

instance Core.ToPath CreateComponent where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateComponent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateComponentResponse' smart constructor.
data CreateComponentResponse = CreateComponentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The detailed data of the created component.
    component :: Component
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateComponentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createComponentResponse_httpStatus' - The response's http status code.
--
-- 'component', 'createComponentResponse_component' - The detailed data of the created component.
newCreateComponentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'component'
  Component ->
  CreateComponentResponse
newCreateComponentResponse pHttpStatus_ pComponent_ =
  CreateComponentResponse'
    { httpStatus = pHttpStatus_,
      component = pComponent_
    }

-- | The response's http status code.
createComponentResponse_httpStatus :: Lens.Lens' CreateComponentResponse Prelude.Int
createComponentResponse_httpStatus = Lens.lens (\CreateComponentResponse' {httpStatus} -> httpStatus) (\s@CreateComponentResponse' {} a -> s {httpStatus = a} :: CreateComponentResponse)

-- | The detailed data of the created component.
createComponentResponse_component :: Lens.Lens' CreateComponentResponse Component
createComponentResponse_component = Lens.lens (\CreateComponentResponse' {component} -> component) (\s@CreateComponentResponse' {} a -> s {component = a} :: CreateComponentResponse)

instance Prelude.NFData CreateComponentResponse where
  rnf CreateComponentResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf component

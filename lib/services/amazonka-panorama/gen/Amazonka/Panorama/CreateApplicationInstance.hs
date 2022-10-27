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
-- Module      : Amazonka.Panorama.CreateApplicationInstance
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application instance and deploys it to a device.
module Amazonka.Panorama.CreateApplicationInstance
  ( -- * Creating a Request
    CreateApplicationInstance (..),
    newCreateApplicationInstance,

    -- * Request Lenses
    createApplicationInstance_tags,
    createApplicationInstance_name,
    createApplicationInstance_applicationInstanceIdToReplace,
    createApplicationInstance_manifestOverridesPayload,
    createApplicationInstance_description,
    createApplicationInstance_runtimeRoleArn,
    createApplicationInstance_defaultRuntimeContextDevice,
    createApplicationInstance_manifestPayload,

    -- * Destructuring the Response
    CreateApplicationInstanceResponse (..),
    newCreateApplicationInstanceResponse,

    -- * Response Lenses
    createApplicationInstanceResponse_httpStatus,
    createApplicationInstanceResponse_applicationInstanceId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateApplicationInstance' smart constructor.
data CreateApplicationInstance = CreateApplicationInstance'
  { -- | Tags for the application instance.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A name for the application instance.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of an application instance to replace with the new instance.
    applicationInstanceIdToReplace :: Prelude.Maybe Prelude.Text,
    -- | Setting overrides for the application manifest.
    manifestOverridesPayload :: Prelude.Maybe ManifestOverridesPayload,
    -- | A description for the application instance.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of a runtime role for the application instance.
    runtimeRoleArn :: Prelude.Maybe Prelude.Text,
    -- | A device\'s ID.
    defaultRuntimeContextDevice :: Prelude.Text,
    -- | The application\'s manifest document.
    manifestPayload :: ManifestPayload
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateApplicationInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createApplicationInstance_tags' - Tags for the application instance.
--
-- 'name', 'createApplicationInstance_name' - A name for the application instance.
--
-- 'applicationInstanceIdToReplace', 'createApplicationInstance_applicationInstanceIdToReplace' - The ID of an application instance to replace with the new instance.
--
-- 'manifestOverridesPayload', 'createApplicationInstance_manifestOverridesPayload' - Setting overrides for the application manifest.
--
-- 'description', 'createApplicationInstance_description' - A description for the application instance.
--
-- 'runtimeRoleArn', 'createApplicationInstance_runtimeRoleArn' - The ARN of a runtime role for the application instance.
--
-- 'defaultRuntimeContextDevice', 'createApplicationInstance_defaultRuntimeContextDevice' - A device\'s ID.
--
-- 'manifestPayload', 'createApplicationInstance_manifestPayload' - The application\'s manifest document.
newCreateApplicationInstance ::
  -- | 'defaultRuntimeContextDevice'
  Prelude.Text ->
  -- | 'manifestPayload'
  ManifestPayload ->
  CreateApplicationInstance
newCreateApplicationInstance
  pDefaultRuntimeContextDevice_
  pManifestPayload_ =
    CreateApplicationInstance'
      { tags = Prelude.Nothing,
        name = Prelude.Nothing,
        applicationInstanceIdToReplace = Prelude.Nothing,
        manifestOverridesPayload = Prelude.Nothing,
        description = Prelude.Nothing,
        runtimeRoleArn = Prelude.Nothing,
        defaultRuntimeContextDevice =
          pDefaultRuntimeContextDevice_,
        manifestPayload = pManifestPayload_
      }

-- | Tags for the application instance.
createApplicationInstance_tags :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createApplicationInstance_tags = Lens.lens (\CreateApplicationInstance' {tags} -> tags) (\s@CreateApplicationInstance' {} a -> s {tags = a} :: CreateApplicationInstance) Prelude.. Lens.mapping Lens.coerced

-- | A name for the application instance.
createApplicationInstance_name :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe Prelude.Text)
createApplicationInstance_name = Lens.lens (\CreateApplicationInstance' {name} -> name) (\s@CreateApplicationInstance' {} a -> s {name = a} :: CreateApplicationInstance)

-- | The ID of an application instance to replace with the new instance.
createApplicationInstance_applicationInstanceIdToReplace :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe Prelude.Text)
createApplicationInstance_applicationInstanceIdToReplace = Lens.lens (\CreateApplicationInstance' {applicationInstanceIdToReplace} -> applicationInstanceIdToReplace) (\s@CreateApplicationInstance' {} a -> s {applicationInstanceIdToReplace = a} :: CreateApplicationInstance)

-- | Setting overrides for the application manifest.
createApplicationInstance_manifestOverridesPayload :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe ManifestOverridesPayload)
createApplicationInstance_manifestOverridesPayload = Lens.lens (\CreateApplicationInstance' {manifestOverridesPayload} -> manifestOverridesPayload) (\s@CreateApplicationInstance' {} a -> s {manifestOverridesPayload = a} :: CreateApplicationInstance)

-- | A description for the application instance.
createApplicationInstance_description :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe Prelude.Text)
createApplicationInstance_description = Lens.lens (\CreateApplicationInstance' {description} -> description) (\s@CreateApplicationInstance' {} a -> s {description = a} :: CreateApplicationInstance)

-- | The ARN of a runtime role for the application instance.
createApplicationInstance_runtimeRoleArn :: Lens.Lens' CreateApplicationInstance (Prelude.Maybe Prelude.Text)
createApplicationInstance_runtimeRoleArn = Lens.lens (\CreateApplicationInstance' {runtimeRoleArn} -> runtimeRoleArn) (\s@CreateApplicationInstance' {} a -> s {runtimeRoleArn = a} :: CreateApplicationInstance)

-- | A device\'s ID.
createApplicationInstance_defaultRuntimeContextDevice :: Lens.Lens' CreateApplicationInstance Prelude.Text
createApplicationInstance_defaultRuntimeContextDevice = Lens.lens (\CreateApplicationInstance' {defaultRuntimeContextDevice} -> defaultRuntimeContextDevice) (\s@CreateApplicationInstance' {} a -> s {defaultRuntimeContextDevice = a} :: CreateApplicationInstance)

-- | The application\'s manifest document.
createApplicationInstance_manifestPayload :: Lens.Lens' CreateApplicationInstance ManifestPayload
createApplicationInstance_manifestPayload = Lens.lens (\CreateApplicationInstance' {manifestPayload} -> manifestPayload) (\s@CreateApplicationInstance' {} a -> s {manifestPayload = a} :: CreateApplicationInstance)

instance Core.AWSRequest CreateApplicationInstance where
  type
    AWSResponse CreateApplicationInstance =
      CreateApplicationInstanceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateApplicationInstanceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ApplicationInstanceId")
      )

instance Prelude.Hashable CreateApplicationInstance where
  hashWithSalt _salt CreateApplicationInstance' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` applicationInstanceIdToReplace
      `Prelude.hashWithSalt` manifestOverridesPayload
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` runtimeRoleArn
      `Prelude.hashWithSalt` defaultRuntimeContextDevice
      `Prelude.hashWithSalt` manifestPayload

instance Prelude.NFData CreateApplicationInstance where
  rnf CreateApplicationInstance' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf applicationInstanceIdToReplace
      `Prelude.seq` Prelude.rnf manifestOverridesPayload
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf runtimeRoleArn
      `Prelude.seq` Prelude.rnf defaultRuntimeContextDevice
      `Prelude.seq` Prelude.rnf manifestPayload

instance Core.ToHeaders CreateApplicationInstance where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateApplicationInstance where
  toJSON CreateApplicationInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Name" Core..=) Prelude.<$> name,
            ("ApplicationInstanceIdToReplace" Core..=)
              Prelude.<$> applicationInstanceIdToReplace,
            ("ManifestOverridesPayload" Core..=)
              Prelude.<$> manifestOverridesPayload,
            ("Description" Core..=) Prelude.<$> description,
            ("RuntimeRoleArn" Core..=)
              Prelude.<$> runtimeRoleArn,
            Prelude.Just
              ( "DefaultRuntimeContextDevice"
                  Core..= defaultRuntimeContextDevice
              ),
            Prelude.Just
              ("ManifestPayload" Core..= manifestPayload)
          ]
      )

instance Core.ToPath CreateApplicationInstance where
  toPath = Prelude.const "/application-instances"

instance Core.ToQuery CreateApplicationInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateApplicationInstanceResponse' smart constructor.
data CreateApplicationInstanceResponse = CreateApplicationInstanceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The application instance\'s ID.
    applicationInstanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateApplicationInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createApplicationInstanceResponse_httpStatus' - The response's http status code.
--
-- 'applicationInstanceId', 'createApplicationInstanceResponse_applicationInstanceId' - The application instance\'s ID.
newCreateApplicationInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'applicationInstanceId'
  Prelude.Text ->
  CreateApplicationInstanceResponse
newCreateApplicationInstanceResponse
  pHttpStatus_
  pApplicationInstanceId_ =
    CreateApplicationInstanceResponse'
      { httpStatus =
          pHttpStatus_,
        applicationInstanceId =
          pApplicationInstanceId_
      }

-- | The response's http status code.
createApplicationInstanceResponse_httpStatus :: Lens.Lens' CreateApplicationInstanceResponse Prelude.Int
createApplicationInstanceResponse_httpStatus = Lens.lens (\CreateApplicationInstanceResponse' {httpStatus} -> httpStatus) (\s@CreateApplicationInstanceResponse' {} a -> s {httpStatus = a} :: CreateApplicationInstanceResponse)

-- | The application instance\'s ID.
createApplicationInstanceResponse_applicationInstanceId :: Lens.Lens' CreateApplicationInstanceResponse Prelude.Text
createApplicationInstanceResponse_applicationInstanceId = Lens.lens (\CreateApplicationInstanceResponse' {applicationInstanceId} -> applicationInstanceId) (\s@CreateApplicationInstanceResponse' {} a -> s {applicationInstanceId = a} :: CreateApplicationInstanceResponse)

instance
  Prelude.NFData
    CreateApplicationInstanceResponse
  where
  rnf CreateApplicationInstanceResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf applicationInstanceId

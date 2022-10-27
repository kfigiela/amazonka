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
-- Module      : Amazonka.KafkaConnect.CreateCustomPlugin
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom plugin using the specified properties.
module Amazonka.KafkaConnect.CreateCustomPlugin
  ( -- * Creating a Request
    CreateCustomPlugin (..),
    newCreateCustomPlugin,

    -- * Request Lenses
    createCustomPlugin_description,
    createCustomPlugin_contentType,
    createCustomPlugin_location,
    createCustomPlugin_name,

    -- * Destructuring the Response
    CreateCustomPluginResponse (..),
    newCreateCustomPluginResponse,

    -- * Response Lenses
    createCustomPluginResponse_name,
    createCustomPluginResponse_revision,
    createCustomPluginResponse_customPluginState,
    createCustomPluginResponse_customPluginArn,
    createCustomPluginResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KafkaConnect.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateCustomPlugin' smart constructor.
data CreateCustomPlugin = CreateCustomPlugin'
  { -- | A summary description of the custom plugin.
    description :: Prelude.Maybe Prelude.Text,
    -- | The type of the plugin file.
    contentType :: CustomPluginContentType,
    -- | Information about the location of a custom plugin.
    location :: CustomPluginLocation,
    -- | The name of the custom plugin.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCustomPlugin' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createCustomPlugin_description' - A summary description of the custom plugin.
--
-- 'contentType', 'createCustomPlugin_contentType' - The type of the plugin file.
--
-- 'location', 'createCustomPlugin_location' - Information about the location of a custom plugin.
--
-- 'name', 'createCustomPlugin_name' - The name of the custom plugin.
newCreateCustomPlugin ::
  -- | 'contentType'
  CustomPluginContentType ->
  -- | 'location'
  CustomPluginLocation ->
  -- | 'name'
  Prelude.Text ->
  CreateCustomPlugin
newCreateCustomPlugin pContentType_ pLocation_ pName_ =
  CreateCustomPlugin'
    { description = Prelude.Nothing,
      contentType = pContentType_,
      location = pLocation_,
      name = pName_
    }

-- | A summary description of the custom plugin.
createCustomPlugin_description :: Lens.Lens' CreateCustomPlugin (Prelude.Maybe Prelude.Text)
createCustomPlugin_description = Lens.lens (\CreateCustomPlugin' {description} -> description) (\s@CreateCustomPlugin' {} a -> s {description = a} :: CreateCustomPlugin)

-- | The type of the plugin file.
createCustomPlugin_contentType :: Lens.Lens' CreateCustomPlugin CustomPluginContentType
createCustomPlugin_contentType = Lens.lens (\CreateCustomPlugin' {contentType} -> contentType) (\s@CreateCustomPlugin' {} a -> s {contentType = a} :: CreateCustomPlugin)

-- | Information about the location of a custom plugin.
createCustomPlugin_location :: Lens.Lens' CreateCustomPlugin CustomPluginLocation
createCustomPlugin_location = Lens.lens (\CreateCustomPlugin' {location} -> location) (\s@CreateCustomPlugin' {} a -> s {location = a} :: CreateCustomPlugin)

-- | The name of the custom plugin.
createCustomPlugin_name :: Lens.Lens' CreateCustomPlugin Prelude.Text
createCustomPlugin_name = Lens.lens (\CreateCustomPlugin' {name} -> name) (\s@CreateCustomPlugin' {} a -> s {name = a} :: CreateCustomPlugin)

instance Core.AWSRequest CreateCustomPlugin where
  type
    AWSResponse CreateCustomPlugin =
      CreateCustomPluginResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCustomPluginResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "revision")
            Prelude.<*> (x Core..?> "customPluginState")
            Prelude.<*> (x Core..?> "customPluginArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCustomPlugin where
  hashWithSalt _salt CreateCustomPlugin' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` contentType
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateCustomPlugin where
  rnf CreateCustomPlugin' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf contentType
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateCustomPlugin where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCustomPlugin where
  toJSON CreateCustomPlugin' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("contentType" Core..= contentType),
            Prelude.Just ("location" Core..= location),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateCustomPlugin where
  toPath = Prelude.const "/v1/custom-plugins"

instance Core.ToQuery CreateCustomPlugin where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCustomPluginResponse' smart constructor.
data CreateCustomPluginResponse = CreateCustomPluginResponse'
  { -- | The name of the custom plugin.
    name :: Prelude.Maybe Prelude.Text,
    -- | The revision of the custom plugin.
    revision :: Prelude.Maybe Prelude.Integer,
    -- | The state of the custom plugin.
    customPluginState :: Prelude.Maybe CustomPluginState,
    -- | The Amazon Resource Name (ARN) that Amazon assigned to the custom
    -- plugin.
    customPluginArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCustomPluginResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createCustomPluginResponse_name' - The name of the custom plugin.
--
-- 'revision', 'createCustomPluginResponse_revision' - The revision of the custom plugin.
--
-- 'customPluginState', 'createCustomPluginResponse_customPluginState' - The state of the custom plugin.
--
-- 'customPluginArn', 'createCustomPluginResponse_customPluginArn' - The Amazon Resource Name (ARN) that Amazon assigned to the custom
-- plugin.
--
-- 'httpStatus', 'createCustomPluginResponse_httpStatus' - The response's http status code.
newCreateCustomPluginResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCustomPluginResponse
newCreateCustomPluginResponse pHttpStatus_ =
  CreateCustomPluginResponse'
    { name = Prelude.Nothing,
      revision = Prelude.Nothing,
      customPluginState = Prelude.Nothing,
      customPluginArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the custom plugin.
createCustomPluginResponse_name :: Lens.Lens' CreateCustomPluginResponse (Prelude.Maybe Prelude.Text)
createCustomPluginResponse_name = Lens.lens (\CreateCustomPluginResponse' {name} -> name) (\s@CreateCustomPluginResponse' {} a -> s {name = a} :: CreateCustomPluginResponse)

-- | The revision of the custom plugin.
createCustomPluginResponse_revision :: Lens.Lens' CreateCustomPluginResponse (Prelude.Maybe Prelude.Integer)
createCustomPluginResponse_revision = Lens.lens (\CreateCustomPluginResponse' {revision} -> revision) (\s@CreateCustomPluginResponse' {} a -> s {revision = a} :: CreateCustomPluginResponse)

-- | The state of the custom plugin.
createCustomPluginResponse_customPluginState :: Lens.Lens' CreateCustomPluginResponse (Prelude.Maybe CustomPluginState)
createCustomPluginResponse_customPluginState = Lens.lens (\CreateCustomPluginResponse' {customPluginState} -> customPluginState) (\s@CreateCustomPluginResponse' {} a -> s {customPluginState = a} :: CreateCustomPluginResponse)

-- | The Amazon Resource Name (ARN) that Amazon assigned to the custom
-- plugin.
createCustomPluginResponse_customPluginArn :: Lens.Lens' CreateCustomPluginResponse (Prelude.Maybe Prelude.Text)
createCustomPluginResponse_customPluginArn = Lens.lens (\CreateCustomPluginResponse' {customPluginArn} -> customPluginArn) (\s@CreateCustomPluginResponse' {} a -> s {customPluginArn = a} :: CreateCustomPluginResponse)

-- | The response's http status code.
createCustomPluginResponse_httpStatus :: Lens.Lens' CreateCustomPluginResponse Prelude.Int
createCustomPluginResponse_httpStatus = Lens.lens (\CreateCustomPluginResponse' {httpStatus} -> httpStatus) (\s@CreateCustomPluginResponse' {} a -> s {httpStatus = a} :: CreateCustomPluginResponse)

instance Prelude.NFData CreateCustomPluginResponse where
  rnf CreateCustomPluginResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf revision
      `Prelude.seq` Prelude.rnf customPluginState
      `Prelude.seq` Prelude.rnf customPluginArn
      `Prelude.seq` Prelude.rnf httpStatus

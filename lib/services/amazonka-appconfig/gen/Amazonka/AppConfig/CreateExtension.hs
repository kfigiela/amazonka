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
-- Module      : Amazonka.AppConfig.CreateExtension
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AppConfig extension. An extension augments your ability to
-- inject logic or behavior at different points during the AppConfig
-- workflow of creating or deploying a configuration.
--
-- You can create your own extensions or use the Amazon Web
-- Services-authored extensions provided by AppConfig. For most use-cases,
-- to create your own extension, you must create an Lambda function to
-- perform any computation and processing defined in the extension. For
-- more information about extensions, see
-- <https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html Working with AppConfig extensions>
-- in the /AppConfig User Guide/.
module Amazonka.AppConfig.CreateExtension
  ( -- * Creating a Request
    CreateExtension (..),
    newCreateExtension,

    -- * Request Lenses
    createExtension_tags,
    createExtension_latestVersionNumber,
    createExtension_description,
    createExtension_parameters,
    createExtension_name,
    createExtension_actions,

    -- * Destructuring the Response
    Extension (..),
    newExtension,

    -- * Response Lenses
    extension_name,
    extension_arn,
    extension_id,
    extension_description,
    extension_versionNumber,
    extension_actions,
    extension_parameters,
  )
where

import Amazonka.AppConfig.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateExtension' smart constructor.
data CreateExtension = CreateExtension'
  { -- | Adds one or more tags for the specified extension. Tags are metadata
    -- that help you categorize resources in different ways, for example, by
    -- purpose, owner, or environment. Each tag consists of a key and an
    -- optional value, both of which you define.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | You can omit this field when you create an extension. When you create a
    -- new version, specify the most recent current version number. For
    -- example, you create version 3, enter 2 for this field.
    latestVersionNumber :: Prelude.Maybe Prelude.Int,
    -- | Information about the extension.
    description :: Prelude.Maybe Prelude.Text,
    -- | The parameters accepted by the extension. You specify parameter values
    -- when you associate the extension to an AppConfig resource by using the
    -- @CreateExtensionAssociation@ API action. For Lambda extension actions,
    -- these parameters are included in the Lambda request object.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Parameter),
    -- | A name for the extension. Each extension name in your account must be
    -- unique. Extension versions use the same name.
    name :: Prelude.Text,
    -- | The actions defined in the extension.
    actions :: Prelude.HashMap ActionPoint (Prelude.NonEmpty Action)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateExtension' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createExtension_tags' - Adds one or more tags for the specified extension. Tags are metadata
-- that help you categorize resources in different ways, for example, by
-- purpose, owner, or environment. Each tag consists of a key and an
-- optional value, both of which you define.
--
-- 'latestVersionNumber', 'createExtension_latestVersionNumber' - You can omit this field when you create an extension. When you create a
-- new version, specify the most recent current version number. For
-- example, you create version 3, enter 2 for this field.
--
-- 'description', 'createExtension_description' - Information about the extension.
--
-- 'parameters', 'createExtension_parameters' - The parameters accepted by the extension. You specify parameter values
-- when you associate the extension to an AppConfig resource by using the
-- @CreateExtensionAssociation@ API action. For Lambda extension actions,
-- these parameters are included in the Lambda request object.
--
-- 'name', 'createExtension_name' - A name for the extension. Each extension name in your account must be
-- unique. Extension versions use the same name.
--
-- 'actions', 'createExtension_actions' - The actions defined in the extension.
newCreateExtension ::
  -- | 'name'
  Prelude.Text ->
  CreateExtension
newCreateExtension pName_ =
  CreateExtension'
    { tags = Prelude.Nothing,
      latestVersionNumber = Prelude.Nothing,
      description = Prelude.Nothing,
      parameters = Prelude.Nothing,
      name = pName_,
      actions = Prelude.mempty
    }

-- | Adds one or more tags for the specified extension. Tags are metadata
-- that help you categorize resources in different ways, for example, by
-- purpose, owner, or environment. Each tag consists of a key and an
-- optional value, both of which you define.
createExtension_tags :: Lens.Lens' CreateExtension (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createExtension_tags = Lens.lens (\CreateExtension' {tags} -> tags) (\s@CreateExtension' {} a -> s {tags = a} :: CreateExtension) Prelude.. Lens.mapping Lens.coerced

-- | You can omit this field when you create an extension. When you create a
-- new version, specify the most recent current version number. For
-- example, you create version 3, enter 2 for this field.
createExtension_latestVersionNumber :: Lens.Lens' CreateExtension (Prelude.Maybe Prelude.Int)
createExtension_latestVersionNumber = Lens.lens (\CreateExtension' {latestVersionNumber} -> latestVersionNumber) (\s@CreateExtension' {} a -> s {latestVersionNumber = a} :: CreateExtension)

-- | Information about the extension.
createExtension_description :: Lens.Lens' CreateExtension (Prelude.Maybe Prelude.Text)
createExtension_description = Lens.lens (\CreateExtension' {description} -> description) (\s@CreateExtension' {} a -> s {description = a} :: CreateExtension)

-- | The parameters accepted by the extension. You specify parameter values
-- when you associate the extension to an AppConfig resource by using the
-- @CreateExtensionAssociation@ API action. For Lambda extension actions,
-- these parameters are included in the Lambda request object.
createExtension_parameters :: Lens.Lens' CreateExtension (Prelude.Maybe (Prelude.HashMap Prelude.Text Parameter))
createExtension_parameters = Lens.lens (\CreateExtension' {parameters} -> parameters) (\s@CreateExtension' {} a -> s {parameters = a} :: CreateExtension) Prelude.. Lens.mapping Lens.coerced

-- | A name for the extension. Each extension name in your account must be
-- unique. Extension versions use the same name.
createExtension_name :: Lens.Lens' CreateExtension Prelude.Text
createExtension_name = Lens.lens (\CreateExtension' {name} -> name) (\s@CreateExtension' {} a -> s {name = a} :: CreateExtension)

-- | The actions defined in the extension.
createExtension_actions :: Lens.Lens' CreateExtension (Prelude.HashMap ActionPoint (Prelude.NonEmpty Action))
createExtension_actions = Lens.lens (\CreateExtension' {actions} -> actions) (\s@CreateExtension' {} a -> s {actions = a} :: CreateExtension) Prelude.. Lens.coerced

instance Core.AWSRequest CreateExtension where
  type AWSResponse CreateExtension = Extension
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateExtension where
  hashWithSalt _salt CreateExtension' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` latestVersionNumber
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` actions

instance Prelude.NFData CreateExtension where
  rnf CreateExtension' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf latestVersionNumber
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf actions

instance Core.ToHeaders CreateExtension where
  toHeaders CreateExtension' {..} =
    Prelude.mconcat
      [ "Latest-Version-Number" Core.=# latestVersionNumber,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CreateExtension where
  toJSON CreateExtension' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Description" Core..=) Prelude.<$> description,
            ("Parameters" Core..=) Prelude.<$> parameters,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Actions" Core..= actions)
          ]
      )

instance Core.ToPath CreateExtension where
  toPath = Prelude.const "/extensions"

instance Core.ToQuery CreateExtension where
  toQuery = Prelude.const Prelude.mempty

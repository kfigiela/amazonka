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
-- Module      : Amazonka.GreengrassV2.CreateComponentVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a component. Components are software that run on Greengrass core
-- devices. After you develop and test a component on your core device, you
-- can use this operation to upload your component to IoT Greengrass. Then,
-- you can deploy the component to other core devices.
--
-- You can use this operation to do the following:
--
-- -   __Create components from recipes__
--
--     Create a component from a recipe, which is a file that defines the
--     component\'s metadata, parameters, dependencies, lifecycle,
--     artifacts, and platform capability. For more information, see
--     <https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html IoT Greengrass component recipe reference>
--     in the /IoT Greengrass V2 Developer Guide/.
--
--     To create a component from a recipe, specify @inlineRecipe@ when you
--     call this operation.
--
-- -   __Create components from Lambda functions__
--
--     Create a component from an Lambda function that runs on IoT
--     Greengrass. This creates a recipe and artifacts from the Lambda
--     function\'s deployment package. You can use this operation to
--     migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass
--     V2.
--
--     This function only accepts Lambda functions that use the following
--     runtimes:
--
--     -   Python 2.7 – @python2.7@
--
--     -   Python 3.7 – @python3.7@
--
--     -   Python 3.8 – @python3.8@
--
--     -   Python 3.9 – @python3.9@
--
--     -   Java 8 – @java8@
--
--     -   Java 11 – @java11@
--
--     -   Node.js 10 – @nodejs10.x@
--
--     -   Node.js 12 – @nodejs12.x@
--
--     -   Node.js 14 – @nodejs14.x@
--
--     To create a component from a Lambda function, specify
--     @lambdaFunction@ when you call this operation.
--
--     IoT Greengrass currently supports Lambda functions on only Linux
--     core devices.
module Amazonka.GreengrassV2.CreateComponentVersion
  ( -- * Creating a Request
    CreateComponentVersion (..),
    newCreateComponentVersion,

    -- * Request Lenses
    createComponentVersion_inlineRecipe,
    createComponentVersion_tags,
    createComponentVersion_clientToken,
    createComponentVersion_lambdaFunction,

    -- * Destructuring the Response
    CreateComponentVersionResponse (..),
    newCreateComponentVersionResponse,

    -- * Response Lenses
    createComponentVersionResponse_arn,
    createComponentVersionResponse_httpStatus,
    createComponentVersionResponse_componentName,
    createComponentVersionResponse_componentVersion,
    createComponentVersionResponse_creationTimestamp,
    createComponentVersionResponse_status,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GreengrassV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateComponentVersion' smart constructor.
data CreateComponentVersion = CreateComponentVersion'
  { -- | The recipe to use to create the component. The recipe defines the
    -- component\'s metadata, parameters, dependencies, lifecycle, artifacts,
    -- and platform compatibility.
    --
    -- You must specify either @inlineRecipe@ or @lambdaFunction@.
    inlineRecipe :: Prelude.Maybe Core.Base64,
    -- | A list of key-value pairs that contain metadata for the resource. For
    -- more information, see
    -- <https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html Tag your resources>
    -- in the /IoT Greengrass V2 Developer Guide/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A unique, case-sensitive identifier that you can provide to ensure that
    -- the request is idempotent. Idempotency means that the request is
    -- successfully processed only once, even if you send the request multiple
    -- times. When a request succeeds, and you specify the same client token
    -- for subsequent successful requests, the IoT Greengrass V2 service
    -- returns the successful response that it caches from the previous
    -- request. IoT Greengrass V2 caches successful responses for idempotent
    -- requests for up to 8 hours.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The parameters to create a component from a Lambda function.
    --
    -- You must specify either @inlineRecipe@ or @lambdaFunction@.
    lambdaFunction :: Prelude.Maybe LambdaFunctionRecipeSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateComponentVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inlineRecipe', 'createComponentVersion_inlineRecipe' - The recipe to use to create the component. The recipe defines the
-- component\'s metadata, parameters, dependencies, lifecycle, artifacts,
-- and platform compatibility.
--
-- You must specify either @inlineRecipe@ or @lambdaFunction@.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'tags', 'createComponentVersion_tags' - A list of key-value pairs that contain metadata for the resource. For
-- more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html Tag your resources>
-- in the /IoT Greengrass V2 Developer Guide/.
--
-- 'clientToken', 'createComponentVersion_clientToken' - A unique, case-sensitive identifier that you can provide to ensure that
-- the request is idempotent. Idempotency means that the request is
-- successfully processed only once, even if you send the request multiple
-- times. When a request succeeds, and you specify the same client token
-- for subsequent successful requests, the IoT Greengrass V2 service
-- returns the successful response that it caches from the previous
-- request. IoT Greengrass V2 caches successful responses for idempotent
-- requests for up to 8 hours.
--
-- 'lambdaFunction', 'createComponentVersion_lambdaFunction' - The parameters to create a component from a Lambda function.
--
-- You must specify either @inlineRecipe@ or @lambdaFunction@.
newCreateComponentVersion ::
  CreateComponentVersion
newCreateComponentVersion =
  CreateComponentVersion'
    { inlineRecipe =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      lambdaFunction = Prelude.Nothing
    }

-- | The recipe to use to create the component. The recipe defines the
-- component\'s metadata, parameters, dependencies, lifecycle, artifacts,
-- and platform compatibility.
--
-- You must specify either @inlineRecipe@ or @lambdaFunction@.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
createComponentVersion_inlineRecipe :: Lens.Lens' CreateComponentVersion (Prelude.Maybe Prelude.ByteString)
createComponentVersion_inlineRecipe = Lens.lens (\CreateComponentVersion' {inlineRecipe} -> inlineRecipe) (\s@CreateComponentVersion' {} a -> s {inlineRecipe = a} :: CreateComponentVersion) Prelude.. Lens.mapping Core._Base64

-- | A list of key-value pairs that contain metadata for the resource. For
-- more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html Tag your resources>
-- in the /IoT Greengrass V2 Developer Guide/.
createComponentVersion_tags :: Lens.Lens' CreateComponentVersion (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createComponentVersion_tags = Lens.lens (\CreateComponentVersion' {tags} -> tags) (\s@CreateComponentVersion' {} a -> s {tags = a} :: CreateComponentVersion) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive identifier that you can provide to ensure that
-- the request is idempotent. Idempotency means that the request is
-- successfully processed only once, even if you send the request multiple
-- times. When a request succeeds, and you specify the same client token
-- for subsequent successful requests, the IoT Greengrass V2 service
-- returns the successful response that it caches from the previous
-- request. IoT Greengrass V2 caches successful responses for idempotent
-- requests for up to 8 hours.
createComponentVersion_clientToken :: Lens.Lens' CreateComponentVersion (Prelude.Maybe Prelude.Text)
createComponentVersion_clientToken = Lens.lens (\CreateComponentVersion' {clientToken} -> clientToken) (\s@CreateComponentVersion' {} a -> s {clientToken = a} :: CreateComponentVersion)

-- | The parameters to create a component from a Lambda function.
--
-- You must specify either @inlineRecipe@ or @lambdaFunction@.
createComponentVersion_lambdaFunction :: Lens.Lens' CreateComponentVersion (Prelude.Maybe LambdaFunctionRecipeSource)
createComponentVersion_lambdaFunction = Lens.lens (\CreateComponentVersion' {lambdaFunction} -> lambdaFunction) (\s@CreateComponentVersion' {} a -> s {lambdaFunction = a} :: CreateComponentVersion)

instance Core.AWSRequest CreateComponentVersion where
  type
    AWSResponse CreateComponentVersion =
      CreateComponentVersionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateComponentVersionResponse'
            Prelude.<$> (x Core..?> "arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "componentName")
            Prelude.<*> (x Core..:> "componentVersion")
            Prelude.<*> (x Core..:> "creationTimestamp")
            Prelude.<*> (x Core..:> "status")
      )

instance Prelude.Hashable CreateComponentVersion where
  hashWithSalt _salt CreateComponentVersion' {..} =
    _salt `Prelude.hashWithSalt` inlineRecipe
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` lambdaFunction

instance Prelude.NFData CreateComponentVersion where
  rnf CreateComponentVersion' {..} =
    Prelude.rnf inlineRecipe
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf lambdaFunction

instance Core.ToHeaders CreateComponentVersion where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateComponentVersion where
  toJSON CreateComponentVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("inlineRecipe" Core..=) Prelude.<$> inlineRecipe,
            ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            ("lambdaFunction" Core..=)
              Prelude.<$> lambdaFunction
          ]
      )

instance Core.ToPath CreateComponentVersion where
  toPath =
    Prelude.const
      "/greengrass/v2/createComponentVersion"

instance Core.ToQuery CreateComponentVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateComponentVersionResponse' smart constructor.
data CreateComponentVersionResponse = CreateComponentVersionResponse'
  { -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the component version.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the component.
    componentName :: Prelude.Text,
    -- | The version of the component.
    componentVersion :: Prelude.Text,
    -- | The time at which the component was created, expressed in ISO 8601
    -- format.
    creationTimestamp :: Core.POSIX,
    -- | The status of the component version in IoT Greengrass V2. This status is
    -- different from the status of the component on a core device.
    status :: CloudComponentStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateComponentVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createComponentVersionResponse_arn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the component version.
--
-- 'httpStatus', 'createComponentVersionResponse_httpStatus' - The response's http status code.
--
-- 'componentName', 'createComponentVersionResponse_componentName' - The name of the component.
--
-- 'componentVersion', 'createComponentVersionResponse_componentVersion' - The version of the component.
--
-- 'creationTimestamp', 'createComponentVersionResponse_creationTimestamp' - The time at which the component was created, expressed in ISO 8601
-- format.
--
-- 'status', 'createComponentVersionResponse_status' - The status of the component version in IoT Greengrass V2. This status is
-- different from the status of the component on a core device.
newCreateComponentVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'componentName'
  Prelude.Text ->
  -- | 'componentVersion'
  Prelude.Text ->
  -- | 'creationTimestamp'
  Prelude.UTCTime ->
  -- | 'status'
  CloudComponentStatus ->
  CreateComponentVersionResponse
newCreateComponentVersionResponse
  pHttpStatus_
  pComponentName_
  pComponentVersion_
  pCreationTimestamp_
  pStatus_ =
    CreateComponentVersionResponse'
      { arn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        componentName = pComponentName_,
        componentVersion = pComponentVersion_,
        creationTimestamp =
          Core._Time Lens.# pCreationTimestamp_,
        status = pStatus_
      }

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the component version.
createComponentVersionResponse_arn :: Lens.Lens' CreateComponentVersionResponse (Prelude.Maybe Prelude.Text)
createComponentVersionResponse_arn = Lens.lens (\CreateComponentVersionResponse' {arn} -> arn) (\s@CreateComponentVersionResponse' {} a -> s {arn = a} :: CreateComponentVersionResponse)

-- | The response's http status code.
createComponentVersionResponse_httpStatus :: Lens.Lens' CreateComponentVersionResponse Prelude.Int
createComponentVersionResponse_httpStatus = Lens.lens (\CreateComponentVersionResponse' {httpStatus} -> httpStatus) (\s@CreateComponentVersionResponse' {} a -> s {httpStatus = a} :: CreateComponentVersionResponse)

-- | The name of the component.
createComponentVersionResponse_componentName :: Lens.Lens' CreateComponentVersionResponse Prelude.Text
createComponentVersionResponse_componentName = Lens.lens (\CreateComponentVersionResponse' {componentName} -> componentName) (\s@CreateComponentVersionResponse' {} a -> s {componentName = a} :: CreateComponentVersionResponse)

-- | The version of the component.
createComponentVersionResponse_componentVersion :: Lens.Lens' CreateComponentVersionResponse Prelude.Text
createComponentVersionResponse_componentVersion = Lens.lens (\CreateComponentVersionResponse' {componentVersion} -> componentVersion) (\s@CreateComponentVersionResponse' {} a -> s {componentVersion = a} :: CreateComponentVersionResponse)

-- | The time at which the component was created, expressed in ISO 8601
-- format.
createComponentVersionResponse_creationTimestamp :: Lens.Lens' CreateComponentVersionResponse Prelude.UTCTime
createComponentVersionResponse_creationTimestamp = Lens.lens (\CreateComponentVersionResponse' {creationTimestamp} -> creationTimestamp) (\s@CreateComponentVersionResponse' {} a -> s {creationTimestamp = a} :: CreateComponentVersionResponse) Prelude.. Core._Time

-- | The status of the component version in IoT Greengrass V2. This status is
-- different from the status of the component on a core device.
createComponentVersionResponse_status :: Lens.Lens' CreateComponentVersionResponse CloudComponentStatus
createComponentVersionResponse_status = Lens.lens (\CreateComponentVersionResponse' {status} -> status) (\s@CreateComponentVersionResponse' {} a -> s {status = a} :: CreateComponentVersionResponse)

instance
  Prelude.NFData
    CreateComponentVersionResponse
  where
  rnf CreateComponentVersionResponse' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf componentName
      `Prelude.seq` Prelude.rnf componentVersion
      `Prelude.seq` Prelude.rnf creationTimestamp
      `Prelude.seq` Prelude.rnf status

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
-- Module      : Amazonka.Greengrass.CreateLoggerDefinitionVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a logger definition that has already been defined.
module Amazonka.Greengrass.CreateLoggerDefinitionVersion
  ( -- * Creating a Request
    CreateLoggerDefinitionVersion (..),
    newCreateLoggerDefinitionVersion,

    -- * Request Lenses
    createLoggerDefinitionVersion_loggers,
    createLoggerDefinitionVersion_amznClientToken,
    createLoggerDefinitionVersion_loggerDefinitionId,

    -- * Destructuring the Response
    CreateLoggerDefinitionVersionResponse (..),
    newCreateLoggerDefinitionVersionResponse,

    -- * Response Lenses
    createLoggerDefinitionVersionResponse_arn,
    createLoggerDefinitionVersionResponse_id,
    createLoggerDefinitionVersionResponse_creationTimestamp,
    createLoggerDefinitionVersionResponse_version,
    createLoggerDefinitionVersionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateLoggerDefinitionVersion' smart constructor.
data CreateLoggerDefinitionVersion = CreateLoggerDefinitionVersion'
  { -- | A list of loggers.
    loggers :: Prelude.Maybe [GreengrassLogger],
    -- | A client token used to correlate requests and responses.
    amznClientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the logger definition.
    loggerDefinitionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLoggerDefinitionVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loggers', 'createLoggerDefinitionVersion_loggers' - A list of loggers.
--
-- 'amznClientToken', 'createLoggerDefinitionVersion_amznClientToken' - A client token used to correlate requests and responses.
--
-- 'loggerDefinitionId', 'createLoggerDefinitionVersion_loggerDefinitionId' - The ID of the logger definition.
newCreateLoggerDefinitionVersion ::
  -- | 'loggerDefinitionId'
  Prelude.Text ->
  CreateLoggerDefinitionVersion
newCreateLoggerDefinitionVersion pLoggerDefinitionId_ =
  CreateLoggerDefinitionVersion'
    { loggers =
        Prelude.Nothing,
      amznClientToken = Prelude.Nothing,
      loggerDefinitionId = pLoggerDefinitionId_
    }

-- | A list of loggers.
createLoggerDefinitionVersion_loggers :: Lens.Lens' CreateLoggerDefinitionVersion (Prelude.Maybe [GreengrassLogger])
createLoggerDefinitionVersion_loggers = Lens.lens (\CreateLoggerDefinitionVersion' {loggers} -> loggers) (\s@CreateLoggerDefinitionVersion' {} a -> s {loggers = a} :: CreateLoggerDefinitionVersion) Prelude.. Lens.mapping Lens.coerced

-- | A client token used to correlate requests and responses.
createLoggerDefinitionVersion_amznClientToken :: Lens.Lens' CreateLoggerDefinitionVersion (Prelude.Maybe Prelude.Text)
createLoggerDefinitionVersion_amznClientToken = Lens.lens (\CreateLoggerDefinitionVersion' {amznClientToken} -> amznClientToken) (\s@CreateLoggerDefinitionVersion' {} a -> s {amznClientToken = a} :: CreateLoggerDefinitionVersion)

-- | The ID of the logger definition.
createLoggerDefinitionVersion_loggerDefinitionId :: Lens.Lens' CreateLoggerDefinitionVersion Prelude.Text
createLoggerDefinitionVersion_loggerDefinitionId = Lens.lens (\CreateLoggerDefinitionVersion' {loggerDefinitionId} -> loggerDefinitionId) (\s@CreateLoggerDefinitionVersion' {} a -> s {loggerDefinitionId = a} :: CreateLoggerDefinitionVersion)

instance
  Core.AWSRequest
    CreateLoggerDefinitionVersion
  where
  type
    AWSResponse CreateLoggerDefinitionVersion =
      CreateLoggerDefinitionVersionResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLoggerDefinitionVersionResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "CreationTimestamp")
            Prelude.<*> (x Core..?> "Version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Core.AWSService
    CreateLoggerDefinitionVersion
  where
  service _proxy = defaultService

instance
  Prelude.Hashable
    CreateLoggerDefinitionVersion
  where
  hashWithSalt _salt CreateLoggerDefinitionVersion' {..} =
    _salt `Prelude.hashWithSalt` loggers
      `Prelude.hashWithSalt` amznClientToken
      `Prelude.hashWithSalt` loggerDefinitionId

instance Prelude.NFData CreateLoggerDefinitionVersion where
  rnf CreateLoggerDefinitionVersion' {..} =
    Prelude.rnf loggers
      `Prelude.seq` Prelude.rnf amznClientToken
      `Prelude.seq` Prelude.rnf loggerDefinitionId

instance Core.ToHeaders CreateLoggerDefinitionVersion where
  toHeaders CreateLoggerDefinitionVersion' {..} =
    Prelude.mconcat
      [ "X-Amzn-Client-Token" Core.=# amznClientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CreateLoggerDefinitionVersion where
  toJSON CreateLoggerDefinitionVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Loggers" Core..=) Prelude.<$> loggers]
      )

instance Core.ToPath CreateLoggerDefinitionVersion where
  toPath CreateLoggerDefinitionVersion' {..} =
    Prelude.mconcat
      [ "/greengrass/definition/loggers/",
        Core.toBS loggerDefinitionId,
        "/versions"
      ]

instance Core.ToQuery CreateLoggerDefinitionVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLoggerDefinitionVersionResponse' smart constructor.
data CreateLoggerDefinitionVersionResponse = CreateLoggerDefinitionVersionResponse'
  { -- | The ARN of the version.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the parent definition that the version is associated with.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the version was created.
    creationTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The ID of the version.
    version :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLoggerDefinitionVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createLoggerDefinitionVersionResponse_arn' - The ARN of the version.
--
-- 'id', 'createLoggerDefinitionVersionResponse_id' - The ID of the parent definition that the version is associated with.
--
-- 'creationTimestamp', 'createLoggerDefinitionVersionResponse_creationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- 'version', 'createLoggerDefinitionVersionResponse_version' - The ID of the version.
--
-- 'httpStatus', 'createLoggerDefinitionVersionResponse_httpStatus' - The response's http status code.
newCreateLoggerDefinitionVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLoggerDefinitionVersionResponse
newCreateLoggerDefinitionVersionResponse pHttpStatus_ =
  CreateLoggerDefinitionVersionResponse'
    { arn =
        Prelude.Nothing,
      id = Prelude.Nothing,
      creationTimestamp = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the version.
createLoggerDefinitionVersionResponse_arn :: Lens.Lens' CreateLoggerDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
createLoggerDefinitionVersionResponse_arn = Lens.lens (\CreateLoggerDefinitionVersionResponse' {arn} -> arn) (\s@CreateLoggerDefinitionVersionResponse' {} a -> s {arn = a} :: CreateLoggerDefinitionVersionResponse)

-- | The ID of the parent definition that the version is associated with.
createLoggerDefinitionVersionResponse_id :: Lens.Lens' CreateLoggerDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
createLoggerDefinitionVersionResponse_id = Lens.lens (\CreateLoggerDefinitionVersionResponse' {id} -> id) (\s@CreateLoggerDefinitionVersionResponse' {} a -> s {id = a} :: CreateLoggerDefinitionVersionResponse)

-- | The time, in milliseconds since the epoch, when the version was created.
createLoggerDefinitionVersionResponse_creationTimestamp :: Lens.Lens' CreateLoggerDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
createLoggerDefinitionVersionResponse_creationTimestamp = Lens.lens (\CreateLoggerDefinitionVersionResponse' {creationTimestamp} -> creationTimestamp) (\s@CreateLoggerDefinitionVersionResponse' {} a -> s {creationTimestamp = a} :: CreateLoggerDefinitionVersionResponse)

-- | The ID of the version.
createLoggerDefinitionVersionResponse_version :: Lens.Lens' CreateLoggerDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
createLoggerDefinitionVersionResponse_version = Lens.lens (\CreateLoggerDefinitionVersionResponse' {version} -> version) (\s@CreateLoggerDefinitionVersionResponse' {} a -> s {version = a} :: CreateLoggerDefinitionVersionResponse)

-- | The response's http status code.
createLoggerDefinitionVersionResponse_httpStatus :: Lens.Lens' CreateLoggerDefinitionVersionResponse Prelude.Int
createLoggerDefinitionVersionResponse_httpStatus = Lens.lens (\CreateLoggerDefinitionVersionResponse' {httpStatus} -> httpStatus) (\s@CreateLoggerDefinitionVersionResponse' {} a -> s {httpStatus = a} :: CreateLoggerDefinitionVersionResponse)

instance
  Prelude.NFData
    CreateLoggerDefinitionVersionResponse
  where
  rnf CreateLoggerDefinitionVersionResponse' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf creationTimestamp
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus

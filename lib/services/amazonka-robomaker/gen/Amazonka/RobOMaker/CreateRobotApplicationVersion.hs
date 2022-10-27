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
-- Module      : Amazonka.RobOMaker.CreateRobotApplicationVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a robot application.
module Amazonka.RobOMaker.CreateRobotApplicationVersion
  ( -- * Creating a Request
    CreateRobotApplicationVersion (..),
    newCreateRobotApplicationVersion,

    -- * Request Lenses
    createRobotApplicationVersion_s3Etags,
    createRobotApplicationVersion_currentRevisionId,
    createRobotApplicationVersion_imageDigest,
    createRobotApplicationVersion_application,

    -- * Destructuring the Response
    CreateRobotApplicationVersionResponse (..),
    newCreateRobotApplicationVersionResponse,

    -- * Response Lenses
    createRobotApplicationVersionResponse_name,
    createRobotApplicationVersionResponse_sources,
    createRobotApplicationVersionResponse_environment,
    createRobotApplicationVersionResponse_lastUpdatedAt,
    createRobotApplicationVersionResponse_arn,
    createRobotApplicationVersionResponse_robotSoftwareSuite,
    createRobotApplicationVersionResponse_revisionId,
    createRobotApplicationVersionResponse_version,
    createRobotApplicationVersionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RobOMaker.Types

-- | /See:/ 'newCreateRobotApplicationVersion' smart constructor.
data CreateRobotApplicationVersion = CreateRobotApplicationVersion'
  { -- | The Amazon S3 identifier for the zip file bundle that you use for your
    -- robot application.
    s3Etags :: Prelude.Maybe [Prelude.Text],
    -- | The current revision id for the robot application. If you provide a
    -- value and it matches the latest revision ID, a new version will be
    -- created.
    currentRevisionId :: Prelude.Maybe Prelude.Text,
    -- | A SHA256 identifier for the Docker image that you use for your robot
    -- application.
    imageDigest :: Prelude.Maybe Prelude.Text,
    -- | The application information for the robot application.
    application :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRobotApplicationVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Etags', 'createRobotApplicationVersion_s3Etags' - The Amazon S3 identifier for the zip file bundle that you use for your
-- robot application.
--
-- 'currentRevisionId', 'createRobotApplicationVersion_currentRevisionId' - The current revision id for the robot application. If you provide a
-- value and it matches the latest revision ID, a new version will be
-- created.
--
-- 'imageDigest', 'createRobotApplicationVersion_imageDigest' - A SHA256 identifier for the Docker image that you use for your robot
-- application.
--
-- 'application', 'createRobotApplicationVersion_application' - The application information for the robot application.
newCreateRobotApplicationVersion ::
  -- | 'application'
  Prelude.Text ->
  CreateRobotApplicationVersion
newCreateRobotApplicationVersion pApplication_ =
  CreateRobotApplicationVersion'
    { s3Etags =
        Prelude.Nothing,
      currentRevisionId = Prelude.Nothing,
      imageDigest = Prelude.Nothing,
      application = pApplication_
    }

-- | The Amazon S3 identifier for the zip file bundle that you use for your
-- robot application.
createRobotApplicationVersion_s3Etags :: Lens.Lens' CreateRobotApplicationVersion (Prelude.Maybe [Prelude.Text])
createRobotApplicationVersion_s3Etags = Lens.lens (\CreateRobotApplicationVersion' {s3Etags} -> s3Etags) (\s@CreateRobotApplicationVersion' {} a -> s {s3Etags = a} :: CreateRobotApplicationVersion) Prelude.. Lens.mapping Lens.coerced

-- | The current revision id for the robot application. If you provide a
-- value and it matches the latest revision ID, a new version will be
-- created.
createRobotApplicationVersion_currentRevisionId :: Lens.Lens' CreateRobotApplicationVersion (Prelude.Maybe Prelude.Text)
createRobotApplicationVersion_currentRevisionId = Lens.lens (\CreateRobotApplicationVersion' {currentRevisionId} -> currentRevisionId) (\s@CreateRobotApplicationVersion' {} a -> s {currentRevisionId = a} :: CreateRobotApplicationVersion)

-- | A SHA256 identifier for the Docker image that you use for your robot
-- application.
createRobotApplicationVersion_imageDigest :: Lens.Lens' CreateRobotApplicationVersion (Prelude.Maybe Prelude.Text)
createRobotApplicationVersion_imageDigest = Lens.lens (\CreateRobotApplicationVersion' {imageDigest} -> imageDigest) (\s@CreateRobotApplicationVersion' {} a -> s {imageDigest = a} :: CreateRobotApplicationVersion)

-- | The application information for the robot application.
createRobotApplicationVersion_application :: Lens.Lens' CreateRobotApplicationVersion Prelude.Text
createRobotApplicationVersion_application = Lens.lens (\CreateRobotApplicationVersion' {application} -> application) (\s@CreateRobotApplicationVersion' {} a -> s {application = a} :: CreateRobotApplicationVersion)

instance
  Core.AWSRequest
    CreateRobotApplicationVersion
  where
  type
    AWSResponse CreateRobotApplicationVersion =
      CreateRobotApplicationVersionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRobotApplicationVersionResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "sources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "environment")
            Prelude.<*> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "robotSoftwareSuite")
            Prelude.<*> (x Core..?> "revisionId")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateRobotApplicationVersion
  where
  hashWithSalt _salt CreateRobotApplicationVersion' {..} =
    _salt `Prelude.hashWithSalt` s3Etags
      `Prelude.hashWithSalt` currentRevisionId
      `Prelude.hashWithSalt` imageDigest
      `Prelude.hashWithSalt` application

instance Prelude.NFData CreateRobotApplicationVersion where
  rnf CreateRobotApplicationVersion' {..} =
    Prelude.rnf s3Etags
      `Prelude.seq` Prelude.rnf currentRevisionId
      `Prelude.seq` Prelude.rnf imageDigest
      `Prelude.seq` Prelude.rnf application

instance Core.ToHeaders CreateRobotApplicationVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRobotApplicationVersion where
  toJSON CreateRobotApplicationVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("s3Etags" Core..=) Prelude.<$> s3Etags,
            ("currentRevisionId" Core..=)
              Prelude.<$> currentRevisionId,
            ("imageDigest" Core..=) Prelude.<$> imageDigest,
            Prelude.Just ("application" Core..= application)
          ]
      )

instance Core.ToPath CreateRobotApplicationVersion where
  toPath =
    Prelude.const "/createRobotApplicationVersion"

instance Core.ToQuery CreateRobotApplicationVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRobotApplicationVersionResponse' smart constructor.
data CreateRobotApplicationVersionResponse = CreateRobotApplicationVersionResponse'
  { -- | The name of the robot application.
    name :: Prelude.Maybe Prelude.Text,
    -- | The sources of the robot application.
    sources :: Prelude.Maybe [Source],
    -- | The object that contains the Docker image URI used to create your robot
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The time, in milliseconds since the epoch, when the robot application
    -- was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the robot application.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The robot software suite (ROS distribution) used by the robot
    -- application.
    robotSoftwareSuite :: Prelude.Maybe RobotSoftwareSuite,
    -- | The revision id of the robot application.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The version of the robot application.
    version :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRobotApplicationVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createRobotApplicationVersionResponse_name' - The name of the robot application.
--
-- 'sources', 'createRobotApplicationVersionResponse_sources' - The sources of the robot application.
--
-- 'environment', 'createRobotApplicationVersionResponse_environment' - The object that contains the Docker image URI used to create your robot
-- application.
--
-- 'lastUpdatedAt', 'createRobotApplicationVersionResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the robot application
-- was last updated.
--
-- 'arn', 'createRobotApplicationVersionResponse_arn' - The Amazon Resource Name (ARN) of the robot application.
--
-- 'robotSoftwareSuite', 'createRobotApplicationVersionResponse_robotSoftwareSuite' - The robot software suite (ROS distribution) used by the robot
-- application.
--
-- 'revisionId', 'createRobotApplicationVersionResponse_revisionId' - The revision id of the robot application.
--
-- 'version', 'createRobotApplicationVersionResponse_version' - The version of the robot application.
--
-- 'httpStatus', 'createRobotApplicationVersionResponse_httpStatus' - The response's http status code.
newCreateRobotApplicationVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRobotApplicationVersionResponse
newCreateRobotApplicationVersionResponse pHttpStatus_ =
  CreateRobotApplicationVersionResponse'
    { name =
        Prelude.Nothing,
      sources = Prelude.Nothing,
      environment = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      arn = Prelude.Nothing,
      robotSoftwareSuite = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the robot application.
createRobotApplicationVersionResponse_name :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Prelude.Text)
createRobotApplicationVersionResponse_name = Lens.lens (\CreateRobotApplicationVersionResponse' {name} -> name) (\s@CreateRobotApplicationVersionResponse' {} a -> s {name = a} :: CreateRobotApplicationVersionResponse)

-- | The sources of the robot application.
createRobotApplicationVersionResponse_sources :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe [Source])
createRobotApplicationVersionResponse_sources = Lens.lens (\CreateRobotApplicationVersionResponse' {sources} -> sources) (\s@CreateRobotApplicationVersionResponse' {} a -> s {sources = a} :: CreateRobotApplicationVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The object that contains the Docker image URI used to create your robot
-- application.
createRobotApplicationVersionResponse_environment :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Environment)
createRobotApplicationVersionResponse_environment = Lens.lens (\CreateRobotApplicationVersionResponse' {environment} -> environment) (\s@CreateRobotApplicationVersionResponse' {} a -> s {environment = a} :: CreateRobotApplicationVersionResponse)

-- | The time, in milliseconds since the epoch, when the robot application
-- was last updated.
createRobotApplicationVersionResponse_lastUpdatedAt :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Prelude.UTCTime)
createRobotApplicationVersionResponse_lastUpdatedAt = Lens.lens (\CreateRobotApplicationVersionResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@CreateRobotApplicationVersionResponse' {} a -> s {lastUpdatedAt = a} :: CreateRobotApplicationVersionResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the robot application.
createRobotApplicationVersionResponse_arn :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Prelude.Text)
createRobotApplicationVersionResponse_arn = Lens.lens (\CreateRobotApplicationVersionResponse' {arn} -> arn) (\s@CreateRobotApplicationVersionResponse' {} a -> s {arn = a} :: CreateRobotApplicationVersionResponse)

-- | The robot software suite (ROS distribution) used by the robot
-- application.
createRobotApplicationVersionResponse_robotSoftwareSuite :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe RobotSoftwareSuite)
createRobotApplicationVersionResponse_robotSoftwareSuite = Lens.lens (\CreateRobotApplicationVersionResponse' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@CreateRobotApplicationVersionResponse' {} a -> s {robotSoftwareSuite = a} :: CreateRobotApplicationVersionResponse)

-- | The revision id of the robot application.
createRobotApplicationVersionResponse_revisionId :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Prelude.Text)
createRobotApplicationVersionResponse_revisionId = Lens.lens (\CreateRobotApplicationVersionResponse' {revisionId} -> revisionId) (\s@CreateRobotApplicationVersionResponse' {} a -> s {revisionId = a} :: CreateRobotApplicationVersionResponse)

-- | The version of the robot application.
createRobotApplicationVersionResponse_version :: Lens.Lens' CreateRobotApplicationVersionResponse (Prelude.Maybe Prelude.Text)
createRobotApplicationVersionResponse_version = Lens.lens (\CreateRobotApplicationVersionResponse' {version} -> version) (\s@CreateRobotApplicationVersionResponse' {} a -> s {version = a} :: CreateRobotApplicationVersionResponse)

-- | The response's http status code.
createRobotApplicationVersionResponse_httpStatus :: Lens.Lens' CreateRobotApplicationVersionResponse Prelude.Int
createRobotApplicationVersionResponse_httpStatus = Lens.lens (\CreateRobotApplicationVersionResponse' {httpStatus} -> httpStatus) (\s@CreateRobotApplicationVersionResponse' {} a -> s {httpStatus = a} :: CreateRobotApplicationVersionResponse)

instance
  Prelude.NFData
    CreateRobotApplicationVersionResponse
  where
  rnf CreateRobotApplicationVersionResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf sources
      `Prelude.seq` Prelude.rnf environment
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf robotSoftwareSuite
      `Prelude.seq` Prelude.rnf revisionId
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus

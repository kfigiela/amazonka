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
-- Module      : Amazonka.EMRContainers.StartJobRun
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a job run. A job run is a unit of work, such as a Spark jar,
-- PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
module Amazonka.EMRContainers.StartJobRun
  ( -- * Creating a Request
    StartJobRun (..),
    newStartJobRun,

    -- * Request Lenses
    startJobRun_tags,
    startJobRun_name,
    startJobRun_configurationOverrides,
    startJobRun_virtualClusterId,
    startJobRun_clientToken,
    startJobRun_executionRoleArn,
    startJobRun_releaseLabel,
    startJobRun_jobDriver,

    -- * Destructuring the Response
    StartJobRunResponse (..),
    newStartJobRunResponse,

    -- * Response Lenses
    startJobRunResponse_name,
    startJobRunResponse_arn,
    startJobRunResponse_id,
    startJobRunResponse_virtualClusterId,
    startJobRunResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EMRContainers.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartJobRun' smart constructor.
data StartJobRun = StartJobRun'
  { -- | The tags assigned to job runs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the job run.
    name :: Prelude.Maybe Prelude.Text,
    -- | The configuration overrides for the job run.
    configurationOverrides :: Prelude.Maybe ConfigurationOverrides,
    -- | The virtual cluster ID for which the job run request is submitted.
    virtualClusterId :: Prelude.Text,
    -- | The client idempotency token of the job run request.
    clientToken :: Prelude.Text,
    -- | The execution role ARN for the job run.
    executionRoleArn :: Prelude.Text,
    -- | The Amazon EMR release version to use for the job run.
    releaseLabel :: Prelude.Text,
    -- | The job driver for the job run.
    jobDriver :: JobDriver
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJobRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'startJobRun_tags' - The tags assigned to job runs.
--
-- 'name', 'startJobRun_name' - The name of the job run.
--
-- 'configurationOverrides', 'startJobRun_configurationOverrides' - The configuration overrides for the job run.
--
-- 'virtualClusterId', 'startJobRun_virtualClusterId' - The virtual cluster ID for which the job run request is submitted.
--
-- 'clientToken', 'startJobRun_clientToken' - The client idempotency token of the job run request.
--
-- 'executionRoleArn', 'startJobRun_executionRoleArn' - The execution role ARN for the job run.
--
-- 'releaseLabel', 'startJobRun_releaseLabel' - The Amazon EMR release version to use for the job run.
--
-- 'jobDriver', 'startJobRun_jobDriver' - The job driver for the job run.
newStartJobRun ::
  -- | 'virtualClusterId'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'executionRoleArn'
  Prelude.Text ->
  -- | 'releaseLabel'
  Prelude.Text ->
  -- | 'jobDriver'
  JobDriver ->
  StartJobRun
newStartJobRun
  pVirtualClusterId_
  pClientToken_
  pExecutionRoleArn_
  pReleaseLabel_
  pJobDriver_ =
    StartJobRun'
      { tags = Prelude.Nothing,
        name = Prelude.Nothing,
        configurationOverrides = Prelude.Nothing,
        virtualClusterId = pVirtualClusterId_,
        clientToken = pClientToken_,
        executionRoleArn = pExecutionRoleArn_,
        releaseLabel = pReleaseLabel_,
        jobDriver = pJobDriver_
      }

-- | The tags assigned to job runs.
startJobRun_tags :: Lens.Lens' StartJobRun (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
startJobRun_tags = Lens.lens (\StartJobRun' {tags} -> tags) (\s@StartJobRun' {} a -> s {tags = a} :: StartJobRun) Prelude.. Lens.mapping Lens.coerced

-- | The name of the job run.
startJobRun_name :: Lens.Lens' StartJobRun (Prelude.Maybe Prelude.Text)
startJobRun_name = Lens.lens (\StartJobRun' {name} -> name) (\s@StartJobRun' {} a -> s {name = a} :: StartJobRun)

-- | The configuration overrides for the job run.
startJobRun_configurationOverrides :: Lens.Lens' StartJobRun (Prelude.Maybe ConfigurationOverrides)
startJobRun_configurationOverrides = Lens.lens (\StartJobRun' {configurationOverrides} -> configurationOverrides) (\s@StartJobRun' {} a -> s {configurationOverrides = a} :: StartJobRun)

-- | The virtual cluster ID for which the job run request is submitted.
startJobRun_virtualClusterId :: Lens.Lens' StartJobRun Prelude.Text
startJobRun_virtualClusterId = Lens.lens (\StartJobRun' {virtualClusterId} -> virtualClusterId) (\s@StartJobRun' {} a -> s {virtualClusterId = a} :: StartJobRun)

-- | The client idempotency token of the job run request.
startJobRun_clientToken :: Lens.Lens' StartJobRun Prelude.Text
startJobRun_clientToken = Lens.lens (\StartJobRun' {clientToken} -> clientToken) (\s@StartJobRun' {} a -> s {clientToken = a} :: StartJobRun)

-- | The execution role ARN for the job run.
startJobRun_executionRoleArn :: Lens.Lens' StartJobRun Prelude.Text
startJobRun_executionRoleArn = Lens.lens (\StartJobRun' {executionRoleArn} -> executionRoleArn) (\s@StartJobRun' {} a -> s {executionRoleArn = a} :: StartJobRun)

-- | The Amazon EMR release version to use for the job run.
startJobRun_releaseLabel :: Lens.Lens' StartJobRun Prelude.Text
startJobRun_releaseLabel = Lens.lens (\StartJobRun' {releaseLabel} -> releaseLabel) (\s@StartJobRun' {} a -> s {releaseLabel = a} :: StartJobRun)

-- | The job driver for the job run.
startJobRun_jobDriver :: Lens.Lens' StartJobRun JobDriver
startJobRun_jobDriver = Lens.lens (\StartJobRun' {jobDriver} -> jobDriver) (\s@StartJobRun' {} a -> s {jobDriver = a} :: StartJobRun)

instance Core.AWSRequest StartJobRun where
  type AWSResponse StartJobRun = StartJobRunResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StartJobRunResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "virtualClusterId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartJobRun where
  hashWithSalt _salt StartJobRun' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` configurationOverrides
      `Prelude.hashWithSalt` virtualClusterId
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` executionRoleArn
      `Prelude.hashWithSalt` releaseLabel
      `Prelude.hashWithSalt` jobDriver

instance Prelude.NFData StartJobRun where
  rnf StartJobRun' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf configurationOverrides
      `Prelude.seq` Prelude.rnf virtualClusterId
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf executionRoleArn
      `Prelude.seq` Prelude.rnf releaseLabel
      `Prelude.seq` Prelude.rnf jobDriver

instance Core.ToHeaders StartJobRun where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartJobRun where
  toJSON StartJobRun' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("name" Core..=) Prelude.<$> name,
            ("configurationOverrides" Core..=)
              Prelude.<$> configurationOverrides,
            Prelude.Just ("clientToken" Core..= clientToken),
            Prelude.Just
              ("executionRoleArn" Core..= executionRoleArn),
            Prelude.Just ("releaseLabel" Core..= releaseLabel),
            Prelude.Just ("jobDriver" Core..= jobDriver)
          ]
      )

instance Core.ToPath StartJobRun where
  toPath StartJobRun' {..} =
    Prelude.mconcat
      [ "/virtualclusters/",
        Core.toBS virtualClusterId,
        "/jobruns"
      ]

instance Core.ToQuery StartJobRun where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartJobRunResponse' smart constructor.
data StartJobRunResponse = StartJobRunResponse'
  { -- | This output displays the name of the started job run.
    name :: Prelude.Maybe Prelude.Text,
    -- | This output lists the ARN of job run.
    arn :: Prelude.Maybe Prelude.Text,
    -- | This output displays the started job run ID.
    id :: Prelude.Maybe Prelude.Text,
    -- | This output displays the virtual cluster ID for which the job run was
    -- submitted.
    virtualClusterId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJobRunResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'startJobRunResponse_name' - This output displays the name of the started job run.
--
-- 'arn', 'startJobRunResponse_arn' - This output lists the ARN of job run.
--
-- 'id', 'startJobRunResponse_id' - This output displays the started job run ID.
--
-- 'virtualClusterId', 'startJobRunResponse_virtualClusterId' - This output displays the virtual cluster ID for which the job run was
-- submitted.
--
-- 'httpStatus', 'startJobRunResponse_httpStatus' - The response's http status code.
newStartJobRunResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartJobRunResponse
newStartJobRunResponse pHttpStatus_ =
  StartJobRunResponse'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      virtualClusterId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | This output displays the name of the started job run.
startJobRunResponse_name :: Lens.Lens' StartJobRunResponse (Prelude.Maybe Prelude.Text)
startJobRunResponse_name = Lens.lens (\StartJobRunResponse' {name} -> name) (\s@StartJobRunResponse' {} a -> s {name = a} :: StartJobRunResponse)

-- | This output lists the ARN of job run.
startJobRunResponse_arn :: Lens.Lens' StartJobRunResponse (Prelude.Maybe Prelude.Text)
startJobRunResponse_arn = Lens.lens (\StartJobRunResponse' {arn} -> arn) (\s@StartJobRunResponse' {} a -> s {arn = a} :: StartJobRunResponse)

-- | This output displays the started job run ID.
startJobRunResponse_id :: Lens.Lens' StartJobRunResponse (Prelude.Maybe Prelude.Text)
startJobRunResponse_id = Lens.lens (\StartJobRunResponse' {id} -> id) (\s@StartJobRunResponse' {} a -> s {id = a} :: StartJobRunResponse)

-- | This output displays the virtual cluster ID for which the job run was
-- submitted.
startJobRunResponse_virtualClusterId :: Lens.Lens' StartJobRunResponse (Prelude.Maybe Prelude.Text)
startJobRunResponse_virtualClusterId = Lens.lens (\StartJobRunResponse' {virtualClusterId} -> virtualClusterId) (\s@StartJobRunResponse' {} a -> s {virtualClusterId = a} :: StartJobRunResponse)

-- | The response's http status code.
startJobRunResponse_httpStatus :: Lens.Lens' StartJobRunResponse Prelude.Int
startJobRunResponse_httpStatus = Lens.lens (\StartJobRunResponse' {httpStatus} -> httpStatus) (\s@StartJobRunResponse' {} a -> s {httpStatus = a} :: StartJobRunResponse)

instance Prelude.NFData StartJobRunResponse where
  rnf StartJobRunResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf virtualClusterId
      `Prelude.seq` Prelude.rnf httpStatus

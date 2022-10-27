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
-- Module      : Amazonka.Amplify.StartDeployment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a deployment for a manually deployed app. Manually deployed apps
-- are not connected to a repository.
module Amazonka.Amplify.StartDeployment
  ( -- * Creating a Request
    StartDeployment (..),
    newStartDeployment,

    -- * Request Lenses
    startDeployment_jobId,
    startDeployment_sourceUrl,
    startDeployment_appId,
    startDeployment_branchName,

    -- * Destructuring the Response
    StartDeploymentResponse (..),
    newStartDeploymentResponse,

    -- * Response Lenses
    startDeploymentResponse_httpStatus,
    startDeploymentResponse_jobSummary,
  )
where

import Amazonka.Amplify.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request structure for the start a deployment request.
--
-- /See:/ 'newStartDeployment' smart constructor.
data StartDeployment = StartDeployment'
  { -- | The job ID for this deployment, generated by the create deployment
    -- request.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The source URL for this deployment, used when calling start deployment
    -- without create deployment. The source URL can be any HTTP GET URL that
    -- is publicly accessible and downloads a single .zip file.
    sourceUrl :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The name for the branch, for the job.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'startDeployment_jobId' - The job ID for this deployment, generated by the create deployment
-- request.
--
-- 'sourceUrl', 'startDeployment_sourceUrl' - The source URL for this deployment, used when calling start deployment
-- without create deployment. The source URL can be any HTTP GET URL that
-- is publicly accessible and downloads a single .zip file.
--
-- 'appId', 'startDeployment_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'startDeployment_branchName' - The name for the branch, for the job.
newStartDeployment ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  StartDeployment
newStartDeployment pAppId_ pBranchName_ =
  StartDeployment'
    { jobId = Prelude.Nothing,
      sourceUrl = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_
    }

-- | The job ID for this deployment, generated by the create deployment
-- request.
startDeployment_jobId :: Lens.Lens' StartDeployment (Prelude.Maybe Prelude.Text)
startDeployment_jobId = Lens.lens (\StartDeployment' {jobId} -> jobId) (\s@StartDeployment' {} a -> s {jobId = a} :: StartDeployment)

-- | The source URL for this deployment, used when calling start deployment
-- without create deployment. The source URL can be any HTTP GET URL that
-- is publicly accessible and downloads a single .zip file.
startDeployment_sourceUrl :: Lens.Lens' StartDeployment (Prelude.Maybe Prelude.Text)
startDeployment_sourceUrl = Lens.lens (\StartDeployment' {sourceUrl} -> sourceUrl) (\s@StartDeployment' {} a -> s {sourceUrl = a} :: StartDeployment)

-- | The unique ID for an Amplify app.
startDeployment_appId :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_appId = Lens.lens (\StartDeployment' {appId} -> appId) (\s@StartDeployment' {} a -> s {appId = a} :: StartDeployment)

-- | The name for the branch, for the job.
startDeployment_branchName :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_branchName = Lens.lens (\StartDeployment' {branchName} -> branchName) (\s@StartDeployment' {} a -> s {branchName = a} :: StartDeployment)

instance Core.AWSRequest StartDeployment where
  type
    AWSResponse StartDeployment =
      StartDeploymentResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StartDeploymentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "jobSummary")
      )

instance Prelude.Hashable StartDeployment where
  hashWithSalt _salt StartDeployment' {..} =
    _salt `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` sourceUrl
      `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` branchName

instance Prelude.NFData StartDeployment where
  rnf StartDeployment' {..} =
    Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf sourceUrl
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf branchName

instance Core.ToHeaders StartDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartDeployment where
  toJSON StartDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("jobId" Core..=) Prelude.<$> jobId,
            ("sourceUrl" Core..=) Prelude.<$> sourceUrl
          ]
      )

instance Core.ToPath StartDeployment where
  toPath StartDeployment' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/branches/",
        Core.toBS branchName,
        "/deployments/start"
      ]

instance Core.ToQuery StartDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the start a deployment request.
--
-- /See:/ 'newStartDeploymentResponse' smart constructor.
data StartDeploymentResponse = StartDeploymentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The summary for the job.
    jobSummary :: JobSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startDeploymentResponse_httpStatus' - The response's http status code.
--
-- 'jobSummary', 'startDeploymentResponse_jobSummary' - The summary for the job.
newStartDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobSummary'
  JobSummary ->
  StartDeploymentResponse
newStartDeploymentResponse pHttpStatus_ pJobSummary_ =
  StartDeploymentResponse'
    { httpStatus = pHttpStatus_,
      jobSummary = pJobSummary_
    }

-- | The response's http status code.
startDeploymentResponse_httpStatus :: Lens.Lens' StartDeploymentResponse Prelude.Int
startDeploymentResponse_httpStatus = Lens.lens (\StartDeploymentResponse' {httpStatus} -> httpStatus) (\s@StartDeploymentResponse' {} a -> s {httpStatus = a} :: StartDeploymentResponse)

-- | The summary for the job.
startDeploymentResponse_jobSummary :: Lens.Lens' StartDeploymentResponse JobSummary
startDeploymentResponse_jobSummary = Lens.lens (\StartDeploymentResponse' {jobSummary} -> jobSummary) (\s@StartDeploymentResponse' {} a -> s {jobSummary = a} :: StartDeploymentResponse)

instance Prelude.NFData StartDeploymentResponse where
  rnf StartDeploymentResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobSummary

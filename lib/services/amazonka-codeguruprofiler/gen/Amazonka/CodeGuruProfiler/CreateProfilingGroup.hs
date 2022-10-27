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
-- Module      : Amazonka.CodeGuruProfiler.CreateProfilingGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a profiling group.
module Amazonka.CodeGuruProfiler.CreateProfilingGroup
  ( -- * Creating a Request
    CreateProfilingGroup (..),
    newCreateProfilingGroup,

    -- * Request Lenses
    createProfilingGroup_tags,
    createProfilingGroup_computePlatform,
    createProfilingGroup_agentOrchestrationConfig,
    createProfilingGroup_clientToken,
    createProfilingGroup_profilingGroupName,

    -- * Destructuring the Response
    CreateProfilingGroupResponse (..),
    newCreateProfilingGroupResponse,

    -- * Response Lenses
    createProfilingGroupResponse_httpStatus,
    createProfilingGroupResponse_profilingGroup,
  )
where

import Amazonka.CodeGuruProfiler.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The structure representing the createProfiliingGroupRequest.
--
-- /See:/ 'newCreateProfilingGroup' smart constructor.
data CreateProfilingGroup = CreateProfilingGroup'
  { -- | A list of tags to add to the created profiling group.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The compute platform of the profiling group. Use @AWSLambda@ if your
    -- application runs on AWS Lambda. Use @Default@ if your application runs
    -- on a compute platform that is not AWS Lambda, such an Amazon EC2
    -- instance, an on-premises server, or a different platform. If not
    -- specified, @Default@ is used.
    computePlatform :: Prelude.Maybe ComputePlatform,
    -- | Specifies whether profiling is enabled or disabled for the created
    -- profiling group.
    agentOrchestrationConfig :: Prelude.Maybe AgentOrchestrationConfig,
    -- | Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
    -- to prevent the accidental creation of duplicate profiling groups if
    -- there are failures and retries.
    clientToken :: Prelude.Text,
    -- | The name of the profiling group to create.
    profilingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProfilingGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createProfilingGroup_tags' - A list of tags to add to the created profiling group.
--
-- 'computePlatform', 'createProfilingGroup_computePlatform' - The compute platform of the profiling group. Use @AWSLambda@ if your
-- application runs on AWS Lambda. Use @Default@ if your application runs
-- on a compute platform that is not AWS Lambda, such an Amazon EC2
-- instance, an on-premises server, or a different platform. If not
-- specified, @Default@ is used.
--
-- 'agentOrchestrationConfig', 'createProfilingGroup_agentOrchestrationConfig' - Specifies whether profiling is enabled or disabled for the created
-- profiling group.
--
-- 'clientToken', 'createProfilingGroup_clientToken' - Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
-- to prevent the accidental creation of duplicate profiling groups if
-- there are failures and retries.
--
-- 'profilingGroupName', 'createProfilingGroup_profilingGroupName' - The name of the profiling group to create.
newCreateProfilingGroup ::
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  CreateProfilingGroup
newCreateProfilingGroup
  pClientToken_
  pProfilingGroupName_ =
    CreateProfilingGroup'
      { tags = Prelude.Nothing,
        computePlatform = Prelude.Nothing,
        agentOrchestrationConfig = Prelude.Nothing,
        clientToken = pClientToken_,
        profilingGroupName = pProfilingGroupName_
      }

-- | A list of tags to add to the created profiling group.
createProfilingGroup_tags :: Lens.Lens' CreateProfilingGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createProfilingGroup_tags = Lens.lens (\CreateProfilingGroup' {tags} -> tags) (\s@CreateProfilingGroup' {} a -> s {tags = a} :: CreateProfilingGroup) Prelude.. Lens.mapping Lens.coerced

-- | The compute platform of the profiling group. Use @AWSLambda@ if your
-- application runs on AWS Lambda. Use @Default@ if your application runs
-- on a compute platform that is not AWS Lambda, such an Amazon EC2
-- instance, an on-premises server, or a different platform. If not
-- specified, @Default@ is used.
createProfilingGroup_computePlatform :: Lens.Lens' CreateProfilingGroup (Prelude.Maybe ComputePlatform)
createProfilingGroup_computePlatform = Lens.lens (\CreateProfilingGroup' {computePlatform} -> computePlatform) (\s@CreateProfilingGroup' {} a -> s {computePlatform = a} :: CreateProfilingGroup)

-- | Specifies whether profiling is enabled or disabled for the created
-- profiling group.
createProfilingGroup_agentOrchestrationConfig :: Lens.Lens' CreateProfilingGroup (Prelude.Maybe AgentOrchestrationConfig)
createProfilingGroup_agentOrchestrationConfig = Lens.lens (\CreateProfilingGroup' {agentOrchestrationConfig} -> agentOrchestrationConfig) (\s@CreateProfilingGroup' {} a -> s {agentOrchestrationConfig = a} :: CreateProfilingGroup)

-- | Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
-- to prevent the accidental creation of duplicate profiling groups if
-- there are failures and retries.
createProfilingGroup_clientToken :: Lens.Lens' CreateProfilingGroup Prelude.Text
createProfilingGroup_clientToken = Lens.lens (\CreateProfilingGroup' {clientToken} -> clientToken) (\s@CreateProfilingGroup' {} a -> s {clientToken = a} :: CreateProfilingGroup)

-- | The name of the profiling group to create.
createProfilingGroup_profilingGroupName :: Lens.Lens' CreateProfilingGroup Prelude.Text
createProfilingGroup_profilingGroupName = Lens.lens (\CreateProfilingGroup' {profilingGroupName} -> profilingGroupName) (\s@CreateProfilingGroup' {} a -> s {profilingGroupName = a} :: CreateProfilingGroup)

instance Core.AWSRequest CreateProfilingGroup where
  type
    AWSResponse CreateProfilingGroup =
      CreateProfilingGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProfilingGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable CreateProfilingGroup where
  hashWithSalt _salt CreateProfilingGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` computePlatform
      `Prelude.hashWithSalt` agentOrchestrationConfig
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` profilingGroupName

instance Prelude.NFData CreateProfilingGroup where
  rnf CreateProfilingGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf computePlatform
      `Prelude.seq` Prelude.rnf agentOrchestrationConfig
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf profilingGroupName

instance Core.ToHeaders CreateProfilingGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateProfilingGroup where
  toJSON CreateProfilingGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("computePlatform" Core..=)
              Prelude.<$> computePlatform,
            ("agentOrchestrationConfig" Core..=)
              Prelude.<$> agentOrchestrationConfig,
            Prelude.Just
              ("profilingGroupName" Core..= profilingGroupName)
          ]
      )

instance Core.ToPath CreateProfilingGroup where
  toPath = Prelude.const "/profilingGroups"

instance Core.ToQuery CreateProfilingGroup where
  toQuery CreateProfilingGroup' {..} =
    Prelude.mconcat ["clientToken" Core.=: clientToken]

-- | The structure representing the createProfilingGroupResponse.
--
-- /See:/ 'newCreateProfilingGroupResponse' smart constructor.
data CreateProfilingGroupResponse = CreateProfilingGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The returned
    -- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html ProfilingGroupDescription>
    -- object that contains information about the created profiling group.
    profilingGroup :: ProfilingGroupDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProfilingGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createProfilingGroupResponse_httpStatus' - The response's http status code.
--
-- 'profilingGroup', 'createProfilingGroupResponse_profilingGroup' - The returned
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html ProfilingGroupDescription>
-- object that contains information about the created profiling group.
newCreateProfilingGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'profilingGroup'
  ProfilingGroupDescription ->
  CreateProfilingGroupResponse
newCreateProfilingGroupResponse
  pHttpStatus_
  pProfilingGroup_ =
    CreateProfilingGroupResponse'
      { httpStatus =
          pHttpStatus_,
        profilingGroup = pProfilingGroup_
      }

-- | The response's http status code.
createProfilingGroupResponse_httpStatus :: Lens.Lens' CreateProfilingGroupResponse Prelude.Int
createProfilingGroupResponse_httpStatus = Lens.lens (\CreateProfilingGroupResponse' {httpStatus} -> httpStatus) (\s@CreateProfilingGroupResponse' {} a -> s {httpStatus = a} :: CreateProfilingGroupResponse)

-- | The returned
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html ProfilingGroupDescription>
-- object that contains information about the created profiling group.
createProfilingGroupResponse_profilingGroup :: Lens.Lens' CreateProfilingGroupResponse ProfilingGroupDescription
createProfilingGroupResponse_profilingGroup = Lens.lens (\CreateProfilingGroupResponse' {profilingGroup} -> profilingGroup) (\s@CreateProfilingGroupResponse' {} a -> s {profilingGroup = a} :: CreateProfilingGroupResponse)

instance Prelude.NFData CreateProfilingGroupResponse where
  rnf CreateProfilingGroupResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf profilingGroup

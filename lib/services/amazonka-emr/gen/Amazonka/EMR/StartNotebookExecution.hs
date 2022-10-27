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
-- Module      : Amazonka.EMR.StartNotebookExecution
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a notebook execution.
module Amazonka.EMR.StartNotebookExecution
  ( -- * Creating a Request
    StartNotebookExecution (..),
    newStartNotebookExecution,

    -- * Request Lenses
    startNotebookExecution_tags,
    startNotebookExecution_notebookInstanceSecurityGroupId,
    startNotebookExecution_notebookExecutionName,
    startNotebookExecution_notebookParams,
    startNotebookExecution_editorId,
    startNotebookExecution_relativePath,
    startNotebookExecution_executionEngine,
    startNotebookExecution_serviceRole,

    -- * Destructuring the Response
    StartNotebookExecutionResponse (..),
    newStartNotebookExecutionResponse,

    -- * Response Lenses
    startNotebookExecutionResponse_notebookExecutionId,
    startNotebookExecutionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartNotebookExecution' smart constructor.
data StartNotebookExecution = StartNotebookExecution'
  { -- | A list of tags associated with a notebook execution. Tags are
    -- user-defined key-value pairs that consist of a required key string with
    -- a maximum of 128 characters and an optional value string with a maximum
    -- of 256 characters.
    tags :: Prelude.Maybe [Tag],
    -- | The unique identifier of the Amazon EC2 security group to associate with
    -- the EMR Notebook for this notebook execution.
    notebookInstanceSecurityGroupId :: Prelude.Maybe Prelude.Text,
    -- | An optional name for the notebook execution.
    notebookExecutionName :: Prelude.Maybe Prelude.Text,
    -- | Input parameters in JSON format passed to the EMR Notebook at runtime
    -- for execution.
    notebookParams :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the EMR Notebook to use for notebook execution.
    editorId :: Prelude.Text,
    -- | The path and file name of the notebook file for this execution, relative
    -- to the path specified for the EMR Notebook. For example, if you specify
    -- a path of @s3:\/\/MyBucket\/MyNotebooks@ when you create an EMR Notebook
    -- for a notebook with an ID of @e-ABCDEFGHIJK1234567890ABCD@ (the
    -- @EditorID@ of this request), and you specify a @RelativePath@ of
    -- @my_notebook_executions\/notebook_execution.ipynb@, the location of the
    -- file for the notebook execution is
    -- @s3:\/\/MyBucket\/MyNotebooks\/e-ABCDEFGHIJK1234567890ABCD\/my_notebook_executions\/notebook_execution.ipynb@.
    relativePath :: Prelude.Text,
    -- | Specifies the execution engine (cluster) that runs the notebook
    -- execution.
    executionEngine :: ExecutionEngineConfig,
    -- | The name or ARN of the IAM role that is used as the service role for
    -- Amazon EMR (the EMR role) for the notebook execution.
    serviceRole :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartNotebookExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'startNotebookExecution_tags' - A list of tags associated with a notebook execution. Tags are
-- user-defined key-value pairs that consist of a required key string with
-- a maximum of 128 characters and an optional value string with a maximum
-- of 256 characters.
--
-- 'notebookInstanceSecurityGroupId', 'startNotebookExecution_notebookInstanceSecurityGroupId' - The unique identifier of the Amazon EC2 security group to associate with
-- the EMR Notebook for this notebook execution.
--
-- 'notebookExecutionName', 'startNotebookExecution_notebookExecutionName' - An optional name for the notebook execution.
--
-- 'notebookParams', 'startNotebookExecution_notebookParams' - Input parameters in JSON format passed to the EMR Notebook at runtime
-- for execution.
--
-- 'editorId', 'startNotebookExecution_editorId' - The unique identifier of the EMR Notebook to use for notebook execution.
--
-- 'relativePath', 'startNotebookExecution_relativePath' - The path and file name of the notebook file for this execution, relative
-- to the path specified for the EMR Notebook. For example, if you specify
-- a path of @s3:\/\/MyBucket\/MyNotebooks@ when you create an EMR Notebook
-- for a notebook with an ID of @e-ABCDEFGHIJK1234567890ABCD@ (the
-- @EditorID@ of this request), and you specify a @RelativePath@ of
-- @my_notebook_executions\/notebook_execution.ipynb@, the location of the
-- file for the notebook execution is
-- @s3:\/\/MyBucket\/MyNotebooks\/e-ABCDEFGHIJK1234567890ABCD\/my_notebook_executions\/notebook_execution.ipynb@.
--
-- 'executionEngine', 'startNotebookExecution_executionEngine' - Specifies the execution engine (cluster) that runs the notebook
-- execution.
--
-- 'serviceRole', 'startNotebookExecution_serviceRole' - The name or ARN of the IAM role that is used as the service role for
-- Amazon EMR (the EMR role) for the notebook execution.
newStartNotebookExecution ::
  -- | 'editorId'
  Prelude.Text ->
  -- | 'relativePath'
  Prelude.Text ->
  -- | 'executionEngine'
  ExecutionEngineConfig ->
  -- | 'serviceRole'
  Prelude.Text ->
  StartNotebookExecution
newStartNotebookExecution
  pEditorId_
  pRelativePath_
  pExecutionEngine_
  pServiceRole_ =
    StartNotebookExecution'
      { tags = Prelude.Nothing,
        notebookInstanceSecurityGroupId = Prelude.Nothing,
        notebookExecutionName = Prelude.Nothing,
        notebookParams = Prelude.Nothing,
        editorId = pEditorId_,
        relativePath = pRelativePath_,
        executionEngine = pExecutionEngine_,
        serviceRole = pServiceRole_
      }

-- | A list of tags associated with a notebook execution. Tags are
-- user-defined key-value pairs that consist of a required key string with
-- a maximum of 128 characters and an optional value string with a maximum
-- of 256 characters.
startNotebookExecution_tags :: Lens.Lens' StartNotebookExecution (Prelude.Maybe [Tag])
startNotebookExecution_tags = Lens.lens (\StartNotebookExecution' {tags} -> tags) (\s@StartNotebookExecution' {} a -> s {tags = a} :: StartNotebookExecution) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the Amazon EC2 security group to associate with
-- the EMR Notebook for this notebook execution.
startNotebookExecution_notebookInstanceSecurityGroupId :: Lens.Lens' StartNotebookExecution (Prelude.Maybe Prelude.Text)
startNotebookExecution_notebookInstanceSecurityGroupId = Lens.lens (\StartNotebookExecution' {notebookInstanceSecurityGroupId} -> notebookInstanceSecurityGroupId) (\s@StartNotebookExecution' {} a -> s {notebookInstanceSecurityGroupId = a} :: StartNotebookExecution)

-- | An optional name for the notebook execution.
startNotebookExecution_notebookExecutionName :: Lens.Lens' StartNotebookExecution (Prelude.Maybe Prelude.Text)
startNotebookExecution_notebookExecutionName = Lens.lens (\StartNotebookExecution' {notebookExecutionName} -> notebookExecutionName) (\s@StartNotebookExecution' {} a -> s {notebookExecutionName = a} :: StartNotebookExecution)

-- | Input parameters in JSON format passed to the EMR Notebook at runtime
-- for execution.
startNotebookExecution_notebookParams :: Lens.Lens' StartNotebookExecution (Prelude.Maybe Prelude.Text)
startNotebookExecution_notebookParams = Lens.lens (\StartNotebookExecution' {notebookParams} -> notebookParams) (\s@StartNotebookExecution' {} a -> s {notebookParams = a} :: StartNotebookExecution)

-- | The unique identifier of the EMR Notebook to use for notebook execution.
startNotebookExecution_editorId :: Lens.Lens' StartNotebookExecution Prelude.Text
startNotebookExecution_editorId = Lens.lens (\StartNotebookExecution' {editorId} -> editorId) (\s@StartNotebookExecution' {} a -> s {editorId = a} :: StartNotebookExecution)

-- | The path and file name of the notebook file for this execution, relative
-- to the path specified for the EMR Notebook. For example, if you specify
-- a path of @s3:\/\/MyBucket\/MyNotebooks@ when you create an EMR Notebook
-- for a notebook with an ID of @e-ABCDEFGHIJK1234567890ABCD@ (the
-- @EditorID@ of this request), and you specify a @RelativePath@ of
-- @my_notebook_executions\/notebook_execution.ipynb@, the location of the
-- file for the notebook execution is
-- @s3:\/\/MyBucket\/MyNotebooks\/e-ABCDEFGHIJK1234567890ABCD\/my_notebook_executions\/notebook_execution.ipynb@.
startNotebookExecution_relativePath :: Lens.Lens' StartNotebookExecution Prelude.Text
startNotebookExecution_relativePath = Lens.lens (\StartNotebookExecution' {relativePath} -> relativePath) (\s@StartNotebookExecution' {} a -> s {relativePath = a} :: StartNotebookExecution)

-- | Specifies the execution engine (cluster) that runs the notebook
-- execution.
startNotebookExecution_executionEngine :: Lens.Lens' StartNotebookExecution ExecutionEngineConfig
startNotebookExecution_executionEngine = Lens.lens (\StartNotebookExecution' {executionEngine} -> executionEngine) (\s@StartNotebookExecution' {} a -> s {executionEngine = a} :: StartNotebookExecution)

-- | The name or ARN of the IAM role that is used as the service role for
-- Amazon EMR (the EMR role) for the notebook execution.
startNotebookExecution_serviceRole :: Lens.Lens' StartNotebookExecution Prelude.Text
startNotebookExecution_serviceRole = Lens.lens (\StartNotebookExecution' {serviceRole} -> serviceRole) (\s@StartNotebookExecution' {} a -> s {serviceRole = a} :: StartNotebookExecution)

instance Core.AWSRequest StartNotebookExecution where
  type
    AWSResponse StartNotebookExecution =
      StartNotebookExecutionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          StartNotebookExecutionResponse'
            Prelude.<$> (x Core..?> "NotebookExecutionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartNotebookExecution where
  hashWithSalt _salt StartNotebookExecution' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` notebookInstanceSecurityGroupId
      `Prelude.hashWithSalt` notebookExecutionName
      `Prelude.hashWithSalt` notebookParams
      `Prelude.hashWithSalt` editorId
      `Prelude.hashWithSalt` relativePath
      `Prelude.hashWithSalt` executionEngine
      `Prelude.hashWithSalt` serviceRole

instance Prelude.NFData StartNotebookExecution where
  rnf StartNotebookExecution' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf notebookInstanceSecurityGroupId
      `Prelude.seq` Prelude.rnf notebookExecutionName
      `Prelude.seq` Prelude.rnf notebookParams
      `Prelude.seq` Prelude.rnf editorId
      `Prelude.seq` Prelude.rnf relativePath
      `Prelude.seq` Prelude.rnf executionEngine
      `Prelude.seq` Prelude.rnf serviceRole

instance Core.ToHeaders StartNotebookExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ElasticMapReduce.StartNotebookExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartNotebookExecution where
  toJSON StartNotebookExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("NotebookInstanceSecurityGroupId" Core..=)
              Prelude.<$> notebookInstanceSecurityGroupId,
            ("NotebookExecutionName" Core..=)
              Prelude.<$> notebookExecutionName,
            ("NotebookParams" Core..=)
              Prelude.<$> notebookParams,
            Prelude.Just ("EditorId" Core..= editorId),
            Prelude.Just ("RelativePath" Core..= relativePath),
            Prelude.Just
              ("ExecutionEngine" Core..= executionEngine),
            Prelude.Just ("ServiceRole" Core..= serviceRole)
          ]
      )

instance Core.ToPath StartNotebookExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery StartNotebookExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartNotebookExecutionResponse' smart constructor.
data StartNotebookExecutionResponse = StartNotebookExecutionResponse'
  { -- | The unique identifier of the notebook execution.
    notebookExecutionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartNotebookExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notebookExecutionId', 'startNotebookExecutionResponse_notebookExecutionId' - The unique identifier of the notebook execution.
--
-- 'httpStatus', 'startNotebookExecutionResponse_httpStatus' - The response's http status code.
newStartNotebookExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartNotebookExecutionResponse
newStartNotebookExecutionResponse pHttpStatus_ =
  StartNotebookExecutionResponse'
    { notebookExecutionId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier of the notebook execution.
startNotebookExecutionResponse_notebookExecutionId :: Lens.Lens' StartNotebookExecutionResponse (Prelude.Maybe Prelude.Text)
startNotebookExecutionResponse_notebookExecutionId = Lens.lens (\StartNotebookExecutionResponse' {notebookExecutionId} -> notebookExecutionId) (\s@StartNotebookExecutionResponse' {} a -> s {notebookExecutionId = a} :: StartNotebookExecutionResponse)

-- | The response's http status code.
startNotebookExecutionResponse_httpStatus :: Lens.Lens' StartNotebookExecutionResponse Prelude.Int
startNotebookExecutionResponse_httpStatus = Lens.lens (\StartNotebookExecutionResponse' {httpStatus} -> httpStatus) (\s@StartNotebookExecutionResponse' {} a -> s {httpStatus = a} :: StartNotebookExecutionResponse)

instance
  Prelude.NFData
    StartNotebookExecutionResponse
  where
  rnf StartNotebookExecutionResponse' {..} =
    Prelude.rnf notebookExecutionId
      `Prelude.seq` Prelude.rnf httpStatus

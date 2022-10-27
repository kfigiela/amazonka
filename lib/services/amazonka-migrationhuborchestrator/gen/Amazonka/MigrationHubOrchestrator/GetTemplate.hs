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
-- Module      : Amazonka.MigrationHubOrchestrator.GetTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the template you want to use for creating a migration workflow.
module Amazonka.MigrationHubOrchestrator.GetTemplate
  ( -- * Creating a Request
    GetTemplate (..),
    newGetTemplate,

    -- * Request Lenses
    getTemplate_id,

    -- * Destructuring the Response
    GetTemplateResponse (..),
    newGetTemplateResponse,

    -- * Response Lenses
    getTemplateResponse_name,
    getTemplateResponse_tools,
    getTemplateResponse_status,
    getTemplateResponse_description,
    getTemplateResponse_id,
    getTemplateResponse_creationTime,
    getTemplateResponse_inputs,
    getTemplateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTemplate' smart constructor.
data GetTemplate = GetTemplate'
  { -- | The ID of the template.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getTemplate_id' - The ID of the template.
newGetTemplate ::
  -- | 'id'
  Prelude.Text ->
  GetTemplate
newGetTemplate pId_ = GetTemplate' {id = pId_}

-- | The ID of the template.
getTemplate_id :: Lens.Lens' GetTemplate Prelude.Text
getTemplate_id = Lens.lens (\GetTemplate' {id} -> id) (\s@GetTemplate' {} a -> s {id = a} :: GetTemplate)

instance Core.AWSRequest GetTemplate where
  type AWSResponse GetTemplate = GetTemplateResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTemplateResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "tools" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "inputs" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetTemplate where
  hashWithSalt _salt GetTemplate' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData GetTemplate where
  rnf GetTemplate' {..} = Prelude.rnf id

instance Core.ToHeaders GetTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetTemplate where
  toPath GetTemplate' {..} =
    Prelude.mconcat
      ["/migrationworkflowtemplate/", Core.toBS id]

instance Core.ToQuery GetTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetTemplateResponse' smart constructor.
data GetTemplateResponse = GetTemplateResponse'
  { -- | The name of the template.
    name :: Prelude.Maybe Prelude.Text,
    -- | List of AWS services utilized in a migration workflow.
    tools :: Prelude.Maybe [Tool],
    -- | The status of the template.
    status :: Prelude.Maybe TemplateStatus,
    -- | The time at which the template was last created.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the template.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the template was last created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The inputs provided for the creation of the migration workflow.
    inputs :: Prelude.Maybe [TemplateInput],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getTemplateResponse_name' - The name of the template.
--
-- 'tools', 'getTemplateResponse_tools' - List of AWS services utilized in a migration workflow.
--
-- 'status', 'getTemplateResponse_status' - The status of the template.
--
-- 'description', 'getTemplateResponse_description' - The time at which the template was last created.
--
-- 'id', 'getTemplateResponse_id' - The ID of the template.
--
-- 'creationTime', 'getTemplateResponse_creationTime' - The time at which the template was last created.
--
-- 'inputs', 'getTemplateResponse_inputs' - The inputs provided for the creation of the migration workflow.
--
-- 'httpStatus', 'getTemplateResponse_httpStatus' - The response's http status code.
newGetTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTemplateResponse
newGetTemplateResponse pHttpStatus_ =
  GetTemplateResponse'
    { name = Prelude.Nothing,
      tools = Prelude.Nothing,
      status = Prelude.Nothing,
      description = Prelude.Nothing,
      id = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      inputs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the template.
getTemplateResponse_name :: Lens.Lens' GetTemplateResponse (Prelude.Maybe Prelude.Text)
getTemplateResponse_name = Lens.lens (\GetTemplateResponse' {name} -> name) (\s@GetTemplateResponse' {} a -> s {name = a} :: GetTemplateResponse)

-- | List of AWS services utilized in a migration workflow.
getTemplateResponse_tools :: Lens.Lens' GetTemplateResponse (Prelude.Maybe [Tool])
getTemplateResponse_tools = Lens.lens (\GetTemplateResponse' {tools} -> tools) (\s@GetTemplateResponse' {} a -> s {tools = a} :: GetTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The status of the template.
getTemplateResponse_status :: Lens.Lens' GetTemplateResponse (Prelude.Maybe TemplateStatus)
getTemplateResponse_status = Lens.lens (\GetTemplateResponse' {status} -> status) (\s@GetTemplateResponse' {} a -> s {status = a} :: GetTemplateResponse)

-- | The time at which the template was last created.
getTemplateResponse_description :: Lens.Lens' GetTemplateResponse (Prelude.Maybe Prelude.Text)
getTemplateResponse_description = Lens.lens (\GetTemplateResponse' {description} -> description) (\s@GetTemplateResponse' {} a -> s {description = a} :: GetTemplateResponse)

-- | The ID of the template.
getTemplateResponse_id :: Lens.Lens' GetTemplateResponse (Prelude.Maybe Prelude.Text)
getTemplateResponse_id = Lens.lens (\GetTemplateResponse' {id} -> id) (\s@GetTemplateResponse' {} a -> s {id = a} :: GetTemplateResponse)

-- | The time at which the template was last created.
getTemplateResponse_creationTime :: Lens.Lens' GetTemplateResponse (Prelude.Maybe Prelude.UTCTime)
getTemplateResponse_creationTime = Lens.lens (\GetTemplateResponse' {creationTime} -> creationTime) (\s@GetTemplateResponse' {} a -> s {creationTime = a} :: GetTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | The inputs provided for the creation of the migration workflow.
getTemplateResponse_inputs :: Lens.Lens' GetTemplateResponse (Prelude.Maybe [TemplateInput])
getTemplateResponse_inputs = Lens.lens (\GetTemplateResponse' {inputs} -> inputs) (\s@GetTemplateResponse' {} a -> s {inputs = a} :: GetTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getTemplateResponse_httpStatus :: Lens.Lens' GetTemplateResponse Prelude.Int
getTemplateResponse_httpStatus = Lens.lens (\GetTemplateResponse' {httpStatus} -> httpStatus) (\s@GetTemplateResponse' {} a -> s {httpStatus = a} :: GetTemplateResponse)

instance Prelude.NFData GetTemplateResponse where
  rnf GetTemplateResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf tools
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf inputs
      `Prelude.seq` Prelude.rnf httpStatus

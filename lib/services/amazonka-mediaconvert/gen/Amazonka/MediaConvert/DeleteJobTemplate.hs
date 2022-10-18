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
-- Module      : Amazonka.MediaConvert.DeleteJobTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently delete a job template you have created.
module Amazonka.MediaConvert.DeleteJobTemplate
  ( -- * Creating a Request
    DeleteJobTemplate (..),
    newDeleteJobTemplate,

    -- * Request Lenses
    deleteJobTemplate_name,

    -- * Destructuring the Response
    DeleteJobTemplateResponse (..),
    newDeleteJobTemplateResponse,

    -- * Response Lenses
    deleteJobTemplateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteJobTemplate' smart constructor.
data DeleteJobTemplate = DeleteJobTemplate'
  { -- | The name of the job template to be deleted.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJobTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteJobTemplate_name' - The name of the job template to be deleted.
newDeleteJobTemplate ::
  -- | 'name'
  Prelude.Text ->
  DeleteJobTemplate
newDeleteJobTemplate pName_ =
  DeleteJobTemplate' {name = pName_}

-- | The name of the job template to be deleted.
deleteJobTemplate_name :: Lens.Lens' DeleteJobTemplate Prelude.Text
deleteJobTemplate_name = Lens.lens (\DeleteJobTemplate' {name} -> name) (\s@DeleteJobTemplate' {} a -> s {name = a} :: DeleteJobTemplate)

instance Core.AWSRequest DeleteJobTemplate where
  type
    AWSResponse DeleteJobTemplate =
      DeleteJobTemplateResponse
  request srv = Request.delete srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteJobTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService DeleteJobTemplate where
  service _proxy = defaultService

instance Prelude.Hashable DeleteJobTemplate where
  hashWithSalt _salt DeleteJobTemplate' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeleteJobTemplate where
  rnf DeleteJobTemplate' {..} = Prelude.rnf name

instance Core.ToHeaders DeleteJobTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteJobTemplate where
  toPath DeleteJobTemplate' {..} =
    Prelude.mconcat
      ["/2017-08-29/jobTemplates/", Core.toBS name]

instance Core.ToQuery DeleteJobTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteJobTemplateResponse' smart constructor.
data DeleteJobTemplateResponse = DeleteJobTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJobTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteJobTemplateResponse_httpStatus' - The response's http status code.
newDeleteJobTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteJobTemplateResponse
newDeleteJobTemplateResponse pHttpStatus_ =
  DeleteJobTemplateResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteJobTemplateResponse_httpStatus :: Lens.Lens' DeleteJobTemplateResponse Prelude.Int
deleteJobTemplateResponse_httpStatus = Lens.lens (\DeleteJobTemplateResponse' {httpStatus} -> httpStatus) (\s@DeleteJobTemplateResponse' {} a -> s {httpStatus = a} :: DeleteJobTemplateResponse)

instance Prelude.NFData DeleteJobTemplateResponse where
  rnf DeleteJobTemplateResponse' {..} =
    Prelude.rnf httpStatus

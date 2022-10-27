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
-- Module      : Amazonka.Glue.DeleteCustomEntityType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom pattern by specifying its name.
module Amazonka.Glue.DeleteCustomEntityType
  ( -- * Creating a Request
    DeleteCustomEntityType (..),
    newDeleteCustomEntityType,

    -- * Request Lenses
    deleteCustomEntityType_name,

    -- * Destructuring the Response
    DeleteCustomEntityTypeResponse (..),
    newDeleteCustomEntityTypeResponse,

    -- * Response Lenses
    deleteCustomEntityTypeResponse_name,
    deleteCustomEntityTypeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteCustomEntityType' smart constructor.
data DeleteCustomEntityType = DeleteCustomEntityType'
  { -- | The name of the custom pattern that you want to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomEntityType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteCustomEntityType_name' - The name of the custom pattern that you want to delete.
newDeleteCustomEntityType ::
  -- | 'name'
  Prelude.Text ->
  DeleteCustomEntityType
newDeleteCustomEntityType pName_ =
  DeleteCustomEntityType' {name = pName_}

-- | The name of the custom pattern that you want to delete.
deleteCustomEntityType_name :: Lens.Lens' DeleteCustomEntityType Prelude.Text
deleteCustomEntityType_name = Lens.lens (\DeleteCustomEntityType' {name} -> name) (\s@DeleteCustomEntityType' {} a -> s {name = a} :: DeleteCustomEntityType)

instance Core.AWSRequest DeleteCustomEntityType where
  type
    AWSResponse DeleteCustomEntityType =
      DeleteCustomEntityTypeResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteCustomEntityTypeResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteCustomEntityType where
  hashWithSalt _salt DeleteCustomEntityType' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeleteCustomEntityType where
  rnf DeleteCustomEntityType' {..} = Prelude.rnf name

instance Core.ToHeaders DeleteCustomEntityType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSGlue.DeleteCustomEntityType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteCustomEntityType where
  toJSON DeleteCustomEntityType' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Name" Core..= name)]
      )

instance Core.ToPath DeleteCustomEntityType where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteCustomEntityType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCustomEntityTypeResponse' smart constructor.
data DeleteCustomEntityTypeResponse = DeleteCustomEntityTypeResponse'
  { -- | The name of the custom pattern you deleted.
    name :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomEntityTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteCustomEntityTypeResponse_name' - The name of the custom pattern you deleted.
--
-- 'httpStatus', 'deleteCustomEntityTypeResponse_httpStatus' - The response's http status code.
newDeleteCustomEntityTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteCustomEntityTypeResponse
newDeleteCustomEntityTypeResponse pHttpStatus_ =
  DeleteCustomEntityTypeResponse'
    { name =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the custom pattern you deleted.
deleteCustomEntityTypeResponse_name :: Lens.Lens' DeleteCustomEntityTypeResponse (Prelude.Maybe Prelude.Text)
deleteCustomEntityTypeResponse_name = Lens.lens (\DeleteCustomEntityTypeResponse' {name} -> name) (\s@DeleteCustomEntityTypeResponse' {} a -> s {name = a} :: DeleteCustomEntityTypeResponse)

-- | The response's http status code.
deleteCustomEntityTypeResponse_httpStatus :: Lens.Lens' DeleteCustomEntityTypeResponse Prelude.Int
deleteCustomEntityTypeResponse_httpStatus = Lens.lens (\DeleteCustomEntityTypeResponse' {httpStatus} -> httpStatus) (\s@DeleteCustomEntityTypeResponse' {} a -> s {httpStatus = a} :: DeleteCustomEntityTypeResponse)

instance
  Prelude.NFData
    DeleteCustomEntityTypeResponse
  where
  rnf DeleteCustomEntityTypeResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf httpStatus

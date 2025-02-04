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
-- Module      : Amazonka.MediaTailor.DeleteSourceLocation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a source location on a specific channel.
module Amazonka.MediaTailor.DeleteSourceLocation
  ( -- * Creating a Request
    DeleteSourceLocation (..),
    newDeleteSourceLocation,

    -- * Request Lenses
    deleteSourceLocation_sourceLocationName,

    -- * Destructuring the Response
    DeleteSourceLocationResponse (..),
    newDeleteSourceLocationResponse,

    -- * Response Lenses
    deleteSourceLocationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteSourceLocation' smart constructor.
data DeleteSourceLocation = DeleteSourceLocation'
  { -- | The identifier for the source location you are working on.
    sourceLocationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSourceLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceLocationName', 'deleteSourceLocation_sourceLocationName' - The identifier for the source location you are working on.
newDeleteSourceLocation ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  DeleteSourceLocation
newDeleteSourceLocation pSourceLocationName_ =
  DeleteSourceLocation'
    { sourceLocationName =
        pSourceLocationName_
    }

-- | The identifier for the source location you are working on.
deleteSourceLocation_sourceLocationName :: Lens.Lens' DeleteSourceLocation Prelude.Text
deleteSourceLocation_sourceLocationName = Lens.lens (\DeleteSourceLocation' {sourceLocationName} -> sourceLocationName) (\s@DeleteSourceLocation' {} a -> s {sourceLocationName = a} :: DeleteSourceLocation)

instance Core.AWSRequest DeleteSourceLocation where
  type
    AWSResponse DeleteSourceLocation =
      DeleteSourceLocationResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteSourceLocationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSourceLocation where
  hashWithSalt _salt DeleteSourceLocation' {..} =
    _salt `Prelude.hashWithSalt` sourceLocationName

instance Prelude.NFData DeleteSourceLocation where
  rnf DeleteSourceLocation' {..} =
    Prelude.rnf sourceLocationName

instance Core.ToHeaders DeleteSourceLocation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteSourceLocation where
  toPath DeleteSourceLocation' {..} =
    Prelude.mconcat
      ["/sourceLocation/", Core.toBS sourceLocationName]

instance Core.ToQuery DeleteSourceLocation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSourceLocationResponse' smart constructor.
data DeleteSourceLocationResponse = DeleteSourceLocationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSourceLocationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteSourceLocationResponse_httpStatus' - The response's http status code.
newDeleteSourceLocationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSourceLocationResponse
newDeleteSourceLocationResponse pHttpStatus_ =
  DeleteSourceLocationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteSourceLocationResponse_httpStatus :: Lens.Lens' DeleteSourceLocationResponse Prelude.Int
deleteSourceLocationResponse_httpStatus = Lens.lens (\DeleteSourceLocationResponse' {httpStatus} -> httpStatus) (\s@DeleteSourceLocationResponse' {} a -> s {httpStatus = a} :: DeleteSourceLocationResponse)

instance Prelude.NFData DeleteSourceLocationResponse where
  rnf DeleteSourceLocationResponse' {..} =
    Prelude.rnf httpStatus

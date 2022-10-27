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
-- Module      : Amazonka.MGN.DeleteSourceServer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single source server by ID.
module Amazonka.MGN.DeleteSourceServer
  ( -- * Creating a Request
    DeleteSourceServer (..),
    newDeleteSourceServer,

    -- * Request Lenses
    deleteSourceServer_sourceServerID,

    -- * Destructuring the Response
    DeleteSourceServerResponse (..),
    newDeleteSourceServerResponse,

    -- * Response Lenses
    deleteSourceServerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteSourceServer' smart constructor.
data DeleteSourceServer = DeleteSourceServer'
  { -- | Request to delete Source Server from service by Server ID.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSourceServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'deleteSourceServer_sourceServerID' - Request to delete Source Server from service by Server ID.
newDeleteSourceServer ::
  -- | 'sourceServerID'
  Prelude.Text ->
  DeleteSourceServer
newDeleteSourceServer pSourceServerID_ =
  DeleteSourceServer'
    { sourceServerID =
        pSourceServerID_
    }

-- | Request to delete Source Server from service by Server ID.
deleteSourceServer_sourceServerID :: Lens.Lens' DeleteSourceServer Prelude.Text
deleteSourceServer_sourceServerID = Lens.lens (\DeleteSourceServer' {sourceServerID} -> sourceServerID) (\s@DeleteSourceServer' {} a -> s {sourceServerID = a} :: DeleteSourceServer)

instance Core.AWSRequest DeleteSourceServer where
  type
    AWSResponse DeleteSourceServer =
      DeleteSourceServerResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteSourceServerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSourceServer where
  hashWithSalt _salt DeleteSourceServer' {..} =
    _salt `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData DeleteSourceServer where
  rnf DeleteSourceServer' {..} =
    Prelude.rnf sourceServerID

instance Core.ToHeaders DeleteSourceServer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteSourceServer where
  toJSON DeleteSourceServer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath DeleteSourceServer where
  toPath = Prelude.const "/DeleteSourceServer"

instance Core.ToQuery DeleteSourceServer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSourceServerResponse' smart constructor.
data DeleteSourceServerResponse = DeleteSourceServerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSourceServerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteSourceServerResponse_httpStatus' - The response's http status code.
newDeleteSourceServerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSourceServerResponse
newDeleteSourceServerResponse pHttpStatus_ =
  DeleteSourceServerResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteSourceServerResponse_httpStatus :: Lens.Lens' DeleteSourceServerResponse Prelude.Int
deleteSourceServerResponse_httpStatus = Lens.lens (\DeleteSourceServerResponse' {httpStatus} -> httpStatus) (\s@DeleteSourceServerResponse' {} a -> s {httpStatus = a} :: DeleteSourceServerResponse)

instance Prelude.NFData DeleteSourceServerResponse where
  rnf DeleteSourceServerResponse' {..} =
    Prelude.rnf httpStatus

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
-- Module      : Amazonka.EC2.DeleteLocalGatewayRouteTable
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a local gateway route table.
module Amazonka.EC2.DeleteLocalGatewayRouteTable
  ( -- * Creating a Request
    DeleteLocalGatewayRouteTable (..),
    newDeleteLocalGatewayRouteTable,

    -- * Request Lenses
    deleteLocalGatewayRouteTable_dryRun,
    deleteLocalGatewayRouteTable_localGatewayRouteTableId,

    -- * Destructuring the Response
    DeleteLocalGatewayRouteTableResponse (..),
    newDeleteLocalGatewayRouteTableResponse,

    -- * Response Lenses
    deleteLocalGatewayRouteTableResponse_localGatewayRouteTable,
    deleteLocalGatewayRouteTableResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLocalGatewayRouteTable' smart constructor.
data DeleteLocalGatewayRouteTable = DeleteLocalGatewayRouteTable'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the local gateway route table.
    localGatewayRouteTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLocalGatewayRouteTable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'deleteLocalGatewayRouteTable_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'localGatewayRouteTableId', 'deleteLocalGatewayRouteTable_localGatewayRouteTableId' - The ID of the local gateway route table.
newDeleteLocalGatewayRouteTable ::
  -- | 'localGatewayRouteTableId'
  Prelude.Text ->
  DeleteLocalGatewayRouteTable
newDeleteLocalGatewayRouteTable
  pLocalGatewayRouteTableId_ =
    DeleteLocalGatewayRouteTable'
      { dryRun =
          Prelude.Nothing,
        localGatewayRouteTableId =
          pLocalGatewayRouteTableId_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deleteLocalGatewayRouteTable_dryRun :: Lens.Lens' DeleteLocalGatewayRouteTable (Prelude.Maybe Prelude.Bool)
deleteLocalGatewayRouteTable_dryRun = Lens.lens (\DeleteLocalGatewayRouteTable' {dryRun} -> dryRun) (\s@DeleteLocalGatewayRouteTable' {} a -> s {dryRun = a} :: DeleteLocalGatewayRouteTable)

-- | The ID of the local gateway route table.
deleteLocalGatewayRouteTable_localGatewayRouteTableId :: Lens.Lens' DeleteLocalGatewayRouteTable Prelude.Text
deleteLocalGatewayRouteTable_localGatewayRouteTableId = Lens.lens (\DeleteLocalGatewayRouteTable' {localGatewayRouteTableId} -> localGatewayRouteTableId) (\s@DeleteLocalGatewayRouteTable' {} a -> s {localGatewayRouteTableId = a} :: DeleteLocalGatewayRouteTable)

instance Core.AWSRequest DeleteLocalGatewayRouteTable where
  type
    AWSResponse DeleteLocalGatewayRouteTable =
      DeleteLocalGatewayRouteTableResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          DeleteLocalGatewayRouteTableResponse'
            Prelude.<$> (x Core..@? "localGatewayRouteTable")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteLocalGatewayRouteTable
  where
  hashWithSalt _salt DeleteLocalGatewayRouteTable' {..} =
    _salt `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` localGatewayRouteTableId

instance Prelude.NFData DeleteLocalGatewayRouteTable where
  rnf DeleteLocalGatewayRouteTable' {..} =
    Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf localGatewayRouteTableId

instance Core.ToHeaders DeleteLocalGatewayRouteTable where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteLocalGatewayRouteTable where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteLocalGatewayRouteTable where
  toQuery DeleteLocalGatewayRouteTable' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DeleteLocalGatewayRouteTable" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        "LocalGatewayRouteTableId"
          Core.=: localGatewayRouteTableId
      ]

-- | /See:/ 'newDeleteLocalGatewayRouteTableResponse' smart constructor.
data DeleteLocalGatewayRouteTableResponse = DeleteLocalGatewayRouteTableResponse'
  { localGatewayRouteTable :: Prelude.Maybe LocalGatewayRouteTable,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLocalGatewayRouteTableResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'localGatewayRouteTable', 'deleteLocalGatewayRouteTableResponse_localGatewayRouteTable' - Undocumented member.
--
-- 'httpStatus', 'deleteLocalGatewayRouteTableResponse_httpStatus' - The response's http status code.
newDeleteLocalGatewayRouteTableResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLocalGatewayRouteTableResponse
newDeleteLocalGatewayRouteTableResponse pHttpStatus_ =
  DeleteLocalGatewayRouteTableResponse'
    { localGatewayRouteTable =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
deleteLocalGatewayRouteTableResponse_localGatewayRouteTable :: Lens.Lens' DeleteLocalGatewayRouteTableResponse (Prelude.Maybe LocalGatewayRouteTable)
deleteLocalGatewayRouteTableResponse_localGatewayRouteTable = Lens.lens (\DeleteLocalGatewayRouteTableResponse' {localGatewayRouteTable} -> localGatewayRouteTable) (\s@DeleteLocalGatewayRouteTableResponse' {} a -> s {localGatewayRouteTable = a} :: DeleteLocalGatewayRouteTableResponse)

-- | The response's http status code.
deleteLocalGatewayRouteTableResponse_httpStatus :: Lens.Lens' DeleteLocalGatewayRouteTableResponse Prelude.Int
deleteLocalGatewayRouteTableResponse_httpStatus = Lens.lens (\DeleteLocalGatewayRouteTableResponse' {httpStatus} -> httpStatus) (\s@DeleteLocalGatewayRouteTableResponse' {} a -> s {httpStatus = a} :: DeleteLocalGatewayRouteTableResponse)

instance
  Prelude.NFData
    DeleteLocalGatewayRouteTableResponse
  where
  rnf DeleteLocalGatewayRouteTableResponse' {..} =
    Prelude.rnf localGatewayRouteTable
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Neptune.DeleteDBClusterEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom endpoint and removes it from an Amazon Neptune DB
-- cluster.
module Amazonka.Neptune.DeleteDBClusterEndpoint
  ( -- * Creating a Request
    DeleteDBClusterEndpoint (..),
    newDeleteDBClusterEndpoint,

    -- * Request Lenses
    deleteDBClusterEndpoint_dbClusterEndpointIdentifier,

    -- * Destructuring the Response
    DeleteDBClusterEndpointResponse (..),
    newDeleteDBClusterEndpointResponse,

    -- * Response Lenses
    deleteDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier,
    deleteDBClusterEndpointResponse_staticMembers,
    deleteDBClusterEndpointResponse_dbClusterIdentifier,
    deleteDBClusterEndpointResponse_excludedMembers,
    deleteDBClusterEndpointResponse_customEndpointType,
    deleteDBClusterEndpointResponse_status,
    deleteDBClusterEndpointResponse_endpointType,
    deleteDBClusterEndpointResponse_dbClusterEndpointIdentifier,
    deleteDBClusterEndpointResponse_dbClusterEndpointArn,
    deleteDBClusterEndpointResponse_endpoint,
    deleteDBClusterEndpointResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Neptune.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteDBClusterEndpoint' smart constructor.
data DeleteDBClusterEndpoint = DeleteDBClusterEndpoint'
  { -- | The identifier associated with the custom endpoint. This parameter is
    -- stored as a lowercase string.
    dbClusterEndpointIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterEndpointIdentifier', 'deleteDBClusterEndpoint_dbClusterEndpointIdentifier' - The identifier associated with the custom endpoint. This parameter is
-- stored as a lowercase string.
newDeleteDBClusterEndpoint ::
  -- | 'dbClusterEndpointIdentifier'
  Prelude.Text ->
  DeleteDBClusterEndpoint
newDeleteDBClusterEndpoint
  pDBClusterEndpointIdentifier_ =
    DeleteDBClusterEndpoint'
      { dbClusterEndpointIdentifier =
          pDBClusterEndpointIdentifier_
      }

-- | The identifier associated with the custom endpoint. This parameter is
-- stored as a lowercase string.
deleteDBClusterEndpoint_dbClusterEndpointIdentifier :: Lens.Lens' DeleteDBClusterEndpoint Prelude.Text
deleteDBClusterEndpoint_dbClusterEndpointIdentifier = Lens.lens (\DeleteDBClusterEndpoint' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@DeleteDBClusterEndpoint' {} a -> s {dbClusterEndpointIdentifier = a} :: DeleteDBClusterEndpoint)

instance Core.AWSRequest DeleteDBClusterEndpoint where
  type
    AWSResponse DeleteDBClusterEndpoint =
      DeleteDBClusterEndpointResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DeleteDBClusterEndpointResult"
      ( \s h x ->
          DeleteDBClusterEndpointResponse'
            Prelude.<$> (x Core..@? "DBClusterEndpointResourceIdentifier")
            Prelude.<*> ( x Core..@? "StaticMembers" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "DBClusterIdentifier")
            Prelude.<*> ( x Core..@? "ExcludedMembers" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "CustomEndpointType")
            Prelude.<*> (x Core..@? "Status")
            Prelude.<*> (x Core..@? "EndpointType")
            Prelude.<*> (x Core..@? "DBClusterEndpointIdentifier")
            Prelude.<*> (x Core..@? "DBClusterEndpointArn")
            Prelude.<*> (x Core..@? "Endpoint")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDBClusterEndpoint where
  hashWithSalt _salt DeleteDBClusterEndpoint' {..} =
    _salt
      `Prelude.hashWithSalt` dbClusterEndpointIdentifier

instance Prelude.NFData DeleteDBClusterEndpoint where
  rnf DeleteDBClusterEndpoint' {..} =
    Prelude.rnf dbClusterEndpointIdentifier

instance Core.ToHeaders DeleteDBClusterEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteDBClusterEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDBClusterEndpoint where
  toQuery DeleteDBClusterEndpoint' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteDBClusterEndpoint" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterEndpointIdentifier"
          Core.=: dbClusterEndpointIdentifier
      ]

-- | This data type represents the information you need to connect to an
-- Amazon Neptune DB cluster. This data type is used as a response element
-- in the following actions:
--
-- -   @CreateDBClusterEndpoint@
--
-- -   @DescribeDBClusterEndpoints@
--
-- -   @ModifyDBClusterEndpoint@
--
-- -   @DeleteDBClusterEndpoint@
--
-- For the data structure that represents Amazon RDS DB instance endpoints,
-- see @Endpoint@.
--
-- /See:/ 'newDeleteDBClusterEndpointResponse' smart constructor.
data DeleteDBClusterEndpointResponse = DeleteDBClusterEndpointResponse'
  { -- | A unique system-generated identifier for an endpoint. It remains the
    -- same for the whole life of the endpoint.
    dbClusterEndpointResourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | List of DB instance identifiers that are part of the custom endpoint
    -- group.
    staticMembers :: Prelude.Maybe [Prelude.Text],
    -- | The DB cluster identifier of the DB cluster associated with the
    -- endpoint. This parameter is stored as a lowercase string.
    dbClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | List of DB instance identifiers that aren\'t part of the custom endpoint
    -- group. All other eligible instances are reachable through the custom
    -- endpoint. Only relevant if the list of static members is empty.
    excludedMembers :: Prelude.Maybe [Prelude.Text],
    -- | The type associated with a custom endpoint. One of: @READER@, @WRITER@,
    -- @ANY@.
    customEndpointType :: Prelude.Maybe Prelude.Text,
    -- | The current status of the endpoint. One of: @creating@, @available@,
    -- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
    -- endpoint that cannot be used for a certain kind of cluster, such as a
    -- @writer@ endpoint for a read-only secondary cluster in a global
    -- database.
    status :: Prelude.Maybe Prelude.Text,
    -- | The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
    endpointType :: Prelude.Maybe Prelude.Text,
    -- | The identifier associated with the endpoint. This parameter is stored as
    -- a lowercase string.
    dbClusterEndpointIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the endpoint.
    dbClusterEndpointArn :: Prelude.Maybe Prelude.Text,
    -- | The DNS address of the endpoint.
    endpoint :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBClusterEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterEndpointResourceIdentifier', 'deleteDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier' - A unique system-generated identifier for an endpoint. It remains the
-- same for the whole life of the endpoint.
--
-- 'staticMembers', 'deleteDBClusterEndpointResponse_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
--
-- 'dbClusterIdentifier', 'deleteDBClusterEndpointResponse_dbClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'excludedMembers', 'deleteDBClusterEndpointResponse_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
--
-- 'customEndpointType', 'deleteDBClusterEndpointResponse_customEndpointType' - The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
--
-- 'status', 'deleteDBClusterEndpointResponse_status' - The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that cannot be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
--
-- 'endpointType', 'deleteDBClusterEndpointResponse_endpointType' - The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
--
-- 'dbClusterEndpointIdentifier', 'deleteDBClusterEndpointResponse_dbClusterEndpointIdentifier' - The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
--
-- 'dbClusterEndpointArn', 'deleteDBClusterEndpointResponse_dbClusterEndpointArn' - The Amazon Resource Name (ARN) for the endpoint.
--
-- 'endpoint', 'deleteDBClusterEndpointResponse_endpoint' - The DNS address of the endpoint.
--
-- 'httpStatus', 'deleteDBClusterEndpointResponse_httpStatus' - The response's http status code.
newDeleteDBClusterEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDBClusterEndpointResponse
newDeleteDBClusterEndpointResponse pHttpStatus_ =
  DeleteDBClusterEndpointResponse'
    { dbClusterEndpointResourceIdentifier =
        Prelude.Nothing,
      staticMembers = Prelude.Nothing,
      dbClusterIdentifier = Prelude.Nothing,
      excludedMembers = Prelude.Nothing,
      customEndpointType = Prelude.Nothing,
      status = Prelude.Nothing,
      endpointType = Prelude.Nothing,
      dbClusterEndpointIdentifier =
        Prelude.Nothing,
      dbClusterEndpointArn = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A unique system-generated identifier for an endpoint. It remains the
-- same for the whole life of the endpoint.
deleteDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier = Lens.lens (\DeleteDBClusterEndpointResponse' {dbClusterEndpointResourceIdentifier} -> dbClusterEndpointResourceIdentifier) (\s@DeleteDBClusterEndpointResponse' {} a -> s {dbClusterEndpointResourceIdentifier = a} :: DeleteDBClusterEndpointResponse)

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
deleteDBClusterEndpointResponse_staticMembers :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe [Prelude.Text])
deleteDBClusterEndpointResponse_staticMembers = Lens.lens (\DeleteDBClusterEndpointResponse' {staticMembers} -> staticMembers) (\s@DeleteDBClusterEndpointResponse' {} a -> s {staticMembers = a} :: DeleteDBClusterEndpointResponse) Prelude.. Lens.mapping Lens.coerced

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
deleteDBClusterEndpointResponse_dbClusterIdentifier :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_dbClusterIdentifier = Lens.lens (\DeleteDBClusterEndpointResponse' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@DeleteDBClusterEndpointResponse' {} a -> s {dbClusterIdentifier = a} :: DeleteDBClusterEndpointResponse)

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
deleteDBClusterEndpointResponse_excludedMembers :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe [Prelude.Text])
deleteDBClusterEndpointResponse_excludedMembers = Lens.lens (\DeleteDBClusterEndpointResponse' {excludedMembers} -> excludedMembers) (\s@DeleteDBClusterEndpointResponse' {} a -> s {excludedMembers = a} :: DeleteDBClusterEndpointResponse) Prelude.. Lens.mapping Lens.coerced

-- | The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
deleteDBClusterEndpointResponse_customEndpointType :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_customEndpointType = Lens.lens (\DeleteDBClusterEndpointResponse' {customEndpointType} -> customEndpointType) (\s@DeleteDBClusterEndpointResponse' {} a -> s {customEndpointType = a} :: DeleteDBClusterEndpointResponse)

-- | The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that cannot be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
deleteDBClusterEndpointResponse_status :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_status = Lens.lens (\DeleteDBClusterEndpointResponse' {status} -> status) (\s@DeleteDBClusterEndpointResponse' {} a -> s {status = a} :: DeleteDBClusterEndpointResponse)

-- | The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
deleteDBClusterEndpointResponse_endpointType :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_endpointType = Lens.lens (\DeleteDBClusterEndpointResponse' {endpointType} -> endpointType) (\s@DeleteDBClusterEndpointResponse' {} a -> s {endpointType = a} :: DeleteDBClusterEndpointResponse)

-- | The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
deleteDBClusterEndpointResponse_dbClusterEndpointIdentifier :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_dbClusterEndpointIdentifier = Lens.lens (\DeleteDBClusterEndpointResponse' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@DeleteDBClusterEndpointResponse' {} a -> s {dbClusterEndpointIdentifier = a} :: DeleteDBClusterEndpointResponse)

-- | The Amazon Resource Name (ARN) for the endpoint.
deleteDBClusterEndpointResponse_dbClusterEndpointArn :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_dbClusterEndpointArn = Lens.lens (\DeleteDBClusterEndpointResponse' {dbClusterEndpointArn} -> dbClusterEndpointArn) (\s@DeleteDBClusterEndpointResponse' {} a -> s {dbClusterEndpointArn = a} :: DeleteDBClusterEndpointResponse)

-- | The DNS address of the endpoint.
deleteDBClusterEndpointResponse_endpoint :: Lens.Lens' DeleteDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
deleteDBClusterEndpointResponse_endpoint = Lens.lens (\DeleteDBClusterEndpointResponse' {endpoint} -> endpoint) (\s@DeleteDBClusterEndpointResponse' {} a -> s {endpoint = a} :: DeleteDBClusterEndpointResponse)

-- | The response's http status code.
deleteDBClusterEndpointResponse_httpStatus :: Lens.Lens' DeleteDBClusterEndpointResponse Prelude.Int
deleteDBClusterEndpointResponse_httpStatus = Lens.lens (\DeleteDBClusterEndpointResponse' {httpStatus} -> httpStatus) (\s@DeleteDBClusterEndpointResponse' {} a -> s {httpStatus = a} :: DeleteDBClusterEndpointResponse)

instance
  Prelude.NFData
    DeleteDBClusterEndpointResponse
  where
  rnf DeleteDBClusterEndpointResponse' {..} =
    Prelude.rnf dbClusterEndpointResourceIdentifier
      `Prelude.seq` Prelude.rnf staticMembers
      `Prelude.seq` Prelude.rnf dbClusterIdentifier
      `Prelude.seq` Prelude.rnf excludedMembers
      `Prelude.seq` Prelude.rnf customEndpointType
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endpointType
      `Prelude.seq` Prelude.rnf dbClusterEndpointIdentifier
      `Prelude.seq` Prelude.rnf dbClusterEndpointArn
      `Prelude.seq` Prelude.rnf endpoint
      `Prelude.seq` Prelude.rnf httpStatus

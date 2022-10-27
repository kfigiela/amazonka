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
-- Module      : Amazonka.Neptune.ModifyDBClusterEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the properties of an endpoint in an Amazon Neptune DB cluster.
module Amazonka.Neptune.ModifyDBClusterEndpoint
  ( -- * Creating a Request
    ModifyDBClusterEndpoint (..),
    newModifyDBClusterEndpoint,

    -- * Request Lenses
    modifyDBClusterEndpoint_staticMembers,
    modifyDBClusterEndpoint_excludedMembers,
    modifyDBClusterEndpoint_endpointType,
    modifyDBClusterEndpoint_dbClusterEndpointIdentifier,

    -- * Destructuring the Response
    ModifyDBClusterEndpointResponse (..),
    newModifyDBClusterEndpointResponse,

    -- * Response Lenses
    modifyDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier,
    modifyDBClusterEndpointResponse_staticMembers,
    modifyDBClusterEndpointResponse_dbClusterIdentifier,
    modifyDBClusterEndpointResponse_excludedMembers,
    modifyDBClusterEndpointResponse_customEndpointType,
    modifyDBClusterEndpointResponse_status,
    modifyDBClusterEndpointResponse_endpointType,
    modifyDBClusterEndpointResponse_dbClusterEndpointIdentifier,
    modifyDBClusterEndpointResponse_dbClusterEndpointArn,
    modifyDBClusterEndpointResponse_endpoint,
    modifyDBClusterEndpointResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Neptune.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newModifyDBClusterEndpoint' smart constructor.
data ModifyDBClusterEndpoint = ModifyDBClusterEndpoint'
  { -- | List of DB instance identifiers that are part of the custom endpoint
    -- group.
    staticMembers :: Prelude.Maybe [Prelude.Text],
    -- | List of DB instance identifiers that aren\'t part of the custom endpoint
    -- group. All other eligible instances are reachable through the custom
    -- endpoint. Only relevant if the list of static members is empty.
    excludedMembers :: Prelude.Maybe [Prelude.Text],
    -- | The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
    endpointType :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the endpoint to modify. This parameter is stored as a
    -- lowercase string.
    dbClusterEndpointIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyDBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'staticMembers', 'modifyDBClusterEndpoint_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
--
-- 'excludedMembers', 'modifyDBClusterEndpoint_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
--
-- 'endpointType', 'modifyDBClusterEndpoint_endpointType' - The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
--
-- 'dbClusterEndpointIdentifier', 'modifyDBClusterEndpoint_dbClusterEndpointIdentifier' - The identifier of the endpoint to modify. This parameter is stored as a
-- lowercase string.
newModifyDBClusterEndpoint ::
  -- | 'dbClusterEndpointIdentifier'
  Prelude.Text ->
  ModifyDBClusterEndpoint
newModifyDBClusterEndpoint
  pDBClusterEndpointIdentifier_ =
    ModifyDBClusterEndpoint'
      { staticMembers =
          Prelude.Nothing,
        excludedMembers = Prelude.Nothing,
        endpointType = Prelude.Nothing,
        dbClusterEndpointIdentifier =
          pDBClusterEndpointIdentifier_
      }

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
modifyDBClusterEndpoint_staticMembers :: Lens.Lens' ModifyDBClusterEndpoint (Prelude.Maybe [Prelude.Text])
modifyDBClusterEndpoint_staticMembers = Lens.lens (\ModifyDBClusterEndpoint' {staticMembers} -> staticMembers) (\s@ModifyDBClusterEndpoint' {} a -> s {staticMembers = a} :: ModifyDBClusterEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
modifyDBClusterEndpoint_excludedMembers :: Lens.Lens' ModifyDBClusterEndpoint (Prelude.Maybe [Prelude.Text])
modifyDBClusterEndpoint_excludedMembers = Lens.lens (\ModifyDBClusterEndpoint' {excludedMembers} -> excludedMembers) (\s@ModifyDBClusterEndpoint' {} a -> s {excludedMembers = a} :: ModifyDBClusterEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
modifyDBClusterEndpoint_endpointType :: Lens.Lens' ModifyDBClusterEndpoint (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpoint_endpointType = Lens.lens (\ModifyDBClusterEndpoint' {endpointType} -> endpointType) (\s@ModifyDBClusterEndpoint' {} a -> s {endpointType = a} :: ModifyDBClusterEndpoint)

-- | The identifier of the endpoint to modify. This parameter is stored as a
-- lowercase string.
modifyDBClusterEndpoint_dbClusterEndpointIdentifier :: Lens.Lens' ModifyDBClusterEndpoint Prelude.Text
modifyDBClusterEndpoint_dbClusterEndpointIdentifier = Lens.lens (\ModifyDBClusterEndpoint' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@ModifyDBClusterEndpoint' {} a -> s {dbClusterEndpointIdentifier = a} :: ModifyDBClusterEndpoint)

instance Core.AWSRequest ModifyDBClusterEndpoint where
  type
    AWSResponse ModifyDBClusterEndpoint =
      ModifyDBClusterEndpointResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ModifyDBClusterEndpointResult"
      ( \s h x ->
          ModifyDBClusterEndpointResponse'
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

instance Prelude.Hashable ModifyDBClusterEndpoint where
  hashWithSalt _salt ModifyDBClusterEndpoint' {..} =
    _salt `Prelude.hashWithSalt` staticMembers
      `Prelude.hashWithSalt` excludedMembers
      `Prelude.hashWithSalt` endpointType
      `Prelude.hashWithSalt` dbClusterEndpointIdentifier

instance Prelude.NFData ModifyDBClusterEndpoint where
  rnf ModifyDBClusterEndpoint' {..} =
    Prelude.rnf staticMembers
      `Prelude.seq` Prelude.rnf excludedMembers
      `Prelude.seq` Prelude.rnf endpointType
      `Prelude.seq` Prelude.rnf dbClusterEndpointIdentifier

instance Core.ToHeaders ModifyDBClusterEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyDBClusterEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyDBClusterEndpoint where
  toQuery ModifyDBClusterEndpoint' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyDBClusterEndpoint" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "StaticMembers"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> staticMembers
            ),
        "ExcludedMembers"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> excludedMembers
            ),
        "EndpointType" Core.=: endpointType,
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
-- /See:/ 'newModifyDBClusterEndpointResponse' smart constructor.
data ModifyDBClusterEndpointResponse = ModifyDBClusterEndpointResponse'
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
-- Create a value of 'ModifyDBClusterEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterEndpointResourceIdentifier', 'modifyDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier' - A unique system-generated identifier for an endpoint. It remains the
-- same for the whole life of the endpoint.
--
-- 'staticMembers', 'modifyDBClusterEndpointResponse_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
--
-- 'dbClusterIdentifier', 'modifyDBClusterEndpointResponse_dbClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'excludedMembers', 'modifyDBClusterEndpointResponse_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
--
-- 'customEndpointType', 'modifyDBClusterEndpointResponse_customEndpointType' - The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
--
-- 'status', 'modifyDBClusterEndpointResponse_status' - The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that cannot be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
--
-- 'endpointType', 'modifyDBClusterEndpointResponse_endpointType' - The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
--
-- 'dbClusterEndpointIdentifier', 'modifyDBClusterEndpointResponse_dbClusterEndpointIdentifier' - The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
--
-- 'dbClusterEndpointArn', 'modifyDBClusterEndpointResponse_dbClusterEndpointArn' - The Amazon Resource Name (ARN) for the endpoint.
--
-- 'endpoint', 'modifyDBClusterEndpointResponse_endpoint' - The DNS address of the endpoint.
--
-- 'httpStatus', 'modifyDBClusterEndpointResponse_httpStatus' - The response's http status code.
newModifyDBClusterEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyDBClusterEndpointResponse
newModifyDBClusterEndpointResponse pHttpStatus_ =
  ModifyDBClusterEndpointResponse'
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
modifyDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_dbClusterEndpointResourceIdentifier = Lens.lens (\ModifyDBClusterEndpointResponse' {dbClusterEndpointResourceIdentifier} -> dbClusterEndpointResourceIdentifier) (\s@ModifyDBClusterEndpointResponse' {} a -> s {dbClusterEndpointResourceIdentifier = a} :: ModifyDBClusterEndpointResponse)

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
modifyDBClusterEndpointResponse_staticMembers :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe [Prelude.Text])
modifyDBClusterEndpointResponse_staticMembers = Lens.lens (\ModifyDBClusterEndpointResponse' {staticMembers} -> staticMembers) (\s@ModifyDBClusterEndpointResponse' {} a -> s {staticMembers = a} :: ModifyDBClusterEndpointResponse) Prelude.. Lens.mapping Lens.coerced

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
modifyDBClusterEndpointResponse_dbClusterIdentifier :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_dbClusterIdentifier = Lens.lens (\ModifyDBClusterEndpointResponse' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@ModifyDBClusterEndpointResponse' {} a -> s {dbClusterIdentifier = a} :: ModifyDBClusterEndpointResponse)

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
modifyDBClusterEndpointResponse_excludedMembers :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe [Prelude.Text])
modifyDBClusterEndpointResponse_excludedMembers = Lens.lens (\ModifyDBClusterEndpointResponse' {excludedMembers} -> excludedMembers) (\s@ModifyDBClusterEndpointResponse' {} a -> s {excludedMembers = a} :: ModifyDBClusterEndpointResponse) Prelude.. Lens.mapping Lens.coerced

-- | The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
modifyDBClusterEndpointResponse_customEndpointType :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_customEndpointType = Lens.lens (\ModifyDBClusterEndpointResponse' {customEndpointType} -> customEndpointType) (\s@ModifyDBClusterEndpointResponse' {} a -> s {customEndpointType = a} :: ModifyDBClusterEndpointResponse)

-- | The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that cannot be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
modifyDBClusterEndpointResponse_status :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_status = Lens.lens (\ModifyDBClusterEndpointResponse' {status} -> status) (\s@ModifyDBClusterEndpointResponse' {} a -> s {status = a} :: ModifyDBClusterEndpointResponse)

-- | The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
modifyDBClusterEndpointResponse_endpointType :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_endpointType = Lens.lens (\ModifyDBClusterEndpointResponse' {endpointType} -> endpointType) (\s@ModifyDBClusterEndpointResponse' {} a -> s {endpointType = a} :: ModifyDBClusterEndpointResponse)

-- | The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
modifyDBClusterEndpointResponse_dbClusterEndpointIdentifier :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_dbClusterEndpointIdentifier = Lens.lens (\ModifyDBClusterEndpointResponse' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@ModifyDBClusterEndpointResponse' {} a -> s {dbClusterEndpointIdentifier = a} :: ModifyDBClusterEndpointResponse)

-- | The Amazon Resource Name (ARN) for the endpoint.
modifyDBClusterEndpointResponse_dbClusterEndpointArn :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_dbClusterEndpointArn = Lens.lens (\ModifyDBClusterEndpointResponse' {dbClusterEndpointArn} -> dbClusterEndpointArn) (\s@ModifyDBClusterEndpointResponse' {} a -> s {dbClusterEndpointArn = a} :: ModifyDBClusterEndpointResponse)

-- | The DNS address of the endpoint.
modifyDBClusterEndpointResponse_endpoint :: Lens.Lens' ModifyDBClusterEndpointResponse (Prelude.Maybe Prelude.Text)
modifyDBClusterEndpointResponse_endpoint = Lens.lens (\ModifyDBClusterEndpointResponse' {endpoint} -> endpoint) (\s@ModifyDBClusterEndpointResponse' {} a -> s {endpoint = a} :: ModifyDBClusterEndpointResponse)

-- | The response's http status code.
modifyDBClusterEndpointResponse_httpStatus :: Lens.Lens' ModifyDBClusterEndpointResponse Prelude.Int
modifyDBClusterEndpointResponse_httpStatus = Lens.lens (\ModifyDBClusterEndpointResponse' {httpStatus} -> httpStatus) (\s@ModifyDBClusterEndpointResponse' {} a -> s {httpStatus = a} :: ModifyDBClusterEndpointResponse)

instance
  Prelude.NFData
    ModifyDBClusterEndpointResponse
  where
  rnf ModifyDBClusterEndpointResponse' {..} =
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

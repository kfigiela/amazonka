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
-- Module      : Amazonka.RDS.CreateDBClusterEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom endpoint and associates it with an Amazon Aurora DB
-- cluster.
--
-- This action applies only to Aurora DB clusters.
module Amazonka.RDS.CreateDBClusterEndpoint
  ( -- * Creating a Request
    CreateDBClusterEndpoint (..),
    newCreateDBClusterEndpoint,

    -- * Request Lenses
    createDBClusterEndpoint_tags,
    createDBClusterEndpoint_staticMembers,
    createDBClusterEndpoint_excludedMembers,
    createDBClusterEndpoint_dbClusterIdentifier,
    createDBClusterEndpoint_dbClusterEndpointIdentifier,
    createDBClusterEndpoint_endpointType,

    -- * Destructuring the Response
    DBClusterEndpoint (..),
    newDBClusterEndpoint,

    -- * Response Lenses
    dbClusterEndpoint_dbClusterEndpointResourceIdentifier,
    dbClusterEndpoint_staticMembers,
    dbClusterEndpoint_dbClusterIdentifier,
    dbClusterEndpoint_excludedMembers,
    dbClusterEndpoint_customEndpointType,
    dbClusterEndpoint_status,
    dbClusterEndpoint_endpointType,
    dbClusterEndpoint_dbClusterEndpointIdentifier,
    dbClusterEndpoint_dbClusterEndpointArn,
    dbClusterEndpoint_endpoint,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDBClusterEndpoint' smart constructor.
data CreateDBClusterEndpoint = CreateDBClusterEndpoint'
  { -- | The tags to be assigned to the Amazon RDS resource.
    tags :: Prelude.Maybe [Tag],
    -- | List of DB instance identifiers that are part of the custom endpoint
    -- group.
    staticMembers :: Prelude.Maybe [Prelude.Text],
    -- | List of DB instance identifiers that aren\'t part of the custom endpoint
    -- group. All other eligible instances are reachable through the custom
    -- endpoint. This parameter is relevant only if the list of static members
    -- is empty.
    excludedMembers :: Prelude.Maybe [Prelude.Text],
    -- | The DB cluster identifier of the DB cluster associated with the
    -- endpoint. This parameter is stored as a lowercase string.
    dbClusterIdentifier :: Prelude.Text,
    -- | The identifier to use for the new endpoint. This parameter is stored as
    -- a lowercase string.
    dbClusterEndpointIdentifier :: Prelude.Text,
    -- | The type of the endpoint, one of: @READER@, @WRITER@, @ANY@.
    endpointType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBClusterEndpoint_tags' - The tags to be assigned to the Amazon RDS resource.
--
-- 'staticMembers', 'createDBClusterEndpoint_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
--
-- 'excludedMembers', 'createDBClusterEndpoint_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. This parameter is relevant only if the list of static members
-- is empty.
--
-- 'dbClusterIdentifier', 'createDBClusterEndpoint_dbClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'dbClusterEndpointIdentifier', 'createDBClusterEndpoint_dbClusterEndpointIdentifier' - The identifier to use for the new endpoint. This parameter is stored as
-- a lowercase string.
--
-- 'endpointType', 'createDBClusterEndpoint_endpointType' - The type of the endpoint, one of: @READER@, @WRITER@, @ANY@.
newCreateDBClusterEndpoint ::
  -- | 'dbClusterIdentifier'
  Prelude.Text ->
  -- | 'dbClusterEndpointIdentifier'
  Prelude.Text ->
  -- | 'endpointType'
  Prelude.Text ->
  CreateDBClusterEndpoint
newCreateDBClusterEndpoint
  pDBClusterIdentifier_
  pDBClusterEndpointIdentifier_
  pEndpointType_ =
    CreateDBClusterEndpoint'
      { tags = Prelude.Nothing,
        staticMembers = Prelude.Nothing,
        excludedMembers = Prelude.Nothing,
        dbClusterIdentifier = pDBClusterIdentifier_,
        dbClusterEndpointIdentifier =
          pDBClusterEndpointIdentifier_,
        endpointType = pEndpointType_
      }

-- | The tags to be assigned to the Amazon RDS resource.
createDBClusterEndpoint_tags :: Lens.Lens' CreateDBClusterEndpoint (Prelude.Maybe [Tag])
createDBClusterEndpoint_tags = Lens.lens (\CreateDBClusterEndpoint' {tags} -> tags) (\s@CreateDBClusterEndpoint' {} a -> s {tags = a} :: CreateDBClusterEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
createDBClusterEndpoint_staticMembers :: Lens.Lens' CreateDBClusterEndpoint (Prelude.Maybe [Prelude.Text])
createDBClusterEndpoint_staticMembers = Lens.lens (\CreateDBClusterEndpoint' {staticMembers} -> staticMembers) (\s@CreateDBClusterEndpoint' {} a -> s {staticMembers = a} :: CreateDBClusterEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. This parameter is relevant only if the list of static members
-- is empty.
createDBClusterEndpoint_excludedMembers :: Lens.Lens' CreateDBClusterEndpoint (Prelude.Maybe [Prelude.Text])
createDBClusterEndpoint_excludedMembers = Lens.lens (\CreateDBClusterEndpoint' {excludedMembers} -> excludedMembers) (\s@CreateDBClusterEndpoint' {} a -> s {excludedMembers = a} :: CreateDBClusterEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
createDBClusterEndpoint_dbClusterIdentifier :: Lens.Lens' CreateDBClusterEndpoint Prelude.Text
createDBClusterEndpoint_dbClusterIdentifier = Lens.lens (\CreateDBClusterEndpoint' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@CreateDBClusterEndpoint' {} a -> s {dbClusterIdentifier = a} :: CreateDBClusterEndpoint)

-- | The identifier to use for the new endpoint. This parameter is stored as
-- a lowercase string.
createDBClusterEndpoint_dbClusterEndpointIdentifier :: Lens.Lens' CreateDBClusterEndpoint Prelude.Text
createDBClusterEndpoint_dbClusterEndpointIdentifier = Lens.lens (\CreateDBClusterEndpoint' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@CreateDBClusterEndpoint' {} a -> s {dbClusterEndpointIdentifier = a} :: CreateDBClusterEndpoint)

-- | The type of the endpoint, one of: @READER@, @WRITER@, @ANY@.
createDBClusterEndpoint_endpointType :: Lens.Lens' CreateDBClusterEndpoint Prelude.Text
createDBClusterEndpoint_endpointType = Lens.lens (\CreateDBClusterEndpoint' {endpointType} -> endpointType) (\s@CreateDBClusterEndpoint' {} a -> s {endpointType = a} :: CreateDBClusterEndpoint)

instance Core.AWSRequest CreateDBClusterEndpoint where
  type
    AWSResponse CreateDBClusterEndpoint =
      DBClusterEndpoint
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateDBClusterEndpointResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable CreateDBClusterEndpoint where
  hashWithSalt _salt CreateDBClusterEndpoint' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` staticMembers
      `Prelude.hashWithSalt` excludedMembers
      `Prelude.hashWithSalt` dbClusterIdentifier
      `Prelude.hashWithSalt` dbClusterEndpointIdentifier
      `Prelude.hashWithSalt` endpointType

instance Prelude.NFData CreateDBClusterEndpoint where
  rnf CreateDBClusterEndpoint' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf staticMembers
      `Prelude.seq` Prelude.rnf excludedMembers
      `Prelude.seq` Prelude.rnf dbClusterIdentifier
      `Prelude.seq` Prelude.rnf dbClusterEndpointIdentifier
      `Prelude.seq` Prelude.rnf endpointType

instance Core.ToHeaders CreateDBClusterEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateDBClusterEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDBClusterEndpoint where
  toQuery CreateDBClusterEndpoint' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateDBClusterEndpoint" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
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
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "DBClusterEndpointIdentifier"
          Core.=: dbClusterEndpointIdentifier,
        "EndpointType" Core.=: endpointType
      ]

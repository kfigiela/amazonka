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
-- Module      : Amazonka.Redshift.CreateEndpointAccess
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Redshift-managed VPC endpoint.
module Amazonka.Redshift.CreateEndpointAccess
  ( -- * Creating a Request
    CreateEndpointAccess (..),
    newCreateEndpointAccess,

    -- * Request Lenses
    createEndpointAccess_clusterIdentifier,
    createEndpointAccess_vpcSecurityGroupIds,
    createEndpointAccess_resourceOwner,
    createEndpointAccess_endpointName,
    createEndpointAccess_subnetGroupName,

    -- * Destructuring the Response
    EndpointAccess (..),
    newEndpointAccess,

    -- * Response Lenses
    endpointAccess_port,
    endpointAccess_subnetGroupName,
    endpointAccess_clusterIdentifier,
    endpointAccess_endpointName,
    endpointAccess_resourceOwner,
    endpointAccess_address,
    endpointAccess_endpointStatus,
    endpointAccess_vpcEndpoint,
    endpointAccess_endpointCreateTime,
    endpointAccess_vpcSecurityGroups,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateEndpointAccess' smart constructor.
data CreateEndpointAccess = CreateEndpointAccess'
  { -- | The cluster identifier of the cluster to access.
    clusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The security group that defines the ports, protocols, and sources for
    -- inbound traffic that you are authorizing into your endpoint.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Web Services account ID of the owner of the cluster. This is
    -- only required if the cluster is in another Amazon Web Services account.
    resourceOwner :: Prelude.Maybe Prelude.Text,
    -- | The Redshift-managed VPC endpoint name.
    --
    -- An endpoint name must contain 1-30 characters. Valid characters are A-Z,
    -- a-z, 0-9, and hyphen(-). The first character must be a letter. The name
    -- can\'t contain two consecutive hyphens or end with a hyphen.
    endpointName :: Prelude.Text,
    -- | The subnet group from which Amazon Redshift chooses the subnet to deploy
    -- the endpoint.
    subnetGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEndpointAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterIdentifier', 'createEndpointAccess_clusterIdentifier' - The cluster identifier of the cluster to access.
--
-- 'vpcSecurityGroupIds', 'createEndpointAccess_vpcSecurityGroupIds' - The security group that defines the ports, protocols, and sources for
-- inbound traffic that you are authorizing into your endpoint.
--
-- 'resourceOwner', 'createEndpointAccess_resourceOwner' - The Amazon Web Services account ID of the owner of the cluster. This is
-- only required if the cluster is in another Amazon Web Services account.
--
-- 'endpointName', 'createEndpointAccess_endpointName' - The Redshift-managed VPC endpoint name.
--
-- An endpoint name must contain 1-30 characters. Valid characters are A-Z,
-- a-z, 0-9, and hyphen(-). The first character must be a letter. The name
-- can\'t contain two consecutive hyphens or end with a hyphen.
--
-- 'subnetGroupName', 'createEndpointAccess_subnetGroupName' - The subnet group from which Amazon Redshift chooses the subnet to deploy
-- the endpoint.
newCreateEndpointAccess ::
  -- | 'endpointName'
  Prelude.Text ->
  -- | 'subnetGroupName'
  Prelude.Text ->
  CreateEndpointAccess
newCreateEndpointAccess
  pEndpointName_
  pSubnetGroupName_ =
    CreateEndpointAccess'
      { clusterIdentifier =
          Prelude.Nothing,
        vpcSecurityGroupIds = Prelude.Nothing,
        resourceOwner = Prelude.Nothing,
        endpointName = pEndpointName_,
        subnetGroupName = pSubnetGroupName_
      }

-- | The cluster identifier of the cluster to access.
createEndpointAccess_clusterIdentifier :: Lens.Lens' CreateEndpointAccess (Prelude.Maybe Prelude.Text)
createEndpointAccess_clusterIdentifier = Lens.lens (\CreateEndpointAccess' {clusterIdentifier} -> clusterIdentifier) (\s@CreateEndpointAccess' {} a -> s {clusterIdentifier = a} :: CreateEndpointAccess)

-- | The security group that defines the ports, protocols, and sources for
-- inbound traffic that you are authorizing into your endpoint.
createEndpointAccess_vpcSecurityGroupIds :: Lens.Lens' CreateEndpointAccess (Prelude.Maybe [Prelude.Text])
createEndpointAccess_vpcSecurityGroupIds = Lens.lens (\CreateEndpointAccess' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@CreateEndpointAccess' {} a -> s {vpcSecurityGroupIds = a} :: CreateEndpointAccess) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services account ID of the owner of the cluster. This is
-- only required if the cluster is in another Amazon Web Services account.
createEndpointAccess_resourceOwner :: Lens.Lens' CreateEndpointAccess (Prelude.Maybe Prelude.Text)
createEndpointAccess_resourceOwner = Lens.lens (\CreateEndpointAccess' {resourceOwner} -> resourceOwner) (\s@CreateEndpointAccess' {} a -> s {resourceOwner = a} :: CreateEndpointAccess)

-- | The Redshift-managed VPC endpoint name.
--
-- An endpoint name must contain 1-30 characters. Valid characters are A-Z,
-- a-z, 0-9, and hyphen(-). The first character must be a letter. The name
-- can\'t contain two consecutive hyphens or end with a hyphen.
createEndpointAccess_endpointName :: Lens.Lens' CreateEndpointAccess Prelude.Text
createEndpointAccess_endpointName = Lens.lens (\CreateEndpointAccess' {endpointName} -> endpointName) (\s@CreateEndpointAccess' {} a -> s {endpointName = a} :: CreateEndpointAccess)

-- | The subnet group from which Amazon Redshift chooses the subnet to deploy
-- the endpoint.
createEndpointAccess_subnetGroupName :: Lens.Lens' CreateEndpointAccess Prelude.Text
createEndpointAccess_subnetGroupName = Lens.lens (\CreateEndpointAccess' {subnetGroupName} -> subnetGroupName) (\s@CreateEndpointAccess' {} a -> s {subnetGroupName = a} :: CreateEndpointAccess)

instance Core.AWSRequest CreateEndpointAccess where
  type
    AWSResponse CreateEndpointAccess =
      EndpointAccess
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateEndpointAccessResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable CreateEndpointAccess where
  hashWithSalt _salt CreateEndpointAccess' {..} =
    _salt `Prelude.hashWithSalt` clusterIdentifier
      `Prelude.hashWithSalt` vpcSecurityGroupIds
      `Prelude.hashWithSalt` resourceOwner
      `Prelude.hashWithSalt` endpointName
      `Prelude.hashWithSalt` subnetGroupName

instance Prelude.NFData CreateEndpointAccess where
  rnf CreateEndpointAccess' {..} =
    Prelude.rnf clusterIdentifier
      `Prelude.seq` Prelude.rnf vpcSecurityGroupIds
      `Prelude.seq` Prelude.rnf resourceOwner
      `Prelude.seq` Prelude.rnf endpointName
      `Prelude.seq` Prelude.rnf subnetGroupName

instance Core.ToHeaders CreateEndpointAccess where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateEndpointAccess where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateEndpointAccess where
  toQuery CreateEndpointAccess' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateEndpointAccess" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "ClusterIdentifier" Core.=: clusterIdentifier,
        "VpcSecurityGroupIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupIds
            ),
        "ResourceOwner" Core.=: resourceOwner,
        "EndpointName" Core.=: endpointName,
        "SubnetGroupName" Core.=: subnetGroupName
      ]

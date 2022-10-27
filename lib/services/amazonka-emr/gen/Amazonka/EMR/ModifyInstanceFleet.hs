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
-- Module      : Amazonka.EMR.ModifyInstanceFleet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target On-Demand and target Spot capacities for the
-- instance fleet with the specified InstanceFleetID within the cluster
-- specified using ClusterID. The call either succeeds or fails atomically.
--
-- The instance fleet configuration is available only in Amazon EMR
-- versions 4.8.0 and later, excluding 5.0.x versions.
module Amazonka.EMR.ModifyInstanceFleet
  ( -- * Creating a Request
    ModifyInstanceFleet (..),
    newModifyInstanceFleet,

    -- * Request Lenses
    modifyInstanceFleet_clusterId,
    modifyInstanceFleet_instanceFleet,

    -- * Destructuring the Response
    ModifyInstanceFleetResponse (..),
    newModifyInstanceFleetResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newModifyInstanceFleet' smart constructor.
data ModifyInstanceFleet = ModifyInstanceFleet'
  { -- | The unique identifier of the cluster.
    clusterId :: Prelude.Text,
    -- | The configuration parameters of the instance fleet.
    instanceFleet :: InstanceFleetModifyConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyInstanceFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterId', 'modifyInstanceFleet_clusterId' - The unique identifier of the cluster.
--
-- 'instanceFleet', 'modifyInstanceFleet_instanceFleet' - The configuration parameters of the instance fleet.
newModifyInstanceFleet ::
  -- | 'clusterId'
  Prelude.Text ->
  -- | 'instanceFleet'
  InstanceFleetModifyConfig ->
  ModifyInstanceFleet
newModifyInstanceFleet pClusterId_ pInstanceFleet_ =
  ModifyInstanceFleet'
    { clusterId = pClusterId_,
      instanceFleet = pInstanceFleet_
    }

-- | The unique identifier of the cluster.
modifyInstanceFleet_clusterId :: Lens.Lens' ModifyInstanceFleet Prelude.Text
modifyInstanceFleet_clusterId = Lens.lens (\ModifyInstanceFleet' {clusterId} -> clusterId) (\s@ModifyInstanceFleet' {} a -> s {clusterId = a} :: ModifyInstanceFleet)

-- | The configuration parameters of the instance fleet.
modifyInstanceFleet_instanceFleet :: Lens.Lens' ModifyInstanceFleet InstanceFleetModifyConfig
modifyInstanceFleet_instanceFleet = Lens.lens (\ModifyInstanceFleet' {instanceFleet} -> instanceFleet) (\s@ModifyInstanceFleet' {} a -> s {instanceFleet = a} :: ModifyInstanceFleet)

instance Core.AWSRequest ModifyInstanceFleet where
  type
    AWSResponse ModifyInstanceFleet =
      ModifyInstanceFleetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull ModifyInstanceFleetResponse'

instance Prelude.Hashable ModifyInstanceFleet where
  hashWithSalt _salt ModifyInstanceFleet' {..} =
    _salt `Prelude.hashWithSalt` clusterId
      `Prelude.hashWithSalt` instanceFleet

instance Prelude.NFData ModifyInstanceFleet where
  rnf ModifyInstanceFleet' {..} =
    Prelude.rnf clusterId
      `Prelude.seq` Prelude.rnf instanceFleet

instance Core.ToHeaders ModifyInstanceFleet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ElasticMapReduce.ModifyInstanceFleet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ModifyInstanceFleet where
  toJSON ModifyInstanceFleet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ClusterId" Core..= clusterId),
            Prelude.Just
              ("InstanceFleet" Core..= instanceFleet)
          ]
      )

instance Core.ToPath ModifyInstanceFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyInstanceFleet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newModifyInstanceFleetResponse' smart constructor.
data ModifyInstanceFleetResponse = ModifyInstanceFleetResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyInstanceFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newModifyInstanceFleetResponse ::
  ModifyInstanceFleetResponse
newModifyInstanceFleetResponse =
  ModifyInstanceFleetResponse'

instance Prelude.NFData ModifyInstanceFleetResponse where
  rnf _ = ()

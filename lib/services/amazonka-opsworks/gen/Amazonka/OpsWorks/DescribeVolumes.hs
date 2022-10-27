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
-- Module      : Amazonka.OpsWorks.DescribeVolumes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an instance\'s Amazon EBS volumes.
--
-- This call accepts only one resource-identifying parameter.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Show, Deploy, or Manage permissions level for the stack, or an attached
-- policy that explicitly grants permissions. For more information about
-- user permissions, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
module Amazonka.OpsWorks.DescribeVolumes
  ( -- * Creating a Request
    DescribeVolumes (..),
    newDescribeVolumes,

    -- * Request Lenses
    describeVolumes_stackId,
    describeVolumes_volumeIds,
    describeVolumes_raidArrayId,
    describeVolumes_instanceId,

    -- * Destructuring the Response
    DescribeVolumesResponse (..),
    newDescribeVolumesResponse,

    -- * Response Lenses
    describeVolumesResponse_volumes,
    describeVolumesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpsWorks.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeVolumes' smart constructor.
data DescribeVolumes = DescribeVolumes'
  { -- | A stack ID. The action describes the stack\'s registered Amazon EBS
    -- volumes.
    stackId :: Prelude.Maybe Prelude.Text,
    -- | Am array of volume IDs. If you use this parameter, @DescribeVolumes@
    -- returns descriptions of the specified volumes. Otherwise, it returns a
    -- description of every volume.
    volumeIds :: Prelude.Maybe [Prelude.Text],
    -- | The RAID array ID. If you use this parameter, @DescribeVolumes@ returns
    -- descriptions of the volumes associated with the specified RAID array.
    raidArrayId :: Prelude.Maybe Prelude.Text,
    -- | The instance ID. If you use this parameter, @DescribeVolumes@ returns
    -- descriptions of the volumes associated with the specified instance.
    instanceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVolumes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackId', 'describeVolumes_stackId' - A stack ID. The action describes the stack\'s registered Amazon EBS
-- volumes.
--
-- 'volumeIds', 'describeVolumes_volumeIds' - Am array of volume IDs. If you use this parameter, @DescribeVolumes@
-- returns descriptions of the specified volumes. Otherwise, it returns a
-- description of every volume.
--
-- 'raidArrayId', 'describeVolumes_raidArrayId' - The RAID array ID. If you use this parameter, @DescribeVolumes@ returns
-- descriptions of the volumes associated with the specified RAID array.
--
-- 'instanceId', 'describeVolumes_instanceId' - The instance ID. If you use this parameter, @DescribeVolumes@ returns
-- descriptions of the volumes associated with the specified instance.
newDescribeVolumes ::
  DescribeVolumes
newDescribeVolumes =
  DescribeVolumes'
    { stackId = Prelude.Nothing,
      volumeIds = Prelude.Nothing,
      raidArrayId = Prelude.Nothing,
      instanceId = Prelude.Nothing
    }

-- | A stack ID. The action describes the stack\'s registered Amazon EBS
-- volumes.
describeVolumes_stackId :: Lens.Lens' DescribeVolumes (Prelude.Maybe Prelude.Text)
describeVolumes_stackId = Lens.lens (\DescribeVolumes' {stackId} -> stackId) (\s@DescribeVolumes' {} a -> s {stackId = a} :: DescribeVolumes)

-- | Am array of volume IDs. If you use this parameter, @DescribeVolumes@
-- returns descriptions of the specified volumes. Otherwise, it returns a
-- description of every volume.
describeVolumes_volumeIds :: Lens.Lens' DescribeVolumes (Prelude.Maybe [Prelude.Text])
describeVolumes_volumeIds = Lens.lens (\DescribeVolumes' {volumeIds} -> volumeIds) (\s@DescribeVolumes' {} a -> s {volumeIds = a} :: DescribeVolumes) Prelude.. Lens.mapping Lens.coerced

-- | The RAID array ID. If you use this parameter, @DescribeVolumes@ returns
-- descriptions of the volumes associated with the specified RAID array.
describeVolumes_raidArrayId :: Lens.Lens' DescribeVolumes (Prelude.Maybe Prelude.Text)
describeVolumes_raidArrayId = Lens.lens (\DescribeVolumes' {raidArrayId} -> raidArrayId) (\s@DescribeVolumes' {} a -> s {raidArrayId = a} :: DescribeVolumes)

-- | The instance ID. If you use this parameter, @DescribeVolumes@ returns
-- descriptions of the volumes associated with the specified instance.
describeVolumes_instanceId :: Lens.Lens' DescribeVolumes (Prelude.Maybe Prelude.Text)
describeVolumes_instanceId = Lens.lens (\DescribeVolumes' {instanceId} -> instanceId) (\s@DescribeVolumes' {} a -> s {instanceId = a} :: DescribeVolumes)

instance Core.AWSRequest DescribeVolumes where
  type
    AWSResponse DescribeVolumes =
      DescribeVolumesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVolumesResponse'
            Prelude.<$> (x Core..?> "Volumes" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeVolumes where
  hashWithSalt _salt DescribeVolumes' {..} =
    _salt `Prelude.hashWithSalt` stackId
      `Prelude.hashWithSalt` volumeIds
      `Prelude.hashWithSalt` raidArrayId
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData DescribeVolumes where
  rnf DescribeVolumes' {..} =
    Prelude.rnf stackId
      `Prelude.seq` Prelude.rnf volumeIds
      `Prelude.seq` Prelude.rnf raidArrayId
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders DescribeVolumes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorks_20130218.DescribeVolumes" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeVolumes where
  toJSON DescribeVolumes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StackId" Core..=) Prelude.<$> stackId,
            ("VolumeIds" Core..=) Prelude.<$> volumeIds,
            ("RaidArrayId" Core..=) Prelude.<$> raidArrayId,
            ("InstanceId" Core..=) Prelude.<$> instanceId
          ]
      )

instance Core.ToPath DescribeVolumes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeVolumes where
  toQuery = Prelude.const Prelude.mempty

-- | Contains the response to a @DescribeVolumes@ request.
--
-- /See:/ 'newDescribeVolumesResponse' smart constructor.
data DescribeVolumesResponse = DescribeVolumesResponse'
  { -- | An array of volume IDs.
    volumes :: Prelude.Maybe [Volume],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVolumesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'volumes', 'describeVolumesResponse_volumes' - An array of volume IDs.
--
-- 'httpStatus', 'describeVolumesResponse_httpStatus' - The response's http status code.
newDescribeVolumesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVolumesResponse
newDescribeVolumesResponse pHttpStatus_ =
  DescribeVolumesResponse'
    { volumes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of volume IDs.
describeVolumesResponse_volumes :: Lens.Lens' DescribeVolumesResponse (Prelude.Maybe [Volume])
describeVolumesResponse_volumes = Lens.lens (\DescribeVolumesResponse' {volumes} -> volumes) (\s@DescribeVolumesResponse' {} a -> s {volumes = a} :: DescribeVolumesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVolumesResponse_httpStatus :: Lens.Lens' DescribeVolumesResponse Prelude.Int
describeVolumesResponse_httpStatus = Lens.lens (\DescribeVolumesResponse' {httpStatus} -> httpStatus) (\s@DescribeVolumesResponse' {} a -> s {httpStatus = a} :: DescribeVolumesResponse)

instance Prelude.NFData DescribeVolumesResponse where
  rnf DescribeVolumesResponse' {..} =
    Prelude.rnf volumes
      `Prelude.seq` Prelude.rnf httpStatus

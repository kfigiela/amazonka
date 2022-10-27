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
-- Module      : Amazonka.OpsWorks.DescribeRaidArrays
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an instance\'s RAID arrays.
--
-- This call accepts only one resource-identifying parameter.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Show, Deploy, or Manage permissions level for the stack, or an attached
-- policy that explicitly grants permissions. For more information about
-- user permissions, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
module Amazonka.OpsWorks.DescribeRaidArrays
  ( -- * Creating a Request
    DescribeRaidArrays (..),
    newDescribeRaidArrays,

    -- * Request Lenses
    describeRaidArrays_stackId,
    describeRaidArrays_raidArrayIds,
    describeRaidArrays_instanceId,

    -- * Destructuring the Response
    DescribeRaidArraysResponse (..),
    newDescribeRaidArraysResponse,

    -- * Response Lenses
    describeRaidArraysResponse_raidArrays,
    describeRaidArraysResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpsWorks.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeRaidArrays' smart constructor.
data DescribeRaidArrays = DescribeRaidArrays'
  { -- | The stack ID.
    stackId :: Prelude.Maybe Prelude.Text,
    -- | An array of RAID array IDs. If you use this parameter,
    -- @DescribeRaidArrays@ returns descriptions of the specified arrays.
    -- Otherwise, it returns a description of every array.
    raidArrayIds :: Prelude.Maybe [Prelude.Text],
    -- | The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
    -- descriptions of the RAID arrays associated with the specified instance.
    instanceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRaidArrays' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackId', 'describeRaidArrays_stackId' - The stack ID.
--
-- 'raidArrayIds', 'describeRaidArrays_raidArrayIds' - An array of RAID array IDs. If you use this parameter,
-- @DescribeRaidArrays@ returns descriptions of the specified arrays.
-- Otherwise, it returns a description of every array.
--
-- 'instanceId', 'describeRaidArrays_instanceId' - The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
-- descriptions of the RAID arrays associated with the specified instance.
newDescribeRaidArrays ::
  DescribeRaidArrays
newDescribeRaidArrays =
  DescribeRaidArrays'
    { stackId = Prelude.Nothing,
      raidArrayIds = Prelude.Nothing,
      instanceId = Prelude.Nothing
    }

-- | The stack ID.
describeRaidArrays_stackId :: Lens.Lens' DescribeRaidArrays (Prelude.Maybe Prelude.Text)
describeRaidArrays_stackId = Lens.lens (\DescribeRaidArrays' {stackId} -> stackId) (\s@DescribeRaidArrays' {} a -> s {stackId = a} :: DescribeRaidArrays)

-- | An array of RAID array IDs. If you use this parameter,
-- @DescribeRaidArrays@ returns descriptions of the specified arrays.
-- Otherwise, it returns a description of every array.
describeRaidArrays_raidArrayIds :: Lens.Lens' DescribeRaidArrays (Prelude.Maybe [Prelude.Text])
describeRaidArrays_raidArrayIds = Lens.lens (\DescribeRaidArrays' {raidArrayIds} -> raidArrayIds) (\s@DescribeRaidArrays' {} a -> s {raidArrayIds = a} :: DescribeRaidArrays) Prelude.. Lens.mapping Lens.coerced

-- | The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
-- descriptions of the RAID arrays associated with the specified instance.
describeRaidArrays_instanceId :: Lens.Lens' DescribeRaidArrays (Prelude.Maybe Prelude.Text)
describeRaidArrays_instanceId = Lens.lens (\DescribeRaidArrays' {instanceId} -> instanceId) (\s@DescribeRaidArrays' {} a -> s {instanceId = a} :: DescribeRaidArrays)

instance Core.AWSRequest DescribeRaidArrays where
  type
    AWSResponse DescribeRaidArrays =
      DescribeRaidArraysResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRaidArraysResponse'
            Prelude.<$> (x Core..?> "RaidArrays" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeRaidArrays where
  hashWithSalt _salt DescribeRaidArrays' {..} =
    _salt `Prelude.hashWithSalt` stackId
      `Prelude.hashWithSalt` raidArrayIds
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData DescribeRaidArrays where
  rnf DescribeRaidArrays' {..} =
    Prelude.rnf stackId
      `Prelude.seq` Prelude.rnf raidArrayIds
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders DescribeRaidArrays where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorks_20130218.DescribeRaidArrays" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeRaidArrays where
  toJSON DescribeRaidArrays' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StackId" Core..=) Prelude.<$> stackId,
            ("RaidArrayIds" Core..=) Prelude.<$> raidArrayIds,
            ("InstanceId" Core..=) Prelude.<$> instanceId
          ]
      )

instance Core.ToPath DescribeRaidArrays where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeRaidArrays where
  toQuery = Prelude.const Prelude.mempty

-- | Contains the response to a @DescribeRaidArrays@ request.
--
-- /See:/ 'newDescribeRaidArraysResponse' smart constructor.
data DescribeRaidArraysResponse = DescribeRaidArraysResponse'
  { -- | A @RaidArrays@ object that describes the specified RAID arrays.
    raidArrays :: Prelude.Maybe [RaidArray],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRaidArraysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'raidArrays', 'describeRaidArraysResponse_raidArrays' - A @RaidArrays@ object that describes the specified RAID arrays.
--
-- 'httpStatus', 'describeRaidArraysResponse_httpStatus' - The response's http status code.
newDescribeRaidArraysResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRaidArraysResponse
newDescribeRaidArraysResponse pHttpStatus_ =
  DescribeRaidArraysResponse'
    { raidArrays =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @RaidArrays@ object that describes the specified RAID arrays.
describeRaidArraysResponse_raidArrays :: Lens.Lens' DescribeRaidArraysResponse (Prelude.Maybe [RaidArray])
describeRaidArraysResponse_raidArrays = Lens.lens (\DescribeRaidArraysResponse' {raidArrays} -> raidArrays) (\s@DescribeRaidArraysResponse' {} a -> s {raidArrays = a} :: DescribeRaidArraysResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeRaidArraysResponse_httpStatus :: Lens.Lens' DescribeRaidArraysResponse Prelude.Int
describeRaidArraysResponse_httpStatus = Lens.lens (\DescribeRaidArraysResponse' {httpStatus} -> httpStatus) (\s@DescribeRaidArraysResponse' {} a -> s {httpStatus = a} :: DescribeRaidArraysResponse)

instance Prelude.NFData DescribeRaidArraysResponse where
  rnf DescribeRaidArraysResponse' {..} =
    Prelude.rnf raidArrays
      `Prelude.seq` Prelude.rnf httpStatus

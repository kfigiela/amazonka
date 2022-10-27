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
-- Module      : Amazonka.AutoScaling.DescribeLoadBalancerTargetGroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the Elastic Load Balancing target groups for the
-- specified Auto Scaling group.
--
-- To determine the attachment status of the target group, use the @State@
-- element in the response. When you attach a target group to an Auto
-- Scaling group, the initial @State@ value is @Adding@. The state
-- transitions to @Added@ after all Auto Scaling instances are registered
-- with the target group. If Elastic Load Balancing health checks are
-- enabled for the Auto Scaling group, the state transitions to @InService@
-- after at least one Auto Scaling instance passes the health check. When
-- the target group is in the @InService@ state, Amazon EC2 Auto Scaling
-- can terminate and replace any instances that are reported as unhealthy.
-- If no registered instances pass the health checks, the target group
-- doesn\'t enter the @InService@ state.
--
-- Target groups also have an @InService@ state if you attach them in the
-- CreateAutoScalingGroup API call. If your target group state is
-- @InService@, but it is not working properly, check the scaling
-- activities by calling DescribeScalingActivities and take any corrective
-- actions necessary.
--
-- For help with failed health checks, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html Troubleshooting Amazon EC2 Auto Scaling: Health checks>
-- in the /Amazon EC2 Auto Scaling User Guide/. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- This operation returns paginated results.
module Amazonka.AutoScaling.DescribeLoadBalancerTargetGroups
  ( -- * Creating a Request
    DescribeLoadBalancerTargetGroups (..),
    newDescribeLoadBalancerTargetGroups,

    -- * Request Lenses
    describeLoadBalancerTargetGroups_nextToken,
    describeLoadBalancerTargetGroups_maxRecords,
    describeLoadBalancerTargetGroups_autoScalingGroupName,

    -- * Destructuring the Response
    DescribeLoadBalancerTargetGroupsResponse (..),
    newDescribeLoadBalancerTargetGroupsResponse,

    -- * Response Lenses
    describeLoadBalancerTargetGroupsResponse_nextToken,
    describeLoadBalancerTargetGroupsResponse_loadBalancerTargetGroups,
    describeLoadBalancerTargetGroupsResponse_httpStatus,
  )
where

import Amazonka.AutoScaling.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeLoadBalancerTargetGroups' smart constructor.
data DescribeLoadBalancerTargetGroups = DescribeLoadBalancerTargetGroups'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call. The default value
    -- is @100@ and the maximum value is @100@.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancerTargetGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLoadBalancerTargetGroups_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxRecords', 'describeLoadBalancerTargetGroups_maxRecords' - The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
--
-- 'autoScalingGroupName', 'describeLoadBalancerTargetGroups_autoScalingGroupName' - The name of the Auto Scaling group.
newDescribeLoadBalancerTargetGroups ::
  -- | 'autoScalingGroupName'
  Prelude.Text ->
  DescribeLoadBalancerTargetGroups
newDescribeLoadBalancerTargetGroups
  pAutoScalingGroupName_ =
    DescribeLoadBalancerTargetGroups'
      { nextToken =
          Prelude.Nothing,
        maxRecords = Prelude.Nothing,
        autoScalingGroupName =
          pAutoScalingGroupName_
      }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeLoadBalancerTargetGroups_nextToken :: Lens.Lens' DescribeLoadBalancerTargetGroups (Prelude.Maybe Prelude.Text)
describeLoadBalancerTargetGroups_nextToken = Lens.lens (\DescribeLoadBalancerTargetGroups' {nextToken} -> nextToken) (\s@DescribeLoadBalancerTargetGroups' {} a -> s {nextToken = a} :: DescribeLoadBalancerTargetGroups)

-- | The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
describeLoadBalancerTargetGroups_maxRecords :: Lens.Lens' DescribeLoadBalancerTargetGroups (Prelude.Maybe Prelude.Int)
describeLoadBalancerTargetGroups_maxRecords = Lens.lens (\DescribeLoadBalancerTargetGroups' {maxRecords} -> maxRecords) (\s@DescribeLoadBalancerTargetGroups' {} a -> s {maxRecords = a} :: DescribeLoadBalancerTargetGroups)

-- | The name of the Auto Scaling group.
describeLoadBalancerTargetGroups_autoScalingGroupName :: Lens.Lens' DescribeLoadBalancerTargetGroups Prelude.Text
describeLoadBalancerTargetGroups_autoScalingGroupName = Lens.lens (\DescribeLoadBalancerTargetGroups' {autoScalingGroupName} -> autoScalingGroupName) (\s@DescribeLoadBalancerTargetGroups' {} a -> s {autoScalingGroupName = a} :: DescribeLoadBalancerTargetGroups)

instance
  Core.AWSPager
    DescribeLoadBalancerTargetGroups
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancerTargetGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancerTargetGroupsResponse_loadBalancerTargetGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeLoadBalancerTargetGroups_nextToken
          Lens..~ rs
          Lens.^? describeLoadBalancerTargetGroupsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeLoadBalancerTargetGroups
  where
  type
    AWSResponse DescribeLoadBalancerTargetGroups =
      DescribeLoadBalancerTargetGroupsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancerTargetGroupsResult"
      ( \s h x ->
          DescribeLoadBalancerTargetGroupsResponse'
            Prelude.<$> (x Core..@? "NextToken")
            Prelude.<*> ( x Core..@? "LoadBalancerTargetGroups"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeLoadBalancerTargetGroups
  where
  hashWithSalt
    _salt
    DescribeLoadBalancerTargetGroups' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxRecords
        `Prelude.hashWithSalt` autoScalingGroupName

instance
  Prelude.NFData
    DescribeLoadBalancerTargetGroups
  where
  rnf DescribeLoadBalancerTargetGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf autoScalingGroupName

instance
  Core.ToHeaders
    DescribeLoadBalancerTargetGroups
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeLoadBalancerTargetGroups where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeLoadBalancerTargetGroups
  where
  toQuery DescribeLoadBalancerTargetGroups' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeLoadBalancerTargetGroups" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "MaxRecords" Core.=: maxRecords,
        "AutoScalingGroupName" Core.=: autoScalingGroupName
      ]

-- | /See:/ 'newDescribeLoadBalancerTargetGroupsResponse' smart constructor.
data DescribeLoadBalancerTargetGroupsResponse = DescribeLoadBalancerTargetGroupsResponse'
  { -- | A string that indicates that the response contains more items than can
    -- be returned in a single response. To receive additional items, specify
    -- this string for the @NextToken@ value when requesting the next set of
    -- items. This value is null when there are no more items to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the target groups.
    loadBalancerTargetGroups :: Prelude.Maybe [LoadBalancerTargetGroupState],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancerTargetGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLoadBalancerTargetGroupsResponse_nextToken' - A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
--
-- 'loadBalancerTargetGroups', 'describeLoadBalancerTargetGroupsResponse_loadBalancerTargetGroups' - Information about the target groups.
--
-- 'httpStatus', 'describeLoadBalancerTargetGroupsResponse_httpStatus' - The response's http status code.
newDescribeLoadBalancerTargetGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLoadBalancerTargetGroupsResponse
newDescribeLoadBalancerTargetGroupsResponse
  pHttpStatus_ =
    DescribeLoadBalancerTargetGroupsResponse'
      { nextToken =
          Prelude.Nothing,
        loadBalancerTargetGroups =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
describeLoadBalancerTargetGroupsResponse_nextToken :: Lens.Lens' DescribeLoadBalancerTargetGroupsResponse (Prelude.Maybe Prelude.Text)
describeLoadBalancerTargetGroupsResponse_nextToken = Lens.lens (\DescribeLoadBalancerTargetGroupsResponse' {nextToken} -> nextToken) (\s@DescribeLoadBalancerTargetGroupsResponse' {} a -> s {nextToken = a} :: DescribeLoadBalancerTargetGroupsResponse)

-- | Information about the target groups.
describeLoadBalancerTargetGroupsResponse_loadBalancerTargetGroups :: Lens.Lens' DescribeLoadBalancerTargetGroupsResponse (Prelude.Maybe [LoadBalancerTargetGroupState])
describeLoadBalancerTargetGroupsResponse_loadBalancerTargetGroups = Lens.lens (\DescribeLoadBalancerTargetGroupsResponse' {loadBalancerTargetGroups} -> loadBalancerTargetGroups) (\s@DescribeLoadBalancerTargetGroupsResponse' {} a -> s {loadBalancerTargetGroups = a} :: DescribeLoadBalancerTargetGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeLoadBalancerTargetGroupsResponse_httpStatus :: Lens.Lens' DescribeLoadBalancerTargetGroupsResponse Prelude.Int
describeLoadBalancerTargetGroupsResponse_httpStatus = Lens.lens (\DescribeLoadBalancerTargetGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeLoadBalancerTargetGroupsResponse' {} a -> s {httpStatus = a} :: DescribeLoadBalancerTargetGroupsResponse)

instance
  Prelude.NFData
    DescribeLoadBalancerTargetGroupsResponse
  where
  rnf DescribeLoadBalancerTargetGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf loadBalancerTargetGroups
      `Prelude.seq` Prelude.rnf httpStatus

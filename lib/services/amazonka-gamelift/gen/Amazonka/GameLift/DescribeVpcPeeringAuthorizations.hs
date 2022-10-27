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
-- Module      : Amazonka.GameLift.DescribeVpcPeeringAuthorizations
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves valid VPC peering authorizations that are pending for the
-- Amazon Web Services account. This operation returns all VPC peering
-- authorizations and requests for peering. This includes those initiated
-- and received by this account.
--
-- __Related actions__
--
-- CreateVpcPeeringAuthorization | DescribeVpcPeeringAuthorizations |
-- DeleteVpcPeeringAuthorization | CreateVpcPeeringConnection |
-- DescribeVpcPeeringConnections | DeleteVpcPeeringConnection |
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets All APIs by task>
module Amazonka.GameLift.DescribeVpcPeeringAuthorizations
  ( -- * Creating a Request
    DescribeVpcPeeringAuthorizations (..),
    newDescribeVpcPeeringAuthorizations,

    -- * Destructuring the Response
    DescribeVpcPeeringAuthorizationsResponse (..),
    newDescribeVpcPeeringAuthorizationsResponse,

    -- * Response Lenses
    describeVpcPeeringAuthorizationsResponse_vpcPeeringAuthorizations,
    describeVpcPeeringAuthorizationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GameLift.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeVpcPeeringAuthorizations' smart constructor.
data DescribeVpcPeeringAuthorizations = DescribeVpcPeeringAuthorizations'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVpcPeeringAuthorizations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeVpcPeeringAuthorizations ::
  DescribeVpcPeeringAuthorizations
newDescribeVpcPeeringAuthorizations =
  DescribeVpcPeeringAuthorizations'

instance
  Core.AWSRequest
    DescribeVpcPeeringAuthorizations
  where
  type
    AWSResponse DescribeVpcPeeringAuthorizations =
      DescribeVpcPeeringAuthorizationsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVpcPeeringAuthorizationsResponse'
            Prelude.<$> ( x Core..?> "VpcPeeringAuthorizations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeVpcPeeringAuthorizations
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    DescribeVpcPeeringAuthorizations
  where
  rnf _ = ()

instance
  Core.ToHeaders
    DescribeVpcPeeringAuthorizations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GameLift.DescribeVpcPeeringAuthorizations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeVpcPeeringAuthorizations where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DescribeVpcPeeringAuthorizations where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeVpcPeeringAuthorizations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeVpcPeeringAuthorizationsResponse' smart constructor.
data DescribeVpcPeeringAuthorizationsResponse = DescribeVpcPeeringAuthorizationsResponse'
  { -- | A collection of objects that describe all valid VPC peering operations
    -- for the current Amazon Web Services account.
    vpcPeeringAuthorizations :: Prelude.Maybe [VpcPeeringAuthorization],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVpcPeeringAuthorizationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcPeeringAuthorizations', 'describeVpcPeeringAuthorizationsResponse_vpcPeeringAuthorizations' - A collection of objects that describe all valid VPC peering operations
-- for the current Amazon Web Services account.
--
-- 'httpStatus', 'describeVpcPeeringAuthorizationsResponse_httpStatus' - The response's http status code.
newDescribeVpcPeeringAuthorizationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVpcPeeringAuthorizationsResponse
newDescribeVpcPeeringAuthorizationsResponse
  pHttpStatus_ =
    DescribeVpcPeeringAuthorizationsResponse'
      { vpcPeeringAuthorizations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A collection of objects that describe all valid VPC peering operations
-- for the current Amazon Web Services account.
describeVpcPeeringAuthorizationsResponse_vpcPeeringAuthorizations :: Lens.Lens' DescribeVpcPeeringAuthorizationsResponse (Prelude.Maybe [VpcPeeringAuthorization])
describeVpcPeeringAuthorizationsResponse_vpcPeeringAuthorizations = Lens.lens (\DescribeVpcPeeringAuthorizationsResponse' {vpcPeeringAuthorizations} -> vpcPeeringAuthorizations) (\s@DescribeVpcPeeringAuthorizationsResponse' {} a -> s {vpcPeeringAuthorizations = a} :: DescribeVpcPeeringAuthorizationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVpcPeeringAuthorizationsResponse_httpStatus :: Lens.Lens' DescribeVpcPeeringAuthorizationsResponse Prelude.Int
describeVpcPeeringAuthorizationsResponse_httpStatus = Lens.lens (\DescribeVpcPeeringAuthorizationsResponse' {httpStatus} -> httpStatus) (\s@DescribeVpcPeeringAuthorizationsResponse' {} a -> s {httpStatus = a} :: DescribeVpcPeeringAuthorizationsResponse)

instance
  Prelude.NFData
    DescribeVpcPeeringAuthorizationsResponse
  where
  rnf DescribeVpcPeeringAuthorizationsResponse' {..} =
    Prelude.rnf vpcPeeringAuthorizations
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Redshift.DescribeReservedNodes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the descriptions of the reserved nodes.
--
-- This operation returns paginated results.
module Amazonka.Redshift.DescribeReservedNodes
  ( -- * Creating a Request
    DescribeReservedNodes (..),
    newDescribeReservedNodes,

    -- * Request Lenses
    describeReservedNodes_marker,
    describeReservedNodes_reservedNodeId,
    describeReservedNodes_maxRecords,

    -- * Destructuring the Response
    DescribeReservedNodesResponse (..),
    newDescribeReservedNodesResponse,

    -- * Response Lenses
    describeReservedNodesResponse_reservedNodes,
    describeReservedNodesResponse_marker,
    describeReservedNodesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeReservedNodes' smart constructor.
data DescribeReservedNodes = DescribeReservedNodes'
  { -- | An optional parameter that specifies the starting point to return a set
    -- of response records. When the results of a DescribeReservedNodes request
    -- exceed the value specified in @MaxRecords@, Amazon Web Services returns
    -- a value in the @Marker@ field of the response. You can retrieve the next
    -- set of response records by providing the returned marker value in the
    -- @Marker@ parameter and retrying the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Identifier for the node reservation.
    reservedNodeId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of response records to return in each call. If the
    -- number of remaining response records exceeds the specified @MaxRecords@
    -- value, a value is returned in a @marker@ field of the response. You can
    -- retrieve the next set of records by retrying the command with the
    -- returned marker value.
    --
    -- Default: @100@
    --
    -- Constraints: minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedNodes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeReservedNodes_marker' - An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeReservedNodes request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
--
-- 'reservedNodeId', 'describeReservedNodes_reservedNodeId' - Identifier for the node reservation.
--
-- 'maxRecords', 'describeReservedNodes_maxRecords' - The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
newDescribeReservedNodes ::
  DescribeReservedNodes
newDescribeReservedNodes =
  DescribeReservedNodes'
    { marker = Prelude.Nothing,
      reservedNodeId = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeReservedNodes request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
describeReservedNodes_marker :: Lens.Lens' DescribeReservedNodes (Prelude.Maybe Prelude.Text)
describeReservedNodes_marker = Lens.lens (\DescribeReservedNodes' {marker} -> marker) (\s@DescribeReservedNodes' {} a -> s {marker = a} :: DescribeReservedNodes)

-- | Identifier for the node reservation.
describeReservedNodes_reservedNodeId :: Lens.Lens' DescribeReservedNodes (Prelude.Maybe Prelude.Text)
describeReservedNodes_reservedNodeId = Lens.lens (\DescribeReservedNodes' {reservedNodeId} -> reservedNodeId) (\s@DescribeReservedNodes' {} a -> s {reservedNodeId = a} :: DescribeReservedNodes)

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
describeReservedNodes_maxRecords :: Lens.Lens' DescribeReservedNodes (Prelude.Maybe Prelude.Int)
describeReservedNodes_maxRecords = Lens.lens (\DescribeReservedNodes' {maxRecords} -> maxRecords) (\s@DescribeReservedNodes' {} a -> s {maxRecords = a} :: DescribeReservedNodes)

instance Core.AWSPager DescribeReservedNodes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeReservedNodesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeReservedNodesResponse_reservedNodes
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeReservedNodes_marker
          Lens..~ rs
          Lens.^? describeReservedNodesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeReservedNodes where
  type
    AWSResponse DescribeReservedNodes =
      DescribeReservedNodesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeReservedNodesResult"
      ( \s h x ->
          DescribeReservedNodesResponse'
            Prelude.<$> ( x Core..@? "ReservedNodes" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "ReservedNode")
                        )
            Prelude.<*> (x Core..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeReservedNodes where
  hashWithSalt _salt DescribeReservedNodes' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` reservedNodeId
      `Prelude.hashWithSalt` maxRecords

instance Prelude.NFData DescribeReservedNodes where
  rnf DescribeReservedNodes' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf reservedNodeId
      `Prelude.seq` Prelude.rnf maxRecords

instance Core.ToHeaders DescribeReservedNodes where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeReservedNodes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeReservedNodes where
  toQuery DescribeReservedNodes' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeReservedNodes" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "ReservedNodeId" Core.=: reservedNodeId,
        "MaxRecords" Core.=: maxRecords
      ]

-- |
--
-- /See:/ 'newDescribeReservedNodesResponse' smart constructor.
data DescribeReservedNodesResponse = DescribeReservedNodesResponse'
  { -- | The list of @ReservedNode@ objects.
    reservedNodes :: Prelude.Maybe [ReservedNode],
    -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- marker value in the @Marker@ parameter and retrying the command. If the
    -- @Marker@ field is empty, all response records have been retrieved for
    -- the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedNodesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedNodes', 'describeReservedNodesResponse_reservedNodes' - The list of @ReservedNode@ objects.
--
-- 'marker', 'describeReservedNodesResponse_marker' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
--
-- 'httpStatus', 'describeReservedNodesResponse_httpStatus' - The response's http status code.
newDescribeReservedNodesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReservedNodesResponse
newDescribeReservedNodesResponse pHttpStatus_ =
  DescribeReservedNodesResponse'
    { reservedNodes =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of @ReservedNode@ objects.
describeReservedNodesResponse_reservedNodes :: Lens.Lens' DescribeReservedNodesResponse (Prelude.Maybe [ReservedNode])
describeReservedNodesResponse_reservedNodes = Lens.lens (\DescribeReservedNodesResponse' {reservedNodes} -> reservedNodes) (\s@DescribeReservedNodesResponse' {} a -> s {reservedNodes = a} :: DescribeReservedNodesResponse) Prelude.. Lens.mapping Lens.coerced

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
describeReservedNodesResponse_marker :: Lens.Lens' DescribeReservedNodesResponse (Prelude.Maybe Prelude.Text)
describeReservedNodesResponse_marker = Lens.lens (\DescribeReservedNodesResponse' {marker} -> marker) (\s@DescribeReservedNodesResponse' {} a -> s {marker = a} :: DescribeReservedNodesResponse)

-- | The response's http status code.
describeReservedNodesResponse_httpStatus :: Lens.Lens' DescribeReservedNodesResponse Prelude.Int
describeReservedNodesResponse_httpStatus = Lens.lens (\DescribeReservedNodesResponse' {httpStatus} -> httpStatus) (\s@DescribeReservedNodesResponse' {} a -> s {httpStatus = a} :: DescribeReservedNodesResponse)

instance Prelude.NFData DescribeReservedNodesResponse where
  rnf DescribeReservedNodesResponse' {..} =
    Prelude.rnf reservedNodes
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf httpStatus

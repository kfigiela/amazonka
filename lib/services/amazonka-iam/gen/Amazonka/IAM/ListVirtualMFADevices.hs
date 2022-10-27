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
-- Module      : Amazonka.IAM.ListVirtualMFADevices
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the virtual MFA devices defined in the Amazon Web Services account
-- by assignment status. If you do not specify an assignment status, the
-- operation returns a list of all virtual MFA devices. Assignment status
-- can be @Assigned@, @Unassigned@, or @Any@.
--
-- IAM resource-listing operations return a subset of the available
-- attributes for the resource. For example, this operation does not return
-- tags, even though they are an attribute of the returned object. To view
-- tag information for a virtual MFA device, see ListMFADeviceTags.
--
-- You can paginate the results using the @MaxItems@ and @Marker@
-- parameters.
--
-- This operation returns paginated results.
module Amazonka.IAM.ListVirtualMFADevices
  ( -- * Creating a Request
    ListVirtualMFADevices (..),
    newListVirtualMFADevices,

    -- * Request Lenses
    listVirtualMFADevices_marker,
    listVirtualMFADevices_maxItems,
    listVirtualMFADevices_assignmentStatus,

    -- * Destructuring the Response
    ListVirtualMFADevicesResponse (..),
    newListVirtualMFADevicesResponse,

    -- * Response Lenses
    listVirtualMFADevicesResponse_marker,
    listVirtualMFADevicesResponse_isTruncated,
    listVirtualMFADevicesResponse_httpStatus,
    listVirtualMFADevicesResponse_virtualMFADevices,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListVirtualMFADevices' smart constructor.
data ListVirtualMFADevices = ListVirtualMFADevices'
  { -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | The status (@Unassigned@ or @Assigned@) of the devices to list. If you
    -- do not specify an @AssignmentStatus@, the operation defaults to @Any@,
    -- which lists both assigned and unassigned virtual MFA devices.,
    assignmentStatus :: Prelude.Maybe AssignmentStatusType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVirtualMFADevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listVirtualMFADevices_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'maxItems', 'listVirtualMFADevices_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'assignmentStatus', 'listVirtualMFADevices_assignmentStatus' - The status (@Unassigned@ or @Assigned@) of the devices to list. If you
-- do not specify an @AssignmentStatus@, the operation defaults to @Any@,
-- which lists both assigned and unassigned virtual MFA devices.,
newListVirtualMFADevices ::
  ListVirtualMFADevices
newListVirtualMFADevices =
  ListVirtualMFADevices'
    { marker = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      assignmentStatus = Prelude.Nothing
    }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listVirtualMFADevices_marker :: Lens.Lens' ListVirtualMFADevices (Prelude.Maybe Prelude.Text)
listVirtualMFADevices_marker = Lens.lens (\ListVirtualMFADevices' {marker} -> marker) (\s@ListVirtualMFADevices' {} a -> s {marker = a} :: ListVirtualMFADevices)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
listVirtualMFADevices_maxItems :: Lens.Lens' ListVirtualMFADevices (Prelude.Maybe Prelude.Natural)
listVirtualMFADevices_maxItems = Lens.lens (\ListVirtualMFADevices' {maxItems} -> maxItems) (\s@ListVirtualMFADevices' {} a -> s {maxItems = a} :: ListVirtualMFADevices)

-- | The status (@Unassigned@ or @Assigned@) of the devices to list. If you
-- do not specify an @AssignmentStatus@, the operation defaults to @Any@,
-- which lists both assigned and unassigned virtual MFA devices.,
listVirtualMFADevices_assignmentStatus :: Lens.Lens' ListVirtualMFADevices (Prelude.Maybe AssignmentStatusType)
listVirtualMFADevices_assignmentStatus = Lens.lens (\ListVirtualMFADevices' {assignmentStatus} -> assignmentStatus) (\s@ListVirtualMFADevices' {} a -> s {assignmentStatus = a} :: ListVirtualMFADevices)

instance Core.AWSPager ListVirtualMFADevices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVirtualMFADevicesResponse_isTruncated
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listVirtualMFADevicesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listVirtualMFADevices_marker
          Lens..~ rs
          Lens.^? listVirtualMFADevicesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest ListVirtualMFADevices where
  type
    AWSResponse ListVirtualMFADevices =
      ListVirtualMFADevicesResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ListVirtualMFADevicesResult"
      ( \s h x ->
          ListVirtualMFADevicesResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..@? "VirtualMFADevices"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.parseXMLList "member"
                        )
      )

instance Prelude.Hashable ListVirtualMFADevices where
  hashWithSalt _salt ListVirtualMFADevices' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` assignmentStatus

instance Prelude.NFData ListVirtualMFADevices where
  rnf ListVirtualMFADevices' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf assignmentStatus

instance Core.ToHeaders ListVirtualMFADevices where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListVirtualMFADevices where
  toPath = Prelude.const "/"

instance Core.ToQuery ListVirtualMFADevices where
  toQuery ListVirtualMFADevices' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListVirtualMFADevices" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-08" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems,
        "AssignmentStatus" Core.=: assignmentStatus
      ]

-- | Contains the response to a successful ListVirtualMFADevices request.
--
-- /See:/ 'newListVirtualMFADevicesResponse' smart constructor.
data ListVirtualMFADevicesResponse = ListVirtualMFADevicesResponse'
  { -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of virtual MFA devices in the current account that match the
    -- @AssignmentStatus@ value that was passed in the request.
    virtualMFADevices :: [VirtualMFADevice]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVirtualMFADevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listVirtualMFADevicesResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'isTruncated', 'listVirtualMFADevicesResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'httpStatus', 'listVirtualMFADevicesResponse_httpStatus' - The response's http status code.
--
-- 'virtualMFADevices', 'listVirtualMFADevicesResponse_virtualMFADevices' - The list of virtual MFA devices in the current account that match the
-- @AssignmentStatus@ value that was passed in the request.
newListVirtualMFADevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVirtualMFADevicesResponse
newListVirtualMFADevicesResponse pHttpStatus_ =
  ListVirtualMFADevicesResponse'
    { marker =
        Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      virtualMFADevices = Prelude.mempty
    }

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listVirtualMFADevicesResponse_marker :: Lens.Lens' ListVirtualMFADevicesResponse (Prelude.Maybe Prelude.Text)
listVirtualMFADevicesResponse_marker = Lens.lens (\ListVirtualMFADevicesResponse' {marker} -> marker) (\s@ListVirtualMFADevicesResponse' {} a -> s {marker = a} :: ListVirtualMFADevicesResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
listVirtualMFADevicesResponse_isTruncated :: Lens.Lens' ListVirtualMFADevicesResponse (Prelude.Maybe Prelude.Bool)
listVirtualMFADevicesResponse_isTruncated = Lens.lens (\ListVirtualMFADevicesResponse' {isTruncated} -> isTruncated) (\s@ListVirtualMFADevicesResponse' {} a -> s {isTruncated = a} :: ListVirtualMFADevicesResponse)

-- | The response's http status code.
listVirtualMFADevicesResponse_httpStatus :: Lens.Lens' ListVirtualMFADevicesResponse Prelude.Int
listVirtualMFADevicesResponse_httpStatus = Lens.lens (\ListVirtualMFADevicesResponse' {httpStatus} -> httpStatus) (\s@ListVirtualMFADevicesResponse' {} a -> s {httpStatus = a} :: ListVirtualMFADevicesResponse)

-- | The list of virtual MFA devices in the current account that match the
-- @AssignmentStatus@ value that was passed in the request.
listVirtualMFADevicesResponse_virtualMFADevices :: Lens.Lens' ListVirtualMFADevicesResponse [VirtualMFADevice]
listVirtualMFADevicesResponse_virtualMFADevices = Lens.lens (\ListVirtualMFADevicesResponse' {virtualMFADevices} -> virtualMFADevices) (\s@ListVirtualMFADevicesResponse' {} a -> s {virtualMFADevices = a} :: ListVirtualMFADevicesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListVirtualMFADevicesResponse where
  rnf ListVirtualMFADevicesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf virtualMFADevices

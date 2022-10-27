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
-- Module      : Amazonka.IAM.ListMFADeviceTags
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM virtual
-- multi-factor authentication (MFA) device. The returned list of tags is
-- sorted by tag key. For more information about tagging, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
-- in the /IAM User Guide/.
module Amazonka.IAM.ListMFADeviceTags
  ( -- * Creating a Request
    ListMFADeviceTags (..),
    newListMFADeviceTags,

    -- * Request Lenses
    listMFADeviceTags_marker,
    listMFADeviceTags_maxItems,
    listMFADeviceTags_serialNumber,

    -- * Destructuring the Response
    ListMFADeviceTagsResponse (..),
    newListMFADeviceTagsResponse,

    -- * Response Lenses
    listMFADeviceTagsResponse_marker,
    listMFADeviceTagsResponse_isTruncated,
    listMFADeviceTagsResponse_httpStatus,
    listMFADeviceTagsResponse_tags,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListMFADeviceTags' smart constructor.
data ListMFADeviceTags = ListMFADeviceTags'
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
    -- | The unique identifier for the IAM virtual MFA device whose tags you want
    -- to see. For virtual MFA devices, the serial number is the same as the
    -- ARN.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    serialNumber :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMFADeviceTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listMFADeviceTags_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'maxItems', 'listMFADeviceTags_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'serialNumber', 'listMFADeviceTags_serialNumber' - The unique identifier for the IAM virtual MFA device whose tags you want
-- to see. For virtual MFA devices, the serial number is the same as the
-- ARN.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
newListMFADeviceTags ::
  -- | 'serialNumber'
  Prelude.Text ->
  ListMFADeviceTags
newListMFADeviceTags pSerialNumber_ =
  ListMFADeviceTags'
    { marker = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      serialNumber = pSerialNumber_
    }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listMFADeviceTags_marker :: Lens.Lens' ListMFADeviceTags (Prelude.Maybe Prelude.Text)
listMFADeviceTags_marker = Lens.lens (\ListMFADeviceTags' {marker} -> marker) (\s@ListMFADeviceTags' {} a -> s {marker = a} :: ListMFADeviceTags)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
listMFADeviceTags_maxItems :: Lens.Lens' ListMFADeviceTags (Prelude.Maybe Prelude.Natural)
listMFADeviceTags_maxItems = Lens.lens (\ListMFADeviceTags' {maxItems} -> maxItems) (\s@ListMFADeviceTags' {} a -> s {maxItems = a} :: ListMFADeviceTags)

-- | The unique identifier for the IAM virtual MFA device whose tags you want
-- to see. For virtual MFA devices, the serial number is the same as the
-- ARN.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
listMFADeviceTags_serialNumber :: Lens.Lens' ListMFADeviceTags Prelude.Text
listMFADeviceTags_serialNumber = Lens.lens (\ListMFADeviceTags' {serialNumber} -> serialNumber) (\s@ListMFADeviceTags' {} a -> s {serialNumber = a} :: ListMFADeviceTags)

instance Core.AWSRequest ListMFADeviceTags where
  type
    AWSResponse ListMFADeviceTags =
      ListMFADeviceTagsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ListMFADeviceTagsResult"
      ( \s h x ->
          ListMFADeviceTagsResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..@? "Tags" Core..!@ Prelude.mempty
                            Prelude.>>= Core.parseXMLList "member"
                        )
      )

instance Prelude.Hashable ListMFADeviceTags where
  hashWithSalt _salt ListMFADeviceTags' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` serialNumber

instance Prelude.NFData ListMFADeviceTags where
  rnf ListMFADeviceTags' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf serialNumber

instance Core.ToHeaders ListMFADeviceTags where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListMFADeviceTags where
  toPath = Prelude.const "/"

instance Core.ToQuery ListMFADeviceTags where
  toQuery ListMFADeviceTags' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListMFADeviceTags" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-08" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems,
        "SerialNumber" Core.=: serialNumber
      ]

-- | /See:/ 'newListMFADeviceTagsResponse' smart constructor.
data ListMFADeviceTagsResponse = ListMFADeviceTagsResponse'
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
    -- | The list of tags that are currently attached to the virtual MFA device.
    -- Each tag consists of a key name and an associated value. If no tags are
    -- attached to the specified resource, the response contains an empty list.
    tags :: [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMFADeviceTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listMFADeviceTagsResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'isTruncated', 'listMFADeviceTagsResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'httpStatus', 'listMFADeviceTagsResponse_httpStatus' - The response's http status code.
--
-- 'tags', 'listMFADeviceTagsResponse_tags' - The list of tags that are currently attached to the virtual MFA device.
-- Each tag consists of a key name and an associated value. If no tags are
-- attached to the specified resource, the response contains an empty list.
newListMFADeviceTagsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMFADeviceTagsResponse
newListMFADeviceTagsResponse pHttpStatus_ =
  ListMFADeviceTagsResponse'
    { marker =
        Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      tags = Prelude.mempty
    }

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listMFADeviceTagsResponse_marker :: Lens.Lens' ListMFADeviceTagsResponse (Prelude.Maybe Prelude.Text)
listMFADeviceTagsResponse_marker = Lens.lens (\ListMFADeviceTagsResponse' {marker} -> marker) (\s@ListMFADeviceTagsResponse' {} a -> s {marker = a} :: ListMFADeviceTagsResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
listMFADeviceTagsResponse_isTruncated :: Lens.Lens' ListMFADeviceTagsResponse (Prelude.Maybe Prelude.Bool)
listMFADeviceTagsResponse_isTruncated = Lens.lens (\ListMFADeviceTagsResponse' {isTruncated} -> isTruncated) (\s@ListMFADeviceTagsResponse' {} a -> s {isTruncated = a} :: ListMFADeviceTagsResponse)

-- | The response's http status code.
listMFADeviceTagsResponse_httpStatus :: Lens.Lens' ListMFADeviceTagsResponse Prelude.Int
listMFADeviceTagsResponse_httpStatus = Lens.lens (\ListMFADeviceTagsResponse' {httpStatus} -> httpStatus) (\s@ListMFADeviceTagsResponse' {} a -> s {httpStatus = a} :: ListMFADeviceTagsResponse)

-- | The list of tags that are currently attached to the virtual MFA device.
-- Each tag consists of a key name and an associated value. If no tags are
-- attached to the specified resource, the response contains an empty list.
listMFADeviceTagsResponse_tags :: Lens.Lens' ListMFADeviceTagsResponse [Tag]
listMFADeviceTagsResponse_tags = Lens.lens (\ListMFADeviceTagsResponse' {tags} -> tags) (\s@ListMFADeviceTagsResponse' {} a -> s {tags = a} :: ListMFADeviceTagsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListMFADeviceTagsResponse where
  rnf ListMFADeviceTagsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf tags

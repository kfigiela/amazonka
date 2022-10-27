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
-- Module      : Amazonka.WorkDocs.DescribeActivities
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the user activities in a specified time period.
--
-- This operation returns paginated results.
module Amazonka.WorkDocs.DescribeActivities
  ( -- * Creating a Request
    DescribeActivities (..),
    newDescribeActivities,

    -- * Request Lenses
    describeActivities_resourceId,
    describeActivities_marker,
    describeActivities_authenticationToken,
    describeActivities_endTime,
    describeActivities_activityTypes,
    describeActivities_limit,
    describeActivities_userId,
    describeActivities_organizationId,
    describeActivities_includeIndirectActivities,
    describeActivities_startTime,

    -- * Destructuring the Response
    DescribeActivitiesResponse (..),
    newDescribeActivitiesResponse,

    -- * Response Lenses
    describeActivitiesResponse_marker,
    describeActivitiesResponse_userActivities,
    describeActivitiesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkDocs.Types

-- | /See:/ 'newDescribeActivities' smart constructor.
data DescribeActivities = DescribeActivities'
  { -- | The document or folder ID for which to describe activity types.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | The marker for the next set of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The timestamp that determines the end time of the activities. The
    -- response includes the activities performed before the specified
    -- timestamp.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | Specifies which activity types to include in the response. If this field
    -- is left empty, all activity types are returned.
    activityTypes :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the user who performed the action. The response includes
    -- activities pertaining to this user. This is an optional parameter and is
    -- only applicable for administrative API (SigV4) requests.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the organization. This is a mandatory parameter when using
    -- administrative API (SigV4) requests.
    organizationId :: Prelude.Maybe Prelude.Text,
    -- | Includes indirect activities. An indirect activity results from a direct
    -- activity performed on a parent resource. For example, sharing a parent
    -- folder (the direct activity) shares all of the subfolders and documents
    -- within the parent folder (the indirect activity).
    includeIndirectActivities :: Prelude.Maybe Prelude.Bool,
    -- | The timestamp that determines the starting time of the activities. The
    -- response includes the activities performed after the specified
    -- timestamp.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeActivities' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'describeActivities_resourceId' - The document or folder ID for which to describe activity types.
--
-- 'marker', 'describeActivities_marker' - The marker for the next set of results.
--
-- 'authenticationToken', 'describeActivities_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'endTime', 'describeActivities_endTime' - The timestamp that determines the end time of the activities. The
-- response includes the activities performed before the specified
-- timestamp.
--
-- 'activityTypes', 'describeActivities_activityTypes' - Specifies which activity types to include in the response. If this field
-- is left empty, all activity types are returned.
--
-- 'limit', 'describeActivities_limit' - The maximum number of items to return.
--
-- 'userId', 'describeActivities_userId' - The ID of the user who performed the action. The response includes
-- activities pertaining to this user. This is an optional parameter and is
-- only applicable for administrative API (SigV4) requests.
--
-- 'organizationId', 'describeActivities_organizationId' - The ID of the organization. This is a mandatory parameter when using
-- administrative API (SigV4) requests.
--
-- 'includeIndirectActivities', 'describeActivities_includeIndirectActivities' - Includes indirect activities. An indirect activity results from a direct
-- activity performed on a parent resource. For example, sharing a parent
-- folder (the direct activity) shares all of the subfolders and documents
-- within the parent folder (the indirect activity).
--
-- 'startTime', 'describeActivities_startTime' - The timestamp that determines the starting time of the activities. The
-- response includes the activities performed after the specified
-- timestamp.
newDescribeActivities ::
  DescribeActivities
newDescribeActivities =
  DescribeActivities'
    { resourceId = Prelude.Nothing,
      marker = Prelude.Nothing,
      authenticationToken = Prelude.Nothing,
      endTime = Prelude.Nothing,
      activityTypes = Prelude.Nothing,
      limit = Prelude.Nothing,
      userId = Prelude.Nothing,
      organizationId = Prelude.Nothing,
      includeIndirectActivities = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The document or folder ID for which to describe activity types.
describeActivities_resourceId :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_resourceId = Lens.lens (\DescribeActivities' {resourceId} -> resourceId) (\s@DescribeActivities' {} a -> s {resourceId = a} :: DescribeActivities)

-- | The marker for the next set of results.
describeActivities_marker :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_marker = Lens.lens (\DescribeActivities' {marker} -> marker) (\s@DescribeActivities' {} a -> s {marker = a} :: DescribeActivities)

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
describeActivities_authenticationToken :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_authenticationToken = Lens.lens (\DescribeActivities' {authenticationToken} -> authenticationToken) (\s@DescribeActivities' {} a -> s {authenticationToken = a} :: DescribeActivities) Prelude.. Lens.mapping Core._Sensitive

-- | The timestamp that determines the end time of the activities. The
-- response includes the activities performed before the specified
-- timestamp.
describeActivities_endTime :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.UTCTime)
describeActivities_endTime = Lens.lens (\DescribeActivities' {endTime} -> endTime) (\s@DescribeActivities' {} a -> s {endTime = a} :: DescribeActivities) Prelude.. Lens.mapping Core._Time

-- | Specifies which activity types to include in the response. If this field
-- is left empty, all activity types are returned.
describeActivities_activityTypes :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_activityTypes = Lens.lens (\DescribeActivities' {activityTypes} -> activityTypes) (\s@DescribeActivities' {} a -> s {activityTypes = a} :: DescribeActivities)

-- | The maximum number of items to return.
describeActivities_limit :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Natural)
describeActivities_limit = Lens.lens (\DescribeActivities' {limit} -> limit) (\s@DescribeActivities' {} a -> s {limit = a} :: DescribeActivities)

-- | The ID of the user who performed the action. The response includes
-- activities pertaining to this user. This is an optional parameter and is
-- only applicable for administrative API (SigV4) requests.
describeActivities_userId :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_userId = Lens.lens (\DescribeActivities' {userId} -> userId) (\s@DescribeActivities' {} a -> s {userId = a} :: DescribeActivities)

-- | The ID of the organization. This is a mandatory parameter when using
-- administrative API (SigV4) requests.
describeActivities_organizationId :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Text)
describeActivities_organizationId = Lens.lens (\DescribeActivities' {organizationId} -> organizationId) (\s@DescribeActivities' {} a -> s {organizationId = a} :: DescribeActivities)

-- | Includes indirect activities. An indirect activity results from a direct
-- activity performed on a parent resource. For example, sharing a parent
-- folder (the direct activity) shares all of the subfolders and documents
-- within the parent folder (the indirect activity).
describeActivities_includeIndirectActivities :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.Bool)
describeActivities_includeIndirectActivities = Lens.lens (\DescribeActivities' {includeIndirectActivities} -> includeIndirectActivities) (\s@DescribeActivities' {} a -> s {includeIndirectActivities = a} :: DescribeActivities)

-- | The timestamp that determines the starting time of the activities. The
-- response includes the activities performed after the specified
-- timestamp.
describeActivities_startTime :: Lens.Lens' DescribeActivities (Prelude.Maybe Prelude.UTCTime)
describeActivities_startTime = Lens.lens (\DescribeActivities' {startTime} -> startTime) (\s@DescribeActivities' {} a -> s {startTime = a} :: DescribeActivities) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager DescribeActivities where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeActivitiesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeActivitiesResponse_userActivities
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeActivities_marker
          Lens..~ rs
          Lens.^? describeActivitiesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeActivities where
  type
    AWSResponse DescribeActivities =
      DescribeActivitiesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeActivitiesResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> (x Core..?> "UserActivities" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeActivities where
  hashWithSalt _salt DescribeActivities' {..} =
    _salt `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` authenticationToken
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` activityTypes
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` userId
      `Prelude.hashWithSalt` organizationId
      `Prelude.hashWithSalt` includeIndirectActivities
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData DescribeActivities where
  rnf DescribeActivities' {..} =
    Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf authenticationToken
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf activityTypes
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf userId
      `Prelude.seq` Prelude.rnf organizationId
      `Prelude.seq` Prelude.rnf includeIndirectActivities
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders DescribeActivities where
  toHeaders DescribeActivities' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath DescribeActivities where
  toPath = Prelude.const "/api/v1/activities"

instance Core.ToQuery DescribeActivities where
  toQuery DescribeActivities' {..} =
    Prelude.mconcat
      [ "resourceId" Core.=: resourceId,
        "marker" Core.=: marker,
        "endTime" Core.=: endTime,
        "activityTypes" Core.=: activityTypes,
        "limit" Core.=: limit,
        "userId" Core.=: userId,
        "organizationId" Core.=: organizationId,
        "includeIndirectActivities"
          Core.=: includeIndirectActivities,
        "startTime" Core.=: startTime
      ]

-- | /See:/ 'newDescribeActivitiesResponse' smart constructor.
data DescribeActivitiesResponse = DescribeActivitiesResponse'
  { -- | The marker for the next set of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The list of activities for the specified user and time period.
    userActivities :: Prelude.Maybe [Activity],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeActivitiesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeActivitiesResponse_marker' - The marker for the next set of results.
--
-- 'userActivities', 'describeActivitiesResponse_userActivities' - The list of activities for the specified user and time period.
--
-- 'httpStatus', 'describeActivitiesResponse_httpStatus' - The response's http status code.
newDescribeActivitiesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeActivitiesResponse
newDescribeActivitiesResponse pHttpStatus_ =
  DescribeActivitiesResponse'
    { marker =
        Prelude.Nothing,
      userActivities = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The marker for the next set of results.
describeActivitiesResponse_marker :: Lens.Lens' DescribeActivitiesResponse (Prelude.Maybe Prelude.Text)
describeActivitiesResponse_marker = Lens.lens (\DescribeActivitiesResponse' {marker} -> marker) (\s@DescribeActivitiesResponse' {} a -> s {marker = a} :: DescribeActivitiesResponse)

-- | The list of activities for the specified user and time period.
describeActivitiesResponse_userActivities :: Lens.Lens' DescribeActivitiesResponse (Prelude.Maybe [Activity])
describeActivitiesResponse_userActivities = Lens.lens (\DescribeActivitiesResponse' {userActivities} -> userActivities) (\s@DescribeActivitiesResponse' {} a -> s {userActivities = a} :: DescribeActivitiesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeActivitiesResponse_httpStatus :: Lens.Lens' DescribeActivitiesResponse Prelude.Int
describeActivitiesResponse_httpStatus = Lens.lens (\DescribeActivitiesResponse' {httpStatus} -> httpStatus) (\s@DescribeActivitiesResponse' {} a -> s {httpStatus = a} :: DescribeActivitiesResponse)

instance Prelude.NFData DescribeActivitiesResponse where
  rnf DescribeActivitiesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf userActivities
      `Prelude.seq` Prelude.rnf httpStatus

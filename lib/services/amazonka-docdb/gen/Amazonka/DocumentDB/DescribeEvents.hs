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
-- Module      : Amazonka.DocumentDB.DescribeEvents
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to instances, security groups, snapshots, and DB
-- parameter groups for the past 14 days. You can obtain events specific to
-- a particular DB instance, security group, snapshot, or parameter group
-- by providing the name as a parameter. By default, the events of the past
-- hour are returned.
--
-- This operation returns paginated results.
module Amazonka.DocumentDB.DescribeEvents
  ( -- * Creating a Request
    DescribeEvents (..),
    newDescribeEvents,

    -- * Request Lenses
    describeEvents_marker,
    describeEvents_filters,
    describeEvents_sourceType,
    describeEvents_endTime,
    describeEvents_maxRecords,
    describeEvents_duration,
    describeEvents_sourceIdentifier,
    describeEvents_eventCategories,
    describeEvents_startTime,

    -- * Destructuring the Response
    DescribeEventsResponse (..),
    newDescribeEventsResponse,

    -- * Response Lenses
    describeEventsResponse_marker,
    describeEventsResponse_events,
    describeEventsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DocumentDB.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input to DescribeEvents.
--
-- /See:/ 'newDescribeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | This parameter is not currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | The event source to retrieve events for. If no value is specified, all
    -- events are returned.
    sourceType :: Prelude.Maybe SourceType,
    -- | The end of the time interval for which to retrieve events, specified in
    -- ISO 8601 format.
    --
    -- Example: 2009-07-08T18:00Z
    endTime :: Prelude.Maybe Core.ISO8601,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- (marker) is included in the response so that the remaining results can
    -- be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The number of minutes to retrieve events for.
    --
    -- Default: 60
    duration :: Prelude.Maybe Prelude.Int,
    -- | The identifier of the event source for which events are returned. If not
    -- specified, then all sources are included in the response.
    --
    -- Constraints:
    --
    -- -   If @SourceIdentifier@ is provided, @SourceType@ must also be
    --     provided.
    --
    -- -   If the source type is @DBInstance@, a @DBInstanceIdentifier@ must be
    --     provided.
    --
    -- -   If the source type is @DBSecurityGroup@, a @DBSecurityGroupName@
    --     must be provided.
    --
    -- -   If the source type is @DBParameterGroup@, a @DBParameterGroupName@
    --     must be provided.
    --
    -- -   If the source type is @DBSnapshot@, a @DBSnapshotIdentifier@ must be
    --     provided.
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens.
    sourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A list of event categories that trigger notifications for an event
    -- notification subscription.
    eventCategories :: Prelude.Maybe [Prelude.Text],
    -- | The beginning of the time interval to retrieve events for, specified in
    -- ISO 8601 format.
    --
    -- Example: 2009-07-08T18:00Z
    startTime :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEvents_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'filters', 'describeEvents_filters' - This parameter is not currently supported.
--
-- 'sourceType', 'describeEvents_sourceType' - The event source to retrieve events for. If no value is specified, all
-- events are returned.
--
-- 'endTime', 'describeEvents_endTime' - The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format.
--
-- Example: 2009-07-08T18:00Z
--
-- 'maxRecords', 'describeEvents_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- (marker) is included in the response so that the remaining results can
-- be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
--
-- 'duration', 'describeEvents_duration' - The number of minutes to retrieve events for.
--
-- Default: 60
--
-- 'sourceIdentifier', 'describeEvents_sourceIdentifier' - The identifier of the event source for which events are returned. If not
-- specified, then all sources are included in the response.
--
-- Constraints:
--
-- -   If @SourceIdentifier@ is provided, @SourceType@ must also be
--     provided.
--
-- -   If the source type is @DBInstance@, a @DBInstanceIdentifier@ must be
--     provided.
--
-- -   If the source type is @DBSecurityGroup@, a @DBSecurityGroupName@
--     must be provided.
--
-- -   If the source type is @DBParameterGroup@, a @DBParameterGroupName@
--     must be provided.
--
-- -   If the source type is @DBSnapshot@, a @DBSnapshotIdentifier@ must be
--     provided.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- 'eventCategories', 'describeEvents_eventCategories' - A list of event categories that trigger notifications for an event
-- notification subscription.
--
-- 'startTime', 'describeEvents_startTime' - The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format.
--
-- Example: 2009-07-08T18:00Z
newDescribeEvents ::
  DescribeEvents
newDescribeEvents =
  DescribeEvents'
    { marker = Prelude.Nothing,
      filters = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      endTime = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      duration = Prelude.Nothing,
      sourceIdentifier = Prelude.Nothing,
      eventCategories = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeEvents_marker :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_marker = Lens.lens (\DescribeEvents' {marker} -> marker) (\s@DescribeEvents' {} a -> s {marker = a} :: DescribeEvents)

-- | This parameter is not currently supported.
describeEvents_filters :: Lens.Lens' DescribeEvents (Prelude.Maybe [Filter])
describeEvents_filters = Lens.lens (\DescribeEvents' {filters} -> filters) (\s@DescribeEvents' {} a -> s {filters = a} :: DescribeEvents) Prelude.. Lens.mapping Lens.coerced

-- | The event source to retrieve events for. If no value is specified, all
-- events are returned.
describeEvents_sourceType :: Lens.Lens' DescribeEvents (Prelude.Maybe SourceType)
describeEvents_sourceType = Lens.lens (\DescribeEvents' {sourceType} -> sourceType) (\s@DescribeEvents' {} a -> s {sourceType = a} :: DescribeEvents)

-- | The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format.
--
-- Example: 2009-07-08T18:00Z
describeEvents_endTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_endTime = Lens.lens (\DescribeEvents' {endTime} -> endTime) (\s@DescribeEvents' {} a -> s {endTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- (marker) is included in the response so that the remaining results can
-- be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeEvents_maxRecords :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_maxRecords = Lens.lens (\DescribeEvents' {maxRecords} -> maxRecords) (\s@DescribeEvents' {} a -> s {maxRecords = a} :: DescribeEvents)

-- | The number of minutes to retrieve events for.
--
-- Default: 60
describeEvents_duration :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_duration = Lens.lens (\DescribeEvents' {duration} -> duration) (\s@DescribeEvents' {} a -> s {duration = a} :: DescribeEvents)

-- | The identifier of the event source for which events are returned. If not
-- specified, then all sources are included in the response.
--
-- Constraints:
--
-- -   If @SourceIdentifier@ is provided, @SourceType@ must also be
--     provided.
--
-- -   If the source type is @DBInstance@, a @DBInstanceIdentifier@ must be
--     provided.
--
-- -   If the source type is @DBSecurityGroup@, a @DBSecurityGroupName@
--     must be provided.
--
-- -   If the source type is @DBParameterGroup@, a @DBParameterGroupName@
--     must be provided.
--
-- -   If the source type is @DBSnapshot@, a @DBSnapshotIdentifier@ must be
--     provided.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
describeEvents_sourceIdentifier :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_sourceIdentifier = Lens.lens (\DescribeEvents' {sourceIdentifier} -> sourceIdentifier) (\s@DescribeEvents' {} a -> s {sourceIdentifier = a} :: DescribeEvents)

-- | A list of event categories that trigger notifications for an event
-- notification subscription.
describeEvents_eventCategories :: Lens.Lens' DescribeEvents (Prelude.Maybe [Prelude.Text])
describeEvents_eventCategories = Lens.lens (\DescribeEvents' {eventCategories} -> eventCategories) (\s@DescribeEvents' {} a -> s {eventCategories = a} :: DescribeEvents) Prelude.. Lens.mapping Lens.coerced

-- | The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format.
--
-- Example: 2009-07-08T18:00Z
describeEvents_startTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_startTime = Lens.lens (\DescribeEvents' {startTime} -> startTime) (\s@DescribeEvents' {} a -> s {startTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager DescribeEvents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeEventsResponse_marker Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeEventsResponse_events Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeEvents_marker
          Lens..~ rs
          Lens.^? describeEventsResponse_marker Prelude.. Lens._Just

instance Core.AWSRequest DescribeEvents where
  type
    AWSResponse DescribeEvents =
      DescribeEventsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeEventsResult"
      ( \s h x ->
          DescribeEventsResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> ( x Core..@? "Events" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "Event")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEvents where
  hashWithSalt _salt DescribeEvents' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` duration
      `Prelude.hashWithSalt` sourceIdentifier
      `Prelude.hashWithSalt` eventCategories
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData DescribeEvents where
  rnf DescribeEvents' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf duration
      `Prelude.seq` Prelude.rnf sourceIdentifier
      `Prelude.seq` Prelude.rnf eventCategories
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders DescribeEvents where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeEvents where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEvents where
  toQuery DescribeEvents' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeEvents" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "SourceType" Core.=: sourceType,
        "EndTime" Core.=: endTime,
        "MaxRecords" Core.=: maxRecords,
        "Duration" Core.=: duration,
        "SourceIdentifier" Core.=: sourceIdentifier,
        "EventCategories"
          Core.=: Core.toQuery
            ( Core.toQueryList "EventCategory"
                Prelude.<$> eventCategories
            ),
        "StartTime" Core.=: startTime
      ]

-- | Represents the output of DescribeEvents.
--
-- /See:/ 'newDescribeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Detailed information about one or more events.
    events :: Prelude.Maybe [Event],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEventsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'events', 'describeEventsResponse_events' - Detailed information about one or more events.
--
-- 'httpStatus', 'describeEventsResponse_httpStatus' - The response's http status code.
newDescribeEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventsResponse
newDescribeEventsResponse pHttpStatus_ =
  DescribeEventsResponse'
    { marker = Prelude.Nothing,
      events = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeEventsResponse_marker :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe Prelude.Text)
describeEventsResponse_marker = Lens.lens (\DescribeEventsResponse' {marker} -> marker) (\s@DescribeEventsResponse' {} a -> s {marker = a} :: DescribeEventsResponse)

-- | Detailed information about one or more events.
describeEventsResponse_events :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe [Event])
describeEventsResponse_events = Lens.lens (\DescribeEventsResponse' {events} -> events) (\s@DescribeEventsResponse' {} a -> s {events = a} :: DescribeEventsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEventsResponse_httpStatus :: Lens.Lens' DescribeEventsResponse Prelude.Int
describeEventsResponse_httpStatus = Lens.lens (\DescribeEventsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventsResponse' {} a -> s {httpStatus = a} :: DescribeEventsResponse)

instance Prelude.NFData DescribeEventsResponse where
  rnf DescribeEventsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf events
      `Prelude.seq` Prelude.rnf httpStatus

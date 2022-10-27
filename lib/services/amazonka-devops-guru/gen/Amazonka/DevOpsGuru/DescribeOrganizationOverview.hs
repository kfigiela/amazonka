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
-- Module      : Amazonka.DevOpsGuru.DescribeOrganizationOverview
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an overview of your organization\'s history based on the
-- specified time range. The overview includes the total reactive and
-- proactive insights.
module Amazonka.DevOpsGuru.DescribeOrganizationOverview
  ( -- * Creating a Request
    DescribeOrganizationOverview (..),
    newDescribeOrganizationOverview,

    -- * Request Lenses
    describeOrganizationOverview_accountIds,
    describeOrganizationOverview_toTime,
    describeOrganizationOverview_organizationalUnitIds,
    describeOrganizationOverview_fromTime,

    -- * Destructuring the Response
    DescribeOrganizationOverviewResponse (..),
    newDescribeOrganizationOverviewResponse,

    -- * Response Lenses
    describeOrganizationOverviewResponse_httpStatus,
    describeOrganizationOverviewResponse_reactiveInsights,
    describeOrganizationOverviewResponse_proactiveInsights,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeOrganizationOverview' smart constructor.
data DescribeOrganizationOverview = DescribeOrganizationOverview'
  { -- | The ID of the Amazon Web Services account.
    accountIds :: Prelude.Maybe [Prelude.Text],
    -- | The end of the time range passed in. The start time granularity is at
    -- the day level. The floor of the start time is used. Returned information
    -- occurred before this day. If this is not specified, then the current day
    -- is used.
    toTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the organizational unit.
    organizationalUnitIds :: Prelude.Maybe [Prelude.Text],
    -- | The start of the time range passed in. The start time granularity is at
    -- the day level. The floor of the start time is used. Returned information
    -- occurred after this day.
    fromTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrganizationOverview' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'describeOrganizationOverview_accountIds' - The ID of the Amazon Web Services account.
--
-- 'toTime', 'describeOrganizationOverview_toTime' - The end of the time range passed in. The start time granularity is at
-- the day level. The floor of the start time is used. Returned information
-- occurred before this day. If this is not specified, then the current day
-- is used.
--
-- 'organizationalUnitIds', 'describeOrganizationOverview_organizationalUnitIds' - The ID of the organizational unit.
--
-- 'fromTime', 'describeOrganizationOverview_fromTime' - The start of the time range passed in. The start time granularity is at
-- the day level. The floor of the start time is used. Returned information
-- occurred after this day.
newDescribeOrganizationOverview ::
  -- | 'fromTime'
  Prelude.UTCTime ->
  DescribeOrganizationOverview
newDescribeOrganizationOverview pFromTime_ =
  DescribeOrganizationOverview'
    { accountIds =
        Prelude.Nothing,
      toTime = Prelude.Nothing,
      organizationalUnitIds = Prelude.Nothing,
      fromTime = Core._Time Lens.# pFromTime_
    }

-- | The ID of the Amazon Web Services account.
describeOrganizationOverview_accountIds :: Lens.Lens' DescribeOrganizationOverview (Prelude.Maybe [Prelude.Text])
describeOrganizationOverview_accountIds = Lens.lens (\DescribeOrganizationOverview' {accountIds} -> accountIds) (\s@DescribeOrganizationOverview' {} a -> s {accountIds = a} :: DescribeOrganizationOverview) Prelude.. Lens.mapping Lens.coerced

-- | The end of the time range passed in. The start time granularity is at
-- the day level. The floor of the start time is used. Returned information
-- occurred before this day. If this is not specified, then the current day
-- is used.
describeOrganizationOverview_toTime :: Lens.Lens' DescribeOrganizationOverview (Prelude.Maybe Prelude.UTCTime)
describeOrganizationOverview_toTime = Lens.lens (\DescribeOrganizationOverview' {toTime} -> toTime) (\s@DescribeOrganizationOverview' {} a -> s {toTime = a} :: DescribeOrganizationOverview) Prelude.. Lens.mapping Core._Time

-- | The ID of the organizational unit.
describeOrganizationOverview_organizationalUnitIds :: Lens.Lens' DescribeOrganizationOverview (Prelude.Maybe [Prelude.Text])
describeOrganizationOverview_organizationalUnitIds = Lens.lens (\DescribeOrganizationOverview' {organizationalUnitIds} -> organizationalUnitIds) (\s@DescribeOrganizationOverview' {} a -> s {organizationalUnitIds = a} :: DescribeOrganizationOverview) Prelude.. Lens.mapping Lens.coerced

-- | The start of the time range passed in. The start time granularity is at
-- the day level. The floor of the start time is used. Returned information
-- occurred after this day.
describeOrganizationOverview_fromTime :: Lens.Lens' DescribeOrganizationOverview Prelude.UTCTime
describeOrganizationOverview_fromTime = Lens.lens (\DescribeOrganizationOverview' {fromTime} -> fromTime) (\s@DescribeOrganizationOverview' {} a -> s {fromTime = a} :: DescribeOrganizationOverview) Prelude.. Core._Time

instance Core.AWSRequest DescribeOrganizationOverview where
  type
    AWSResponse DescribeOrganizationOverview =
      DescribeOrganizationOverviewResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOrganizationOverviewResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ReactiveInsights")
            Prelude.<*> (x Core..:> "ProactiveInsights")
      )

instance
  Prelude.Hashable
    DescribeOrganizationOverview
  where
  hashWithSalt _salt DescribeOrganizationOverview' {..} =
    _salt `Prelude.hashWithSalt` accountIds
      `Prelude.hashWithSalt` toTime
      `Prelude.hashWithSalt` organizationalUnitIds
      `Prelude.hashWithSalt` fromTime

instance Prelude.NFData DescribeOrganizationOverview where
  rnf DescribeOrganizationOverview' {..} =
    Prelude.rnf accountIds
      `Prelude.seq` Prelude.rnf toTime
      `Prelude.seq` Prelude.rnf organizationalUnitIds
      `Prelude.seq` Prelude.rnf fromTime

instance Core.ToHeaders DescribeOrganizationOverview where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeOrganizationOverview where
  toJSON DescribeOrganizationOverview' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AccountIds" Core..=) Prelude.<$> accountIds,
            ("ToTime" Core..=) Prelude.<$> toTime,
            ("OrganizationalUnitIds" Core..=)
              Prelude.<$> organizationalUnitIds,
            Prelude.Just ("FromTime" Core..= fromTime)
          ]
      )

instance Core.ToPath DescribeOrganizationOverview where
  toPath = Prelude.const "/organization/overview"

instance Core.ToQuery DescribeOrganizationOverview where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeOrganizationOverviewResponse' smart constructor.
data DescribeOrganizationOverviewResponse = DescribeOrganizationOverviewResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An integer that specifies the number of open reactive insights in your
    -- Amazon Web Services account.
    reactiveInsights :: Prelude.Int,
    -- | An integer that specifies the number of open proactive insights in your
    -- Amazon Web Services account.
    proactiveInsights :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrganizationOverviewResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeOrganizationOverviewResponse_httpStatus' - The response's http status code.
--
-- 'reactiveInsights', 'describeOrganizationOverviewResponse_reactiveInsights' - An integer that specifies the number of open reactive insights in your
-- Amazon Web Services account.
--
-- 'proactiveInsights', 'describeOrganizationOverviewResponse_proactiveInsights' - An integer that specifies the number of open proactive insights in your
-- Amazon Web Services account.
newDescribeOrganizationOverviewResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'reactiveInsights'
  Prelude.Int ->
  -- | 'proactiveInsights'
  Prelude.Int ->
  DescribeOrganizationOverviewResponse
newDescribeOrganizationOverviewResponse
  pHttpStatus_
  pReactiveInsights_
  pProactiveInsights_ =
    DescribeOrganizationOverviewResponse'
      { httpStatus =
          pHttpStatus_,
        reactiveInsights = pReactiveInsights_,
        proactiveInsights =
          pProactiveInsights_
      }

-- | The response's http status code.
describeOrganizationOverviewResponse_httpStatus :: Lens.Lens' DescribeOrganizationOverviewResponse Prelude.Int
describeOrganizationOverviewResponse_httpStatus = Lens.lens (\DescribeOrganizationOverviewResponse' {httpStatus} -> httpStatus) (\s@DescribeOrganizationOverviewResponse' {} a -> s {httpStatus = a} :: DescribeOrganizationOverviewResponse)

-- | An integer that specifies the number of open reactive insights in your
-- Amazon Web Services account.
describeOrganizationOverviewResponse_reactiveInsights :: Lens.Lens' DescribeOrganizationOverviewResponse Prelude.Int
describeOrganizationOverviewResponse_reactiveInsights = Lens.lens (\DescribeOrganizationOverviewResponse' {reactiveInsights} -> reactiveInsights) (\s@DescribeOrganizationOverviewResponse' {} a -> s {reactiveInsights = a} :: DescribeOrganizationOverviewResponse)

-- | An integer that specifies the number of open proactive insights in your
-- Amazon Web Services account.
describeOrganizationOverviewResponse_proactiveInsights :: Lens.Lens' DescribeOrganizationOverviewResponse Prelude.Int
describeOrganizationOverviewResponse_proactiveInsights = Lens.lens (\DescribeOrganizationOverviewResponse' {proactiveInsights} -> proactiveInsights) (\s@DescribeOrganizationOverviewResponse' {} a -> s {proactiveInsights = a} :: DescribeOrganizationOverviewResponse)

instance
  Prelude.NFData
    DescribeOrganizationOverviewResponse
  where
  rnf DescribeOrganizationOverviewResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf reactiveInsights
      `Prelude.seq` Prelude.rnf proactiveInsights

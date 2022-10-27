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
-- Module      : Amazonka.Shield.ListAttacks
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all ongoing DDoS attacks or all DDoS attacks during a specified
-- time period.
--
-- This operation returns paginated results.
module Amazonka.Shield.ListAttacks
  ( -- * Creating a Request
    ListAttacks (..),
    newListAttacks,

    -- * Request Lenses
    listAttacks_nextToken,
    listAttacks_endTime,
    listAttacks_maxResults,
    listAttacks_startTime,
    listAttacks_resourceArns,

    -- * Destructuring the Response
    ListAttacksResponse (..),
    newListAttacksResponse,

    -- * Response Lenses
    listAttacksResponse_nextToken,
    listAttacksResponse_attackSummaries,
    listAttacksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Shield.Types

-- | /See:/ 'newListAttacks' smart constructor.
data ListAttacks = ListAttacks'
  { -- | When you request a list of objects from Shield Advanced, if the response
    -- does not include all of the remaining available objects, Shield Advanced
    -- includes a @NextToken@ value in the response. You can retrieve the next
    -- batch of objects by requesting the list again and providing the token
    -- that was returned by the prior call in your request.
    --
    -- You can indicate the maximum number of objects that you want Shield
    -- Advanced to return for a single call with the @MaxResults@ setting.
    -- Shield Advanced will not return more than @MaxResults@ objects, but may
    -- return fewer, even if more objects are still available.
    --
    -- Whenever more objects remain that Shield Advanced has not yet returned
    -- to you, the response will include a @NextToken@ value.
    --
    -- On your first call to a list operation, leave this setting empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The end of the time period for the attacks. This is a @timestamp@ type.
    -- The request syntax listing for this call indicates a @number@ type, but
    -- you can provide the time in any valid
    -- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
    -- setting.
    endTime :: Prelude.Maybe TimeRange,
    -- | The greatest number of objects that you want Shield Advanced to return
    -- to the list request. Shield Advanced might return fewer objects than you
    -- indicate in this setting, even if more objects are available. If there
    -- are more objects remaining, Shield Advanced will always also return a
    -- @NextToken@ value in the response.
    --
    -- The default setting is 20.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The start of the time period for the attacks. This is a @timestamp@
    -- type. The request syntax listing for this call indicates a @number@
    -- type, but you can provide the time in any valid
    -- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
    -- setting.
    startTime :: Prelude.Maybe TimeRange,
    -- | The ARNs (Amazon Resource Names) of the resources that were attacked. If
    -- you leave this blank, all applicable resources for this account will be
    -- included.
    resourceArns :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAttacks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAttacks_nextToken' - When you request a list of objects from Shield Advanced, if the response
-- does not include all of the remaining available objects, Shield Advanced
-- includes a @NextToken@ value in the response. You can retrieve the next
-- batch of objects by requesting the list again and providing the token
-- that was returned by the prior call in your request.
--
-- You can indicate the maximum number of objects that you want Shield
-- Advanced to return for a single call with the @MaxResults@ setting.
-- Shield Advanced will not return more than @MaxResults@ objects, but may
-- return fewer, even if more objects are still available.
--
-- Whenever more objects remain that Shield Advanced has not yet returned
-- to you, the response will include a @NextToken@ value.
--
-- On your first call to a list operation, leave this setting empty.
--
-- 'endTime', 'listAttacks_endTime' - The end of the time period for the attacks. This is a @timestamp@ type.
-- The request syntax listing for this call indicates a @number@ type, but
-- you can provide the time in any valid
-- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
-- setting.
--
-- 'maxResults', 'listAttacks_maxResults' - The greatest number of objects that you want Shield Advanced to return
-- to the list request. Shield Advanced might return fewer objects than you
-- indicate in this setting, even if more objects are available. If there
-- are more objects remaining, Shield Advanced will always also return a
-- @NextToken@ value in the response.
--
-- The default setting is 20.
--
-- 'startTime', 'listAttacks_startTime' - The start of the time period for the attacks. This is a @timestamp@
-- type. The request syntax listing for this call indicates a @number@
-- type, but you can provide the time in any valid
-- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
-- setting.
--
-- 'resourceArns', 'listAttacks_resourceArns' - The ARNs (Amazon Resource Names) of the resources that were attacked. If
-- you leave this blank, all applicable resources for this account will be
-- included.
newListAttacks ::
  ListAttacks
newListAttacks =
  ListAttacks'
    { nextToken = Prelude.Nothing,
      endTime = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      startTime = Prelude.Nothing,
      resourceArns = Prelude.Nothing
    }

-- | When you request a list of objects from Shield Advanced, if the response
-- does not include all of the remaining available objects, Shield Advanced
-- includes a @NextToken@ value in the response. You can retrieve the next
-- batch of objects by requesting the list again and providing the token
-- that was returned by the prior call in your request.
--
-- You can indicate the maximum number of objects that you want Shield
-- Advanced to return for a single call with the @MaxResults@ setting.
-- Shield Advanced will not return more than @MaxResults@ objects, but may
-- return fewer, even if more objects are still available.
--
-- Whenever more objects remain that Shield Advanced has not yet returned
-- to you, the response will include a @NextToken@ value.
--
-- On your first call to a list operation, leave this setting empty.
listAttacks_nextToken :: Lens.Lens' ListAttacks (Prelude.Maybe Prelude.Text)
listAttacks_nextToken = Lens.lens (\ListAttacks' {nextToken} -> nextToken) (\s@ListAttacks' {} a -> s {nextToken = a} :: ListAttacks)

-- | The end of the time period for the attacks. This is a @timestamp@ type.
-- The request syntax listing for this call indicates a @number@ type, but
-- you can provide the time in any valid
-- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
-- setting.
listAttacks_endTime :: Lens.Lens' ListAttacks (Prelude.Maybe TimeRange)
listAttacks_endTime = Lens.lens (\ListAttacks' {endTime} -> endTime) (\s@ListAttacks' {} a -> s {endTime = a} :: ListAttacks)

-- | The greatest number of objects that you want Shield Advanced to return
-- to the list request. Shield Advanced might return fewer objects than you
-- indicate in this setting, even if more objects are available. If there
-- are more objects remaining, Shield Advanced will always also return a
-- @NextToken@ value in the response.
--
-- The default setting is 20.
listAttacks_maxResults :: Lens.Lens' ListAttacks (Prelude.Maybe Prelude.Natural)
listAttacks_maxResults = Lens.lens (\ListAttacks' {maxResults} -> maxResults) (\s@ListAttacks' {} a -> s {maxResults = a} :: ListAttacks)

-- | The start of the time period for the attacks. This is a @timestamp@
-- type. The request syntax listing for this call indicates a @number@
-- type, but you can provide the time in any valid
-- <https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp timestamp format>
-- setting.
listAttacks_startTime :: Lens.Lens' ListAttacks (Prelude.Maybe TimeRange)
listAttacks_startTime = Lens.lens (\ListAttacks' {startTime} -> startTime) (\s@ListAttacks' {} a -> s {startTime = a} :: ListAttacks)

-- | The ARNs (Amazon Resource Names) of the resources that were attacked. If
-- you leave this blank, all applicable resources for this account will be
-- included.
listAttacks_resourceArns :: Lens.Lens' ListAttacks (Prelude.Maybe [Prelude.Text])
listAttacks_resourceArns = Lens.lens (\ListAttacks' {resourceArns} -> resourceArns) (\s@ListAttacks' {} a -> s {resourceArns = a} :: ListAttacks) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSPager ListAttacks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAttacksResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAttacksResponse_attackSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAttacks_nextToken
          Lens..~ rs
          Lens.^? listAttacksResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListAttacks where
  type AWSResponse ListAttacks = ListAttacksResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAttacksResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "AttackSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAttacks where
  hashWithSalt _salt ListAttacks' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` resourceArns

instance Prelude.NFData ListAttacks where
  rnf ListAttacks' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf resourceArns

instance Core.ToHeaders ListAttacks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShield_20160616.ListAttacks" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAttacks where
  toJSON ListAttacks' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("EndTime" Core..=) Prelude.<$> endTime,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("StartTime" Core..=) Prelude.<$> startTime,
            ("ResourceArns" Core..=) Prelude.<$> resourceArns
          ]
      )

instance Core.ToPath ListAttacks where
  toPath = Prelude.const "/"

instance Core.ToQuery ListAttacks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAttacksResponse' smart constructor.
data ListAttacksResponse = ListAttacksResponse'
  { -- | When you request a list of objects from Shield Advanced, if the response
    -- does not include all of the remaining available objects, Shield Advanced
    -- includes a @NextToken@ value in the response. You can retrieve the next
    -- batch of objects by requesting the list again and providing the token
    -- that was returned by the prior call in your request.
    --
    -- You can indicate the maximum number of objects that you want Shield
    -- Advanced to return for a single call with the @MaxResults@ setting.
    -- Shield Advanced will not return more than @MaxResults@ objects, but may
    -- return fewer, even if more objects are still available.
    --
    -- Whenever more objects remain that Shield Advanced has not yet returned
    -- to you, the response will include a @NextToken@ value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The attack information for the specified time range.
    attackSummaries :: Prelude.Maybe [AttackSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAttacksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAttacksResponse_nextToken' - When you request a list of objects from Shield Advanced, if the response
-- does not include all of the remaining available objects, Shield Advanced
-- includes a @NextToken@ value in the response. You can retrieve the next
-- batch of objects by requesting the list again and providing the token
-- that was returned by the prior call in your request.
--
-- You can indicate the maximum number of objects that you want Shield
-- Advanced to return for a single call with the @MaxResults@ setting.
-- Shield Advanced will not return more than @MaxResults@ objects, but may
-- return fewer, even if more objects are still available.
--
-- Whenever more objects remain that Shield Advanced has not yet returned
-- to you, the response will include a @NextToken@ value.
--
-- 'attackSummaries', 'listAttacksResponse_attackSummaries' - The attack information for the specified time range.
--
-- 'httpStatus', 'listAttacksResponse_httpStatus' - The response's http status code.
newListAttacksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAttacksResponse
newListAttacksResponse pHttpStatus_ =
  ListAttacksResponse'
    { nextToken = Prelude.Nothing,
      attackSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | When you request a list of objects from Shield Advanced, if the response
-- does not include all of the remaining available objects, Shield Advanced
-- includes a @NextToken@ value in the response. You can retrieve the next
-- batch of objects by requesting the list again and providing the token
-- that was returned by the prior call in your request.
--
-- You can indicate the maximum number of objects that you want Shield
-- Advanced to return for a single call with the @MaxResults@ setting.
-- Shield Advanced will not return more than @MaxResults@ objects, but may
-- return fewer, even if more objects are still available.
--
-- Whenever more objects remain that Shield Advanced has not yet returned
-- to you, the response will include a @NextToken@ value.
listAttacksResponse_nextToken :: Lens.Lens' ListAttacksResponse (Prelude.Maybe Prelude.Text)
listAttacksResponse_nextToken = Lens.lens (\ListAttacksResponse' {nextToken} -> nextToken) (\s@ListAttacksResponse' {} a -> s {nextToken = a} :: ListAttacksResponse)

-- | The attack information for the specified time range.
listAttacksResponse_attackSummaries :: Lens.Lens' ListAttacksResponse (Prelude.Maybe [AttackSummary])
listAttacksResponse_attackSummaries = Lens.lens (\ListAttacksResponse' {attackSummaries} -> attackSummaries) (\s@ListAttacksResponse' {} a -> s {attackSummaries = a} :: ListAttacksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAttacksResponse_httpStatus :: Lens.Lens' ListAttacksResponse Prelude.Int
listAttacksResponse_httpStatus = Lens.lens (\ListAttacksResponse' {httpStatus} -> httpStatus) (\s@ListAttacksResponse' {} a -> s {httpStatus = a} :: ListAttacksResponse)

instance Prelude.NFData ListAttacksResponse where
  rnf ListAttacksResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf attackSummaries
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Outposts.ListOutposts
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Outposts for your Amazon Web Services account.
--
-- Use filters to return specific results. If you specify multiple filters,
-- the results include only the resources that match all of the specified
-- filters. For a filter where you can specify multiple values, the results
-- include items that match any of the values that you specify for the
-- filter.
module Amazonka.Outposts.ListOutposts
  ( -- * Creating a Request
    ListOutposts (..),
    newListOutposts,

    -- * Request Lenses
    listOutposts_nextToken,
    listOutposts_maxResults,
    listOutposts_lifeCycleStatusFilter,
    listOutposts_availabilityZoneFilter,
    listOutposts_availabilityZoneIdFilter,

    -- * Destructuring the Response
    ListOutpostsResponse (..),
    newListOutpostsResponse,

    -- * Response Lenses
    listOutpostsResponse_nextToken,
    listOutpostsResponse_outposts,
    listOutpostsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Outposts.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListOutposts' smart constructor.
data ListOutposts = ListOutposts'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Filters the results by the lifecycle status.
    lifeCycleStatusFilter :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Filters the results by Availability Zone (for example, @us-east-1a@).
    availabilityZoneFilter :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Filters the results by AZ ID (for example, @use1-az1@).
    availabilityZoneIdFilter :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListOutposts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listOutposts_nextToken' - Undocumented member.
--
-- 'maxResults', 'listOutposts_maxResults' - Undocumented member.
--
-- 'lifeCycleStatusFilter', 'listOutposts_lifeCycleStatusFilter' - Filters the results by the lifecycle status.
--
-- 'availabilityZoneFilter', 'listOutposts_availabilityZoneFilter' - Filters the results by Availability Zone (for example, @us-east-1a@).
--
-- 'availabilityZoneIdFilter', 'listOutposts_availabilityZoneIdFilter' - Filters the results by AZ ID (for example, @use1-az1@).
newListOutposts ::
  ListOutposts
newListOutposts =
  ListOutposts'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      lifeCycleStatusFilter = Prelude.Nothing,
      availabilityZoneFilter = Prelude.Nothing,
      availabilityZoneIdFilter = Prelude.Nothing
    }

-- | Undocumented member.
listOutposts_nextToken :: Lens.Lens' ListOutposts (Prelude.Maybe Prelude.Text)
listOutposts_nextToken = Lens.lens (\ListOutposts' {nextToken} -> nextToken) (\s@ListOutposts' {} a -> s {nextToken = a} :: ListOutposts)

-- | Undocumented member.
listOutposts_maxResults :: Lens.Lens' ListOutposts (Prelude.Maybe Prelude.Natural)
listOutposts_maxResults = Lens.lens (\ListOutposts' {maxResults} -> maxResults) (\s@ListOutposts' {} a -> s {maxResults = a} :: ListOutposts)

-- | Filters the results by the lifecycle status.
listOutposts_lifeCycleStatusFilter :: Lens.Lens' ListOutposts (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listOutposts_lifeCycleStatusFilter = Lens.lens (\ListOutposts' {lifeCycleStatusFilter} -> lifeCycleStatusFilter) (\s@ListOutposts' {} a -> s {lifeCycleStatusFilter = a} :: ListOutposts) Prelude.. Lens.mapping Lens.coerced

-- | Filters the results by Availability Zone (for example, @us-east-1a@).
listOutposts_availabilityZoneFilter :: Lens.Lens' ListOutposts (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listOutposts_availabilityZoneFilter = Lens.lens (\ListOutposts' {availabilityZoneFilter} -> availabilityZoneFilter) (\s@ListOutposts' {} a -> s {availabilityZoneFilter = a} :: ListOutposts) Prelude.. Lens.mapping Lens.coerced

-- | Filters the results by AZ ID (for example, @use1-az1@).
listOutposts_availabilityZoneIdFilter :: Lens.Lens' ListOutposts (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listOutposts_availabilityZoneIdFilter = Lens.lens (\ListOutposts' {availabilityZoneIdFilter} -> availabilityZoneIdFilter) (\s@ListOutposts' {} a -> s {availabilityZoneIdFilter = a} :: ListOutposts) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest ListOutposts where
  type AWSResponse ListOutposts = ListOutpostsResponse
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListOutpostsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Outposts" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService ListOutposts where
  service _proxy = defaultService

instance Prelude.Hashable ListOutposts where
  hashWithSalt _salt ListOutposts' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` lifeCycleStatusFilter
      `Prelude.hashWithSalt` availabilityZoneFilter
      `Prelude.hashWithSalt` availabilityZoneIdFilter

instance Prelude.NFData ListOutposts where
  rnf ListOutposts' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf lifeCycleStatusFilter
      `Prelude.seq` Prelude.rnf availabilityZoneFilter
      `Prelude.seq` Prelude.rnf availabilityZoneIdFilter

instance Core.ToHeaders ListOutposts where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListOutposts where
  toPath = Prelude.const "/outposts"

instance Core.ToQuery ListOutposts where
  toQuery ListOutposts' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults,
        "LifeCycleStatusFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> lifeCycleStatusFilter
            ),
        "AvailabilityZoneFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> availabilityZoneFilter
            ),
        "AvailabilityZoneIdFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> availabilityZoneIdFilter
            )
      ]

-- | /See:/ 'newListOutpostsResponse' smart constructor.
data ListOutpostsResponse = ListOutpostsResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    outposts :: Prelude.Maybe [Outpost],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListOutpostsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listOutpostsResponse_nextToken' - Undocumented member.
--
-- 'outposts', 'listOutpostsResponse_outposts' - Undocumented member.
--
-- 'httpStatus', 'listOutpostsResponse_httpStatus' - The response's http status code.
newListOutpostsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListOutpostsResponse
newListOutpostsResponse pHttpStatus_ =
  ListOutpostsResponse'
    { nextToken = Prelude.Nothing,
      outposts = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listOutpostsResponse_nextToken :: Lens.Lens' ListOutpostsResponse (Prelude.Maybe Prelude.Text)
listOutpostsResponse_nextToken = Lens.lens (\ListOutpostsResponse' {nextToken} -> nextToken) (\s@ListOutpostsResponse' {} a -> s {nextToken = a} :: ListOutpostsResponse)

-- | Undocumented member.
listOutpostsResponse_outposts :: Lens.Lens' ListOutpostsResponse (Prelude.Maybe [Outpost])
listOutpostsResponse_outposts = Lens.lens (\ListOutpostsResponse' {outposts} -> outposts) (\s@ListOutpostsResponse' {} a -> s {outposts = a} :: ListOutpostsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listOutpostsResponse_httpStatus :: Lens.Lens' ListOutpostsResponse Prelude.Int
listOutpostsResponse_httpStatus = Lens.lens (\ListOutpostsResponse' {httpStatus} -> httpStatus) (\s@ListOutpostsResponse' {} a -> s {httpStatus = a} :: ListOutpostsResponse)

instance Prelude.NFData ListOutpostsResponse where
  rnf ListOutpostsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf outposts
      `Prelude.seq` Prelude.rnf httpStatus

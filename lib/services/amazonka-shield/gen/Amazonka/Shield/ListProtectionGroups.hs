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
-- Module      : Amazonka.Shield.ListProtectionGroups
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves ProtectionGroup objects for the account. You can retrieve all
-- protection groups or you can provide filtering criteria and retrieve
-- just the subset of protection groups that match the criteria.
module Amazonka.Shield.ListProtectionGroups
  ( -- * Creating a Request
    ListProtectionGroups (..),
    newListProtectionGroups,

    -- * Request Lenses
    listProtectionGroups_nextToken,
    listProtectionGroups_maxResults,
    listProtectionGroups_inclusionFilters,

    -- * Destructuring the Response
    ListProtectionGroupsResponse (..),
    newListProtectionGroupsResponse,

    -- * Response Lenses
    listProtectionGroupsResponse_nextToken,
    listProtectionGroupsResponse_httpStatus,
    listProtectionGroupsResponse_protectionGroups,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Shield.Types

-- | /See:/ 'newListProtectionGroups' smart constructor.
data ListProtectionGroups = ListProtectionGroups'
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
    -- | The greatest number of objects that you want Shield Advanced to return
    -- to the list request. Shield Advanced might return fewer objects than you
    -- indicate in this setting, even if more objects are available. If there
    -- are more objects remaining, Shield Advanced will always also return a
    -- @NextToken@ value in the response.
    --
    -- The default setting is 20.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Narrows the set of protection groups that the call retrieves. You can
    -- retrieve a single protection group by its name and you can retrieve all
    -- protection groups that are configured with specific pattern or
    -- aggregation settings. You can provide up to one criteria per filter
    -- type. Shield Advanced returns the protection groups that exactly match
    -- all of the search criteria that you provide.
    inclusionFilters :: Prelude.Maybe InclusionProtectionGroupFilters
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProtectionGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProtectionGroups_nextToken' - When you request a list of objects from Shield Advanced, if the response
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
-- 'maxResults', 'listProtectionGroups_maxResults' - The greatest number of objects that you want Shield Advanced to return
-- to the list request. Shield Advanced might return fewer objects than you
-- indicate in this setting, even if more objects are available. If there
-- are more objects remaining, Shield Advanced will always also return a
-- @NextToken@ value in the response.
--
-- The default setting is 20.
--
-- 'inclusionFilters', 'listProtectionGroups_inclusionFilters' - Narrows the set of protection groups that the call retrieves. You can
-- retrieve a single protection group by its name and you can retrieve all
-- protection groups that are configured with specific pattern or
-- aggregation settings. You can provide up to one criteria per filter
-- type. Shield Advanced returns the protection groups that exactly match
-- all of the search criteria that you provide.
newListProtectionGroups ::
  ListProtectionGroups
newListProtectionGroups =
  ListProtectionGroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      inclusionFilters = Prelude.Nothing
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
listProtectionGroups_nextToken :: Lens.Lens' ListProtectionGroups (Prelude.Maybe Prelude.Text)
listProtectionGroups_nextToken = Lens.lens (\ListProtectionGroups' {nextToken} -> nextToken) (\s@ListProtectionGroups' {} a -> s {nextToken = a} :: ListProtectionGroups)

-- | The greatest number of objects that you want Shield Advanced to return
-- to the list request. Shield Advanced might return fewer objects than you
-- indicate in this setting, even if more objects are available. If there
-- are more objects remaining, Shield Advanced will always also return a
-- @NextToken@ value in the response.
--
-- The default setting is 20.
listProtectionGroups_maxResults :: Lens.Lens' ListProtectionGroups (Prelude.Maybe Prelude.Natural)
listProtectionGroups_maxResults = Lens.lens (\ListProtectionGroups' {maxResults} -> maxResults) (\s@ListProtectionGroups' {} a -> s {maxResults = a} :: ListProtectionGroups)

-- | Narrows the set of protection groups that the call retrieves. You can
-- retrieve a single protection group by its name and you can retrieve all
-- protection groups that are configured with specific pattern or
-- aggregation settings. You can provide up to one criteria per filter
-- type. Shield Advanced returns the protection groups that exactly match
-- all of the search criteria that you provide.
listProtectionGroups_inclusionFilters :: Lens.Lens' ListProtectionGroups (Prelude.Maybe InclusionProtectionGroupFilters)
listProtectionGroups_inclusionFilters = Lens.lens (\ListProtectionGroups' {inclusionFilters} -> inclusionFilters) (\s@ListProtectionGroups' {} a -> s {inclusionFilters = a} :: ListProtectionGroups)

instance Core.AWSRequest ListProtectionGroups where
  type
    AWSResponse ListProtectionGroups =
      ListProtectionGroupsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProtectionGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "ProtectionGroups"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListProtectionGroups where
  hashWithSalt _salt ListProtectionGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` inclusionFilters

instance Prelude.NFData ListProtectionGroups where
  rnf ListProtectionGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf inclusionFilters

instance Core.ToHeaders ListProtectionGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShield_20160616.ListProtectionGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListProtectionGroups where
  toJSON ListProtectionGroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("InclusionFilters" Core..=)
              Prelude.<$> inclusionFilters
          ]
      )

instance Core.ToPath ListProtectionGroups where
  toPath = Prelude.const "/"

instance Core.ToQuery ListProtectionGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListProtectionGroupsResponse' smart constructor.
data ListProtectionGroupsResponse = ListProtectionGroupsResponse'
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
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    protectionGroups :: [ProtectionGroup]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProtectionGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProtectionGroupsResponse_nextToken' - When you request a list of objects from Shield Advanced, if the response
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
-- 'httpStatus', 'listProtectionGroupsResponse_httpStatus' - The response's http status code.
--
-- 'protectionGroups', 'listProtectionGroupsResponse_protectionGroups' -
newListProtectionGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListProtectionGroupsResponse
newListProtectionGroupsResponse pHttpStatus_ =
  ListProtectionGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      protectionGroups = Prelude.mempty
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
listProtectionGroupsResponse_nextToken :: Lens.Lens' ListProtectionGroupsResponse (Prelude.Maybe Prelude.Text)
listProtectionGroupsResponse_nextToken = Lens.lens (\ListProtectionGroupsResponse' {nextToken} -> nextToken) (\s@ListProtectionGroupsResponse' {} a -> s {nextToken = a} :: ListProtectionGroupsResponse)

-- | The response's http status code.
listProtectionGroupsResponse_httpStatus :: Lens.Lens' ListProtectionGroupsResponse Prelude.Int
listProtectionGroupsResponse_httpStatus = Lens.lens (\ListProtectionGroupsResponse' {httpStatus} -> httpStatus) (\s@ListProtectionGroupsResponse' {} a -> s {httpStatus = a} :: ListProtectionGroupsResponse)

-- |
listProtectionGroupsResponse_protectionGroups :: Lens.Lens' ListProtectionGroupsResponse [ProtectionGroup]
listProtectionGroupsResponse_protectionGroups = Lens.lens (\ListProtectionGroupsResponse' {protectionGroups} -> protectionGroups) (\s@ListProtectionGroupsResponse' {} a -> s {protectionGroups = a} :: ListProtectionGroupsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListProtectionGroupsResponse where
  rnf ListProtectionGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf protectionGroups

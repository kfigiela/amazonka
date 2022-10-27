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
-- Module      : Amazonka.AlexaBusiness.SearchNetworkProfiles
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches network profiles and lists the ones that meet a set of filter
-- and sort criteria.
module Amazonka.AlexaBusiness.SearchNetworkProfiles
  ( -- * Creating a Request
    SearchNetworkProfiles (..),
    newSearchNetworkProfiles,

    -- * Request Lenses
    searchNetworkProfiles_sortCriteria,
    searchNetworkProfiles_nextToken,
    searchNetworkProfiles_filters,
    searchNetworkProfiles_maxResults,

    -- * Destructuring the Response
    SearchNetworkProfilesResponse (..),
    newSearchNetworkProfilesResponse,

    -- * Response Lenses
    searchNetworkProfilesResponse_nextToken,
    searchNetworkProfilesResponse_networkProfiles,
    searchNetworkProfilesResponse_totalCount,
    searchNetworkProfilesResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSearchNetworkProfiles' smart constructor.
data SearchNetworkProfiles = SearchNetworkProfiles'
  { -- | The sort order to use to list the specified set of network profiles.
    -- Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.
    sortCriteria :: Prelude.Maybe [Sort],
    -- | An optional token returned from a prior request. Use this token for
    -- pagination of results from this action. If this parameter is specified,
    -- the response includes only results beyond the token, up to the value
    -- specified by MaxResults.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters to use to list a specified set of network profiles. Valid
    -- filters are NetworkProfileName, Ssid, and SecurityType.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of results to include in the response. If more
    -- results exist than the specified MaxResults value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchNetworkProfiles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortCriteria', 'searchNetworkProfiles_sortCriteria' - The sort order to use to list the specified set of network profiles.
-- Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.
--
-- 'nextToken', 'searchNetworkProfiles_nextToken' - An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by MaxResults.
--
-- 'filters', 'searchNetworkProfiles_filters' - The filters to use to list a specified set of network profiles. Valid
-- filters are NetworkProfileName, Ssid, and SecurityType.
--
-- 'maxResults', 'searchNetworkProfiles_maxResults' - The maximum number of results to include in the response. If more
-- results exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
newSearchNetworkProfiles ::
  SearchNetworkProfiles
newSearchNetworkProfiles =
  SearchNetworkProfiles'
    { sortCriteria =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The sort order to use to list the specified set of network profiles.
-- Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.
searchNetworkProfiles_sortCriteria :: Lens.Lens' SearchNetworkProfiles (Prelude.Maybe [Sort])
searchNetworkProfiles_sortCriteria = Lens.lens (\SearchNetworkProfiles' {sortCriteria} -> sortCriteria) (\s@SearchNetworkProfiles' {} a -> s {sortCriteria = a} :: SearchNetworkProfiles) Prelude.. Lens.mapping Lens.coerced

-- | An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by MaxResults.
searchNetworkProfiles_nextToken :: Lens.Lens' SearchNetworkProfiles (Prelude.Maybe Prelude.Text)
searchNetworkProfiles_nextToken = Lens.lens (\SearchNetworkProfiles' {nextToken} -> nextToken) (\s@SearchNetworkProfiles' {} a -> s {nextToken = a} :: SearchNetworkProfiles)

-- | The filters to use to list a specified set of network profiles. Valid
-- filters are NetworkProfileName, Ssid, and SecurityType.
searchNetworkProfiles_filters :: Lens.Lens' SearchNetworkProfiles (Prelude.Maybe [Filter])
searchNetworkProfiles_filters = Lens.lens (\SearchNetworkProfiles' {filters} -> filters) (\s@SearchNetworkProfiles' {} a -> s {filters = a} :: SearchNetworkProfiles) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to include in the response. If more
-- results exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
searchNetworkProfiles_maxResults :: Lens.Lens' SearchNetworkProfiles (Prelude.Maybe Prelude.Natural)
searchNetworkProfiles_maxResults = Lens.lens (\SearchNetworkProfiles' {maxResults} -> maxResults) (\s@SearchNetworkProfiles' {} a -> s {maxResults = a} :: SearchNetworkProfiles)

instance Core.AWSRequest SearchNetworkProfiles where
  type
    AWSResponse SearchNetworkProfiles =
      SearchNetworkProfilesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchNetworkProfilesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "NetworkProfiles"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "TotalCount")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchNetworkProfiles where
  hashWithSalt _salt SearchNetworkProfiles' {..} =
    _salt `Prelude.hashWithSalt` sortCriteria
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData SearchNetworkProfiles where
  rnf SearchNetworkProfiles' {..} =
    Prelude.rnf sortCriteria
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders SearchNetworkProfiles where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.SearchNetworkProfiles" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchNetworkProfiles where
  toJSON SearchNetworkProfiles' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortCriteria" Core..=) Prelude.<$> sortCriteria,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath SearchNetworkProfiles where
  toPath = Prelude.const "/"

instance Core.ToQuery SearchNetworkProfiles where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchNetworkProfilesResponse' smart constructor.
data SearchNetworkProfilesResponse = SearchNetworkProfilesResponse'
  { -- | An optional token returned from a prior request. Use this token for
    -- pagination of results from this action. If this parameter is specified,
    -- the response includes only results beyond the token, up to the value
    -- specified by MaxResults.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The network profiles that meet the specified set of filter criteria, in
    -- sort order. It is a list of NetworkProfileData objects.
    networkProfiles :: Prelude.Maybe [NetworkProfileData],
    -- | The total number of network profiles returned.
    totalCount :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchNetworkProfilesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchNetworkProfilesResponse_nextToken' - An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by MaxResults.
--
-- 'networkProfiles', 'searchNetworkProfilesResponse_networkProfiles' - The network profiles that meet the specified set of filter criteria, in
-- sort order. It is a list of NetworkProfileData objects.
--
-- 'totalCount', 'searchNetworkProfilesResponse_totalCount' - The total number of network profiles returned.
--
-- 'httpStatus', 'searchNetworkProfilesResponse_httpStatus' - The response's http status code.
newSearchNetworkProfilesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchNetworkProfilesResponse
newSearchNetworkProfilesResponse pHttpStatus_ =
  SearchNetworkProfilesResponse'
    { nextToken =
        Prelude.Nothing,
      networkProfiles = Prelude.Nothing,
      totalCount = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by MaxResults.
searchNetworkProfilesResponse_nextToken :: Lens.Lens' SearchNetworkProfilesResponse (Prelude.Maybe Prelude.Text)
searchNetworkProfilesResponse_nextToken = Lens.lens (\SearchNetworkProfilesResponse' {nextToken} -> nextToken) (\s@SearchNetworkProfilesResponse' {} a -> s {nextToken = a} :: SearchNetworkProfilesResponse)

-- | The network profiles that meet the specified set of filter criteria, in
-- sort order. It is a list of NetworkProfileData objects.
searchNetworkProfilesResponse_networkProfiles :: Lens.Lens' SearchNetworkProfilesResponse (Prelude.Maybe [NetworkProfileData])
searchNetworkProfilesResponse_networkProfiles = Lens.lens (\SearchNetworkProfilesResponse' {networkProfiles} -> networkProfiles) (\s@SearchNetworkProfilesResponse' {} a -> s {networkProfiles = a} :: SearchNetworkProfilesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of network profiles returned.
searchNetworkProfilesResponse_totalCount :: Lens.Lens' SearchNetworkProfilesResponse (Prelude.Maybe Prelude.Int)
searchNetworkProfilesResponse_totalCount = Lens.lens (\SearchNetworkProfilesResponse' {totalCount} -> totalCount) (\s@SearchNetworkProfilesResponse' {} a -> s {totalCount = a} :: SearchNetworkProfilesResponse)

-- | The response's http status code.
searchNetworkProfilesResponse_httpStatus :: Lens.Lens' SearchNetworkProfilesResponse Prelude.Int
searchNetworkProfilesResponse_httpStatus = Lens.lens (\SearchNetworkProfilesResponse' {httpStatus} -> httpStatus) (\s@SearchNetworkProfilesResponse' {} a -> s {httpStatus = a} :: SearchNetworkProfilesResponse)

instance Prelude.NFData SearchNetworkProfilesResponse where
  rnf SearchNetworkProfilesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf networkProfiles
      `Prelude.seq` Prelude.rnf totalCount
      `Prelude.seq` Prelude.rnf httpStatus

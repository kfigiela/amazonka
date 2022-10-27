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
-- Module      : Amazonka.EFS.DescribeAccountPreferences
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the account preferences settings for the Amazon Web Services
-- account associated with the user making the request, in the current
-- Amazon Web Services Region. For more information, see
-- <efs/latest/ug/manage-efs-resource-ids.html Managing Amazon EFS resource IDs>.
module Amazonka.EFS.DescribeAccountPreferences
  ( -- * Creating a Request
    DescribeAccountPreferences (..),
    newDescribeAccountPreferences,

    -- * Request Lenses
    describeAccountPreferences_nextToken,
    describeAccountPreferences_maxResults,

    -- * Destructuring the Response
    DescribeAccountPreferencesResponse (..),
    newDescribeAccountPreferencesResponse,

    -- * Response Lenses
    describeAccountPreferencesResponse_nextToken,
    describeAccountPreferencesResponse_resourceIdPreference,
    describeAccountPreferencesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EFS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeAccountPreferences' smart constructor.
data DescribeAccountPreferences = DescribeAccountPreferences'
  { -- | (Optional) You can use @NextToken@ in a subsequent request to fetch the
    -- next page of Amazon Web Services account preferences if the response
    -- payload was paginated.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | (Optional) When retrieving account preferences, you can optionally
    -- specify the @MaxItems@ parameter to limit the number of objects returned
    -- in a response. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountPreferences' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAccountPreferences_nextToken' - (Optional) You can use @NextToken@ in a subsequent request to fetch the
-- next page of Amazon Web Services account preferences if the response
-- payload was paginated.
--
-- 'maxResults', 'describeAccountPreferences_maxResults' - (Optional) When retrieving account preferences, you can optionally
-- specify the @MaxItems@ parameter to limit the number of objects returned
-- in a response. The default value is 100.
newDescribeAccountPreferences ::
  DescribeAccountPreferences
newDescribeAccountPreferences =
  DescribeAccountPreferences'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | (Optional) You can use @NextToken@ in a subsequent request to fetch the
-- next page of Amazon Web Services account preferences if the response
-- payload was paginated.
describeAccountPreferences_nextToken :: Lens.Lens' DescribeAccountPreferences (Prelude.Maybe Prelude.Text)
describeAccountPreferences_nextToken = Lens.lens (\DescribeAccountPreferences' {nextToken} -> nextToken) (\s@DescribeAccountPreferences' {} a -> s {nextToken = a} :: DescribeAccountPreferences)

-- | (Optional) When retrieving account preferences, you can optionally
-- specify the @MaxItems@ parameter to limit the number of objects returned
-- in a response. The default value is 100.
describeAccountPreferences_maxResults :: Lens.Lens' DescribeAccountPreferences (Prelude.Maybe Prelude.Natural)
describeAccountPreferences_maxResults = Lens.lens (\DescribeAccountPreferences' {maxResults} -> maxResults) (\s@DescribeAccountPreferences' {} a -> s {maxResults = a} :: DescribeAccountPreferences)

instance Core.AWSRequest DescribeAccountPreferences where
  type
    AWSResponse DescribeAccountPreferences =
      DescribeAccountPreferencesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAccountPreferencesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ResourceIdPreference")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAccountPreferences where
  hashWithSalt _salt DescribeAccountPreferences' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeAccountPreferences where
  rnf DescribeAccountPreferences' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeAccountPreferences where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAccountPreferences where
  toPath =
    Prelude.const "/2015-02-01/account-preferences"

instance Core.ToQuery DescribeAccountPreferences where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAccountPreferencesResponse' smart constructor.
data DescribeAccountPreferencesResponse = DescribeAccountPreferencesResponse'
  { -- | Present if there are more records than returned in the response. You can
    -- use the @NextToken@ in the subsequent request to fetch the additional
    -- descriptions.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Describes the resource ID preference setting for the Amazon Web Services
    -- account associated with the user making the request, in the current
    -- Amazon Web Services Region.
    resourceIdPreference :: Prelude.Maybe ResourceIdPreference,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountPreferencesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAccountPreferencesResponse_nextToken' - Present if there are more records than returned in the response. You can
-- use the @NextToken@ in the subsequent request to fetch the additional
-- descriptions.
--
-- 'resourceIdPreference', 'describeAccountPreferencesResponse_resourceIdPreference' - Describes the resource ID preference setting for the Amazon Web Services
-- account associated with the user making the request, in the current
-- Amazon Web Services Region.
--
-- 'httpStatus', 'describeAccountPreferencesResponse_httpStatus' - The response's http status code.
newDescribeAccountPreferencesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAccountPreferencesResponse
newDescribeAccountPreferencesResponse pHttpStatus_ =
  DescribeAccountPreferencesResponse'
    { nextToken =
        Prelude.Nothing,
      resourceIdPreference = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Present if there are more records than returned in the response. You can
-- use the @NextToken@ in the subsequent request to fetch the additional
-- descriptions.
describeAccountPreferencesResponse_nextToken :: Lens.Lens' DescribeAccountPreferencesResponse (Prelude.Maybe Prelude.Text)
describeAccountPreferencesResponse_nextToken = Lens.lens (\DescribeAccountPreferencesResponse' {nextToken} -> nextToken) (\s@DescribeAccountPreferencesResponse' {} a -> s {nextToken = a} :: DescribeAccountPreferencesResponse)

-- | Describes the resource ID preference setting for the Amazon Web Services
-- account associated with the user making the request, in the current
-- Amazon Web Services Region.
describeAccountPreferencesResponse_resourceIdPreference :: Lens.Lens' DescribeAccountPreferencesResponse (Prelude.Maybe ResourceIdPreference)
describeAccountPreferencesResponse_resourceIdPreference = Lens.lens (\DescribeAccountPreferencesResponse' {resourceIdPreference} -> resourceIdPreference) (\s@DescribeAccountPreferencesResponse' {} a -> s {resourceIdPreference = a} :: DescribeAccountPreferencesResponse)

-- | The response's http status code.
describeAccountPreferencesResponse_httpStatus :: Lens.Lens' DescribeAccountPreferencesResponse Prelude.Int
describeAccountPreferencesResponse_httpStatus = Lens.lens (\DescribeAccountPreferencesResponse' {httpStatus} -> httpStatus) (\s@DescribeAccountPreferencesResponse' {} a -> s {httpStatus = a} :: DescribeAccountPreferencesResponse)

instance
  Prelude.NFData
    DescribeAccountPreferencesResponse
  where
  rnf DescribeAccountPreferencesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resourceIdPreference
      `Prelude.seq` Prelude.rnf httpStatus

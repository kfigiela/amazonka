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
-- Module      : Amazonka.LicenseManager.ListAssociationsForLicenseConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resource associations for the specified license configuration.
--
-- Resource associations need not consume licenses from a license
-- configuration. For example, an AMI or a stopped instance might not
-- consume a license (depending on the license rules).
--
-- This operation returns paginated results.
module Amazonka.LicenseManager.ListAssociationsForLicenseConfiguration
  ( -- * Creating a Request
    ListAssociationsForLicenseConfiguration (..),
    newListAssociationsForLicenseConfiguration,

    -- * Request Lenses
    listAssociationsForLicenseConfiguration_nextToken,
    listAssociationsForLicenseConfiguration_maxResults,
    listAssociationsForLicenseConfiguration_licenseConfigurationArn,

    -- * Destructuring the Response
    ListAssociationsForLicenseConfigurationResponse (..),
    newListAssociationsForLicenseConfigurationResponse,

    -- * Response Lenses
    listAssociationsForLicenseConfigurationResponse_nextToken,
    listAssociationsForLicenseConfigurationResponse_licenseConfigurationAssociations,
    listAssociationsForLicenseConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAssociationsForLicenseConfiguration' smart constructor.
data ListAssociationsForLicenseConfiguration = ListAssociationsForLicenseConfiguration'
  { -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | Amazon Resource Name (ARN) of a license configuration.
    licenseConfigurationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssociationsForLicenseConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssociationsForLicenseConfiguration_nextToken' - Token for the next set of results.
--
-- 'maxResults', 'listAssociationsForLicenseConfiguration_maxResults' - Maximum number of results to return in a single call.
--
-- 'licenseConfigurationArn', 'listAssociationsForLicenseConfiguration_licenseConfigurationArn' - Amazon Resource Name (ARN) of a license configuration.
newListAssociationsForLicenseConfiguration ::
  -- | 'licenseConfigurationArn'
  Prelude.Text ->
  ListAssociationsForLicenseConfiguration
newListAssociationsForLicenseConfiguration
  pLicenseConfigurationArn_ =
    ListAssociationsForLicenseConfiguration'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        licenseConfigurationArn =
          pLicenseConfigurationArn_
      }

-- | Token for the next set of results.
listAssociationsForLicenseConfiguration_nextToken :: Lens.Lens' ListAssociationsForLicenseConfiguration (Prelude.Maybe Prelude.Text)
listAssociationsForLicenseConfiguration_nextToken = Lens.lens (\ListAssociationsForLicenseConfiguration' {nextToken} -> nextToken) (\s@ListAssociationsForLicenseConfiguration' {} a -> s {nextToken = a} :: ListAssociationsForLicenseConfiguration)

-- | Maximum number of results to return in a single call.
listAssociationsForLicenseConfiguration_maxResults :: Lens.Lens' ListAssociationsForLicenseConfiguration (Prelude.Maybe Prelude.Int)
listAssociationsForLicenseConfiguration_maxResults = Lens.lens (\ListAssociationsForLicenseConfiguration' {maxResults} -> maxResults) (\s@ListAssociationsForLicenseConfiguration' {} a -> s {maxResults = a} :: ListAssociationsForLicenseConfiguration)

-- | Amazon Resource Name (ARN) of a license configuration.
listAssociationsForLicenseConfiguration_licenseConfigurationArn :: Lens.Lens' ListAssociationsForLicenseConfiguration Prelude.Text
listAssociationsForLicenseConfiguration_licenseConfigurationArn = Lens.lens (\ListAssociationsForLicenseConfiguration' {licenseConfigurationArn} -> licenseConfigurationArn) (\s@ListAssociationsForLicenseConfiguration' {} a -> s {licenseConfigurationArn = a} :: ListAssociationsForLicenseConfiguration)

instance
  Core.AWSPager
    ListAssociationsForLicenseConfiguration
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAssociationsForLicenseConfigurationResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAssociationsForLicenseConfigurationResponse_licenseConfigurationAssociations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAssociationsForLicenseConfiguration_nextToken
          Lens..~ rs
            Lens.^? listAssociationsForLicenseConfigurationResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListAssociationsForLicenseConfiguration
  where
  type
    AWSResponse
      ListAssociationsForLicenseConfiguration =
      ListAssociationsForLicenseConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssociationsForLicenseConfigurationResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "LicenseConfigurationAssociations"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListAssociationsForLicenseConfiguration
  where
  hashWithSalt
    _salt
    ListAssociationsForLicenseConfiguration' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` licenseConfigurationArn

instance
  Prelude.NFData
    ListAssociationsForLicenseConfiguration
  where
  rnf ListAssociationsForLicenseConfiguration' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf licenseConfigurationArn

instance
  Core.ToHeaders
    ListAssociationsForLicenseConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.ListAssociationsForLicenseConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListAssociationsForLicenseConfiguration
  where
  toJSON ListAssociationsForLicenseConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ( "LicenseConfigurationArn"
                  Core..= licenseConfigurationArn
              )
          ]
      )

instance
  Core.ToPath
    ListAssociationsForLicenseConfiguration
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListAssociationsForLicenseConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAssociationsForLicenseConfigurationResponse' smart constructor.
data ListAssociationsForLicenseConfigurationResponse = ListAssociationsForLicenseConfigurationResponse'
  { -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the associations for the license configuration.
    licenseConfigurationAssociations :: Prelude.Maybe [LicenseConfigurationAssociation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssociationsForLicenseConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssociationsForLicenseConfigurationResponse_nextToken' - Token for the next set of results.
--
-- 'licenseConfigurationAssociations', 'listAssociationsForLicenseConfigurationResponse_licenseConfigurationAssociations' - Information about the associations for the license configuration.
--
-- 'httpStatus', 'listAssociationsForLicenseConfigurationResponse_httpStatus' - The response's http status code.
newListAssociationsForLicenseConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAssociationsForLicenseConfigurationResponse
newListAssociationsForLicenseConfigurationResponse
  pHttpStatus_ =
    ListAssociationsForLicenseConfigurationResponse'
      { nextToken =
          Prelude.Nothing,
        licenseConfigurationAssociations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Token for the next set of results.
listAssociationsForLicenseConfigurationResponse_nextToken :: Lens.Lens' ListAssociationsForLicenseConfigurationResponse (Prelude.Maybe Prelude.Text)
listAssociationsForLicenseConfigurationResponse_nextToken = Lens.lens (\ListAssociationsForLicenseConfigurationResponse' {nextToken} -> nextToken) (\s@ListAssociationsForLicenseConfigurationResponse' {} a -> s {nextToken = a} :: ListAssociationsForLicenseConfigurationResponse)

-- | Information about the associations for the license configuration.
listAssociationsForLicenseConfigurationResponse_licenseConfigurationAssociations :: Lens.Lens' ListAssociationsForLicenseConfigurationResponse (Prelude.Maybe [LicenseConfigurationAssociation])
listAssociationsForLicenseConfigurationResponse_licenseConfigurationAssociations = Lens.lens (\ListAssociationsForLicenseConfigurationResponse' {licenseConfigurationAssociations} -> licenseConfigurationAssociations) (\s@ListAssociationsForLicenseConfigurationResponse' {} a -> s {licenseConfigurationAssociations = a} :: ListAssociationsForLicenseConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAssociationsForLicenseConfigurationResponse_httpStatus :: Lens.Lens' ListAssociationsForLicenseConfigurationResponse Prelude.Int
listAssociationsForLicenseConfigurationResponse_httpStatus = Lens.lens (\ListAssociationsForLicenseConfigurationResponse' {httpStatus} -> httpStatus) (\s@ListAssociationsForLicenseConfigurationResponse' {} a -> s {httpStatus = a} :: ListAssociationsForLicenseConfigurationResponse)

instance
  Prelude.NFData
    ListAssociationsForLicenseConfigurationResponse
  where
  rnf
    ListAssociationsForLicenseConfigurationResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf licenseConfigurationAssociations
        `Prelude.seq` Prelude.rnf httpStatus

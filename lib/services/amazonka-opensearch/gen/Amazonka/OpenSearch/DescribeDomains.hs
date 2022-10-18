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
-- Module      : Amazonka.OpenSearch.DescribeDomains
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns domain configuration information about the specified domains,
-- including the domain ID, domain endpoint, and domain ARN.
module Amazonka.OpenSearch.DescribeDomains
  ( -- * Creating a Request
    DescribeDomains (..),
    newDescribeDomains,

    -- * Request Lenses
    describeDomains_domainNames,

    -- * Destructuring the Response
    DescribeDomainsResponse (..),
    newDescribeDomainsResponse,

    -- * Response Lenses
    describeDomainsResponse_httpStatus,
    describeDomainsResponse_domainStatusList,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for the parameters to the @ DescribeDomains @ operation. By
-- default, the API returns the status of all domains.
--
-- /See:/ 'newDescribeDomains' smart constructor.
data DescribeDomains = DescribeDomains'
  { -- | The domains for which you want information.
    domainNames :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomains' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNames', 'describeDomains_domainNames' - The domains for which you want information.
newDescribeDomains ::
  DescribeDomains
newDescribeDomains =
  DescribeDomains' {domainNames = Prelude.mempty}

-- | The domains for which you want information.
describeDomains_domainNames :: Lens.Lens' DescribeDomains [Prelude.Text]
describeDomains_domainNames = Lens.lens (\DescribeDomains' {domainNames} -> domainNames) (\s@DescribeDomains' {} a -> s {domainNames = a} :: DescribeDomains) Prelude.. Lens.coerced

instance Core.AWSRequest DescribeDomains where
  type
    AWSResponse DescribeDomains =
      DescribeDomainsResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "DomainStatusList"
                            Core..!@ Prelude.mempty
                        )
      )

instance Core.AWSService DescribeDomains where
  service _proxy = defaultService

instance Prelude.Hashable DescribeDomains where
  hashWithSalt _salt DescribeDomains' {..} =
    _salt `Prelude.hashWithSalt` domainNames

instance Prelude.NFData DescribeDomains where
  rnf DescribeDomains' {..} = Prelude.rnf domainNames

instance Core.ToHeaders DescribeDomains where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON DescribeDomains where
  toJSON DescribeDomains' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("DomainNames" Core..= domainNames)]
      )

instance Core.ToPath DescribeDomains where
  toPath =
    Prelude.const "/2021-01-01/opensearch/domain-info"

instance Core.ToQuery DescribeDomains where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @DescribeDomains@ request. Contains the status of the
-- specified domains or all domains owned by the account.
--
-- /See:/ 'newDescribeDomainsResponse' smart constructor.
data DescribeDomainsResponse = DescribeDomainsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the domains requested in the @DescribeDomains@ request.
    domainStatusList :: [DomainStatus]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeDomainsResponse_httpStatus' - The response's http status code.
--
-- 'domainStatusList', 'describeDomainsResponse_domainStatusList' - The status of the domains requested in the @DescribeDomains@ request.
newDescribeDomainsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDomainsResponse
newDescribeDomainsResponse pHttpStatus_ =
  DescribeDomainsResponse'
    { httpStatus = pHttpStatus_,
      domainStatusList = Prelude.mempty
    }

-- | The response's http status code.
describeDomainsResponse_httpStatus :: Lens.Lens' DescribeDomainsResponse Prelude.Int
describeDomainsResponse_httpStatus = Lens.lens (\DescribeDomainsResponse' {httpStatus} -> httpStatus) (\s@DescribeDomainsResponse' {} a -> s {httpStatus = a} :: DescribeDomainsResponse)

-- | The status of the domains requested in the @DescribeDomains@ request.
describeDomainsResponse_domainStatusList :: Lens.Lens' DescribeDomainsResponse [DomainStatus]
describeDomainsResponse_domainStatusList = Lens.lens (\DescribeDomainsResponse' {domainStatusList} -> domainStatusList) (\s@DescribeDomainsResponse' {} a -> s {domainStatusList = a} :: DescribeDomainsResponse) Prelude.. Lens.coerced

instance Prelude.NFData DescribeDomainsResponse where
  rnf DescribeDomainsResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf domainStatusList

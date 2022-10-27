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
-- Module      : Amazonka.ApiGatewayV2.GetDomainName
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a domain name.
module Amazonka.ApiGatewayV2.GetDomainName
  ( -- * Creating a Request
    GetDomainName (..),
    newGetDomainName,

    -- * Request Lenses
    getDomainName_domainName,

    -- * Destructuring the Response
    GetDomainNameResponse (..),
    newGetDomainNameResponse,

    -- * Response Lenses
    getDomainNameResponse_tags,
    getDomainNameResponse_mutualTlsAuthentication,
    getDomainNameResponse_domainName,
    getDomainNameResponse_domainNameConfigurations,
    getDomainNameResponse_apiMappingSelectionExpression,
    getDomainNameResponse_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetDomainName' smart constructor.
data GetDomainName = GetDomainName'
  { -- | The domain name.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'getDomainName_domainName' - The domain name.
newGetDomainName ::
  -- | 'domainName'
  Prelude.Text ->
  GetDomainName
newGetDomainName pDomainName_ =
  GetDomainName' {domainName = pDomainName_}

-- | The domain name.
getDomainName_domainName :: Lens.Lens' GetDomainName Prelude.Text
getDomainName_domainName = Lens.lens (\GetDomainName' {domainName} -> domainName) (\s@GetDomainName' {} a -> s {domainName = a} :: GetDomainName)

instance Core.AWSRequest GetDomainName where
  type
    AWSResponse GetDomainName =
      GetDomainNameResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDomainNameResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "mutualTlsAuthentication")
            Prelude.<*> (x Core..?> "domainName")
            Prelude.<*> ( x Core..?> "domainNameConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "apiMappingSelectionExpression")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDomainName where
  hashWithSalt _salt GetDomainName' {..} =
    _salt `Prelude.hashWithSalt` domainName

instance Prelude.NFData GetDomainName where
  rnf GetDomainName' {..} = Prelude.rnf domainName

instance Core.ToHeaders GetDomainName where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDomainName where
  toPath GetDomainName' {..} =
    Prelude.mconcat
      ["/v2/domainnames/", Core.toBS domainName]

instance Core.ToQuery GetDomainName where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDomainNameResponse' smart constructor.
data GetDomainNameResponse = GetDomainNameResponse'
  { -- | The collection of tags associated with a domain name.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The mutual TLS authentication configuration for a custom domain name.
    mutualTlsAuthentication :: Prelude.Maybe MutualTlsAuthentication,
    -- | The name of the DomainName resource.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The domain name configurations.
    domainNameConfigurations :: Prelude.Maybe [DomainNameConfiguration],
    -- | The API mapping selection expression.
    apiMappingSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainNameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getDomainNameResponse_tags' - The collection of tags associated with a domain name.
--
-- 'mutualTlsAuthentication', 'getDomainNameResponse_mutualTlsAuthentication' - The mutual TLS authentication configuration for a custom domain name.
--
-- 'domainName', 'getDomainNameResponse_domainName' - The name of the DomainName resource.
--
-- 'domainNameConfigurations', 'getDomainNameResponse_domainNameConfigurations' - The domain name configurations.
--
-- 'apiMappingSelectionExpression', 'getDomainNameResponse_apiMappingSelectionExpression' - The API mapping selection expression.
--
-- 'httpStatus', 'getDomainNameResponse_httpStatus' - The response's http status code.
newGetDomainNameResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDomainNameResponse
newGetDomainNameResponse pHttpStatus_ =
  GetDomainNameResponse'
    { tags = Prelude.Nothing,
      mutualTlsAuthentication = Prelude.Nothing,
      domainName = Prelude.Nothing,
      domainNameConfigurations = Prelude.Nothing,
      apiMappingSelectionExpression = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The collection of tags associated with a domain name.
getDomainNameResponse_tags :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getDomainNameResponse_tags = Lens.lens (\GetDomainNameResponse' {tags} -> tags) (\s@GetDomainNameResponse' {} a -> s {tags = a} :: GetDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The mutual TLS authentication configuration for a custom domain name.
getDomainNameResponse_mutualTlsAuthentication :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe MutualTlsAuthentication)
getDomainNameResponse_mutualTlsAuthentication = Lens.lens (\GetDomainNameResponse' {mutualTlsAuthentication} -> mutualTlsAuthentication) (\s@GetDomainNameResponse' {} a -> s {mutualTlsAuthentication = a} :: GetDomainNameResponse)

-- | The name of the DomainName resource.
getDomainNameResponse_domainName :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe Prelude.Text)
getDomainNameResponse_domainName = Lens.lens (\GetDomainNameResponse' {domainName} -> domainName) (\s@GetDomainNameResponse' {} a -> s {domainName = a} :: GetDomainNameResponse)

-- | The domain name configurations.
getDomainNameResponse_domainNameConfigurations :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe [DomainNameConfiguration])
getDomainNameResponse_domainNameConfigurations = Lens.lens (\GetDomainNameResponse' {domainNameConfigurations} -> domainNameConfigurations) (\s@GetDomainNameResponse' {} a -> s {domainNameConfigurations = a} :: GetDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The API mapping selection expression.
getDomainNameResponse_apiMappingSelectionExpression :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe Prelude.Text)
getDomainNameResponse_apiMappingSelectionExpression = Lens.lens (\GetDomainNameResponse' {apiMappingSelectionExpression} -> apiMappingSelectionExpression) (\s@GetDomainNameResponse' {} a -> s {apiMappingSelectionExpression = a} :: GetDomainNameResponse)

-- | The response's http status code.
getDomainNameResponse_httpStatus :: Lens.Lens' GetDomainNameResponse Prelude.Int
getDomainNameResponse_httpStatus = Lens.lens (\GetDomainNameResponse' {httpStatus} -> httpStatus) (\s@GetDomainNameResponse' {} a -> s {httpStatus = a} :: GetDomainNameResponse)

instance Prelude.NFData GetDomainNameResponse where
  rnf GetDomainNameResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf mutualTlsAuthentication
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf domainNameConfigurations
      `Prelude.seq` Prelude.rnf apiMappingSelectionExpression
      `Prelude.seq` Prelude.rnf httpStatus

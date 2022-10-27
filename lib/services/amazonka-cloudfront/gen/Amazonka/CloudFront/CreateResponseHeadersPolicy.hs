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
-- Module      : Amazonka.CloudFront.CreateResponseHeadersPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a response headers policy.
--
-- A response headers policy contains information about a set of HTTP
-- response headers and their values. To create a response headers policy,
-- you provide some metadata about the policy, and a set of configurations
-- that specify the response headers.
--
-- After you create a response headers policy, you can use its ID to attach
-- it to one or more cache behaviors in a CloudFront distribution. When
-- it’s attached to a cache behavior, CloudFront adds the headers in the
-- policy to HTTP responses that it sends for requests that match the cache
-- behavior.
module Amazonka.CloudFront.CreateResponseHeadersPolicy
  ( -- * Creating a Request
    CreateResponseHeadersPolicy (..),
    newCreateResponseHeadersPolicy,

    -- * Request Lenses
    createResponseHeadersPolicy_responseHeadersPolicyConfig,

    -- * Destructuring the Response
    CreateResponseHeadersPolicyResponse (..),
    newCreateResponseHeadersPolicyResponse,

    -- * Response Lenses
    createResponseHeadersPolicyResponse_responseHeadersPolicy,
    createResponseHeadersPolicyResponse_location,
    createResponseHeadersPolicyResponse_eTag,
    createResponseHeadersPolicyResponse_httpStatus,
  )
where

import Amazonka.CloudFront.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateResponseHeadersPolicy' smart constructor.
data CreateResponseHeadersPolicy = CreateResponseHeadersPolicy'
  { -- | Contains metadata about the response headers policy, and a set of
    -- configurations that specify the response headers.
    responseHeadersPolicyConfig :: ResponseHeadersPolicyConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResponseHeadersPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'responseHeadersPolicyConfig', 'createResponseHeadersPolicy_responseHeadersPolicyConfig' - Contains metadata about the response headers policy, and a set of
-- configurations that specify the response headers.
newCreateResponseHeadersPolicy ::
  -- | 'responseHeadersPolicyConfig'
  ResponseHeadersPolicyConfig ->
  CreateResponseHeadersPolicy
newCreateResponseHeadersPolicy
  pResponseHeadersPolicyConfig_ =
    CreateResponseHeadersPolicy'
      { responseHeadersPolicyConfig =
          pResponseHeadersPolicyConfig_
      }

-- | Contains metadata about the response headers policy, and a set of
-- configurations that specify the response headers.
createResponseHeadersPolicy_responseHeadersPolicyConfig :: Lens.Lens' CreateResponseHeadersPolicy ResponseHeadersPolicyConfig
createResponseHeadersPolicy_responseHeadersPolicyConfig = Lens.lens (\CreateResponseHeadersPolicy' {responseHeadersPolicyConfig} -> responseHeadersPolicyConfig) (\s@CreateResponseHeadersPolicy' {} a -> s {responseHeadersPolicyConfig = a} :: CreateResponseHeadersPolicy)

instance Core.AWSRequest CreateResponseHeadersPolicy where
  type
    AWSResponse CreateResponseHeadersPolicy =
      CreateResponseHeadersPolicyResponse
  service _ = defaultService
  request srv = Request.postXML srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateResponseHeadersPolicyResponse'
            Prelude.<$> (Core.parseXML x)
            Prelude.<*> (h Core..#? "Location")
            Prelude.<*> (h Core..#? "ETag")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateResponseHeadersPolicy where
  hashWithSalt _salt CreateResponseHeadersPolicy' {..} =
    _salt
      `Prelude.hashWithSalt` responseHeadersPolicyConfig

instance Prelude.NFData CreateResponseHeadersPolicy where
  rnf CreateResponseHeadersPolicy' {..} =
    Prelude.rnf responseHeadersPolicyConfig

instance Core.ToElement CreateResponseHeadersPolicy where
  toElement CreateResponseHeadersPolicy' {..} =
    Core.mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}ResponseHeadersPolicyConfig"
      responseHeadersPolicyConfig

instance Core.ToHeaders CreateResponseHeadersPolicy where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateResponseHeadersPolicy where
  toPath =
    Prelude.const "/2020-05-31/response-headers-policy"

instance Core.ToQuery CreateResponseHeadersPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateResponseHeadersPolicyResponse' smart constructor.
data CreateResponseHeadersPolicyResponse = CreateResponseHeadersPolicyResponse'
  { -- | Contains a response headers policy.
    responseHeadersPolicy :: Prelude.Maybe ResponseHeadersPolicy,
    -- | The URL of the response headers policy.
    location :: Prelude.Maybe Prelude.Text,
    -- | The version identifier for the current version of the response headers
    -- policy.
    eTag :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResponseHeadersPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'responseHeadersPolicy', 'createResponseHeadersPolicyResponse_responseHeadersPolicy' - Contains a response headers policy.
--
-- 'location', 'createResponseHeadersPolicyResponse_location' - The URL of the response headers policy.
--
-- 'eTag', 'createResponseHeadersPolicyResponse_eTag' - The version identifier for the current version of the response headers
-- policy.
--
-- 'httpStatus', 'createResponseHeadersPolicyResponse_httpStatus' - The response's http status code.
newCreateResponseHeadersPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateResponseHeadersPolicyResponse
newCreateResponseHeadersPolicyResponse pHttpStatus_ =
  CreateResponseHeadersPolicyResponse'
    { responseHeadersPolicy =
        Prelude.Nothing,
      location = Prelude.Nothing,
      eTag = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains a response headers policy.
createResponseHeadersPolicyResponse_responseHeadersPolicy :: Lens.Lens' CreateResponseHeadersPolicyResponse (Prelude.Maybe ResponseHeadersPolicy)
createResponseHeadersPolicyResponse_responseHeadersPolicy = Lens.lens (\CreateResponseHeadersPolicyResponse' {responseHeadersPolicy} -> responseHeadersPolicy) (\s@CreateResponseHeadersPolicyResponse' {} a -> s {responseHeadersPolicy = a} :: CreateResponseHeadersPolicyResponse)

-- | The URL of the response headers policy.
createResponseHeadersPolicyResponse_location :: Lens.Lens' CreateResponseHeadersPolicyResponse (Prelude.Maybe Prelude.Text)
createResponseHeadersPolicyResponse_location = Lens.lens (\CreateResponseHeadersPolicyResponse' {location} -> location) (\s@CreateResponseHeadersPolicyResponse' {} a -> s {location = a} :: CreateResponseHeadersPolicyResponse)

-- | The version identifier for the current version of the response headers
-- policy.
createResponseHeadersPolicyResponse_eTag :: Lens.Lens' CreateResponseHeadersPolicyResponse (Prelude.Maybe Prelude.Text)
createResponseHeadersPolicyResponse_eTag = Lens.lens (\CreateResponseHeadersPolicyResponse' {eTag} -> eTag) (\s@CreateResponseHeadersPolicyResponse' {} a -> s {eTag = a} :: CreateResponseHeadersPolicyResponse)

-- | The response's http status code.
createResponseHeadersPolicyResponse_httpStatus :: Lens.Lens' CreateResponseHeadersPolicyResponse Prelude.Int
createResponseHeadersPolicyResponse_httpStatus = Lens.lens (\CreateResponseHeadersPolicyResponse' {httpStatus} -> httpStatus) (\s@CreateResponseHeadersPolicyResponse' {} a -> s {httpStatus = a} :: CreateResponseHeadersPolicyResponse)

instance
  Prelude.NFData
    CreateResponseHeadersPolicyResponse
  where
  rnf CreateResponseHeadersPolicyResponse' {..} =
    Prelude.rnf responseHeadersPolicy
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf eTag
      `Prelude.seq` Prelude.rnf httpStatus

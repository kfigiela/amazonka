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
-- Module      : Amazonka.APIGateway.GetApiKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the current ApiKey resource.
module Amazonka.APIGateway.GetApiKey
  ( -- * Creating a Request
    GetApiKey (..),
    newGetApiKey,

    -- * Request Lenses
    getApiKey_includeValue,
    getApiKey_apiKey,

    -- * Destructuring the Response
    ApiKey (..),
    newApiKey,

    -- * Response Lenses
    apiKey_tags,
    apiKey_customerId,
    apiKey_name,
    apiKey_lastUpdatedDate,
    apiKey_description,
    apiKey_stageKeys,
    apiKey_id,
    apiKey_enabled,
    apiKey_createdDate,
    apiKey_value,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to get information about the current ApiKey resource.
--
-- /See:/ 'newGetApiKey' smart constructor.
data GetApiKey = GetApiKey'
  { -- | A boolean flag to specify whether (@true@) or not (@false@) the result
    -- contains the key value.
    includeValue :: Prelude.Maybe Prelude.Bool,
    -- | The identifier of the ApiKey resource.
    apiKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetApiKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeValue', 'getApiKey_includeValue' - A boolean flag to specify whether (@true@) or not (@false@) the result
-- contains the key value.
--
-- 'apiKey', 'getApiKey_apiKey' - The identifier of the ApiKey resource.
newGetApiKey ::
  -- | 'apiKey'
  Prelude.Text ->
  GetApiKey
newGetApiKey pApiKey_ =
  GetApiKey'
    { includeValue = Prelude.Nothing,
      apiKey = pApiKey_
    }

-- | A boolean flag to specify whether (@true@) or not (@false@) the result
-- contains the key value.
getApiKey_includeValue :: Lens.Lens' GetApiKey (Prelude.Maybe Prelude.Bool)
getApiKey_includeValue = Lens.lens (\GetApiKey' {includeValue} -> includeValue) (\s@GetApiKey' {} a -> s {includeValue = a} :: GetApiKey)

-- | The identifier of the ApiKey resource.
getApiKey_apiKey :: Lens.Lens' GetApiKey Prelude.Text
getApiKey_apiKey = Lens.lens (\GetApiKey' {apiKey} -> apiKey) (\s@GetApiKey' {} a -> s {apiKey = a} :: GetApiKey)

instance Core.AWSRequest GetApiKey where
  type AWSResponse GetApiKey = ApiKey
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetApiKey where
  hashWithSalt _salt GetApiKey' {..} =
    _salt `Prelude.hashWithSalt` includeValue
      `Prelude.hashWithSalt` apiKey

instance Prelude.NFData GetApiKey where
  rnf GetApiKey' {..} =
    Prelude.rnf includeValue
      `Prelude.seq` Prelude.rnf apiKey

instance Core.ToHeaders GetApiKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToPath GetApiKey where
  toPath GetApiKey' {..} =
    Prelude.mconcat ["/apikeys/", Core.toBS apiKey]

instance Core.ToQuery GetApiKey where
  toQuery GetApiKey' {..} =
    Prelude.mconcat
      ["includeValue" Core.=: includeValue]

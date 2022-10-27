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
-- Module      : Amazonka.AmplifyBackend.GetToken
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the challenge token based on the given appId and sessionId.
module Amazonka.AmplifyBackend.GetToken
  ( -- * Creating a Request
    GetToken (..),
    newGetToken,

    -- * Request Lenses
    getToken_sessionId,
    getToken_appId,

    -- * Destructuring the Response
    GetTokenResponse (..),
    newGetTokenResponse,

    -- * Response Lenses
    getTokenResponse_challengeCode,
    getTokenResponse_ttl,
    getTokenResponse_sessionId,
    getTokenResponse_appId,
    getTokenResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetToken' smart constructor.
data GetToken = GetToken'
  { -- | The session ID.
    sessionId :: Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionId', 'getToken_sessionId' - The session ID.
--
-- 'appId', 'getToken_appId' - The app ID.
newGetToken ::
  -- | 'sessionId'
  Prelude.Text ->
  -- | 'appId'
  Prelude.Text ->
  GetToken
newGetToken pSessionId_ pAppId_ =
  GetToken' {sessionId = pSessionId_, appId = pAppId_}

-- | The session ID.
getToken_sessionId :: Lens.Lens' GetToken Prelude.Text
getToken_sessionId = Lens.lens (\GetToken' {sessionId} -> sessionId) (\s@GetToken' {} a -> s {sessionId = a} :: GetToken)

-- | The app ID.
getToken_appId :: Lens.Lens' GetToken Prelude.Text
getToken_appId = Lens.lens (\GetToken' {appId} -> appId) (\s@GetToken' {} a -> s {appId = a} :: GetToken)

instance Core.AWSRequest GetToken where
  type AWSResponse GetToken = GetTokenResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTokenResponse'
            Prelude.<$> (x Core..?> "challengeCode")
            Prelude.<*> (x Core..?> "ttl")
            Prelude.<*> (x Core..?> "sessionId")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetToken where
  hashWithSalt _salt GetToken' {..} =
    _salt `Prelude.hashWithSalt` sessionId
      `Prelude.hashWithSalt` appId

instance Prelude.NFData GetToken where
  rnf GetToken' {..} =
    Prelude.rnf sessionId
      `Prelude.seq` Prelude.rnf appId

instance Core.ToHeaders GetToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetToken where
  toPath GetToken' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/challenge/",
        Core.toBS sessionId
      ]

instance Core.ToQuery GetToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetTokenResponse' smart constructor.
data GetTokenResponse = GetTokenResponse'
  { -- | The one-time challenge code for authenticating into the Amplify Admin
    -- UI.
    challengeCode :: Prelude.Maybe Prelude.Text,
    -- | The expiry time for the one-time generated token code.
    ttl :: Prelude.Maybe Prelude.Text,
    -- | A unique ID provided when creating a new challenge token.
    sessionId :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'challengeCode', 'getTokenResponse_challengeCode' - The one-time challenge code for authenticating into the Amplify Admin
-- UI.
--
-- 'ttl', 'getTokenResponse_ttl' - The expiry time for the one-time generated token code.
--
-- 'sessionId', 'getTokenResponse_sessionId' - A unique ID provided when creating a new challenge token.
--
-- 'appId', 'getTokenResponse_appId' - The app ID.
--
-- 'httpStatus', 'getTokenResponse_httpStatus' - The response's http status code.
newGetTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTokenResponse
newGetTokenResponse pHttpStatus_ =
  GetTokenResponse'
    { challengeCode = Prelude.Nothing,
      ttl = Prelude.Nothing,
      sessionId = Prelude.Nothing,
      appId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The one-time challenge code for authenticating into the Amplify Admin
-- UI.
getTokenResponse_challengeCode :: Lens.Lens' GetTokenResponse (Prelude.Maybe Prelude.Text)
getTokenResponse_challengeCode = Lens.lens (\GetTokenResponse' {challengeCode} -> challengeCode) (\s@GetTokenResponse' {} a -> s {challengeCode = a} :: GetTokenResponse)

-- | The expiry time for the one-time generated token code.
getTokenResponse_ttl :: Lens.Lens' GetTokenResponse (Prelude.Maybe Prelude.Text)
getTokenResponse_ttl = Lens.lens (\GetTokenResponse' {ttl} -> ttl) (\s@GetTokenResponse' {} a -> s {ttl = a} :: GetTokenResponse)

-- | A unique ID provided when creating a new challenge token.
getTokenResponse_sessionId :: Lens.Lens' GetTokenResponse (Prelude.Maybe Prelude.Text)
getTokenResponse_sessionId = Lens.lens (\GetTokenResponse' {sessionId} -> sessionId) (\s@GetTokenResponse' {} a -> s {sessionId = a} :: GetTokenResponse)

-- | The app ID.
getTokenResponse_appId :: Lens.Lens' GetTokenResponse (Prelude.Maybe Prelude.Text)
getTokenResponse_appId = Lens.lens (\GetTokenResponse' {appId} -> appId) (\s@GetTokenResponse' {} a -> s {appId = a} :: GetTokenResponse)

-- | The response's http status code.
getTokenResponse_httpStatus :: Lens.Lens' GetTokenResponse Prelude.Int
getTokenResponse_httpStatus = Lens.lens (\GetTokenResponse' {httpStatus} -> httpStatus) (\s@GetTokenResponse' {} a -> s {httpStatus = a} :: GetTokenResponse)

instance Prelude.NFData GetTokenResponse where
  rnf GetTokenResponse' {..} =
    Prelude.rnf challengeCode
      `Prelude.seq` Prelude.rnf ttl
      `Prelude.seq` Prelude.rnf sessionId
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf httpStatus

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
-- Module      : Amazonka.Chime.GetGlobalSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves global settings for the administrator\'s AWS account, such as
-- Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
module Amazonka.Chime.GetGlobalSettings
  ( -- * Creating a Request
    GetGlobalSettings (..),
    newGetGlobalSettings,

    -- * Destructuring the Response
    GetGlobalSettingsResponse (..),
    newGetGlobalSettingsResponse,

    -- * Response Lenses
    getGlobalSettingsResponse_voiceConnector,
    getGlobalSettingsResponse_businessCalling,
    getGlobalSettingsResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetGlobalSettings' smart constructor.
data GetGlobalSettings = GetGlobalSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetGlobalSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetGlobalSettings ::
  GetGlobalSettings
newGetGlobalSettings = GetGlobalSettings'

instance Core.AWSRequest GetGlobalSettings where
  type
    AWSResponse GetGlobalSettings =
      GetGlobalSettingsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetGlobalSettingsResponse'
            Prelude.<$> (x Core..?> "VoiceConnector")
            Prelude.<*> (x Core..?> "BusinessCalling")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetGlobalSettings where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData GetGlobalSettings where
  rnf _ = ()

instance Core.ToHeaders GetGlobalSettings where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetGlobalSettings where
  toPath = Prelude.const "/settings"

instance Core.ToQuery GetGlobalSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetGlobalSettingsResponse' smart constructor.
data GetGlobalSettingsResponse = GetGlobalSettingsResponse'
  { -- | The Amazon Chime Voice Connector settings.
    voiceConnector :: Prelude.Maybe VoiceConnectorSettings,
    -- | The Amazon Chime Business Calling settings.
    businessCalling :: Prelude.Maybe BusinessCallingSettings,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetGlobalSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnector', 'getGlobalSettingsResponse_voiceConnector' - The Amazon Chime Voice Connector settings.
--
-- 'businessCalling', 'getGlobalSettingsResponse_businessCalling' - The Amazon Chime Business Calling settings.
--
-- 'httpStatus', 'getGlobalSettingsResponse_httpStatus' - The response's http status code.
newGetGlobalSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetGlobalSettingsResponse
newGetGlobalSettingsResponse pHttpStatus_ =
  GetGlobalSettingsResponse'
    { voiceConnector =
        Prelude.Nothing,
      businessCalling = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Chime Voice Connector settings.
getGlobalSettingsResponse_voiceConnector :: Lens.Lens' GetGlobalSettingsResponse (Prelude.Maybe VoiceConnectorSettings)
getGlobalSettingsResponse_voiceConnector = Lens.lens (\GetGlobalSettingsResponse' {voiceConnector} -> voiceConnector) (\s@GetGlobalSettingsResponse' {} a -> s {voiceConnector = a} :: GetGlobalSettingsResponse)

-- | The Amazon Chime Business Calling settings.
getGlobalSettingsResponse_businessCalling :: Lens.Lens' GetGlobalSettingsResponse (Prelude.Maybe BusinessCallingSettings)
getGlobalSettingsResponse_businessCalling = Lens.lens (\GetGlobalSettingsResponse' {businessCalling} -> businessCalling) (\s@GetGlobalSettingsResponse' {} a -> s {businessCalling = a} :: GetGlobalSettingsResponse)

-- | The response's http status code.
getGlobalSettingsResponse_httpStatus :: Lens.Lens' GetGlobalSettingsResponse Prelude.Int
getGlobalSettingsResponse_httpStatus = Lens.lens (\GetGlobalSettingsResponse' {httpStatus} -> httpStatus) (\s@GetGlobalSettingsResponse' {} a -> s {httpStatus = a} :: GetGlobalSettingsResponse)

instance Prelude.NFData GetGlobalSettingsResponse where
  rnf GetGlobalSettingsResponse' {..} =
    Prelude.rnf voiceConnector
      `Prelude.seq` Prelude.rnf businessCalling
      `Prelude.seq` Prelude.rnf httpStatus

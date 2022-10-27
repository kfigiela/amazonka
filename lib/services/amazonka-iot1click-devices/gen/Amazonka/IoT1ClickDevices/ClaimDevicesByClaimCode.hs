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
-- Module      : Amazonka.IoT1ClickDevices.ClaimDevicesByClaimCode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds device(s) to your account (i.e., claim one or more devices) if and
-- only if you received a claim code with the device(s).
module Amazonka.IoT1ClickDevices.ClaimDevicesByClaimCode
  ( -- * Creating a Request
    ClaimDevicesByClaimCode (..),
    newClaimDevicesByClaimCode,

    -- * Request Lenses
    claimDevicesByClaimCode_claimCode,

    -- * Destructuring the Response
    ClaimDevicesByClaimCodeResponse (..),
    newClaimDevicesByClaimCodeResponse,

    -- * Response Lenses
    claimDevicesByClaimCodeResponse_total,
    claimDevicesByClaimCodeResponse_claimCode,
    claimDevicesByClaimCodeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT1ClickDevices.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newClaimDevicesByClaimCode' smart constructor.
data ClaimDevicesByClaimCode = ClaimDevicesByClaimCode'
  { -- | The claim code, starting with \"C-\", as provided by the device
    -- manufacturer.
    claimCode :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClaimDevicesByClaimCode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'claimCode', 'claimDevicesByClaimCode_claimCode' - The claim code, starting with \"C-\", as provided by the device
-- manufacturer.
newClaimDevicesByClaimCode ::
  -- | 'claimCode'
  Prelude.Text ->
  ClaimDevicesByClaimCode
newClaimDevicesByClaimCode pClaimCode_ =
  ClaimDevicesByClaimCode' {claimCode = pClaimCode_}

-- | The claim code, starting with \"C-\", as provided by the device
-- manufacturer.
claimDevicesByClaimCode_claimCode :: Lens.Lens' ClaimDevicesByClaimCode Prelude.Text
claimDevicesByClaimCode_claimCode = Lens.lens (\ClaimDevicesByClaimCode' {claimCode} -> claimCode) (\s@ClaimDevicesByClaimCode' {} a -> s {claimCode = a} :: ClaimDevicesByClaimCode)

instance Core.AWSRequest ClaimDevicesByClaimCode where
  type
    AWSResponse ClaimDevicesByClaimCode =
      ClaimDevicesByClaimCodeResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ClaimDevicesByClaimCodeResponse'
            Prelude.<$> (x Core..?> "total")
            Prelude.<*> (x Core..?> "claimCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ClaimDevicesByClaimCode where
  hashWithSalt _salt ClaimDevicesByClaimCode' {..} =
    _salt `Prelude.hashWithSalt` claimCode

instance Prelude.NFData ClaimDevicesByClaimCode where
  rnf ClaimDevicesByClaimCode' {..} =
    Prelude.rnf claimCode

instance Core.ToHeaders ClaimDevicesByClaimCode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ClaimDevicesByClaimCode where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath ClaimDevicesByClaimCode where
  toPath ClaimDevicesByClaimCode' {..} =
    Prelude.mconcat ["/claims/", Core.toBS claimCode]

instance Core.ToQuery ClaimDevicesByClaimCode where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newClaimDevicesByClaimCodeResponse' smart constructor.
data ClaimDevicesByClaimCodeResponse = ClaimDevicesByClaimCodeResponse'
  { -- | The total number of devices associated with the claim code that has been
    -- processed in the claim request.
    total :: Prelude.Maybe Prelude.Int,
    -- | The claim code provided by the device manufacturer.
    claimCode :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClaimDevicesByClaimCodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'total', 'claimDevicesByClaimCodeResponse_total' - The total number of devices associated with the claim code that has been
-- processed in the claim request.
--
-- 'claimCode', 'claimDevicesByClaimCodeResponse_claimCode' - The claim code provided by the device manufacturer.
--
-- 'httpStatus', 'claimDevicesByClaimCodeResponse_httpStatus' - The response's http status code.
newClaimDevicesByClaimCodeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ClaimDevicesByClaimCodeResponse
newClaimDevicesByClaimCodeResponse pHttpStatus_ =
  ClaimDevicesByClaimCodeResponse'
    { total =
        Prelude.Nothing,
      claimCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The total number of devices associated with the claim code that has been
-- processed in the claim request.
claimDevicesByClaimCodeResponse_total :: Lens.Lens' ClaimDevicesByClaimCodeResponse (Prelude.Maybe Prelude.Int)
claimDevicesByClaimCodeResponse_total = Lens.lens (\ClaimDevicesByClaimCodeResponse' {total} -> total) (\s@ClaimDevicesByClaimCodeResponse' {} a -> s {total = a} :: ClaimDevicesByClaimCodeResponse)

-- | The claim code provided by the device manufacturer.
claimDevicesByClaimCodeResponse_claimCode :: Lens.Lens' ClaimDevicesByClaimCodeResponse (Prelude.Maybe Prelude.Text)
claimDevicesByClaimCodeResponse_claimCode = Lens.lens (\ClaimDevicesByClaimCodeResponse' {claimCode} -> claimCode) (\s@ClaimDevicesByClaimCodeResponse' {} a -> s {claimCode = a} :: ClaimDevicesByClaimCodeResponse)

-- | The response's http status code.
claimDevicesByClaimCodeResponse_httpStatus :: Lens.Lens' ClaimDevicesByClaimCodeResponse Prelude.Int
claimDevicesByClaimCodeResponse_httpStatus = Lens.lens (\ClaimDevicesByClaimCodeResponse' {httpStatus} -> httpStatus) (\s@ClaimDevicesByClaimCodeResponse' {} a -> s {httpStatus = a} :: ClaimDevicesByClaimCodeResponse)

instance
  Prelude.NFData
    ClaimDevicesByClaimCodeResponse
  where
  rnf ClaimDevicesByClaimCodeResponse' {..} =
    Prelude.rnf total
      `Prelude.seq` Prelude.rnf claimCode
      `Prelude.seq` Prelude.rnf httpStatus

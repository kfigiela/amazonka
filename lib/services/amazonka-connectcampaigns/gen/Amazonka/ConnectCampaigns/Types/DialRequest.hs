{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ConnectCampaigns.Types.DialRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ConnectCampaigns.Types.DialRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A dial request for a campaign.
--
-- /See:/ 'newDialRequest' smart constructor.
data DialRequest = DialRequest'
  { attributes :: Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text),
    clientToken :: Prelude.Text,
    expirationTime :: Core.POSIX,
    phoneNumber :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DialRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'dialRequest_attributes' - Undocumented member.
--
-- 'clientToken', 'dialRequest_clientToken' - Undocumented member.
--
-- 'expirationTime', 'dialRequest_expirationTime' - Undocumented member.
--
-- 'phoneNumber', 'dialRequest_phoneNumber' - Undocumented member.
newDialRequest ::
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'expirationTime'
  Prelude.UTCTime ->
  -- | 'phoneNumber'
  Prelude.Text ->
  DialRequest
newDialRequest
  pClientToken_
  pExpirationTime_
  pPhoneNumber_ =
    DialRequest'
      { attributes = Prelude.mempty,
        clientToken = pClientToken_,
        expirationTime = Core._Time Lens.# pExpirationTime_,
        phoneNumber = Core._Sensitive Lens.# pPhoneNumber_
      }

-- | Undocumented member.
dialRequest_attributes :: Lens.Lens' DialRequest (Prelude.HashMap Prelude.Text Prelude.Text)
dialRequest_attributes = Lens.lens (\DialRequest' {attributes} -> attributes) (\s@DialRequest' {} a -> s {attributes = a} :: DialRequest) Prelude.. Core._Sensitive Prelude.. Lens.coerced

-- | Undocumented member.
dialRequest_clientToken :: Lens.Lens' DialRequest Prelude.Text
dialRequest_clientToken = Lens.lens (\DialRequest' {clientToken} -> clientToken) (\s@DialRequest' {} a -> s {clientToken = a} :: DialRequest)

-- | Undocumented member.
dialRequest_expirationTime :: Lens.Lens' DialRequest Prelude.UTCTime
dialRequest_expirationTime = Lens.lens (\DialRequest' {expirationTime} -> expirationTime) (\s@DialRequest' {} a -> s {expirationTime = a} :: DialRequest) Prelude.. Core._Time

-- | Undocumented member.
dialRequest_phoneNumber :: Lens.Lens' DialRequest Prelude.Text
dialRequest_phoneNumber = Lens.lens (\DialRequest' {phoneNumber} -> phoneNumber) (\s@DialRequest' {} a -> s {phoneNumber = a} :: DialRequest) Prelude.. Core._Sensitive

instance Prelude.Hashable DialRequest where
  hashWithSalt _salt DialRequest' {..} =
    _salt `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` expirationTime
      `Prelude.hashWithSalt` phoneNumber

instance Prelude.NFData DialRequest where
  rnf DialRequest' {..} =
    Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf expirationTime
      `Prelude.seq` Prelude.rnf phoneNumber

instance Core.ToJSON DialRequest where
  toJSON DialRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("attributes" Core..= attributes),
            Prelude.Just ("clientToken" Core..= clientToken),
            Prelude.Just
              ("expirationTime" Core..= expirationTime),
            Prelude.Just ("phoneNumber" Core..= phoneNumber)
          ]
      )

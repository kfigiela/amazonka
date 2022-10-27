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
-- Module      : Amazonka.FMS.GetThirdPartyFirewallAssociationStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The onboarding status of a Firewall Manager admin account to third-party
-- firewall vendor tenant.
module Amazonka.FMS.GetThirdPartyFirewallAssociationStatus
  ( -- * Creating a Request
    GetThirdPartyFirewallAssociationStatus (..),
    newGetThirdPartyFirewallAssociationStatus,

    -- * Request Lenses
    getThirdPartyFirewallAssociationStatus_thirdPartyFirewall,

    -- * Destructuring the Response
    GetThirdPartyFirewallAssociationStatusResponse (..),
    newGetThirdPartyFirewallAssociationStatusResponse,

    -- * Response Lenses
    getThirdPartyFirewallAssociationStatusResponse_marketplaceOnboardingStatus,
    getThirdPartyFirewallAssociationStatusResponse_thirdPartyFirewallStatus,
    getThirdPartyFirewallAssociationStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetThirdPartyFirewallAssociationStatus' smart constructor.
data GetThirdPartyFirewallAssociationStatus = GetThirdPartyFirewallAssociationStatus'
  { -- | The name of the third-party firewall vendor.
    thirdPartyFirewall :: ThirdPartyFirewall
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetThirdPartyFirewallAssociationStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thirdPartyFirewall', 'getThirdPartyFirewallAssociationStatus_thirdPartyFirewall' - The name of the third-party firewall vendor.
newGetThirdPartyFirewallAssociationStatus ::
  -- | 'thirdPartyFirewall'
  ThirdPartyFirewall ->
  GetThirdPartyFirewallAssociationStatus
newGetThirdPartyFirewallAssociationStatus
  pThirdPartyFirewall_ =
    GetThirdPartyFirewallAssociationStatus'
      { thirdPartyFirewall =
          pThirdPartyFirewall_
      }

-- | The name of the third-party firewall vendor.
getThirdPartyFirewallAssociationStatus_thirdPartyFirewall :: Lens.Lens' GetThirdPartyFirewallAssociationStatus ThirdPartyFirewall
getThirdPartyFirewallAssociationStatus_thirdPartyFirewall = Lens.lens (\GetThirdPartyFirewallAssociationStatus' {thirdPartyFirewall} -> thirdPartyFirewall) (\s@GetThirdPartyFirewallAssociationStatus' {} a -> s {thirdPartyFirewall = a} :: GetThirdPartyFirewallAssociationStatus)

instance
  Core.AWSRequest
    GetThirdPartyFirewallAssociationStatus
  where
  type
    AWSResponse
      GetThirdPartyFirewallAssociationStatus =
      GetThirdPartyFirewallAssociationStatusResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetThirdPartyFirewallAssociationStatusResponse'
            Prelude.<$> (x Core..?> "MarketplaceOnboardingStatus")
              Prelude.<*> (x Core..?> "ThirdPartyFirewallStatus")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetThirdPartyFirewallAssociationStatus
  where
  hashWithSalt
    _salt
    GetThirdPartyFirewallAssociationStatus' {..} =
      _salt `Prelude.hashWithSalt` thirdPartyFirewall

instance
  Prelude.NFData
    GetThirdPartyFirewallAssociationStatus
  where
  rnf GetThirdPartyFirewallAssociationStatus' {..} =
    Prelude.rnf thirdPartyFirewall

instance
  Core.ToHeaders
    GetThirdPartyFirewallAssociationStatus
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSFMS_20180101.GetThirdPartyFirewallAssociationStatus" ::
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
    GetThirdPartyFirewallAssociationStatus
  where
  toJSON GetThirdPartyFirewallAssociationStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ThirdPartyFirewall" Core..= thirdPartyFirewall)
          ]
      )

instance
  Core.ToPath
    GetThirdPartyFirewallAssociationStatus
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetThirdPartyFirewallAssociationStatus
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetThirdPartyFirewallAssociationStatusResponse' smart constructor.
data GetThirdPartyFirewallAssociationStatusResponse = GetThirdPartyFirewallAssociationStatusResponse'
  { -- | The status for subscribing to the third-party firewall vendor in the
    -- Amazon Web Services Marketplace.
    --
    -- -   @NO_SUBSCRIPTION@ - The Firewall Manager policy administrator isn\'t
    --     subscribed to the third-party firewall service in the Amazon Web
    --     Services Marketplace.
    --
    -- -   @NOT_COMPLETE@ - The Firewall Manager policy administrator is in the
    --     process of subscribing to the third-party firewall service in the
    --     Amazon Web Services Marketplace, but doesn\'t yet have an active
    --     subscription.
    --
    -- -   @COMPLETE@ - The Firewall Manager policy administrator has an active
    --     subscription to the third-party firewall service in the Amazon Web
    --     Services Marketplace.
    marketplaceOnboardingStatus :: Prelude.Maybe MarketplaceSubscriptionOnboardingStatus,
    -- | The current status for setting a Firewall Manager policy administrators
    -- account as an administrator of the third-party firewall tenant.
    --
    -- -   @ONBOARDING@ - The Firewall Manager policy administrator is being
    --     designated as a tenant administrator.
    --
    -- -   @ONBOARD_COMPLETE@ - The Firewall Manager policy administrator is
    --     designated as a tenant administrator.
    --
    -- -   @OFFBOARDING@ - The Firewall Manager policy administrator is being
    --     removed as a tenant administrator.
    --
    -- -   @OFFBOARD_COMPLETE@ - The Firewall Manager policy administrator has
    --     been removed as a tenant administrator.
    --
    -- -   @NOT_EXIST@ - The Firewall Manager policy administrator doesn\'t
    --     exist as a tenant administrator.
    thirdPartyFirewallStatus :: Prelude.Maybe ThirdPartyFirewallAssociationStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetThirdPartyFirewallAssociationStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marketplaceOnboardingStatus', 'getThirdPartyFirewallAssociationStatusResponse_marketplaceOnboardingStatus' - The status for subscribing to the third-party firewall vendor in the
-- Amazon Web Services Marketplace.
--
-- -   @NO_SUBSCRIPTION@ - The Firewall Manager policy administrator isn\'t
--     subscribed to the third-party firewall service in the Amazon Web
--     Services Marketplace.
--
-- -   @NOT_COMPLETE@ - The Firewall Manager policy administrator is in the
--     process of subscribing to the third-party firewall service in the
--     Amazon Web Services Marketplace, but doesn\'t yet have an active
--     subscription.
--
-- -   @COMPLETE@ - The Firewall Manager policy administrator has an active
--     subscription to the third-party firewall service in the Amazon Web
--     Services Marketplace.
--
-- 'thirdPartyFirewallStatus', 'getThirdPartyFirewallAssociationStatusResponse_thirdPartyFirewallStatus' - The current status for setting a Firewall Manager policy administrators
-- account as an administrator of the third-party firewall tenant.
--
-- -   @ONBOARDING@ - The Firewall Manager policy administrator is being
--     designated as a tenant administrator.
--
-- -   @ONBOARD_COMPLETE@ - The Firewall Manager policy administrator is
--     designated as a tenant administrator.
--
-- -   @OFFBOARDING@ - The Firewall Manager policy administrator is being
--     removed as a tenant administrator.
--
-- -   @OFFBOARD_COMPLETE@ - The Firewall Manager policy administrator has
--     been removed as a tenant administrator.
--
-- -   @NOT_EXIST@ - The Firewall Manager policy administrator doesn\'t
--     exist as a tenant administrator.
--
-- 'httpStatus', 'getThirdPartyFirewallAssociationStatusResponse_httpStatus' - The response's http status code.
newGetThirdPartyFirewallAssociationStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetThirdPartyFirewallAssociationStatusResponse
newGetThirdPartyFirewallAssociationStatusResponse
  pHttpStatus_ =
    GetThirdPartyFirewallAssociationStatusResponse'
      { marketplaceOnboardingStatus =
          Prelude.Nothing,
        thirdPartyFirewallStatus =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The status for subscribing to the third-party firewall vendor in the
-- Amazon Web Services Marketplace.
--
-- -   @NO_SUBSCRIPTION@ - The Firewall Manager policy administrator isn\'t
--     subscribed to the third-party firewall service in the Amazon Web
--     Services Marketplace.
--
-- -   @NOT_COMPLETE@ - The Firewall Manager policy administrator is in the
--     process of subscribing to the third-party firewall service in the
--     Amazon Web Services Marketplace, but doesn\'t yet have an active
--     subscription.
--
-- -   @COMPLETE@ - The Firewall Manager policy administrator has an active
--     subscription to the third-party firewall service in the Amazon Web
--     Services Marketplace.
getThirdPartyFirewallAssociationStatusResponse_marketplaceOnboardingStatus :: Lens.Lens' GetThirdPartyFirewallAssociationStatusResponse (Prelude.Maybe MarketplaceSubscriptionOnboardingStatus)
getThirdPartyFirewallAssociationStatusResponse_marketplaceOnboardingStatus = Lens.lens (\GetThirdPartyFirewallAssociationStatusResponse' {marketplaceOnboardingStatus} -> marketplaceOnboardingStatus) (\s@GetThirdPartyFirewallAssociationStatusResponse' {} a -> s {marketplaceOnboardingStatus = a} :: GetThirdPartyFirewallAssociationStatusResponse)

-- | The current status for setting a Firewall Manager policy administrators
-- account as an administrator of the third-party firewall tenant.
--
-- -   @ONBOARDING@ - The Firewall Manager policy administrator is being
--     designated as a tenant administrator.
--
-- -   @ONBOARD_COMPLETE@ - The Firewall Manager policy administrator is
--     designated as a tenant administrator.
--
-- -   @OFFBOARDING@ - The Firewall Manager policy administrator is being
--     removed as a tenant administrator.
--
-- -   @OFFBOARD_COMPLETE@ - The Firewall Manager policy administrator has
--     been removed as a tenant administrator.
--
-- -   @NOT_EXIST@ - The Firewall Manager policy administrator doesn\'t
--     exist as a tenant administrator.
getThirdPartyFirewallAssociationStatusResponse_thirdPartyFirewallStatus :: Lens.Lens' GetThirdPartyFirewallAssociationStatusResponse (Prelude.Maybe ThirdPartyFirewallAssociationStatus)
getThirdPartyFirewallAssociationStatusResponse_thirdPartyFirewallStatus = Lens.lens (\GetThirdPartyFirewallAssociationStatusResponse' {thirdPartyFirewallStatus} -> thirdPartyFirewallStatus) (\s@GetThirdPartyFirewallAssociationStatusResponse' {} a -> s {thirdPartyFirewallStatus = a} :: GetThirdPartyFirewallAssociationStatusResponse)

-- | The response's http status code.
getThirdPartyFirewallAssociationStatusResponse_httpStatus :: Lens.Lens' GetThirdPartyFirewallAssociationStatusResponse Prelude.Int
getThirdPartyFirewallAssociationStatusResponse_httpStatus = Lens.lens (\GetThirdPartyFirewallAssociationStatusResponse' {httpStatus} -> httpStatus) (\s@GetThirdPartyFirewallAssociationStatusResponse' {} a -> s {httpStatus = a} :: GetThirdPartyFirewallAssociationStatusResponse)

instance
  Prelude.NFData
    GetThirdPartyFirewallAssociationStatusResponse
  where
  rnf
    GetThirdPartyFirewallAssociationStatusResponse' {..} =
      Prelude.rnf marketplaceOnboardingStatus
        `Prelude.seq` Prelude.rnf thirdPartyFirewallStatus
        `Prelude.seq` Prelude.rnf httpStatus

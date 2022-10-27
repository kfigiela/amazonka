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
-- Module      : Amazonka.PrivateNetworks.ActivateNetworkSite
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates the specified network site.
module Amazonka.PrivateNetworks.ActivateNetworkSite
  ( -- * Creating a Request
    ActivateNetworkSite (..),
    newActivateNetworkSite,

    -- * Request Lenses
    activateNetworkSite_clientToken,
    activateNetworkSite_networkSiteArn,
    activateNetworkSite_shippingAddress,

    -- * Destructuring the Response
    ActivateNetworkSiteResponse (..),
    newActivateNetworkSiteResponse,

    -- * Response Lenses
    activateNetworkSiteResponse_networkSite,
    activateNetworkSiteResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.PrivateNetworks.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newActivateNetworkSite' smart constructor.
data ActivateNetworkSite = ActivateNetworkSite'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to ensure idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the network site.
    networkSiteArn :: Prelude.Text,
    -- | The shipping address of the network site.
    shippingAddress :: Address
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActivateNetworkSite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'activateNetworkSite_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to ensure idempotency>.
--
-- 'networkSiteArn', 'activateNetworkSite_networkSiteArn' - The Amazon Resource Name (ARN) of the network site.
--
-- 'shippingAddress', 'activateNetworkSite_shippingAddress' - The shipping address of the network site.
newActivateNetworkSite ::
  -- | 'networkSiteArn'
  Prelude.Text ->
  -- | 'shippingAddress'
  Address ->
  ActivateNetworkSite
newActivateNetworkSite
  pNetworkSiteArn_
  pShippingAddress_ =
    ActivateNetworkSite'
      { clientToken = Prelude.Nothing,
        networkSiteArn = pNetworkSiteArn_,
        shippingAddress = pShippingAddress_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to ensure idempotency>.
activateNetworkSite_clientToken :: Lens.Lens' ActivateNetworkSite (Prelude.Maybe Prelude.Text)
activateNetworkSite_clientToken = Lens.lens (\ActivateNetworkSite' {clientToken} -> clientToken) (\s@ActivateNetworkSite' {} a -> s {clientToken = a} :: ActivateNetworkSite)

-- | The Amazon Resource Name (ARN) of the network site.
activateNetworkSite_networkSiteArn :: Lens.Lens' ActivateNetworkSite Prelude.Text
activateNetworkSite_networkSiteArn = Lens.lens (\ActivateNetworkSite' {networkSiteArn} -> networkSiteArn) (\s@ActivateNetworkSite' {} a -> s {networkSiteArn = a} :: ActivateNetworkSite)

-- | The shipping address of the network site.
activateNetworkSite_shippingAddress :: Lens.Lens' ActivateNetworkSite Address
activateNetworkSite_shippingAddress = Lens.lens (\ActivateNetworkSite' {shippingAddress} -> shippingAddress) (\s@ActivateNetworkSite' {} a -> s {shippingAddress = a} :: ActivateNetworkSite)

instance Core.AWSRequest ActivateNetworkSite where
  type
    AWSResponse ActivateNetworkSite =
      ActivateNetworkSiteResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ActivateNetworkSiteResponse'
            Prelude.<$> (x Core..?> "networkSite")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ActivateNetworkSite where
  hashWithSalt _salt ActivateNetworkSite' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` networkSiteArn
      `Prelude.hashWithSalt` shippingAddress

instance Prelude.NFData ActivateNetworkSite where
  rnf ActivateNetworkSite' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf networkSiteArn
      `Prelude.seq` Prelude.rnf shippingAddress

instance Core.ToHeaders ActivateNetworkSite where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ActivateNetworkSite where
  toJSON ActivateNetworkSite' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ("networkSiteArn" Core..= networkSiteArn),
            Prelude.Just
              ("shippingAddress" Core..= shippingAddress)
          ]
      )

instance Core.ToPath ActivateNetworkSite where
  toPath = Prelude.const "/v1/network-sites/activate"

instance Core.ToQuery ActivateNetworkSite where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newActivateNetworkSiteResponse' smart constructor.
data ActivateNetworkSiteResponse = ActivateNetworkSiteResponse'
  { -- | Information about the network site.
    networkSite :: Prelude.Maybe NetworkSite,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActivateNetworkSiteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkSite', 'activateNetworkSiteResponse_networkSite' - Information about the network site.
--
-- 'httpStatus', 'activateNetworkSiteResponse_httpStatus' - The response's http status code.
newActivateNetworkSiteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ActivateNetworkSiteResponse
newActivateNetworkSiteResponse pHttpStatus_ =
  ActivateNetworkSiteResponse'
    { networkSite =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the network site.
activateNetworkSiteResponse_networkSite :: Lens.Lens' ActivateNetworkSiteResponse (Prelude.Maybe NetworkSite)
activateNetworkSiteResponse_networkSite = Lens.lens (\ActivateNetworkSiteResponse' {networkSite} -> networkSite) (\s@ActivateNetworkSiteResponse' {} a -> s {networkSite = a} :: ActivateNetworkSiteResponse)

-- | The response's http status code.
activateNetworkSiteResponse_httpStatus :: Lens.Lens' ActivateNetworkSiteResponse Prelude.Int
activateNetworkSiteResponse_httpStatus = Lens.lens (\ActivateNetworkSiteResponse' {httpStatus} -> httpStatus) (\s@ActivateNetworkSiteResponse' {} a -> s {httpStatus = a} :: ActivateNetworkSiteResponse)

instance Prelude.NFData ActivateNetworkSiteResponse where
  rnf ActivateNetworkSiteResponse' {..} =
    Prelude.rnf networkSite
      `Prelude.seq` Prelude.rnf httpStatus

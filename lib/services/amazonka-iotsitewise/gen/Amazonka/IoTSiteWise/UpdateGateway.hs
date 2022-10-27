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
-- Module      : Amazonka.IoTSiteWise.UpdateGateway
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a gateway\'s name.
module Amazonka.IoTSiteWise.UpdateGateway
  ( -- * Creating a Request
    UpdateGateway (..),
    newUpdateGateway,

    -- * Request Lenses
    updateGateway_gatewayId,
    updateGateway_gatewayName,

    -- * Destructuring the Response
    UpdateGatewayResponse (..),
    newUpdateGatewayResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateGateway' smart constructor.
data UpdateGateway = UpdateGateway'
  { -- | The ID of the gateway to update.
    gatewayId :: Prelude.Text,
    -- | A unique, friendly name for the gateway.
    gatewayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayId', 'updateGateway_gatewayId' - The ID of the gateway to update.
--
-- 'gatewayName', 'updateGateway_gatewayName' - A unique, friendly name for the gateway.
newUpdateGateway ::
  -- | 'gatewayId'
  Prelude.Text ->
  -- | 'gatewayName'
  Prelude.Text ->
  UpdateGateway
newUpdateGateway pGatewayId_ pGatewayName_ =
  UpdateGateway'
    { gatewayId = pGatewayId_,
      gatewayName = pGatewayName_
    }

-- | The ID of the gateway to update.
updateGateway_gatewayId :: Lens.Lens' UpdateGateway Prelude.Text
updateGateway_gatewayId = Lens.lens (\UpdateGateway' {gatewayId} -> gatewayId) (\s@UpdateGateway' {} a -> s {gatewayId = a} :: UpdateGateway)

-- | A unique, friendly name for the gateway.
updateGateway_gatewayName :: Lens.Lens' UpdateGateway Prelude.Text
updateGateway_gatewayName = Lens.lens (\UpdateGateway' {gatewayName} -> gatewayName) (\s@UpdateGateway' {} a -> s {gatewayName = a} :: UpdateGateway)

instance Core.AWSRequest UpdateGateway where
  type
    AWSResponse UpdateGateway =
      UpdateGatewayResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveNull UpdateGatewayResponse'

instance Prelude.Hashable UpdateGateway where
  hashWithSalt _salt UpdateGateway' {..} =
    _salt `Prelude.hashWithSalt` gatewayId
      `Prelude.hashWithSalt` gatewayName

instance Prelude.NFData UpdateGateway where
  rnf UpdateGateway' {..} =
    Prelude.rnf gatewayId
      `Prelude.seq` Prelude.rnf gatewayName

instance Core.ToHeaders UpdateGateway where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateGateway where
  toJSON UpdateGateway' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("gatewayName" Core..= gatewayName)]
      )

instance Core.ToPath UpdateGateway where
  toPath UpdateGateway' {..} =
    Prelude.mconcat
      ["/20200301/gateways/", Core.toBS gatewayId]

instance Core.ToQuery UpdateGateway where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateGatewayResponse' smart constructor.
data UpdateGatewayResponse = UpdateGatewayResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateGatewayResponse ::
  UpdateGatewayResponse
newUpdateGatewayResponse = UpdateGatewayResponse'

instance Prelude.NFData UpdateGatewayResponse where
  rnf _ = ()

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
-- Module      : Amazonka.Inspector2.UpdateOrganizationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configurations for your Amazon Inspector organization.
module Amazonka.Inspector2.UpdateOrganizationConfiguration
  ( -- * Creating a Request
    UpdateOrganizationConfiguration (..),
    newUpdateOrganizationConfiguration,

    -- * Request Lenses
    updateOrganizationConfiguration_autoEnable,

    -- * Destructuring the Response
    UpdateOrganizationConfigurationResponse (..),
    newUpdateOrganizationConfigurationResponse,

    -- * Response Lenses
    updateOrganizationConfigurationResponse_httpStatus,
    updateOrganizationConfigurationResponse_autoEnable,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateOrganizationConfiguration' smart constructor.
data UpdateOrganizationConfiguration = UpdateOrganizationConfiguration'
  { -- | Defines which scan types are enabled automatically for new members of
    -- your Amazon Inspector organization.
    autoEnable :: AutoEnable
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoEnable', 'updateOrganizationConfiguration_autoEnable' - Defines which scan types are enabled automatically for new members of
-- your Amazon Inspector organization.
newUpdateOrganizationConfiguration ::
  -- | 'autoEnable'
  AutoEnable ->
  UpdateOrganizationConfiguration
newUpdateOrganizationConfiguration pAutoEnable_ =
  UpdateOrganizationConfiguration'
    { autoEnable =
        pAutoEnable_
    }

-- | Defines which scan types are enabled automatically for new members of
-- your Amazon Inspector organization.
updateOrganizationConfiguration_autoEnable :: Lens.Lens' UpdateOrganizationConfiguration AutoEnable
updateOrganizationConfiguration_autoEnable = Lens.lens (\UpdateOrganizationConfiguration' {autoEnable} -> autoEnable) (\s@UpdateOrganizationConfiguration' {} a -> s {autoEnable = a} :: UpdateOrganizationConfiguration)

instance
  Core.AWSRequest
    UpdateOrganizationConfiguration
  where
  type
    AWSResponse UpdateOrganizationConfiguration =
      UpdateOrganizationConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateOrganizationConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "autoEnable")
      )

instance
  Prelude.Hashable
    UpdateOrganizationConfiguration
  where
  hashWithSalt
    _salt
    UpdateOrganizationConfiguration' {..} =
      _salt `Prelude.hashWithSalt` autoEnable

instance
  Prelude.NFData
    UpdateOrganizationConfiguration
  where
  rnf UpdateOrganizationConfiguration' {..} =
    Prelude.rnf autoEnable

instance
  Core.ToHeaders
    UpdateOrganizationConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateOrganizationConfiguration where
  toJSON UpdateOrganizationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("autoEnable" Core..= autoEnable)]
      )

instance Core.ToPath UpdateOrganizationConfiguration where
  toPath =
    Prelude.const "/organizationconfiguration/update"

instance Core.ToQuery UpdateOrganizationConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateOrganizationConfigurationResponse' smart constructor.
data UpdateOrganizationConfigurationResponse = UpdateOrganizationConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The updated status of scan types automatically enabled for new members
    -- of your Amazon Inspector organization.
    autoEnable :: AutoEnable
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateOrganizationConfigurationResponse_httpStatus' - The response's http status code.
--
-- 'autoEnable', 'updateOrganizationConfigurationResponse_autoEnable' - The updated status of scan types automatically enabled for new members
-- of your Amazon Inspector organization.
newUpdateOrganizationConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'autoEnable'
  AutoEnable ->
  UpdateOrganizationConfigurationResponse
newUpdateOrganizationConfigurationResponse
  pHttpStatus_
  pAutoEnable_ =
    UpdateOrganizationConfigurationResponse'
      { httpStatus =
          pHttpStatus_,
        autoEnable = pAutoEnable_
      }

-- | The response's http status code.
updateOrganizationConfigurationResponse_httpStatus :: Lens.Lens' UpdateOrganizationConfigurationResponse Prelude.Int
updateOrganizationConfigurationResponse_httpStatus = Lens.lens (\UpdateOrganizationConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateOrganizationConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateOrganizationConfigurationResponse)

-- | The updated status of scan types automatically enabled for new members
-- of your Amazon Inspector organization.
updateOrganizationConfigurationResponse_autoEnable :: Lens.Lens' UpdateOrganizationConfigurationResponse AutoEnable
updateOrganizationConfigurationResponse_autoEnable = Lens.lens (\UpdateOrganizationConfigurationResponse' {autoEnable} -> autoEnable) (\s@UpdateOrganizationConfigurationResponse' {} a -> s {autoEnable = a} :: UpdateOrganizationConfigurationResponse)

instance
  Prelude.NFData
    UpdateOrganizationConfigurationResponse
  where
  rnf UpdateOrganizationConfigurationResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf autoEnable

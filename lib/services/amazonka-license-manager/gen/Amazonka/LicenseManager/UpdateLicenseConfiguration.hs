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
-- Module      : Amazonka.LicenseManager.UpdateLicenseConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the attributes of an existing license configuration.
module Amazonka.LicenseManager.UpdateLicenseConfiguration
  ( -- * Creating a Request
    UpdateLicenseConfiguration (..),
    newUpdateLicenseConfiguration,

    -- * Request Lenses
    updateLicenseConfiguration_name,
    updateLicenseConfiguration_productInformationList,
    updateLicenseConfiguration_licenseRules,
    updateLicenseConfiguration_description,
    updateLicenseConfiguration_licenseCount,
    updateLicenseConfiguration_licenseCountHardLimit,
    updateLicenseConfiguration_licenseConfigurationStatus,
    updateLicenseConfiguration_disassociateWhenNotFound,
    updateLicenseConfiguration_licenseConfigurationArn,

    -- * Destructuring the Response
    UpdateLicenseConfigurationResponse (..),
    newUpdateLicenseConfigurationResponse,

    -- * Response Lenses
    updateLicenseConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLicenseConfiguration' smart constructor.
data UpdateLicenseConfiguration = UpdateLicenseConfiguration'
  { -- | New name of the license configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | New product information.
    productInformationList :: Prelude.Maybe [ProductInformation],
    -- | New license rule. The only rule that you can add after you create a
    -- license configuration is licenseAffinityToHost.
    licenseRules :: Prelude.Maybe [Prelude.Text],
    -- | New description of the license configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | New number of licenses managed by the license configuration.
    licenseCount :: Prelude.Maybe Prelude.Integer,
    -- | New hard limit of the number of available licenses.
    licenseCountHardLimit :: Prelude.Maybe Prelude.Bool,
    -- | New status of the license configuration.
    licenseConfigurationStatus :: Prelude.Maybe LicenseConfigurationStatus,
    -- | When true, disassociates a resource when software is uninstalled.
    disassociateWhenNotFound :: Prelude.Maybe Prelude.Bool,
    -- | Amazon Resource Name (ARN) of the license configuration.
    licenseConfigurationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLicenseConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateLicenseConfiguration_name' - New name of the license configuration.
--
-- 'productInformationList', 'updateLicenseConfiguration_productInformationList' - New product information.
--
-- 'licenseRules', 'updateLicenseConfiguration_licenseRules' - New license rule. The only rule that you can add after you create a
-- license configuration is licenseAffinityToHost.
--
-- 'description', 'updateLicenseConfiguration_description' - New description of the license configuration.
--
-- 'licenseCount', 'updateLicenseConfiguration_licenseCount' - New number of licenses managed by the license configuration.
--
-- 'licenseCountHardLimit', 'updateLicenseConfiguration_licenseCountHardLimit' - New hard limit of the number of available licenses.
--
-- 'licenseConfigurationStatus', 'updateLicenseConfiguration_licenseConfigurationStatus' - New status of the license configuration.
--
-- 'disassociateWhenNotFound', 'updateLicenseConfiguration_disassociateWhenNotFound' - When true, disassociates a resource when software is uninstalled.
--
-- 'licenseConfigurationArn', 'updateLicenseConfiguration_licenseConfigurationArn' - Amazon Resource Name (ARN) of the license configuration.
newUpdateLicenseConfiguration ::
  -- | 'licenseConfigurationArn'
  Prelude.Text ->
  UpdateLicenseConfiguration
newUpdateLicenseConfiguration
  pLicenseConfigurationArn_ =
    UpdateLicenseConfiguration'
      { name = Prelude.Nothing,
        productInformationList = Prelude.Nothing,
        licenseRules = Prelude.Nothing,
        description = Prelude.Nothing,
        licenseCount = Prelude.Nothing,
        licenseCountHardLimit = Prelude.Nothing,
        licenseConfigurationStatus = Prelude.Nothing,
        disassociateWhenNotFound = Prelude.Nothing,
        licenseConfigurationArn =
          pLicenseConfigurationArn_
      }

-- | New name of the license configuration.
updateLicenseConfiguration_name :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe Prelude.Text)
updateLicenseConfiguration_name = Lens.lens (\UpdateLicenseConfiguration' {name} -> name) (\s@UpdateLicenseConfiguration' {} a -> s {name = a} :: UpdateLicenseConfiguration)

-- | New product information.
updateLicenseConfiguration_productInformationList :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe [ProductInformation])
updateLicenseConfiguration_productInformationList = Lens.lens (\UpdateLicenseConfiguration' {productInformationList} -> productInformationList) (\s@UpdateLicenseConfiguration' {} a -> s {productInformationList = a} :: UpdateLicenseConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | New license rule. The only rule that you can add after you create a
-- license configuration is licenseAffinityToHost.
updateLicenseConfiguration_licenseRules :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe [Prelude.Text])
updateLicenseConfiguration_licenseRules = Lens.lens (\UpdateLicenseConfiguration' {licenseRules} -> licenseRules) (\s@UpdateLicenseConfiguration' {} a -> s {licenseRules = a} :: UpdateLicenseConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | New description of the license configuration.
updateLicenseConfiguration_description :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe Prelude.Text)
updateLicenseConfiguration_description = Lens.lens (\UpdateLicenseConfiguration' {description} -> description) (\s@UpdateLicenseConfiguration' {} a -> s {description = a} :: UpdateLicenseConfiguration)

-- | New number of licenses managed by the license configuration.
updateLicenseConfiguration_licenseCount :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe Prelude.Integer)
updateLicenseConfiguration_licenseCount = Lens.lens (\UpdateLicenseConfiguration' {licenseCount} -> licenseCount) (\s@UpdateLicenseConfiguration' {} a -> s {licenseCount = a} :: UpdateLicenseConfiguration)

-- | New hard limit of the number of available licenses.
updateLicenseConfiguration_licenseCountHardLimit :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe Prelude.Bool)
updateLicenseConfiguration_licenseCountHardLimit = Lens.lens (\UpdateLicenseConfiguration' {licenseCountHardLimit} -> licenseCountHardLimit) (\s@UpdateLicenseConfiguration' {} a -> s {licenseCountHardLimit = a} :: UpdateLicenseConfiguration)

-- | New status of the license configuration.
updateLicenseConfiguration_licenseConfigurationStatus :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe LicenseConfigurationStatus)
updateLicenseConfiguration_licenseConfigurationStatus = Lens.lens (\UpdateLicenseConfiguration' {licenseConfigurationStatus} -> licenseConfigurationStatus) (\s@UpdateLicenseConfiguration' {} a -> s {licenseConfigurationStatus = a} :: UpdateLicenseConfiguration)

-- | When true, disassociates a resource when software is uninstalled.
updateLicenseConfiguration_disassociateWhenNotFound :: Lens.Lens' UpdateLicenseConfiguration (Prelude.Maybe Prelude.Bool)
updateLicenseConfiguration_disassociateWhenNotFound = Lens.lens (\UpdateLicenseConfiguration' {disassociateWhenNotFound} -> disassociateWhenNotFound) (\s@UpdateLicenseConfiguration' {} a -> s {disassociateWhenNotFound = a} :: UpdateLicenseConfiguration)

-- | Amazon Resource Name (ARN) of the license configuration.
updateLicenseConfiguration_licenseConfigurationArn :: Lens.Lens' UpdateLicenseConfiguration Prelude.Text
updateLicenseConfiguration_licenseConfigurationArn = Lens.lens (\UpdateLicenseConfiguration' {licenseConfigurationArn} -> licenseConfigurationArn) (\s@UpdateLicenseConfiguration' {} a -> s {licenseConfigurationArn = a} :: UpdateLicenseConfiguration)

instance Core.AWSRequest UpdateLicenseConfiguration where
  type
    AWSResponse UpdateLicenseConfiguration =
      UpdateLicenseConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLicenseConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLicenseConfiguration where
  hashWithSalt _salt UpdateLicenseConfiguration' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` productInformationList
      `Prelude.hashWithSalt` licenseRules
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` licenseCount
      `Prelude.hashWithSalt` licenseCountHardLimit
      `Prelude.hashWithSalt` licenseConfigurationStatus
      `Prelude.hashWithSalt` disassociateWhenNotFound
      `Prelude.hashWithSalt` licenseConfigurationArn

instance Prelude.NFData UpdateLicenseConfiguration where
  rnf UpdateLicenseConfiguration' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf productInformationList
      `Prelude.seq` Prelude.rnf licenseRules
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf licenseCount
      `Prelude.seq` Prelude.rnf licenseCountHardLimit
      `Prelude.seq` Prelude.rnf licenseConfigurationStatus
      `Prelude.seq` Prelude.rnf disassociateWhenNotFound
      `Prelude.seq` Prelude.rnf licenseConfigurationArn

instance Core.ToHeaders UpdateLicenseConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.UpdateLicenseConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLicenseConfiguration where
  toJSON UpdateLicenseConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("ProductInformationList" Core..=)
              Prelude.<$> productInformationList,
            ("LicenseRules" Core..=) Prelude.<$> licenseRules,
            ("Description" Core..=) Prelude.<$> description,
            ("LicenseCount" Core..=) Prelude.<$> licenseCount,
            ("LicenseCountHardLimit" Core..=)
              Prelude.<$> licenseCountHardLimit,
            ("LicenseConfigurationStatus" Core..=)
              Prelude.<$> licenseConfigurationStatus,
            ("DisassociateWhenNotFound" Core..=)
              Prelude.<$> disassociateWhenNotFound,
            Prelude.Just
              ( "LicenseConfigurationArn"
                  Core..= licenseConfigurationArn
              )
          ]
      )

instance Core.ToPath UpdateLicenseConfiguration where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateLicenseConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLicenseConfigurationResponse' smart constructor.
data UpdateLicenseConfigurationResponse = UpdateLicenseConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLicenseConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLicenseConfigurationResponse_httpStatus' - The response's http status code.
newUpdateLicenseConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLicenseConfigurationResponse
newUpdateLicenseConfigurationResponse pHttpStatus_ =
  UpdateLicenseConfigurationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateLicenseConfigurationResponse_httpStatus :: Lens.Lens' UpdateLicenseConfigurationResponse Prelude.Int
updateLicenseConfigurationResponse_httpStatus = Lens.lens (\UpdateLicenseConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateLicenseConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateLicenseConfigurationResponse)

instance
  Prelude.NFData
    UpdateLicenseConfigurationResponse
  where
  rnf UpdateLicenseConfigurationResponse' {..} =
    Prelude.rnf httpStatus

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
-- Module      : Amazonka.QuickSight.UpdateTheme
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a theme.
module Amazonka.QuickSight.UpdateTheme
  ( -- * Creating a Request
    UpdateTheme (..),
    newUpdateTheme,

    -- * Request Lenses
    updateTheme_name,
    updateTheme_configuration,
    updateTheme_versionDescription,
    updateTheme_awsAccountId,
    updateTheme_themeId,
    updateTheme_baseThemeId,

    -- * Destructuring the Response
    UpdateThemeResponse (..),
    newUpdateThemeResponse,

    -- * Response Lenses
    updateThemeResponse_creationStatus,
    updateThemeResponse_requestId,
    updateThemeResponse_arn,
    updateThemeResponse_versionArn,
    updateThemeResponse_themeId,
    updateThemeResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateTheme' smart constructor.
data UpdateTheme = UpdateTheme'
  { -- | The name for the theme.
    name :: Prelude.Maybe Prelude.Text,
    -- | The theme configuration, which contains the theme display properties.
    configuration :: Prelude.Maybe ThemeConfiguration,
    -- | A description of the theme version that you\'re updating Every time that
    -- you call @UpdateTheme@, you create a new version of the theme. Each
    -- version of the theme maintains a description of the version in
    -- @VersionDescription@.
    versionDescription :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services account that contains the theme that
    -- you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Text,
    -- | The theme ID, defined by Amazon QuickSight, that a custom theme inherits
    -- from. All themes initially inherit from a default Amazon QuickSight
    -- theme.
    baseThemeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTheme' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateTheme_name' - The name for the theme.
--
-- 'configuration', 'updateTheme_configuration' - The theme configuration, which contains the theme display properties.
--
-- 'versionDescription', 'updateTheme_versionDescription' - A description of the theme version that you\'re updating Every time that
-- you call @UpdateTheme@, you create a new version of the theme. Each
-- version of the theme maintains a description of the version in
-- @VersionDescription@.
--
-- 'awsAccountId', 'updateTheme_awsAccountId' - The ID of the Amazon Web Services account that contains the theme that
-- you\'re updating.
--
-- 'themeId', 'updateTheme_themeId' - The ID for the theme.
--
-- 'baseThemeId', 'updateTheme_baseThemeId' - The theme ID, defined by Amazon QuickSight, that a custom theme inherits
-- from. All themes initially inherit from a default Amazon QuickSight
-- theme.
newUpdateTheme ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  -- | 'baseThemeId'
  Prelude.Text ->
  UpdateTheme
newUpdateTheme pAwsAccountId_ pThemeId_ pBaseThemeId_ =
  UpdateTheme'
    { name = Prelude.Nothing,
      configuration = Prelude.Nothing,
      versionDescription = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      themeId = pThemeId_,
      baseThemeId = pBaseThemeId_
    }

-- | The name for the theme.
updateTheme_name :: Lens.Lens' UpdateTheme (Prelude.Maybe Prelude.Text)
updateTheme_name = Lens.lens (\UpdateTheme' {name} -> name) (\s@UpdateTheme' {} a -> s {name = a} :: UpdateTheme)

-- | The theme configuration, which contains the theme display properties.
updateTheme_configuration :: Lens.Lens' UpdateTheme (Prelude.Maybe ThemeConfiguration)
updateTheme_configuration = Lens.lens (\UpdateTheme' {configuration} -> configuration) (\s@UpdateTheme' {} a -> s {configuration = a} :: UpdateTheme)

-- | A description of the theme version that you\'re updating Every time that
-- you call @UpdateTheme@, you create a new version of the theme. Each
-- version of the theme maintains a description of the version in
-- @VersionDescription@.
updateTheme_versionDescription :: Lens.Lens' UpdateTheme (Prelude.Maybe Prelude.Text)
updateTheme_versionDescription = Lens.lens (\UpdateTheme' {versionDescription} -> versionDescription) (\s@UpdateTheme' {} a -> s {versionDescription = a} :: UpdateTheme)

-- | The ID of the Amazon Web Services account that contains the theme that
-- you\'re updating.
updateTheme_awsAccountId :: Lens.Lens' UpdateTheme Prelude.Text
updateTheme_awsAccountId = Lens.lens (\UpdateTheme' {awsAccountId} -> awsAccountId) (\s@UpdateTheme' {} a -> s {awsAccountId = a} :: UpdateTheme)

-- | The ID for the theme.
updateTheme_themeId :: Lens.Lens' UpdateTheme Prelude.Text
updateTheme_themeId = Lens.lens (\UpdateTheme' {themeId} -> themeId) (\s@UpdateTheme' {} a -> s {themeId = a} :: UpdateTheme)

-- | The theme ID, defined by Amazon QuickSight, that a custom theme inherits
-- from. All themes initially inherit from a default Amazon QuickSight
-- theme.
updateTheme_baseThemeId :: Lens.Lens' UpdateTheme Prelude.Text
updateTheme_baseThemeId = Lens.lens (\UpdateTheme' {baseThemeId} -> baseThemeId) (\s@UpdateTheme' {} a -> s {baseThemeId = a} :: UpdateTheme)

instance Core.AWSRequest UpdateTheme where
  type AWSResponse UpdateTheme = UpdateThemeResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateThemeResponse'
            Prelude.<$> (x Core..?> "CreationStatus")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "VersionArn")
            Prelude.<*> (x Core..?> "ThemeId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTheme where
  hashWithSalt _salt UpdateTheme' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` configuration
      `Prelude.hashWithSalt` versionDescription
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` themeId
      `Prelude.hashWithSalt` baseThemeId

instance Prelude.NFData UpdateTheme where
  rnf UpdateTheme' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf configuration
      `Prelude.seq` Prelude.rnf versionDescription
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf themeId
      `Prelude.seq` Prelude.rnf baseThemeId

instance Core.ToHeaders UpdateTheme where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTheme where
  toJSON UpdateTheme' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Configuration" Core..=) Prelude.<$> configuration,
            ("VersionDescription" Core..=)
              Prelude.<$> versionDescription,
            Prelude.Just ("BaseThemeId" Core..= baseThemeId)
          ]
      )

instance Core.ToPath UpdateTheme where
  toPath UpdateTheme' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId
      ]

instance Core.ToQuery UpdateTheme where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateThemeResponse' smart constructor.
data UpdateThemeResponse = UpdateThemeResponse'
  { -- | The creation status of the theme.
    creationStatus :: Prelude.Maybe ResourceStatus,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the theme.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the new version of the theme.
    versionArn :: Prelude.Maybe Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateThemeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationStatus', 'updateThemeResponse_creationStatus' - The creation status of the theme.
--
-- 'requestId', 'updateThemeResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'updateThemeResponse_arn' - The Amazon Resource Name (ARN) for the theme.
--
-- 'versionArn', 'updateThemeResponse_versionArn' - The Amazon Resource Name (ARN) for the new version of the theme.
--
-- 'themeId', 'updateThemeResponse_themeId' - The ID for the theme.
--
-- 'status', 'updateThemeResponse_status' - The HTTP status of the request.
newUpdateThemeResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateThemeResponse
newUpdateThemeResponse pStatus_ =
  UpdateThemeResponse'
    { creationStatus =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      arn = Prelude.Nothing,
      versionArn = Prelude.Nothing,
      themeId = Prelude.Nothing,
      status = pStatus_
    }

-- | The creation status of the theme.
updateThemeResponse_creationStatus :: Lens.Lens' UpdateThemeResponse (Prelude.Maybe ResourceStatus)
updateThemeResponse_creationStatus = Lens.lens (\UpdateThemeResponse' {creationStatus} -> creationStatus) (\s@UpdateThemeResponse' {} a -> s {creationStatus = a} :: UpdateThemeResponse)

-- | The Amazon Web Services request ID for this operation.
updateThemeResponse_requestId :: Lens.Lens' UpdateThemeResponse (Prelude.Maybe Prelude.Text)
updateThemeResponse_requestId = Lens.lens (\UpdateThemeResponse' {requestId} -> requestId) (\s@UpdateThemeResponse' {} a -> s {requestId = a} :: UpdateThemeResponse)

-- | The Amazon Resource Name (ARN) for the theme.
updateThemeResponse_arn :: Lens.Lens' UpdateThemeResponse (Prelude.Maybe Prelude.Text)
updateThemeResponse_arn = Lens.lens (\UpdateThemeResponse' {arn} -> arn) (\s@UpdateThemeResponse' {} a -> s {arn = a} :: UpdateThemeResponse)

-- | The Amazon Resource Name (ARN) for the new version of the theme.
updateThemeResponse_versionArn :: Lens.Lens' UpdateThemeResponse (Prelude.Maybe Prelude.Text)
updateThemeResponse_versionArn = Lens.lens (\UpdateThemeResponse' {versionArn} -> versionArn) (\s@UpdateThemeResponse' {} a -> s {versionArn = a} :: UpdateThemeResponse)

-- | The ID for the theme.
updateThemeResponse_themeId :: Lens.Lens' UpdateThemeResponse (Prelude.Maybe Prelude.Text)
updateThemeResponse_themeId = Lens.lens (\UpdateThemeResponse' {themeId} -> themeId) (\s@UpdateThemeResponse' {} a -> s {themeId = a} :: UpdateThemeResponse)

-- | The HTTP status of the request.
updateThemeResponse_status :: Lens.Lens' UpdateThemeResponse Prelude.Int
updateThemeResponse_status = Lens.lens (\UpdateThemeResponse' {status} -> status) (\s@UpdateThemeResponse' {} a -> s {status = a} :: UpdateThemeResponse)

instance Prelude.NFData UpdateThemeResponse where
  rnf UpdateThemeResponse' {..} =
    Prelude.rnf creationStatus
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf versionArn
      `Prelude.seq` Prelude.rnf themeId
      `Prelude.seq` Prelude.rnf status

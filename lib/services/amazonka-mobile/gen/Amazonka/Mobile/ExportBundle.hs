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
-- Module      : Amazonka.Mobile.ExportBundle
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates customized software development kit (SDK) and or tool packages
-- used to integrate mobile web or mobile app clients with backend AWS
-- resources.
module Amazonka.Mobile.ExportBundle
  ( -- * Creating a Request
    ExportBundle (..),
    newExportBundle,

    -- * Request Lenses
    exportBundle_projectId,
    exportBundle_platform,
    exportBundle_bundleId,

    -- * Destructuring the Response
    ExportBundleResponse (..),
    newExportBundleResponse,

    -- * Response Lenses
    exportBundleResponse_downloadUrl,
    exportBundleResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Mobile.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Request structure used to request generation of custom SDK and tool
-- packages required to integrate mobile web or app clients with backed AWS
-- resources.
--
-- /See:/ 'newExportBundle' smart constructor.
data ExportBundle = ExportBundle'
  { -- | Unique project identifier.
    projectId :: Prelude.Maybe Prelude.Text,
    -- | Developer desktop or target application platform.
    platform :: Prelude.Maybe Platform,
    -- | Unique bundle identifier.
    bundleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportBundle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectId', 'exportBundle_projectId' - Unique project identifier.
--
-- 'platform', 'exportBundle_platform' - Developer desktop or target application platform.
--
-- 'bundleId', 'exportBundle_bundleId' - Unique bundle identifier.
newExportBundle ::
  -- | 'bundleId'
  Prelude.Text ->
  ExportBundle
newExportBundle pBundleId_ =
  ExportBundle'
    { projectId = Prelude.Nothing,
      platform = Prelude.Nothing,
      bundleId = pBundleId_
    }

-- | Unique project identifier.
exportBundle_projectId :: Lens.Lens' ExportBundle (Prelude.Maybe Prelude.Text)
exportBundle_projectId = Lens.lens (\ExportBundle' {projectId} -> projectId) (\s@ExportBundle' {} a -> s {projectId = a} :: ExportBundle)

-- | Developer desktop or target application platform.
exportBundle_platform :: Lens.Lens' ExportBundle (Prelude.Maybe Platform)
exportBundle_platform = Lens.lens (\ExportBundle' {platform} -> platform) (\s@ExportBundle' {} a -> s {platform = a} :: ExportBundle)

-- | Unique bundle identifier.
exportBundle_bundleId :: Lens.Lens' ExportBundle Prelude.Text
exportBundle_bundleId = Lens.lens (\ExportBundle' {bundleId} -> bundleId) (\s@ExportBundle' {} a -> s {bundleId = a} :: ExportBundle)

instance Core.AWSRequest ExportBundle where
  type AWSResponse ExportBundle = ExportBundleResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportBundleResponse'
            Prelude.<$> (x Core..?> "downloadUrl")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ExportBundle where
  hashWithSalt _salt ExportBundle' {..} =
    _salt `Prelude.hashWithSalt` projectId
      `Prelude.hashWithSalt` platform
      `Prelude.hashWithSalt` bundleId

instance Prelude.NFData ExportBundle where
  rnf ExportBundle' {..} =
    Prelude.rnf projectId
      `Prelude.seq` Prelude.rnf platform
      `Prelude.seq` Prelude.rnf bundleId

instance Core.ToHeaders ExportBundle where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ExportBundle where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath ExportBundle where
  toPath ExportBundle' {..} =
    Prelude.mconcat ["/bundles/", Core.toBS bundleId]

instance Core.ToQuery ExportBundle where
  toQuery ExportBundle' {..} =
    Prelude.mconcat
      [ "projectId" Core.=: projectId,
        "platform" Core.=: platform
      ]

-- | Result structure which contains link to download custom-generated SDK
-- and tool packages used to integrate mobile web or app clients with
-- backed AWS resources.
--
-- /See:/ 'newExportBundleResponse' smart constructor.
data ExportBundleResponse = ExportBundleResponse'
  { -- | URL which contains the custom-generated SDK and tool packages used to
    -- integrate the client mobile app or web app with the AWS resources
    -- created by the AWS Mobile Hub project.
    downloadUrl :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportBundleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'downloadUrl', 'exportBundleResponse_downloadUrl' - URL which contains the custom-generated SDK and tool packages used to
-- integrate the client mobile app or web app with the AWS resources
-- created by the AWS Mobile Hub project.
--
-- 'httpStatus', 'exportBundleResponse_httpStatus' - The response's http status code.
newExportBundleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExportBundleResponse
newExportBundleResponse pHttpStatus_ =
  ExportBundleResponse'
    { downloadUrl =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | URL which contains the custom-generated SDK and tool packages used to
-- integrate the client mobile app or web app with the AWS resources
-- created by the AWS Mobile Hub project.
exportBundleResponse_downloadUrl :: Lens.Lens' ExportBundleResponse (Prelude.Maybe Prelude.Text)
exportBundleResponse_downloadUrl = Lens.lens (\ExportBundleResponse' {downloadUrl} -> downloadUrl) (\s@ExportBundleResponse' {} a -> s {downloadUrl = a} :: ExportBundleResponse)

-- | The response's http status code.
exportBundleResponse_httpStatus :: Lens.Lens' ExportBundleResponse Prelude.Int
exportBundleResponse_httpStatus = Lens.lens (\ExportBundleResponse' {httpStatus} -> httpStatus) (\s@ExportBundleResponse' {} a -> s {httpStatus = a} :: ExportBundleResponse)

instance Prelude.NFData ExportBundleResponse where
  rnf ExportBundleResponse' {..} =
    Prelude.rnf downloadUrl
      `Prelude.seq` Prelude.rnf httpStatus

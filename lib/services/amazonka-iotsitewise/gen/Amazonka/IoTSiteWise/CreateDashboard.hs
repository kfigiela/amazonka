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
-- Module      : Amazonka.IoTSiteWise.CreateDashboard
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a dashboard in an IoT SiteWise Monitor project.
module Amazonka.IoTSiteWise.CreateDashboard
  ( -- * Creating a Request
    CreateDashboard (..),
    newCreateDashboard,

    -- * Request Lenses
    createDashboard_tags,
    createDashboard_dashboardDescription,
    createDashboard_clientToken,
    createDashboard_projectId,
    createDashboard_dashboardName,
    createDashboard_dashboardDefinition,

    -- * Destructuring the Response
    CreateDashboardResponse (..),
    newCreateDashboardResponse,

    -- * Response Lenses
    createDashboardResponse_httpStatus,
    createDashboardResponse_dashboardId,
    createDashboardResponse_dashboardArn,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDashboard' smart constructor.
data CreateDashboard = CreateDashboard'
  { -- | A list of key-value pairs that contain metadata for the dashboard. For
    -- more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
    -- in the /IoT SiteWise User Guide/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A description for the dashboard.
    dashboardDescription :: Prelude.Maybe Prelude.Text,
    -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the project in which to create the dashboard.
    projectId :: Prelude.Text,
    -- | A friendly name for the dashboard.
    dashboardName :: Prelude.Text,
    -- | The dashboard definition specified in a JSON literal. For detailed
    -- information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
    -- in the /IoT SiteWise User Guide/.
    dashboardDefinition :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDashboard' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDashboard_tags' - A list of key-value pairs that contain metadata for the dashboard. For
-- more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
--
-- 'dashboardDescription', 'createDashboard_dashboardDescription' - A description for the dashboard.
--
-- 'clientToken', 'createDashboard_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'projectId', 'createDashboard_projectId' - The ID of the project in which to create the dashboard.
--
-- 'dashboardName', 'createDashboard_dashboardName' - A friendly name for the dashboard.
--
-- 'dashboardDefinition', 'createDashboard_dashboardDefinition' - The dashboard definition specified in a JSON literal. For detailed
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
-- in the /IoT SiteWise User Guide/.
newCreateDashboard ::
  -- | 'projectId'
  Prelude.Text ->
  -- | 'dashboardName'
  Prelude.Text ->
  -- | 'dashboardDefinition'
  Prelude.Text ->
  CreateDashboard
newCreateDashboard
  pProjectId_
  pDashboardName_
  pDashboardDefinition_ =
    CreateDashboard'
      { tags = Prelude.Nothing,
        dashboardDescription = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        projectId = pProjectId_,
        dashboardName = pDashboardName_,
        dashboardDefinition = pDashboardDefinition_
      }

-- | A list of key-value pairs that contain metadata for the dashboard. For
-- more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
createDashboard_tags :: Lens.Lens' CreateDashboard (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDashboard_tags = Lens.lens (\CreateDashboard' {tags} -> tags) (\s@CreateDashboard' {} a -> s {tags = a} :: CreateDashboard) Prelude.. Lens.mapping Lens.coerced

-- | A description for the dashboard.
createDashboard_dashboardDescription :: Lens.Lens' CreateDashboard (Prelude.Maybe Prelude.Text)
createDashboard_dashboardDescription = Lens.lens (\CreateDashboard' {dashboardDescription} -> dashboardDescription) (\s@CreateDashboard' {} a -> s {dashboardDescription = a} :: CreateDashboard)

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
createDashboard_clientToken :: Lens.Lens' CreateDashboard (Prelude.Maybe Prelude.Text)
createDashboard_clientToken = Lens.lens (\CreateDashboard' {clientToken} -> clientToken) (\s@CreateDashboard' {} a -> s {clientToken = a} :: CreateDashboard)

-- | The ID of the project in which to create the dashboard.
createDashboard_projectId :: Lens.Lens' CreateDashboard Prelude.Text
createDashboard_projectId = Lens.lens (\CreateDashboard' {projectId} -> projectId) (\s@CreateDashboard' {} a -> s {projectId = a} :: CreateDashboard)

-- | A friendly name for the dashboard.
createDashboard_dashboardName :: Lens.Lens' CreateDashboard Prelude.Text
createDashboard_dashboardName = Lens.lens (\CreateDashboard' {dashboardName} -> dashboardName) (\s@CreateDashboard' {} a -> s {dashboardName = a} :: CreateDashboard)

-- | The dashboard definition specified in a JSON literal. For detailed
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
-- in the /IoT SiteWise User Guide/.
createDashboard_dashboardDefinition :: Lens.Lens' CreateDashboard Prelude.Text
createDashboard_dashboardDefinition = Lens.lens (\CreateDashboard' {dashboardDefinition} -> dashboardDefinition) (\s@CreateDashboard' {} a -> s {dashboardDefinition = a} :: CreateDashboard)

instance Core.AWSRequest CreateDashboard where
  type
    AWSResponse CreateDashboard =
      CreateDashboardResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDashboardResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "dashboardId")
            Prelude.<*> (x Core..:> "dashboardArn")
      )

instance Prelude.Hashable CreateDashboard where
  hashWithSalt _salt CreateDashboard' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` dashboardDescription
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` projectId
      `Prelude.hashWithSalt` dashboardName
      `Prelude.hashWithSalt` dashboardDefinition

instance Prelude.NFData CreateDashboard where
  rnf CreateDashboard' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf dashboardDescription
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf projectId
      `Prelude.seq` Prelude.rnf dashboardName
      `Prelude.seq` Prelude.rnf dashboardDefinition

instance Core.ToHeaders CreateDashboard where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDashboard where
  toJSON CreateDashboard' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("dashboardDescription" Core..=)
              Prelude.<$> dashboardDescription,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("projectId" Core..= projectId),
            Prelude.Just ("dashboardName" Core..= dashboardName),
            Prelude.Just
              ("dashboardDefinition" Core..= dashboardDefinition)
          ]
      )

instance Core.ToPath CreateDashboard where
  toPath = Prelude.const "/dashboards"

instance Core.ToQuery CreateDashboard where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDashboardResponse' smart constructor.
data CreateDashboardResponse = CreateDashboardResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the dashboard.
    dashboardId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the dashboard, which has the following format.
    --
    -- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
    dashboardArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDashboardResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createDashboardResponse_httpStatus' - The response's http status code.
--
-- 'dashboardId', 'createDashboardResponse_dashboardId' - The ID of the dashboard.
--
-- 'dashboardArn', 'createDashboardResponse_dashboardArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the dashboard, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
newCreateDashboardResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'dashboardId'
  Prelude.Text ->
  -- | 'dashboardArn'
  Prelude.Text ->
  CreateDashboardResponse
newCreateDashboardResponse
  pHttpStatus_
  pDashboardId_
  pDashboardArn_ =
    CreateDashboardResponse'
      { httpStatus = pHttpStatus_,
        dashboardId = pDashboardId_,
        dashboardArn = pDashboardArn_
      }

-- | The response's http status code.
createDashboardResponse_httpStatus :: Lens.Lens' CreateDashboardResponse Prelude.Int
createDashboardResponse_httpStatus = Lens.lens (\CreateDashboardResponse' {httpStatus} -> httpStatus) (\s@CreateDashboardResponse' {} a -> s {httpStatus = a} :: CreateDashboardResponse)

-- | The ID of the dashboard.
createDashboardResponse_dashboardId :: Lens.Lens' CreateDashboardResponse Prelude.Text
createDashboardResponse_dashboardId = Lens.lens (\CreateDashboardResponse' {dashboardId} -> dashboardId) (\s@CreateDashboardResponse' {} a -> s {dashboardId = a} :: CreateDashboardResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the dashboard, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
createDashboardResponse_dashboardArn :: Lens.Lens' CreateDashboardResponse Prelude.Text
createDashboardResponse_dashboardArn = Lens.lens (\CreateDashboardResponse' {dashboardArn} -> dashboardArn) (\s@CreateDashboardResponse' {} a -> s {dashboardArn = a} :: CreateDashboardResponse)

instance Prelude.NFData CreateDashboardResponse where
  rnf CreateDashboardResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf dashboardId
      `Prelude.seq` Prelude.rnf dashboardArn

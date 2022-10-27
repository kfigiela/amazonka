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
-- Module      : Amazonka.QuickSight.DescribeAnalysisPermissions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the read and write permissions for an analysis.
module Amazonka.QuickSight.DescribeAnalysisPermissions
  ( -- * Creating a Request
    DescribeAnalysisPermissions (..),
    newDescribeAnalysisPermissions,

    -- * Request Lenses
    describeAnalysisPermissions_awsAccountId,
    describeAnalysisPermissions_analysisId,

    -- * Destructuring the Response
    DescribeAnalysisPermissionsResponse (..),
    newDescribeAnalysisPermissionsResponse,

    -- * Response Lenses
    describeAnalysisPermissionsResponse_analysisId,
    describeAnalysisPermissionsResponse_requestId,
    describeAnalysisPermissionsResponse_permissions,
    describeAnalysisPermissionsResponse_analysisArn,
    describeAnalysisPermissionsResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeAnalysisPermissions' smart constructor.
data DescribeAnalysisPermissions = DescribeAnalysisPermissions'
  { -- | The ID of the Amazon Web Services account that contains the analysis
    -- whose permissions you\'re describing. You must be using the Amazon Web
    -- Services account that the analysis is in.
    awsAccountId :: Prelude.Text,
    -- | The ID of the analysis whose permissions you\'re describing. The ID is
    -- part of the analysis URL.
    analysisId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnalysisPermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeAnalysisPermissions_awsAccountId' - The ID of the Amazon Web Services account that contains the analysis
-- whose permissions you\'re describing. You must be using the Amazon Web
-- Services account that the analysis is in.
--
-- 'analysisId', 'describeAnalysisPermissions_analysisId' - The ID of the analysis whose permissions you\'re describing. The ID is
-- part of the analysis URL.
newDescribeAnalysisPermissions ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'analysisId'
  Prelude.Text ->
  DescribeAnalysisPermissions
newDescribeAnalysisPermissions
  pAwsAccountId_
  pAnalysisId_ =
    DescribeAnalysisPermissions'
      { awsAccountId =
          pAwsAccountId_,
        analysisId = pAnalysisId_
      }

-- | The ID of the Amazon Web Services account that contains the analysis
-- whose permissions you\'re describing. You must be using the Amazon Web
-- Services account that the analysis is in.
describeAnalysisPermissions_awsAccountId :: Lens.Lens' DescribeAnalysisPermissions Prelude.Text
describeAnalysisPermissions_awsAccountId = Lens.lens (\DescribeAnalysisPermissions' {awsAccountId} -> awsAccountId) (\s@DescribeAnalysisPermissions' {} a -> s {awsAccountId = a} :: DescribeAnalysisPermissions)

-- | The ID of the analysis whose permissions you\'re describing. The ID is
-- part of the analysis URL.
describeAnalysisPermissions_analysisId :: Lens.Lens' DescribeAnalysisPermissions Prelude.Text
describeAnalysisPermissions_analysisId = Lens.lens (\DescribeAnalysisPermissions' {analysisId} -> analysisId) (\s@DescribeAnalysisPermissions' {} a -> s {analysisId = a} :: DescribeAnalysisPermissions)

instance Core.AWSRequest DescribeAnalysisPermissions where
  type
    AWSResponse DescribeAnalysisPermissions =
      DescribeAnalysisPermissionsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAnalysisPermissionsResponse'
            Prelude.<$> (x Core..?> "AnalysisId")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Permissions")
            Prelude.<*> (x Core..?> "AnalysisArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAnalysisPermissions where
  hashWithSalt _salt DescribeAnalysisPermissions' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` analysisId

instance Prelude.NFData DescribeAnalysisPermissions where
  rnf DescribeAnalysisPermissions' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf analysisId

instance Core.ToHeaders DescribeAnalysisPermissions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeAnalysisPermissions where
  toPath DescribeAnalysisPermissions' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/analyses/",
        Core.toBS analysisId,
        "/permissions"
      ]

instance Core.ToQuery DescribeAnalysisPermissions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAnalysisPermissionsResponse' smart constructor.
data DescribeAnalysisPermissionsResponse = DescribeAnalysisPermissionsResponse'
  { -- | The ID of the analysis whose permissions you\'re describing.
    analysisId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | A structure that describes the principals and the resource-level
    -- permissions on an analysis.
    permissions :: Prelude.Maybe (Prelude.NonEmpty ResourcePermission),
    -- | The Amazon Resource Name (ARN) of the analysis whose permissions you\'re
    -- describing.
    analysisArn :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnalysisPermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analysisId', 'describeAnalysisPermissionsResponse_analysisId' - The ID of the analysis whose permissions you\'re describing.
--
-- 'requestId', 'describeAnalysisPermissionsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'permissions', 'describeAnalysisPermissionsResponse_permissions' - A structure that describes the principals and the resource-level
-- permissions on an analysis.
--
-- 'analysisArn', 'describeAnalysisPermissionsResponse_analysisArn' - The Amazon Resource Name (ARN) of the analysis whose permissions you\'re
-- describing.
--
-- 'status', 'describeAnalysisPermissionsResponse_status' - The HTTP status of the request.
newDescribeAnalysisPermissionsResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeAnalysisPermissionsResponse
newDescribeAnalysisPermissionsResponse pStatus_ =
  DescribeAnalysisPermissionsResponse'
    { analysisId =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      permissions = Prelude.Nothing,
      analysisArn = Prelude.Nothing,
      status = pStatus_
    }

-- | The ID of the analysis whose permissions you\'re describing.
describeAnalysisPermissionsResponse_analysisId :: Lens.Lens' DescribeAnalysisPermissionsResponse (Prelude.Maybe Prelude.Text)
describeAnalysisPermissionsResponse_analysisId = Lens.lens (\DescribeAnalysisPermissionsResponse' {analysisId} -> analysisId) (\s@DescribeAnalysisPermissionsResponse' {} a -> s {analysisId = a} :: DescribeAnalysisPermissionsResponse)

-- | The Amazon Web Services request ID for this operation.
describeAnalysisPermissionsResponse_requestId :: Lens.Lens' DescribeAnalysisPermissionsResponse (Prelude.Maybe Prelude.Text)
describeAnalysisPermissionsResponse_requestId = Lens.lens (\DescribeAnalysisPermissionsResponse' {requestId} -> requestId) (\s@DescribeAnalysisPermissionsResponse' {} a -> s {requestId = a} :: DescribeAnalysisPermissionsResponse)

-- | A structure that describes the principals and the resource-level
-- permissions on an analysis.
describeAnalysisPermissionsResponse_permissions :: Lens.Lens' DescribeAnalysisPermissionsResponse (Prelude.Maybe (Prelude.NonEmpty ResourcePermission))
describeAnalysisPermissionsResponse_permissions = Lens.lens (\DescribeAnalysisPermissionsResponse' {permissions} -> permissions) (\s@DescribeAnalysisPermissionsResponse' {} a -> s {permissions = a} :: DescribeAnalysisPermissionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the analysis whose permissions you\'re
-- describing.
describeAnalysisPermissionsResponse_analysisArn :: Lens.Lens' DescribeAnalysisPermissionsResponse (Prelude.Maybe Prelude.Text)
describeAnalysisPermissionsResponse_analysisArn = Lens.lens (\DescribeAnalysisPermissionsResponse' {analysisArn} -> analysisArn) (\s@DescribeAnalysisPermissionsResponse' {} a -> s {analysisArn = a} :: DescribeAnalysisPermissionsResponse)

-- | The HTTP status of the request.
describeAnalysisPermissionsResponse_status :: Lens.Lens' DescribeAnalysisPermissionsResponse Prelude.Int
describeAnalysisPermissionsResponse_status = Lens.lens (\DescribeAnalysisPermissionsResponse' {status} -> status) (\s@DescribeAnalysisPermissionsResponse' {} a -> s {status = a} :: DescribeAnalysisPermissionsResponse)

instance
  Prelude.NFData
    DescribeAnalysisPermissionsResponse
  where
  rnf DescribeAnalysisPermissionsResponse' {..} =
    Prelude.rnf analysisId
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf permissions
      `Prelude.seq` Prelude.rnf analysisArn
      `Prelude.seq` Prelude.rnf status

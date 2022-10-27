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
-- Module      : Amazonka.EC2.GetInstanceUefiData
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A binary representation of the UEFI variable store. Only non-volatile
-- variables are stored. This is a base64 encoded and zlib compressed
-- binary value that must be properly encoded.
--
-- When you use
-- <https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html register-image>
-- to create an AMI, you can create an exact copy of your variable store by
-- passing the UEFI data in the @UefiData@ parameter. You can modify the
-- UEFI data by using the
-- <https://github.com/awslabs/python-uefivars python-uefivars tool> on
-- GitHub. You can use the tool to convert the UEFI data into a
-- human-readable format (JSON), which you can inspect and modify, and then
-- convert back into the binary format to use with register-image.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html UEFI Secure Boot>
-- in the /Amazon EC2 User Guide/.
module Amazonka.EC2.GetInstanceUefiData
  ( -- * Creating a Request
    GetInstanceUefiData (..),
    newGetInstanceUefiData,

    -- * Request Lenses
    getInstanceUefiData_dryRun,
    getInstanceUefiData_instanceId,

    -- * Destructuring the Response
    GetInstanceUefiDataResponse (..),
    newGetInstanceUefiDataResponse,

    -- * Response Lenses
    getInstanceUefiDataResponse_instanceId,
    getInstanceUefiDataResponse_uefiData,
    getInstanceUefiDataResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetInstanceUefiData' smart constructor.
data GetInstanceUefiData = GetInstanceUefiData'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the instance from which to retrieve the UEFI data.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInstanceUefiData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'getInstanceUefiData_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'instanceId', 'getInstanceUefiData_instanceId' - The ID of the instance from which to retrieve the UEFI data.
newGetInstanceUefiData ::
  -- | 'instanceId'
  Prelude.Text ->
  GetInstanceUefiData
newGetInstanceUefiData pInstanceId_ =
  GetInstanceUefiData'
    { dryRun = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
getInstanceUefiData_dryRun :: Lens.Lens' GetInstanceUefiData (Prelude.Maybe Prelude.Bool)
getInstanceUefiData_dryRun = Lens.lens (\GetInstanceUefiData' {dryRun} -> dryRun) (\s@GetInstanceUefiData' {} a -> s {dryRun = a} :: GetInstanceUefiData)

-- | The ID of the instance from which to retrieve the UEFI data.
getInstanceUefiData_instanceId :: Lens.Lens' GetInstanceUefiData Prelude.Text
getInstanceUefiData_instanceId = Lens.lens (\GetInstanceUefiData' {instanceId} -> instanceId) (\s@GetInstanceUefiData' {} a -> s {instanceId = a} :: GetInstanceUefiData)

instance Core.AWSRequest GetInstanceUefiData where
  type
    AWSResponse GetInstanceUefiData =
      GetInstanceUefiDataResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          GetInstanceUefiDataResponse'
            Prelude.<$> (x Core..@? "instanceId")
            Prelude.<*> (x Core..@? "uefiData")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetInstanceUefiData where
  hashWithSalt _salt GetInstanceUefiData' {..} =
    _salt `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData GetInstanceUefiData where
  rnf GetInstanceUefiData' {..} =
    Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders GetInstanceUefiData where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetInstanceUefiData where
  toPath = Prelude.const "/"

instance Core.ToQuery GetInstanceUefiData where
  toQuery GetInstanceUefiData' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("GetInstanceUefiData" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        "InstanceId" Core.=: instanceId
      ]

-- | /See:/ 'newGetInstanceUefiDataResponse' smart constructor.
data GetInstanceUefiDataResponse = GetInstanceUefiDataResponse'
  { -- | The ID of the instance from which to retrieve the UEFI data.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | Base64 representation of the non-volatile UEFI variable store.
    uefiData :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInstanceUefiDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'getInstanceUefiDataResponse_instanceId' - The ID of the instance from which to retrieve the UEFI data.
--
-- 'uefiData', 'getInstanceUefiDataResponse_uefiData' - Base64 representation of the non-volatile UEFI variable store.
--
-- 'httpStatus', 'getInstanceUefiDataResponse_httpStatus' - The response's http status code.
newGetInstanceUefiDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetInstanceUefiDataResponse
newGetInstanceUefiDataResponse pHttpStatus_ =
  GetInstanceUefiDataResponse'
    { instanceId =
        Prelude.Nothing,
      uefiData = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the instance from which to retrieve the UEFI data.
getInstanceUefiDataResponse_instanceId :: Lens.Lens' GetInstanceUefiDataResponse (Prelude.Maybe Prelude.Text)
getInstanceUefiDataResponse_instanceId = Lens.lens (\GetInstanceUefiDataResponse' {instanceId} -> instanceId) (\s@GetInstanceUefiDataResponse' {} a -> s {instanceId = a} :: GetInstanceUefiDataResponse)

-- | Base64 representation of the non-volatile UEFI variable store.
getInstanceUefiDataResponse_uefiData :: Lens.Lens' GetInstanceUefiDataResponse (Prelude.Maybe Prelude.Text)
getInstanceUefiDataResponse_uefiData = Lens.lens (\GetInstanceUefiDataResponse' {uefiData} -> uefiData) (\s@GetInstanceUefiDataResponse' {} a -> s {uefiData = a} :: GetInstanceUefiDataResponse)

-- | The response's http status code.
getInstanceUefiDataResponse_httpStatus :: Lens.Lens' GetInstanceUefiDataResponse Prelude.Int
getInstanceUefiDataResponse_httpStatus = Lens.lens (\GetInstanceUefiDataResponse' {httpStatus} -> httpStatus) (\s@GetInstanceUefiDataResponse' {} a -> s {httpStatus = a} :: GetInstanceUefiDataResponse)

instance Prelude.NFData GetInstanceUefiDataResponse where
  rnf GetInstanceUefiDataResponse' {..} =
    Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf uefiData
      `Prelude.seq` Prelude.rnf httpStatus

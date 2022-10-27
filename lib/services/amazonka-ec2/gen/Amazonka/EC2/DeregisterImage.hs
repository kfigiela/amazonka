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
-- Module      : Amazonka.EC2.DeregisterImage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified AMI. After you deregister an AMI, it can\'t be
-- used to launch new instances.
--
-- If you deregister an AMI that matches a Recycle Bin retention rule, the
-- AMI is retained in the Recycle Bin for the specified retention period.
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html Recycle Bin>
-- in the Amazon Elastic Compute Cloud User Guide.
--
-- When you deregister an AMI, it doesn\'t affect any instances that
-- you\'ve already launched from the AMI. You\'ll continue to incur usage
-- costs for those instances until you terminate them.
--
-- When you deregister an Amazon EBS-backed AMI, it doesn\'t affect the
-- snapshot that was created for the root volume of the instance during the
-- AMI creation process. When you deregister an instance store-backed AMI,
-- it doesn\'t affect the files that you uploaded to Amazon S3 when you
-- created the AMI.
module Amazonka.EC2.DeregisterImage
  ( -- * Creating a Request
    DeregisterImage (..),
    newDeregisterImage,

    -- * Request Lenses
    deregisterImage_dryRun,
    deregisterImage_imageId,

    -- * Destructuring the Response
    DeregisterImageResponse (..),
    newDeregisterImageResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for DeregisterImage.
--
-- /See:/ 'newDeregisterImage' smart constructor.
data DeregisterImage = DeregisterImage'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the AMI.
    imageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeregisterImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'deregisterImage_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'imageId', 'deregisterImage_imageId' - The ID of the AMI.
newDeregisterImage ::
  -- | 'imageId'
  Prelude.Text ->
  DeregisterImage
newDeregisterImage pImageId_ =
  DeregisterImage'
    { dryRun = Prelude.Nothing,
      imageId = pImageId_
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deregisterImage_dryRun :: Lens.Lens' DeregisterImage (Prelude.Maybe Prelude.Bool)
deregisterImage_dryRun = Lens.lens (\DeregisterImage' {dryRun} -> dryRun) (\s@DeregisterImage' {} a -> s {dryRun = a} :: DeregisterImage)

-- | The ID of the AMI.
deregisterImage_imageId :: Lens.Lens' DeregisterImage Prelude.Text
deregisterImage_imageId = Lens.lens (\DeregisterImage' {imageId} -> imageId) (\s@DeregisterImage' {} a -> s {imageId = a} :: DeregisterImage)

instance Core.AWSRequest DeregisterImage where
  type
    AWSResponse DeregisterImage =
      DeregisterImageResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveNull DeregisterImageResponse'

instance Prelude.Hashable DeregisterImage where
  hashWithSalt _salt DeregisterImage' {..} =
    _salt `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` imageId

instance Prelude.NFData DeregisterImage where
  rnf DeregisterImage' {..} =
    Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf imageId

instance Core.ToHeaders DeregisterImage where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeregisterImage where
  toPath = Prelude.const "/"

instance Core.ToQuery DeregisterImage where
  toQuery DeregisterImage' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeregisterImage" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        "ImageId" Core.=: imageId
      ]

-- | /See:/ 'newDeregisterImageResponse' smart constructor.
data DeregisterImageResponse = DeregisterImageResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeregisterImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeregisterImageResponse ::
  DeregisterImageResponse
newDeregisterImageResponse = DeregisterImageResponse'

instance Prelude.NFData DeregisterImageResponse where
  rnf _ = ()

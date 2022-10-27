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
-- Module      : Amazonka.EC2.CreateFpgaImage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
-- (DCP).
--
-- The create operation is asynchronous. To verify that the AFI is ready
-- for use, check the output logs.
--
-- An AFI contains the FPGA bitstream that is ready to download to an FPGA.
-- You can securely deploy an AFI on multiple FPGA-accelerated instances.
-- For more information, see the
-- <https://github.com/aws/aws-fpga/ Amazon Web Services FPGA Hardware Development Kit>.
module Amazonka.EC2.CreateFpgaImage
  ( -- * Creating a Request
    CreateFpgaImage (..),
    newCreateFpgaImage,

    -- * Request Lenses
    createFpgaImage_clientToken,
    createFpgaImage_name,
    createFpgaImage_description,
    createFpgaImage_dryRun,
    createFpgaImage_tagSpecifications,
    createFpgaImage_logsStorageLocation,
    createFpgaImage_inputStorageLocation,

    -- * Destructuring the Response
    CreateFpgaImageResponse (..),
    newCreateFpgaImageResponse,

    -- * Response Lenses
    createFpgaImageResponse_fpgaImageGlobalId,
    createFpgaImageResponse_fpgaImageId,
    createFpgaImageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateFpgaImage' smart constructor.
data CreateFpgaImage = CreateFpgaImage'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A name for the AFI.
    name :: Prelude.Maybe Prelude.Text,
    -- | A description for the AFI.
    description :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The tags to apply to the FPGA image during creation.
    tagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | The location in Amazon S3 for the output logs.
    logsStorageLocation :: Prelude.Maybe StorageLocation,
    -- | The location of the encrypted design checkpoint in Amazon S3. The input
    -- must be a tarball.
    inputStorageLocation :: StorageLocation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFpgaImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createFpgaImage_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency>.
--
-- 'name', 'createFpgaImage_name' - A name for the AFI.
--
-- 'description', 'createFpgaImage_description' - A description for the AFI.
--
-- 'dryRun', 'createFpgaImage_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'tagSpecifications', 'createFpgaImage_tagSpecifications' - The tags to apply to the FPGA image during creation.
--
-- 'logsStorageLocation', 'createFpgaImage_logsStorageLocation' - The location in Amazon S3 for the output logs.
--
-- 'inputStorageLocation', 'createFpgaImage_inputStorageLocation' - The location of the encrypted design checkpoint in Amazon S3. The input
-- must be a tarball.
newCreateFpgaImage ::
  -- | 'inputStorageLocation'
  StorageLocation ->
  CreateFpgaImage
newCreateFpgaImage pInputStorageLocation_ =
  CreateFpgaImage'
    { clientToken = Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      tagSpecifications = Prelude.Nothing,
      logsStorageLocation = Prelude.Nothing,
      inputStorageLocation = pInputStorageLocation_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency>.
createFpgaImage_clientToken :: Lens.Lens' CreateFpgaImage (Prelude.Maybe Prelude.Text)
createFpgaImage_clientToken = Lens.lens (\CreateFpgaImage' {clientToken} -> clientToken) (\s@CreateFpgaImage' {} a -> s {clientToken = a} :: CreateFpgaImage)

-- | A name for the AFI.
createFpgaImage_name :: Lens.Lens' CreateFpgaImage (Prelude.Maybe Prelude.Text)
createFpgaImage_name = Lens.lens (\CreateFpgaImage' {name} -> name) (\s@CreateFpgaImage' {} a -> s {name = a} :: CreateFpgaImage)

-- | A description for the AFI.
createFpgaImage_description :: Lens.Lens' CreateFpgaImage (Prelude.Maybe Prelude.Text)
createFpgaImage_description = Lens.lens (\CreateFpgaImage' {description} -> description) (\s@CreateFpgaImage' {} a -> s {description = a} :: CreateFpgaImage)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createFpgaImage_dryRun :: Lens.Lens' CreateFpgaImage (Prelude.Maybe Prelude.Bool)
createFpgaImage_dryRun = Lens.lens (\CreateFpgaImage' {dryRun} -> dryRun) (\s@CreateFpgaImage' {} a -> s {dryRun = a} :: CreateFpgaImage)

-- | The tags to apply to the FPGA image during creation.
createFpgaImage_tagSpecifications :: Lens.Lens' CreateFpgaImage (Prelude.Maybe [TagSpecification])
createFpgaImage_tagSpecifications = Lens.lens (\CreateFpgaImage' {tagSpecifications} -> tagSpecifications) (\s@CreateFpgaImage' {} a -> s {tagSpecifications = a} :: CreateFpgaImage) Prelude.. Lens.mapping Lens.coerced

-- | The location in Amazon S3 for the output logs.
createFpgaImage_logsStorageLocation :: Lens.Lens' CreateFpgaImage (Prelude.Maybe StorageLocation)
createFpgaImage_logsStorageLocation = Lens.lens (\CreateFpgaImage' {logsStorageLocation} -> logsStorageLocation) (\s@CreateFpgaImage' {} a -> s {logsStorageLocation = a} :: CreateFpgaImage)

-- | The location of the encrypted design checkpoint in Amazon S3. The input
-- must be a tarball.
createFpgaImage_inputStorageLocation :: Lens.Lens' CreateFpgaImage StorageLocation
createFpgaImage_inputStorageLocation = Lens.lens (\CreateFpgaImage' {inputStorageLocation} -> inputStorageLocation) (\s@CreateFpgaImage' {} a -> s {inputStorageLocation = a} :: CreateFpgaImage)

instance Core.AWSRequest CreateFpgaImage where
  type
    AWSResponse CreateFpgaImage =
      CreateFpgaImageResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateFpgaImageResponse'
            Prelude.<$> (x Core..@? "fpgaImageGlobalId")
            Prelude.<*> (x Core..@? "fpgaImageId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFpgaImage where
  hashWithSalt _salt CreateFpgaImage' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` tagSpecifications
      `Prelude.hashWithSalt` logsStorageLocation
      `Prelude.hashWithSalt` inputStorageLocation

instance Prelude.NFData CreateFpgaImage where
  rnf CreateFpgaImage' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf tagSpecifications
      `Prelude.seq` Prelude.rnf logsStorageLocation
      `Prelude.seq` Prelude.rnf inputStorageLocation

instance Core.ToHeaders CreateFpgaImage where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateFpgaImage where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateFpgaImage where
  toQuery CreateFpgaImage' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateFpgaImage" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "ClientToken" Core.=: clientToken,
        "Name" Core.=: name,
        "Description" Core.=: description,
        "DryRun" Core.=: dryRun,
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Prelude.<$> tagSpecifications
          ),
        "LogsStorageLocation" Core.=: logsStorageLocation,
        "InputStorageLocation" Core.=: inputStorageLocation
      ]

-- | /See:/ 'newCreateFpgaImageResponse' smart constructor.
data CreateFpgaImageResponse = CreateFpgaImageResponse'
  { -- | The global FPGA image identifier (AGFI ID).
    fpgaImageGlobalId :: Prelude.Maybe Prelude.Text,
    -- | The FPGA image identifier (AFI ID).
    fpgaImageId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFpgaImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fpgaImageGlobalId', 'createFpgaImageResponse_fpgaImageGlobalId' - The global FPGA image identifier (AGFI ID).
--
-- 'fpgaImageId', 'createFpgaImageResponse_fpgaImageId' - The FPGA image identifier (AFI ID).
--
-- 'httpStatus', 'createFpgaImageResponse_httpStatus' - The response's http status code.
newCreateFpgaImageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFpgaImageResponse
newCreateFpgaImageResponse pHttpStatus_ =
  CreateFpgaImageResponse'
    { fpgaImageGlobalId =
        Prelude.Nothing,
      fpgaImageId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The global FPGA image identifier (AGFI ID).
createFpgaImageResponse_fpgaImageGlobalId :: Lens.Lens' CreateFpgaImageResponse (Prelude.Maybe Prelude.Text)
createFpgaImageResponse_fpgaImageGlobalId = Lens.lens (\CreateFpgaImageResponse' {fpgaImageGlobalId} -> fpgaImageGlobalId) (\s@CreateFpgaImageResponse' {} a -> s {fpgaImageGlobalId = a} :: CreateFpgaImageResponse)

-- | The FPGA image identifier (AFI ID).
createFpgaImageResponse_fpgaImageId :: Lens.Lens' CreateFpgaImageResponse (Prelude.Maybe Prelude.Text)
createFpgaImageResponse_fpgaImageId = Lens.lens (\CreateFpgaImageResponse' {fpgaImageId} -> fpgaImageId) (\s@CreateFpgaImageResponse' {} a -> s {fpgaImageId = a} :: CreateFpgaImageResponse)

-- | The response's http status code.
createFpgaImageResponse_httpStatus :: Lens.Lens' CreateFpgaImageResponse Prelude.Int
createFpgaImageResponse_httpStatus = Lens.lens (\CreateFpgaImageResponse' {httpStatus} -> httpStatus) (\s@CreateFpgaImageResponse' {} a -> s {httpStatus = a} :: CreateFpgaImageResponse)

instance Prelude.NFData CreateFpgaImageResponse where
  rnf CreateFpgaImageResponse' {..} =
    Prelude.rnf fpgaImageGlobalId
      `Prelude.seq` Prelude.rnf fpgaImageId
      `Prelude.seq` Prelude.rnf httpStatus

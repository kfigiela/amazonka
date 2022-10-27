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
-- Module      : Amazonka.Cloud9.CreateEnvironmentEC2
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Cloud9 development environment, launches an Amazon Elastic
-- Compute Cloud (Amazon EC2) instance, and then connects from the instance
-- to the environment.
module Amazonka.Cloud9.CreateEnvironmentEC2
  ( -- * Creating a Request
    CreateEnvironmentEC2 (..),
    newCreateEnvironmentEC2,

    -- * Request Lenses
    createEnvironmentEC2_automaticStopTimeMinutes,
    createEnvironmentEC2_tags,
    createEnvironmentEC2_clientRequestToken,
    createEnvironmentEC2_connectionType,
    createEnvironmentEC2_subnetId,
    createEnvironmentEC2_description,
    createEnvironmentEC2_dryRun,
    createEnvironmentEC2_ownerArn,
    createEnvironmentEC2_imageId,
    createEnvironmentEC2_name,
    createEnvironmentEC2_instanceType,

    -- * Destructuring the Response
    CreateEnvironmentEC2Response (..),
    newCreateEnvironmentEC2Response,

    -- * Response Lenses
    createEnvironmentEC2Response_environmentId,
    createEnvironmentEC2Response_httpStatus,
  )
where

import Amazonka.Cloud9.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateEnvironmentEC2' smart constructor.
data CreateEnvironmentEC2 = CreateEnvironmentEC2'
  { -- | The number of minutes until the running instance is shut down after the
    -- environment has last been used.
    automaticStopTimeMinutes :: Prelude.Maybe Prelude.Int,
    -- | An array of key-value pairs that will be associated with the new Cloud9
    -- development environment.
    tags :: Prelude.Maybe (Core.Sensitive [Core.Sensitive Tag]),
    -- | A unique, case-sensitive string that helps Cloud9 to ensure this
    -- operation completes no more than one time.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
    -- in the /Amazon EC2 API Reference/.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The connection type used for connecting to an Amazon EC2 environment.
    -- Valid values are @CONNECT_SSH@ (default) and @CONNECT_SSM@ (connected
    -- through Amazon EC2 Systems Manager).
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html Accessing no-ingress EC2 instances with Amazon EC2 Systems Manager>
    -- in the /Cloud9 User Guide/.
    connectionType :: Prelude.Maybe ConnectionType,
    -- | The ID of the subnet in Amazon VPC that Cloud9 will use to communicate
    -- with the Amazon EC2 instance.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The description of the environment to create.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the environment owner. This ARN can be
    -- the ARN of any IAM principal. If this value is not specified, the ARN
    -- defaults to this environment\'s creator.
    ownerArn :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the Amazon Machine Image (AMI) that\'s used to create
    -- the EC2 instance. To choose an AMI for the instance, you must specify a
    -- valid AMI alias or a valid Amazon EC2 Systems Manager (SSM) path.
    --
    -- The default AMI is used if the parameter isn\'t explicitly assigned a
    -- value in the request. Because Amazon Linux AMI has ended standard
    -- support as of December 31, 2020, we recommend you choose Amazon Linux 2,
    -- which includes long term support through 2023.
    --
    -- __AMI aliases__
    --
    -- -   __Amazon Linux (default): @amazonlinux-1-x86_64@__
    --
    -- -   Amazon Linux 2: @amazonlinux-2-x86_64@
    --
    -- -   Ubuntu 18.04: @ubuntu-18.04-x86_64@
    --
    -- __SSM paths__
    --
    -- -   __Amazon Linux (default):
    --     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-1-x86_64@__
    --
    -- -   Amazon Linux 2:
    --     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-2-x86_64@
    --
    -- -   Ubuntu 18.04:
    --     @resolve:ssm:\/aws\/service\/cloud9\/amis\/ubuntu-18.04-x86_64@
    imageId :: Prelude.Maybe Prelude.Text,
    -- | The name of the environment to create.
    --
    -- This name is visible to other IAM users in the same Amazon Web Services
    -- account.
    name :: Prelude.Text,
    -- | The type of instance to connect to the environment (for example,
    -- @t2.micro@).
    instanceType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEnvironmentEC2' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'automaticStopTimeMinutes', 'createEnvironmentEC2_automaticStopTimeMinutes' - The number of minutes until the running instance is shut down after the
-- environment has last been used.
--
-- 'tags', 'createEnvironmentEC2_tags' - An array of key-value pairs that will be associated with the new Cloud9
-- development environment.
--
-- 'clientRequestToken', 'createEnvironmentEC2_clientRequestToken' - A unique, case-sensitive string that helps Cloud9 to ensure this
-- operation completes no more than one time.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
-- in the /Amazon EC2 API Reference/.
--
-- 'connectionType', 'createEnvironmentEC2_connectionType' - The connection type used for connecting to an Amazon EC2 environment.
-- Valid values are @CONNECT_SSH@ (default) and @CONNECT_SSM@ (connected
-- through Amazon EC2 Systems Manager).
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html Accessing no-ingress EC2 instances with Amazon EC2 Systems Manager>
-- in the /Cloud9 User Guide/.
--
-- 'subnetId', 'createEnvironmentEC2_subnetId' - The ID of the subnet in Amazon VPC that Cloud9 will use to communicate
-- with the Amazon EC2 instance.
--
-- 'description', 'createEnvironmentEC2_description' - The description of the environment to create.
--
-- 'dryRun', 'createEnvironmentEC2_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'ownerArn', 'createEnvironmentEC2_ownerArn' - The Amazon Resource Name (ARN) of the environment owner. This ARN can be
-- the ARN of any IAM principal. If this value is not specified, the ARN
-- defaults to this environment\'s creator.
--
-- 'imageId', 'createEnvironmentEC2_imageId' - The identifier for the Amazon Machine Image (AMI) that\'s used to create
-- the EC2 instance. To choose an AMI for the instance, you must specify a
-- valid AMI alias or a valid Amazon EC2 Systems Manager (SSM) path.
--
-- The default AMI is used if the parameter isn\'t explicitly assigned a
-- value in the request. Because Amazon Linux AMI has ended standard
-- support as of December 31, 2020, we recommend you choose Amazon Linux 2,
-- which includes long term support through 2023.
--
-- __AMI aliases__
--
-- -   __Amazon Linux (default): @amazonlinux-1-x86_64@__
--
-- -   Amazon Linux 2: @amazonlinux-2-x86_64@
--
-- -   Ubuntu 18.04: @ubuntu-18.04-x86_64@
--
-- __SSM paths__
--
-- -   __Amazon Linux (default):
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-1-x86_64@__
--
-- -   Amazon Linux 2:
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-2-x86_64@
--
-- -   Ubuntu 18.04:
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/ubuntu-18.04-x86_64@
--
-- 'name', 'createEnvironmentEC2_name' - The name of the environment to create.
--
-- This name is visible to other IAM users in the same Amazon Web Services
-- account.
--
-- 'instanceType', 'createEnvironmentEC2_instanceType' - The type of instance to connect to the environment (for example,
-- @t2.micro@).
newCreateEnvironmentEC2 ::
  -- | 'name'
  Prelude.Text ->
  -- | 'instanceType'
  Prelude.Text ->
  CreateEnvironmentEC2
newCreateEnvironmentEC2 pName_ pInstanceType_ =
  CreateEnvironmentEC2'
    { automaticStopTimeMinutes =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      connectionType = Prelude.Nothing,
      subnetId = Prelude.Nothing,
      description = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      ownerArn = Prelude.Nothing,
      imageId = Prelude.Nothing,
      name = pName_,
      instanceType = pInstanceType_
    }

-- | The number of minutes until the running instance is shut down after the
-- environment has last been used.
createEnvironmentEC2_automaticStopTimeMinutes :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Int)
createEnvironmentEC2_automaticStopTimeMinutes = Lens.lens (\CreateEnvironmentEC2' {automaticStopTimeMinutes} -> automaticStopTimeMinutes) (\s@CreateEnvironmentEC2' {} a -> s {automaticStopTimeMinutes = a} :: CreateEnvironmentEC2)

-- | An array of key-value pairs that will be associated with the new Cloud9
-- development environment.
createEnvironmentEC2_tags :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe [Tag])
createEnvironmentEC2_tags = Lens.lens (\CreateEnvironmentEC2' {tags} -> tags) (\s@CreateEnvironmentEC2' {} a -> s {tags = a} :: CreateEnvironmentEC2) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | A unique, case-sensitive string that helps Cloud9 to ensure this
-- operation completes no more than one time.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
-- in the /Amazon EC2 API Reference/.
createEnvironmentEC2_clientRequestToken :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Text)
createEnvironmentEC2_clientRequestToken = Lens.lens (\CreateEnvironmentEC2' {clientRequestToken} -> clientRequestToken) (\s@CreateEnvironmentEC2' {} a -> s {clientRequestToken = a} :: CreateEnvironmentEC2)

-- | The connection type used for connecting to an Amazon EC2 environment.
-- Valid values are @CONNECT_SSH@ (default) and @CONNECT_SSM@ (connected
-- through Amazon EC2 Systems Manager).
--
-- For more information, see
-- <https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html Accessing no-ingress EC2 instances with Amazon EC2 Systems Manager>
-- in the /Cloud9 User Guide/.
createEnvironmentEC2_connectionType :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe ConnectionType)
createEnvironmentEC2_connectionType = Lens.lens (\CreateEnvironmentEC2' {connectionType} -> connectionType) (\s@CreateEnvironmentEC2' {} a -> s {connectionType = a} :: CreateEnvironmentEC2)

-- | The ID of the subnet in Amazon VPC that Cloud9 will use to communicate
-- with the Amazon EC2 instance.
createEnvironmentEC2_subnetId :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Text)
createEnvironmentEC2_subnetId = Lens.lens (\CreateEnvironmentEC2' {subnetId} -> subnetId) (\s@CreateEnvironmentEC2' {} a -> s {subnetId = a} :: CreateEnvironmentEC2)

-- | The description of the environment to create.
createEnvironmentEC2_description :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Text)
createEnvironmentEC2_description = Lens.lens (\CreateEnvironmentEC2' {description} -> description) (\s@CreateEnvironmentEC2' {} a -> s {description = a} :: CreateEnvironmentEC2) Prelude.. Lens.mapping Core._Sensitive

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createEnvironmentEC2_dryRun :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Bool)
createEnvironmentEC2_dryRun = Lens.lens (\CreateEnvironmentEC2' {dryRun} -> dryRun) (\s@CreateEnvironmentEC2' {} a -> s {dryRun = a} :: CreateEnvironmentEC2)

-- | The Amazon Resource Name (ARN) of the environment owner. This ARN can be
-- the ARN of any IAM principal. If this value is not specified, the ARN
-- defaults to this environment\'s creator.
createEnvironmentEC2_ownerArn :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Text)
createEnvironmentEC2_ownerArn = Lens.lens (\CreateEnvironmentEC2' {ownerArn} -> ownerArn) (\s@CreateEnvironmentEC2' {} a -> s {ownerArn = a} :: CreateEnvironmentEC2)

-- | The identifier for the Amazon Machine Image (AMI) that\'s used to create
-- the EC2 instance. To choose an AMI for the instance, you must specify a
-- valid AMI alias or a valid Amazon EC2 Systems Manager (SSM) path.
--
-- The default AMI is used if the parameter isn\'t explicitly assigned a
-- value in the request. Because Amazon Linux AMI has ended standard
-- support as of December 31, 2020, we recommend you choose Amazon Linux 2,
-- which includes long term support through 2023.
--
-- __AMI aliases__
--
-- -   __Amazon Linux (default): @amazonlinux-1-x86_64@__
--
-- -   Amazon Linux 2: @amazonlinux-2-x86_64@
--
-- -   Ubuntu 18.04: @ubuntu-18.04-x86_64@
--
-- __SSM paths__
--
-- -   __Amazon Linux (default):
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-1-x86_64@__
--
-- -   Amazon Linux 2:
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/amazonlinux-2-x86_64@
--
-- -   Ubuntu 18.04:
--     @resolve:ssm:\/aws\/service\/cloud9\/amis\/ubuntu-18.04-x86_64@
createEnvironmentEC2_imageId :: Lens.Lens' CreateEnvironmentEC2 (Prelude.Maybe Prelude.Text)
createEnvironmentEC2_imageId = Lens.lens (\CreateEnvironmentEC2' {imageId} -> imageId) (\s@CreateEnvironmentEC2' {} a -> s {imageId = a} :: CreateEnvironmentEC2)

-- | The name of the environment to create.
--
-- This name is visible to other IAM users in the same Amazon Web Services
-- account.
createEnvironmentEC2_name :: Lens.Lens' CreateEnvironmentEC2 Prelude.Text
createEnvironmentEC2_name = Lens.lens (\CreateEnvironmentEC2' {name} -> name) (\s@CreateEnvironmentEC2' {} a -> s {name = a} :: CreateEnvironmentEC2)

-- | The type of instance to connect to the environment (for example,
-- @t2.micro@).
createEnvironmentEC2_instanceType :: Lens.Lens' CreateEnvironmentEC2 Prelude.Text
createEnvironmentEC2_instanceType = Lens.lens (\CreateEnvironmentEC2' {instanceType} -> instanceType) (\s@CreateEnvironmentEC2' {} a -> s {instanceType = a} :: CreateEnvironmentEC2)

instance Core.AWSRequest CreateEnvironmentEC2 where
  type
    AWSResponse CreateEnvironmentEC2 =
      CreateEnvironmentEC2Response
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateEnvironmentEC2Response'
            Prelude.<$> (x Core..?> "environmentId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateEnvironmentEC2 where
  hashWithSalt _salt CreateEnvironmentEC2' {..} =
    _salt
      `Prelude.hashWithSalt` automaticStopTimeMinutes
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` connectionType
      `Prelude.hashWithSalt` subnetId
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` ownerArn
      `Prelude.hashWithSalt` imageId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` instanceType

instance Prelude.NFData CreateEnvironmentEC2 where
  rnf CreateEnvironmentEC2' {..} =
    Prelude.rnf automaticStopTimeMinutes
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf connectionType
      `Prelude.seq` Prelude.rnf subnetId
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf ownerArn
      `Prelude.seq` Prelude.rnf imageId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf instanceType

instance Core.ToHeaders CreateEnvironmentEC2 where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCloud9WorkspaceManagementService.CreateEnvironmentEC2" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateEnvironmentEC2 where
  toJSON CreateEnvironmentEC2' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("automaticStopTimeMinutes" Core..=)
              Prelude.<$> automaticStopTimeMinutes,
            ("tags" Core..=) Prelude.<$> tags,
            ("clientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            ("connectionType" Core..=)
              Prelude.<$> connectionType,
            ("subnetId" Core..=) Prelude.<$> subnetId,
            ("description" Core..=) Prelude.<$> description,
            ("dryRun" Core..=) Prelude.<$> dryRun,
            ("ownerArn" Core..=) Prelude.<$> ownerArn,
            ("imageId" Core..=) Prelude.<$> imageId,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("instanceType" Core..= instanceType)
          ]
      )

instance Core.ToPath CreateEnvironmentEC2 where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateEnvironmentEC2 where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateEnvironmentEC2Response' smart constructor.
data CreateEnvironmentEC2Response = CreateEnvironmentEC2Response'
  { -- | The ID of the environment that was created.
    environmentId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEnvironmentEC2Response' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environmentId', 'createEnvironmentEC2Response_environmentId' - The ID of the environment that was created.
--
-- 'httpStatus', 'createEnvironmentEC2Response_httpStatus' - The response's http status code.
newCreateEnvironmentEC2Response ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateEnvironmentEC2Response
newCreateEnvironmentEC2Response pHttpStatus_ =
  CreateEnvironmentEC2Response'
    { environmentId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the environment that was created.
createEnvironmentEC2Response_environmentId :: Lens.Lens' CreateEnvironmentEC2Response (Prelude.Maybe Prelude.Text)
createEnvironmentEC2Response_environmentId = Lens.lens (\CreateEnvironmentEC2Response' {environmentId} -> environmentId) (\s@CreateEnvironmentEC2Response' {} a -> s {environmentId = a} :: CreateEnvironmentEC2Response)

-- | The response's http status code.
createEnvironmentEC2Response_httpStatus :: Lens.Lens' CreateEnvironmentEC2Response Prelude.Int
createEnvironmentEC2Response_httpStatus = Lens.lens (\CreateEnvironmentEC2Response' {httpStatus} -> httpStatus) (\s@CreateEnvironmentEC2Response' {} a -> s {httpStatus = a} :: CreateEnvironmentEC2Response)

instance Prelude.NFData CreateEnvironmentEC2Response where
  rnf CreateEnvironmentEC2Response' {..} =
    Prelude.rnf environmentId
      `Prelude.seq` Prelude.rnf httpStatus

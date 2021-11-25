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
-- Module      : Amazonka.Synthetics.CreateCanary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a canary. Canaries are scripts that monitor your endpoints and
-- APIs from the outside-in. Canaries help you check the availability and
-- latency of your web services and troubleshoot anomalies by investigating
-- load time data, screenshots of the UI, logs, and metrics. You can set up
-- a canary to run continuously or just once.
--
-- Do not use @CreateCanary@ to modify an existing canary. Use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html UpdateCanary>
-- instead.
--
-- To create canaries, you must have the @CloudWatchSyntheticsFullAccess@
-- policy. If you are creating a new IAM role for the canary, you also need
-- the the @iam:CreateRole@, @iam:CreatePolicy@ and @iam:AttachRolePolicy@
-- permissions. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles Necessary Roles and Permissions>.
--
-- Do not include secrets or proprietary information in your canary names.
-- The canary name makes up part of the Amazon Resource Name (ARN) for the
-- canary, and the ARN is included in outbound calls over the internet. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html Security Considerations for Synthetics Canaries>.
module Amazonka.Synthetics.CreateCanary
  ( -- * Creating a Request
    CreateCanary (..),
    newCreateCanary,

    -- * Request Lenses
    createCanary_successRetentionPeriodInDays,
    createCanary_runConfig,
    createCanary_failureRetentionPeriodInDays,
    createCanary_artifactConfig,
    createCanary_vpcConfig,
    createCanary_tags,
    createCanary_name,
    createCanary_code,
    createCanary_artifactS3Location,
    createCanary_executionRoleArn,
    createCanary_schedule,
    createCanary_runtimeVersion,

    -- * Destructuring the Response
    CreateCanaryResponse (..),
    newCreateCanaryResponse,

    -- * Response Lenses
    createCanaryResponse_canary,
    createCanaryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Synthetics.Types

-- | /See:/ 'newCreateCanary' smart constructor.
data CreateCanary = CreateCanary'
  { -- | The number of days to retain data about successful runs of this canary.
    -- If you omit this field, the default of 31 days is used. The valid range
    -- is 1 to 455 days.
    successRetentionPeriodInDays :: Prelude.Maybe Prelude.Natural,
    -- | A structure that contains the configuration for individual canary runs,
    -- such as timeout value.
    runConfig :: Prelude.Maybe CanaryRunConfigInput,
    -- | The number of days to retain data about failed runs of this canary. If
    -- you omit this field, the default of 31 days is used. The valid range is
    -- 1 to 455 days.
    failureRetentionPeriodInDays :: Prelude.Maybe Prelude.Natural,
    -- | A structure that contains the configuration for canary artifacts,
    -- including the encryption-at-rest settings for artifacts that the canary
    -- uploads to Amazon S3.
    artifactConfig :: Prelude.Maybe ArtifactConfigInput,
    -- | If this canary is to test an endpoint in a VPC, this structure contains
    -- information about the subnet and security groups of the VPC endpoint.
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html Running a Canary in a VPC>.
    vpcConfig :: Prelude.Maybe VpcConfigInput,
    -- | A list of key-value pairs to associate with the canary. You can
    -- associate as many as 50 tags with a canary.
    --
    -- Tags can help you organize and categorize your resources. You can also
    -- use them to scope user permissions, by granting a user permission to
    -- access or change only the resources that have certain tag values.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name for this canary. Be sure to give it a descriptive name that
    -- distinguishes it from other canaries in your account.
    --
    -- Do not include secrets or proprietary information in your canary names.
    -- The canary name makes up part of the canary ARN, and the ARN is included
    -- in outbound calls over the internet. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html Security Considerations for Synthetics Canaries>.
    name :: Prelude.Text,
    -- | A structure that includes the entry point from which the canary should
    -- start running your script. If the script is stored in an S3 bucket, the
    -- bucket name, key, and version are also included.
    code :: CanaryCodeInput,
    -- | The location in Amazon S3 where Synthetics stores artifacts from the
    -- test runs of this canary. Artifacts include the log file, screenshots,
    -- and HAR files. The name of the S3 bucket can\'t include a period (.).
    artifactS3Location :: Prelude.Text,
    -- | The ARN of the IAM role to be used to run the canary. This role must
    -- already exist, and must include @lambda.amazonaws.com@ as a principal in
    -- the trust policy. The role must also have the following permissions:
    --
    -- -   @s3:PutObject@
    --
    -- -   @s3:GetBucketLocation@
    --
    -- -   @s3:ListAllMyBuckets@
    --
    -- -   @cloudwatch:PutMetricData@
    --
    -- -   @logs:CreateLogGroup@
    --
    -- -   @logs:CreateLogStream@
    --
    -- -   @logs:PutLogEvents@
    executionRoleArn :: Prelude.Text,
    -- | A structure that contains information about how often the canary is to
    -- run and when these test runs are to stop.
    schedule :: CanaryScheduleInput,
    -- | Specifies the runtime version to use for the canary. For a list of valid
    -- runtime versions and more information about runtime versions, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html Canary Runtime Versions>.
    runtimeVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCanary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'successRetentionPeriodInDays', 'createCanary_successRetentionPeriodInDays' - The number of days to retain data about successful runs of this canary.
-- If you omit this field, the default of 31 days is used. The valid range
-- is 1 to 455 days.
--
-- 'runConfig', 'createCanary_runConfig' - A structure that contains the configuration for individual canary runs,
-- such as timeout value.
--
-- 'failureRetentionPeriodInDays', 'createCanary_failureRetentionPeriodInDays' - The number of days to retain data about failed runs of this canary. If
-- you omit this field, the default of 31 days is used. The valid range is
-- 1 to 455 days.
--
-- 'artifactConfig', 'createCanary_artifactConfig' - A structure that contains the configuration for canary artifacts,
-- including the encryption-at-rest settings for artifacts that the canary
-- uploads to Amazon S3.
--
-- 'vpcConfig', 'createCanary_vpcConfig' - If this canary is to test an endpoint in a VPC, this structure contains
-- information about the subnet and security groups of the VPC endpoint.
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html Running a Canary in a VPC>.
--
-- 'tags', 'createCanary_tags' - A list of key-value pairs to associate with the canary. You can
-- associate as many as 50 tags with a canary.
--
-- Tags can help you organize and categorize your resources. You can also
-- use them to scope user permissions, by granting a user permission to
-- access or change only the resources that have certain tag values.
--
-- 'name', 'createCanary_name' - The name for this canary. Be sure to give it a descriptive name that
-- distinguishes it from other canaries in your account.
--
-- Do not include secrets or proprietary information in your canary names.
-- The canary name makes up part of the canary ARN, and the ARN is included
-- in outbound calls over the internet. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html Security Considerations for Synthetics Canaries>.
--
-- 'code', 'createCanary_code' - A structure that includes the entry point from which the canary should
-- start running your script. If the script is stored in an S3 bucket, the
-- bucket name, key, and version are also included.
--
-- 'artifactS3Location', 'createCanary_artifactS3Location' - The location in Amazon S3 where Synthetics stores artifacts from the
-- test runs of this canary. Artifacts include the log file, screenshots,
-- and HAR files. The name of the S3 bucket can\'t include a period (.).
--
-- 'executionRoleArn', 'createCanary_executionRoleArn' - The ARN of the IAM role to be used to run the canary. This role must
-- already exist, and must include @lambda.amazonaws.com@ as a principal in
-- the trust policy. The role must also have the following permissions:
--
-- -   @s3:PutObject@
--
-- -   @s3:GetBucketLocation@
--
-- -   @s3:ListAllMyBuckets@
--
-- -   @cloudwatch:PutMetricData@
--
-- -   @logs:CreateLogGroup@
--
-- -   @logs:CreateLogStream@
--
-- -   @logs:PutLogEvents@
--
-- 'schedule', 'createCanary_schedule' - A structure that contains information about how often the canary is to
-- run and when these test runs are to stop.
--
-- 'runtimeVersion', 'createCanary_runtimeVersion' - Specifies the runtime version to use for the canary. For a list of valid
-- runtime versions and more information about runtime versions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html Canary Runtime Versions>.
newCreateCanary ::
  -- | 'name'
  Prelude.Text ->
  -- | 'code'
  CanaryCodeInput ->
  -- | 'artifactS3Location'
  Prelude.Text ->
  -- | 'executionRoleArn'
  Prelude.Text ->
  -- | 'schedule'
  CanaryScheduleInput ->
  -- | 'runtimeVersion'
  Prelude.Text ->
  CreateCanary
newCreateCanary
  pName_
  pCode_
  pArtifactS3Location_
  pExecutionRoleArn_
  pSchedule_
  pRuntimeVersion_ =
    CreateCanary'
      { successRetentionPeriodInDays =
          Prelude.Nothing,
        runConfig = Prelude.Nothing,
        failureRetentionPeriodInDays = Prelude.Nothing,
        artifactConfig = Prelude.Nothing,
        vpcConfig = Prelude.Nothing,
        tags = Prelude.Nothing,
        name = pName_,
        code = pCode_,
        artifactS3Location = pArtifactS3Location_,
        executionRoleArn = pExecutionRoleArn_,
        schedule = pSchedule_,
        runtimeVersion = pRuntimeVersion_
      }

-- | The number of days to retain data about successful runs of this canary.
-- If you omit this field, the default of 31 days is used. The valid range
-- is 1 to 455 days.
createCanary_successRetentionPeriodInDays :: Lens.Lens' CreateCanary (Prelude.Maybe Prelude.Natural)
createCanary_successRetentionPeriodInDays = Lens.lens (\CreateCanary' {successRetentionPeriodInDays} -> successRetentionPeriodInDays) (\s@CreateCanary' {} a -> s {successRetentionPeriodInDays = a} :: CreateCanary)

-- | A structure that contains the configuration for individual canary runs,
-- such as timeout value.
createCanary_runConfig :: Lens.Lens' CreateCanary (Prelude.Maybe CanaryRunConfigInput)
createCanary_runConfig = Lens.lens (\CreateCanary' {runConfig} -> runConfig) (\s@CreateCanary' {} a -> s {runConfig = a} :: CreateCanary)

-- | The number of days to retain data about failed runs of this canary. If
-- you omit this field, the default of 31 days is used. The valid range is
-- 1 to 455 days.
createCanary_failureRetentionPeriodInDays :: Lens.Lens' CreateCanary (Prelude.Maybe Prelude.Natural)
createCanary_failureRetentionPeriodInDays = Lens.lens (\CreateCanary' {failureRetentionPeriodInDays} -> failureRetentionPeriodInDays) (\s@CreateCanary' {} a -> s {failureRetentionPeriodInDays = a} :: CreateCanary)

-- | A structure that contains the configuration for canary artifacts,
-- including the encryption-at-rest settings for artifacts that the canary
-- uploads to Amazon S3.
createCanary_artifactConfig :: Lens.Lens' CreateCanary (Prelude.Maybe ArtifactConfigInput)
createCanary_artifactConfig = Lens.lens (\CreateCanary' {artifactConfig} -> artifactConfig) (\s@CreateCanary' {} a -> s {artifactConfig = a} :: CreateCanary)

-- | If this canary is to test an endpoint in a VPC, this structure contains
-- information about the subnet and security groups of the VPC endpoint.
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html Running a Canary in a VPC>.
createCanary_vpcConfig :: Lens.Lens' CreateCanary (Prelude.Maybe VpcConfigInput)
createCanary_vpcConfig = Lens.lens (\CreateCanary' {vpcConfig} -> vpcConfig) (\s@CreateCanary' {} a -> s {vpcConfig = a} :: CreateCanary)

-- | A list of key-value pairs to associate with the canary. You can
-- associate as many as 50 tags with a canary.
--
-- Tags can help you organize and categorize your resources. You can also
-- use them to scope user permissions, by granting a user permission to
-- access or change only the resources that have certain tag values.
createCanary_tags :: Lens.Lens' CreateCanary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createCanary_tags = Lens.lens (\CreateCanary' {tags} -> tags) (\s@CreateCanary' {} a -> s {tags = a} :: CreateCanary) Prelude.. Lens.mapping Lens.coerced

-- | The name for this canary. Be sure to give it a descriptive name that
-- distinguishes it from other canaries in your account.
--
-- Do not include secrets or proprietary information in your canary names.
-- The canary name makes up part of the canary ARN, and the ARN is included
-- in outbound calls over the internet. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html Security Considerations for Synthetics Canaries>.
createCanary_name :: Lens.Lens' CreateCanary Prelude.Text
createCanary_name = Lens.lens (\CreateCanary' {name} -> name) (\s@CreateCanary' {} a -> s {name = a} :: CreateCanary)

-- | A structure that includes the entry point from which the canary should
-- start running your script. If the script is stored in an S3 bucket, the
-- bucket name, key, and version are also included.
createCanary_code :: Lens.Lens' CreateCanary CanaryCodeInput
createCanary_code = Lens.lens (\CreateCanary' {code} -> code) (\s@CreateCanary' {} a -> s {code = a} :: CreateCanary)

-- | The location in Amazon S3 where Synthetics stores artifacts from the
-- test runs of this canary. Artifacts include the log file, screenshots,
-- and HAR files. The name of the S3 bucket can\'t include a period (.).
createCanary_artifactS3Location :: Lens.Lens' CreateCanary Prelude.Text
createCanary_artifactS3Location = Lens.lens (\CreateCanary' {artifactS3Location} -> artifactS3Location) (\s@CreateCanary' {} a -> s {artifactS3Location = a} :: CreateCanary)

-- | The ARN of the IAM role to be used to run the canary. This role must
-- already exist, and must include @lambda.amazonaws.com@ as a principal in
-- the trust policy. The role must also have the following permissions:
--
-- -   @s3:PutObject@
--
-- -   @s3:GetBucketLocation@
--
-- -   @s3:ListAllMyBuckets@
--
-- -   @cloudwatch:PutMetricData@
--
-- -   @logs:CreateLogGroup@
--
-- -   @logs:CreateLogStream@
--
-- -   @logs:PutLogEvents@
createCanary_executionRoleArn :: Lens.Lens' CreateCanary Prelude.Text
createCanary_executionRoleArn = Lens.lens (\CreateCanary' {executionRoleArn} -> executionRoleArn) (\s@CreateCanary' {} a -> s {executionRoleArn = a} :: CreateCanary)

-- | A structure that contains information about how often the canary is to
-- run and when these test runs are to stop.
createCanary_schedule :: Lens.Lens' CreateCanary CanaryScheduleInput
createCanary_schedule = Lens.lens (\CreateCanary' {schedule} -> schedule) (\s@CreateCanary' {} a -> s {schedule = a} :: CreateCanary)

-- | Specifies the runtime version to use for the canary. For a list of valid
-- runtime versions and more information about runtime versions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html Canary Runtime Versions>.
createCanary_runtimeVersion :: Lens.Lens' CreateCanary Prelude.Text
createCanary_runtimeVersion = Lens.lens (\CreateCanary' {runtimeVersion} -> runtimeVersion) (\s@CreateCanary' {} a -> s {runtimeVersion = a} :: CreateCanary)

instance Core.AWSRequest CreateCanary where
  type AWSResponse CreateCanary = CreateCanaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCanaryResponse'
            Prelude.<$> (x Core..?> "Canary")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCanary

instance Prelude.NFData CreateCanary

instance Core.ToHeaders CreateCanary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCanary where
  toJSON CreateCanary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SuccessRetentionPeriodInDays" Core..=)
              Prelude.<$> successRetentionPeriodInDays,
            ("RunConfig" Core..=) Prelude.<$> runConfig,
            ("FailureRetentionPeriodInDays" Core..=)
              Prelude.<$> failureRetentionPeriodInDays,
            ("ArtifactConfig" Core..=)
              Prelude.<$> artifactConfig,
            ("VpcConfig" Core..=) Prelude.<$> vpcConfig,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Code" Core..= code),
            Prelude.Just
              ("ArtifactS3Location" Core..= artifactS3Location),
            Prelude.Just
              ("ExecutionRoleArn" Core..= executionRoleArn),
            Prelude.Just ("Schedule" Core..= schedule),
            Prelude.Just
              ("RuntimeVersion" Core..= runtimeVersion)
          ]
      )

instance Core.ToPath CreateCanary where
  toPath = Prelude.const "/canary"

instance Core.ToQuery CreateCanary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCanaryResponse' smart constructor.
data CreateCanaryResponse = CreateCanaryResponse'
  { -- | The full details about the canary you have created.
    canary :: Prelude.Maybe Canary,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCanaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'canary', 'createCanaryResponse_canary' - The full details about the canary you have created.
--
-- 'httpStatus', 'createCanaryResponse_httpStatus' - The response's http status code.
newCreateCanaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCanaryResponse
newCreateCanaryResponse pHttpStatus_ =
  CreateCanaryResponse'
    { canary = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The full details about the canary you have created.
createCanaryResponse_canary :: Lens.Lens' CreateCanaryResponse (Prelude.Maybe Canary)
createCanaryResponse_canary = Lens.lens (\CreateCanaryResponse' {canary} -> canary) (\s@CreateCanaryResponse' {} a -> s {canary = a} :: CreateCanaryResponse)

-- | The response's http status code.
createCanaryResponse_httpStatus :: Lens.Lens' CreateCanaryResponse Prelude.Int
createCanaryResponse_httpStatus = Lens.lens (\CreateCanaryResponse' {httpStatus} -> httpStatus) (\s@CreateCanaryResponse' {} a -> s {httpStatus = a} :: CreateCanaryResponse)

instance Prelude.NFData CreateCanaryResponse
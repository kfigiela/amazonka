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
-- Module      : Amazonka.Signer.DescribeSigningJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific code signing job. You specify the
-- job by using the @jobId@ value that is returned by the StartSigningJob
-- operation.
module Amazonka.Signer.DescribeSigningJob
  ( -- * Creating a Request
    DescribeSigningJob (..),
    newDescribeSigningJob,

    -- * Request Lenses
    describeSigningJob_jobId,

    -- * Destructuring the Response
    DescribeSigningJobResponse (..),
    newDescribeSigningJobResponse,

    -- * Response Lenses
    describeSigningJobResponse_jobOwner,
    describeSigningJobResponse_jobInvoker,
    describeSigningJobResponse_profileName,
    describeSigningJobResponse_signingParameters,
    describeSigningJobResponse_signedObject,
    describeSigningJobResponse_platformDisplayName,
    describeSigningJobResponse_statusReason,
    describeSigningJobResponse_jobId,
    describeSigningJobResponse_status,
    describeSigningJobResponse_profileVersion,
    describeSigningJobResponse_revocationRecord,
    describeSigningJobResponse_signingMaterial,
    describeSigningJobResponse_source,
    describeSigningJobResponse_requestedBy,
    describeSigningJobResponse_signatureExpiresAt,
    describeSigningJobResponse_completedAt,
    describeSigningJobResponse_createdAt,
    describeSigningJobResponse_platformId,
    describeSigningJobResponse_overrides,
    describeSigningJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Signer.Types

-- | /See:/ 'newDescribeSigningJob' smart constructor.
data DescribeSigningJob = DescribeSigningJob'
  { -- | The ID of the signing job on input.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSigningJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'describeSigningJob_jobId' - The ID of the signing job on input.
newDescribeSigningJob ::
  -- | 'jobId'
  Prelude.Text ->
  DescribeSigningJob
newDescribeSigningJob pJobId_ =
  DescribeSigningJob' {jobId = pJobId_}

-- | The ID of the signing job on input.
describeSigningJob_jobId :: Lens.Lens' DescribeSigningJob Prelude.Text
describeSigningJob_jobId = Lens.lens (\DescribeSigningJob' {jobId} -> jobId) (\s@DescribeSigningJob' {} a -> s {jobId = a} :: DescribeSigningJob)

instance Core.AWSRequest DescribeSigningJob where
  type
    AWSResponse DescribeSigningJob =
      DescribeSigningJobResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSigningJobResponse'
            Prelude.<$> (x Core..?> "jobOwner")
            Prelude.<*> (x Core..?> "jobInvoker")
            Prelude.<*> (x Core..?> "profileName")
            Prelude.<*> ( x Core..?> "signingParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "signedObject")
            Prelude.<*> (x Core..?> "platformDisplayName")
            Prelude.<*> (x Core..?> "statusReason")
            Prelude.<*> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "profileVersion")
            Prelude.<*> (x Core..?> "revocationRecord")
            Prelude.<*> (x Core..?> "signingMaterial")
            Prelude.<*> (x Core..?> "source")
            Prelude.<*> (x Core..?> "requestedBy")
            Prelude.<*> (x Core..?> "signatureExpiresAt")
            Prelude.<*> (x Core..?> "completedAt")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "platformId")
            Prelude.<*> (x Core..?> "overrides")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSigningJob where
  hashWithSalt _salt DescribeSigningJob' {..} =
    _salt `Prelude.hashWithSalt` jobId

instance Prelude.NFData DescribeSigningJob where
  rnf DescribeSigningJob' {..} = Prelude.rnf jobId

instance Core.ToHeaders DescribeSigningJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeSigningJob where
  toPath DescribeSigningJob' {..} =
    Prelude.mconcat ["/signing-jobs/", Core.toBS jobId]

instance Core.ToQuery DescribeSigningJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSigningJobResponse' smart constructor.
data DescribeSigningJobResponse = DescribeSigningJobResponse'
  { -- | The AWS account ID of the job owner.
    jobOwner :: Prelude.Maybe Prelude.Text,
    -- | The IAM entity that initiated the signing job.
    jobInvoker :: Prelude.Maybe Prelude.Text,
    -- | The name of the profile that initiated the signing operation.
    profileName :: Prelude.Maybe Prelude.Text,
    -- | Map of user-assigned key-value pairs used during signing. These values
    -- contain any information that you specified for use in your signing job.
    signingParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name of the S3 bucket where the signed code image is saved by code
    -- signing.
    signedObject :: Prelude.Maybe SignedObject,
    -- | A human-readable name for the signing platform associated with the
    -- signing job.
    platformDisplayName :: Prelude.Maybe Prelude.Text,
    -- | String value that contains the status reason.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The ID of the signing job on output.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | Status of the signing job.
    status :: Prelude.Maybe SigningStatus,
    -- | The version of the signing profile used to initiate the signing job.
    profileVersion :: Prelude.Maybe Prelude.Text,
    -- | A revocation record if the signature generated by the signing job has
    -- been revoked. Contains a timestamp and the ID of the IAM entity that
    -- revoked the signature.
    revocationRecord :: Prelude.Maybe SigningJobRevocationRecord,
    -- | The Amazon Resource Name (ARN) of your code signing certificate.
    signingMaterial :: Prelude.Maybe SigningMaterial,
    -- | The object that contains the name of your S3 bucket or your raw code.
    source :: Prelude.Maybe Source,
    -- | The IAM principal that requested the signing job.
    requestedBy :: Prelude.Maybe Prelude.Text,
    -- | Thr expiration timestamp for the signature generated by the signing job.
    signatureExpiresAt :: Prelude.Maybe Core.POSIX,
    -- | Date and time that the signing job was completed.
    completedAt :: Prelude.Maybe Core.POSIX,
    -- | Date and time that the signing job was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The microcontroller platform to which your signed code image will be
    -- distributed.
    platformId :: Prelude.Maybe Prelude.Text,
    -- | A list of any overrides that were applied to the signing operation.
    overrides :: Prelude.Maybe SigningPlatformOverrides,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSigningJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobOwner', 'describeSigningJobResponse_jobOwner' - The AWS account ID of the job owner.
--
-- 'jobInvoker', 'describeSigningJobResponse_jobInvoker' - The IAM entity that initiated the signing job.
--
-- 'profileName', 'describeSigningJobResponse_profileName' - The name of the profile that initiated the signing operation.
--
-- 'signingParameters', 'describeSigningJobResponse_signingParameters' - Map of user-assigned key-value pairs used during signing. These values
-- contain any information that you specified for use in your signing job.
--
-- 'signedObject', 'describeSigningJobResponse_signedObject' - Name of the S3 bucket where the signed code image is saved by code
-- signing.
--
-- 'platformDisplayName', 'describeSigningJobResponse_platformDisplayName' - A human-readable name for the signing platform associated with the
-- signing job.
--
-- 'statusReason', 'describeSigningJobResponse_statusReason' - String value that contains the status reason.
--
-- 'jobId', 'describeSigningJobResponse_jobId' - The ID of the signing job on output.
--
-- 'status', 'describeSigningJobResponse_status' - Status of the signing job.
--
-- 'profileVersion', 'describeSigningJobResponse_profileVersion' - The version of the signing profile used to initiate the signing job.
--
-- 'revocationRecord', 'describeSigningJobResponse_revocationRecord' - A revocation record if the signature generated by the signing job has
-- been revoked. Contains a timestamp and the ID of the IAM entity that
-- revoked the signature.
--
-- 'signingMaterial', 'describeSigningJobResponse_signingMaterial' - The Amazon Resource Name (ARN) of your code signing certificate.
--
-- 'source', 'describeSigningJobResponse_source' - The object that contains the name of your S3 bucket or your raw code.
--
-- 'requestedBy', 'describeSigningJobResponse_requestedBy' - The IAM principal that requested the signing job.
--
-- 'signatureExpiresAt', 'describeSigningJobResponse_signatureExpiresAt' - Thr expiration timestamp for the signature generated by the signing job.
--
-- 'completedAt', 'describeSigningJobResponse_completedAt' - Date and time that the signing job was completed.
--
-- 'createdAt', 'describeSigningJobResponse_createdAt' - Date and time that the signing job was created.
--
-- 'platformId', 'describeSigningJobResponse_platformId' - The microcontroller platform to which your signed code image will be
-- distributed.
--
-- 'overrides', 'describeSigningJobResponse_overrides' - A list of any overrides that were applied to the signing operation.
--
-- 'httpStatus', 'describeSigningJobResponse_httpStatus' - The response's http status code.
newDescribeSigningJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSigningJobResponse
newDescribeSigningJobResponse pHttpStatus_ =
  DescribeSigningJobResponse'
    { jobOwner =
        Prelude.Nothing,
      jobInvoker = Prelude.Nothing,
      profileName = Prelude.Nothing,
      signingParameters = Prelude.Nothing,
      signedObject = Prelude.Nothing,
      platformDisplayName = Prelude.Nothing,
      statusReason = Prelude.Nothing,
      jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      profileVersion = Prelude.Nothing,
      revocationRecord = Prelude.Nothing,
      signingMaterial = Prelude.Nothing,
      source = Prelude.Nothing,
      requestedBy = Prelude.Nothing,
      signatureExpiresAt = Prelude.Nothing,
      completedAt = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      platformId = Prelude.Nothing,
      overrides = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The AWS account ID of the job owner.
describeSigningJobResponse_jobOwner :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_jobOwner = Lens.lens (\DescribeSigningJobResponse' {jobOwner} -> jobOwner) (\s@DescribeSigningJobResponse' {} a -> s {jobOwner = a} :: DescribeSigningJobResponse)

-- | The IAM entity that initiated the signing job.
describeSigningJobResponse_jobInvoker :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_jobInvoker = Lens.lens (\DescribeSigningJobResponse' {jobInvoker} -> jobInvoker) (\s@DescribeSigningJobResponse' {} a -> s {jobInvoker = a} :: DescribeSigningJobResponse)

-- | The name of the profile that initiated the signing operation.
describeSigningJobResponse_profileName :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_profileName = Lens.lens (\DescribeSigningJobResponse' {profileName} -> profileName) (\s@DescribeSigningJobResponse' {} a -> s {profileName = a} :: DescribeSigningJobResponse)

-- | Map of user-assigned key-value pairs used during signing. These values
-- contain any information that you specified for use in your signing job.
describeSigningJobResponse_signingParameters :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeSigningJobResponse_signingParameters = Lens.lens (\DescribeSigningJobResponse' {signingParameters} -> signingParameters) (\s@DescribeSigningJobResponse' {} a -> s {signingParameters = a} :: DescribeSigningJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | Name of the S3 bucket where the signed code image is saved by code
-- signing.
describeSigningJobResponse_signedObject :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe SignedObject)
describeSigningJobResponse_signedObject = Lens.lens (\DescribeSigningJobResponse' {signedObject} -> signedObject) (\s@DescribeSigningJobResponse' {} a -> s {signedObject = a} :: DescribeSigningJobResponse)

-- | A human-readable name for the signing platform associated with the
-- signing job.
describeSigningJobResponse_platformDisplayName :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_platformDisplayName = Lens.lens (\DescribeSigningJobResponse' {platformDisplayName} -> platformDisplayName) (\s@DescribeSigningJobResponse' {} a -> s {platformDisplayName = a} :: DescribeSigningJobResponse)

-- | String value that contains the status reason.
describeSigningJobResponse_statusReason :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_statusReason = Lens.lens (\DescribeSigningJobResponse' {statusReason} -> statusReason) (\s@DescribeSigningJobResponse' {} a -> s {statusReason = a} :: DescribeSigningJobResponse)

-- | The ID of the signing job on output.
describeSigningJobResponse_jobId :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_jobId = Lens.lens (\DescribeSigningJobResponse' {jobId} -> jobId) (\s@DescribeSigningJobResponse' {} a -> s {jobId = a} :: DescribeSigningJobResponse)

-- | Status of the signing job.
describeSigningJobResponse_status :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe SigningStatus)
describeSigningJobResponse_status = Lens.lens (\DescribeSigningJobResponse' {status} -> status) (\s@DescribeSigningJobResponse' {} a -> s {status = a} :: DescribeSigningJobResponse)

-- | The version of the signing profile used to initiate the signing job.
describeSigningJobResponse_profileVersion :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_profileVersion = Lens.lens (\DescribeSigningJobResponse' {profileVersion} -> profileVersion) (\s@DescribeSigningJobResponse' {} a -> s {profileVersion = a} :: DescribeSigningJobResponse)

-- | A revocation record if the signature generated by the signing job has
-- been revoked. Contains a timestamp and the ID of the IAM entity that
-- revoked the signature.
describeSigningJobResponse_revocationRecord :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe SigningJobRevocationRecord)
describeSigningJobResponse_revocationRecord = Lens.lens (\DescribeSigningJobResponse' {revocationRecord} -> revocationRecord) (\s@DescribeSigningJobResponse' {} a -> s {revocationRecord = a} :: DescribeSigningJobResponse)

-- | The Amazon Resource Name (ARN) of your code signing certificate.
describeSigningJobResponse_signingMaterial :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe SigningMaterial)
describeSigningJobResponse_signingMaterial = Lens.lens (\DescribeSigningJobResponse' {signingMaterial} -> signingMaterial) (\s@DescribeSigningJobResponse' {} a -> s {signingMaterial = a} :: DescribeSigningJobResponse)

-- | The object that contains the name of your S3 bucket or your raw code.
describeSigningJobResponse_source :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Source)
describeSigningJobResponse_source = Lens.lens (\DescribeSigningJobResponse' {source} -> source) (\s@DescribeSigningJobResponse' {} a -> s {source = a} :: DescribeSigningJobResponse)

-- | The IAM principal that requested the signing job.
describeSigningJobResponse_requestedBy :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_requestedBy = Lens.lens (\DescribeSigningJobResponse' {requestedBy} -> requestedBy) (\s@DescribeSigningJobResponse' {} a -> s {requestedBy = a} :: DescribeSigningJobResponse)

-- | Thr expiration timestamp for the signature generated by the signing job.
describeSigningJobResponse_signatureExpiresAt :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.UTCTime)
describeSigningJobResponse_signatureExpiresAt = Lens.lens (\DescribeSigningJobResponse' {signatureExpiresAt} -> signatureExpiresAt) (\s@DescribeSigningJobResponse' {} a -> s {signatureExpiresAt = a} :: DescribeSigningJobResponse) Prelude.. Lens.mapping Core._Time

-- | Date and time that the signing job was completed.
describeSigningJobResponse_completedAt :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.UTCTime)
describeSigningJobResponse_completedAt = Lens.lens (\DescribeSigningJobResponse' {completedAt} -> completedAt) (\s@DescribeSigningJobResponse' {} a -> s {completedAt = a} :: DescribeSigningJobResponse) Prelude.. Lens.mapping Core._Time

-- | Date and time that the signing job was created.
describeSigningJobResponse_createdAt :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.UTCTime)
describeSigningJobResponse_createdAt = Lens.lens (\DescribeSigningJobResponse' {createdAt} -> createdAt) (\s@DescribeSigningJobResponse' {} a -> s {createdAt = a} :: DescribeSigningJobResponse) Prelude.. Lens.mapping Core._Time

-- | The microcontroller platform to which your signed code image will be
-- distributed.
describeSigningJobResponse_platformId :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe Prelude.Text)
describeSigningJobResponse_platformId = Lens.lens (\DescribeSigningJobResponse' {platformId} -> platformId) (\s@DescribeSigningJobResponse' {} a -> s {platformId = a} :: DescribeSigningJobResponse)

-- | A list of any overrides that were applied to the signing operation.
describeSigningJobResponse_overrides :: Lens.Lens' DescribeSigningJobResponse (Prelude.Maybe SigningPlatformOverrides)
describeSigningJobResponse_overrides = Lens.lens (\DescribeSigningJobResponse' {overrides} -> overrides) (\s@DescribeSigningJobResponse' {} a -> s {overrides = a} :: DescribeSigningJobResponse)

-- | The response's http status code.
describeSigningJobResponse_httpStatus :: Lens.Lens' DescribeSigningJobResponse Prelude.Int
describeSigningJobResponse_httpStatus = Lens.lens (\DescribeSigningJobResponse' {httpStatus} -> httpStatus) (\s@DescribeSigningJobResponse' {} a -> s {httpStatus = a} :: DescribeSigningJobResponse)

instance Prelude.NFData DescribeSigningJobResponse where
  rnf DescribeSigningJobResponse' {..} =
    Prelude.rnf jobOwner
      `Prelude.seq` Prelude.rnf jobInvoker
      `Prelude.seq` Prelude.rnf profileName
      `Prelude.seq` Prelude.rnf signingParameters
      `Prelude.seq` Prelude.rnf signedObject
      `Prelude.seq` Prelude.rnf platformDisplayName
      `Prelude.seq` Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf profileVersion
      `Prelude.seq` Prelude.rnf revocationRecord
      `Prelude.seq` Prelude.rnf signingMaterial
      `Prelude.seq` Prelude.rnf source
      `Prelude.seq` Prelude.rnf requestedBy
      `Prelude.seq` Prelude.rnf signatureExpiresAt
      `Prelude.seq` Prelude.rnf completedAt
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf platformId
      `Prelude.seq` Prelude.rnf overrides
      `Prelude.seq` Prelude.rnf httpStatus

{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CertificateManager.Types.CertificateSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CertificateManager.Types.CertificateSummary where

import Amazonka.CertificateManager.Types.CertificateStatus
import Amazonka.CertificateManager.Types.CertificateType
import Amazonka.CertificateManager.Types.ExtendedKeyUsageName
import Amazonka.CertificateManager.Types.KeyAlgorithm
import Amazonka.CertificateManager.Types.KeyUsageName
import Amazonka.CertificateManager.Types.RenewalEligibility
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This structure is returned in the response object of ListCertificates
-- action.
--
-- /See:/ 'newCertificateSummary' smart constructor.
data CertificateSummary = CertificateSummary'
  { -- | One or more domain names (subject alternative names) included in the
    -- certificate. This list contains the domain names that are bound to the
    -- public key that is contained in the certificate. The subject alternative
    -- names include the canonical domain name (CN) of the certificate and
    -- additional domain names that can be used to connect to the website.
    --
    -- When called by
    -- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
    -- this parameter will only return the first 100 subject alternative names
    -- included in the certificate. To display the full list of subject
    -- alternative names, use
    -- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
    subjectAlternativeNameSummaries :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The source of the certificate. For certificates provided by ACM, this
    -- value is @AMAZON_ISSUED@. For certificates that you imported with
    -- ImportCertificate, this value is @IMPORTED@. ACM does not provide
    -- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
    -- for imported certificates. For more information about the differences
    -- between certificates that you import and those that ACM provides, see
    -- <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates>
    -- in the /Certificate Manager User Guide/.
    type' :: Prelude.Maybe CertificateType,
    -- | Fully qualified domain name (FQDN), such as www.example.com or
    -- example.com, for the certificate.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the certificate has been exported. This value exists
    -- only when the certificate type is @PRIVATE@.
    exported :: Prelude.Maybe Prelude.Bool,
    -- | A list of Key Usage X.509 v3 extension objects. Each object is a string
    -- value that identifies the purpose of the public key contained in the
    -- certificate. Possible extension values include DIGITAL_SIGNATURE,
    -- KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
    keyUsages :: Prelude.Maybe [KeyUsageName],
    -- | The algorithm that was used to generate the public-private key pair.
    keyAlgorithm :: Prelude.Maybe KeyAlgorithm,
    -- | Contains a list of Extended Key Usage X.509 v3 extension objects. Each
    -- object specifies a purpose for which the certificate public key can be
    -- used and consists of a name and an object identifier (OID).
    extendedKeyUsages :: Prelude.Maybe [ExtendedKeyUsageName],
    -- | The status of the certificate.
    --
    -- A certificate enters status PENDING_VALIDATION upon being requested,
    -- unless it fails for any of the reasons given in the troubleshooting
    -- topic
    -- <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html Certificate request fails>.
    -- ACM makes repeated attempts to validate a certificate for 72 hours and
    -- then times out. If a certificate shows status FAILED or
    -- VALIDATION_TIMED_OUT, delete the request, correct the issue with
    -- <https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html DNS validation>
    -- or
    -- <https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html Email validation>,
    -- and try again. If validation succeeds, the certificate enters status
    -- ISSUED.
    status :: Prelude.Maybe CertificateStatus,
    -- | When called by
    -- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
    -- indicates whether the full list of subject alternative names has been
    -- included in the response. If false, the response includes all of the
    -- subject alternative names included in the certificate. If true, the
    -- response only includes the first 100 subject alternative names included
    -- in the certificate. To display the full list of subject alternative
    -- names, use
    -- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
    hasAdditionalSubjectAlternativeNames :: Prelude.Maybe Prelude.Bool,
    -- | Amazon Resource Name (ARN) of the certificate. This is of the form:
    --
    -- @arn:aws:acm:region:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
    --
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>.
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the certificate was imported. This value exists
    -- only when the certificate type is @IMPORTED@.
    importedAt :: Prelude.Maybe Core.POSIX,
    -- | The time before which the certificate is not valid.
    notBefore :: Prelude.Maybe Core.POSIX,
    -- | Indicates whether the certificate is currently in use by any Amazon Web
    -- Services resources.
    inUse :: Prelude.Maybe Prelude.Bool,
    -- | The time at which the certificate was revoked. This value exists only
    -- when the certificate status is @REVOKED@.
    revokedAt :: Prelude.Maybe Core.POSIX,
    -- | The time after which the certificate is not valid.
    notAfter :: Prelude.Maybe Core.POSIX,
    -- | Specifies whether the certificate is eligible for renewal. At this time,
    -- only exported private certificates can be renewed with the
    -- RenewCertificate command.
    renewalEligibility :: Prelude.Maybe RenewalEligibility,
    -- | The time at which the certificate was requested.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The time at which the certificate was issued. This value exists only
    -- when the certificate type is @AMAZON_ISSUED@.
    issuedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CertificateSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subjectAlternativeNameSummaries', 'certificateSummary_subjectAlternativeNameSummaries' - One or more domain names (subject alternative names) included in the
-- certificate. This list contains the domain names that are bound to the
-- public key that is contained in the certificate. The subject alternative
-- names include the canonical domain name (CN) of the certificate and
-- additional domain names that can be used to connect to the website.
--
-- When called by
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
-- this parameter will only return the first 100 subject alternative names
-- included in the certificate. To display the full list of subject
-- alternative names, use
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
--
-- 'type'', 'certificateSummary_type' - The source of the certificate. For certificates provided by ACM, this
-- value is @AMAZON_ISSUED@. For certificates that you imported with
-- ImportCertificate, this value is @IMPORTED@. ACM does not provide
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
-- for imported certificates. For more information about the differences
-- between certificates that you import and those that ACM provides, see
-- <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates>
-- in the /Certificate Manager User Guide/.
--
-- 'domainName', 'certificateSummary_domainName' - Fully qualified domain name (FQDN), such as www.example.com or
-- example.com, for the certificate.
--
-- 'exported', 'certificateSummary_exported' - Indicates whether the certificate has been exported. This value exists
-- only when the certificate type is @PRIVATE@.
--
-- 'keyUsages', 'certificateSummary_keyUsages' - A list of Key Usage X.509 v3 extension objects. Each object is a string
-- value that identifies the purpose of the public key contained in the
-- certificate. Possible extension values include DIGITAL_SIGNATURE,
-- KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
--
-- 'keyAlgorithm', 'certificateSummary_keyAlgorithm' - The algorithm that was used to generate the public-private key pair.
--
-- 'extendedKeyUsages', 'certificateSummary_extendedKeyUsages' - Contains a list of Extended Key Usage X.509 v3 extension objects. Each
-- object specifies a purpose for which the certificate public key can be
-- used and consists of a name and an object identifier (OID).
--
-- 'status', 'certificateSummary_status' - The status of the certificate.
--
-- A certificate enters status PENDING_VALIDATION upon being requested,
-- unless it fails for any of the reasons given in the troubleshooting
-- topic
-- <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html Certificate request fails>.
-- ACM makes repeated attempts to validate a certificate for 72 hours and
-- then times out. If a certificate shows status FAILED or
-- VALIDATION_TIMED_OUT, delete the request, correct the issue with
-- <https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html DNS validation>
-- or
-- <https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html Email validation>,
-- and try again. If validation succeeds, the certificate enters status
-- ISSUED.
--
-- 'hasAdditionalSubjectAlternativeNames', 'certificateSummary_hasAdditionalSubjectAlternativeNames' - When called by
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
-- indicates whether the full list of subject alternative names has been
-- included in the response. If false, the response includes all of the
-- subject alternative names included in the certificate. If true, the
-- response only includes the first 100 subject alternative names included
-- in the certificate. To display the full list of subject alternative
-- names, use
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
--
-- 'certificateArn', 'certificateSummary_certificateArn' - Amazon Resource Name (ARN) of the certificate. This is of the form:
--
-- @arn:aws:acm:region:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
--
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>.
--
-- 'importedAt', 'certificateSummary_importedAt' - The date and time when the certificate was imported. This value exists
-- only when the certificate type is @IMPORTED@.
--
-- 'notBefore', 'certificateSummary_notBefore' - The time before which the certificate is not valid.
--
-- 'inUse', 'certificateSummary_inUse' - Indicates whether the certificate is currently in use by any Amazon Web
-- Services resources.
--
-- 'revokedAt', 'certificateSummary_revokedAt' - The time at which the certificate was revoked. This value exists only
-- when the certificate status is @REVOKED@.
--
-- 'notAfter', 'certificateSummary_notAfter' - The time after which the certificate is not valid.
--
-- 'renewalEligibility', 'certificateSummary_renewalEligibility' - Specifies whether the certificate is eligible for renewal. At this time,
-- only exported private certificates can be renewed with the
-- RenewCertificate command.
--
-- 'createdAt', 'certificateSummary_createdAt' - The time at which the certificate was requested.
--
-- 'issuedAt', 'certificateSummary_issuedAt' - The time at which the certificate was issued. This value exists only
-- when the certificate type is @AMAZON_ISSUED@.
newCertificateSummary ::
  CertificateSummary
newCertificateSummary =
  CertificateSummary'
    { subjectAlternativeNameSummaries =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      domainName = Prelude.Nothing,
      exported = Prelude.Nothing,
      keyUsages = Prelude.Nothing,
      keyAlgorithm = Prelude.Nothing,
      extendedKeyUsages = Prelude.Nothing,
      status = Prelude.Nothing,
      hasAdditionalSubjectAlternativeNames =
        Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      importedAt = Prelude.Nothing,
      notBefore = Prelude.Nothing,
      inUse = Prelude.Nothing,
      revokedAt = Prelude.Nothing,
      notAfter = Prelude.Nothing,
      renewalEligibility = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      issuedAt = Prelude.Nothing
    }

-- | One or more domain names (subject alternative names) included in the
-- certificate. This list contains the domain names that are bound to the
-- public key that is contained in the certificate. The subject alternative
-- names include the canonical domain name (CN) of the certificate and
-- additional domain names that can be used to connect to the website.
--
-- When called by
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
-- this parameter will only return the first 100 subject alternative names
-- included in the certificate. To display the full list of subject
-- alternative names, use
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
certificateSummary_subjectAlternativeNameSummaries :: Lens.Lens' CertificateSummary (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
certificateSummary_subjectAlternativeNameSummaries = Lens.lens (\CertificateSummary' {subjectAlternativeNameSummaries} -> subjectAlternativeNameSummaries) (\s@CertificateSummary' {} a -> s {subjectAlternativeNameSummaries = a} :: CertificateSummary) Prelude.. Lens.mapping Lens.coerced

-- | The source of the certificate. For certificates provided by ACM, this
-- value is @AMAZON_ISSUED@. For certificates that you imported with
-- ImportCertificate, this value is @IMPORTED@. ACM does not provide
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
-- for imported certificates. For more information about the differences
-- between certificates that you import and those that ACM provides, see
-- <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates>
-- in the /Certificate Manager User Guide/.
certificateSummary_type :: Lens.Lens' CertificateSummary (Prelude.Maybe CertificateType)
certificateSummary_type = Lens.lens (\CertificateSummary' {type'} -> type') (\s@CertificateSummary' {} a -> s {type' = a} :: CertificateSummary)

-- | Fully qualified domain name (FQDN), such as www.example.com or
-- example.com, for the certificate.
certificateSummary_domainName :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Text)
certificateSummary_domainName = Lens.lens (\CertificateSummary' {domainName} -> domainName) (\s@CertificateSummary' {} a -> s {domainName = a} :: CertificateSummary)

-- | Indicates whether the certificate has been exported. This value exists
-- only when the certificate type is @PRIVATE@.
certificateSummary_exported :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Bool)
certificateSummary_exported = Lens.lens (\CertificateSummary' {exported} -> exported) (\s@CertificateSummary' {} a -> s {exported = a} :: CertificateSummary)

-- | A list of Key Usage X.509 v3 extension objects. Each object is a string
-- value that identifies the purpose of the public key contained in the
-- certificate. Possible extension values include DIGITAL_SIGNATURE,
-- KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
certificateSummary_keyUsages :: Lens.Lens' CertificateSummary (Prelude.Maybe [KeyUsageName])
certificateSummary_keyUsages = Lens.lens (\CertificateSummary' {keyUsages} -> keyUsages) (\s@CertificateSummary' {} a -> s {keyUsages = a} :: CertificateSummary) Prelude.. Lens.mapping Lens.coerced

-- | The algorithm that was used to generate the public-private key pair.
certificateSummary_keyAlgorithm :: Lens.Lens' CertificateSummary (Prelude.Maybe KeyAlgorithm)
certificateSummary_keyAlgorithm = Lens.lens (\CertificateSummary' {keyAlgorithm} -> keyAlgorithm) (\s@CertificateSummary' {} a -> s {keyAlgorithm = a} :: CertificateSummary)

-- | Contains a list of Extended Key Usage X.509 v3 extension objects. Each
-- object specifies a purpose for which the certificate public key can be
-- used and consists of a name and an object identifier (OID).
certificateSummary_extendedKeyUsages :: Lens.Lens' CertificateSummary (Prelude.Maybe [ExtendedKeyUsageName])
certificateSummary_extendedKeyUsages = Lens.lens (\CertificateSummary' {extendedKeyUsages} -> extendedKeyUsages) (\s@CertificateSummary' {} a -> s {extendedKeyUsages = a} :: CertificateSummary) Prelude.. Lens.mapping Lens.coerced

-- | The status of the certificate.
--
-- A certificate enters status PENDING_VALIDATION upon being requested,
-- unless it fails for any of the reasons given in the troubleshooting
-- topic
-- <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html Certificate request fails>.
-- ACM makes repeated attempts to validate a certificate for 72 hours and
-- then times out. If a certificate shows status FAILED or
-- VALIDATION_TIMED_OUT, delete the request, correct the issue with
-- <https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html DNS validation>
-- or
-- <https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html Email validation>,
-- and try again. If validation succeeds, the certificate enters status
-- ISSUED.
certificateSummary_status :: Lens.Lens' CertificateSummary (Prelude.Maybe CertificateStatus)
certificateSummary_status = Lens.lens (\CertificateSummary' {status} -> status) (\s@CertificateSummary' {} a -> s {status = a} :: CertificateSummary)

-- | When called by
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html ListCertificates>,
-- indicates whether the full list of subject alternative names has been
-- included in the response. If false, the response includes all of the
-- subject alternative names included in the certificate. If true, the
-- response only includes the first 100 subject alternative names included
-- in the certificate. To display the full list of subject alternative
-- names, use
-- <https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html DescribeCertificate>.
certificateSummary_hasAdditionalSubjectAlternativeNames :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Bool)
certificateSummary_hasAdditionalSubjectAlternativeNames = Lens.lens (\CertificateSummary' {hasAdditionalSubjectAlternativeNames} -> hasAdditionalSubjectAlternativeNames) (\s@CertificateSummary' {} a -> s {hasAdditionalSubjectAlternativeNames = a} :: CertificateSummary)

-- | Amazon Resource Name (ARN) of the certificate. This is of the form:
--
-- @arn:aws:acm:region:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
--
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>.
certificateSummary_certificateArn :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Text)
certificateSummary_certificateArn = Lens.lens (\CertificateSummary' {certificateArn} -> certificateArn) (\s@CertificateSummary' {} a -> s {certificateArn = a} :: CertificateSummary)

-- | The date and time when the certificate was imported. This value exists
-- only when the certificate type is @IMPORTED@.
certificateSummary_importedAt :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_importedAt = Lens.lens (\CertificateSummary' {importedAt} -> importedAt) (\s@CertificateSummary' {} a -> s {importedAt = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

-- | The time before which the certificate is not valid.
certificateSummary_notBefore :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_notBefore = Lens.lens (\CertificateSummary' {notBefore} -> notBefore) (\s@CertificateSummary' {} a -> s {notBefore = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

-- | Indicates whether the certificate is currently in use by any Amazon Web
-- Services resources.
certificateSummary_inUse :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Bool)
certificateSummary_inUse = Lens.lens (\CertificateSummary' {inUse} -> inUse) (\s@CertificateSummary' {} a -> s {inUse = a} :: CertificateSummary)

-- | The time at which the certificate was revoked. This value exists only
-- when the certificate status is @REVOKED@.
certificateSummary_revokedAt :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_revokedAt = Lens.lens (\CertificateSummary' {revokedAt} -> revokedAt) (\s@CertificateSummary' {} a -> s {revokedAt = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

-- | The time after which the certificate is not valid.
certificateSummary_notAfter :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_notAfter = Lens.lens (\CertificateSummary' {notAfter} -> notAfter) (\s@CertificateSummary' {} a -> s {notAfter = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

-- | Specifies whether the certificate is eligible for renewal. At this time,
-- only exported private certificates can be renewed with the
-- RenewCertificate command.
certificateSummary_renewalEligibility :: Lens.Lens' CertificateSummary (Prelude.Maybe RenewalEligibility)
certificateSummary_renewalEligibility = Lens.lens (\CertificateSummary' {renewalEligibility} -> renewalEligibility) (\s@CertificateSummary' {} a -> s {renewalEligibility = a} :: CertificateSummary)

-- | The time at which the certificate was requested.
certificateSummary_createdAt :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_createdAt = Lens.lens (\CertificateSummary' {createdAt} -> createdAt) (\s@CertificateSummary' {} a -> s {createdAt = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

-- | The time at which the certificate was issued. This value exists only
-- when the certificate type is @AMAZON_ISSUED@.
certificateSummary_issuedAt :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.UTCTime)
certificateSummary_issuedAt = Lens.lens (\CertificateSummary' {issuedAt} -> issuedAt) (\s@CertificateSummary' {} a -> s {issuedAt = a} :: CertificateSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON CertificateSummary where
  parseJSON =
    Core.withObject
      "CertificateSummary"
      ( \x ->
          CertificateSummary'
            Prelude.<$> (x Core..:? "SubjectAlternativeNameSummaries")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "DomainName")
            Prelude.<*> (x Core..:? "Exported")
            Prelude.<*> (x Core..:? "KeyUsages" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "KeyAlgorithm")
            Prelude.<*> ( x Core..:? "ExtendedKeyUsages"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "HasAdditionalSubjectAlternativeNames")
            Prelude.<*> (x Core..:? "CertificateArn")
            Prelude.<*> (x Core..:? "ImportedAt")
            Prelude.<*> (x Core..:? "NotBefore")
            Prelude.<*> (x Core..:? "InUse")
            Prelude.<*> (x Core..:? "RevokedAt")
            Prelude.<*> (x Core..:? "NotAfter")
            Prelude.<*> (x Core..:? "RenewalEligibility")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "IssuedAt")
      )

instance Prelude.Hashable CertificateSummary where
  hashWithSalt _salt CertificateSummary' {..} =
    _salt
      `Prelude.hashWithSalt` subjectAlternativeNameSummaries
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` exported
      `Prelude.hashWithSalt` keyUsages
      `Prelude.hashWithSalt` keyAlgorithm
      `Prelude.hashWithSalt` extendedKeyUsages
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` hasAdditionalSubjectAlternativeNames
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` importedAt
      `Prelude.hashWithSalt` notBefore
      `Prelude.hashWithSalt` inUse
      `Prelude.hashWithSalt` revokedAt
      `Prelude.hashWithSalt` notAfter
      `Prelude.hashWithSalt` renewalEligibility
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` issuedAt

instance Prelude.NFData CertificateSummary where
  rnf CertificateSummary' {..} =
    Prelude.rnf subjectAlternativeNameSummaries
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf exported
      `Prelude.seq` Prelude.rnf keyUsages
      `Prelude.seq` Prelude.rnf keyAlgorithm
      `Prelude.seq` Prelude.rnf extendedKeyUsages
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf hasAdditionalSubjectAlternativeNames
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf importedAt
      `Prelude.seq` Prelude.rnf notBefore
      `Prelude.seq` Prelude.rnf inUse
      `Prelude.seq` Prelude.rnf revokedAt
      `Prelude.seq` Prelude.rnf notAfter
      `Prelude.seq` Prelude.rnf renewalEligibility
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf issuedAt

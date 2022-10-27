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
-- Module      : Amazonka.CertificateManager.RequestCertificate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests an ACM certificate for use with other Amazon Web Services
-- services. To request an ACM certificate, you must specify a fully
-- qualified domain name (FQDN) in the @DomainName@ parameter. You can also
-- specify additional FQDNs in the @SubjectAlternativeNames@ parameter.
--
-- If you are requesting a private certificate, domain validation is not
-- required. If you are requesting a public certificate, each domain name
-- that you specify must be validated to verify that you own or control the
-- domain. You can use
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html DNS validation>
-- or
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html email validation>.
-- We recommend that you use DNS validation. ACM issues public certificates
-- after receiving approval from the domain owner.
--
-- ACM behavior differs from the
-- <https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2 RFC 6125>
-- specification of the certificate validation process. ACM first checks
-- for a Subject Alternative Name, and, if it finds one, ignores the common
-- name (CN).
--
-- After successful completion of the @RequestCertificate@ action, there is
-- a delay of several seconds before you can retrieve information about the
-- new certificate.
module Amazonka.CertificateManager.RequestCertificate
  ( -- * Creating a Request
    RequestCertificate (..),
    newRequestCertificate,

    -- * Request Lenses
    requestCertificate_tags,
    requestCertificate_domainValidationOptions,
    requestCertificate_certificateAuthorityArn,
    requestCertificate_idempotencyToken,
    requestCertificate_options,
    requestCertificate_validationMethod,
    requestCertificate_subjectAlternativeNames,
    requestCertificate_domainName,

    -- * Destructuring the Response
    RequestCertificateResponse (..),
    newRequestCertificateResponse,

    -- * Response Lenses
    requestCertificateResponse_certificateArn,
    requestCertificateResponse_httpStatus,
  )
where

import Amazonka.CertificateManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRequestCertificate' smart constructor.
data RequestCertificate = RequestCertificate'
  { -- | One or more resource tags to associate with the certificate.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The domain name that you want ACM to use to send you emails so that you
    -- can validate domain ownership.
    domainValidationOptions :: Prelude.Maybe (Prelude.NonEmpty DomainValidationOption),
    -- | The Amazon Resource Name (ARN) of the private certificate authority (CA)
    -- that will be used to issue the certificate. If you do not provide an ARN
    -- and you are trying to request a private certificate, ACM will attempt to
    -- issue a public certificate. For more information about private CAs, see
    -- the
    -- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html Certificate Manager Private Certificate Authority>
    -- user guide. The ARN must have the following form:
    --
    -- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
    certificateAuthorityArn :: Prelude.Maybe Prelude.Text,
    -- | Customer chosen string that can be used to distinguish between calls to
    -- @RequestCertificate@. Idempotency tokens time out after one hour.
    -- Therefore, if you call @RequestCertificate@ multiple times with the same
    -- idempotency token within one hour, ACM recognizes that you are
    -- requesting only one certificate and will issue only one. If you change
    -- the idempotency token for each call, ACM recognizes that you are
    -- requesting multiple certificates.
    idempotencyToken :: Prelude.Maybe Prelude.Text,
    -- | Currently, you can use this parameter to specify whether to add the
    -- certificate to a certificate transparency log. Certificate transparency
    -- makes it possible to detect SSL\/TLS certificates that have been
    -- mistakenly or maliciously issued. Certificates that have not been logged
    -- typically produce an error message in a browser. For more information,
    -- see
    -- <https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency Opting Out of Certificate Transparency Logging>.
    options :: Prelude.Maybe CertificateOptions,
    -- | The method you want to use if you are requesting a public certificate to
    -- validate that you own or control domain. You can
    -- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html validate with DNS>
    -- or
    -- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html validate with email>.
    -- We recommend that you use DNS validation.
    validationMethod :: Prelude.Maybe ValidationMethod,
    -- | Additional FQDNs to be included in the Subject Alternative Name
    -- extension of the ACM certificate. For example, add the name
    -- www.example.net to a certificate for which the @DomainName@ field is
    -- www.example.com if users can reach your site by using either name. The
    -- maximum number of domain names that you can add to an ACM certificate is
    -- 100. However, the initial quota is 10 domain names. If you need more
    -- than 10 names, you must request a quota increase. For more information,
    -- see
    -- <https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html Quotas>.
    --
    -- The maximum length of a SAN DNS name is 253 octets. The name is made up
    -- of multiple labels separated by periods. No label can be longer than 63
    -- octets. Consider the following examples:
    --
    -- -   @(63 octets).(63 octets).(63 octets).(61 octets)@ is legal because
    --     the total length is 253 octets (63+1+63+1+63+1+61) and no label
    --     exceeds 63 octets.
    --
    -- -   @(64 octets).(63 octets).(63 octets).(61 octets)@ is not legal
    --     because the total length exceeds 253 octets (64+1+63+1+63+1+61) and
    --     the first label exceeds 63 octets.
    --
    -- -   @(63 octets).(63 octets).(63 octets).(62 octets)@ is not legal
    --     because the total length of the DNS name (63+1+63+1+63+1+62) exceeds
    --     253 octets.
    subjectAlternativeNames :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Fully qualified domain name (FQDN), such as www.example.com, that you
    -- want to secure with an ACM certificate. Use an asterisk (*) to create a
    -- wildcard certificate that protects several sites in the same domain. For
    -- example, *.example.com protects www.example.com, site.example.com, and
    -- images.example.com.
    --
    -- In compliance with
    -- <https://datatracker.ietf.org/doc/html/rfc5280 RFC 5280>, the length of
    -- the domain name (technically, the Common Name) that you provide cannot
    -- exceed 64 octets (characters), including periods. To add a longer domain
    -- name, specify it in the Subject Alternative Name field, which supports
    -- names up to 253 octets in length.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RequestCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'requestCertificate_tags' - One or more resource tags to associate with the certificate.
--
-- 'domainValidationOptions', 'requestCertificate_domainValidationOptions' - The domain name that you want ACM to use to send you emails so that you
-- can validate domain ownership.
--
-- 'certificateAuthorityArn', 'requestCertificate_certificateAuthorityArn' - The Amazon Resource Name (ARN) of the private certificate authority (CA)
-- that will be used to issue the certificate. If you do not provide an ARN
-- and you are trying to request a private certificate, ACM will attempt to
-- issue a public certificate. For more information about private CAs, see
-- the
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html Certificate Manager Private Certificate Authority>
-- user guide. The ARN must have the following form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
--
-- 'idempotencyToken', 'requestCertificate_idempotencyToken' - Customer chosen string that can be used to distinguish between calls to
-- @RequestCertificate@. Idempotency tokens time out after one hour.
-- Therefore, if you call @RequestCertificate@ multiple times with the same
-- idempotency token within one hour, ACM recognizes that you are
-- requesting only one certificate and will issue only one. If you change
-- the idempotency token for each call, ACM recognizes that you are
-- requesting multiple certificates.
--
-- 'options', 'requestCertificate_options' - Currently, you can use this parameter to specify whether to add the
-- certificate to a certificate transparency log. Certificate transparency
-- makes it possible to detect SSL\/TLS certificates that have been
-- mistakenly or maliciously issued. Certificates that have not been logged
-- typically produce an error message in a browser. For more information,
-- see
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency Opting Out of Certificate Transparency Logging>.
--
-- 'validationMethod', 'requestCertificate_validationMethod' - The method you want to use if you are requesting a public certificate to
-- validate that you own or control domain. You can
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html validate with DNS>
-- or
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html validate with email>.
-- We recommend that you use DNS validation.
--
-- 'subjectAlternativeNames', 'requestCertificate_subjectAlternativeNames' - Additional FQDNs to be included in the Subject Alternative Name
-- extension of the ACM certificate. For example, add the name
-- www.example.net to a certificate for which the @DomainName@ field is
-- www.example.com if users can reach your site by using either name. The
-- maximum number of domain names that you can add to an ACM certificate is
-- 100. However, the initial quota is 10 domain names. If you need more
-- than 10 names, you must request a quota increase. For more information,
-- see
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html Quotas>.
--
-- The maximum length of a SAN DNS name is 253 octets. The name is made up
-- of multiple labels separated by periods. No label can be longer than 63
-- octets. Consider the following examples:
--
-- -   @(63 octets).(63 octets).(63 octets).(61 octets)@ is legal because
--     the total length is 253 octets (63+1+63+1+63+1+61) and no label
--     exceeds 63 octets.
--
-- -   @(64 octets).(63 octets).(63 octets).(61 octets)@ is not legal
--     because the total length exceeds 253 octets (64+1+63+1+63+1+61) and
--     the first label exceeds 63 octets.
--
-- -   @(63 octets).(63 octets).(63 octets).(62 octets)@ is not legal
--     because the total length of the DNS name (63+1+63+1+63+1+62) exceeds
--     253 octets.
--
-- 'domainName', 'requestCertificate_domainName' - Fully qualified domain name (FQDN), such as www.example.com, that you
-- want to secure with an ACM certificate. Use an asterisk (*) to create a
-- wildcard certificate that protects several sites in the same domain. For
-- example, *.example.com protects www.example.com, site.example.com, and
-- images.example.com.
--
-- In compliance with
-- <https://datatracker.ietf.org/doc/html/rfc5280 RFC 5280>, the length of
-- the domain name (technically, the Common Name) that you provide cannot
-- exceed 64 octets (characters), including periods. To add a longer domain
-- name, specify it in the Subject Alternative Name field, which supports
-- names up to 253 octets in length.
newRequestCertificate ::
  -- | 'domainName'
  Prelude.Text ->
  RequestCertificate
newRequestCertificate pDomainName_ =
  RequestCertificate'
    { tags = Prelude.Nothing,
      domainValidationOptions = Prelude.Nothing,
      certificateAuthorityArn = Prelude.Nothing,
      idempotencyToken = Prelude.Nothing,
      options = Prelude.Nothing,
      validationMethod = Prelude.Nothing,
      subjectAlternativeNames = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | One or more resource tags to associate with the certificate.
requestCertificate_tags :: Lens.Lens' RequestCertificate (Prelude.Maybe (Prelude.NonEmpty Tag))
requestCertificate_tags = Lens.lens (\RequestCertificate' {tags} -> tags) (\s@RequestCertificate' {} a -> s {tags = a} :: RequestCertificate) Prelude.. Lens.mapping Lens.coerced

-- | The domain name that you want ACM to use to send you emails so that you
-- can validate domain ownership.
requestCertificate_domainValidationOptions :: Lens.Lens' RequestCertificate (Prelude.Maybe (Prelude.NonEmpty DomainValidationOption))
requestCertificate_domainValidationOptions = Lens.lens (\RequestCertificate' {domainValidationOptions} -> domainValidationOptions) (\s@RequestCertificate' {} a -> s {domainValidationOptions = a} :: RequestCertificate) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the private certificate authority (CA)
-- that will be used to issue the certificate. If you do not provide an ARN
-- and you are trying to request a private certificate, ACM will attempt to
-- issue a public certificate. For more information about private CAs, see
-- the
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html Certificate Manager Private Certificate Authority>
-- user guide. The ARN must have the following form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
requestCertificate_certificateAuthorityArn :: Lens.Lens' RequestCertificate (Prelude.Maybe Prelude.Text)
requestCertificate_certificateAuthorityArn = Lens.lens (\RequestCertificate' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@RequestCertificate' {} a -> s {certificateAuthorityArn = a} :: RequestCertificate)

-- | Customer chosen string that can be used to distinguish between calls to
-- @RequestCertificate@. Idempotency tokens time out after one hour.
-- Therefore, if you call @RequestCertificate@ multiple times with the same
-- idempotency token within one hour, ACM recognizes that you are
-- requesting only one certificate and will issue only one. If you change
-- the idempotency token for each call, ACM recognizes that you are
-- requesting multiple certificates.
requestCertificate_idempotencyToken :: Lens.Lens' RequestCertificate (Prelude.Maybe Prelude.Text)
requestCertificate_idempotencyToken = Lens.lens (\RequestCertificate' {idempotencyToken} -> idempotencyToken) (\s@RequestCertificate' {} a -> s {idempotencyToken = a} :: RequestCertificate)

-- | Currently, you can use this parameter to specify whether to add the
-- certificate to a certificate transparency log. Certificate transparency
-- makes it possible to detect SSL\/TLS certificates that have been
-- mistakenly or maliciously issued. Certificates that have not been logged
-- typically produce an error message in a browser. For more information,
-- see
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency Opting Out of Certificate Transparency Logging>.
requestCertificate_options :: Lens.Lens' RequestCertificate (Prelude.Maybe CertificateOptions)
requestCertificate_options = Lens.lens (\RequestCertificate' {options} -> options) (\s@RequestCertificate' {} a -> s {options = a} :: RequestCertificate)

-- | The method you want to use if you are requesting a public certificate to
-- validate that you own or control domain. You can
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html validate with DNS>
-- or
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html validate with email>.
-- We recommend that you use DNS validation.
requestCertificate_validationMethod :: Lens.Lens' RequestCertificate (Prelude.Maybe ValidationMethod)
requestCertificate_validationMethod = Lens.lens (\RequestCertificate' {validationMethod} -> validationMethod) (\s@RequestCertificate' {} a -> s {validationMethod = a} :: RequestCertificate)

-- | Additional FQDNs to be included in the Subject Alternative Name
-- extension of the ACM certificate. For example, add the name
-- www.example.net to a certificate for which the @DomainName@ field is
-- www.example.com if users can reach your site by using either name. The
-- maximum number of domain names that you can add to an ACM certificate is
-- 100. However, the initial quota is 10 domain names. If you need more
-- than 10 names, you must request a quota increase. For more information,
-- see
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html Quotas>.
--
-- The maximum length of a SAN DNS name is 253 octets. The name is made up
-- of multiple labels separated by periods. No label can be longer than 63
-- octets. Consider the following examples:
--
-- -   @(63 octets).(63 octets).(63 octets).(61 octets)@ is legal because
--     the total length is 253 octets (63+1+63+1+63+1+61) and no label
--     exceeds 63 octets.
--
-- -   @(64 octets).(63 octets).(63 octets).(61 octets)@ is not legal
--     because the total length exceeds 253 octets (64+1+63+1+63+1+61) and
--     the first label exceeds 63 octets.
--
-- -   @(63 octets).(63 octets).(63 octets).(62 octets)@ is not legal
--     because the total length of the DNS name (63+1+63+1+63+1+62) exceeds
--     253 octets.
requestCertificate_subjectAlternativeNames :: Lens.Lens' RequestCertificate (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
requestCertificate_subjectAlternativeNames = Lens.lens (\RequestCertificate' {subjectAlternativeNames} -> subjectAlternativeNames) (\s@RequestCertificate' {} a -> s {subjectAlternativeNames = a} :: RequestCertificate) Prelude.. Lens.mapping Lens.coerced

-- | Fully qualified domain name (FQDN), such as www.example.com, that you
-- want to secure with an ACM certificate. Use an asterisk (*) to create a
-- wildcard certificate that protects several sites in the same domain. For
-- example, *.example.com protects www.example.com, site.example.com, and
-- images.example.com.
--
-- In compliance with
-- <https://datatracker.ietf.org/doc/html/rfc5280 RFC 5280>, the length of
-- the domain name (technically, the Common Name) that you provide cannot
-- exceed 64 octets (characters), including periods. To add a longer domain
-- name, specify it in the Subject Alternative Name field, which supports
-- names up to 253 octets in length.
requestCertificate_domainName :: Lens.Lens' RequestCertificate Prelude.Text
requestCertificate_domainName = Lens.lens (\RequestCertificate' {domainName} -> domainName) (\s@RequestCertificate' {} a -> s {domainName = a} :: RequestCertificate)

instance Core.AWSRequest RequestCertificate where
  type
    AWSResponse RequestCertificate =
      RequestCertificateResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          RequestCertificateResponse'
            Prelude.<$> (x Core..?> "CertificateArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RequestCertificate where
  hashWithSalt _salt RequestCertificate' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` domainValidationOptions
      `Prelude.hashWithSalt` certificateAuthorityArn
      `Prelude.hashWithSalt` idempotencyToken
      `Prelude.hashWithSalt` options
      `Prelude.hashWithSalt` validationMethod
      `Prelude.hashWithSalt` subjectAlternativeNames
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData RequestCertificate where
  rnf RequestCertificate' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf domainValidationOptions
      `Prelude.seq` Prelude.rnf certificateAuthorityArn
      `Prelude.seq` Prelude.rnf idempotencyToken
      `Prelude.seq` Prelude.rnf options
      `Prelude.seq` Prelude.rnf validationMethod
      `Prelude.seq` Prelude.rnf subjectAlternativeNames
      `Prelude.seq` Prelude.rnf domainName

instance Core.ToHeaders RequestCertificate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CertificateManager.RequestCertificate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RequestCertificate where
  toJSON RequestCertificate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("DomainValidationOptions" Core..=)
              Prelude.<$> domainValidationOptions,
            ("CertificateAuthorityArn" Core..=)
              Prelude.<$> certificateAuthorityArn,
            ("IdempotencyToken" Core..=)
              Prelude.<$> idempotencyToken,
            ("Options" Core..=) Prelude.<$> options,
            ("ValidationMethod" Core..=)
              Prelude.<$> validationMethod,
            ("SubjectAlternativeNames" Core..=)
              Prelude.<$> subjectAlternativeNames,
            Prelude.Just ("DomainName" Core..= domainName)
          ]
      )

instance Core.ToPath RequestCertificate where
  toPath = Prelude.const "/"

instance Core.ToQuery RequestCertificate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRequestCertificateResponse' smart constructor.
data RequestCertificateResponse = RequestCertificateResponse'
  { -- | String that contains the ARN of the issued certificate. This must be of
    -- the form:
    --
    -- @arn:aws:acm:us-east-1:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RequestCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateArn', 'requestCertificateResponse_certificateArn' - String that contains the ARN of the issued certificate. This must be of
-- the form:
--
-- @arn:aws:acm:us-east-1:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
--
-- 'httpStatus', 'requestCertificateResponse_httpStatus' - The response's http status code.
newRequestCertificateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RequestCertificateResponse
newRequestCertificateResponse pHttpStatus_ =
  RequestCertificateResponse'
    { certificateArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | String that contains the ARN of the issued certificate. This must be of
-- the form:
--
-- @arn:aws:acm:us-east-1:123456789012:certificate\/12345678-1234-1234-1234-123456789012@
requestCertificateResponse_certificateArn :: Lens.Lens' RequestCertificateResponse (Prelude.Maybe Prelude.Text)
requestCertificateResponse_certificateArn = Lens.lens (\RequestCertificateResponse' {certificateArn} -> certificateArn) (\s@RequestCertificateResponse' {} a -> s {certificateArn = a} :: RequestCertificateResponse)

-- | The response's http status code.
requestCertificateResponse_httpStatus :: Lens.Lens' RequestCertificateResponse Prelude.Int
requestCertificateResponse_httpStatus = Lens.lens (\RequestCertificateResponse' {httpStatus} -> httpStatus) (\s@RequestCertificateResponse' {} a -> s {httpStatus = a} :: RequestCertificateResponse)

instance Prelude.NFData RequestCertificateResponse where
  rnf RequestCertificateResponse' {..} =
    Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf httpStatus

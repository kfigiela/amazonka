{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Support.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Support.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _DescribeAttachmentLimitExceeded,
    _AttachmentSetIdNotFound,
    _AttachmentSetSizeLimitExceeded,
    _InternalServerError,
    _AttachmentIdNotFound,
    _CaseIdNotFound,
    _CaseCreationLimitExceeded,
    _AttachmentLimitExceeded,
    _AttachmentSetExpired,

    -- * Attachment
    Attachment (..),
    newAttachment,
    attachment_fileName,
    attachment_data,

    -- * AttachmentDetails
    AttachmentDetails (..),
    newAttachmentDetails,
    attachmentDetails_fileName,
    attachmentDetails_attachmentId,

    -- * CaseDetails
    CaseDetails (..),
    newCaseDetails,
    caseDetails_ccEmailAddresses,
    caseDetails_caseId,
    caseDetails_displayId,
    caseDetails_timeCreated,
    caseDetails_categoryCode,
    caseDetails_serviceCode,
    caseDetails_status,
    caseDetails_submittedBy,
    caseDetails_recentCommunications,
    caseDetails_subject,
    caseDetails_language,
    caseDetails_severityCode,

    -- * Category
    Category (..),
    newCategory,
    category_name,
    category_code,

    -- * Communication
    Communication (..),
    newCommunication,
    communication_caseId,
    communication_body,
    communication_timeCreated,
    communication_submittedBy,
    communication_attachmentSet,

    -- * RecentCaseCommunications
    RecentCaseCommunications (..),
    newRecentCaseCommunications,
    recentCaseCommunications_nextToken,
    recentCaseCommunications_communications,

    -- * SeverityLevel
    SeverityLevel (..),
    newSeverityLevel,
    severityLevel_name,
    severityLevel_code,

    -- * SupportService
    SupportService (..),
    newSupportService,
    supportService_name,
    supportService_code,
    supportService_categories,

    -- * TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorCategorySpecificSummary (..),
    newTrustedAdvisorCategorySpecificSummary,
    trustedAdvisorCategorySpecificSummary_costOptimizing,

    -- * TrustedAdvisorCheckDescription
    TrustedAdvisorCheckDescription (..),
    newTrustedAdvisorCheckDescription,
    trustedAdvisorCheckDescription_id,
    trustedAdvisorCheckDescription_name,
    trustedAdvisorCheckDescription_description,
    trustedAdvisorCheckDescription_category,
    trustedAdvisorCheckDescription_metadata,

    -- * TrustedAdvisorCheckRefreshStatus
    TrustedAdvisorCheckRefreshStatus (..),
    newTrustedAdvisorCheckRefreshStatus,
    trustedAdvisorCheckRefreshStatus_checkId,
    trustedAdvisorCheckRefreshStatus_status,
    trustedAdvisorCheckRefreshStatus_millisUntilNextRefreshable,

    -- * TrustedAdvisorCheckResult
    TrustedAdvisorCheckResult (..),
    newTrustedAdvisorCheckResult,
    trustedAdvisorCheckResult_checkId,
    trustedAdvisorCheckResult_timestamp,
    trustedAdvisorCheckResult_status,
    trustedAdvisorCheckResult_resourcesSummary,
    trustedAdvisorCheckResult_categorySpecificSummary,
    trustedAdvisorCheckResult_flaggedResources,

    -- * TrustedAdvisorCheckSummary
    TrustedAdvisorCheckSummary (..),
    newTrustedAdvisorCheckSummary,
    trustedAdvisorCheckSummary_hasFlaggedResources,
    trustedAdvisorCheckSummary_checkId,
    trustedAdvisorCheckSummary_timestamp,
    trustedAdvisorCheckSummary_status,
    trustedAdvisorCheckSummary_resourcesSummary,
    trustedAdvisorCheckSummary_categorySpecificSummary,

    -- * TrustedAdvisorCostOptimizingSummary
    TrustedAdvisorCostOptimizingSummary (..),
    newTrustedAdvisorCostOptimizingSummary,
    trustedAdvisorCostOptimizingSummary_estimatedMonthlySavings,
    trustedAdvisorCostOptimizingSummary_estimatedPercentMonthlySavings,

    -- * TrustedAdvisorResourceDetail
    TrustedAdvisorResourceDetail (..),
    newTrustedAdvisorResourceDetail,
    trustedAdvisorResourceDetail_isSuppressed,
    trustedAdvisorResourceDetail_region,
    trustedAdvisorResourceDetail_status,
    trustedAdvisorResourceDetail_resourceId,
    trustedAdvisorResourceDetail_metadata,

    -- * TrustedAdvisorResourcesSummary
    TrustedAdvisorResourcesSummary (..),
    newTrustedAdvisorResourcesSummary,
    trustedAdvisorResourcesSummary_resourcesProcessed,
    trustedAdvisorResourcesSummary_resourcesFlagged,
    trustedAdvisorResourcesSummary_resourcesIgnored,
    trustedAdvisorResourcesSummary_resourcesSuppressed,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign
import Amazonka.Support.Types.Attachment
import Amazonka.Support.Types.AttachmentDetails
import Amazonka.Support.Types.CaseDetails
import Amazonka.Support.Types.Category
import Amazonka.Support.Types.Communication
import Amazonka.Support.Types.RecentCaseCommunications
import Amazonka.Support.Types.SeverityLevel
import Amazonka.Support.Types.SupportService
import Amazonka.Support.Types.TrustedAdvisorCategorySpecificSummary
import Amazonka.Support.Types.TrustedAdvisorCheckDescription
import Amazonka.Support.Types.TrustedAdvisorCheckRefreshStatus
import Amazonka.Support.Types.TrustedAdvisorCheckResult
import Amazonka.Support.Types.TrustedAdvisorCheckSummary
import Amazonka.Support.Types.TrustedAdvisorCostOptimizingSummary
import Amazonka.Support.Types.TrustedAdvisorResourceDetail
import Amazonka.Support.Types.TrustedAdvisorResourcesSummary

-- | API version @2013-04-15@ of the Amazon Support SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Support",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "support",
      Core._serviceSigningName = "support",
      Core._serviceVersion = "2013-04-15",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Support",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The limit for the number of DescribeAttachment requests in a short
-- period of time has been exceeded.
_DescribeAttachmentLimitExceeded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DescribeAttachmentLimitExceeded =
  Core._MatchServiceError
    defaultService
    "DescribeAttachmentLimitExceeded"

-- | An attachment set with the specified ID could not be found.
_AttachmentSetIdNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AttachmentSetIdNotFound =
  Core._MatchServiceError
    defaultService
    "AttachmentSetIdNotFound"

-- | A limit for the size of an attachment set has been exceeded. The limits
-- are three attachments and 5 MB per attachment.
_AttachmentSetSizeLimitExceeded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AttachmentSetSizeLimitExceeded =
  Core._MatchServiceError
    defaultService
    "AttachmentSetSizeLimitExceeded"

-- | An internal server error occurred.
_InternalServerError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerError =
  Core._MatchServiceError
    defaultService
    "InternalServerError"

-- | An attachment with the specified ID could not be found.
_AttachmentIdNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AttachmentIdNotFound =
  Core._MatchServiceError
    defaultService
    "AttachmentIdNotFound"

-- | The requested @caseId@ couldn\'t be located.
_CaseIdNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CaseIdNotFound =
  Core._MatchServiceError
    defaultService
    "CaseIdNotFound"

-- | The case creation limit for the account has been exceeded.
_CaseCreationLimitExceeded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CaseCreationLimitExceeded =
  Core._MatchServiceError
    defaultService
    "CaseCreationLimitExceeded"

-- | The limit for the number of attachment sets created in a short period of
-- time has been exceeded.
_AttachmentLimitExceeded :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AttachmentLimitExceeded =
  Core._MatchServiceError
    defaultService
    "AttachmentLimitExceeded"

-- | The expiration time of the attachment set has passed. The set expires 1
-- hour after it is created.
_AttachmentSetExpired :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AttachmentSetExpired =
  Core._MatchServiceError
    defaultService
    "AttachmentSetExpired"

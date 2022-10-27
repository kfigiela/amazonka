{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BillingConductor.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BillingConductor.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ServiceLimitExceededException,
    _ValidationException,

    -- * AssociateResourceErrorReason
    AssociateResourceErrorReason (..),

    -- * BillingGroupStatus
    BillingGroupStatus (..),

    -- * CurrencyCode
    CurrencyCode (..),

    -- * CustomLineItemRelationship
    CustomLineItemRelationship (..),

    -- * CustomLineItemType
    CustomLineItemType (..),

    -- * PricingRuleScope
    PricingRuleScope (..),

    -- * PricingRuleType
    PricingRuleType (..),

    -- * AccountAssociationsListElement
    AccountAssociationsListElement (..),
    newAccountAssociationsListElement,
    accountAssociationsListElement_billingGroupArn,
    accountAssociationsListElement_accountId,
    accountAssociationsListElement_accountName,
    accountAssociationsListElement_accountEmail,

    -- * AccountGrouping
    AccountGrouping (..),
    newAccountGrouping,
    accountGrouping_linkedAccountIds,

    -- * AssociateResourceError
    AssociateResourceError (..),
    newAssociateResourceError,
    associateResourceError_message,
    associateResourceError_reason,

    -- * AssociateResourceResponseElement
    AssociateResourceResponseElement (..),
    newAssociateResourceResponseElement,
    associateResourceResponseElement_arn,
    associateResourceResponseElement_error,

    -- * BillingGroupCostReportElement
    BillingGroupCostReportElement (..),
    newBillingGroupCostReportElement,
    billingGroupCostReportElement_proformaCost,
    billingGroupCostReportElement_marginPercentage,
    billingGroupCostReportElement_aWSCost,
    billingGroupCostReportElement_arn,
    billingGroupCostReportElement_currency,
    billingGroupCostReportElement_margin,

    -- * BillingGroupListElement
    BillingGroupListElement (..),
    newBillingGroupListElement,
    billingGroupListElement_name,
    billingGroupListElement_arn,
    billingGroupListElement_statusReason,
    billingGroupListElement_size,
    billingGroupListElement_status,
    billingGroupListElement_description,
    billingGroupListElement_lastModifiedTime,
    billingGroupListElement_creationTime,
    billingGroupListElement_computationPreference,
    billingGroupListElement_primaryAccountId,

    -- * ComputationPreference
    ComputationPreference (..),
    newComputationPreference,
    computationPreference_pricingPlanArn,

    -- * CustomLineItemBillingPeriodRange
    CustomLineItemBillingPeriodRange (..),
    newCustomLineItemBillingPeriodRange,
    customLineItemBillingPeriodRange_inclusiveStartBillingPeriod,
    customLineItemBillingPeriodRange_exclusiveEndBillingPeriod,

    -- * CustomLineItemChargeDetails
    CustomLineItemChargeDetails (..),
    newCustomLineItemChargeDetails,
    customLineItemChargeDetails_flat,
    customLineItemChargeDetails_percentage,
    customLineItemChargeDetails_type,

    -- * CustomLineItemFlatChargeDetails
    CustomLineItemFlatChargeDetails (..),
    newCustomLineItemFlatChargeDetails,
    customLineItemFlatChargeDetails_chargeValue,

    -- * CustomLineItemListElement
    CustomLineItemListElement (..),
    newCustomLineItemListElement,
    customLineItemListElement_name,
    customLineItemListElement_chargeDetails,
    customLineItemListElement_billingGroupArn,
    customLineItemListElement_arn,
    customLineItemListElement_associationSize,
    customLineItemListElement_productCode,
    customLineItemListElement_description,
    customLineItemListElement_currencyCode,
    customLineItemListElement_lastModifiedTime,
    customLineItemListElement_creationTime,

    -- * CustomLineItemPercentageChargeDetails
    CustomLineItemPercentageChargeDetails (..),
    newCustomLineItemPercentageChargeDetails,
    customLineItemPercentageChargeDetails_associatedValues,
    customLineItemPercentageChargeDetails_percentageValue,

    -- * DisassociateResourceResponseElement
    DisassociateResourceResponseElement (..),
    newDisassociateResourceResponseElement,
    disassociateResourceResponseElement_arn,
    disassociateResourceResponseElement_error,

    -- * ListAccountAssociationsFilter
    ListAccountAssociationsFilter (..),
    newListAccountAssociationsFilter,
    listAccountAssociationsFilter_association,
    listAccountAssociationsFilter_accountId,

    -- * ListBillingGroupCostReportsFilter
    ListBillingGroupCostReportsFilter (..),
    newListBillingGroupCostReportsFilter,
    listBillingGroupCostReportsFilter_billingGroupArns,

    -- * ListBillingGroupsFilter
    ListBillingGroupsFilter (..),
    newListBillingGroupsFilter,
    listBillingGroupsFilter_arns,
    listBillingGroupsFilter_pricingPlan,

    -- * ListCustomLineItemChargeDetails
    ListCustomLineItemChargeDetails (..),
    newListCustomLineItemChargeDetails,
    listCustomLineItemChargeDetails_flat,
    listCustomLineItemChargeDetails_percentage,
    listCustomLineItemChargeDetails_type,

    -- * ListCustomLineItemFlatChargeDetails
    ListCustomLineItemFlatChargeDetails (..),
    newListCustomLineItemFlatChargeDetails,
    listCustomLineItemFlatChargeDetails_chargeValue,

    -- * ListCustomLineItemPercentageChargeDetails
    ListCustomLineItemPercentageChargeDetails (..),
    newListCustomLineItemPercentageChargeDetails,
    listCustomLineItemPercentageChargeDetails_percentageValue,

    -- * ListCustomLineItemsFilter
    ListCustomLineItemsFilter (..),
    newListCustomLineItemsFilter,
    listCustomLineItemsFilter_arns,
    listCustomLineItemsFilter_names,
    listCustomLineItemsFilter_billingGroups,

    -- * ListPricingPlansFilter
    ListPricingPlansFilter (..),
    newListPricingPlansFilter,
    listPricingPlansFilter_arns,

    -- * ListPricingRulesFilter
    ListPricingRulesFilter (..),
    newListPricingRulesFilter,
    listPricingRulesFilter_arns,

    -- * ListResourcesAssociatedToCustomLineItemFilter
    ListResourcesAssociatedToCustomLineItemFilter (..),
    newListResourcesAssociatedToCustomLineItemFilter,
    listResourcesAssociatedToCustomLineItemFilter_relationship,

    -- * ListResourcesAssociatedToCustomLineItemResponseElement
    ListResourcesAssociatedToCustomLineItemResponseElement (..),
    newListResourcesAssociatedToCustomLineItemResponseElement,
    listResourcesAssociatedToCustomLineItemResponseElement_relationship,
    listResourcesAssociatedToCustomLineItemResponseElement_arn,

    -- * PricingPlanListElement
    PricingPlanListElement (..),
    newPricingPlanListElement,
    pricingPlanListElement_name,
    pricingPlanListElement_arn,
    pricingPlanListElement_size,
    pricingPlanListElement_description,
    pricingPlanListElement_lastModifiedTime,
    pricingPlanListElement_creationTime,

    -- * PricingRuleListElement
    PricingRuleListElement (..),
    newPricingRuleListElement,
    pricingRuleListElement_modifierPercentage,
    pricingRuleListElement_name,
    pricingRuleListElement_type,
    pricingRuleListElement_arn,
    pricingRuleListElement_description,
    pricingRuleListElement_service,
    pricingRuleListElement_lastModifiedTime,
    pricingRuleListElement_scope,
    pricingRuleListElement_associatedPricingPlanCount,
    pricingRuleListElement_creationTime,

    -- * UpdateCustomLineItemChargeDetails
    UpdateCustomLineItemChargeDetails (..),
    newUpdateCustomLineItemChargeDetails,
    updateCustomLineItemChargeDetails_flat,
    updateCustomLineItemChargeDetails_percentage,

    -- * UpdateCustomLineItemFlatChargeDetails
    UpdateCustomLineItemFlatChargeDetails (..),
    newUpdateCustomLineItemFlatChargeDetails,
    updateCustomLineItemFlatChargeDetails_chargeValue,

    -- * UpdateCustomLineItemPercentageChargeDetails
    UpdateCustomLineItemPercentageChargeDetails (..),
    newUpdateCustomLineItemPercentageChargeDetails,
    updateCustomLineItemPercentageChargeDetails_percentageValue,
  )
where

import Amazonka.BillingConductor.Types.AccountAssociationsListElement
import Amazonka.BillingConductor.Types.AccountGrouping
import Amazonka.BillingConductor.Types.AssociateResourceError
import Amazonka.BillingConductor.Types.AssociateResourceErrorReason
import Amazonka.BillingConductor.Types.AssociateResourceResponseElement
import Amazonka.BillingConductor.Types.BillingGroupCostReportElement
import Amazonka.BillingConductor.Types.BillingGroupListElement
import Amazonka.BillingConductor.Types.BillingGroupStatus
import Amazonka.BillingConductor.Types.ComputationPreference
import Amazonka.BillingConductor.Types.CurrencyCode
import Amazonka.BillingConductor.Types.CustomLineItemBillingPeriodRange
import Amazonka.BillingConductor.Types.CustomLineItemChargeDetails
import Amazonka.BillingConductor.Types.CustomLineItemFlatChargeDetails
import Amazonka.BillingConductor.Types.CustomLineItemListElement
import Amazonka.BillingConductor.Types.CustomLineItemPercentageChargeDetails
import Amazonka.BillingConductor.Types.CustomLineItemRelationship
import Amazonka.BillingConductor.Types.CustomLineItemType
import Amazonka.BillingConductor.Types.DisassociateResourceResponseElement
import Amazonka.BillingConductor.Types.ListAccountAssociationsFilter
import Amazonka.BillingConductor.Types.ListBillingGroupCostReportsFilter
import Amazonka.BillingConductor.Types.ListBillingGroupsFilter
import Amazonka.BillingConductor.Types.ListCustomLineItemChargeDetails
import Amazonka.BillingConductor.Types.ListCustomLineItemFlatChargeDetails
import Amazonka.BillingConductor.Types.ListCustomLineItemPercentageChargeDetails
import Amazonka.BillingConductor.Types.ListCustomLineItemsFilter
import Amazonka.BillingConductor.Types.ListPricingPlansFilter
import Amazonka.BillingConductor.Types.ListPricingRulesFilter
import Amazonka.BillingConductor.Types.ListResourcesAssociatedToCustomLineItemFilter
import Amazonka.BillingConductor.Types.ListResourcesAssociatedToCustomLineItemResponseElement
import Amazonka.BillingConductor.Types.PricingPlanListElement
import Amazonka.BillingConductor.Types.PricingRuleListElement
import Amazonka.BillingConductor.Types.PricingRuleScope
import Amazonka.BillingConductor.Types.PricingRuleType
import Amazonka.BillingConductor.Types.UpdateCustomLineItemChargeDetails
import Amazonka.BillingConductor.Types.UpdateCustomLineItemFlatChargeDetails
import Amazonka.BillingConductor.Types.UpdateCustomLineItemPercentageChargeDetails
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2021-07-30@ of the Amazon BillingConductor SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "BillingConductor",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "billingconductor",
      Core._serviceSigningName = "billingconductor",
      Core._serviceVersion = "2021-07-30",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "BillingConductor",
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

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | An unexpected error occurred while processing a request.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The request references a resource that doesn\'t exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | You can cause an inconsistent state by updating or deleting a resource.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request would cause a service limit to exceed.
_ServiceLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceLimitExceededException"
    Prelude.. Core.hasStatus 402

-- | The input doesn\'t match with the constraints specified by Amazon Web
-- Services services.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

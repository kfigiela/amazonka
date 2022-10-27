{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53RecoveryControlConfig.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53RecoveryControlConfig.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * RuleType
    RuleType (..),

    -- * Status
    Status (..),

    -- * AssertionRule
    AssertionRule (..),
    newAssertionRule,
    assertionRule_status,
    assertionRule_controlPanelArn,
    assertionRule_safetyRuleArn,
    assertionRule_assertedControls,
    assertionRule_ruleConfig,
    assertionRule_waitPeriodMs,
    assertionRule_name,

    -- * AssertionRuleUpdate
    AssertionRuleUpdate (..),
    newAssertionRuleUpdate,
    assertionRuleUpdate_safetyRuleArn,
    assertionRuleUpdate_waitPeriodMs,
    assertionRuleUpdate_name,

    -- * Cluster
    Cluster (..),
    newCluster,
    cluster_clusterArn,
    cluster_name,
    cluster_status,
    cluster_clusterEndpoints,

    -- * ClusterEndpoint
    ClusterEndpoint (..),
    newClusterEndpoint,
    clusterEndpoint_region,
    clusterEndpoint_endpoint,

    -- * ControlPanel
    ControlPanel (..),
    newControlPanel,
    controlPanel_clusterArn,
    controlPanel_defaultControlPanel,
    controlPanel_name,
    controlPanel_controlPanelArn,
    controlPanel_status,
    controlPanel_routingControlCount,

    -- * GatingRule
    GatingRule (..),
    newGatingRule,
    gatingRule_status,
    gatingRule_targetControls,
    gatingRule_controlPanelArn,
    gatingRule_safetyRuleArn,
    gatingRule_gatingControls,
    gatingRule_ruleConfig,
    gatingRule_waitPeriodMs,
    gatingRule_name,

    -- * GatingRuleUpdate
    GatingRuleUpdate (..),
    newGatingRuleUpdate,
    gatingRuleUpdate_safetyRuleArn,
    gatingRuleUpdate_waitPeriodMs,
    gatingRuleUpdate_name,

    -- * NewAssertionRule
    NewAssertionRule (..),
    newNewAssertionRule,
    newAssertionRule_controlPanelArn,
    newAssertionRule_assertedControls,
    newAssertionRule_ruleConfig,
    newAssertionRule_waitPeriodMs,
    newAssertionRule_name,

    -- * NewGatingRule
    NewGatingRule (..),
    newNewGatingRule,
    newGatingRule_targetControls,
    newGatingRule_controlPanelArn,
    newGatingRule_gatingControls,
    newGatingRule_ruleConfig,
    newGatingRule_waitPeriodMs,
    newGatingRule_name,

    -- * RoutingControl
    RoutingControl (..),
    newRoutingControl,
    routingControl_name,
    routingControl_controlPanelArn,
    routingControl_status,
    routingControl_routingControlArn,

    -- * Rule
    Rule (..),
    newRule,
    rule_assertion,
    rule_gating,

    -- * RuleConfig
    RuleConfig (..),
    newRuleConfig,
    ruleConfig_type,
    ruleConfig_inverted,
    ruleConfig_threshold,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53RecoveryControlConfig.Types.AssertionRule
import Amazonka.Route53RecoveryControlConfig.Types.AssertionRuleUpdate
import Amazonka.Route53RecoveryControlConfig.Types.Cluster
import Amazonka.Route53RecoveryControlConfig.Types.ClusterEndpoint
import Amazonka.Route53RecoveryControlConfig.Types.ControlPanel
import Amazonka.Route53RecoveryControlConfig.Types.GatingRule
import Amazonka.Route53RecoveryControlConfig.Types.GatingRuleUpdate
import Amazonka.Route53RecoveryControlConfig.Types.NewAssertionRule
import Amazonka.Route53RecoveryControlConfig.Types.NewGatingRule
import Amazonka.Route53RecoveryControlConfig.Types.RoutingControl
import Amazonka.Route53RecoveryControlConfig.Types.Rule
import Amazonka.Route53RecoveryControlConfig.Types.RuleConfig
import Amazonka.Route53RecoveryControlConfig.Types.RuleType
import Amazonka.Route53RecoveryControlConfig.Types.Status
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-11-02@ of the Amazon Route53 Recovery Control Config SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "Route53RecoveryControlConfig",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix =
        "route53-recovery-control-config",
      Core._serviceSigningName =
        "route53-recovery-control-config",
      Core._serviceVersion = "2020-11-02",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "Route53RecoveryControlConfig",
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

-- | 403 response - You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | 500 response - InternalServiceError. Temporary service error. Retry the
-- request.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | 402 response - You attempted to create more resources than the service
-- allows based on service quotas.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | 404 response - MalformedQueryString. The query string contains a syntax
-- error or resource not found..
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | 409 response - ConflictException. You might be using a predefined
-- variable.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | 429 response - LimitExceededException or TooManyRequestsException.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | 400 response - Multiple causes. For example, you might have a malformed
-- query string and input parameter might be out of range, or you might
-- have used parameters together incorrectly.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Amplify.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Amplify.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _UnauthorizedException,
    _DependentServiceFailureException,
    _NotFoundException,
    _ResourceNotFoundException,
    _LimitExceededException,
    _BadRequestException,
    _InternalFailureException,

    -- * DomainStatus
    DomainStatus (..),

    -- * JobStatus
    JobStatus (..),

    -- * JobType
    JobType (..),

    -- * Platform
    Platform (..),

    -- * RepositoryCloneMethod
    RepositoryCloneMethod (..),

    -- * Stage
    Stage (..),

    -- * App
    App (..),
    newApp,
    app_tags,
    app_repositoryCloneMethod,
    app_iamServiceRoleArn,
    app_autoBranchCreationPatterns,
    app_customHeaders,
    app_enableBranchAutoDeletion,
    app_basicAuthCredentials,
    app_productionBranch,
    app_customRules,
    app_enableAutoBranchCreation,
    app_buildSpec,
    app_autoBranchCreationConfig,
    app_appId,
    app_appArn,
    app_name,
    app_description,
    app_repository,
    app_platform,
    app_createTime,
    app_updateTime,
    app_environmentVariables,
    app_defaultDomain,
    app_enableBranchAutoBuild,
    app_enableBasicAuth,

    -- * Artifact
    Artifact (..),
    newArtifact,
    artifact_artifactFileName,
    artifact_artifactId,

    -- * AutoBranchCreationConfig
    AutoBranchCreationConfig (..),
    newAutoBranchCreationConfig,
    autoBranchCreationConfig_enablePerformanceMode,
    autoBranchCreationConfig_basicAuthCredentials,
    autoBranchCreationConfig_environmentVariables,
    autoBranchCreationConfig_pullRequestEnvironmentName,
    autoBranchCreationConfig_stage,
    autoBranchCreationConfig_enableAutoBuild,
    autoBranchCreationConfig_enableBasicAuth,
    autoBranchCreationConfig_framework,
    autoBranchCreationConfig_buildSpec,
    autoBranchCreationConfig_enablePullRequestPreview,

    -- * BackendEnvironment
    BackendEnvironment (..),
    newBackendEnvironment,
    backendEnvironment_deploymentArtifacts,
    backendEnvironment_stackName,
    backendEnvironment_backendEnvironmentArn,
    backendEnvironment_environmentName,
    backendEnvironment_createTime,
    backendEnvironment_updateTime,

    -- * Branch
    Branch (..),
    newBranch,
    branch_tags,
    branch_thumbnailUrl,
    branch_enablePerformanceMode,
    branch_destinationBranch,
    branch_associatedResources,
    branch_basicAuthCredentials,
    branch_sourceBranch,
    branch_pullRequestEnvironmentName,
    branch_backendEnvironmentArn,
    branch_buildSpec,
    branch_branchArn,
    branch_branchName,
    branch_description,
    branch_stage,
    branch_displayName,
    branch_enableNotification,
    branch_createTime,
    branch_updateTime,
    branch_environmentVariables,
    branch_enableAutoBuild,
    branch_customDomains,
    branch_framework,
    branch_activeJobId,
    branch_totalNumberOfJobs,
    branch_enableBasicAuth,
    branch_ttl,
    branch_enablePullRequestPreview,

    -- * CustomRule
    CustomRule (..),
    newCustomRule,
    customRule_status,
    customRule_condition,
    customRule_source,
    customRule_target,

    -- * DomainAssociation
    DomainAssociation (..),
    newDomainAssociation,
    domainAssociation_autoSubDomainIAMRole,
    domainAssociation_autoSubDomainCreationPatterns,
    domainAssociation_certificateVerificationDNSRecord,
    domainAssociation_domainAssociationArn,
    domainAssociation_domainName,
    domainAssociation_enableAutoSubDomain,
    domainAssociation_domainStatus,
    domainAssociation_statusReason,
    domainAssociation_subDomains,

    -- * Job
    Job (..),
    newJob,
    job_summary,
    job_steps,

    -- * JobSummary
    JobSummary (..),
    newJobSummary,
    jobSummary_endTime,
    jobSummary_jobArn,
    jobSummary_jobId,
    jobSummary_commitId,
    jobSummary_commitMessage,
    jobSummary_commitTime,
    jobSummary_startTime,
    jobSummary_status,
    jobSummary_jobType,

    -- * ProductionBranch
    ProductionBranch (..),
    newProductionBranch,
    productionBranch_thumbnailUrl,
    productionBranch_branchName,
    productionBranch_status,
    productionBranch_lastDeployTime,

    -- * Step
    Step (..),
    newStep,
    step_screenshots,
    step_statusReason,
    step_logUrl,
    step_context,
    step_artifactsUrl,
    step_testConfigUrl,
    step_testArtifactsUrl,
    step_stepName,
    step_startTime,
    step_status,
    step_endTime,

    -- * SubDomain
    SubDomain (..),
    newSubDomain,
    subDomain_subDomainSetting,
    subDomain_verified,
    subDomain_dnsRecord,

    -- * SubDomainSetting
    SubDomainSetting (..),
    newSubDomainSetting,
    subDomainSetting_prefix,
    subDomainSetting_branchName,

    -- * Webhook
    Webhook (..),
    newWebhook,
    webhook_webhookArn,
    webhook_webhookId,
    webhook_webhookUrl,
    webhook_branchName,
    webhook_description,
    webhook_createTime,
    webhook_updateTime,
  )
where

import Amazonka.Amplify.Types.App
import Amazonka.Amplify.Types.Artifact
import Amazonka.Amplify.Types.AutoBranchCreationConfig
import Amazonka.Amplify.Types.BackendEnvironment
import Amazonka.Amplify.Types.Branch
import Amazonka.Amplify.Types.CustomRule
import Amazonka.Amplify.Types.DomainAssociation
import Amazonka.Amplify.Types.DomainStatus
import Amazonka.Amplify.Types.Job
import Amazonka.Amplify.Types.JobStatus
import Amazonka.Amplify.Types.JobSummary
import Amazonka.Amplify.Types.JobType
import Amazonka.Amplify.Types.Platform
import Amazonka.Amplify.Types.ProductionBranch
import Amazonka.Amplify.Types.RepositoryCloneMethod
import Amazonka.Amplify.Types.Stage
import Amazonka.Amplify.Types.Step
import Amazonka.Amplify.Types.SubDomain
import Amazonka.Amplify.Types.SubDomainSetting
import Amazonka.Amplify.Types.Webhook
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-07-25@ of the Amazon Amplify SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Amplify",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "amplify",
      Core._serviceSigningName = "amplify",
      Core._serviceVersion = "2017-07-25",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Amplify",
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

-- | An operation failed due to a lack of access.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | An operation failed because a dependent service threw an exception.
_DependentServiceFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DependentServiceFailureException =
  Core._MatchServiceError
    defaultService
    "DependentServiceFailureException"
    Prelude.. Core.hasStatus 503

-- | An entity was not found during an operation.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | An operation failed due to a non-existent resource.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | A resource could not be created because service quotas were exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 429

-- | A request contains unexpected data.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | The service failed to perform an operation due to an internal issue.
_InternalFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalFailureException =
  Core._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Core.hasStatus 500

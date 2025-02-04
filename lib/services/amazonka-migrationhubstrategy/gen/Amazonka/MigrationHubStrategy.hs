{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.MigrationHubStrategy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2020-02-19@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Migration Hub Strategy Recommendations
--
-- >  <p>This API reference provides descriptions, syntax, and other details about each of the actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p>
module Amazonka.MigrationHubStrategy
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** ConflictException
    _ConflictException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** ValidationException
    _ValidationException,

    -- ** ServiceLinkedRoleLockClientException
    _ServiceLinkedRoleLockClientException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetApplicationComponentDetails
    GetApplicationComponentDetails (GetApplicationComponentDetails'),
    newGetApplicationComponentDetails,
    GetApplicationComponentDetailsResponse (GetApplicationComponentDetailsResponse'),
    newGetApplicationComponentDetailsResponse,

    -- ** GetApplicationComponentStrategies
    GetApplicationComponentStrategies (GetApplicationComponentStrategies'),
    newGetApplicationComponentStrategies,
    GetApplicationComponentStrategiesResponse (GetApplicationComponentStrategiesResponse'),
    newGetApplicationComponentStrategiesResponse,

    -- ** GetAssessment
    GetAssessment (GetAssessment'),
    newGetAssessment,
    GetAssessmentResponse (GetAssessmentResponse'),
    newGetAssessmentResponse,

    -- ** GetImportFileTask
    GetImportFileTask (GetImportFileTask'),
    newGetImportFileTask,
    GetImportFileTaskResponse (GetImportFileTaskResponse'),
    newGetImportFileTaskResponse,

    -- ** GetPortfolioPreferences
    GetPortfolioPreferences (GetPortfolioPreferences'),
    newGetPortfolioPreferences,
    GetPortfolioPreferencesResponse (GetPortfolioPreferencesResponse'),
    newGetPortfolioPreferencesResponse,

    -- ** GetPortfolioSummary
    GetPortfolioSummary (GetPortfolioSummary'),
    newGetPortfolioSummary,
    GetPortfolioSummaryResponse (GetPortfolioSummaryResponse'),
    newGetPortfolioSummaryResponse,

    -- ** GetRecommendationReportDetails
    GetRecommendationReportDetails (GetRecommendationReportDetails'),
    newGetRecommendationReportDetails,
    GetRecommendationReportDetailsResponse (GetRecommendationReportDetailsResponse'),
    newGetRecommendationReportDetailsResponse,

    -- ** GetServerDetails (Paginated)
    GetServerDetails (GetServerDetails'),
    newGetServerDetails,
    GetServerDetailsResponse (GetServerDetailsResponse'),
    newGetServerDetailsResponse,

    -- ** GetServerStrategies
    GetServerStrategies (GetServerStrategies'),
    newGetServerStrategies,
    GetServerStrategiesResponse (GetServerStrategiesResponse'),
    newGetServerStrategiesResponse,

    -- ** ListApplicationComponents (Paginated)
    ListApplicationComponents (ListApplicationComponents'),
    newListApplicationComponents,
    ListApplicationComponentsResponse (ListApplicationComponentsResponse'),
    newListApplicationComponentsResponse,

    -- ** ListCollectors (Paginated)
    ListCollectors (ListCollectors'),
    newListCollectors,
    ListCollectorsResponse (ListCollectorsResponse'),
    newListCollectorsResponse,

    -- ** ListImportFileTask (Paginated)
    ListImportFileTask (ListImportFileTask'),
    newListImportFileTask,
    ListImportFileTaskResponse (ListImportFileTaskResponse'),
    newListImportFileTaskResponse,

    -- ** ListServers (Paginated)
    ListServers (ListServers'),
    newListServers,
    ListServersResponse (ListServersResponse'),
    newListServersResponse,

    -- ** PutPortfolioPreferences
    PutPortfolioPreferences (PutPortfolioPreferences'),
    newPutPortfolioPreferences,
    PutPortfolioPreferencesResponse (PutPortfolioPreferencesResponse'),
    newPutPortfolioPreferencesResponse,

    -- ** StartAssessment
    StartAssessment (StartAssessment'),
    newStartAssessment,
    StartAssessmentResponse (StartAssessmentResponse'),
    newStartAssessmentResponse,

    -- ** StartImportFileTask
    StartImportFileTask (StartImportFileTask'),
    newStartImportFileTask,
    StartImportFileTaskResponse (StartImportFileTaskResponse'),
    newStartImportFileTaskResponse,

    -- ** StartRecommendationReportGeneration
    StartRecommendationReportGeneration (StartRecommendationReportGeneration'),
    newStartRecommendationReportGeneration,
    StartRecommendationReportGenerationResponse (StartRecommendationReportGenerationResponse'),
    newStartRecommendationReportGenerationResponse,

    -- ** StopAssessment
    StopAssessment (StopAssessment'),
    newStopAssessment,
    StopAssessmentResponse (StopAssessmentResponse'),
    newStopAssessmentResponse,

    -- ** UpdateApplicationComponentConfig
    UpdateApplicationComponentConfig (UpdateApplicationComponentConfig'),
    newUpdateApplicationComponentConfig,
    UpdateApplicationComponentConfigResponse (UpdateApplicationComponentConfigResponse'),
    newUpdateApplicationComponentConfigResponse,

    -- ** UpdateServerConfig
    UpdateServerConfig (UpdateServerConfig'),
    newUpdateServerConfig,
    UpdateServerConfigResponse (UpdateServerConfigResponse'),
    newUpdateServerConfigResponse,

    -- * Types

    -- ** AntipatternReportStatus
    AntipatternReportStatus (..),

    -- ** AppType
    AppType (..),

    -- ** ApplicationComponentCriteria
    ApplicationComponentCriteria (..),

    -- ** AssessmentStatus
    AssessmentStatus (..),

    -- ** AwsManagedTargetDestination
    AwsManagedTargetDestination (..),

    -- ** CollectorHealth
    CollectorHealth (..),

    -- ** DataSourceType
    DataSourceType (..),

    -- ** DatabaseManagementPreference
    DatabaseManagementPreference (..),

    -- ** GroupName
    GroupName (..),

    -- ** HeterogeneousTargetDatabaseEngine
    HeterogeneousTargetDatabaseEngine (..),

    -- ** HomogeneousTargetDatabaseEngine
    HomogeneousTargetDatabaseEngine (..),

    -- ** ImportFileTaskStatus
    ImportFileTaskStatus (..),

    -- ** InclusionStatus
    InclusionStatus (..),

    -- ** NoPreferenceTargetDestination
    NoPreferenceTargetDestination (..),

    -- ** OSType
    OSType (..),

    -- ** OutputFormat
    OutputFormat (..),

    -- ** RecommendationReportStatus
    RecommendationReportStatus (..),

    -- ** ResourceSubType
    ResourceSubType (..),

    -- ** RunTimeAssessmentStatus
    RunTimeAssessmentStatus (..),

    -- ** SelfManageTargetDestination
    SelfManageTargetDestination (..),

    -- ** ServerCriteria
    ServerCriteria (..),

    -- ** ServerOsType
    ServerOsType (..),

    -- ** Severity
    Severity (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** SrcCodeOrDbAnalysisStatus
    SrcCodeOrDbAnalysisStatus (..),

    -- ** Strategy
    Strategy (..),

    -- ** StrategyRecommendation
    StrategyRecommendation (..),

    -- ** TargetDatabaseEngine
    TargetDatabaseEngine (..),

    -- ** TargetDestination
    TargetDestination (..),

    -- ** TransformationToolName
    TransformationToolName (..),

    -- ** VersionControl
    VersionControl (..),

    -- ** AntipatternSeveritySummary
    AntipatternSeveritySummary (AntipatternSeveritySummary'),
    newAntipatternSeveritySummary,

    -- ** ApplicationComponentDetail
    ApplicationComponentDetail (ApplicationComponentDetail'),
    newApplicationComponentDetail,

    -- ** ApplicationComponentStrategy
    ApplicationComponentStrategy (ApplicationComponentStrategy'),
    newApplicationComponentStrategy,

    -- ** ApplicationComponentSummary
    ApplicationComponentSummary (ApplicationComponentSummary'),
    newApplicationComponentSummary,

    -- ** ApplicationPreferences
    ApplicationPreferences (ApplicationPreferences'),
    newApplicationPreferences,

    -- ** AssessmentSummary
    AssessmentSummary (AssessmentSummary'),
    newAssessmentSummary,

    -- ** AssociatedApplication
    AssociatedApplication (AssociatedApplication'),
    newAssociatedApplication,

    -- ** AwsManagedResources
    AwsManagedResources (AwsManagedResources'),
    newAwsManagedResources,

    -- ** BusinessGoals
    BusinessGoals (BusinessGoals'),
    newBusinessGoals,

    -- ** Collector
    Collector (Collector'),
    newCollector,

    -- ** DataCollectionDetails
    DataCollectionDetails (DataCollectionDetails'),
    newDataCollectionDetails,

    -- ** DatabaseConfigDetail
    DatabaseConfigDetail (DatabaseConfigDetail'),
    newDatabaseConfigDetail,

    -- ** DatabaseMigrationPreference
    DatabaseMigrationPreference (DatabaseMigrationPreference'),
    newDatabaseMigrationPreference,

    -- ** DatabasePreferences
    DatabasePreferences (DatabasePreferences'),
    newDatabasePreferences,

    -- ** Group
    Group (Group'),
    newGroup,

    -- ** Heterogeneous
    Heterogeneous (Heterogeneous'),
    newHeterogeneous,

    -- ** Homogeneous
    Homogeneous (Homogeneous'),
    newHomogeneous,

    -- ** ImportFileTaskInformation
    ImportFileTaskInformation (ImportFileTaskInformation'),
    newImportFileTaskInformation,

    -- ** ManagementPreference
    ManagementPreference (ManagementPreference'),
    newManagementPreference,

    -- ** NetworkInfo
    NetworkInfo (NetworkInfo'),
    newNetworkInfo,

    -- ** NoDatabaseMigrationPreference
    NoDatabaseMigrationPreference (NoDatabaseMigrationPreference'),
    newNoDatabaseMigrationPreference,

    -- ** NoManagementPreference
    NoManagementPreference (NoManagementPreference'),
    newNoManagementPreference,

    -- ** OSInfo
    OSInfo (OSInfo'),
    newOSInfo,

    -- ** PrioritizeBusinessGoals
    PrioritizeBusinessGoals (PrioritizeBusinessGoals'),
    newPrioritizeBusinessGoals,

    -- ** RecommendationReportDetails
    RecommendationReportDetails (RecommendationReportDetails'),
    newRecommendationReportDetails,

    -- ** RecommendationSet
    RecommendationSet (RecommendationSet'),
    newRecommendationSet,

    -- ** S3Object
    S3Object (S3Object'),
    newS3Object,

    -- ** SelfManageResources
    SelfManageResources (SelfManageResources'),
    newSelfManageResources,

    -- ** ServerDetail
    ServerDetail (ServerDetail'),
    newServerDetail,

    -- ** ServerStrategy
    ServerStrategy (ServerStrategy'),
    newServerStrategy,

    -- ** ServerSummary
    ServerSummary (ServerSummary'),
    newServerSummary,

    -- ** SourceCode
    SourceCode (SourceCode'),
    newSourceCode,

    -- ** SourceCodeRepository
    SourceCodeRepository (SourceCodeRepository'),
    newSourceCodeRepository,

    -- ** StrategyOption
    StrategyOption (StrategyOption'),
    newStrategyOption,

    -- ** StrategySummary
    StrategySummary (StrategySummary'),
    newStrategySummary,

    -- ** SystemInfo
    SystemInfo (SystemInfo'),
    newSystemInfo,

    -- ** TransformationTool
    TransformationTool (TransformationTool'),
    newTransformationTool,
  )
where

import Amazonka.MigrationHubStrategy.GetApplicationComponentDetails
import Amazonka.MigrationHubStrategy.GetApplicationComponentStrategies
import Amazonka.MigrationHubStrategy.GetAssessment
import Amazonka.MigrationHubStrategy.GetImportFileTask
import Amazonka.MigrationHubStrategy.GetPortfolioPreferences
import Amazonka.MigrationHubStrategy.GetPortfolioSummary
import Amazonka.MigrationHubStrategy.GetRecommendationReportDetails
import Amazonka.MigrationHubStrategy.GetServerDetails
import Amazonka.MigrationHubStrategy.GetServerStrategies
import Amazonka.MigrationHubStrategy.Lens
import Amazonka.MigrationHubStrategy.ListApplicationComponents
import Amazonka.MigrationHubStrategy.ListCollectors
import Amazonka.MigrationHubStrategy.ListImportFileTask
import Amazonka.MigrationHubStrategy.ListServers
import Amazonka.MigrationHubStrategy.PutPortfolioPreferences
import Amazonka.MigrationHubStrategy.StartAssessment
import Amazonka.MigrationHubStrategy.StartImportFileTask
import Amazonka.MigrationHubStrategy.StartRecommendationReportGeneration
import Amazonka.MigrationHubStrategy.StopAssessment
import Amazonka.MigrationHubStrategy.Types
import Amazonka.MigrationHubStrategy.UpdateApplicationComponentConfig
import Amazonka.MigrationHubStrategy.UpdateServerConfig
import Amazonka.MigrationHubStrategy.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MigrationHubStrategy'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.

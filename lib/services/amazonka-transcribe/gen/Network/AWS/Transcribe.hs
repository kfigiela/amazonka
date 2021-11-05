{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.Transcribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-10-26@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Operations and objects for transcribing speech to text.
module Amazonka.Transcribe
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ConflictException
    _ConflictException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListLanguageModels
    ListLanguageModels (ListLanguageModels'),
    newListLanguageModels,
    ListLanguageModelsResponse (ListLanguageModelsResponse'),
    newListLanguageModelsResponse,

    -- ** GetVocabulary
    GetVocabulary (GetVocabulary'),
    newGetVocabulary,
    GetVocabularyResponse (GetVocabularyResponse'),
    newGetVocabularyResponse,

    -- ** DeleteLanguageModel
    DeleteLanguageModel (DeleteLanguageModel'),
    newDeleteLanguageModel,
    DeleteLanguageModelResponse (DeleteLanguageModelResponse'),
    newDeleteLanguageModelResponse,

    -- ** GetTranscriptionJob
    GetTranscriptionJob (GetTranscriptionJob'),
    newGetTranscriptionJob,
    GetTranscriptionJobResponse (GetTranscriptionJobResponse'),
    newGetTranscriptionJobResponse,

    -- ** StartMedicalTranscriptionJob
    StartMedicalTranscriptionJob (StartMedicalTranscriptionJob'),
    newStartMedicalTranscriptionJob,
    StartMedicalTranscriptionJobResponse (StartMedicalTranscriptionJobResponse'),
    newStartMedicalTranscriptionJobResponse,

    -- ** ListCallAnalyticsJobs
    ListCallAnalyticsJobs (ListCallAnalyticsJobs'),
    newListCallAnalyticsJobs,
    ListCallAnalyticsJobsResponse (ListCallAnalyticsJobsResponse'),
    newListCallAnalyticsJobsResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** GetCallAnalyticsCategory
    GetCallAnalyticsCategory (GetCallAnalyticsCategory'),
    newGetCallAnalyticsCategory,
    GetCallAnalyticsCategoryResponse (GetCallAnalyticsCategoryResponse'),
    newGetCallAnalyticsCategoryResponse,

    -- ** DeleteMedicalVocabulary
    DeleteMedicalVocabulary (DeleteMedicalVocabulary'),
    newDeleteMedicalVocabulary,
    DeleteMedicalVocabularyResponse (DeleteMedicalVocabularyResponse'),
    newDeleteMedicalVocabularyResponse,

    -- ** UpdateMedicalVocabulary
    UpdateMedicalVocabulary (UpdateMedicalVocabulary'),
    newUpdateMedicalVocabulary,
    UpdateMedicalVocabularyResponse (UpdateMedicalVocabularyResponse'),
    newUpdateMedicalVocabularyResponse,

    -- ** CreateCallAnalyticsCategory
    CreateCallAnalyticsCategory (CreateCallAnalyticsCategory'),
    newCreateCallAnalyticsCategory,
    CreateCallAnalyticsCategoryResponse (CreateCallAnalyticsCategoryResponse'),
    newCreateCallAnalyticsCategoryResponse,

    -- ** DeleteTranscriptionJob
    DeleteTranscriptionJob (DeleteTranscriptionJob'),
    newDeleteTranscriptionJob,
    DeleteTranscriptionJobResponse (DeleteTranscriptionJobResponse'),
    newDeleteTranscriptionJobResponse,

    -- ** DescribeLanguageModel
    DescribeLanguageModel (DescribeLanguageModel'),
    newDescribeLanguageModel,
    DescribeLanguageModelResponse (DescribeLanguageModelResponse'),
    newDescribeLanguageModelResponse,

    -- ** ListCallAnalyticsCategories
    ListCallAnalyticsCategories (ListCallAnalyticsCategories'),
    newListCallAnalyticsCategories,
    ListCallAnalyticsCategoriesResponse (ListCallAnalyticsCategoriesResponse'),
    newListCallAnalyticsCategoriesResponse,

    -- ** DeleteMedicalTranscriptionJob
    DeleteMedicalTranscriptionJob (DeleteMedicalTranscriptionJob'),
    newDeleteMedicalTranscriptionJob,
    DeleteMedicalTranscriptionJobResponse (DeleteMedicalTranscriptionJobResponse'),
    newDeleteMedicalTranscriptionJobResponse,

    -- ** DeleteVocabulary
    DeleteVocabulary (DeleteVocabulary'),
    newDeleteVocabulary,
    DeleteVocabularyResponse (DeleteVocabularyResponse'),
    newDeleteVocabularyResponse,

    -- ** StartCallAnalyticsJob
    StartCallAnalyticsJob (StartCallAnalyticsJob'),
    newStartCallAnalyticsJob,
    StartCallAnalyticsJobResponse (StartCallAnalyticsJobResponse'),
    newStartCallAnalyticsJobResponse,

    -- ** UpdateVocabulary
    UpdateVocabulary (UpdateVocabulary'),
    newUpdateVocabulary,
    UpdateVocabularyResponse (UpdateVocabularyResponse'),
    newUpdateVocabularyResponse,

    -- ** CreateVocabularyFilter
    CreateVocabularyFilter (CreateVocabularyFilter'),
    newCreateVocabularyFilter,
    CreateVocabularyFilterResponse (CreateVocabularyFilterResponse'),
    newCreateVocabularyFilterResponse,

    -- ** GetMedicalTranscriptionJob
    GetMedicalTranscriptionJob (GetMedicalTranscriptionJob'),
    newGetMedicalTranscriptionJob,
    GetMedicalTranscriptionJobResponse (GetMedicalTranscriptionJobResponse'),
    newGetMedicalTranscriptionJobResponse,

    -- ** GetVocabularyFilter
    GetVocabularyFilter (GetVocabularyFilter'),
    newGetVocabularyFilter,
    GetVocabularyFilterResponse (GetVocabularyFilterResponse'),
    newGetVocabularyFilterResponse,

    -- ** GetMedicalVocabulary
    GetMedicalVocabulary (GetMedicalVocabulary'),
    newGetMedicalVocabulary,
    GetMedicalVocabularyResponse (GetMedicalVocabularyResponse'),
    newGetMedicalVocabularyResponse,

    -- ** DeleteCallAnalyticsJob
    DeleteCallAnalyticsJob (DeleteCallAnalyticsJob'),
    newDeleteCallAnalyticsJob,
    DeleteCallAnalyticsJobResponse (DeleteCallAnalyticsJobResponse'),
    newDeleteCallAnalyticsJobResponse,

    -- ** CreateMedicalVocabulary
    CreateMedicalVocabulary (CreateMedicalVocabulary'),
    newCreateMedicalVocabulary,
    CreateMedicalVocabularyResponse (CreateMedicalVocabularyResponse'),
    newCreateMedicalVocabularyResponse,

    -- ** ListMedicalVocabularies
    ListMedicalVocabularies (ListMedicalVocabularies'),
    newListMedicalVocabularies,
    ListMedicalVocabulariesResponse (ListMedicalVocabulariesResponse'),
    newListMedicalVocabulariesResponse,

    -- ** DeleteCallAnalyticsCategory
    DeleteCallAnalyticsCategory (DeleteCallAnalyticsCategory'),
    newDeleteCallAnalyticsCategory,
    DeleteCallAnalyticsCategoryResponse (DeleteCallAnalyticsCategoryResponse'),
    newDeleteCallAnalyticsCategoryResponse,

    -- ** UpdateCallAnalyticsCategory
    UpdateCallAnalyticsCategory (UpdateCallAnalyticsCategory'),
    newUpdateCallAnalyticsCategory,
    UpdateCallAnalyticsCategoryResponse (UpdateCallAnalyticsCategoryResponse'),
    newUpdateCallAnalyticsCategoryResponse,

    -- ** GetCallAnalyticsJob
    GetCallAnalyticsJob (GetCallAnalyticsJob'),
    newGetCallAnalyticsJob,
    GetCallAnalyticsJobResponse (GetCallAnalyticsJobResponse'),
    newGetCallAnalyticsJobResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListTranscriptionJobs
    ListTranscriptionJobs (ListTranscriptionJobs'),
    newListTranscriptionJobs,
    ListTranscriptionJobsResponse (ListTranscriptionJobsResponse'),
    newListTranscriptionJobsResponse,

    -- ** ListMedicalTranscriptionJobs
    ListMedicalTranscriptionJobs (ListMedicalTranscriptionJobs'),
    newListMedicalTranscriptionJobs,
    ListMedicalTranscriptionJobsResponse (ListMedicalTranscriptionJobsResponse'),
    newListMedicalTranscriptionJobsResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DeleteVocabularyFilter
    DeleteVocabularyFilter (DeleteVocabularyFilter'),
    newDeleteVocabularyFilter,
    DeleteVocabularyFilterResponse (DeleteVocabularyFilterResponse'),
    newDeleteVocabularyFilterResponse,

    -- ** ListVocabularyFilters
    ListVocabularyFilters (ListVocabularyFilters'),
    newListVocabularyFilters,
    ListVocabularyFiltersResponse (ListVocabularyFiltersResponse'),
    newListVocabularyFiltersResponse,

    -- ** UpdateVocabularyFilter
    UpdateVocabularyFilter (UpdateVocabularyFilter'),
    newUpdateVocabularyFilter,
    UpdateVocabularyFilterResponse (UpdateVocabularyFilterResponse'),
    newUpdateVocabularyFilterResponse,

    -- ** ListVocabularies
    ListVocabularies (ListVocabularies'),
    newListVocabularies,
    ListVocabulariesResponse (ListVocabulariesResponse'),
    newListVocabulariesResponse,

    -- ** CreateVocabulary
    CreateVocabulary (CreateVocabulary'),
    newCreateVocabulary,
    CreateVocabularyResponse (CreateVocabularyResponse'),
    newCreateVocabularyResponse,

    -- ** CreateLanguageModel
    CreateLanguageModel (CreateLanguageModel'),
    newCreateLanguageModel,
    CreateLanguageModelResponse (CreateLanguageModelResponse'),
    newCreateLanguageModelResponse,

    -- ** StartTranscriptionJob
    StartTranscriptionJob (StartTranscriptionJob'),
    newStartTranscriptionJob,
    StartTranscriptionJobResponse (StartTranscriptionJobResponse'),
    newStartTranscriptionJobResponse,

    -- * Types

    -- ** BaseModelName
    BaseModelName (..),

    -- ** CLMLanguageCode
    CLMLanguageCode (..),

    -- ** CallAnalyticsJobStatus
    CallAnalyticsJobStatus (..),

    -- ** LanguageCode
    LanguageCode (..),

    -- ** MediaFormat
    MediaFormat (..),

    -- ** MedicalContentIdentificationType
    MedicalContentIdentificationType (..),

    -- ** ModelStatus
    ModelStatus (..),

    -- ** OutputLocationType
    OutputLocationType (..),

    -- ** ParticipantRole
    ParticipantRole (..),

    -- ** RedactionOutput
    RedactionOutput (..),

    -- ** RedactionType
    RedactionType (..),

    -- ** SentimentValue
    SentimentValue (..),

    -- ** Specialty
    Specialty (..),

    -- ** SubtitleFormat
    SubtitleFormat (..),

    -- ** TranscriptFilterType
    TranscriptFilterType (..),

    -- ** TranscriptionJobStatus
    TranscriptionJobStatus (..),

    -- ** Type
    Type (..),

    -- ** VocabularyFilterMethod
    VocabularyFilterMethod (..),

    -- ** VocabularyState
    VocabularyState (..),

    -- ** AbsoluteTimeRange
    AbsoluteTimeRange (AbsoluteTimeRange'),
    newAbsoluteTimeRange,

    -- ** CallAnalyticsJob
    CallAnalyticsJob (CallAnalyticsJob'),
    newCallAnalyticsJob,

    -- ** CallAnalyticsJobSettings
    CallAnalyticsJobSettings (CallAnalyticsJobSettings'),
    newCallAnalyticsJobSettings,

    -- ** CallAnalyticsJobSummary
    CallAnalyticsJobSummary (CallAnalyticsJobSummary'),
    newCallAnalyticsJobSummary,

    -- ** CategoryProperties
    CategoryProperties (CategoryProperties'),
    newCategoryProperties,

    -- ** ChannelDefinition
    ChannelDefinition (ChannelDefinition'),
    newChannelDefinition,

    -- ** ContentRedaction
    ContentRedaction (ContentRedaction'),
    newContentRedaction,

    -- ** InputDataConfig
    InputDataConfig (InputDataConfig'),
    newInputDataConfig,

    -- ** InterruptionFilter
    InterruptionFilter (InterruptionFilter'),
    newInterruptionFilter,

    -- ** JobExecutionSettings
    JobExecutionSettings (JobExecutionSettings'),
    newJobExecutionSettings,

    -- ** LanguageModel
    LanguageModel (LanguageModel'),
    newLanguageModel,

    -- ** Media
    Media (Media'),
    newMedia,

    -- ** MedicalTranscript
    MedicalTranscript (MedicalTranscript'),
    newMedicalTranscript,

    -- ** MedicalTranscriptionJob
    MedicalTranscriptionJob (MedicalTranscriptionJob'),
    newMedicalTranscriptionJob,

    -- ** MedicalTranscriptionJobSummary
    MedicalTranscriptionJobSummary (MedicalTranscriptionJobSummary'),
    newMedicalTranscriptionJobSummary,

    -- ** MedicalTranscriptionSetting
    MedicalTranscriptionSetting (MedicalTranscriptionSetting'),
    newMedicalTranscriptionSetting,

    -- ** ModelSettings
    ModelSettings (ModelSettings'),
    newModelSettings,

    -- ** NonTalkTimeFilter
    NonTalkTimeFilter (NonTalkTimeFilter'),
    newNonTalkTimeFilter,

    -- ** RelativeTimeRange
    RelativeTimeRange (RelativeTimeRange'),
    newRelativeTimeRange,

    -- ** Rule
    Rule (Rule'),
    newRule,

    -- ** SentimentFilter
    SentimentFilter (SentimentFilter'),
    newSentimentFilter,

    -- ** Settings
    Settings (Settings'),
    newSettings,

    -- ** Subtitles
    Subtitles (Subtitles'),
    newSubtitles,

    -- ** SubtitlesOutput
    SubtitlesOutput (SubtitlesOutput'),
    newSubtitlesOutput,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** Transcript
    Transcript (Transcript'),
    newTranscript,

    -- ** TranscriptFilter
    TranscriptFilter (TranscriptFilter'),
    newTranscriptFilter,

    -- ** TranscriptionJob
    TranscriptionJob (TranscriptionJob'),
    newTranscriptionJob,

    -- ** TranscriptionJobSummary
    TranscriptionJobSummary (TranscriptionJobSummary'),
    newTranscriptionJobSummary,

    -- ** VocabularyFilterInfo
    VocabularyFilterInfo (VocabularyFilterInfo'),
    newVocabularyFilterInfo,

    -- ** VocabularyInfo
    VocabularyInfo (VocabularyInfo'),
    newVocabularyInfo,
  )
where

import Amazonka.Transcribe.CreateCallAnalyticsCategory
import Amazonka.Transcribe.CreateLanguageModel
import Amazonka.Transcribe.CreateMedicalVocabulary
import Amazonka.Transcribe.CreateVocabulary
import Amazonka.Transcribe.CreateVocabularyFilter
import Amazonka.Transcribe.DeleteCallAnalyticsCategory
import Amazonka.Transcribe.DeleteCallAnalyticsJob
import Amazonka.Transcribe.DeleteLanguageModel
import Amazonka.Transcribe.DeleteMedicalTranscriptionJob
import Amazonka.Transcribe.DeleteMedicalVocabulary
import Amazonka.Transcribe.DeleteTranscriptionJob
import Amazonka.Transcribe.DeleteVocabulary
import Amazonka.Transcribe.DeleteVocabularyFilter
import Amazonka.Transcribe.DescribeLanguageModel
import Amazonka.Transcribe.GetCallAnalyticsCategory
import Amazonka.Transcribe.GetCallAnalyticsJob
import Amazonka.Transcribe.GetMedicalTranscriptionJob
import Amazonka.Transcribe.GetMedicalVocabulary
import Amazonka.Transcribe.GetTranscriptionJob
import Amazonka.Transcribe.GetVocabulary
import Amazonka.Transcribe.GetVocabularyFilter
import Amazonka.Transcribe.Lens
import Amazonka.Transcribe.ListCallAnalyticsCategories
import Amazonka.Transcribe.ListCallAnalyticsJobs
import Amazonka.Transcribe.ListLanguageModels
import Amazonka.Transcribe.ListMedicalTranscriptionJobs
import Amazonka.Transcribe.ListMedicalVocabularies
import Amazonka.Transcribe.ListTagsForResource
import Amazonka.Transcribe.ListTranscriptionJobs
import Amazonka.Transcribe.ListVocabularies
import Amazonka.Transcribe.ListVocabularyFilters
import Amazonka.Transcribe.StartCallAnalyticsJob
import Amazonka.Transcribe.StartMedicalTranscriptionJob
import Amazonka.Transcribe.StartTranscriptionJob
import Amazonka.Transcribe.TagResource
import Amazonka.Transcribe.Types
import Amazonka.Transcribe.UntagResource
import Amazonka.Transcribe.UpdateCallAnalyticsCategory
import Amazonka.Transcribe.UpdateMedicalVocabulary
import Amazonka.Transcribe.UpdateVocabulary
import Amazonka.Transcribe.UpdateVocabularyFilter
import Amazonka.Transcribe.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Transcribe'.

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

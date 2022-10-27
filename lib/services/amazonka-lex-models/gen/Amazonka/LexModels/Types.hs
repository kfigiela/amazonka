{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LexModels.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _PreconditionFailedException,
    _AccessDeniedException,
    _NotFoundException,
    _ResourceInUseException,
    _LimitExceededException,
    _ConflictException,
    _BadRequestException,
    _InternalFailureException,

    -- * ChannelStatus
    ChannelStatus (..),

    -- * ChannelType
    ChannelType (..),

    -- * ContentType
    ContentType (..),

    -- * Destination
    Destination (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ExportType
    ExportType (..),

    -- * FulfillmentActivityType
    FulfillmentActivityType (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * LexStatus
    LexStatus (..),

    -- * Locale
    Locale (..),

    -- * LogType
    LogType (..),

    -- * MergeStrategy
    MergeStrategy (..),

    -- * MigrationAlertType
    MigrationAlertType (..),

    -- * MigrationSortAttribute
    MigrationSortAttribute (..),

    -- * MigrationStatus
    MigrationStatus (..),

    -- * MigrationStrategy
    MigrationStrategy (..),

    -- * ObfuscationSetting
    ObfuscationSetting (..),

    -- * ProcessBehavior
    ProcessBehavior (..),

    -- * ResourceType
    ResourceType (..),

    -- * SlotConstraint
    SlotConstraint (..),

    -- * SlotValueSelectionStrategy
    SlotValueSelectionStrategy (..),

    -- * SortOrder
    SortOrder (..),

    -- * StatusType
    StatusType (..),

    -- * BotAliasMetadata
    BotAliasMetadata (..),
    newBotAliasMetadata,
    botAliasMetadata_name,
    botAliasMetadata_botVersion,
    botAliasMetadata_lastUpdatedDate,
    botAliasMetadata_description,
    botAliasMetadata_checksum,
    botAliasMetadata_botName,
    botAliasMetadata_conversationLogs,
    botAliasMetadata_createdDate,

    -- * BotChannelAssociation
    BotChannelAssociation (..),
    newBotChannelAssociation,
    botChannelAssociation_name,
    botChannelAssociation_type,
    botChannelAssociation_botConfiguration,
    botChannelAssociation_status,
    botChannelAssociation_description,
    botChannelAssociation_botName,
    botChannelAssociation_createdDate,
    botChannelAssociation_botAlias,
    botChannelAssociation_failureReason,

    -- * BotMetadata
    BotMetadata (..),
    newBotMetadata,
    botMetadata_name,
    botMetadata_lastUpdatedDate,
    botMetadata_status,
    botMetadata_description,
    botMetadata_createdDate,
    botMetadata_version,

    -- * BuiltinIntentMetadata
    BuiltinIntentMetadata (..),
    newBuiltinIntentMetadata,
    builtinIntentMetadata_supportedLocales,
    builtinIntentMetadata_signature,

    -- * BuiltinIntentSlot
    BuiltinIntentSlot (..),
    newBuiltinIntentSlot,
    builtinIntentSlot_name,

    -- * BuiltinSlotTypeMetadata
    BuiltinSlotTypeMetadata (..),
    newBuiltinSlotTypeMetadata,
    builtinSlotTypeMetadata_supportedLocales,
    builtinSlotTypeMetadata_signature,

    -- * CodeHook
    CodeHook (..),
    newCodeHook,
    codeHook_uri,
    codeHook_messageVersion,

    -- * ConversationLogsRequest
    ConversationLogsRequest (..),
    newConversationLogsRequest,
    conversationLogsRequest_logSettings,
    conversationLogsRequest_iamRoleArn,

    -- * ConversationLogsResponse
    ConversationLogsResponse (..),
    newConversationLogsResponse,
    conversationLogsResponse_logSettings,
    conversationLogsResponse_iamRoleArn,

    -- * EnumerationValue
    EnumerationValue (..),
    newEnumerationValue,
    enumerationValue_synonyms,
    enumerationValue_value,

    -- * FollowUpPrompt
    FollowUpPrompt (..),
    newFollowUpPrompt,
    followUpPrompt_prompt,
    followUpPrompt_rejectionStatement,

    -- * FulfillmentActivity
    FulfillmentActivity (..),
    newFulfillmentActivity,
    fulfillmentActivity_codeHook,
    fulfillmentActivity_type,

    -- * InputContext
    InputContext (..),
    newInputContext,
    inputContext_name,

    -- * Intent
    Intent (..),
    newIntent,
    intent_intentName,
    intent_intentVersion,

    -- * IntentMetadata
    IntentMetadata (..),
    newIntentMetadata,
    intentMetadata_name,
    intentMetadata_lastUpdatedDate,
    intentMetadata_description,
    intentMetadata_createdDate,
    intentMetadata_version,

    -- * KendraConfiguration
    KendraConfiguration (..),
    newKendraConfiguration,
    kendraConfiguration_queryFilterString,
    kendraConfiguration_kendraIndex,
    kendraConfiguration_role,

    -- * LogSettingsRequest
    LogSettingsRequest (..),
    newLogSettingsRequest,
    logSettingsRequest_kmsKeyArn,
    logSettingsRequest_logType,
    logSettingsRequest_destination,
    logSettingsRequest_resourceArn,

    -- * LogSettingsResponse
    LogSettingsResponse (..),
    newLogSettingsResponse,
    logSettingsResponse_destination,
    logSettingsResponse_logType,
    logSettingsResponse_resourcePrefix,
    logSettingsResponse_kmsKeyArn,
    logSettingsResponse_resourceArn,

    -- * Message
    Message (..),
    newMessage,
    message_groupNumber,
    message_contentType,
    message_content,

    -- * MigrationAlert
    MigrationAlert (..),
    newMigrationAlert,
    migrationAlert_message,
    migrationAlert_type,
    migrationAlert_referenceURLs,
    migrationAlert_details,

    -- * MigrationSummary
    MigrationSummary (..),
    newMigrationSummary,
    migrationSummary_v2BotRole,
    migrationSummary_migrationStatus,
    migrationSummary_v1BotLocale,
    migrationSummary_v1BotVersion,
    migrationSummary_migrationStrategy,
    migrationSummary_v2BotId,
    migrationSummary_v1BotName,
    migrationSummary_migrationTimestamp,
    migrationSummary_migrationId,

    -- * OutputContext
    OutputContext (..),
    newOutputContext,
    outputContext_name,
    outputContext_timeToLiveInSeconds,
    outputContext_turnsToLive,

    -- * Prompt
    Prompt (..),
    newPrompt,
    prompt_responseCard,
    prompt_messages,
    prompt_maxAttempts,

    -- * Slot
    Slot (..),
    newSlot,
    slot_sampleUtterances,
    slot_slotType,
    slot_defaultValueSpec,
    slot_description,
    slot_responseCard,
    slot_priority,
    slot_obfuscationSetting,
    slot_slotTypeVersion,
    slot_valueElicitationPrompt,
    slot_name,
    slot_slotConstraint,

    -- * SlotDefaultValue
    SlotDefaultValue (..),
    newSlotDefaultValue,
    slotDefaultValue_defaultValue,

    -- * SlotDefaultValueSpec
    SlotDefaultValueSpec (..),
    newSlotDefaultValueSpec,
    slotDefaultValueSpec_defaultValueList,

    -- * SlotTypeConfiguration
    SlotTypeConfiguration (..),
    newSlotTypeConfiguration,
    slotTypeConfiguration_regexConfiguration,

    -- * SlotTypeMetadata
    SlotTypeMetadata (..),
    newSlotTypeMetadata,
    slotTypeMetadata_name,
    slotTypeMetadata_lastUpdatedDate,
    slotTypeMetadata_description,
    slotTypeMetadata_createdDate,
    slotTypeMetadata_version,

    -- * SlotTypeRegexConfiguration
    SlotTypeRegexConfiguration (..),
    newSlotTypeRegexConfiguration,
    slotTypeRegexConfiguration_pattern,

    -- * Statement
    Statement (..),
    newStatement,
    statement_responseCard,
    statement_messages,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * UtteranceData
    UtteranceData (..),
    newUtteranceData,
    utteranceData_firstUtteredDate,
    utteranceData_count,
    utteranceData_utteranceString,
    utteranceData_distinctUsers,
    utteranceData_lastUtteredDate,

    -- * UtteranceList
    UtteranceList (..),
    newUtteranceList,
    utteranceList_botVersion,
    utteranceList_utterances,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types.BotAliasMetadata
import Amazonka.LexModels.Types.BotChannelAssociation
import Amazonka.LexModels.Types.BotMetadata
import Amazonka.LexModels.Types.BuiltinIntentMetadata
import Amazonka.LexModels.Types.BuiltinIntentSlot
import Amazonka.LexModels.Types.BuiltinSlotTypeMetadata
import Amazonka.LexModels.Types.ChannelStatus
import Amazonka.LexModels.Types.ChannelType
import Amazonka.LexModels.Types.CodeHook
import Amazonka.LexModels.Types.ContentType
import Amazonka.LexModels.Types.ConversationLogsRequest
import Amazonka.LexModels.Types.ConversationLogsResponse
import Amazonka.LexModels.Types.Destination
import Amazonka.LexModels.Types.EnumerationValue
import Amazonka.LexModels.Types.ExportStatus
import Amazonka.LexModels.Types.ExportType
import Amazonka.LexModels.Types.FollowUpPrompt
import Amazonka.LexModels.Types.FulfillmentActivity
import Amazonka.LexModels.Types.FulfillmentActivityType
import Amazonka.LexModels.Types.ImportStatus
import Amazonka.LexModels.Types.InputContext
import Amazonka.LexModels.Types.Intent
import Amazonka.LexModels.Types.IntentMetadata
import Amazonka.LexModels.Types.KendraConfiguration
import Amazonka.LexModels.Types.LexStatus
import Amazonka.LexModels.Types.Locale
import Amazonka.LexModels.Types.LogSettingsRequest
import Amazonka.LexModels.Types.LogSettingsResponse
import Amazonka.LexModels.Types.LogType
import Amazonka.LexModels.Types.MergeStrategy
import Amazonka.LexModels.Types.Message
import Amazonka.LexModels.Types.MigrationAlert
import Amazonka.LexModels.Types.MigrationAlertType
import Amazonka.LexModels.Types.MigrationSortAttribute
import Amazonka.LexModels.Types.MigrationStatus
import Amazonka.LexModels.Types.MigrationStrategy
import Amazonka.LexModels.Types.MigrationSummary
import Amazonka.LexModels.Types.ObfuscationSetting
import Amazonka.LexModels.Types.OutputContext
import Amazonka.LexModels.Types.ProcessBehavior
import Amazonka.LexModels.Types.Prompt
import Amazonka.LexModels.Types.ResourceType
import Amazonka.LexModels.Types.Slot
import Amazonka.LexModels.Types.SlotConstraint
import Amazonka.LexModels.Types.SlotDefaultValue
import Amazonka.LexModels.Types.SlotDefaultValueSpec
import Amazonka.LexModels.Types.SlotTypeConfiguration
import Amazonka.LexModels.Types.SlotTypeMetadata
import Amazonka.LexModels.Types.SlotTypeRegexConfiguration
import Amazonka.LexModels.Types.SlotValueSelectionStrategy
import Amazonka.LexModels.Types.SortOrder
import Amazonka.LexModels.Types.Statement
import Amazonka.LexModels.Types.StatusType
import Amazonka.LexModels.Types.Tag
import Amazonka.LexModels.Types.UtteranceData
import Amazonka.LexModels.Types.UtteranceList
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-04-19@ of the Amazon Lex Model Building Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "LexModels",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "models.lex",
      Core._serviceSigningName = "lex",
      Core._serviceVersion = "2017-04-19",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "LexModels",
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

-- | The checksum of the resource that you are trying to change does not
-- match the checksum in the request. Check the resource\'s checksum and
-- try again.
_PreconditionFailedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_PreconditionFailedException =
  Core._MatchServiceError
    defaultService
    "PreconditionFailedException"
    Prelude.. Core.hasStatus 412

-- | Your IAM user or role does not have permission to call the Amazon Lex V2
-- APIs required to migrate your bot.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | The resource specified in the request was not found. Check the resource
-- and try again.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | The resource that you are attempting to delete is referred to by another
-- resource. Use this information to remove references to the resource that
-- you are trying to delete.
--
-- The body of the exception contains a JSON object that describes the
-- resource.
--
-- @{ \"resourceType\": BOT | BOTALIAS | BOTCHANNEL | INTENT,@
--
-- @\"resourceReference\": {@
--
-- @\"name\": string, \"version\": string } }@
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Core.hasStatus 400

-- | The request exceeded a limit. Try your request again.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 429

-- | There was a conflict processing the request. Try your request again.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request is not well formed. For example, a value is invalid or a
-- required field is missing. Check the field values, and try again.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | An internal Amazon Lex error occurred. Try your request again.
_InternalFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalFailureException =
  Core._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Core.hasStatus 500

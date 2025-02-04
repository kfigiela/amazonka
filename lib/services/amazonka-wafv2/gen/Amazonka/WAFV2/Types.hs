{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WAFV2.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _WAFConfigurationWarningException,
    _WAFUnavailableEntityException,
    _WAFServiceLinkedRoleErrorException,
    _WAFOptimisticLockException,
    _WAFTagOperationInternalErrorException,
    _WAFInvalidPermissionPolicyException,
    _WAFExpiredManagedRuleGroupVersionException,
    _WAFSubscriptionNotFoundException,
    _WAFNonexistentItemException,
    _WAFAssociatedItemException,
    _WAFInvalidResourceException,
    _WAFDuplicateItemException,
    _WAFTagOperationException,
    _WAFInvalidParameterException,
    _WAFLogDestinationPermissionIssueException,
    _WAFInvalidOperationException,
    _WAFInternalErrorException,
    _WAFLimitsExceededException,

    -- * ActionValue
    ActionValue (..),

    -- * BodyParsingFallbackBehavior
    BodyParsingFallbackBehavior (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * CountryCode
    CountryCode (..),

    -- * FailureReason
    FailureReason (..),

    -- * FallbackBehavior
    FallbackBehavior (..),

    -- * FilterBehavior
    FilterBehavior (..),

    -- * FilterRequirement
    FilterRequirement (..),

    -- * ForwardedIPPosition
    ForwardedIPPosition (..),

    -- * IPAddressVersion
    IPAddressVersion (..),

    -- * JsonMatchScope
    JsonMatchScope (..),

    -- * LabelMatchScope
    LabelMatchScope (..),

    -- * MapMatchScope
    MapMatchScope (..),

    -- * OversizeHandling
    OversizeHandling (..),

    -- * PayloadType
    PayloadType (..),

    -- * Platform
    Platform (..),

    -- * PositionalConstraint
    PositionalConstraint (..),

    -- * RateBasedStatementAggregateKeyType
    RateBasedStatementAggregateKeyType (..),

    -- * ResourceType
    ResourceType (..),

    -- * ResponseContentType
    ResponseContentType (..),

    -- * Scope
    Scope (..),

    -- * SensitivityLevel
    SensitivityLevel (..),

    -- * TextTransformationType
    TextTransformationType (..),

    -- * ActionCondition
    ActionCondition (..),
    newActionCondition,
    actionCondition_action,

    -- * All
    All (..),
    newAll,

    -- * AllQueryArguments
    AllQueryArguments (..),
    newAllQueryArguments,

    -- * AllowAction
    AllowAction (..),
    newAllowAction,
    allowAction_customRequestHandling,

    -- * AndStatement
    AndStatement (..),
    newAndStatement,
    andStatement_statements,

    -- * BlockAction
    BlockAction (..),
    newBlockAction,
    blockAction_customResponse,

    -- * Body
    Body (..),
    newBody,
    body_oversizeHandling,

    -- * ByteMatchStatement
    ByteMatchStatement (..),
    newByteMatchStatement,
    byteMatchStatement_searchString,
    byteMatchStatement_fieldToMatch,
    byteMatchStatement_textTransformations,
    byteMatchStatement_positionalConstraint,

    -- * CaptchaAction
    CaptchaAction (..),
    newCaptchaAction,
    captchaAction_customRequestHandling,

    -- * CaptchaConfig
    CaptchaConfig (..),
    newCaptchaConfig,
    captchaConfig_immunityTimeProperty,

    -- * CaptchaResponse
    CaptchaResponse (..),
    newCaptchaResponse,
    captchaResponse_solveTimestamp,
    captchaResponse_responseCode,
    captchaResponse_failureReason,

    -- * Condition
    Condition (..),
    newCondition,
    condition_labelNameCondition,
    condition_actionCondition,

    -- * CookieMatchPattern
    CookieMatchPattern (..),
    newCookieMatchPattern,
    cookieMatchPattern_all,
    cookieMatchPattern_includedCookies,
    cookieMatchPattern_excludedCookies,

    -- * Cookies
    Cookies (..),
    newCookies,
    cookies_matchPattern,
    cookies_matchScope,
    cookies_oversizeHandling,

    -- * CountAction
    CountAction (..),
    newCountAction,
    countAction_customRequestHandling,

    -- * CustomHTTPHeader
    CustomHTTPHeader (..),
    newCustomHTTPHeader,
    customHTTPHeader_name,
    customHTTPHeader_value,

    -- * CustomRequestHandling
    CustomRequestHandling (..),
    newCustomRequestHandling,
    customRequestHandling_insertHeaders,

    -- * CustomResponse
    CustomResponse (..),
    newCustomResponse,
    customResponse_customResponseBodyKey,
    customResponse_responseHeaders,
    customResponse_responseCode,

    -- * CustomResponseBody
    CustomResponseBody (..),
    newCustomResponseBody,
    customResponseBody_contentType,
    customResponseBody_content,

    -- * DefaultAction
    DefaultAction (..),
    newDefaultAction,
    defaultAction_allow,
    defaultAction_block,

    -- * ExcludedRule
    ExcludedRule (..),
    newExcludedRule,
    excludedRule_name,

    -- * FieldToMatch
    FieldToMatch (..),
    newFieldToMatch,
    fieldToMatch_uriPath,
    fieldToMatch_method,
    fieldToMatch_headers,
    fieldToMatch_jsonBody,
    fieldToMatch_allQueryArguments,
    fieldToMatch_body,
    fieldToMatch_singleHeader,
    fieldToMatch_cookies,
    fieldToMatch_queryString,
    fieldToMatch_singleQueryArgument,

    -- * Filter
    Filter (..),
    newFilter,
    filter_behavior,
    filter_requirement,
    filter_conditions,

    -- * FirewallManagerRuleGroup
    FirewallManagerRuleGroup (..),
    newFirewallManagerRuleGroup,
    firewallManagerRuleGroup_name,
    firewallManagerRuleGroup_priority,
    firewallManagerRuleGroup_firewallManagerStatement,
    firewallManagerRuleGroup_overrideAction,
    firewallManagerRuleGroup_visibilityConfig,

    -- * FirewallManagerStatement
    FirewallManagerStatement (..),
    newFirewallManagerStatement,
    firewallManagerStatement_ruleGroupReferenceStatement,
    firewallManagerStatement_managedRuleGroupStatement,

    -- * ForwardedIPConfig
    ForwardedIPConfig (..),
    newForwardedIPConfig,
    forwardedIPConfig_headerName,
    forwardedIPConfig_fallbackBehavior,

    -- * GeoMatchStatement
    GeoMatchStatement (..),
    newGeoMatchStatement,
    geoMatchStatement_countryCodes,
    geoMatchStatement_forwardedIPConfig,

    -- * HTTPHeader
    HTTPHeader (..),
    newHTTPHeader,
    hTTPHeader_name,
    hTTPHeader_value,

    -- * HTTPRequest
    HTTPRequest (..),
    newHTTPRequest,
    hTTPRequest_hTTPVersion,
    hTTPRequest_method,
    hTTPRequest_headers,
    hTTPRequest_country,
    hTTPRequest_uri,
    hTTPRequest_clientIP,

    -- * HeaderMatchPattern
    HeaderMatchPattern (..),
    newHeaderMatchPattern,
    headerMatchPattern_excludedHeaders,
    headerMatchPattern_includedHeaders,
    headerMatchPattern_all,

    -- * Headers
    Headers (..),
    newHeaders,
    headers_matchPattern,
    headers_matchScope,
    headers_oversizeHandling,

    -- * IPSet
    IPSet (..),
    newIPSet,
    iPSet_description,
    iPSet_name,
    iPSet_id,
    iPSet_arn,
    iPSet_iPAddressVersion,
    iPSet_addresses,

    -- * IPSetForwardedIPConfig
    IPSetForwardedIPConfig (..),
    newIPSetForwardedIPConfig,
    iPSetForwardedIPConfig_headerName,
    iPSetForwardedIPConfig_fallbackBehavior,
    iPSetForwardedIPConfig_position,

    -- * IPSetReferenceStatement
    IPSetReferenceStatement (..),
    newIPSetReferenceStatement,
    iPSetReferenceStatement_iPSetForwardedIPConfig,
    iPSetReferenceStatement_arn,

    -- * IPSetSummary
    IPSetSummary (..),
    newIPSetSummary,
    iPSetSummary_name,
    iPSetSummary_arn,
    iPSetSummary_id,
    iPSetSummary_description,
    iPSetSummary_lockToken,

    -- * ImmunityTimeProperty
    ImmunityTimeProperty (..),
    newImmunityTimeProperty,
    immunityTimeProperty_immunityTime,

    -- * JsonBody
    JsonBody (..),
    newJsonBody,
    jsonBody_invalidFallbackBehavior,
    jsonBody_oversizeHandling,
    jsonBody_matchPattern,
    jsonBody_matchScope,

    -- * JsonMatchPattern
    JsonMatchPattern (..),
    newJsonMatchPattern,
    jsonMatchPattern_all,
    jsonMatchPattern_includedPaths,

    -- * Label
    Label (..),
    newLabel,
    label_name,

    -- * LabelMatchStatement
    LabelMatchStatement (..),
    newLabelMatchStatement,
    labelMatchStatement_scope,
    labelMatchStatement_key,

    -- * LabelNameCondition
    LabelNameCondition (..),
    newLabelNameCondition,
    labelNameCondition_labelName,

    -- * LabelSummary
    LabelSummary (..),
    newLabelSummary,
    labelSummary_name,

    -- * LoggingConfiguration
    LoggingConfiguration (..),
    newLoggingConfiguration,
    loggingConfiguration_managedByFirewallManager,
    loggingConfiguration_loggingFilter,
    loggingConfiguration_redactedFields,
    loggingConfiguration_resourceArn,
    loggingConfiguration_logDestinationConfigs,

    -- * LoggingFilter
    LoggingFilter (..),
    newLoggingFilter,
    loggingFilter_filters,
    loggingFilter_defaultBehavior,

    -- * ManagedRuleGroupConfig
    ManagedRuleGroupConfig (..),
    newManagedRuleGroupConfig,
    managedRuleGroupConfig_passwordField,
    managedRuleGroupConfig_loginPath,
    managedRuleGroupConfig_payloadType,
    managedRuleGroupConfig_usernameField,

    -- * ManagedRuleGroupStatement
    ManagedRuleGroupStatement (..),
    newManagedRuleGroupStatement,
    managedRuleGroupStatement_managedRuleGroupConfigs,
    managedRuleGroupStatement_scopeDownStatement,
    managedRuleGroupStatement_excludedRules,
    managedRuleGroupStatement_version,
    managedRuleGroupStatement_vendorName,
    managedRuleGroupStatement_name,

    -- * ManagedRuleGroupSummary
    ManagedRuleGroupSummary (..),
    newManagedRuleGroupSummary,
    managedRuleGroupSummary_name,
    managedRuleGroupSummary_description,
    managedRuleGroupSummary_versioningSupported,
    managedRuleGroupSummary_vendorName,

    -- * ManagedRuleGroupVersion
    ManagedRuleGroupVersion (..),
    newManagedRuleGroupVersion,
    managedRuleGroupVersion_name,
    managedRuleGroupVersion_lastUpdateTimestamp,

    -- * ManagedRuleSet
    ManagedRuleSet (..),
    newManagedRuleSet,
    managedRuleSet_recommendedVersion,
    managedRuleSet_publishedVersions,
    managedRuleSet_description,
    managedRuleSet_labelNamespace,
    managedRuleSet_name,
    managedRuleSet_id,
    managedRuleSet_arn,

    -- * ManagedRuleSetSummary
    ManagedRuleSetSummary (..),
    newManagedRuleSetSummary,
    managedRuleSetSummary_name,
    managedRuleSetSummary_arn,
    managedRuleSetSummary_id,
    managedRuleSetSummary_description,
    managedRuleSetSummary_labelNamespace,
    managedRuleSetSummary_lockToken,

    -- * ManagedRuleSetVersion
    ManagedRuleSetVersion (..),
    newManagedRuleSetVersion,
    managedRuleSetVersion_lastUpdateTimestamp,
    managedRuleSetVersion_publishTimestamp,
    managedRuleSetVersion_expiryTimestamp,
    managedRuleSetVersion_forecastedLifetime,
    managedRuleSetVersion_associatedRuleGroupArn,
    managedRuleSetVersion_capacity,

    -- * Method
    Method (..),
    newMethod,

    -- * MobileSdkRelease
    MobileSdkRelease (..),
    newMobileSdkRelease,
    mobileSdkRelease_releaseVersion,
    mobileSdkRelease_tags,
    mobileSdkRelease_releaseNotes,
    mobileSdkRelease_timestamp,

    -- * NoneAction
    NoneAction (..),
    newNoneAction,

    -- * NotStatement
    NotStatement (..),
    newNotStatement,
    notStatement_statement,

    -- * OrStatement
    OrStatement (..),
    newOrStatement,
    orStatement_statements,

    -- * OverrideAction
    OverrideAction (..),
    newOverrideAction,
    overrideAction_none,
    overrideAction_count,

    -- * PasswordField
    PasswordField (..),
    newPasswordField,
    passwordField_identifier,

    -- * QueryString
    QueryString (..),
    newQueryString,

    -- * RateBasedStatement
    RateBasedStatement (..),
    newRateBasedStatement,
    rateBasedStatement_scopeDownStatement,
    rateBasedStatement_forwardedIPConfig,
    rateBasedStatement_limit,
    rateBasedStatement_aggregateKeyType,

    -- * RateBasedStatementManagedKeysIPSet
    RateBasedStatementManagedKeysIPSet (..),
    newRateBasedStatementManagedKeysIPSet,
    rateBasedStatementManagedKeysIPSet_addresses,
    rateBasedStatementManagedKeysIPSet_iPAddressVersion,

    -- * Regex
    Regex (..),
    newRegex,
    regex_regexString,

    -- * RegexMatchStatement
    RegexMatchStatement (..),
    newRegexMatchStatement,
    regexMatchStatement_regexString,
    regexMatchStatement_fieldToMatch,
    regexMatchStatement_textTransformations,

    -- * RegexPatternSet
    RegexPatternSet (..),
    newRegexPatternSet,
    regexPatternSet_name,
    regexPatternSet_arn,
    regexPatternSet_id,
    regexPatternSet_description,
    regexPatternSet_regularExpressionList,

    -- * RegexPatternSetReferenceStatement
    RegexPatternSetReferenceStatement (..),
    newRegexPatternSetReferenceStatement,
    regexPatternSetReferenceStatement_arn,
    regexPatternSetReferenceStatement_fieldToMatch,
    regexPatternSetReferenceStatement_textTransformations,

    -- * RegexPatternSetSummary
    RegexPatternSetSummary (..),
    newRegexPatternSetSummary,
    regexPatternSetSummary_name,
    regexPatternSetSummary_arn,
    regexPatternSetSummary_id,
    regexPatternSetSummary_description,
    regexPatternSetSummary_lockToken,

    -- * ReleaseSummary
    ReleaseSummary (..),
    newReleaseSummary,
    releaseSummary_releaseVersion,
    releaseSummary_timestamp,

    -- * Rule
    Rule (..),
    newRule,
    rule_captchaConfig,
    rule_overrideAction,
    rule_ruleLabels,
    rule_action,
    rule_name,
    rule_priority,
    rule_statement,
    rule_visibilityConfig,

    -- * RuleAction
    RuleAction (..),
    newRuleAction,
    ruleAction_allow,
    ruleAction_count,
    ruleAction_captcha,
    ruleAction_block,

    -- * RuleGroup
    RuleGroup (..),
    newRuleGroup,
    ruleGroup_availableLabels,
    ruleGroup_rules,
    ruleGroup_description,
    ruleGroup_labelNamespace,
    ruleGroup_customResponseBodies,
    ruleGroup_consumedLabels,
    ruleGroup_name,
    ruleGroup_id,
    ruleGroup_capacity,
    ruleGroup_arn,
    ruleGroup_visibilityConfig,

    -- * RuleGroupReferenceStatement
    RuleGroupReferenceStatement (..),
    newRuleGroupReferenceStatement,
    ruleGroupReferenceStatement_excludedRules,
    ruleGroupReferenceStatement_arn,

    -- * RuleGroupSummary
    RuleGroupSummary (..),
    newRuleGroupSummary,
    ruleGroupSummary_name,
    ruleGroupSummary_arn,
    ruleGroupSummary_id,
    ruleGroupSummary_description,
    ruleGroupSummary_lockToken,

    -- * RuleSummary
    RuleSummary (..),
    newRuleSummary,
    ruleSummary_name,
    ruleSummary_action,

    -- * SampledHTTPRequest
    SampledHTTPRequest (..),
    newSampledHTTPRequest,
    sampledHTTPRequest_timestamp,
    sampledHTTPRequest_captchaResponse,
    sampledHTTPRequest_ruleNameWithinRuleGroup,
    sampledHTTPRequest_labels,
    sampledHTTPRequest_action,
    sampledHTTPRequest_requestHeadersInserted,
    sampledHTTPRequest_responseCodeSent,
    sampledHTTPRequest_request,
    sampledHTTPRequest_weight,

    -- * SingleHeader
    SingleHeader (..),
    newSingleHeader,
    singleHeader_name,

    -- * SingleQueryArgument
    SingleQueryArgument (..),
    newSingleQueryArgument,
    singleQueryArgument_name,

    -- * SizeConstraintStatement
    SizeConstraintStatement (..),
    newSizeConstraintStatement,
    sizeConstraintStatement_fieldToMatch,
    sizeConstraintStatement_comparisonOperator,
    sizeConstraintStatement_size,
    sizeConstraintStatement_textTransformations,

    -- * SqliMatchStatement
    SqliMatchStatement (..),
    newSqliMatchStatement,
    sqliMatchStatement_sensitivityLevel,
    sqliMatchStatement_fieldToMatch,
    sqliMatchStatement_textTransformations,

    -- * Statement
    Statement (..),
    newStatement,
    statement_ruleGroupReferenceStatement,
    statement_sqliMatchStatement,
    statement_xssMatchStatement,
    statement_managedRuleGroupStatement,
    statement_regexPatternSetReferenceStatement,
    statement_rateBasedStatement,
    statement_notStatement,
    statement_geoMatchStatement,
    statement_orStatement,
    statement_sizeConstraintStatement,
    statement_byteMatchStatement,
    statement_labelMatchStatement,
    statement_regexMatchStatement,
    statement_andStatement,
    statement_iPSetReferenceStatement,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TagInfoForResource
    TagInfoForResource (..),
    newTagInfoForResource,
    tagInfoForResource_tagList,
    tagInfoForResource_resourceARN,

    -- * TextTransformation
    TextTransformation (..),
    newTextTransformation,
    textTransformation_priority,
    textTransformation_type,

    -- * TimeWindow
    TimeWindow (..),
    newTimeWindow,
    timeWindow_startTime,
    timeWindow_endTime,

    -- * UriPath
    UriPath (..),
    newUriPath,

    -- * UsernameField
    UsernameField (..),
    newUsernameField,
    usernameField_identifier,

    -- * VersionToPublish
    VersionToPublish (..),
    newVersionToPublish,
    versionToPublish_forecastedLifetime,
    versionToPublish_associatedRuleGroupArn,

    -- * VisibilityConfig
    VisibilityConfig (..),
    newVisibilityConfig,
    visibilityConfig_sampledRequestsEnabled,
    visibilityConfig_cloudWatchMetricsEnabled,
    visibilityConfig_metricName,

    -- * WebACL
    WebACL (..),
    newWebACL,
    webACL_managedByFirewallManager,
    webACL_captchaConfig,
    webACL_rules,
    webACL_preProcessFirewallManagerRuleGroups,
    webACL_description,
    webACL_labelNamespace,
    webACL_customResponseBodies,
    webACL_capacity,
    webACL_postProcessFirewallManagerRuleGroups,
    webACL_name,
    webACL_id,
    webACL_arn,
    webACL_defaultAction,
    webACL_visibilityConfig,

    -- * WebACLSummary
    WebACLSummary (..),
    newWebACLSummary,
    webACLSummary_name,
    webACLSummary_arn,
    webACLSummary_id,
    webACLSummary_description,
    webACLSummary_lockToken,

    -- * XssMatchStatement
    XssMatchStatement (..),
    newXssMatchStatement,
    xssMatchStatement_fieldToMatch,
    xssMatchStatement_textTransformations,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign
import Amazonka.WAFV2.Types.ActionCondition
import Amazonka.WAFV2.Types.ActionValue
import Amazonka.WAFV2.Types.All
import Amazonka.WAFV2.Types.AllQueryArguments
import Amazonka.WAFV2.Types.AllowAction
import Amazonka.WAFV2.Types.AndStatement
import Amazonka.WAFV2.Types.BlockAction
import Amazonka.WAFV2.Types.Body
import Amazonka.WAFV2.Types.BodyParsingFallbackBehavior
import Amazonka.WAFV2.Types.ByteMatchStatement
import Amazonka.WAFV2.Types.CaptchaAction
import Amazonka.WAFV2.Types.CaptchaConfig
import Amazonka.WAFV2.Types.CaptchaResponse
import Amazonka.WAFV2.Types.ComparisonOperator
import Amazonka.WAFV2.Types.Condition
import Amazonka.WAFV2.Types.CookieMatchPattern
import Amazonka.WAFV2.Types.Cookies
import Amazonka.WAFV2.Types.CountAction
import Amazonka.WAFV2.Types.CountryCode
import Amazonka.WAFV2.Types.CustomHTTPHeader
import Amazonka.WAFV2.Types.CustomRequestHandling
import Amazonka.WAFV2.Types.CustomResponse
import Amazonka.WAFV2.Types.CustomResponseBody
import Amazonka.WAFV2.Types.DefaultAction
import Amazonka.WAFV2.Types.ExcludedRule
import Amazonka.WAFV2.Types.FailureReason
import Amazonka.WAFV2.Types.FallbackBehavior
import Amazonka.WAFV2.Types.FieldToMatch
import Amazonka.WAFV2.Types.Filter
import Amazonka.WAFV2.Types.FilterBehavior
import Amazonka.WAFV2.Types.FilterRequirement
import Amazonka.WAFV2.Types.FirewallManagerRuleGroup
import Amazonka.WAFV2.Types.FirewallManagerStatement
import Amazonka.WAFV2.Types.ForwardedIPConfig
import Amazonka.WAFV2.Types.ForwardedIPPosition
import Amazonka.WAFV2.Types.GeoMatchStatement
import Amazonka.WAFV2.Types.HTTPHeader
import Amazonka.WAFV2.Types.HTTPRequest
import Amazonka.WAFV2.Types.HeaderMatchPattern
import Amazonka.WAFV2.Types.Headers
import Amazonka.WAFV2.Types.IPAddressVersion
import Amazonka.WAFV2.Types.IPSet
import Amazonka.WAFV2.Types.IPSetForwardedIPConfig
import Amazonka.WAFV2.Types.IPSetReferenceStatement
import Amazonka.WAFV2.Types.IPSetSummary
import Amazonka.WAFV2.Types.ImmunityTimeProperty
import Amazonka.WAFV2.Types.JsonBody
import Amazonka.WAFV2.Types.JsonMatchPattern
import Amazonka.WAFV2.Types.JsonMatchScope
import Amazonka.WAFV2.Types.Label
import Amazonka.WAFV2.Types.LabelMatchScope
import Amazonka.WAFV2.Types.LabelMatchStatement
import Amazonka.WAFV2.Types.LabelNameCondition
import Amazonka.WAFV2.Types.LabelSummary
import Amazonka.WAFV2.Types.LoggingConfiguration
import Amazonka.WAFV2.Types.LoggingFilter
import Amazonka.WAFV2.Types.ManagedRuleGroupConfig
import Amazonka.WAFV2.Types.ManagedRuleGroupStatement
import Amazonka.WAFV2.Types.ManagedRuleGroupSummary
import Amazonka.WAFV2.Types.ManagedRuleGroupVersion
import Amazonka.WAFV2.Types.ManagedRuleSet
import Amazonka.WAFV2.Types.ManagedRuleSetSummary
import Amazonka.WAFV2.Types.ManagedRuleSetVersion
import Amazonka.WAFV2.Types.MapMatchScope
import Amazonka.WAFV2.Types.Method
import Amazonka.WAFV2.Types.MobileSdkRelease
import Amazonka.WAFV2.Types.NoneAction
import Amazonka.WAFV2.Types.NotStatement
import Amazonka.WAFV2.Types.OrStatement
import Amazonka.WAFV2.Types.OverrideAction
import Amazonka.WAFV2.Types.OversizeHandling
import Amazonka.WAFV2.Types.PasswordField
import Amazonka.WAFV2.Types.PayloadType
import Amazonka.WAFV2.Types.Platform
import Amazonka.WAFV2.Types.PositionalConstraint
import Amazonka.WAFV2.Types.QueryString
import Amazonka.WAFV2.Types.RateBasedStatement
import Amazonka.WAFV2.Types.RateBasedStatementAggregateKeyType
import Amazonka.WAFV2.Types.RateBasedStatementManagedKeysIPSet
import Amazonka.WAFV2.Types.Regex
import Amazonka.WAFV2.Types.RegexMatchStatement
import Amazonka.WAFV2.Types.RegexPatternSet
import Amazonka.WAFV2.Types.RegexPatternSetReferenceStatement
import Amazonka.WAFV2.Types.RegexPatternSetSummary
import Amazonka.WAFV2.Types.ReleaseSummary
import Amazonka.WAFV2.Types.ResourceType
import Amazonka.WAFV2.Types.ResponseContentType
import Amazonka.WAFV2.Types.Rule
import Amazonka.WAFV2.Types.RuleAction
import Amazonka.WAFV2.Types.RuleGroup
import Amazonka.WAFV2.Types.RuleGroupReferenceStatement
import Amazonka.WAFV2.Types.RuleGroupSummary
import Amazonka.WAFV2.Types.RuleSummary
import Amazonka.WAFV2.Types.SampledHTTPRequest
import Amazonka.WAFV2.Types.Scope
import Amazonka.WAFV2.Types.SensitivityLevel
import Amazonka.WAFV2.Types.SingleHeader
import Amazonka.WAFV2.Types.SingleQueryArgument
import Amazonka.WAFV2.Types.SizeConstraintStatement
import Amazonka.WAFV2.Types.SqliMatchStatement
import Amazonka.WAFV2.Types.Statement
import Amazonka.WAFV2.Types.Tag
import Amazonka.WAFV2.Types.TagInfoForResource
import Amazonka.WAFV2.Types.TextTransformation
import Amazonka.WAFV2.Types.TextTransformationType
import Amazonka.WAFV2.Types.TimeWindow
import Amazonka.WAFV2.Types.UriPath
import Amazonka.WAFV2.Types.UsernameField
import Amazonka.WAFV2.Types.VersionToPublish
import Amazonka.WAFV2.Types.VisibilityConfig
import Amazonka.WAFV2.Types.WebACL
import Amazonka.WAFV2.Types.WebACLSummary
import Amazonka.WAFV2.Types.XssMatchStatement

-- | API version @2019-07-29@ of the Amazon WAFV2 SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "WAFV2",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "wafv2",
      Core._serviceSigningName = "wafv2",
      Core._serviceVersion = "2019-07-29",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "WAFV2",
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

-- | The operation failed because you are inspecting the web request body,
-- headers, or cookies without specifying how to handle oversize
-- components. Rules that inspect the body must either provide an
-- @OversizeHandling@ configuration or they must be preceded by a
-- @SizeConstraintStatement@ that blocks the body content from being too
-- large. Rules that inspect the headers or cookies must provide an
-- @OversizeHandling@ configuration.
--
-- Provide the handling configuration and retry your operation.
--
-- Alternately, you can suppress this warning by adding the following tag
-- to the resource that you provide to this operation: @Tag@
-- (key:@WAF:OversizeFieldsHandlingConstraintOptOut@, value:@true@).
_WAFConfigurationWarningException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFConfigurationWarningException =
  Core._MatchServiceError
    defaultService
    "WAFConfigurationWarningException"

-- | WAF couldn’t retrieve a resource that you specified for this operation.
-- If you\'ve just created a resource that you\'re using in this operation,
-- you might just need to wait a few minutes. It can take from a few
-- seconds to a number of minutes for changes to propagate. Verify the
-- resources that you are specifying in your request parameters and then
-- retry the operation.
_WAFUnavailableEntityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFUnavailableEntityException =
  Core._MatchServiceError
    defaultService
    "WAFUnavailableEntityException"

-- | WAF is not able to access the service linked role. This can be caused by
-- a previous @PutLoggingConfiguration@ request, which can lock the service
-- linked role for about 20 seconds. Please try your request again. The
-- service linked role can also be locked by a previous
-- @DeleteServiceLinkedRole@ request, which can lock the role for 15
-- minutes or more. If you recently made a call to
-- @DeleteServiceLinkedRole@, wait at least 15 minutes and try the request
-- again. If you receive this same exception again, you will have to wait
-- additional time until the role is unlocked.
_WAFServiceLinkedRoleErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFServiceLinkedRoleErrorException =
  Core._MatchServiceError
    defaultService
    "WAFServiceLinkedRoleErrorException"

-- | WAF couldn’t save your changes because you tried to update or delete a
-- resource that has changed since you last retrieved it. Get the resource
-- again, make any changes you need to make to the new copy, and retry your
-- operation.
_WAFOptimisticLockException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFOptimisticLockException =
  Core._MatchServiceError
    defaultService
    "WAFOptimisticLockException"

-- | WAF couldn’t perform your tagging operation because of an internal
-- error. Retry your request.
_WAFTagOperationInternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFTagOperationInternalErrorException =
  Core._MatchServiceError
    defaultService
    "WAFTagOperationInternalErrorException"

-- | The operation failed because the specified policy isn\'t in the proper
-- format.
--
-- The policy specifications must conform to the following:
--
-- -   The policy must be composed using IAM Policy version 2012-10-17 or
--     version 2015-01-01.
--
-- -   The policy must include specifications for @Effect@, @Action@, and
--     @Principal@.
--
-- -   @Effect@ must specify @Allow@.
--
-- -   @Action@ must specify @wafv2:CreateWebACL@, @wafv2:UpdateWebACL@,
--     and @wafv2:PutFirewallManagerRuleGroups@ and may optionally specify
--     @wafv2:GetRuleGroup@. WAF rejects any extra actions or wildcard
--     actions in the policy.
--
-- -   The policy must not include a @Resource@ parameter.
--
-- For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html IAM Policies>.
_WAFInvalidPermissionPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFInvalidPermissionPolicyException =
  Core._MatchServiceError
    defaultService
    "WAFInvalidPermissionPolicyException"

-- | The operation failed because the specified version for the managed rule
-- group has expired. You can retrieve the available versions for the
-- managed rule group by calling ListAvailableManagedRuleGroupVersions.
_WAFExpiredManagedRuleGroupVersionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFExpiredManagedRuleGroupVersionException =
  Core._MatchServiceError
    defaultService
    "WAFExpiredManagedRuleGroupVersionException"

-- | You tried to use a managed rule group that\'s available by subscription,
-- but you aren\'t subscribed to it yet.
_WAFSubscriptionNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFSubscriptionNotFoundException =
  Core._MatchServiceError
    defaultService
    "WAFSubscriptionNotFoundException"

-- | WAF couldn’t perform the operation because your resource doesn\'t exist.
-- If you\'ve just created a resource that you\'re using in this operation,
-- you might just need to wait a few minutes. It can take from a few
-- seconds to a number of minutes for changes to propagate.
_WAFNonexistentItemException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFNonexistentItemException =
  Core._MatchServiceError
    defaultService
    "WAFNonexistentItemException"

-- | WAF couldn’t perform the operation because your resource is being used
-- by another resource or it’s associated with another resource.
_WAFAssociatedItemException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFAssociatedItemException =
  Core._MatchServiceError
    defaultService
    "WAFAssociatedItemException"

-- | WAF couldn’t perform the operation because the resource that you
-- requested isn’t valid. Check the resource, and try again.
_WAFInvalidResourceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFInvalidResourceException =
  Core._MatchServiceError
    defaultService
    "WAFInvalidResourceException"

-- | WAF couldn’t perform the operation because the resource that you tried
-- to save is a duplicate of an existing one.
_WAFDuplicateItemException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFDuplicateItemException =
  Core._MatchServiceError
    defaultService
    "WAFDuplicateItemException"

-- | An error occurred during the tagging operation. Retry your request.
_WAFTagOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFTagOperationException =
  Core._MatchServiceError
    defaultService
    "WAFTagOperationException"

-- | The operation failed because WAF didn\'t recognize a parameter in the
-- request. For example:
--
-- -   You specified a parameter name or value that isn\'t valid.
--
-- -   Your nested statement isn\'t valid. You might have tried to nest a
--     statement that can’t be nested.
--
-- -   You tried to update a @WebACL@ with a @DefaultAction@ that isn\'t
--     among the types available at DefaultAction.
--
-- -   Your request references an ARN that is malformed, or corresponds to
--     a resource with which a web ACL can\'t be associated.
_WAFInvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFInvalidParameterException =
  Core._MatchServiceError
    defaultService
    "WAFInvalidParameterException"

-- | The operation failed because you don\'t have the permissions that your
-- logging configuration requires. For information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/logging.html Logging web ACL traffic information>
-- in the /WAF Developer Guide/.
_WAFLogDestinationPermissionIssueException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFLogDestinationPermissionIssueException =
  Core._MatchServiceError
    defaultService
    "WAFLogDestinationPermissionIssueException"

-- | The operation isn\'t valid.
_WAFInvalidOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFInvalidOperationException =
  Core._MatchServiceError
    defaultService
    "WAFInvalidOperationException"

-- | Your request is valid, but WAF couldn’t perform the operation because of
-- a system problem. Retry your request.
_WAFInternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFInternalErrorException =
  Core._MatchServiceError
    defaultService
    "WAFInternalErrorException"

-- | WAF couldn’t perform the operation because you exceeded your resource
-- limit. For example, the maximum number of @WebACL@ objects that you can
-- create for an Amazon Web Services account. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/limits.html WAF quotas>
-- in the /WAF Developer Guide/.
_WAFLimitsExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_WAFLimitsExceededException =
  Core._MatchServiceError
    defaultService
    "WAFLimitsExceededException"

{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.TimeStreamQuery.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.TimeStreamQuery.Lens
  ( -- * Operations

    -- ** CancelQuery
    cancelQuery_queryId,
    cancelQueryResponse_cancellationMessage,
    cancelQueryResponse_httpStatus,

    -- ** CreateScheduledQuery
    createScheduledQuery_tags,
    createScheduledQuery_clientToken,
    createScheduledQuery_kmsKeyId,
    createScheduledQuery_targetConfiguration,
    createScheduledQuery_name,
    createScheduledQuery_queryString,
    createScheduledQuery_scheduleConfiguration,
    createScheduledQuery_notificationConfiguration,
    createScheduledQuery_scheduledQueryExecutionRoleArn,
    createScheduledQuery_errorReportConfiguration,
    createScheduledQueryResponse_httpStatus,
    createScheduledQueryResponse_arn,

    -- ** DeleteScheduledQuery
    deleteScheduledQuery_scheduledQueryArn,

    -- ** DescribeEndpoints
    describeEndpointsResponse_httpStatus,
    describeEndpointsResponse_endpoints,

    -- ** DescribeScheduledQuery
    describeScheduledQuery_scheduledQueryArn,
    describeScheduledQueryResponse_httpStatus,
    describeScheduledQueryResponse_scheduledQuery,

    -- ** ExecuteScheduledQuery
    executeScheduledQuery_clientToken,
    executeScheduledQuery_scheduledQueryArn,
    executeScheduledQuery_invocationTime,

    -- ** ListScheduledQueries
    listScheduledQueries_nextToken,
    listScheduledQueries_maxResults,
    listScheduledQueriesResponse_nextToken,
    listScheduledQueriesResponse_httpStatus,
    listScheduledQueriesResponse_scheduledQueries,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceARN,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tags,

    -- ** PrepareQuery
    prepareQuery_validateOnly,
    prepareQuery_queryString,
    prepareQueryResponse_httpStatus,
    prepareQueryResponse_queryString,
    prepareQueryResponse_columns,
    prepareQueryResponse_parameters,

    -- ** Query
    query_clientToken,
    query_nextToken,
    query_maxRows,
    query_queryString,
    queryResponse_nextToken,
    queryResponse_queryStatus,
    queryResponse_httpStatus,
    queryResponse_queryId,
    queryResponse_rows,
    queryResponse_columnInfo,

    -- ** TagResource
    tagResource_resourceARN,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceARN,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateScheduledQuery
    updateScheduledQuery_scheduledQueryArn,
    updateScheduledQuery_state,

    -- * Types

    -- ** ColumnInfo
    columnInfo_name,
    columnInfo_type,

    -- ** Datum
    datum_scalarValue,
    datum_timeSeriesValue,
    datum_rowValue,
    datum_nullValue,
    datum_arrayValue,

    -- ** DimensionMapping
    dimensionMapping_name,
    dimensionMapping_dimensionValueType,

    -- ** Endpoint
    endpoint_address,
    endpoint_cachePeriodInMinutes,

    -- ** ErrorReportConfiguration
    errorReportConfiguration_s3Configuration,

    -- ** ErrorReportLocation
    errorReportLocation_s3ReportLocation,

    -- ** ExecutionStats
    executionStats_dataWrites,
    executionStats_queryResultRows,
    executionStats_recordsIngested,
    executionStats_executionTimeInMillis,
    executionStats_bytesMetered,

    -- ** MixedMeasureMapping
    mixedMeasureMapping_measureName,
    mixedMeasureMapping_targetMeasureName,
    mixedMeasureMapping_sourceColumn,
    mixedMeasureMapping_multiMeasureAttributeMappings,
    mixedMeasureMapping_measureValueType,

    -- ** MultiMeasureAttributeMapping
    multiMeasureAttributeMapping_targetMultiMeasureAttributeName,
    multiMeasureAttributeMapping_sourceColumn,
    multiMeasureAttributeMapping_measureValueType,

    -- ** MultiMeasureMappings
    multiMeasureMappings_targetMultiMeasureName,
    multiMeasureMappings_multiMeasureAttributeMappings,

    -- ** NotificationConfiguration
    notificationConfiguration_snsConfiguration,

    -- ** ParameterMapping
    parameterMapping_name,
    parameterMapping_type,

    -- ** QueryStatus
    queryStatus_cumulativeBytesScanned,
    queryStatus_cumulativeBytesMetered,
    queryStatus_progressPercentage,

    -- ** Row
    row_data,

    -- ** S3Configuration
    s3Configuration_objectKeyPrefix,
    s3Configuration_encryptionOption,
    s3Configuration_bucketName,

    -- ** S3ReportLocation
    s3ReportLocation_objectKey,
    s3ReportLocation_bucketName,

    -- ** ScheduleConfiguration
    scheduleConfiguration_scheduleExpression,

    -- ** ScheduledQuery
    scheduledQuery_targetDestination,
    scheduledQuery_previousInvocationTime,
    scheduledQuery_errorReportConfiguration,
    scheduledQuery_nextInvocationTime,
    scheduledQuery_creationTime,
    scheduledQuery_lastRunStatus,
    scheduledQuery_arn,
    scheduledQuery_name,
    scheduledQuery_state,

    -- ** ScheduledQueryDescription
    scheduledQueryDescription_recentlyFailedRuns,
    scheduledQueryDescription_lastRunSummary,
    scheduledQueryDescription_previousInvocationTime,
    scheduledQueryDescription_errorReportConfiguration,
    scheduledQueryDescription_scheduledQueryExecutionRoleArn,
    scheduledQueryDescription_kmsKeyId,
    scheduledQueryDescription_targetConfiguration,
    scheduledQueryDescription_nextInvocationTime,
    scheduledQueryDescription_creationTime,
    scheduledQueryDescription_arn,
    scheduledQueryDescription_name,
    scheduledQueryDescription_queryString,
    scheduledQueryDescription_state,
    scheduledQueryDescription_scheduleConfiguration,
    scheduledQueryDescription_notificationConfiguration,

    -- ** ScheduledQueryRunSummary
    scheduledQueryRunSummary_errorReportLocation,
    scheduledQueryRunSummary_invocationTime,
    scheduledQueryRunSummary_runStatus,
    scheduledQueryRunSummary_executionStats,
    scheduledQueryRunSummary_triggerTime,
    scheduledQueryRunSummary_failureReason,

    -- ** SelectColumn
    selectColumn_tableName,
    selectColumn_name,
    selectColumn_type,
    selectColumn_databaseName,
    selectColumn_aliased,

    -- ** SnsConfiguration
    snsConfiguration_topicArn,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TargetConfiguration
    targetConfiguration_timestreamConfiguration,

    -- ** TargetDestination
    targetDestination_timestreamDestination,

    -- ** TimeSeriesDataPoint
    timeSeriesDataPoint_time,
    timeSeriesDataPoint_value,

    -- ** TimestreamConfiguration
    timestreamConfiguration_measureNameColumn,
    timestreamConfiguration_mixedMeasureMappings,
    timestreamConfiguration_multiMeasureMappings,
    timestreamConfiguration_databaseName,
    timestreamConfiguration_tableName,
    timestreamConfiguration_timeColumn,
    timestreamConfiguration_dimensionMappings,

    -- ** TimestreamDestination
    timestreamDestination_tableName,
    timestreamDestination_databaseName,

    -- ** Type
    type_arrayColumnInfo,
    type_scalarType,
    type_timeSeriesMeasureValueColumnInfo,
    type_rowColumnInfo,
  )
where

import Amazonka.TimeStreamQuery.CancelQuery
import Amazonka.TimeStreamQuery.CreateScheduledQuery
import Amazonka.TimeStreamQuery.DeleteScheduledQuery
import Amazonka.TimeStreamQuery.DescribeEndpoints
import Amazonka.TimeStreamQuery.DescribeScheduledQuery
import Amazonka.TimeStreamQuery.ExecuteScheduledQuery
import Amazonka.TimeStreamQuery.ListScheduledQueries
import Amazonka.TimeStreamQuery.ListTagsForResource
import Amazonka.TimeStreamQuery.PrepareQuery
import Amazonka.TimeStreamQuery.Query
import Amazonka.TimeStreamQuery.TagResource
import Amazonka.TimeStreamQuery.Types.ColumnInfo
import Amazonka.TimeStreamQuery.Types.Datum
import Amazonka.TimeStreamQuery.Types.DimensionMapping
import Amazonka.TimeStreamQuery.Types.Endpoint
import Amazonka.TimeStreamQuery.Types.ErrorReportConfiguration
import Amazonka.TimeStreamQuery.Types.ErrorReportLocation
import Amazonka.TimeStreamQuery.Types.ExecutionStats
import Amazonka.TimeStreamQuery.Types.MixedMeasureMapping
import Amazonka.TimeStreamQuery.Types.MultiMeasureAttributeMapping
import Amazonka.TimeStreamQuery.Types.MultiMeasureMappings
import Amazonka.TimeStreamQuery.Types.NotificationConfiguration
import Amazonka.TimeStreamQuery.Types.ParameterMapping
import Amazonka.TimeStreamQuery.Types.QueryStatus
import Amazonka.TimeStreamQuery.Types.Row
import Amazonka.TimeStreamQuery.Types.S3Configuration
import Amazonka.TimeStreamQuery.Types.S3ReportLocation
import Amazonka.TimeStreamQuery.Types.ScheduleConfiguration
import Amazonka.TimeStreamQuery.Types.ScheduledQuery
import Amazonka.TimeStreamQuery.Types.ScheduledQueryDescription
import Amazonka.TimeStreamQuery.Types.ScheduledQueryRunSummary
import Amazonka.TimeStreamQuery.Types.SelectColumn
import Amazonka.TimeStreamQuery.Types.SnsConfiguration
import Amazonka.TimeStreamQuery.Types.Tag
import Amazonka.TimeStreamQuery.Types.TargetConfiguration
import Amazonka.TimeStreamQuery.Types.TargetDestination
import Amazonka.TimeStreamQuery.Types.TimeSeriesDataPoint
import Amazonka.TimeStreamQuery.Types.TimestreamConfiguration
import Amazonka.TimeStreamQuery.Types.TimestreamDestination
import Amazonka.TimeStreamQuery.Types.Type
import Amazonka.TimeStreamQuery.UntagResource
import Amazonka.TimeStreamQuery.UpdateScheduledQuery

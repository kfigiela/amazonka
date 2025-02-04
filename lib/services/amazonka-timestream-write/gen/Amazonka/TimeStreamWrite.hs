{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.TimeStreamWrite
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-11-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Timestream Write
--
-- Amazon Timestream is a fast, scalable, fully managed time series
-- database service that makes it easy to store and analyze trillions of
-- time series data points per day. With Timestream, you can easily store
-- and analyze IoT sensor data to derive insights from your IoT
-- applications. You can analyze industrial telemetry to streamline
-- equipment management and maintenance. You can also store and analyze log
-- data and metrics to improve the performance and availability of your
-- applications. Timestream is built from the ground up to effectively
-- ingest, process, and store time series data. It organizes data to
-- optimize query processing. It automatically scales based on the volume
-- of data ingested and on the query volume to ensure you receive optimal
-- performance while inserting and querying data. As your data grows over
-- time, Timestream’s adaptive query processing engine spans across storage
-- tiers to provide fast analysis while reducing costs.
module Amazonka.TimeStreamWrite
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

    -- ** InvalidEndpointException
    _InvalidEndpointException,

    -- ** RejectedRecordsException
    _RejectedRecordsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateDatabase
    CreateDatabase (CreateDatabase'),
    newCreateDatabase,
    CreateDatabaseResponse (CreateDatabaseResponse'),
    newCreateDatabaseResponse,

    -- ** CreateTable
    CreateTable (CreateTable'),
    newCreateTable,
    CreateTableResponse (CreateTableResponse'),
    newCreateTableResponse,

    -- ** DeleteDatabase
    DeleteDatabase (DeleteDatabase'),
    newDeleteDatabase,
    DeleteDatabaseResponse (DeleteDatabaseResponse'),
    newDeleteDatabaseResponse,

    -- ** DeleteTable
    DeleteTable (DeleteTable'),
    newDeleteTable,
    DeleteTableResponse (DeleteTableResponse'),
    newDeleteTableResponse,

    -- ** DescribeDatabase
    DescribeDatabase (DescribeDatabase'),
    newDescribeDatabase,
    DescribeDatabaseResponse (DescribeDatabaseResponse'),
    newDescribeDatabaseResponse,

    -- ** DescribeEndpoints
    DescribeEndpoints (DescribeEndpoints'),
    newDescribeEndpoints,
    DescribeEndpointsResponse (DescribeEndpointsResponse'),
    newDescribeEndpointsResponse,

    -- ** DescribeTable
    DescribeTable (DescribeTable'),
    newDescribeTable,
    DescribeTableResponse (DescribeTableResponse'),
    newDescribeTableResponse,

    -- ** ListDatabases
    ListDatabases (ListDatabases'),
    newListDatabases,
    ListDatabasesResponse (ListDatabasesResponse'),
    newListDatabasesResponse,

    -- ** ListTables
    ListTables (ListTables'),
    newListTables,
    ListTablesResponse (ListTablesResponse'),
    newListTablesResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateDatabase
    UpdateDatabase (UpdateDatabase'),
    newUpdateDatabase,
    UpdateDatabaseResponse (UpdateDatabaseResponse'),
    newUpdateDatabaseResponse,

    -- ** UpdateTable
    UpdateTable (UpdateTable'),
    newUpdateTable,
    UpdateTableResponse (UpdateTableResponse'),
    newUpdateTableResponse,

    -- ** WriteRecords
    WriteRecords (WriteRecords'),
    newWriteRecords,
    WriteRecordsResponse (WriteRecordsResponse'),
    newWriteRecordsResponse,

    -- * Types

    -- ** DimensionValueType
    DimensionValueType (..),

    -- ** MeasureValueType
    MeasureValueType (..),

    -- ** S3EncryptionOption
    S3EncryptionOption (..),

    -- ** TableStatus
    TableStatus (..),

    -- ** TimeUnit
    TimeUnit (..),

    -- ** Database
    Database (Database'),
    newDatabase,

    -- ** Dimension
    Dimension (Dimension'),
    newDimension,

    -- ** Endpoint
    Endpoint (Endpoint'),
    newEndpoint,

    -- ** MagneticStoreRejectedDataLocation
    MagneticStoreRejectedDataLocation (MagneticStoreRejectedDataLocation'),
    newMagneticStoreRejectedDataLocation,

    -- ** MagneticStoreWriteProperties
    MagneticStoreWriteProperties (MagneticStoreWriteProperties'),
    newMagneticStoreWriteProperties,

    -- ** MeasureValue
    MeasureValue (MeasureValue'),
    newMeasureValue,

    -- ** Record
    Record (Record'),
    newRecord,

    -- ** RecordsIngested
    RecordsIngested (RecordsIngested'),
    newRecordsIngested,

    -- ** RetentionProperties
    RetentionProperties (RetentionProperties'),
    newRetentionProperties,

    -- ** S3Configuration
    S3Configuration (S3Configuration'),
    newS3Configuration,

    -- ** Table
    Table (Table'),
    newTable,

    -- ** Tag
    Tag (Tag'),
    newTag,
  )
where

import Amazonka.TimeStreamWrite.CreateDatabase
import Amazonka.TimeStreamWrite.CreateTable
import Amazonka.TimeStreamWrite.DeleteDatabase
import Amazonka.TimeStreamWrite.DeleteTable
import Amazonka.TimeStreamWrite.DescribeDatabase
import Amazonka.TimeStreamWrite.DescribeEndpoints
import Amazonka.TimeStreamWrite.DescribeTable
import Amazonka.TimeStreamWrite.Lens
import Amazonka.TimeStreamWrite.ListDatabases
import Amazonka.TimeStreamWrite.ListTables
import Amazonka.TimeStreamWrite.ListTagsForResource
import Amazonka.TimeStreamWrite.TagResource
import Amazonka.TimeStreamWrite.Types
import Amazonka.TimeStreamWrite.UntagResource
import Amazonka.TimeStreamWrite.UpdateDatabase
import Amazonka.TimeStreamWrite.UpdateTable
import Amazonka.TimeStreamWrite.Waiters
import Amazonka.TimeStreamWrite.WriteRecords

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'TimeStreamWrite'.

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

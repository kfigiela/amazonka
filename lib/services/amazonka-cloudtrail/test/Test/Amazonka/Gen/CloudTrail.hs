{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.CloudTrail
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.CloudTrail where

import Amazonka.CloudTrail
import qualified Data.Proxy as Proxy
import Test.Amazonka.CloudTrail.Internal
import Test.Amazonka.Fixture
import Test.Amazonka.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestAddTags $
--             newAddTags
--
--         , requestCancelQuery $
--             newCancelQuery
--
--         , requestCreateEventDataStore $
--             newCreateEventDataStore
--
--         , requestCreateTrail $
--             newCreateTrail
--
--         , requestDeleteEventDataStore $
--             newDeleteEventDataStore
--
--         , requestDeleteTrail $
--             newDeleteTrail
--
--         , requestDescribeQuery $
--             newDescribeQuery
--
--         , requestDescribeTrails $
--             newDescribeTrails
--
--         , requestGetChannel $
--             newGetChannel
--
--         , requestGetEventDataStore $
--             newGetEventDataStore
--
--         , requestGetEventSelectors $
--             newGetEventSelectors
--
--         , requestGetImport $
--             newGetImport
--
--         , requestGetInsightSelectors $
--             newGetInsightSelectors
--
--         , requestGetQueryResults $
--             newGetQueryResults
--
--         , requestGetTrail $
--             newGetTrail
--
--         , requestGetTrailStatus $
--             newGetTrailStatus
--
--         , requestListChannels $
--             newListChannels
--
--         , requestListEventDataStores $
--             newListEventDataStores
--
--         , requestListImportFailures $
--             newListImportFailures
--
--         , requestListImports $
--             newListImports
--
--         , requestListPublicKeys $
--             newListPublicKeys
--
--         , requestListQueries $
--             newListQueries
--
--         , requestListTags $
--             newListTags
--
--         , requestListTrails $
--             newListTrails
--
--         , requestLookupEvents $
--             newLookupEvents
--
--         , requestPutEventSelectors $
--             newPutEventSelectors
--
--         , requestPutInsightSelectors $
--             newPutInsightSelectors
--
--         , requestRemoveTags $
--             newRemoveTags
--
--         , requestRestoreEventDataStore $
--             newRestoreEventDataStore
--
--         , requestStartImport $
--             newStartImport
--
--         , requestStartLogging $
--             newStartLogging
--
--         , requestStartQuery $
--             newStartQuery
--
--         , requestStopImport $
--             newStopImport
--
--         , requestStopLogging $
--             newStopLogging
--
--         , requestUpdateEventDataStore $
--             newUpdateEventDataStore
--
--         , requestUpdateTrail $
--             newUpdateTrail
--
--           ]

--     , testGroup "response"
--         [ responseAddTags $
--             newAddTagsResponse
--
--         , responseCancelQuery $
--             newCancelQueryResponse
--
--         , responseCreateEventDataStore $
--             newCreateEventDataStoreResponse
--
--         , responseCreateTrail $
--             newCreateTrailResponse
--
--         , responseDeleteEventDataStore $
--             newDeleteEventDataStoreResponse
--
--         , responseDeleteTrail $
--             newDeleteTrailResponse
--
--         , responseDescribeQuery $
--             newDescribeQueryResponse
--
--         , responseDescribeTrails $
--             newDescribeTrailsResponse
--
--         , responseGetChannel $
--             newGetChannelResponse
--
--         , responseGetEventDataStore $
--             newGetEventDataStoreResponse
--
--         , responseGetEventSelectors $
--             newGetEventSelectorsResponse
--
--         , responseGetImport $
--             newGetImportResponse
--
--         , responseGetInsightSelectors $
--             newGetInsightSelectorsResponse
--
--         , responseGetQueryResults $
--             newGetQueryResultsResponse
--
--         , responseGetTrail $
--             newGetTrailResponse
--
--         , responseGetTrailStatus $
--             newGetTrailStatusResponse
--
--         , responseListChannels $
--             newListChannelsResponse
--
--         , responseListEventDataStores $
--             newListEventDataStoresResponse
--
--         , responseListImportFailures $
--             newListImportFailuresResponse
--
--         , responseListImports $
--             newListImportsResponse
--
--         , responseListPublicKeys $
--             newListPublicKeysResponse
--
--         , responseListQueries $
--             newListQueriesResponse
--
--         , responseListTags $
--             newListTagsResponse
--
--         , responseListTrails $
--             newListTrailsResponse
--
--         , responseLookupEvents $
--             newLookupEventsResponse
--
--         , responsePutEventSelectors $
--             newPutEventSelectorsResponse
--
--         , responsePutInsightSelectors $
--             newPutInsightSelectorsResponse
--
--         , responseRemoveTags $
--             newRemoveTagsResponse
--
--         , responseRestoreEventDataStore $
--             newRestoreEventDataStoreResponse
--
--         , responseStartImport $
--             newStartImportResponse
--
--         , responseStartLogging $
--             newStartLoggingResponse
--
--         , responseStartQuery $
--             newStartQueryResponse
--
--         , responseStopImport $
--             newStopImportResponse
--
--         , responseStopLogging $
--             newStopLoggingResponse
--
--         , responseUpdateEventDataStore $
--             newUpdateEventDataStoreResponse
--
--         , responseUpdateTrail $
--             newUpdateTrailResponse
--
--           ]
--     ]

-- Requests

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestCancelQuery :: CancelQuery -> TestTree
requestCancelQuery =
  req
    "CancelQuery"
    "fixture/CancelQuery.yaml"

requestCreateEventDataStore :: CreateEventDataStore -> TestTree
requestCreateEventDataStore =
  req
    "CreateEventDataStore"
    "fixture/CreateEventDataStore.yaml"

requestCreateTrail :: CreateTrail -> TestTree
requestCreateTrail =
  req
    "CreateTrail"
    "fixture/CreateTrail.yaml"

requestDeleteEventDataStore :: DeleteEventDataStore -> TestTree
requestDeleteEventDataStore =
  req
    "DeleteEventDataStore"
    "fixture/DeleteEventDataStore.yaml"

requestDeleteTrail :: DeleteTrail -> TestTree
requestDeleteTrail =
  req
    "DeleteTrail"
    "fixture/DeleteTrail.yaml"

requestDescribeQuery :: DescribeQuery -> TestTree
requestDescribeQuery =
  req
    "DescribeQuery"
    "fixture/DescribeQuery.yaml"

requestDescribeTrails :: DescribeTrails -> TestTree
requestDescribeTrails =
  req
    "DescribeTrails"
    "fixture/DescribeTrails.yaml"

requestGetChannel :: GetChannel -> TestTree
requestGetChannel =
  req
    "GetChannel"
    "fixture/GetChannel.yaml"

requestGetEventDataStore :: GetEventDataStore -> TestTree
requestGetEventDataStore =
  req
    "GetEventDataStore"
    "fixture/GetEventDataStore.yaml"

requestGetEventSelectors :: GetEventSelectors -> TestTree
requestGetEventSelectors =
  req
    "GetEventSelectors"
    "fixture/GetEventSelectors.yaml"

requestGetImport :: GetImport -> TestTree
requestGetImport =
  req
    "GetImport"
    "fixture/GetImport.yaml"

requestGetInsightSelectors :: GetInsightSelectors -> TestTree
requestGetInsightSelectors =
  req
    "GetInsightSelectors"
    "fixture/GetInsightSelectors.yaml"

requestGetQueryResults :: GetQueryResults -> TestTree
requestGetQueryResults =
  req
    "GetQueryResults"
    "fixture/GetQueryResults.yaml"

requestGetTrail :: GetTrail -> TestTree
requestGetTrail =
  req
    "GetTrail"
    "fixture/GetTrail.yaml"

requestGetTrailStatus :: GetTrailStatus -> TestTree
requestGetTrailStatus =
  req
    "GetTrailStatus"
    "fixture/GetTrailStatus.yaml"

requestListChannels :: ListChannels -> TestTree
requestListChannels =
  req
    "ListChannels"
    "fixture/ListChannels.yaml"

requestListEventDataStores :: ListEventDataStores -> TestTree
requestListEventDataStores =
  req
    "ListEventDataStores"
    "fixture/ListEventDataStores.yaml"

requestListImportFailures :: ListImportFailures -> TestTree
requestListImportFailures =
  req
    "ListImportFailures"
    "fixture/ListImportFailures.yaml"

requestListImports :: ListImports -> TestTree
requestListImports =
  req
    "ListImports"
    "fixture/ListImports.yaml"

requestListPublicKeys :: ListPublicKeys -> TestTree
requestListPublicKeys =
  req
    "ListPublicKeys"
    "fixture/ListPublicKeys.yaml"

requestListQueries :: ListQueries -> TestTree
requestListQueries =
  req
    "ListQueries"
    "fixture/ListQueries.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestListTrails :: ListTrails -> TestTree
requestListTrails =
  req
    "ListTrails"
    "fixture/ListTrails.yaml"

requestLookupEvents :: LookupEvents -> TestTree
requestLookupEvents =
  req
    "LookupEvents"
    "fixture/LookupEvents.yaml"

requestPutEventSelectors :: PutEventSelectors -> TestTree
requestPutEventSelectors =
  req
    "PutEventSelectors"
    "fixture/PutEventSelectors.yaml"

requestPutInsightSelectors :: PutInsightSelectors -> TestTree
requestPutInsightSelectors =
  req
    "PutInsightSelectors"
    "fixture/PutInsightSelectors.yaml"

requestRemoveTags :: RemoveTags -> TestTree
requestRemoveTags =
  req
    "RemoveTags"
    "fixture/RemoveTags.yaml"

requestRestoreEventDataStore :: RestoreEventDataStore -> TestTree
requestRestoreEventDataStore =
  req
    "RestoreEventDataStore"
    "fixture/RestoreEventDataStore.yaml"

requestStartImport :: StartImport -> TestTree
requestStartImport =
  req
    "StartImport"
    "fixture/StartImport.yaml"

requestStartLogging :: StartLogging -> TestTree
requestStartLogging =
  req
    "StartLogging"
    "fixture/StartLogging.yaml"

requestStartQuery :: StartQuery -> TestTree
requestStartQuery =
  req
    "StartQuery"
    "fixture/StartQuery.yaml"

requestStopImport :: StopImport -> TestTree
requestStopImport =
  req
    "StopImport"
    "fixture/StopImport.yaml"

requestStopLogging :: StopLogging -> TestTree
requestStopLogging =
  req
    "StopLogging"
    "fixture/StopLogging.yaml"

requestUpdateEventDataStore :: UpdateEventDataStore -> TestTree
requestUpdateEventDataStore =
  req
    "UpdateEventDataStore"
    "fixture/UpdateEventDataStore.yaml"

requestUpdateTrail :: UpdateTrail -> TestTree
requestUpdateTrail =
  req
    "UpdateTrail"
    "fixture/UpdateTrail.yaml"

-- Responses

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddTags)

responseCancelQuery :: CancelQueryResponse -> TestTree
responseCancelQuery =
  res
    "CancelQueryResponse"
    "fixture/CancelQueryResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CancelQuery)

responseCreateEventDataStore :: CreateEventDataStoreResponse -> TestTree
responseCreateEventDataStore =
  res
    "CreateEventDataStoreResponse"
    "fixture/CreateEventDataStoreResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateEventDataStore)

responseCreateTrail :: CreateTrailResponse -> TestTree
responseCreateTrail =
  res
    "CreateTrailResponse"
    "fixture/CreateTrailResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateTrail)

responseDeleteEventDataStore :: DeleteEventDataStoreResponse -> TestTree
responseDeleteEventDataStore =
  res
    "DeleteEventDataStoreResponse"
    "fixture/DeleteEventDataStoreResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteEventDataStore)

responseDeleteTrail :: DeleteTrailResponse -> TestTree
responseDeleteTrail =
  res
    "DeleteTrailResponse"
    "fixture/DeleteTrailResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteTrail)

responseDescribeQuery :: DescribeQueryResponse -> TestTree
responseDescribeQuery =
  res
    "DescribeQueryResponse"
    "fixture/DescribeQueryResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeQuery)

responseDescribeTrails :: DescribeTrailsResponse -> TestTree
responseDescribeTrails =
  res
    "DescribeTrailsResponse"
    "fixture/DescribeTrailsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeTrails)

responseGetChannel :: GetChannelResponse -> TestTree
responseGetChannel =
  res
    "GetChannelResponse"
    "fixture/GetChannelResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetChannel)

responseGetEventDataStore :: GetEventDataStoreResponse -> TestTree
responseGetEventDataStore =
  res
    "GetEventDataStoreResponse"
    "fixture/GetEventDataStoreResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetEventDataStore)

responseGetEventSelectors :: GetEventSelectorsResponse -> TestTree
responseGetEventSelectors =
  res
    "GetEventSelectorsResponse"
    "fixture/GetEventSelectorsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetEventSelectors)

responseGetImport :: GetImportResponse -> TestTree
responseGetImport =
  res
    "GetImportResponse"
    "fixture/GetImportResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetImport)

responseGetInsightSelectors :: GetInsightSelectorsResponse -> TestTree
responseGetInsightSelectors =
  res
    "GetInsightSelectorsResponse"
    "fixture/GetInsightSelectorsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetInsightSelectors)

responseGetQueryResults :: GetQueryResultsResponse -> TestTree
responseGetQueryResults =
  res
    "GetQueryResultsResponse"
    "fixture/GetQueryResultsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetQueryResults)

responseGetTrail :: GetTrailResponse -> TestTree
responseGetTrail =
  res
    "GetTrailResponse"
    "fixture/GetTrailResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetTrail)

responseGetTrailStatus :: GetTrailStatusResponse -> TestTree
responseGetTrailStatus =
  res
    "GetTrailStatusResponse"
    "fixture/GetTrailStatusResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetTrailStatus)

responseListChannels :: ListChannelsResponse -> TestTree
responseListChannels =
  res
    "ListChannelsResponse"
    "fixture/ListChannelsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListChannels)

responseListEventDataStores :: ListEventDataStoresResponse -> TestTree
responseListEventDataStores =
  res
    "ListEventDataStoresResponse"
    "fixture/ListEventDataStoresResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListEventDataStores)

responseListImportFailures :: ListImportFailuresResponse -> TestTree
responseListImportFailures =
  res
    "ListImportFailuresResponse"
    "fixture/ListImportFailuresResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListImportFailures)

responseListImports :: ListImportsResponse -> TestTree
responseListImports =
  res
    "ListImportsResponse"
    "fixture/ListImportsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListImports)

responseListPublicKeys :: ListPublicKeysResponse -> TestTree
responseListPublicKeys =
  res
    "ListPublicKeysResponse"
    "fixture/ListPublicKeysResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListPublicKeys)

responseListQueries :: ListQueriesResponse -> TestTree
responseListQueries =
  res
    "ListQueriesResponse"
    "fixture/ListQueriesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListQueries)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTags)

responseListTrails :: ListTrailsResponse -> TestTree
responseListTrails =
  res
    "ListTrailsResponse"
    "fixture/ListTrailsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTrails)

responseLookupEvents :: LookupEventsResponse -> TestTree
responseLookupEvents =
  res
    "LookupEventsResponse"
    "fixture/LookupEventsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy LookupEvents)

responsePutEventSelectors :: PutEventSelectorsResponse -> TestTree
responsePutEventSelectors =
  res
    "PutEventSelectorsResponse"
    "fixture/PutEventSelectorsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy PutEventSelectors)

responsePutInsightSelectors :: PutInsightSelectorsResponse -> TestTree
responsePutInsightSelectors =
  res
    "PutInsightSelectorsResponse"
    "fixture/PutInsightSelectorsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy PutInsightSelectors)

responseRemoveTags :: RemoveTagsResponse -> TestTree
responseRemoveTags =
  res
    "RemoveTagsResponse"
    "fixture/RemoveTagsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy RemoveTags)

responseRestoreEventDataStore :: RestoreEventDataStoreResponse -> TestTree
responseRestoreEventDataStore =
  res
    "RestoreEventDataStoreResponse"
    "fixture/RestoreEventDataStoreResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy RestoreEventDataStore)

responseStartImport :: StartImportResponse -> TestTree
responseStartImport =
  res
    "StartImportResponse"
    "fixture/StartImportResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartImport)

responseStartLogging :: StartLoggingResponse -> TestTree
responseStartLogging =
  res
    "StartLoggingResponse"
    "fixture/StartLoggingResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartLogging)

responseStartQuery :: StartQueryResponse -> TestTree
responseStartQuery =
  res
    "StartQueryResponse"
    "fixture/StartQueryResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartQuery)

responseStopImport :: StopImportResponse -> TestTree
responseStopImport =
  res
    "StopImportResponse"
    "fixture/StopImportResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StopImport)

responseStopLogging :: StopLoggingResponse -> TestTree
responseStopLogging =
  res
    "StopLoggingResponse"
    "fixture/StopLoggingResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StopLogging)

responseUpdateEventDataStore :: UpdateEventDataStoreResponse -> TestTree
responseUpdateEventDataStore =
  res
    "UpdateEventDataStoreResponse"
    "fixture/UpdateEventDataStoreResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateEventDataStore)

responseUpdateTrail :: UpdateTrailResponse -> TestTree
responseUpdateTrail =
  res
    "UpdateTrailResponse"
    "fixture/UpdateTrailResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateTrail)

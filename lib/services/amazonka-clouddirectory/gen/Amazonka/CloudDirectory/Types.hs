{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudDirectory.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudDirectory.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidAttachmentException,
    _SchemaAlreadyPublishedException,
    _DirectoryAlreadyExistsException,
    _InvalidFacetUpdateException,
    _DirectoryDeletedException,
    _FacetValidationException,
    _CannotListParentOfRootException,
    _AccessDeniedException,
    _IndexedAttributeMissingException,
    _DirectoryNotDisabledException,
    _IncompatibleSchemaException,
    _ObjectAlreadyDetachedException,
    _SchemaAlreadyExistsException,
    _ResourceNotFoundException,
    _LinkNameAlreadyInUseException,
    _DirectoryNotEnabledException,
    _FacetInUseException,
    _FacetNotFoundException,
    _LimitExceededException,
    _InvalidSchemaDocException,
    _FacetAlreadyExistsException,
    _InvalidNextTokenException,
    _NotIndexException,
    _InvalidTaggingRequestException,
    _InvalidArnException,
    _NotNodeException,
    _StillContainsLinksException,
    _ValidationException,
    _InternalServiceException,
    _ObjectNotDetachedException,
    _InvalidRuleException,
    _RetryableConflictException,
    _UnsupportedIndexTypeException,
    _BatchWriteException,
    _NotPolicyException,

    -- * BatchReadExceptionType
    BatchReadExceptionType (..),

    -- * ConsistencyLevel
    ConsistencyLevel (..),

    -- * DirectoryState
    DirectoryState (..),

    -- * FacetAttributeType
    FacetAttributeType (..),

    -- * FacetStyle
    FacetStyle (..),

    -- * ObjectType
    ObjectType (..),

    -- * RangeMode
    RangeMode (..),

    -- * RequiredAttributeBehavior
    RequiredAttributeBehavior (..),

    -- * RuleType
    RuleType (..),

    -- * UpdateActionType
    UpdateActionType (..),

    -- * AttributeKey
    AttributeKey (..),
    newAttributeKey,
    attributeKey_schemaArn,
    attributeKey_facetName,
    attributeKey_name,

    -- * AttributeKeyAndValue
    AttributeKeyAndValue (..),
    newAttributeKeyAndValue,
    attributeKeyAndValue_key,
    attributeKeyAndValue_value,

    -- * AttributeNameAndValue
    AttributeNameAndValue (..),
    newAttributeNameAndValue,
    attributeNameAndValue_attributeName,
    attributeNameAndValue_value,

    -- * BatchAddFacetToObject
    BatchAddFacetToObject (..),
    newBatchAddFacetToObject,
    batchAddFacetToObject_schemaFacet,
    batchAddFacetToObject_objectAttributeList,
    batchAddFacetToObject_objectReference,

    -- * BatchAddFacetToObjectResponse
    BatchAddFacetToObjectResponse (..),
    newBatchAddFacetToObjectResponse,

    -- * BatchAttachObject
    BatchAttachObject (..),
    newBatchAttachObject,
    batchAttachObject_parentReference,
    batchAttachObject_childReference,
    batchAttachObject_linkName,

    -- * BatchAttachObjectResponse
    BatchAttachObjectResponse (..),
    newBatchAttachObjectResponse,
    batchAttachObjectResponse_attachedObjectIdentifier,

    -- * BatchAttachPolicy
    BatchAttachPolicy (..),
    newBatchAttachPolicy,
    batchAttachPolicy_policyReference,
    batchAttachPolicy_objectReference,

    -- * BatchAttachPolicyResponse
    BatchAttachPolicyResponse (..),
    newBatchAttachPolicyResponse,

    -- * BatchAttachToIndex
    BatchAttachToIndex (..),
    newBatchAttachToIndex,
    batchAttachToIndex_indexReference,
    batchAttachToIndex_targetReference,

    -- * BatchAttachToIndexResponse
    BatchAttachToIndexResponse (..),
    newBatchAttachToIndexResponse,
    batchAttachToIndexResponse_attachedObjectIdentifier,

    -- * BatchAttachTypedLink
    BatchAttachTypedLink (..),
    newBatchAttachTypedLink,
    batchAttachTypedLink_sourceObjectReference,
    batchAttachTypedLink_targetObjectReference,
    batchAttachTypedLink_typedLinkFacet,
    batchAttachTypedLink_attributes,

    -- * BatchAttachTypedLinkResponse
    BatchAttachTypedLinkResponse (..),
    newBatchAttachTypedLinkResponse,
    batchAttachTypedLinkResponse_typedLinkSpecifier,

    -- * BatchCreateIndex
    BatchCreateIndex (..),
    newBatchCreateIndex,
    batchCreateIndex_batchReferenceName,
    batchCreateIndex_parentReference,
    batchCreateIndex_linkName,
    batchCreateIndex_orderedIndexedAttributeList,
    batchCreateIndex_isUnique,

    -- * BatchCreateIndexResponse
    BatchCreateIndexResponse (..),
    newBatchCreateIndexResponse,
    batchCreateIndexResponse_objectIdentifier,

    -- * BatchCreateObject
    BatchCreateObject (..),
    newBatchCreateObject,
    batchCreateObject_batchReferenceName,
    batchCreateObject_parentReference,
    batchCreateObject_linkName,
    batchCreateObject_schemaFacet,
    batchCreateObject_objectAttributeList,

    -- * BatchCreateObjectResponse
    BatchCreateObjectResponse (..),
    newBatchCreateObjectResponse,
    batchCreateObjectResponse_objectIdentifier,

    -- * BatchDeleteObject
    BatchDeleteObject (..),
    newBatchDeleteObject,
    batchDeleteObject_objectReference,

    -- * BatchDeleteObjectResponse
    BatchDeleteObjectResponse (..),
    newBatchDeleteObjectResponse,

    -- * BatchDetachFromIndex
    BatchDetachFromIndex (..),
    newBatchDetachFromIndex,
    batchDetachFromIndex_indexReference,
    batchDetachFromIndex_targetReference,

    -- * BatchDetachFromIndexResponse
    BatchDetachFromIndexResponse (..),
    newBatchDetachFromIndexResponse,
    batchDetachFromIndexResponse_detachedObjectIdentifier,

    -- * BatchDetachObject
    BatchDetachObject (..),
    newBatchDetachObject,
    batchDetachObject_batchReferenceName,
    batchDetachObject_parentReference,
    batchDetachObject_linkName,

    -- * BatchDetachObjectResponse
    BatchDetachObjectResponse (..),
    newBatchDetachObjectResponse,
    batchDetachObjectResponse_detachedObjectIdentifier,

    -- * BatchDetachPolicy
    BatchDetachPolicy (..),
    newBatchDetachPolicy,
    batchDetachPolicy_policyReference,
    batchDetachPolicy_objectReference,

    -- * BatchDetachPolicyResponse
    BatchDetachPolicyResponse (..),
    newBatchDetachPolicyResponse,

    -- * BatchDetachTypedLink
    BatchDetachTypedLink (..),
    newBatchDetachTypedLink,
    batchDetachTypedLink_typedLinkSpecifier,

    -- * BatchDetachTypedLinkResponse
    BatchDetachTypedLinkResponse (..),
    newBatchDetachTypedLinkResponse,

    -- * BatchGetLinkAttributes
    BatchGetLinkAttributes (..),
    newBatchGetLinkAttributes,
    batchGetLinkAttributes_typedLinkSpecifier,
    batchGetLinkAttributes_attributeNames,

    -- * BatchGetLinkAttributesResponse
    BatchGetLinkAttributesResponse (..),
    newBatchGetLinkAttributesResponse,
    batchGetLinkAttributesResponse_attributes,

    -- * BatchGetObjectAttributes
    BatchGetObjectAttributes (..),
    newBatchGetObjectAttributes,
    batchGetObjectAttributes_objectReference,
    batchGetObjectAttributes_schemaFacet,
    batchGetObjectAttributes_attributeNames,

    -- * BatchGetObjectAttributesResponse
    BatchGetObjectAttributesResponse (..),
    newBatchGetObjectAttributesResponse,
    batchGetObjectAttributesResponse_attributes,

    -- * BatchGetObjectInformation
    BatchGetObjectInformation (..),
    newBatchGetObjectInformation,
    batchGetObjectInformation_objectReference,

    -- * BatchGetObjectInformationResponse
    BatchGetObjectInformationResponse (..),
    newBatchGetObjectInformationResponse,
    batchGetObjectInformationResponse_objectIdentifier,
    batchGetObjectInformationResponse_schemaFacets,

    -- * BatchListAttachedIndices
    BatchListAttachedIndices (..),
    newBatchListAttachedIndices,
    batchListAttachedIndices_nextToken,
    batchListAttachedIndices_maxResults,
    batchListAttachedIndices_targetReference,

    -- * BatchListAttachedIndicesResponse
    BatchListAttachedIndicesResponse (..),
    newBatchListAttachedIndicesResponse,
    batchListAttachedIndicesResponse_nextToken,
    batchListAttachedIndicesResponse_indexAttachments,

    -- * BatchListIncomingTypedLinks
    BatchListIncomingTypedLinks (..),
    newBatchListIncomingTypedLinks,
    batchListIncomingTypedLinks_nextToken,
    batchListIncomingTypedLinks_maxResults,
    batchListIncomingTypedLinks_filterAttributeRanges,
    batchListIncomingTypedLinks_filterTypedLink,
    batchListIncomingTypedLinks_objectReference,

    -- * BatchListIncomingTypedLinksResponse
    BatchListIncomingTypedLinksResponse (..),
    newBatchListIncomingTypedLinksResponse,
    batchListIncomingTypedLinksResponse_nextToken,
    batchListIncomingTypedLinksResponse_linkSpecifiers,

    -- * BatchListIndex
    BatchListIndex (..),
    newBatchListIndex,
    batchListIndex_nextToken,
    batchListIndex_maxResults,
    batchListIndex_rangesOnIndexedValues,
    batchListIndex_indexReference,

    -- * BatchListIndexResponse
    BatchListIndexResponse (..),
    newBatchListIndexResponse,
    batchListIndexResponse_nextToken,
    batchListIndexResponse_indexAttachments,

    -- * BatchListObjectAttributes
    BatchListObjectAttributes (..),
    newBatchListObjectAttributes,
    batchListObjectAttributes_nextToken,
    batchListObjectAttributes_maxResults,
    batchListObjectAttributes_facetFilter,
    batchListObjectAttributes_objectReference,

    -- * BatchListObjectAttributesResponse
    BatchListObjectAttributesResponse (..),
    newBatchListObjectAttributesResponse,
    batchListObjectAttributesResponse_nextToken,
    batchListObjectAttributesResponse_attributes,

    -- * BatchListObjectChildren
    BatchListObjectChildren (..),
    newBatchListObjectChildren,
    batchListObjectChildren_nextToken,
    batchListObjectChildren_maxResults,
    batchListObjectChildren_objectReference,

    -- * BatchListObjectChildrenResponse
    BatchListObjectChildrenResponse (..),
    newBatchListObjectChildrenResponse,
    batchListObjectChildrenResponse_nextToken,
    batchListObjectChildrenResponse_children,

    -- * BatchListObjectParentPaths
    BatchListObjectParentPaths (..),
    newBatchListObjectParentPaths,
    batchListObjectParentPaths_nextToken,
    batchListObjectParentPaths_maxResults,
    batchListObjectParentPaths_objectReference,

    -- * BatchListObjectParentPathsResponse
    BatchListObjectParentPathsResponse (..),
    newBatchListObjectParentPathsResponse,
    batchListObjectParentPathsResponse_nextToken,
    batchListObjectParentPathsResponse_pathToObjectIdentifiersList,

    -- * BatchListObjectParents
    BatchListObjectParents (..),
    newBatchListObjectParents,
    batchListObjectParents_nextToken,
    batchListObjectParents_maxResults,
    batchListObjectParents_objectReference,

    -- * BatchListObjectParentsResponse
    BatchListObjectParentsResponse (..),
    newBatchListObjectParentsResponse,
    batchListObjectParentsResponse_nextToken,
    batchListObjectParentsResponse_parentLinks,

    -- * BatchListObjectPolicies
    BatchListObjectPolicies (..),
    newBatchListObjectPolicies,
    batchListObjectPolicies_nextToken,
    batchListObjectPolicies_maxResults,
    batchListObjectPolicies_objectReference,

    -- * BatchListObjectPoliciesResponse
    BatchListObjectPoliciesResponse (..),
    newBatchListObjectPoliciesResponse,
    batchListObjectPoliciesResponse_nextToken,
    batchListObjectPoliciesResponse_attachedPolicyIds,

    -- * BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinks (..),
    newBatchListOutgoingTypedLinks,
    batchListOutgoingTypedLinks_nextToken,
    batchListOutgoingTypedLinks_maxResults,
    batchListOutgoingTypedLinks_filterAttributeRanges,
    batchListOutgoingTypedLinks_filterTypedLink,
    batchListOutgoingTypedLinks_objectReference,

    -- * BatchListOutgoingTypedLinksResponse
    BatchListOutgoingTypedLinksResponse (..),
    newBatchListOutgoingTypedLinksResponse,
    batchListOutgoingTypedLinksResponse_nextToken,
    batchListOutgoingTypedLinksResponse_typedLinkSpecifiers,

    -- * BatchListPolicyAttachments
    BatchListPolicyAttachments (..),
    newBatchListPolicyAttachments,
    batchListPolicyAttachments_nextToken,
    batchListPolicyAttachments_maxResults,
    batchListPolicyAttachments_policyReference,

    -- * BatchListPolicyAttachmentsResponse
    BatchListPolicyAttachmentsResponse (..),
    newBatchListPolicyAttachmentsResponse,
    batchListPolicyAttachmentsResponse_nextToken,
    batchListPolicyAttachmentsResponse_objectIdentifiers,

    -- * BatchLookupPolicy
    BatchLookupPolicy (..),
    newBatchLookupPolicy,
    batchLookupPolicy_nextToken,
    batchLookupPolicy_maxResults,
    batchLookupPolicy_objectReference,

    -- * BatchLookupPolicyResponse
    BatchLookupPolicyResponse (..),
    newBatchLookupPolicyResponse,
    batchLookupPolicyResponse_nextToken,
    batchLookupPolicyResponse_policyToPathList,

    -- * BatchReadException
    BatchReadException (..),
    newBatchReadException,
    batchReadException_message,
    batchReadException_type,

    -- * BatchReadOperation
    BatchReadOperation (..),
    newBatchReadOperation,
    batchReadOperation_listOutgoingTypedLinks,
    batchReadOperation_getObjectAttributes,
    batchReadOperation_listObjectChildren,
    batchReadOperation_listPolicyAttachments,
    batchReadOperation_listObjectPolicies,
    batchReadOperation_listIncomingTypedLinks,
    batchReadOperation_getObjectInformation,
    batchReadOperation_listObjectAttributes,
    batchReadOperation_lookupPolicy,
    batchReadOperation_getLinkAttributes,
    batchReadOperation_listObjectParents,
    batchReadOperation_listObjectParentPaths,
    batchReadOperation_listAttachedIndices,
    batchReadOperation_listIndex,

    -- * BatchReadOperationResponse
    BatchReadOperationResponse (..),
    newBatchReadOperationResponse,
    batchReadOperationResponse_exceptionResponse,
    batchReadOperationResponse_successfulResponse,

    -- * BatchReadSuccessfulResponse
    BatchReadSuccessfulResponse (..),
    newBatchReadSuccessfulResponse,
    batchReadSuccessfulResponse_listOutgoingTypedLinks,
    batchReadSuccessfulResponse_getObjectAttributes,
    batchReadSuccessfulResponse_listObjectChildren,
    batchReadSuccessfulResponse_listPolicyAttachments,
    batchReadSuccessfulResponse_listObjectPolicies,
    batchReadSuccessfulResponse_listIncomingTypedLinks,
    batchReadSuccessfulResponse_getObjectInformation,
    batchReadSuccessfulResponse_listObjectAttributes,
    batchReadSuccessfulResponse_lookupPolicy,
    batchReadSuccessfulResponse_getLinkAttributes,
    batchReadSuccessfulResponse_listObjectParents,
    batchReadSuccessfulResponse_listObjectParentPaths,
    batchReadSuccessfulResponse_listAttachedIndices,
    batchReadSuccessfulResponse_listIndex,

    -- * BatchRemoveFacetFromObject
    BatchRemoveFacetFromObject (..),
    newBatchRemoveFacetFromObject,
    batchRemoveFacetFromObject_schemaFacet,
    batchRemoveFacetFromObject_objectReference,

    -- * BatchRemoveFacetFromObjectResponse
    BatchRemoveFacetFromObjectResponse (..),
    newBatchRemoveFacetFromObjectResponse,

    -- * BatchUpdateLinkAttributes
    BatchUpdateLinkAttributes (..),
    newBatchUpdateLinkAttributes,
    batchUpdateLinkAttributes_typedLinkSpecifier,
    batchUpdateLinkAttributes_attributeUpdates,

    -- * BatchUpdateLinkAttributesResponse
    BatchUpdateLinkAttributesResponse (..),
    newBatchUpdateLinkAttributesResponse,

    -- * BatchUpdateObjectAttributes
    BatchUpdateObjectAttributes (..),
    newBatchUpdateObjectAttributes,
    batchUpdateObjectAttributes_objectReference,
    batchUpdateObjectAttributes_attributeUpdates,

    -- * BatchUpdateObjectAttributesResponse
    BatchUpdateObjectAttributesResponse (..),
    newBatchUpdateObjectAttributesResponse,
    batchUpdateObjectAttributesResponse_objectIdentifier,

    -- * BatchWriteOperation
    BatchWriteOperation (..),
    newBatchWriteOperation,
    batchWriteOperation_attachToIndex,
    batchWriteOperation_updateObjectAttributes,
    batchWriteOperation_deleteObject,
    batchWriteOperation_detachObject,
    batchWriteOperation_detachTypedLink,
    batchWriteOperation_updateLinkAttributes,
    batchWriteOperation_createObject,
    batchWriteOperation_addFacetToObject,
    batchWriteOperation_detachFromIndex,
    batchWriteOperation_attachPolicy,
    batchWriteOperation_createIndex,
    batchWriteOperation_detachPolicy,
    batchWriteOperation_removeFacetFromObject,
    batchWriteOperation_attachTypedLink,
    batchWriteOperation_attachObject,

    -- * BatchWriteOperationResponse
    BatchWriteOperationResponse (..),
    newBatchWriteOperationResponse,
    batchWriteOperationResponse_attachToIndex,
    batchWriteOperationResponse_updateObjectAttributes,
    batchWriteOperationResponse_deleteObject,
    batchWriteOperationResponse_detachObject,
    batchWriteOperationResponse_detachTypedLink,
    batchWriteOperationResponse_updateLinkAttributes,
    batchWriteOperationResponse_createObject,
    batchWriteOperationResponse_addFacetToObject,
    batchWriteOperationResponse_detachFromIndex,
    batchWriteOperationResponse_attachPolicy,
    batchWriteOperationResponse_createIndex,
    batchWriteOperationResponse_detachPolicy,
    batchWriteOperationResponse_removeFacetFromObject,
    batchWriteOperationResponse_attachTypedLink,
    batchWriteOperationResponse_attachObject,

    -- * Directory
    Directory (..),
    newDirectory,
    directory_name,
    directory_creationDateTime,
    directory_directoryArn,
    directory_state,

    -- * Facet
    Facet (..),
    newFacet,
    facet_name,
    facet_facetStyle,
    facet_objectType,

    -- * FacetAttribute
    FacetAttribute (..),
    newFacetAttribute,
    facetAttribute_attributeReference,
    facetAttribute_requiredBehavior,
    facetAttribute_attributeDefinition,
    facetAttribute_name,

    -- * FacetAttributeDefinition
    FacetAttributeDefinition (..),
    newFacetAttributeDefinition,
    facetAttributeDefinition_rules,
    facetAttributeDefinition_defaultValue,
    facetAttributeDefinition_isImmutable,
    facetAttributeDefinition_type,

    -- * FacetAttributeReference
    FacetAttributeReference (..),
    newFacetAttributeReference,
    facetAttributeReference_targetFacetName,
    facetAttributeReference_targetAttributeName,

    -- * FacetAttributeUpdate
    FacetAttributeUpdate (..),
    newFacetAttributeUpdate,
    facetAttributeUpdate_attribute,
    facetAttributeUpdate_action,

    -- * IndexAttachment
    IndexAttachment (..),
    newIndexAttachment,
    indexAttachment_objectIdentifier,
    indexAttachment_indexedAttributes,

    -- * LinkAttributeAction
    LinkAttributeAction (..),
    newLinkAttributeAction,
    linkAttributeAction_attributeActionType,
    linkAttributeAction_attributeUpdateValue,

    -- * LinkAttributeUpdate
    LinkAttributeUpdate (..),
    newLinkAttributeUpdate,
    linkAttributeUpdate_attributeAction,
    linkAttributeUpdate_attributeKey,

    -- * ObjectAttributeAction
    ObjectAttributeAction (..),
    newObjectAttributeAction,
    objectAttributeAction_objectAttributeUpdateValue,
    objectAttributeAction_objectAttributeActionType,

    -- * ObjectAttributeRange
    ObjectAttributeRange (..),
    newObjectAttributeRange,
    objectAttributeRange_range,
    objectAttributeRange_attributeKey,

    -- * ObjectAttributeUpdate
    ObjectAttributeUpdate (..),
    newObjectAttributeUpdate,
    objectAttributeUpdate_objectAttributeKey,
    objectAttributeUpdate_objectAttributeAction,

    -- * ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierAndLinkNameTuple (..),
    newObjectIdentifierAndLinkNameTuple,
    objectIdentifierAndLinkNameTuple_objectIdentifier,
    objectIdentifierAndLinkNameTuple_linkName,

    -- * ObjectReference
    ObjectReference (..),
    newObjectReference,
    objectReference_selector,

    -- * PathToObjectIdentifiers
    PathToObjectIdentifiers (..),
    newPathToObjectIdentifiers,
    pathToObjectIdentifiers_path,
    pathToObjectIdentifiers_objectIdentifiers,

    -- * PolicyAttachment
    PolicyAttachment (..),
    newPolicyAttachment,
    policyAttachment_policyId,
    policyAttachment_objectIdentifier,
    policyAttachment_policyType,

    -- * PolicyToPath
    PolicyToPath (..),
    newPolicyToPath,
    policyToPath_path,
    policyToPath_policies,

    -- * Rule
    Rule (..),
    newRule,
    rule_type,
    rule_parameters,

    -- * SchemaFacet
    SchemaFacet (..),
    newSchemaFacet,
    schemaFacet_facetName,
    schemaFacet_schemaArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TypedAttributeValue
    TypedAttributeValue (..),
    newTypedAttributeValue,
    typedAttributeValue_datetimeValue,
    typedAttributeValue_numberValue,
    typedAttributeValue_booleanValue,
    typedAttributeValue_binaryValue,
    typedAttributeValue_stringValue,

    -- * TypedAttributeValueRange
    TypedAttributeValueRange (..),
    newTypedAttributeValueRange,
    typedAttributeValueRange_endValue,
    typedAttributeValueRange_startValue,
    typedAttributeValueRange_startMode,
    typedAttributeValueRange_endMode,

    -- * TypedLinkAttributeDefinition
    TypedLinkAttributeDefinition (..),
    newTypedLinkAttributeDefinition,
    typedLinkAttributeDefinition_rules,
    typedLinkAttributeDefinition_defaultValue,
    typedLinkAttributeDefinition_isImmutable,
    typedLinkAttributeDefinition_name,
    typedLinkAttributeDefinition_type,
    typedLinkAttributeDefinition_requiredBehavior,

    -- * TypedLinkAttributeRange
    TypedLinkAttributeRange (..),
    newTypedLinkAttributeRange,
    typedLinkAttributeRange_attributeName,
    typedLinkAttributeRange_range,

    -- * TypedLinkFacet
    TypedLinkFacet (..),
    newTypedLinkFacet,
    typedLinkFacet_name,
    typedLinkFacet_attributes,
    typedLinkFacet_identityAttributeOrder,

    -- * TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdate (..),
    newTypedLinkFacetAttributeUpdate,
    typedLinkFacetAttributeUpdate_attribute,
    typedLinkFacetAttributeUpdate_action,

    -- * TypedLinkSchemaAndFacetName
    TypedLinkSchemaAndFacetName (..),
    newTypedLinkSchemaAndFacetName,
    typedLinkSchemaAndFacetName_schemaArn,
    typedLinkSchemaAndFacetName_typedLinkName,

    -- * TypedLinkSpecifier
    TypedLinkSpecifier (..),
    newTypedLinkSpecifier,
    typedLinkSpecifier_typedLinkFacet,
    typedLinkSpecifier_sourceObjectReference,
    typedLinkSpecifier_targetObjectReference,
    typedLinkSpecifier_identityAttributeValues,
  )
where

import Amazonka.CloudDirectory.Types.AttributeKey
import Amazonka.CloudDirectory.Types.AttributeKeyAndValue
import Amazonka.CloudDirectory.Types.AttributeNameAndValue
import Amazonka.CloudDirectory.Types.BatchAddFacetToObject
import Amazonka.CloudDirectory.Types.BatchAddFacetToObjectResponse
import Amazonka.CloudDirectory.Types.BatchAttachObject
import Amazonka.CloudDirectory.Types.BatchAttachObjectResponse
import Amazonka.CloudDirectory.Types.BatchAttachPolicy
import Amazonka.CloudDirectory.Types.BatchAttachPolicyResponse
import Amazonka.CloudDirectory.Types.BatchAttachToIndex
import Amazonka.CloudDirectory.Types.BatchAttachToIndexResponse
import Amazonka.CloudDirectory.Types.BatchAttachTypedLink
import Amazonka.CloudDirectory.Types.BatchAttachTypedLinkResponse
import Amazonka.CloudDirectory.Types.BatchCreateIndex
import Amazonka.CloudDirectory.Types.BatchCreateIndexResponse
import Amazonka.CloudDirectory.Types.BatchCreateObject
import Amazonka.CloudDirectory.Types.BatchCreateObjectResponse
import Amazonka.CloudDirectory.Types.BatchDeleteObject
import Amazonka.CloudDirectory.Types.BatchDeleteObjectResponse
import Amazonka.CloudDirectory.Types.BatchDetachFromIndex
import Amazonka.CloudDirectory.Types.BatchDetachFromIndexResponse
import Amazonka.CloudDirectory.Types.BatchDetachObject
import Amazonka.CloudDirectory.Types.BatchDetachObjectResponse
import Amazonka.CloudDirectory.Types.BatchDetachPolicy
import Amazonka.CloudDirectory.Types.BatchDetachPolicyResponse
import Amazonka.CloudDirectory.Types.BatchDetachTypedLink
import Amazonka.CloudDirectory.Types.BatchDetachTypedLinkResponse
import Amazonka.CloudDirectory.Types.BatchGetLinkAttributes
import Amazonka.CloudDirectory.Types.BatchGetLinkAttributesResponse
import Amazonka.CloudDirectory.Types.BatchGetObjectAttributes
import Amazonka.CloudDirectory.Types.BatchGetObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchGetObjectInformation
import Amazonka.CloudDirectory.Types.BatchGetObjectInformationResponse
import Amazonka.CloudDirectory.Types.BatchListAttachedIndices
import Amazonka.CloudDirectory.Types.BatchListAttachedIndicesResponse
import Amazonka.CloudDirectory.Types.BatchListIncomingTypedLinks
import Amazonka.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
import Amazonka.CloudDirectory.Types.BatchListIndex
import Amazonka.CloudDirectory.Types.BatchListIndexResponse
import Amazonka.CloudDirectory.Types.BatchListObjectAttributes
import Amazonka.CloudDirectory.Types.BatchListObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchListObjectChildren
import Amazonka.CloudDirectory.Types.BatchListObjectChildrenResponse
import Amazonka.CloudDirectory.Types.BatchListObjectParentPaths
import Amazonka.CloudDirectory.Types.BatchListObjectParentPathsResponse
import Amazonka.CloudDirectory.Types.BatchListObjectParents
import Amazonka.CloudDirectory.Types.BatchListObjectParentsResponse
import Amazonka.CloudDirectory.Types.BatchListObjectPolicies
import Amazonka.CloudDirectory.Types.BatchListObjectPoliciesResponse
import Amazonka.CloudDirectory.Types.BatchListOutgoingTypedLinks
import Amazonka.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
import Amazonka.CloudDirectory.Types.BatchListPolicyAttachments
import Amazonka.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
import Amazonka.CloudDirectory.Types.BatchLookupPolicy
import Amazonka.CloudDirectory.Types.BatchLookupPolicyResponse
import Amazonka.CloudDirectory.Types.BatchReadException
import Amazonka.CloudDirectory.Types.BatchReadExceptionType
import Amazonka.CloudDirectory.Types.BatchReadOperation
import Amazonka.CloudDirectory.Types.BatchReadOperationResponse
import Amazonka.CloudDirectory.Types.BatchReadSuccessfulResponse
import Amazonka.CloudDirectory.Types.BatchRemoveFacetFromObject
import Amazonka.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse
import Amazonka.CloudDirectory.Types.BatchUpdateLinkAttributes
import Amazonka.CloudDirectory.Types.BatchUpdateLinkAttributesResponse
import Amazonka.CloudDirectory.Types.BatchUpdateObjectAttributes
import Amazonka.CloudDirectory.Types.BatchUpdateObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchWriteOperation
import Amazonka.CloudDirectory.Types.BatchWriteOperationResponse
import Amazonka.CloudDirectory.Types.ConsistencyLevel
import Amazonka.CloudDirectory.Types.Directory
import Amazonka.CloudDirectory.Types.DirectoryState
import Amazonka.CloudDirectory.Types.Facet
import Amazonka.CloudDirectory.Types.FacetAttribute
import Amazonka.CloudDirectory.Types.FacetAttributeDefinition
import Amazonka.CloudDirectory.Types.FacetAttributeReference
import Amazonka.CloudDirectory.Types.FacetAttributeType
import Amazonka.CloudDirectory.Types.FacetAttributeUpdate
import Amazonka.CloudDirectory.Types.FacetStyle
import Amazonka.CloudDirectory.Types.IndexAttachment
import Amazonka.CloudDirectory.Types.LinkAttributeAction
import Amazonka.CloudDirectory.Types.LinkAttributeUpdate
import Amazonka.CloudDirectory.Types.ObjectAttributeAction
import Amazonka.CloudDirectory.Types.ObjectAttributeRange
import Amazonka.CloudDirectory.Types.ObjectAttributeUpdate
import Amazonka.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple
import Amazonka.CloudDirectory.Types.ObjectReference
import Amazonka.CloudDirectory.Types.ObjectType
import Amazonka.CloudDirectory.Types.PathToObjectIdentifiers
import Amazonka.CloudDirectory.Types.PolicyAttachment
import Amazonka.CloudDirectory.Types.PolicyToPath
import Amazonka.CloudDirectory.Types.RangeMode
import Amazonka.CloudDirectory.Types.RequiredAttributeBehavior
import Amazonka.CloudDirectory.Types.Rule
import Amazonka.CloudDirectory.Types.RuleType
import Amazonka.CloudDirectory.Types.SchemaFacet
import Amazonka.CloudDirectory.Types.Tag
import Amazonka.CloudDirectory.Types.TypedAttributeValue
import Amazonka.CloudDirectory.Types.TypedAttributeValueRange
import Amazonka.CloudDirectory.Types.TypedLinkAttributeDefinition
import Amazonka.CloudDirectory.Types.TypedLinkAttributeRange
import Amazonka.CloudDirectory.Types.TypedLinkFacet
import Amazonka.CloudDirectory.Types.TypedLinkFacetAttributeUpdate
import Amazonka.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Amazonka.CloudDirectory.Types.TypedLinkSpecifier
import Amazonka.CloudDirectory.Types.UpdateActionType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-01-11@ of the Amazon CloudDirectory SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "CloudDirectory",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "clouddirectory",
      Core._serviceSigningName = "clouddirectory",
      Core._serviceVersion = "2017-01-11",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CloudDirectory",
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

-- | Indicates that an attempt to make an attachment was invalid. For
-- example, attaching two nodes with a link type that is not applicable to
-- the nodes or attempting to apply a schema to a directory a second time.
_InvalidAttachmentException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidAttachmentException =
  Core._MatchServiceError
    defaultService
    "InvalidAttachmentException"
    Prelude.. Core.hasStatus 400

-- | Indicates that a schema is already published.
_SchemaAlreadyPublishedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SchemaAlreadyPublishedException =
  Core._MatchServiceError
    defaultService
    "SchemaAlreadyPublishedException"
    Prelude.. Core.hasStatus 400

-- | Indicates that a Directory could not be created due to a naming
-- conflict. Choose a different name and try again.
_DirectoryAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DirectoryAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "DirectoryAlreadyExistsException"
    Prelude.. Core.hasStatus 400

-- | An attempt to modify a Facet resulted in an invalid schema exception.
_InvalidFacetUpdateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidFacetUpdateException =
  Core._MatchServiceError
    defaultService
    "InvalidFacetUpdateException"
    Prelude.. Core.hasStatus 400

-- | A directory that has been deleted and to which access has been
-- attempted. Note: The requested resource will eventually cease to exist.
_DirectoryDeletedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DirectoryDeletedException =
  Core._MatchServiceError
    defaultService
    "DirectoryDeletedException"
    Prelude.. Core.hasStatus 400

-- | The Facet that you provided was not well formed or could not be
-- validated with the schema.
_FacetValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FacetValidationException =
  Core._MatchServiceError
    defaultService
    "FacetValidationException"
    Prelude.. Core.hasStatus 400

-- | Cannot list the parents of a Directory root.
_CannotListParentOfRootException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CannotListParentOfRootException =
  Core._MatchServiceError
    defaultService
    "CannotListParentOfRootException"
    Prelude.. Core.hasStatus 400

-- | Access denied or directory not found. Either you don\'t have permissions
-- for this directory or the directory does not exist. Try calling
-- ListDirectories and check your permissions.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | An object has been attempted to be attached to an object that does not
-- have the appropriate attribute value.
_IndexedAttributeMissingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IndexedAttributeMissingException =
  Core._MatchServiceError
    defaultService
    "IndexedAttributeMissingException"
    Prelude.. Core.hasStatus 400

-- | An operation can only operate on a disabled directory.
_DirectoryNotDisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DirectoryNotDisabledException =
  Core._MatchServiceError
    defaultService
    "DirectoryNotDisabledException"
    Prelude.. Core.hasStatus 400

-- | Indicates a failure occurred while performing a check for backward
-- compatibility between the specified schema and the schema that is
-- currently applied to the directory.
_IncompatibleSchemaException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncompatibleSchemaException =
  Core._MatchServiceError
    defaultService
    "IncompatibleSchemaException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the object is not attached to the index.
_ObjectAlreadyDetachedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ObjectAlreadyDetachedException =
  Core._MatchServiceError
    defaultService
    "ObjectAlreadyDetachedException"
    Prelude.. Core.hasStatus 400

-- | Indicates that a schema could not be created due to a naming conflict.
-- Please select a different name and then try again.
_SchemaAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SchemaAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "SchemaAlreadyExistsException"
    Prelude.. Core.hasStatus 400

-- | The specified resource could not be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Indicates that a link could not be created due to a naming conflict.
-- Choose a different name and then try again.
_LinkNameAlreadyInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LinkNameAlreadyInUseException =
  Core._MatchServiceError
    defaultService
    "LinkNameAlreadyInUseException"
    Prelude.. Core.hasStatus 400

-- | Operations are only permitted on enabled directories.
_DirectoryNotEnabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DirectoryNotEnabledException =
  Core._MatchServiceError
    defaultService
    "DirectoryNotEnabledException"
    Prelude.. Core.hasStatus 400

-- | Occurs when deleting a facet that contains an attribute that is a target
-- to an attribute reference in a different facet.
_FacetInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FacetInUseException =
  Core._MatchServiceError
    defaultService
    "FacetInUseException"
    Prelude.. Core.hasStatus 400

-- | The specified Facet could not be found.
_FacetNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FacetNotFoundException =
  Core._MatchServiceError
    defaultService
    "FacetNotFoundException"
    Prelude.. Core.hasStatus 400

-- | Indicates that limits are exceeded. See
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html Limits>
-- for more information.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the provided @SchemaDoc@ value is not valid.
_InvalidSchemaDocException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSchemaDocException =
  Core._MatchServiceError
    defaultService
    "InvalidSchemaDocException"
    Prelude.. Core.hasStatus 400

-- | A facet with the same name already exists.
_FacetAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_FacetAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "FacetAlreadyExistsException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the @NextToken@ value is not valid.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the requested operation can only operate on index
-- objects.
_NotIndexException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotIndexException =
  Core._MatchServiceError
    defaultService
    "NotIndexException"
    Prelude.. Core.hasStatus 400

-- | Can occur for multiple reasons such as when you tag a resource that
-- doesn’t exist or if you specify a higher number of tags for a resource
-- than the allowed limit. Allowed limit is 50 tags per resource.
_InvalidTaggingRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTaggingRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidTaggingRequestException"
    Prelude.. Core.hasStatus 400

-- | Indicates that the provided ARN value is not valid.
_InvalidArnException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidArnException =
  Core._MatchServiceError
    defaultService
    "InvalidArnException"
    Prelude.. Core.hasStatus 400

-- | Occurs when any invalid operations are performed on an object that is
-- not a node, such as calling @ListObjectChildren@ for a leaf node object.
_NotNodeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotNodeException =
  Core._MatchServiceError
    defaultService
    "NotNodeException"
    Prelude.. Core.hasStatus 400

-- | The object could not be deleted because links still exist. Remove the
-- links and then try the operation again.
_StillContainsLinksException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_StillContainsLinksException =
  Core._MatchServiceError
    defaultService
    "StillContainsLinksException"
    Prelude.. Core.hasStatus 400

-- | Indicates that your request is malformed in some manner. See the
-- exception message.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | Indicates a problem that must be resolved by Amazon Web Services. This
-- might be a transient error in which case you can retry your request
-- until it succeeds. Otherwise, go to the
-- <http://status.aws.amazon.com/ AWS Service Health Dashboard> site to see
-- if there are any operational issues with the service.
_InternalServiceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceException =
  Core._MatchServiceError
    defaultService
    "InternalServiceException"
    Prelude.. Core.hasStatus 500

-- | Indicates that the requested operation cannot be completed because the
-- object has not been detached from the tree.
_ObjectNotDetachedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ObjectNotDetachedException =
  Core._MatchServiceError
    defaultService
    "ObjectNotDetachedException"
    Prelude.. Core.hasStatus 400

-- | Occurs when any of the rule parameter keys or values are invalid.
_InvalidRuleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRuleException =
  Core._MatchServiceError
    defaultService
    "InvalidRuleException"
    Prelude.. Core.hasStatus 400

-- | Occurs when a conflict with a previous successful write is detected. For
-- example, if a write operation occurs on an object and then an attempt is
-- made to read the object using “SERIALIZABLE” consistency, this exception
-- may result. This generally occurs when the previous write did not have
-- time to propagate to the host serving the current request. A retry (with
-- appropriate backoff logic) is the recommended response to this
-- exception.
_RetryableConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RetryableConflictException =
  Core._MatchServiceError
    defaultService
    "RetryableConflictException"
    Prelude.. Core.hasStatus 409

-- | Indicates that the requested index type is not supported.
_UnsupportedIndexTypeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedIndexTypeException =
  Core._MatchServiceError
    defaultService
    "UnsupportedIndexTypeException"
    Prelude.. Core.hasStatus 400

-- | A @BatchWrite@ exception has occurred.
_BatchWriteException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BatchWriteException =
  Core._MatchServiceError
    defaultService
    "BatchWriteException"

-- | Indicates that the requested operation can only operate on policy
-- objects.
_NotPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotPolicyException =
  Core._MatchServiceError
    defaultService
    "NotPolicyException"
    Prelude.. Core.hasStatus 400

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.NetworkManager.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _CoreNetworkPolicyException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * AttachmentState
    AttachmentState (..),

    -- * AttachmentType
    AttachmentType (..),

    -- * ChangeAction
    ChangeAction (..),

    -- * ChangeSetState
    ChangeSetState (..),

    -- * ChangeStatus
    ChangeStatus (..),

    -- * ChangeType
    ChangeType (..),

    -- * ConnectPeerAssociationState
    ConnectPeerAssociationState (..),

    -- * ConnectPeerState
    ConnectPeerState (..),

    -- * ConnectionState
    ConnectionState (..),

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * CoreNetworkPolicyAlias
    CoreNetworkPolicyAlias (..),

    -- * CoreNetworkState
    CoreNetworkState (..),

    -- * CustomerGatewayAssociationState
    CustomerGatewayAssociationState (..),

    -- * DeviceState
    DeviceState (..),

    -- * GlobalNetworkState
    GlobalNetworkState (..),

    -- * LinkAssociationState
    LinkAssociationState (..),

    -- * LinkState
    LinkState (..),

    -- * PeeringState
    PeeringState (..),

    -- * PeeringType
    PeeringType (..),

    -- * RouteAnalysisCompletionReasonCode
    RouteAnalysisCompletionReasonCode (..),

    -- * RouteAnalysisCompletionResultCode
    RouteAnalysisCompletionResultCode (..),

    -- * RouteAnalysisStatus
    RouteAnalysisStatus (..),

    -- * RouteState
    RouteState (..),

    -- * RouteTableType
    RouteTableType (..),

    -- * RouteType
    RouteType (..),

    -- * SiteState
    SiteState (..),

    -- * TransitGatewayConnectPeerAssociationState
    TransitGatewayConnectPeerAssociationState (..),

    -- * TransitGatewayRegistrationState
    TransitGatewayRegistrationState (..),

    -- * TunnelProtocol
    TunnelProtocol (..),

    -- * AWSLocation
    AWSLocation (..),
    newAWSLocation,
    aWSLocation_zone,
    aWSLocation_subnetArn,

    -- * AccountStatus
    AccountStatus (..),
    newAccountStatus,
    accountStatus_sLRDeploymentStatus,
    accountStatus_accountId,

    -- * Attachment
    Attachment (..),
    newAttachment,
    attachment_tags,
    attachment_proposedSegmentChange,
    attachment_coreNetworkId,
    attachment_state,
    attachment_edgeLocation,
    attachment_attachmentId,
    attachment_segmentName,
    attachment_coreNetworkArn,
    attachment_ownerAccountId,
    attachment_attachmentType,
    attachment_resourceArn,
    attachment_attachmentPolicyRuleNumber,
    attachment_createdAt,
    attachment_updatedAt,

    -- * Bandwidth
    Bandwidth (..),
    newBandwidth,
    bandwidth_downloadSpeed,
    bandwidth_uploadSpeed,

    -- * BgpOptions
    BgpOptions (..),
    newBgpOptions,
    bgpOptions_peerAsn,

    -- * ConnectAttachment
    ConnectAttachment (..),
    newConnectAttachment,
    connectAttachment_attachment,
    connectAttachment_transportAttachmentId,
    connectAttachment_options,

    -- * ConnectAttachmentOptions
    ConnectAttachmentOptions (..),
    newConnectAttachmentOptions,
    connectAttachmentOptions_protocol,

    -- * ConnectPeer
    ConnectPeer (..),
    newConnectPeer,
    connectPeer_tags,
    connectPeer_coreNetworkId,
    connectPeer_connectAttachmentId,
    connectPeer_configuration,
    connectPeer_state,
    connectPeer_edgeLocation,
    connectPeer_connectPeerId,
    connectPeer_createdAt,

    -- * ConnectPeerAssociation
    ConnectPeerAssociation (..),
    newConnectPeerAssociation,
    connectPeerAssociation_globalNetworkId,
    connectPeerAssociation_linkId,
    connectPeerAssociation_deviceId,
    connectPeerAssociation_state,
    connectPeerAssociation_connectPeerId,

    -- * ConnectPeerBgpConfiguration
    ConnectPeerBgpConfiguration (..),
    newConnectPeerBgpConfiguration,
    connectPeerBgpConfiguration_peerAsn,
    connectPeerBgpConfiguration_coreNetworkAddress,
    connectPeerBgpConfiguration_coreNetworkAsn,
    connectPeerBgpConfiguration_peerAddress,

    -- * ConnectPeerConfiguration
    ConnectPeerConfiguration (..),
    newConnectPeerConfiguration,
    connectPeerConfiguration_bgpConfigurations,
    connectPeerConfiguration_coreNetworkAddress,
    connectPeerConfiguration_insideCidrBlocks,
    connectPeerConfiguration_peerAddress,
    connectPeerConfiguration_protocol,

    -- * ConnectPeerSummary
    ConnectPeerSummary (..),
    newConnectPeerSummary,
    connectPeerSummary_tags,
    connectPeerSummary_coreNetworkId,
    connectPeerSummary_connectAttachmentId,
    connectPeerSummary_edgeLocation,
    connectPeerSummary_connectPeerState,
    connectPeerSummary_connectPeerId,
    connectPeerSummary_createdAt,

    -- * Connection
    Connection (..),
    newConnection,
    connection_globalNetworkId,
    connection_tags,
    connection_linkId,
    connection_deviceId,
    connection_connectedDeviceId,
    connection_state,
    connection_connectionId,
    connection_description,
    connection_connectionArn,
    connection_connectedLinkId,
    connection_createdAt,

    -- * ConnectionHealth
    ConnectionHealth (..),
    newConnectionHealth,
    connectionHealth_type,
    connectionHealth_timestamp,
    connectionHealth_status,

    -- * CoreNetwork
    CoreNetwork (..),
    newCoreNetwork,
    coreNetwork_globalNetworkId,
    coreNetwork_tags,
    coreNetwork_edges,
    coreNetwork_coreNetworkId,
    coreNetwork_state,
    coreNetwork_description,
    coreNetwork_coreNetworkArn,
    coreNetwork_createdAt,
    coreNetwork_segments,

    -- * CoreNetworkChange
    CoreNetworkChange (..),
    newCoreNetworkChange,
    coreNetworkChange_newValues,
    coreNetworkChange_type,
    coreNetworkChange_previousValues,
    coreNetworkChange_identifier,
    coreNetworkChange_identifierPath,
    coreNetworkChange_action,

    -- * CoreNetworkChangeEvent
    CoreNetworkChangeEvent (..),
    newCoreNetworkChangeEvent,
    coreNetworkChangeEvent_type,
    coreNetworkChangeEvent_status,
    coreNetworkChangeEvent_identifierPath,
    coreNetworkChangeEvent_action,
    coreNetworkChangeEvent_values,
    coreNetworkChangeEvent_eventTime,

    -- * CoreNetworkChangeEventValues
    CoreNetworkChangeEventValues (..),
    newCoreNetworkChangeEventValues,
    coreNetworkChangeEventValues_cidr,
    coreNetworkChangeEventValues_edgeLocation,
    coreNetworkChangeEventValues_attachmentId,
    coreNetworkChangeEventValues_segmentName,

    -- * CoreNetworkChangeValues
    CoreNetworkChangeValues (..),
    newCoreNetworkChangeValues,
    coreNetworkChangeValues_sharedSegments,
    coreNetworkChangeValues_cidr,
    coreNetworkChangeValues_asn,
    coreNetworkChangeValues_segmentName,
    coreNetworkChangeValues_edgeLocations,
    coreNetworkChangeValues_insideCidrBlocks,
    coreNetworkChangeValues_destinationIdentifier,

    -- * CoreNetworkEdge
    CoreNetworkEdge (..),
    newCoreNetworkEdge,
    coreNetworkEdge_edgeLocation,
    coreNetworkEdge_asn,
    coreNetworkEdge_insideCidrBlocks,

    -- * CoreNetworkPolicy
    CoreNetworkPolicy (..),
    newCoreNetworkPolicy,
    coreNetworkPolicy_alias,
    coreNetworkPolicy_coreNetworkId,
    coreNetworkPolicy_changeSetState,
    coreNetworkPolicy_policyVersionId,
    coreNetworkPolicy_policyErrors,
    coreNetworkPolicy_description,
    coreNetworkPolicy_policyDocument,
    coreNetworkPolicy_createdAt,

    -- * CoreNetworkPolicyError
    CoreNetworkPolicyError (..),
    newCoreNetworkPolicyError,
    coreNetworkPolicyError_path,
    coreNetworkPolicyError_errorCode,
    coreNetworkPolicyError_message,

    -- * CoreNetworkPolicyVersion
    CoreNetworkPolicyVersion (..),
    newCoreNetworkPolicyVersion,
    coreNetworkPolicyVersion_alias,
    coreNetworkPolicyVersion_coreNetworkId,
    coreNetworkPolicyVersion_changeSetState,
    coreNetworkPolicyVersion_policyVersionId,
    coreNetworkPolicyVersion_description,
    coreNetworkPolicyVersion_createdAt,

    -- * CoreNetworkSegment
    CoreNetworkSegment (..),
    newCoreNetworkSegment,
    coreNetworkSegment_name,
    coreNetworkSegment_sharedSegments,
    coreNetworkSegment_edgeLocations,

    -- * CoreNetworkSegmentEdgeIdentifier
    CoreNetworkSegmentEdgeIdentifier (..),
    newCoreNetworkSegmentEdgeIdentifier,
    coreNetworkSegmentEdgeIdentifier_coreNetworkId,
    coreNetworkSegmentEdgeIdentifier_edgeLocation,
    coreNetworkSegmentEdgeIdentifier_segmentName,

    -- * CoreNetworkSummary
    CoreNetworkSummary (..),
    newCoreNetworkSummary,
    coreNetworkSummary_globalNetworkId,
    coreNetworkSummary_tags,
    coreNetworkSummary_coreNetworkId,
    coreNetworkSummary_state,
    coreNetworkSummary_description,
    coreNetworkSummary_coreNetworkArn,
    coreNetworkSummary_ownerAccountId,

    -- * CustomerGatewayAssociation
    CustomerGatewayAssociation (..),
    newCustomerGatewayAssociation,
    customerGatewayAssociation_globalNetworkId,
    customerGatewayAssociation_linkId,
    customerGatewayAssociation_deviceId,
    customerGatewayAssociation_state,
    customerGatewayAssociation_customerGatewayArn,

    -- * Device
    Device (..),
    newDevice,
    device_globalNetworkId,
    device_tags,
    device_type,
    device_model,
    device_aWSLocation,
    device_deviceId,
    device_state,
    device_description,
    device_siteId,
    device_location,
    device_serialNumber,
    device_vendor,
    device_createdAt,
    device_deviceArn,

    -- * GlobalNetwork
    GlobalNetwork (..),
    newGlobalNetwork,
    globalNetwork_globalNetworkId,
    globalNetwork_tags,
    globalNetwork_state,
    globalNetwork_description,
    globalNetwork_globalNetworkArn,
    globalNetwork_createdAt,

    -- * Link
    Link (..),
    newLink,
    link_globalNetworkId,
    link_tags,
    link_linkId,
    link_type,
    link_bandwidth,
    link_state,
    link_provider,
    link_description,
    link_siteId,
    link_createdAt,
    link_linkArn,

    -- * LinkAssociation
    LinkAssociation (..),
    newLinkAssociation,
    linkAssociation_globalNetworkId,
    linkAssociation_linkId,
    linkAssociation_deviceId,
    linkAssociation_linkAssociationState,

    -- * Location
    Location (..),
    newLocation,
    location_longitude,
    location_address,
    location_latitude,

    -- * NetworkResource
    NetworkResource (..),
    newNetworkResource,
    networkResource_resourceId,
    networkResource_tags,
    networkResource_resourceType,
    networkResource_coreNetworkId,
    networkResource_metadata,
    networkResource_accountId,
    networkResource_registeredGatewayArn,
    networkResource_awsRegion,
    networkResource_definitionTimestamp,
    networkResource_resourceArn,
    networkResource_definition,

    -- * NetworkResourceCount
    NetworkResourceCount (..),
    newNetworkResourceCount,
    networkResourceCount_resourceType,
    networkResourceCount_count,

    -- * NetworkResourceSummary
    NetworkResourceSummary (..),
    newNetworkResourceSummary,
    networkResourceSummary_resourceType,
    networkResourceSummary_isMiddlebox,
    networkResourceSummary_registeredGatewayArn,
    networkResourceSummary_resourceArn,
    networkResourceSummary_definition,
    networkResourceSummary_nameTag,

    -- * NetworkRoute
    NetworkRoute (..),
    newNetworkRoute,
    networkRoute_type,
    networkRoute_prefixListId,
    networkRoute_state,
    networkRoute_destinationCidrBlock,
    networkRoute_destinations,

    -- * NetworkRouteDestination
    NetworkRouteDestination (..),
    newNetworkRouteDestination,
    networkRouteDestination_resourceId,
    networkRouteDestination_resourceType,
    networkRouteDestination_coreNetworkAttachmentId,
    networkRouteDestination_transitGatewayAttachmentId,
    networkRouteDestination_edgeLocation,
    networkRouteDestination_segmentName,

    -- * NetworkTelemetry
    NetworkTelemetry (..),
    newNetworkTelemetry,
    networkTelemetry_resourceId,
    networkTelemetry_resourceType,
    networkTelemetry_coreNetworkId,
    networkTelemetry_accountId,
    networkTelemetry_address,
    networkTelemetry_registeredGatewayArn,
    networkTelemetry_health,
    networkTelemetry_awsRegion,
    networkTelemetry_resourceArn,

    -- * OrganizationStatus
    OrganizationStatus (..),
    newOrganizationStatus,
    organizationStatus_sLRDeploymentStatus,
    organizationStatus_accountStatusList,
    organizationStatus_organizationId,
    organizationStatus_organizationAwsServiceAccessStatus,

    -- * PathComponent
    PathComponent (..),
    newPathComponent,
    pathComponent_sequence,
    pathComponent_destinationCidrBlock,
    pathComponent_resource,

    -- * Peering
    Peering (..),
    newPeering,
    peering_tags,
    peering_coreNetworkId,
    peering_peeringType,
    peering_state,
    peering_edgeLocation,
    peering_coreNetworkArn,
    peering_ownerAccountId,
    peering_peeringId,
    peering_resourceArn,
    peering_createdAt,

    -- * ProposedSegmentChange
    ProposedSegmentChange (..),
    newProposedSegmentChange,
    proposedSegmentChange_tags,
    proposedSegmentChange_segmentName,
    proposedSegmentChange_attachmentPolicyRuleNumber,

    -- * Relationship
    Relationship (..),
    newRelationship,
    relationship_from,
    relationship_to,

    -- * RouteAnalysis
    RouteAnalysis (..),
    newRouteAnalysis,
    routeAnalysis_globalNetworkId,
    routeAnalysis_destination,
    routeAnalysis_returnPath,
    routeAnalysis_routeAnalysisId,
    routeAnalysis_includeReturnPath,
    routeAnalysis_startTimestamp,
    routeAnalysis_status,
    routeAnalysis_source,
    routeAnalysis_ownerAccountId,
    routeAnalysis_useMiddleboxes,
    routeAnalysis_forwardPath,

    -- * RouteAnalysisCompletion
    RouteAnalysisCompletion (..),
    newRouteAnalysisCompletion,
    routeAnalysisCompletion_resultCode,
    routeAnalysisCompletion_reasonCode,
    routeAnalysisCompletion_reasonContext,

    -- * RouteAnalysisEndpointOptions
    RouteAnalysisEndpointOptions (..),
    newRouteAnalysisEndpointOptions,
    routeAnalysisEndpointOptions_transitGatewayAttachmentArn,
    routeAnalysisEndpointOptions_transitGatewayArn,
    routeAnalysisEndpointOptions_ipAddress,

    -- * RouteAnalysisEndpointOptionsSpecification
    RouteAnalysisEndpointOptionsSpecification (..),
    newRouteAnalysisEndpointOptionsSpecification,
    routeAnalysisEndpointOptionsSpecification_transitGatewayAttachmentArn,
    routeAnalysisEndpointOptionsSpecification_ipAddress,

    -- * RouteAnalysisPath
    RouteAnalysisPath (..),
    newRouteAnalysisPath,
    routeAnalysisPath_path,
    routeAnalysisPath_completionStatus,

    -- * RouteTableIdentifier
    RouteTableIdentifier (..),
    newRouteTableIdentifier,
    routeTableIdentifier_coreNetworkSegmentEdge,
    routeTableIdentifier_transitGatewayRouteTableArn,

    -- * Site
    Site (..),
    newSite,
    site_globalNetworkId,
    site_tags,
    site_siteArn,
    site_state,
    site_description,
    site_siteId,
    site_location,
    site_createdAt,

    -- * SiteToSiteVpnAttachment
    SiteToSiteVpnAttachment (..),
    newSiteToSiteVpnAttachment,
    siteToSiteVpnAttachment_attachment,
    siteToSiteVpnAttachment_vpnConnectionArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TransitGatewayConnectPeerAssociation
    TransitGatewayConnectPeerAssociation (..),
    newTransitGatewayConnectPeerAssociation,
    transitGatewayConnectPeerAssociation_globalNetworkId,
    transitGatewayConnectPeerAssociation_linkId,
    transitGatewayConnectPeerAssociation_deviceId,
    transitGatewayConnectPeerAssociation_state,
    transitGatewayConnectPeerAssociation_transitGatewayConnectPeerArn,

    -- * TransitGatewayPeering
    TransitGatewayPeering (..),
    newTransitGatewayPeering,
    transitGatewayPeering_transitGatewayArn,
    transitGatewayPeering_transitGatewayPeeringAttachmentId,
    transitGatewayPeering_peering,

    -- * TransitGatewayRegistration
    TransitGatewayRegistration (..),
    newTransitGatewayRegistration,
    transitGatewayRegistration_globalNetworkId,
    transitGatewayRegistration_transitGatewayArn,
    transitGatewayRegistration_state,

    -- * TransitGatewayRegistrationStateReason
    TransitGatewayRegistrationStateReason (..),
    newTransitGatewayRegistrationStateReason,
    transitGatewayRegistrationStateReason_message,
    transitGatewayRegistrationStateReason_code,

    -- * TransitGatewayRouteTableAttachment
    TransitGatewayRouteTableAttachment (..),
    newTransitGatewayRouteTableAttachment,
    transitGatewayRouteTableAttachment_attachment,
    transitGatewayRouteTableAttachment_peeringId,
    transitGatewayRouteTableAttachment_transitGatewayRouteTableArn,

    -- * VpcAttachment
    VpcAttachment (..),
    newVpcAttachment,
    vpcAttachment_attachment,
    vpcAttachment_subnetArns,
    vpcAttachment_options,

    -- * VpcOptions
    VpcOptions (..),
    newVpcOptions,
    vpcOptions_ipv6Support,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types.AWSLocation
import Amazonka.NetworkManager.Types.AccountStatus
import Amazonka.NetworkManager.Types.Attachment
import Amazonka.NetworkManager.Types.AttachmentState
import Amazonka.NetworkManager.Types.AttachmentType
import Amazonka.NetworkManager.Types.Bandwidth
import Amazonka.NetworkManager.Types.BgpOptions
import Amazonka.NetworkManager.Types.ChangeAction
import Amazonka.NetworkManager.Types.ChangeSetState
import Amazonka.NetworkManager.Types.ChangeStatus
import Amazonka.NetworkManager.Types.ChangeType
import Amazonka.NetworkManager.Types.ConnectAttachment
import Amazonka.NetworkManager.Types.ConnectAttachmentOptions
import Amazonka.NetworkManager.Types.ConnectPeer
import Amazonka.NetworkManager.Types.ConnectPeerAssociation
import Amazonka.NetworkManager.Types.ConnectPeerAssociationState
import Amazonka.NetworkManager.Types.ConnectPeerBgpConfiguration
import Amazonka.NetworkManager.Types.ConnectPeerConfiguration
import Amazonka.NetworkManager.Types.ConnectPeerState
import Amazonka.NetworkManager.Types.ConnectPeerSummary
import Amazonka.NetworkManager.Types.Connection
import Amazonka.NetworkManager.Types.ConnectionHealth
import Amazonka.NetworkManager.Types.ConnectionState
import Amazonka.NetworkManager.Types.ConnectionStatus
import Amazonka.NetworkManager.Types.ConnectionType
import Amazonka.NetworkManager.Types.CoreNetwork
import Amazonka.NetworkManager.Types.CoreNetworkChange
import Amazonka.NetworkManager.Types.CoreNetworkChangeEvent
import Amazonka.NetworkManager.Types.CoreNetworkChangeEventValues
import Amazonka.NetworkManager.Types.CoreNetworkChangeValues
import Amazonka.NetworkManager.Types.CoreNetworkEdge
import Amazonka.NetworkManager.Types.CoreNetworkPolicy
import Amazonka.NetworkManager.Types.CoreNetworkPolicyAlias
import Amazonka.NetworkManager.Types.CoreNetworkPolicyError
import Amazonka.NetworkManager.Types.CoreNetworkPolicyVersion
import Amazonka.NetworkManager.Types.CoreNetworkSegment
import Amazonka.NetworkManager.Types.CoreNetworkSegmentEdgeIdentifier
import Amazonka.NetworkManager.Types.CoreNetworkState
import Amazonka.NetworkManager.Types.CoreNetworkSummary
import Amazonka.NetworkManager.Types.CustomerGatewayAssociation
import Amazonka.NetworkManager.Types.CustomerGatewayAssociationState
import Amazonka.NetworkManager.Types.Device
import Amazonka.NetworkManager.Types.DeviceState
import Amazonka.NetworkManager.Types.GlobalNetwork
import Amazonka.NetworkManager.Types.GlobalNetworkState
import Amazonka.NetworkManager.Types.Link
import Amazonka.NetworkManager.Types.LinkAssociation
import Amazonka.NetworkManager.Types.LinkAssociationState
import Amazonka.NetworkManager.Types.LinkState
import Amazonka.NetworkManager.Types.Location
import Amazonka.NetworkManager.Types.NetworkResource
import Amazonka.NetworkManager.Types.NetworkResourceCount
import Amazonka.NetworkManager.Types.NetworkResourceSummary
import Amazonka.NetworkManager.Types.NetworkRoute
import Amazonka.NetworkManager.Types.NetworkRouteDestination
import Amazonka.NetworkManager.Types.NetworkTelemetry
import Amazonka.NetworkManager.Types.OrganizationStatus
import Amazonka.NetworkManager.Types.PathComponent
import Amazonka.NetworkManager.Types.Peering
import Amazonka.NetworkManager.Types.PeeringState
import Amazonka.NetworkManager.Types.PeeringType
import Amazonka.NetworkManager.Types.ProposedSegmentChange
import Amazonka.NetworkManager.Types.Relationship
import Amazonka.NetworkManager.Types.RouteAnalysis
import Amazonka.NetworkManager.Types.RouteAnalysisCompletion
import Amazonka.NetworkManager.Types.RouteAnalysisCompletionReasonCode
import Amazonka.NetworkManager.Types.RouteAnalysisCompletionResultCode
import Amazonka.NetworkManager.Types.RouteAnalysisEndpointOptions
import Amazonka.NetworkManager.Types.RouteAnalysisEndpointOptionsSpecification
import Amazonka.NetworkManager.Types.RouteAnalysisPath
import Amazonka.NetworkManager.Types.RouteAnalysisStatus
import Amazonka.NetworkManager.Types.RouteState
import Amazonka.NetworkManager.Types.RouteTableIdentifier
import Amazonka.NetworkManager.Types.RouteTableType
import Amazonka.NetworkManager.Types.RouteType
import Amazonka.NetworkManager.Types.Site
import Amazonka.NetworkManager.Types.SiteState
import Amazonka.NetworkManager.Types.SiteToSiteVpnAttachment
import Amazonka.NetworkManager.Types.Tag
import Amazonka.NetworkManager.Types.TransitGatewayConnectPeerAssociation
import Amazonka.NetworkManager.Types.TransitGatewayConnectPeerAssociationState
import Amazonka.NetworkManager.Types.TransitGatewayPeering
import Amazonka.NetworkManager.Types.TransitGatewayRegistration
import Amazonka.NetworkManager.Types.TransitGatewayRegistrationState
import Amazonka.NetworkManager.Types.TransitGatewayRegistrationStateReason
import Amazonka.NetworkManager.Types.TransitGatewayRouteTableAttachment
import Amazonka.NetworkManager.Types.TunnelProtocol
import Amazonka.NetworkManager.Types.VpcAttachment
import Amazonka.NetworkManager.Types.VpcOptions
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-07-05@ of the Amazon Network Manager SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "NetworkManager",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "networkmanager",
      Core._serviceSigningName = "networkmanager",
      Core._serviceVersion = "2019-07-05",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "NetworkManager",
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

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | The request has failed due to an internal error.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | A service limit was exceeded.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The specified resource could not be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Describes a core network policy exception.
_CoreNetworkPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CoreNetworkPolicyException =
  Core._MatchServiceError
    defaultService
    "CoreNetworkPolicyException"
    Prelude.. Core.hasStatus 400

-- | There was a conflict processing the request. Updating or deleting the
-- resource can cause an inconsistent state.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The input fails to satisfy the constraints.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

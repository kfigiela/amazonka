{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AlexaBusiness.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AlexaBusiness.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NameInUseException,
    _ResourceAssociatedException,
    _InvalidSecretsManagerResourceException,
    _InvalidUserStatusException,
    _ConcurrentModificationException,
    _InvalidServiceLinkedRoleStateException,
    _SkillNotLinkedException,
    _InvalidDeviceException,
    _UnauthorizedException,
    _InvalidCertificateAuthorityException,
    _NotFoundException,
    _ResourceInUseException,
    _AlreadyExistsException,
    _LimitExceededException,
    _DeviceNotRegisteredException,

    -- * BusinessReportFailureCode
    BusinessReportFailureCode (..),

    -- * BusinessReportFormat
    BusinessReportFormat (..),

    -- * BusinessReportInterval
    BusinessReportInterval (..),

    -- * BusinessReportStatus
    BusinessReportStatus (..),

    -- * CommsProtocol
    CommsProtocol (..),

    -- * ConferenceProviderType
    ConferenceProviderType (..),

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * DeviceEventType
    DeviceEventType (..),

    -- * DeviceStatus
    DeviceStatus (..),

    -- * DeviceStatusDetailCode
    DeviceStatusDetailCode (..),

    -- * DeviceUsageType
    DeviceUsageType (..),

    -- * DistanceUnit
    DistanceUnit (..),

    -- * EnablementType
    EnablementType (..),

    -- * EnablementTypeFilter
    EnablementTypeFilter (..),

    -- * EndOfMeetingReminderType
    EndOfMeetingReminderType (..),

    -- * EnrollmentStatus
    EnrollmentStatus (..),

    -- * Feature
    Feature (..),

    -- * Locale
    Locale (..),

    -- * NetworkEapMethod
    NetworkEapMethod (..),

    -- * NetworkSecurityType
    NetworkSecurityType (..),

    -- * PhoneNumberType
    PhoneNumberType (..),

    -- * RequirePin
    RequirePin (..),

    -- * SipType
    SipType (..),

    -- * SkillType
    SkillType (..),

    -- * SkillTypeFilter
    SkillTypeFilter (..),

    -- * SortValue
    SortValue (..),

    -- * TemperatureUnit
    TemperatureUnit (..),

    -- * WakeWord
    WakeWord (..),

    -- * AddressBook
    AddressBook (..),
    newAddressBook,
    addressBook_name,
    addressBook_description,
    addressBook_addressBookArn,

    -- * AddressBookData
    AddressBookData (..),
    newAddressBookData,
    addressBookData_name,
    addressBookData_description,
    addressBookData_addressBookArn,

    -- * Audio
    Audio (..),
    newAudio,
    audio_locale,
    audio_location,

    -- * BusinessReport
    BusinessReport (..),
    newBusinessReport,
    businessReport_deliveryTime,
    businessReport_failureCode,
    businessReport_downloadUrl,
    businessReport_status,
    businessReport_s3Location,

    -- * BusinessReportContentRange
    BusinessReportContentRange (..),
    newBusinessReportContentRange,
    businessReportContentRange_interval,

    -- * BusinessReportRecurrence
    BusinessReportRecurrence (..),
    newBusinessReportRecurrence,
    businessReportRecurrence_startDate,

    -- * BusinessReportS3Location
    BusinessReportS3Location (..),
    newBusinessReportS3Location,
    businessReportS3Location_path,
    businessReportS3Location_bucketName,

    -- * BusinessReportSchedule
    BusinessReportSchedule (..),
    newBusinessReportSchedule,
    businessReportSchedule_s3KeyPrefix,
    businessReportSchedule_s3BucketName,
    businessReportSchedule_format,
    businessReportSchedule_scheduleArn,
    businessReportSchedule_contentRange,
    businessReportSchedule_recurrence,
    businessReportSchedule_scheduleName,
    businessReportSchedule_lastBusinessReport,

    -- * Category
    Category (..),
    newCategory,
    category_categoryId,
    category_categoryName,

    -- * ConferencePreference
    ConferencePreference (..),
    newConferencePreference,
    conferencePreference_defaultConferenceProviderArn,

    -- * ConferenceProvider
    ConferenceProvider (..),
    newConferenceProvider,
    conferenceProvider_iPDialIn,
    conferenceProvider_name,
    conferenceProvider_type,
    conferenceProvider_meetingSetting,
    conferenceProvider_pSTNDialIn,
    conferenceProvider_arn,

    -- * Contact
    Contact (..),
    newContact,
    contact_firstName,
    contact_sipAddresses,
    contact_displayName,
    contact_contactArn,
    contact_lastName,
    contact_phoneNumber,
    contact_phoneNumbers,

    -- * ContactData
    ContactData (..),
    newContactData,
    contactData_firstName,
    contactData_sipAddresses,
    contactData_displayName,
    contactData_contactArn,
    contactData_lastName,
    contactData_phoneNumber,
    contactData_phoneNumbers,

    -- * Content
    Content (..),
    newContent,
    content_audioList,
    content_textList,
    content_ssmlList,

    -- * CreateEndOfMeetingReminder
    CreateEndOfMeetingReminder (..),
    newCreateEndOfMeetingReminder,
    createEndOfMeetingReminder_reminderAtMinutes,
    createEndOfMeetingReminder_reminderType,
    createEndOfMeetingReminder_enabled,

    -- * CreateInstantBooking
    CreateInstantBooking (..),
    newCreateInstantBooking,
    createInstantBooking_durationInMinutes,
    createInstantBooking_enabled,

    -- * CreateMeetingRoomConfiguration
    CreateMeetingRoomConfiguration (..),
    newCreateMeetingRoomConfiguration,
    createMeetingRoomConfiguration_instantBooking,
    createMeetingRoomConfiguration_endOfMeetingReminder,
    createMeetingRoomConfiguration_roomUtilizationMetricsEnabled,
    createMeetingRoomConfiguration_requireCheckIn,

    -- * CreateRequireCheckIn
    CreateRequireCheckIn (..),
    newCreateRequireCheckIn,
    createRequireCheckIn_releaseAfterMinutes,
    createRequireCheckIn_enabled,

    -- * DeveloperInfo
    DeveloperInfo (..),
    newDeveloperInfo,
    developerInfo_email,
    developerInfo_developerName,
    developerInfo_url,
    developerInfo_privacyPolicy,

    -- * Device
    Device (..),
    newDevice,
    device_deviceSerialNumber,
    device_deviceName,
    device_deviceStatusInfo,
    device_roomArn,
    device_softwareVersion,
    device_macAddress,
    device_networkProfileInfo,
    device_deviceStatus,
    device_deviceArn,
    device_deviceType,

    -- * DeviceData
    DeviceData (..),
    newDeviceData,
    deviceData_createdTime,
    deviceData_deviceSerialNumber,
    deviceData_deviceName,
    deviceData_deviceStatusInfo,
    deviceData_roomArn,
    deviceData_softwareVersion,
    deviceData_macAddress,
    deviceData_deviceStatus,
    deviceData_deviceArn,
    deviceData_deviceType,
    deviceData_networkProfileArn,
    deviceData_roomName,
    deviceData_networkProfileName,

    -- * DeviceEvent
    DeviceEvent (..),
    newDeviceEvent,
    deviceEvent_type,
    deviceEvent_timestamp,
    deviceEvent_value,

    -- * DeviceNetworkProfileInfo
    DeviceNetworkProfileInfo (..),
    newDeviceNetworkProfileInfo,
    deviceNetworkProfileInfo_certificateArn,
    deviceNetworkProfileInfo_certificateExpirationTime,
    deviceNetworkProfileInfo_networkProfileArn,

    -- * DeviceStatusDetail
    DeviceStatusDetail (..),
    newDeviceStatusDetail,
    deviceStatusDetail_code,
    deviceStatusDetail_feature,

    -- * DeviceStatusInfo
    DeviceStatusInfo (..),
    newDeviceStatusInfo,
    deviceStatusInfo_connectionStatusUpdatedTime,
    deviceStatusInfo_deviceStatusDetails,
    deviceStatusInfo_connectionStatus,

    -- * EndOfMeetingReminder
    EndOfMeetingReminder (..),
    newEndOfMeetingReminder,
    endOfMeetingReminder_reminderType,
    endOfMeetingReminder_enabled,
    endOfMeetingReminder_reminderAtMinutes,

    -- * Filter
    Filter (..),
    newFilter,
    filter_key,
    filter_values,

    -- * Gateway
    Gateway (..),
    newGateway,
    gateway_name,
    gateway_gatewayGroupArn,
    gateway_arn,
    gateway_description,
    gateway_softwareVersion,

    -- * GatewayGroup
    GatewayGroup (..),
    newGatewayGroup,
    gatewayGroup_name,
    gatewayGroup_arn,
    gatewayGroup_description,

    -- * GatewayGroupSummary
    GatewayGroupSummary (..),
    newGatewayGroupSummary,
    gatewayGroupSummary_name,
    gatewayGroupSummary_arn,
    gatewayGroupSummary_description,

    -- * GatewaySummary
    GatewaySummary (..),
    newGatewaySummary,
    gatewaySummary_name,
    gatewaySummary_gatewayGroupArn,
    gatewaySummary_arn,
    gatewaySummary_description,
    gatewaySummary_softwareVersion,

    -- * IPDialIn
    IPDialIn (..),
    newIPDialIn,
    iPDialIn_endpoint,
    iPDialIn_commsProtocol,

    -- * InstantBooking
    InstantBooking (..),
    newInstantBooking,
    instantBooking_enabled,
    instantBooking_durationInMinutes,

    -- * MeetingRoomConfiguration
    MeetingRoomConfiguration (..),
    newMeetingRoomConfiguration,
    meetingRoomConfiguration_instantBooking,
    meetingRoomConfiguration_endOfMeetingReminder,
    meetingRoomConfiguration_roomUtilizationMetricsEnabled,
    meetingRoomConfiguration_requireCheckIn,

    -- * MeetingSetting
    MeetingSetting (..),
    newMeetingSetting,
    meetingSetting_requirePin,

    -- * NetworkProfile
    NetworkProfile (..),
    newNetworkProfile,
    networkProfile_certificateAuthorityArn,
    networkProfile_description,
    networkProfile_eapMethod,
    networkProfile_trustAnchors,
    networkProfile_currentPassword,
    networkProfile_nextPassword,
    networkProfile_ssid,
    networkProfile_securityType,
    networkProfile_networkProfileArn,
    networkProfile_networkProfileName,

    -- * NetworkProfileData
    NetworkProfileData (..),
    newNetworkProfileData,
    networkProfileData_certificateAuthorityArn,
    networkProfileData_description,
    networkProfileData_eapMethod,
    networkProfileData_ssid,
    networkProfileData_securityType,
    networkProfileData_networkProfileArn,
    networkProfileData_networkProfileName,

    -- * PSTNDialIn
    PSTNDialIn (..),
    newPSTNDialIn,
    pSTNDialIn_countryCode,
    pSTNDialIn_phoneNumber,
    pSTNDialIn_oneClickIdDelay,
    pSTNDialIn_oneClickPinDelay,

    -- * PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,
    phoneNumber_number,
    phoneNumber_type,

    -- * Profile
    Profile (..),
    newProfile,
    profile_setupModeDisabled,
    profile_distanceUnit,
    profile_dataRetentionOptIn,
    profile_profileName,
    profile_wakeWord,
    profile_locale,
    profile_meetingRoomConfiguration,
    profile_timezone,
    profile_profileArn,
    profile_pSTNEnabled,
    profile_isDefault,
    profile_address,
    profile_addressBookArn,
    profile_maxVolumeLimit,
    profile_temperatureUnit,

    -- * ProfileData
    ProfileData (..),
    newProfileData,
    profileData_distanceUnit,
    profileData_profileName,
    profileData_wakeWord,
    profileData_locale,
    profileData_timezone,
    profileData_profileArn,
    profileData_isDefault,
    profileData_address,
    profileData_temperatureUnit,

    -- * RequireCheckIn
    RequireCheckIn (..),
    newRequireCheckIn,
    requireCheckIn_enabled,
    requireCheckIn_releaseAfterMinutes,

    -- * Room
    Room (..),
    newRoom,
    room_profileArn,
    room_roomArn,
    room_description,
    room_providerCalendarId,
    room_roomName,

    -- * RoomData
    RoomData (..),
    newRoomData,
    roomData_profileName,
    roomData_profileArn,
    roomData_roomArn,
    roomData_description,
    roomData_providerCalendarId,
    roomData_roomName,

    -- * RoomSkillParameter
    RoomSkillParameter (..),
    newRoomSkillParameter,
    roomSkillParameter_parameterKey,
    roomSkillParameter_parameterValue,

    -- * SipAddress
    SipAddress (..),
    newSipAddress,
    sipAddress_uri,
    sipAddress_type,

    -- * SkillDetails
    SkillDetails (..),
    newSkillDetails,
    skillDetails_invocationPhrase,
    skillDetails_endUserLicenseAgreement,
    skillDetails_reviews,
    skillDetails_releaseDate,
    skillDetails_genericKeywords,
    skillDetails_developerInfo,
    skillDetails_newInThisVersionBulletPoints,
    skillDetails_productDescription,
    skillDetails_skillTypes,
    skillDetails_bulletPoints,

    -- * SkillGroup
    SkillGroup (..),
    newSkillGroup,
    skillGroup_skillGroupArn,
    skillGroup_description,
    skillGroup_skillGroupName,

    -- * SkillGroupData
    SkillGroupData (..),
    newSkillGroupData,
    skillGroupData_skillGroupArn,
    skillGroupData_description,
    skillGroupData_skillGroupName,

    -- * SkillSummary
    SkillSummary (..),
    newSkillSummary,
    skillSummary_skillName,
    skillSummary_supportsLinking,
    skillSummary_enablementType,
    skillSummary_skillType,
    skillSummary_skillId,

    -- * SkillsStoreSkill
    SkillsStoreSkill (..),
    newSkillsStoreSkill,
    skillsStoreSkill_sampleUtterances,
    skillsStoreSkill_shortDescription,
    skillsStoreSkill_skillName,
    skillsStoreSkill_iconUrl,
    skillsStoreSkill_supportsLinking,
    skillsStoreSkill_skillDetails,
    skillsStoreSkill_skillId,

    -- * SmartHomeAppliance
    SmartHomeAppliance (..),
    newSmartHomeAppliance,
    smartHomeAppliance_manufacturerName,
    smartHomeAppliance_description,
    smartHomeAppliance_friendlyName,

    -- * Sort
    Sort (..),
    newSort,
    sort_key,
    sort_value,

    -- * Ssml
    Ssml (..),
    newSsml,
    ssml_locale,
    ssml_value,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TextMessage
    TextMessage (..),
    newTextMessage,
    textMessage_locale,
    textMessage_value,

    -- * UpdateEndOfMeetingReminder
    UpdateEndOfMeetingReminder (..),
    newUpdateEndOfMeetingReminder,
    updateEndOfMeetingReminder_reminderType,
    updateEndOfMeetingReminder_enabled,
    updateEndOfMeetingReminder_reminderAtMinutes,

    -- * UpdateInstantBooking
    UpdateInstantBooking (..),
    newUpdateInstantBooking,
    updateInstantBooking_enabled,
    updateInstantBooking_durationInMinutes,

    -- * UpdateMeetingRoomConfiguration
    UpdateMeetingRoomConfiguration (..),
    newUpdateMeetingRoomConfiguration,
    updateMeetingRoomConfiguration_instantBooking,
    updateMeetingRoomConfiguration_endOfMeetingReminder,
    updateMeetingRoomConfiguration_roomUtilizationMetricsEnabled,
    updateMeetingRoomConfiguration_requireCheckIn,

    -- * UpdateRequireCheckIn
    UpdateRequireCheckIn (..),
    newUpdateRequireCheckIn,
    updateRequireCheckIn_enabled,
    updateRequireCheckIn_releaseAfterMinutes,

    -- * UserData
    UserData (..),
    newUserData,
    userData_firstName,
    userData_email,
    userData_enrollmentStatus,
    userData_lastName,
    userData_enrollmentId,
    userData_userArn,
  )
where

import Amazonka.AlexaBusiness.Types.AddressBook
import Amazonka.AlexaBusiness.Types.AddressBookData
import Amazonka.AlexaBusiness.Types.Audio
import Amazonka.AlexaBusiness.Types.BusinessReport
import Amazonka.AlexaBusiness.Types.BusinessReportContentRange
import Amazonka.AlexaBusiness.Types.BusinessReportFailureCode
import Amazonka.AlexaBusiness.Types.BusinessReportFormat
import Amazonka.AlexaBusiness.Types.BusinessReportInterval
import Amazonka.AlexaBusiness.Types.BusinessReportRecurrence
import Amazonka.AlexaBusiness.Types.BusinessReportS3Location
import Amazonka.AlexaBusiness.Types.BusinessReportSchedule
import Amazonka.AlexaBusiness.Types.BusinessReportStatus
import Amazonka.AlexaBusiness.Types.Category
import Amazonka.AlexaBusiness.Types.CommsProtocol
import Amazonka.AlexaBusiness.Types.ConferencePreference
import Amazonka.AlexaBusiness.Types.ConferenceProvider
import Amazonka.AlexaBusiness.Types.ConferenceProviderType
import Amazonka.AlexaBusiness.Types.ConnectionStatus
import Amazonka.AlexaBusiness.Types.Contact
import Amazonka.AlexaBusiness.Types.ContactData
import Amazonka.AlexaBusiness.Types.Content
import Amazonka.AlexaBusiness.Types.CreateEndOfMeetingReminder
import Amazonka.AlexaBusiness.Types.CreateInstantBooking
import Amazonka.AlexaBusiness.Types.CreateMeetingRoomConfiguration
import Amazonka.AlexaBusiness.Types.CreateRequireCheckIn
import Amazonka.AlexaBusiness.Types.DeveloperInfo
import Amazonka.AlexaBusiness.Types.Device
import Amazonka.AlexaBusiness.Types.DeviceData
import Amazonka.AlexaBusiness.Types.DeviceEvent
import Amazonka.AlexaBusiness.Types.DeviceEventType
import Amazonka.AlexaBusiness.Types.DeviceNetworkProfileInfo
import Amazonka.AlexaBusiness.Types.DeviceStatus
import Amazonka.AlexaBusiness.Types.DeviceStatusDetail
import Amazonka.AlexaBusiness.Types.DeviceStatusDetailCode
import Amazonka.AlexaBusiness.Types.DeviceStatusInfo
import Amazonka.AlexaBusiness.Types.DeviceUsageType
import Amazonka.AlexaBusiness.Types.DistanceUnit
import Amazonka.AlexaBusiness.Types.EnablementType
import Amazonka.AlexaBusiness.Types.EnablementTypeFilter
import Amazonka.AlexaBusiness.Types.EndOfMeetingReminder
import Amazonka.AlexaBusiness.Types.EndOfMeetingReminderType
import Amazonka.AlexaBusiness.Types.EnrollmentStatus
import Amazonka.AlexaBusiness.Types.Feature
import Amazonka.AlexaBusiness.Types.Filter
import Amazonka.AlexaBusiness.Types.Gateway
import Amazonka.AlexaBusiness.Types.GatewayGroup
import Amazonka.AlexaBusiness.Types.GatewayGroupSummary
import Amazonka.AlexaBusiness.Types.GatewaySummary
import Amazonka.AlexaBusiness.Types.IPDialIn
import Amazonka.AlexaBusiness.Types.InstantBooking
import Amazonka.AlexaBusiness.Types.Locale
import Amazonka.AlexaBusiness.Types.MeetingRoomConfiguration
import Amazonka.AlexaBusiness.Types.MeetingSetting
import Amazonka.AlexaBusiness.Types.NetworkEapMethod
import Amazonka.AlexaBusiness.Types.NetworkProfile
import Amazonka.AlexaBusiness.Types.NetworkProfileData
import Amazonka.AlexaBusiness.Types.NetworkSecurityType
import Amazonka.AlexaBusiness.Types.PSTNDialIn
import Amazonka.AlexaBusiness.Types.PhoneNumber
import Amazonka.AlexaBusiness.Types.PhoneNumberType
import Amazonka.AlexaBusiness.Types.Profile
import Amazonka.AlexaBusiness.Types.ProfileData
import Amazonka.AlexaBusiness.Types.RequireCheckIn
import Amazonka.AlexaBusiness.Types.RequirePin
import Amazonka.AlexaBusiness.Types.Room
import Amazonka.AlexaBusiness.Types.RoomData
import Amazonka.AlexaBusiness.Types.RoomSkillParameter
import Amazonka.AlexaBusiness.Types.SipAddress
import Amazonka.AlexaBusiness.Types.SipType
import Amazonka.AlexaBusiness.Types.SkillDetails
import Amazonka.AlexaBusiness.Types.SkillGroup
import Amazonka.AlexaBusiness.Types.SkillGroupData
import Amazonka.AlexaBusiness.Types.SkillSummary
import Amazonka.AlexaBusiness.Types.SkillType
import Amazonka.AlexaBusiness.Types.SkillTypeFilter
import Amazonka.AlexaBusiness.Types.SkillsStoreSkill
import Amazonka.AlexaBusiness.Types.SmartHomeAppliance
import Amazonka.AlexaBusiness.Types.Sort
import Amazonka.AlexaBusiness.Types.SortValue
import Amazonka.AlexaBusiness.Types.Ssml
import Amazonka.AlexaBusiness.Types.Tag
import Amazonka.AlexaBusiness.Types.TemperatureUnit
import Amazonka.AlexaBusiness.Types.TextMessage
import Amazonka.AlexaBusiness.Types.UpdateEndOfMeetingReminder
import Amazonka.AlexaBusiness.Types.UpdateInstantBooking
import Amazonka.AlexaBusiness.Types.UpdateMeetingRoomConfiguration
import Amazonka.AlexaBusiness.Types.UpdateRequireCheckIn
import Amazonka.AlexaBusiness.Types.UserData
import Amazonka.AlexaBusiness.Types.WakeWord
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-11-09@ of the Amazon Alexa For Business SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "AlexaBusiness",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "a4b",
      Core._serviceSigningName = "a4b",
      Core._serviceVersion = "2017-11-09",
      Core._serviceS3AddressingStyle =
        Core.S3AddressingStyleAuto,
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "AlexaBusiness",
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

-- | The name sent in the request is already in use.
_NameInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NameInUseException =
  Core._MatchServiceError
    defaultService
    "NameInUseException"

-- | Another resource is associated with the resource in the request.
_ResourceAssociatedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAssociatedException =
  Core._MatchServiceError
    defaultService
    "ResourceAssociatedException"

-- | A password in SecretsManager is in an invalid state.
_InvalidSecretsManagerResourceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSecretsManagerResourceException =
  Core._MatchServiceError
    defaultService
    "InvalidSecretsManagerResourceException"

-- | The attempt to update a user is invalid due to the user\'s current
-- status.
_InvalidUserStatusException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidUserStatusException =
  Core._MatchServiceError
    defaultService
    "InvalidUserStatusException"

-- | There is a concurrent modification of resources.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The service linked role is locked for deletion.
_InvalidServiceLinkedRoleStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidServiceLinkedRoleStateException =
  Core._MatchServiceError
    defaultService
    "InvalidServiceLinkedRoleStateException"

-- | The skill must be linked to a third-party account.
_SkillNotLinkedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SkillNotLinkedException =
  Core._MatchServiceError
    defaultService
    "SkillNotLinkedException"

-- | The device is in an invalid state.
_InvalidDeviceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidDeviceException =
  Core._MatchServiceError
    defaultService
    "InvalidDeviceException"

-- | The caller has no permissions to operate on the resource involved in the
-- API call.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"

-- | The Certificate Authority can\'t issue or revoke a certificate.
_InvalidCertificateAuthorityException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCertificateAuthorityException =
  Core._MatchServiceError
    defaultService
    "InvalidCertificateAuthorityException"

-- | The resource is not found.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"

-- | The resource in the request is already in use.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The resource being created already exists.
_AlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | You are performing an action that would put you beyond your account\'s
-- limits.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The request failed because this device is no longer registered and
-- therefore no longer managed by this account.
_DeviceNotRegisteredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DeviceNotRegisteredException =
  Core._MatchServiceError
    defaultService
    "DeviceNotRegisteredException"
